
/Users/beegee/Documents/ats mini/ats-mini-UNLTD/reports/firmware/targetSEEK_recon/segments/seg4_0x40375284.bin:     file format binary


Disassembly of section .data:

40375284 <.data>:
40375284:	d29808        	l16si	a13, a8, 16
40375287:	3c12      	movi.n	a2, 49
40375289:	9908      	s32i.n	a9, a8, 0
4037528b:	3ce0      	movi.n	a0, 62
4037528d:	9a08      	add.n	a0, a8, a9
4037528f:	3ca2      	movi.n	a2, 58
40375291:	9a08      	add.n	a0, a8, a9
40375293:	3cd0      	movi.n	a0, 61
40375295:	9a08      	add.n	a0, a8, a9
40375297:	3cfa      	movi.n	a10, 63
40375299:	93083c        	lsi	f9, a8, 240
4037529c:	5894      	l32i.n	a5, a4, 36
4037529e:	083c      	l32i.n	a0, a12, 12
403752a0:	659408        	call8	0x4037dbe8
403752a3:	3c4b      	movi.n	a11, 52
403752a5:	94          	.byte	0x94
403752a6:	083c      	l32i.n	a0, a12, 12
403752a8:	14          	.byte	0x14
403752a9:	9c08      	beqz.n	a8, 0x403752bd
403752ab:	3c7e      	movi.n	a14, 55
403752ad:	9c08      	beqz.n	a8, 0x403752c1
403752af:	3c36      	movi.n	a6, 51
403752b1:	9c08      	beqz.n	a8, 0x403752c5
403752b3:	3c4d      	movi.n	a13, 52
403752b5:	9c08      	beqz.n	a8, 0x403752c9
403752b7:	3c6b      	movi.n	a11, 54
403752b9:	9c08      	beqz.n	a8, 0x403752cd
403752bb:	3c34      	movi.n	a4, 51
403752bd:	12baab        	l32ai	a1, a10, 0x2ac
403752c0:	7856      	l32i.n	a7, a6, 20
403752c2:	ad          	.byte	0xad
403752c3:	baa0      	add.n	a10, a0, a11
403752c5:	9b08      	addi.n	a0, a8, 9
403752c7:	3cda      	movi.n	a10, 61
403752c9:	9b08      	addi.n	a0, a8, 9
403752cb:	3c04      	movi.n	a4, 48
403752cd:	2d          	.byte	0x2d
403752ce:	ca3f      	add.n	a3, a15, a12
403752d0:	002dca        	float.s	f2, a13, 0
403752d3:	3fcc2838 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a3, 0xfffffec0, q7, q0, q2, q0
403752d7:	40e780        	add	a14, a7, a4
403752da:	c93f      	s32i.n	a12, a15, 12
403752dc:	0381c9        	lsip	f0, a1, 0x324
403752df:	3fc41400 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 64, q7, q0, q1, q4
403752e3:	400d81        	src	a0, a13, a4
403752e6:	c93f      	s32i.n	a12, a15, 12
403752e8:	1f81c93f 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a1, -240, q6, q1, q4, q1
403752ec:	ffffff3b 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a15, 0xfffffef0, q7, q7, q7, q7
403752f0:	ffffff3c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a15, -16, q7, q7, q7, q7
403752f4:	b22938        	l32i	a11, a9, 224
403752f7:	402181        	src	a2, a1, a4
403752fa:	c93f      	s32i.n	a12, a15, 12
403752fc:	2f81c93f 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a2, -240, q6, q1, q4, q1
40375300:	3181c9        	l32r	a3, 0x40367904
40375303:	3f3381c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a3, q4, q7, q0, q1
40375307:	3f9380c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a3, q6, q3, q0, q0
4037530b:	3f481200 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 128, q5, q0, q1, q2
4037530f:	406012        	andbc	b6, b0, b4
40375312:	004001        	slli	a4, a0, 32
40375315:	00          	.byte	00
40375316:	00ff77        	ee.stf.64.xp	f15, f7, a0, a15
40375319:	82c93f        	addi	a8, a9, 63
4037531c:	32          	.byte	0x32
4037531d:	87c93f        	bnall	a9, a8, 0x40375360
40375320:	c681c9        	j	0x4036792b
40375323:	3f5e82c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a14, q5, q3, q0, q2
40375327:	3ffa81c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a10, q7, q7, q0, q1
4037532b:	3f4682c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a6, q5, q1, q0, q2
4037532f:	3f0f82c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a15, q4, q1, q0, q2
40375333:	3f2d82c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a13, q4, q5, q0, q2
40375337:	3f6470c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a4, q5, q4, q7, q0
4037533b:	3f8082c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a0, q6, q1, q0, q2
4037533f:	3fdcd602 	ee.vmulas.s16.accx.ld.ip.qup	q4, a3, 192, q7, q3, q5, q6
40375343:	420100        	l8ui	a4, a1, 0
40375346:	ffff00df 	ee.fft.cmul.s16.ld.xp	q6, a15, a15, q0, q7, q0, 6
4037534a:	000008        	lsx	f0, a0, a0
4037534d:	343840        	ee.ld.qacc_l.l.128.ip	a3, 0xfffffb80
40375350:	e0          	.byte	0xe0
40375351:	2f384038 	ee.vmulas.s8.qacc.ld.ip.qup	q0, a2, 0xfffffe80, q4, q6, q4, q0
40375355:	343840        	ee.ld.qacc_l.l.128.ip	a3, 0xfffffb80
40375358:	8c34      	beqz.n	a4, 0x4037535f
4037535a:	3840      	l32i.n	a3, a0, 16
4037535c:	3870      	l32i.n	a3, a0, 28
4037535e:	c93f      	s32i.n	a12, a15, 12
40375360:	3c70      	movi.n	a0, 55
40375362:	c93f      	s32i.n	a12, a15, 12
40375364:	a885      	l32i.n	a10, a5, 32
40375366:	c93f      	s32i.n	a12, a15, 12
40375368:	db83      	addi.n	a8, a3, 13
4037536a:	c93f      	s32i.n	a12, a15, 12
4037536c:	1384c9        	lsip	f1, a4, 0x324
4037536f:	3fcc2100 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 192, q7, q0, q2, q1
40375373:	40          	.byte	0x40
40375374:	40          	.byte	0x40
40375375:	70          	.byte	0x70
40375376:	c93f      	s32i.n	a12, a15, 12
40375378:	5a84      	add.n	a8, a4, a5
4037537a:	c93f      	s32i.n	a12, a15, 12
4037537c:	f984      	s32i.n	a15, a4, 32
4037537e:	c93f      	s32i.n	a12, a15, 12
40375380:	8c84      	beqz.n	a4, 0x4037538c
40375382:	c93f      	s32i.n	a12, a15, 12
40375384:	a584c9        	call8	0x4033ebd0
40375387:	3f000000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 0, q4, q0, q0, q0
4037538b:	ff35757a 	ee.vmulas.u8.qacc.ld.ip.qup	q4, a15, 0xfffffe50, q4, q6, q7, q5
4037538f:	00          	.byte	00
40375390:	00          	.byte	00
40375391:	cf000064 	ee.vmulas.u8.accx.ld.ip.qup	q0, a12, 0x100, q4, q0, q0, q0
40375395:	343840        	ee.ld.qacc_l.l.128.ip	a3, 0xfffffb80
40375398:	74          	.byte	0x74
40375399:	343840        	ee.ld.qacc_l.l.128.ip	a3, 0xfffffb80
4037539c:	06f900        	j	0x40375784
4037539f:	00          	.byte	00
403753a0:	04          	.byte	0x4
403753a1:	fb00      	addi.n	a0, a0, 15
403753a3:	00          	.byte	00
403753a4:	60          	.byte	0x60
403753a5:	9fffff21 	ee.vmulas.s8.accx.ld.ip.qup	q3, a9, 240, q7, q7, q7, q7
403753a9:	deffffdc 	ee.fft.cmul.s16.ld.xp	q7, a13, a15, q7, q3, q7, 1
403753ad:	230000        	lsi	f2, a0, 0
403753b0:	12edff        	s32c1i	a1, a13, 0x3fc
403753b3:	ffec1300 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 192, q7, q4, q1, q3
403753b7:	00ee11        	slli	a14, a14, 16
403753ba:	00          	.byte	00
403753bb:	00bd86        	ee.ldf.64.xp	f11, f8, a0, a13
403753be:	c93f      	s32i.n	a12, a15, 12
403753c0:	8f87c93f 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a8, -144, q6, q1, q4, q1
403753c4:	1887      	l32i.n	a1, a7, 32
403753c6:	c93f      	s32i.n	a12, a15, 12
403753c8:	9f600000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a9, 0, q5, q4, q0, q0
403753cc:	3888      	l32i.n	a3, a8, 32
403753ce:	c93f      	s32i.n	a12, a15, 12
403753d0:	32          	.byte	0x32
403753d1:	87c93f        	bnall	a9, a8, 0x40375414
403753d4:	d821      	l32i.n	a13, a1, 8
403753d6:	00          	.byte	00
403753d7:	40          	.byte	0x40
403753d8:	718eff        	l32r	a7, 0x40375210
403753db:	ff4b87c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a15, a11, q5, q1, q0, q7
403753df:	3f6587c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a5, q5, q5, q0, q7
403753e3:	3f4889c9 	ee.vmulas.u8.accx.ld.xp.qup	q3, a3, a8, q5, q1, q0, q1
403753e7:	3fdb83c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a11, q7, q3, q0, q3
403753eb:	3f16405e 	ee.vmulas.u16.qacc.ld.ip.qup	q4, a3, -160, q4, q2, q4, q0
403753ef:	00d4ba        	ceil.s	a13, f4, 0
403753f2:	0342ec        	ssi	f0, a2, 0x3b0
403753f5:	ba03      	add.n	a0, a3, a11
403753f7:	426009        	s32i	a4, a0, 36
403753fa:	0040ea        	utrunc.s	a4, f0, 0
403753fd:	bf          	.byte	0xbf
403753fe:	37ffe9        	bbsi	a15, 19, 0x403753eb
40375401:	bf37ff08 	ee.vmulas.s16.accx.ld.ip.qup	q1, a11, 0xfffffe70, q4, q7, q7, q7
40375405:	8ac9      	add.n	a12, a9, a8
40375407:	3f702aca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a0, q5, q6, q2, q2
4037540b:	3f5089c9 	ee.vmulas.u8.accx.ld.xp.qup	q3, a3, a0, q5, q3, q0, q1
4037540f:	3f5a89c9 	ee.vmulas.u8.accx.ld.xp.qup	q3, a3, a10, q5, q3, q0, q1
40375413:	3f6c2aca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a12, q5, q4, q2, q2
40375417:	3fa489c9 	ee.vmulas.u8.accx.ld.xp.qup	q3, a3, a4, q6, q5, q0, q1
4037541b:	3fe41800 	ee.vmulas.s16.accx.ld.ip.qup	q1, a3, 64, q7, q4, q1, q0
4037541f:	40fc18        	lsxp	f15, a12, a4
40375422:	004008        	lsx	f4, a0, a0
40375425:	1900      	s32i.n	a1, a0, 0
40375427:	40f018        	lsxp	f15, a0, a4
4037542a:	00          	.byte	00
4037542b:	40          	.byte	0x40
4037542c:	030006        	lsi	f0, a0, 24
4037542f:	00688a        	round.s	a6, f8, 0
40375432:	c93f      	s32i.n	a12, a15, 12
40375434:	aa8a      	add.n	a8, a10, a10
40375436:	c93f      	s32i.n	a12, a15, 12
40375438:	968ac9        	bltz	a10, 0x403750d4
4037543b:	3f364100 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 96, q4, q6, q4, q1
4037543f:	91f3fb        	l32r	a9, 0x4037440c
40375442:	21f0fb        	l32r	a2, 0x40374404
40375445:	a809      	l32i.n	a10, a9, 0
40375447:	b1f2fb        	l32r	a11, 0x40374410
4037544a:	1baa      	addi.n	a10, a10, 1
4037544c:	2802      	l32i.n	a2, a2, 0
4037544e:	81eefb        	l32r	a8, 0x40374408
40375451:	a909      	s32i.n	a10, a9, 0
40375453:	a20b00        	l8ui	a10, a11, 0
40375456:	2088d2        	quos	a8, a8, a2
40375459:	fc0a      	bnez.n	a10, 0x4037548d
4037545b:	21eefb        	l32r	a2, 0x40374414
4037545e:	a20200        	l8ui	a10, a2, 0
40375461:	ecba      	bnez.n	a10, 0x40375490
40375463:	22a001        	movi	a2, 1
40375466:	224b00        	s8i	a2, a11, 0
40375469:	a26900        	s32i	a10, a9, 0
4037546c:	80af05        	extui	a10, a8, 31, 1
4037546f:	8aaa      	add.n	a10, a10, a8
40375471:	2809      	l32i.n	a2, a9, 0
40375473:	a0a121        	srai	a10, a10, 1
40375476:	279a16        	bne	a10, a2, 0x40375490
40375479:	21e6fb        	l32r	a2, 0x40374414
4037547c:	a20200        	l8ui	a10, a2, 0
4037547f:	567a0c        	bnez	a10, 0x4037554a
40375482:	0c22      	movi.n	a2, 2
40375484:	224b00        	s8i	a2, a11, 0
40375487:	a909      	s32i.n	a10, a9, 0
40375489:	c60000        	j	0x40375490
4037548c:	00261a        	sub.s	f2, f6, f0
4037548f:	db22      	addi.n	a2, a2, 13
40375491:	0b00      	addi.n	a0, a0, -1
40375493:	262202        	beqi	a2, 2, 0x40375499
40375496:	862b00        	j	0x40375548
40375499:	d809      	l32i.n	a13, a9, 0
4037549b:	879d16        	bne	a13, a8, 0x403754b5
4037549e:	21ddfb        	l32r	a2, 0x40374414
403754a1:	c1ddfb        	l32r	a12, 0x40374418
403754a4:	220200        	l8ui	a2, a2, 0
403754a7:	a20c00        	l8ui	a10, a12, 0
403754aa:	16420a        	beqz	a2, 0x40375552
403754ad:	0c12      	movi.n	a2, 1
403754af:	20aa20        	or	a10, a10, a2
403754b2:	a24c00        	s8i	a10, a12, 0
403754b5:	f0a811        	slli	a10, a8, 1
403754b8:	a79d16        	bne	a13, a10, 0x403754d2
403754bb:	21d6fb        	l32r	a2, 0x40374414
403754be:	e1d6fb        	l32r	a14, 0x40374418
403754c1:	220200        	l8ui	a2, a2, 0
403754c4:	c20e00        	l8ui	a12, a14, 0
403754c7:	16f208        	beqz	a2, 0x4037555a
403754ca:	0c22      	movi.n	a2, 2
403754cc:	20cc20        	or	a12, a12, a2
403754cf:	c24e00        	s8i	a12, a14, 0
403754d2:	8aca      	add.n	a12, a10, a8
403754d4:	c79d16        	bne	a13, a12, 0x403754ee
403754d7:	21cffb        	l32r	a2, 0x40374414
403754da:	e1cffb        	l32r	a14, 0x40374418
403754dd:	220200        	l8ui	a2, a2, 0
403754e0:	c20e00        	l8ui	a12, a14, 0
403754e3:	16b207        	beqz	a2, 0x40375562
403754e6:	0c42      	movi.n	a2, 4
403754e8:	20cc20        	or	a12, a12, a2
403754eb:	c24e00        	s8i	a12, a14, 0
403754ee:	e0e811        	slli	a14, a8, 2
403754f1:	e79d17        	bne	a13, a14, 0x4037550c
403754f4:	21c8fb        	l32r	a2, 0x40374414
403754f7:	f1c8fb        	l32r	a15, 0x40374418
403754fa:	220200        	l8ui	a2, a2, 0
403754fd:	c20f00        	l8ui	a12, a15, 0
40375500:	166206        	beqz	a2, 0x4037556a
40375503:	22a008        	movi	a2, 8
40375506:	20cc20        	or	a12, a12, a2
40375509:	c24f00        	s8i	a12, a15, 0
4037550c:	8aee      	add.n	a14, a14, a8
4037550e:	e79d23        	bne	a13, a14, 0x40375535
40375511:	c1c0fb        	l32r	a12, 0x40374414
40375514:	d1c1fb        	l32r	a13, 0x40374418
40375517:	f20c00        	l8ui	a15, a12, 0
4037551a:	e20d00        	l8ui	a14, a13, 0
4037551d:	6cfc      	movi.n	a12, -17
4037551f:	c0ce10        	and	a12, a14, a12
40375522:	8c3f      	beqz.n	a15, 0x40375529
40375524:	1c0c      	movi.n	a12, 16
40375526:	c0ce20        	or	a12, a14, a12
40375529:	c24d00        	s8i	a12, a13, 0
4037552c:	c1bcfb        	l32r	a12, 0x4037441c
4037552f:	d2a001        	movi	a13, 1
40375532:	d24c00        	s8i	a13, a12, 0
40375535:	8a8a      	add.n	a8, a10, a8
40375537:	a809      	l32i.n	a10, a9, 0
40375539:	f08811        	slli	a8, a8, 1
4037553c:	a79808        	bne	a8, a10, 0x40375548
4037553f:	0c08      	movi.n	a8, 0
40375541:	824b00        	s8i	a8, a11, 0
40375544:	0c08      	movi.n	a8, 0
40375546:	8909      	s32i.n	a8, a9, 0
40375548:	1df0      	retw.n
4037554a:	0c02      	movi.n	a2, 0
4037554c:	224b00        	s8i	a2, a11, 0
4037554f:	46cfff        	j	0x40375490
40375552:	7ce2      	movi.n	a2, -2
40375554:	20aa10        	and	a10, a10, a2
40375557:	c6d5ff        	j	0x403754b2
4037555a:	7cd2      	movi.n	a2, -3
4037555c:	20cc10        	and	a12, a12, a2
4037555f:	06dbff        	j	0x403754cf
40375562:	7cb2      	movi.n	a2, -5
40375564:	20cc10        	and	a12, a12, a2
40375567:	06e0ff        	j	0x403754eb
4037556a:	7c72      	movi.n	a2, -9
4037556c:	20cc10        	and	a12, a12, a2
4037556f:	86e5ff        	j	0x40375509
40375572:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40375575:	410081        	l32r	a4, 0x40355978
40375578:	aafb      	add.n	a15, a11, a10
4037557a:	8808      	l32i.n	a8, a8, 0
4037557c:	8cc8      	beqz.n	a8, 0x4037558c
4037557e:	66280e        	bnei	a8, 2, 0x40375590
40375581:	81a8fb        	l32r	a8, 0x40374424
40375584:	0c19      	movi.n	a9, 1
40375586:	c02000        	memw
40375589:	926800        	s32i	a9, a8, 0
4037558c:	1df0      	retw.n
4037558e:	000066        	ee.ldf.64.xp	f0, f6, a0, a0
40375591:	38f8      	l32i.n	a3, a8, 60
40375593:	a1a5fb        	l32r	a10, 0x40374428
40375596:	81a5fb        	l32r	a8, 0x4037442c
40375599:	e00800        	callx8	a8
4037559c:	46f8ff        	j	0x40375581
4037559f:	003641        	srli	a3, a0, 6
403755a2:	000c14        	extui	a0, a0, 12, 2
403755a5:	cc02      	bnez.n	a2, 0x403755a9
403755a7:	1df0      	retw.n
403755a9:	208060        	neg	a8, a2
403755ac:	208810        	and	a8, a8, a2
403755af:	80f840        	nsau	a8, a8
403755b2:	808060        	neg	a8, a8
403755b5:	82c81f        	addi	a8, a8, 31
403755b8:	001840        	ssl	a8
403755bb:	00a4a1        	sll	a10, a4
403755be:	7cf9      	movi.n	a9, -1
403755c0:	a09930        	xor	a9, a9, a10
403755c3:	902210        	and	a2, a2, a9
403755c6:	919afb        	l32r	a9, 0x40374430
403755c9:	3a88      	add.n	a8, a8, a3
403755cb:	9849      	l32i.n	a9, a9, 16
403755cd:	d08811        	slli	a8, a8, 3
403755d0:	8a89      	add.n	a8, a9, a8
403755d2:	9808      	l32i.n	a9, a8, 0
403755d4:	16d9fc        	beqz	a9, 0x403755a5
403755d7:	a818      	l32i.n	a10, a8, 4
403755d9:	e00900        	callx8	a9
403755dc:	46f1ff        	j	0x403755a5
403755df:	003641        	srli	a3, a0, 6
403755e2:	003193        	movnez	a3, a1, a0
403755e5:	fb22      	addi.n	a2, a2, 15
403755e7:	230416        	lsi	f2, a4, 88
403755ea:	020522        	l8ui	a0, a5, 34
403755ed:	230028        	lsi	f2, a0, 160
403755f0:	02c020        	addi	a0, a0, 32
403755f3:	002222        	orb	b2, b2, b0
403755f6:	179c02        	bne	a12, a1, 0x403755fc
403755f9:	0c0b      	movi.n	a11, 0
403755fb:	20a220        	or	a10, a2, a2
403755fe:	25faff        	call8	0x403755a0
40375601:	8803      	l32i.n	a8, a3, 0
40375603:	8808      	l32i.n	a8, a8, 0
40375605:	c02000        	memw
40375608:	226813        	s32i	a2, a8, 76
4037560b:	2803      	l32i.n	a2, a3, 0
4037560d:	2802      	l32i.n	a2, a2, 0
4037560f:	c02000        	memw
40375612:	a2221a        	l32i	a10, a2, 104
40375615:	2187fb        	l32r	a2, 0x40374434
40375618:	202a10        	and	a2, a10, a2
4037561b:	9ce2      	beqz.n	a2, 0x4037563d
4037561d:	ad02      	mov.n	a10, a2
4037561f:	2c0b      	movi.n	a11, 32
40375621:	e5f7ff        	call8	0x403755a0
40375624:	3803      	l32i.n	a3, a3, 0
40375626:	8184fb        	l32r	a8, 0x40374438
40375629:	3803      	l32i.n	a3, a3, 0
4037562b:	c02000        	memw
4037562e:	a22316        	l32i	a10, a3, 88
40375631:	80aa10        	and	a10, a10, a8
40375634:	20aa20        	or	a10, a10, a2
40375637:	c02000        	memw
4037563a:	a26316        	s32i	a10, a3, 88
4037563d:	1df0      	retw.n
4037563f:	003681        	src	a3, a6, a0
40375642:	00          	.byte	00
40375643:	cd03      	mov.n	a12, a3
40375645:	317dfb        	l32r	a3, 0x4037443c
40375648:	e07211        	slli	a7, a2, 2
4037564b:	7a33      	add.n	a3, a3, a7
4037564d:	4803      	l32i.n	a4, a3, 0
4037564f:	0c03      	movi.n	a3, 0
40375651:	68e4      	l32i.n	a6, a4, 56
40375653:	3951      	s32i.n	a3, a1, 20
40375655:	5844      	l32i.n	a5, a4, 16
40375657:	379602        	bne	a6, a3, 0x4037565d
4037565a:	c65000        	j	0x403757a1
4037565d:	371502        	beq	a5, a3, 0x40375663
40375660:	464f00        	j	0x403757a1
40375663:	2a77      	add.n	a7, a7, a2
40375665:	3176fb        	l32r	a3, 0x40374440
40375668:	e07711        	slli	a7, a7, 2
4037566b:	7a73      	add.n	a7, a3, a7
4037566d:	8807      	l32i.n	a8, a7, 0
4037566f:	9816      	l32i.n	a9, a6, 4
40375671:	a826      	l32i.n	a10, a6, 8
40375673:	720414        	l8ui	a7, a4, 20
40375676:	579717        	bne	a7, a5, 0x40375691
40375679:	5854      	l32i.n	a5, a4, 20
4037567b:	3826      	l32i.n	a3, a6, 8
4037567d:	5a33      	add.n	a3, a3, a5
4037567f:	5836      	l32i.n	a5, a6, 12
40375681:	3926      	s32i.n	a3, a6, 8
40375683:	571325        	beq	a3, a5, 0x403756ac
40375686:	0c03      	movi.n	a3, 0
40375688:	3934      	s32i.n	a3, a4, 12
4037568a:	38e4      	l32i.n	a3, a4, 56
4037568c:	fc93      	bnez.n	a3, 0x403756c9
4037568e:	860800        	j	0x403756b4
40375691:	c02000        	memw
40375694:	3878      	l32i.n	a3, a8, 28
40375696:	c02000        	memw
40375699:	3961      	s32i.n	a3, a1, 24
4037569b:	c02000        	memw
4037569e:	b861      	l32i.n	a11, a1, 24
403756a0:	aa35      	add.n	a3, a5, a10
403756a2:	3a39      	add.n	a3, a9, a3
403756a4:	b24300        	s8i	a11, a3, 0
403756a7:	1b55      	addi.n	a5, a5, 1
403756a9:	46f2ff        	j	0x40375676
403756ac:	38e4      	l32i.n	a3, a4, 56
403756ae:	3843      	l32i.n	a3, a3, 16
403756b0:	39e4      	s32i.n	a3, a4, 56
403756b2:	ccf3      	bnez.n	a3, 0x403756c5
403756b4:	561c12        	bnez	a12, 0x403757d9
403756b7:	d163fb        	l32r	a13, 0x40374444
403756ba:	c163fb        	l32r	a12, 0x40374448
403756bd:	b2a52e        	movi	a11, 0x52e
403756c0:	063c00        	j	0x403757b4
403756c3:	00          	.byte	00
403756c4:	000c05        	extui	a0, a0, 28, 1
403756c7:	5923      	s32i.n	a5, a3, 8
403756c9:	e0f211        	slli	a15, a2, 2
403756cc:	2aff      	add.n	a15, a15, a2
403756ce:	315cfb        	l32r	a3, 0x40374440
403756d1:	e0ff11        	slli	a15, a15, 2
403756d4:	f0f380        	add	a15, a3, a15
403756d7:	52af00        	movi	a5, 0xffffff00
403756da:	88e4      	l32i.n	a8, a4, 56
403756dc:	16a809        	beqz	a8, 0x4037577a
403756df:	c80f      	l32i.n	a12, a15, 0
403756e1:	e834      	l32i.n	a14, a4, 12
403756e3:	320800        	l8ui	a3, a8, 0
403756e6:	915afb        	l32r	a9, 0x40374450
403756e9:	b2cc58        	addi	a11, a12, 88
403756ec:	a808      	l32i.n	a10, a8, 0
403756ee:	b931      	s32i.n	a11, a1, 12
403756f0:	3921      	s32i.n	a3, a1, 8
403756f2:	e0be11        	slli	a11, a14, 2
403756f5:	903a10        	and	a3, a10, a9
403756f8:	1b9e      	addi.n	a9, a14, 1
403756fa:	e831      	l32i.n	a14, a1, 12
403756fc:	d838      	l32i.n	a13, a8, 12
403756fe:	7828      	l32i.n	a7, a8, 8
40375700:	babe      	add.n	a11, a14, a11
40375702:	e154fb        	l32r	a14, 0x40374454
40375705:	706dc0        	sub	a6, a13, a7
40375708:	e71302        	beq	a3, a14, 0x4037570e
4037570b:	464600        	j	0x40375828
4037570e:	4b38      	addi.n	a3, a8, 4
40375710:	5d0d      	mov.n	a5, a13
40375712:	261d10        	beqi	a13, 1, 0x40375726
40375715:	2c03      	movi.n	a3, 32
40375717:	306663        	minu	a6, a6, a3
4037571a:	3818      	l32i.n	a3, a8, 4
4037571c:	605074        	extui	a5, a6, 0, 8
4037571f:	7a33      	add.n	a3, a3, a7
40375721:	6a77      	add.n	a7, a7, a6
40375723:	726802        	s32i	a7, a8, 8
40375726:	0c0f      	movi.n	a15, 0
40375728:	62af00        	movi	a6, 0xffffff00
4037572b:	57af02        	bge	a15, a5, 0x40375731
4037572e:	863100        	j	0x403757f8
40375731:	32af00        	movi	a3, 0xffffff00
40375734:	30aa10        	and	a10, a10, a3
40375737:	3831      	l32i.n	a3, a1, 12
40375739:	e09911        	slli	a9, a9, 2
4037573c:	9a93      	add.n	a9, a3, a9
4037573e:	50aa20        	or	a10, a10, a5
40375741:	3145fb        	l32r	a3, 0x40374458
40375744:	c02000        	memw
40375747:	a90b      	s32i.n	a10, a11, 0
40375749:	c02000        	memw
4037574c:	3909      	s32i.n	a3, a9, 0
4037574e:	7cf3      	movi.n	a3, -1
40375750:	c02000        	memw
40375753:	399c      	s32i.n	a3, a12, 36
40375755:	32a5a8        	movi	a3, 0x5a8
40375758:	c02000        	memw
4037575b:	39ac      	s32i.n	a3, a12, 40
4037575d:	0c03      	movi.n	a3, 0
4037575f:	3934      	s32i.n	a3, a4, 12
40375761:	261d05        	beqi	a13, 1, 0x4037576a
40375764:	322802        	l32i	a3, a8, 8
40375767:	379d09        	bne	a13, a3, 0x40375774
4037576a:	3848      	l32i.n	a3, a8, 16
4037576c:	39e4      	s32i.n	a3, a4, 56
4037576e:	8c23      	beqz.n	a3, 0x40375774
40375770:	0c05      	movi.n	a5, 0
40375772:	5923      	s32i.n	a5, a3, 8
40375774:	32a001        	movi	a3, 1
40375777:	326404        	s32i	a3, a4, 16
4037577a:	e03211        	slli	a3, a2, 2
4037577d:	202380        	add	a2, a3, a2
40375780:	3130fb        	l32r	a3, 0x40374440
40375783:	e02211        	slli	a2, a2, 2
40375786:	3a22      	add.n	a2, a2, a3
40375788:	ad02      	mov.n	a10, a2
4037578a:	25790a        	call8	0x4037ff1c
4037578d:	3802      	l32i.n	a3, a2, 0
4037578f:	2c04      	movi.n	a4, 32
40375791:	c02000        	memw
40375794:	2813      	l32i.n	a2, a3, 4
40375796:	402220        	or	a2, a2, a4
40375799:	c02000        	memw
4037579c:	2913      	s32i.n	a2, a3, 4
4037579e:	860a00        	j	0x403757cc
403757a1:	32c5fd        	addi	a3, a5, -3
403757a4:	7cd6      	movi.n	a6, -3
403757a6:	678326        	bany	a3, a6, 0x403757d0
403757a9:	dc0c      	bnez.n	a12, 0x403757bd
403757ab:	d126fb        	l32r	a13, 0x40374444
403757ae:	c126fb        	l32r	a12, 0x40374448
403757b1:	b2a525        	movi	a11, 0x525
403757b4:	a126fb        	l32r	a10, 0x4037444c
403757b7:	101120        	or	a1, a1, a1
403757ba:	651a0d        	call8	0x40382960
403757bd:	a22413        	l32i	a10, a4, 76
403757c0:	0c12      	movi.n	a2, 1
403757c2:	0c2d      	movi.n	a13, 2
403757c4:	b2c114        	addi	a11, a1, 20
403757c7:	2951      	s32i.n	a2, a1, 20
403757c9:	25f907        	call8	0x4037d75c
403757cc:	1df0      	retw.n
403757ce:	000026        	ee.ldf.64.xp	f0, f2, a0, a0
403757d1:	4502c6        	call0	0x4033b7f8
403757d4:	acff      	beqz.n	a15, 0x40375807
403757d6:	86fcff        	j	0x403757cc
403757d9:	22a000        	movi	a2, 0
403757dc:	22640f        	s32i	a2, a4, 60
403757df:	a22413        	l32i	a10, a4, 76
403757e2:	22a001        	movi	a2, 1
403757e5:	2951      	s32i.n	a2, a1, 20
403757e7:	0c2d      	movi.n	a13, 2
403757e9:	b2c114        	addi	a11, a1, 20
403757ec:	0c22      	movi.n	a2, 2
403757ee:	e5f607        	call8	0x4037d75c
403757f1:	2944      	s32i.n	a2, a4, 16
403757f3:	46f5ff        	j	0x403757cc
403757f6:	0000c0        	sub	a0, a0, a0
403757f9:	20          	.byte	0x20
403757fa:	00          	.byte	00
403757fb:	787c      	l32i.n	a7, a12, 28
403757fd:	c02000        	memw
40375800:	7971      	s32i.n	a7, a1, 28
40375802:	c02000        	memw
40375805:	e871      	l32i.n	a14, a1, 28
40375807:	fa73      	add.n	a7, a3, a15
40375809:	720700        	l8ui	a7, a7, 0
4037580c:	60ee10        	and	a14, a14, a6
4037580f:	70ee20        	or	a14, a14, a7
40375812:	c02000        	memw
40375815:	e971      	s32i.n	a14, a1, 28
40375817:	c02000        	memw
4037581a:	7871      	l32i.n	a7, a1, 28
4037581c:	1bff      	addi.n	a15, a15, 1
4037581e:	c02000        	memw
40375821:	797c      	s32i.n	a7, a12, 28
40375823:	06c1ff        	j	0x4037572b
40375826:	0000d1        	mul16s	a0, a0, a0
40375829:	0dfb      	ret.n
4037582b:	d7933a        	bne	a3, a13, 0x40375869
4037582e:	2c03      	movi.n	a3, 32
40375830:	306663        	minu	a6, a6, a3
40375833:	32af00        	movi	a3, 0xffffff00
40375836:	6954      	s32i.n	a6, a4, 20
40375838:	30aa10        	and	a10, a10, a3
4037583b:	606074        	extui	a6, a6, 0, 8
4037583e:	e831      	l32i.n	a14, a1, 12
40375840:	3106fb        	l32r	a3, 0x40374458
40375843:	606a20        	or	a6, a10, a6
40375846:	e09911        	slli	a9, a9, 2
40375849:	c02000        	memw
4037584c:	690b      	s32i.n	a6, a11, 0
4037584e:	9a9e      	add.n	a9, a14, a9
40375850:	c02000        	memw
40375853:	3909      	s32i.n	a3, a9, 0
40375855:	7cf3      	movi.n	a3, -1
40375857:	c02000        	memw
4037585a:	399c      	s32i.n	a3, a12, 36
4037585c:	32a1a8        	movi	a3, 0x1a8
4037585f:	c02000        	memw
40375862:	39ac      	s32i.n	a3, a12, 40
40375864:	0c03      	movi.n	a3, 0
40375866:	46c3ff        	j	0x40375777
40375869:	3821      	l32i.n	a3, a1, 8
4037586b:	50aa10        	and	a10, a10, a5
4037586e:	30ea20        	or	a14, a10, a3
40375871:	3848      	l32i.n	a3, a8, 16
40375873:	c02000        	memw
40375876:	e90b      	s32i.n	a14, a11, 0
40375878:	9934      	s32i.n	a9, a4, 12
4037587a:	39e4      	s32i.n	a3, a4, 56
4037587c:	0ce6      	movi.n	a6, 14
4037587e:	972602        	blt	a6, a9, 0x40375884
40375881:	5653e5        	bnez	a3, 0x403756da
40375884:	0c03      	movi.n	a3, 0
40375886:	3934      	s32i.n	a3, a4, 12
40375888:	86bbff        	j	0x4037577a
4037588b:	003681        	src	a3, a6, a0
4037588e:	004222        	orb	b4, b2, b0
40375891:	00          	.byte	00
40375892:	71ebfa        	l32r	a7, 0x40374440
40375895:	e06411        	slli	a6, a4, 2
40375898:	405680        	add	a5, a6, a4
4037589b:	e05511        	slli	a5, a5, 2
4037589e:	7a55      	add.n	a5, a5, a7
403758a0:	4bb1      	addi.n	a11, a1, 4
403758a2:	ad05      	mov.n	a10, a5
403758a4:	e5810a        	call8	0x403800c4
403758a7:	3811      	l32i.n	a3, a1, 4
403758a9:	169308        	beqz	a3, 0x40375936
403758ac:	0c03      	movi.n	a3, 0
403758ae:	8812      	l32i.n	a8, a2, 4
403758b0:	3921      	s32i.n	a3, a1, 8
403758b2:	3931      	s32i.n	a3, a1, 12
403758b4:	3941      	s32i.n	a3, a1, 16
403758b6:	261802        	beqi	a8, 1, 0x403758bc
403758b9:	c61e00        	j	0x40375938
403758bc:	3842      	l32i.n	a3, a2, 16
403758be:	661322        	bnei	a3, 1, 0x403758e4
403758c1:	8bb1      	addi.n	a11, a1, 8
403758c3:	ad05      	mov.n	a10, a5
403758c5:	e5660a        	call8	0x4037ff34
403758c8:	3821      	l32i.n	a3, a1, 8
403758ca:	662323        	bnei	a3, 2, 0x403758f1
403758cd:	31dbfa        	l32r	a3, 0x4037443c
403758d0:	0c35      	movi.n	a5, 3
403758d2:	6a63      	add.n	a6, a3, a6
403758d4:	3806      	l32i.n	a3, a6, 0
403758d6:	526304        	s32i	a5, a3, 16
403758d9:	b2c110        	addi	a11, a1, 16
403758dc:	ad04      	mov.n	a10, a4
403758de:	25d6ff        	call8	0x40375640
403758e1:	860b00        	j	0x40375913
403758e4:	5603fe        	bnez	a3, 0x403758c8
403758e7:	8bb1      	addi.n	a11, a1, 8
403758e9:	ad05      	mov.n	a10, a5
403758eb:	256d0a        	call8	0x4037ffbc
403758ee:	86f5ff        	j	0x403758c8
403758f1:	66330c        	bnei	a3, 3, 0x40375901
403758f4:	31d2fa        	l32r	a3, 0x4037443c
403758f7:	0c55      	movi.n	a5, 5
403758f9:	6a63      	add.n	a6, a3, a6
403758fb:	3806      	l32i.n	a3, a6, 0
403758fd:	46f5ff        	j	0x403758d6
40375900:	00          	.byte	00
40375901:	2613ef        	beqi	a3, 1, 0x403758f4
40375904:	2643d1        	beqi	a3, 4, 0x403758d9
40375907:	66532b        	bnei	a3, 5, 0x40375936
4037590a:	322204        	l32i	a3, a2, 16
4037590d:	32c3fe        	addi	a3, a3, -2
40375910:	f623c5        	bgeui	a3, 2, 0x403758d9
40375913:	a22213        	l32i	a10, a2, 76
40375916:	d2a000        	movi	a13, 0
40375919:	c2c10c        	addi	a12, a1, 12
4037591c:	b2c11c        	addi	a11, a1, 28
4037591f:	d971      	s32i.n	a13, a1, 28
40375921:	a5e307        	call8	0x4037d75c
40375924:	2831      	l32i.n	a2, a1, 12
40375926:	261204        	beqi	a2, 1, 0x4037592e
40375929:	2841      	l32i.n	a2, a1, 16
4037592b:	661207        	bnei	a2, 1, 0x40375936
4037592e:	0c0a      	movi.n	a10, 0
40375930:	101120        	or	a1, a1, a1
40375933:	a5c303        	call8	0x4037956c
40375936:	1df0      	retw.n
40375938:	b2c108        	addi	a11, a1, 8
4037593b:	ad05      	mov.n	a10, a5
4037593d:	65700a        	call8	0x40380044
40375940:	8821      	l32i.n	a8, a1, 8
40375942:	92c8fb        	addi	a9, a8, -5
40375945:	f6294c        	bgeui	a9, 2, 0x40375995
40375948:	b2c11c        	addi	a11, a1, 28
4037594b:	ad05      	mov.n	a10, a5
4037594d:	a5740a        	call8	0x40380098
40375950:	c871      	l32i.n	a12, a1, 28
40375952:	8805      	l32i.n	a8, a5, 0
40375954:	b2c218        	addi	a11, a2, 24
40375957:	c05074        	extui	a5, a12, 0, 8
4037595a:	57231b        	blt	a3, a5, 0x40375979
4037595d:	4a46      	add.n	a4, a6, a4
4037595f:	a2222f        	l32i	a10, a2, 188
40375962:	e04411        	slli	a4, a4, 2
40375965:	cbd1      	addi.n	a13, a1, 12
40375967:	4a77      	add.n	a7, a7, a4
40375969:	a5fc06        	call8	0x4037c934
4037596c:	2807      	l32i.n	a2, a7, 0
4037596e:	32a081        	movi	a3, 129
40375971:	c02000        	memw
40375974:	3992      	s32i.n	a3, a2, 36
40375976:	86eaff        	j	0x40375924
40375979:	c02000        	memw
4037597c:	9878      	l32i.n	a9, a8, 28
4037597e:	c02000        	memw
40375981:	9961      	s32i.n	a9, a1, 24
40375983:	c02000        	memw
40375986:	a861      	l32i.n	a10, a1, 24
40375988:	3a92      	add.n	a9, a2, a3
4037598a:	a24918        	s8i	a10, a9, 24
4037598d:	1b33      	addi.n	a3, a3, 1
4037598f:	c6f1ff        	j	0x4037595a
40375992:	000000        	ill
40375995:	66788b        	bnei	a8, 7, 0x40375924
40375998:	b2c114        	addi	a11, a1, 20
4037599b:	50a520        	or	a10, a5, a5
4037599e:	e5700a        	call8	0x403800ac
403759a1:	c22105        	l32i	a12, a1, 20
403759a4:	a22231        	l32i	a10, a2, 196
403759a7:	b2c118        	addi	a11, a1, 24
403759aa:	326106        	s32i	a3, a1, 24
403759ad:	250607        	call8	0x4037ca10
403759b0:	162a05        	beqz	a10, 0x40375a06
403759b3:	8805      	l32i.n	a8, a5, 0
403759b5:	920118        	l8ui	a9, a1, 24
403759b8:	b2af00        	movi	a11, 0xffffff00
403759bb:	972319        	blt	a3, a9, 0x403759d8
403759be:	bd0a      	mov.n	a11, a10
403759c0:	a22231        	l32i	a10, a2, 196
403759c3:	cbc1      	addi.n	a12, a1, 12
403759c5:	650e07        	call8	0x4037caac
403759c8:	4a46      	add.n	a4, a6, a4
403759ca:	e04411        	slli	a4, a4, 2
403759cd:	4a47      	add.n	a4, a7, a4
403759cf:	2804      	l32i.n	a2, a4, 0
403759d1:	0c23      	movi.n	a3, 2
403759d3:	86e6ff        	j	0x40375971
403759d6:	0000c0        	sub	a0, a0, a0
403759d9:	200058        	ssxp	f0, a0, a2
403759dc:	783a      	l32i.n	a7, a10, 12
403759de:	cac0      	add.n	a12, a0, a12
403759e0:	200059        	s32nb	a2, a0, 0
403759e3:	71c020        	l32r	a7, 0x4033dce4
403759e6:	00          	.byte	00
403759e7:	5871      	l32i.n	a5, a1, 28
403759e9:	c20c00        	l8ui	a12, a12, 0
403759ec:	b05510        	and	a5, a5, a11
403759ef:	c05520        	or	a5, a5, a12
403759f2:	c02000        	memw
403759f5:	5971      	s32i.n	a5, a1, 28
403759f7:	c02000        	memw
403759fa:	5871      	l32i.n	a5, a1, 28
403759fc:	1b33      	addi.n	a3, a3, 1
403759fe:	c02000        	memw
40375a01:	5978      	s32i.n	a5, a8, 28
40375a03:	06edff        	j	0x403759bb
40375a06:	ad05      	mov.n	a10, a5
40375a08:	65670a        	call8	0x40380080
40375a0b:	46eeff        	j	0x403759c8
40375a0e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40375a11:	410081        	l32r	a4, 0x40355e14
40375a14:	93          	.byte	0x93
40375a15:	fa20      	add.n	a2, a0, a15
40375a17:	b220a2        	l32i	a11, a0, 0x288
40375a1a:	2800      	l32i.n	a2, a0, 0
40375a1c:	25790a        	call8	0x403801b0
40375a1f:	900000        	retw
40375a22:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40375a25:	610032        	l32r	a6, 0x40342228
40375a28:	610365        	l32r	a6, 0x4034ee34
40375a2b:	060aa1        	j	0x4035de57
40375a2e:	8d          	.byte	0x8d
40375a2f:	fab2      	add.n	a11, a2, a15
40375a31:	afff6508 	ee.vmulas.s16.accx.ld.ip.qup	q0, a10, 0xfffffef0, q7, q6, q6, q5
40375a35:	0ac2      	add.n	a12, a2, a0
40375a37:	210331        	l32r	a2, 0x40341e44
40375a3a:	89fa      	s32i.n	a8, a10, 60
40375a3c:	260c06        	beqi	a12, -1, 0x40375a46
40375a3f:	a803      	l32i.n	a10, a3, 0
40375a41:	bd02      	mov.n	a11, a2
40375a43:	25690a        	call8	0x403800d4
40375a46:	a22300        	l32i	a10, a3, 0
40375a49:	964403        	bltz	a4, 0x40375a81
40375a4c:	c81a      	l32i.n	a12, a10, 4
40375a4e:	e08211        	slli	a8, a2, 2
40375a51:	e09c11        	slli	a9, a12, 2
40375a54:	2a88      	add.n	a8, a8, a2
40375a56:	ca99      	add.n	a9, a9, a12
40375a58:	b80a      	l32i.n	a11, a10, 0
40375a5a:	b09911        	slli	a9, a9, 5
40375a5d:	e08811        	slli	a8, a8, 2
40375a60:	9a88      	add.n	a8, a8, a9
40375a62:	8a8b      	add.n	a8, a11, a8
40375a64:	b181fa        	l32r	a11, 0x40374468
40375a67:	c04411        	slli	a4, a4, 4
40375a6a:	c02000        	memw
40375a6d:	922802        	l32i	a9, a8, 8
40375a70:	b0b410        	and	a11, a4, a11
40375a73:	417efa        	l32r	a4, 0x4037446c
40375a76:	404910        	and	a4, a9, a4
40375a79:	b04420        	or	a4, a4, a11
40375a7c:	c02000        	memw
40375a7f:	4928      	s32i.n	a4, a8, 8
40375a81:	cd05      	mov.n	a12, a5
40375a83:	bd02      	mov.n	a11, a2
40375a85:	25680a        	call8	0x40380108
40375a88:	a803      	l32i.n	a10, a3, 0
40375a8a:	cd06      	mov.n	a12, a6
40375a8c:	bd02      	mov.n	a11, a2
40375a8e:	256b0a        	call8	0x40380140
40375a91:	a803      	l32i.n	a10, a3, 0
40375a93:	cd07      	mov.n	a12, a7
40375a95:	bd02      	mov.n	a11, a2
40375a97:	256e0a        	call8	0x40380178
40375a9a:	c8c1      	l32i.n	a12, a1, 48
40375a9c:	a803      	l32i.n	a10, a3, 0
40375a9e:	bd02      	mov.n	a11, a2
40375aa0:	25760a        	call8	0x40380204
40375aa3:	ad02      	mov.n	a10, a2
40375aa5:	a5f6ff        	call8	0x40375a10
40375aa8:	65fe09        	call8	0x4037fa90
40375aab:	a16efa        	l32r	a10, 0x40374464
40375aae:	22a000        	movi	a2, 0
40375ab1:	a5140a        	call8	0x4037fbfc
40375ab4:	1df0      	retw.n
40375ab6:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40375ab9:	410065        	l32r	a4, 0x4034eebc
40375abc:	fd09      	mov.n	a15, a9
40375abe:	616cfa        	l32r	a6, 0x40374470
40375ac1:	b2afff        	movi	a11, -1
40375ac4:	60a620        	or	a10, a6, a6
40375ac7:	25ff09        	call8	0x4037fab8
40375aca:	f08211        	slli	a8, a2, 1
40375acd:	2a88      	add.n	a8, a8, a2
40375acf:	2169fa        	l32r	a2, 0x40374474
40375ad2:	c08811        	slli	a8, a8, 4
40375ad5:	5a88      	add.n	a8, a8, a5
40375ad7:	9812      	l32i.n	a9, a2, 4
40375ad9:	e08811        	slli	a8, a8, 2
40375adc:	8a89      	add.n	a8, a9, a8
40375ade:	42c4ff        	addi	a4, a4, -1
40375ae1:	660409        	bnei	a4, -1, 0x40375aee
40375ae4:	a5fa09        	call8	0x4037fa90
40375ae7:	ad06      	mov.n	a10, a6
40375ae9:	25110a        	call8	0x4037fbfc
40375aec:	1df0      	retw.n
40375aee:	2803      	l32i.n	a2, a3, 0
40375af0:	4b33      	addi.n	a3, a3, 4
40375af2:	c02000        	memw
40375af5:	2908      	s32i.n	a2, a8, 0
40375af7:	4b88      	addi.n	a8, a8, 4
40375af9:	46f8ff        	j	0x40375ade
40375afc:	368100        	entry	a1, 64
40375aff:	32a000        	movi	a3, 0
40375b02:	326106        	s32i	a3, a1, 24
40375b05:	322200        	l32i	a3, a2, 0
40375b08:	0c14      	movi.n	a4, 1
40375b0a:	c02000        	memw
40375b0d:	52231d        	l32i	a5, a3, 116
40375b10:	505034        	extui	a5, a5, 0, 4
40375b13:	566508        	bnez	a5, 0x40375b9d
40375b16:	3802      	l32i.n	a3, a2, 0
40375b18:	c02000        	memw
40375b1b:	82231d        	l32i	a8, a3, 116
40375b1e:	806834        	extui	a6, a8, 8, 4
40375b21:	564612        	bnez	a6, 0x40375c49
40375b24:	3802      	l32i.n	a3, a2, 0
40375b26:	0c17      	movi.n	a7, 1
40375b28:	c02000        	memw
40375b2b:	52231d        	l32i	a5, a3, 116
40375b2e:	505035        	extui	a5, a5, 16, 4
40375b31:	563524        	bnez	a5, 0x40375d78
40375b34:	3802      	l32i.n	a3, a2, 0
40375b36:	0c15      	movi.n	a5, 1
40375b38:	c02000        	memw
40375b3b:	62231d        	l32i	a6, a3, 116
40375b3e:	606835        	extui	a6, a6, 24, 4
40375b41:	56c63f        	bnez	a6, 0x40375f41
40375b44:	3802      	l32i.n	a3, a2, 0
40375b46:	0c14      	movi.n	a4, 1
40375b48:	c02000        	memw
40375b4b:	52231d        	l32i	a5, a3, 116
40375b4e:	505c34        	extui	a5, a5, 12, 4
40375b51:	560550        	bnez	a5, 0x40376055
40375b54:	3802      	l32i.n	a3, a2, 0
40375b56:	2147fa        	l32r	a2, 0x40374474
40375b59:	c02000        	memw
40375b5c:	52231d        	l32i	a5, a3, 116
40375b5f:	4802      	l32i.n	a4, a2, 0
40375b61:	8145fa        	l32r	a8, 0x40374478
40375b64:	505435        	extui	a5, a5, 20, 4
40375b67:	0c16      	movi.n	a6, 1
40375b69:	7cf7      	movi.n	a7, -1
40375b6b:	0c29      	movi.n	a9, 2
40375b6d:	7cda      	movi.n	a10, -3
40375b6f:	0c4b      	movi.n	a11, 4
40375b71:	7cbc      	movi.n	a12, -5
40375b73:	566553        	bnez	a5, 0x403760ad
40375b76:	c02000        	memw
40375b79:	a2231d        	l32i	a10, a3, 116
40375b7c:	713ffa        	l32r	a7, 0x40374478
40375b7f:	a0a434        	extui	a10, a10, 4, 4
40375b82:	0c15      	movi.n	a5, 1
40375b84:	7cf6      	movi.n	a6, -1
40375b86:	0c28      	movi.n	a8, 2
40375b88:	7cd9      	movi.n	a9, -3
40375b8a:	0c4b      	movi.n	a11, 4
40375b8c:	7cbc      	movi.n	a12, -5
40375b8e:	562a59        	bnez	a10, 0x40376124
40375b91:	2861      	l32i.n	a2, a1, 24
40375b93:	661202        	bnei	a2, 1, 0x40375b99
40375b96:	659d03        	call8	0x4037956c
40375b99:	1df0      	retw.n
40375b9b:	00          	.byte	00
40375b9c:	0050a0        	addx4	a5, a0, a0
40375b9f:	6050aa        	floor.s	a5, f0, 6
40375ba2:	10a0fa        	abs.s	f10, f0
40375ba5:	40a0a0        	addx4	a10, a0, a4
40375ba8:	60a2ca        	float.s	f10, a2, 6
40375bab:	1fa03074 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a1, 0x100, q6, q4, q3, q0
40375baf:	001340        	ssl	a3
40375bb2:	0074a1        	sll	a7, a4
40375bb5:	62afff        	movi	a6, -1
40375bb8:	706630        	xor	a6, a6, a7
40375bbb:	605510        	and	a5, a5, a6
40375bbe:	612efa        	l32r	a6, 0x40374478
40375bc1:	e07311        	slli	a7, a3, 2
40375bc4:	706680        	add	a6, a6, a7
40375bc7:	722600        	l32i	a7, a6, 0
40375bca:	16a706        	beqz	a7, 0x40375c38
40375bcd:	a867      	l32i.n	a10, a7, 24
40375bcf:	b2c118        	addi	a11, a1, 24
40375bd2:	e5c607        	call8	0x4037d840
40375bd5:	8127fa        	l32r	a8, 0x40374474
40375bd8:	8b63      	addi.n	a6, a3, 8
40375bda:	9808      	l32i.n	a9, a8, 0
40375bdc:	e06611        	slli	a6, a6, 2
40375bdf:	6a69      	add.n	a6, a9, a6
40375be1:	c02000        	memw
40375be4:	9806      	l32i.n	a9, a6, 0
40375be6:	0c2a      	movi.n	a10, 2
40375be8:	a09920        	or	a9, a9, a10
40375beb:	c02000        	memw
40375bee:	9906      	s32i.n	a9, a6, 0
40375bf0:	c02000        	memw
40375bf3:	9806      	l32i.n	a9, a6, 0
40375bf5:	7cda      	movi.n	a10, -3
40375bf7:	a09910        	and	a9, a9, a10
40375bfa:	c02000        	memw
40375bfd:	9906      	s32i.n	a9, a6, 0
40375bff:	c02000        	memw
40375c02:	9806      	l32i.n	a9, a6, 0
40375c04:	0c4a      	movi.n	a10, 4
40375c06:	a09920        	or	a9, a9, a10
40375c09:	c02000        	memw
40375c0c:	9906      	s32i.n	a9, a6, 0
40375c0e:	c02000        	memw
40375c11:	9806      	l32i.n	a9, a6, 0
40375c13:	7cba      	movi.n	a10, -5
40375c15:	a09910        	and	a9, a9, a10
40375c18:	c02000        	memw
40375c1b:	9906      	s32i.n	a9, a6, 0
40375c1d:	0c06      	movi.n	a6, 0
40375c1f:	6957      	s32i.n	a6, a7, 20
40375c21:	6917      	s32i.n	a6, a7, 4
40375c23:	6907      	s32i.n	a6, a7, 0
40375c25:	6927      	s32i.n	a6, a7, 8
40375c27:	626726        	s32i	a6, a7, 152
40375c2a:	62470c        	s8i	a6, a7, 12
40375c2d:	6868      	l32i.n	a6, a8, 24
40375c2f:	8c56      	beqz.n	a6, 0x40375c38
40375c31:	b878      	l32i.n	a11, a8, 28
40375c33:	ad03      	mov.n	a10, a3
40375c35:	e00600        	callx8	a6
40375c38:	6802      	l32i.n	a6, a2, 0
40375c3a:	001340        	ssl	a3
40375c3d:	00a4a1        	sll	a10, a4
40375c40:	c02000        	memw
40375c43:	a2661f        	s32i	a10, a6, 124
40375c46:	46b2ff        	j	0x40375b13
40375c49:	604060        	neg	a4, a6
40375c4c:	604410        	and	a4, a4, a6
40375c4f:	40f440        	nsau	a4, a4
40375c52:	404060        	neg	a4, a4
40375c55:	42c41f        	addi	a4, a4, 31
40375c58:	404074        	extui	a4, a4, 0, 8
40375c5b:	0c13      	movi.n	a3, 1
40375c5d:	001440        	ssl	a4
40375c60:	0073a1        	sll	a7, a3
40375c63:	7cf3      	movi.n	a3, -1
40375c65:	703330        	xor	a3, a3, a7
40375c68:	306610        	and	a6, a6, a3
40375c6b:	3103fa        	l32r	a3, 0x40374478
40375c6e:	e07411        	slli	a7, a4, 2
40375c71:	7a33      	add.n	a3, a3, a7
40375c73:	3803      	l32i.n	a3, a3, 0
40375c75:	16f307        	beqz	a3, 0x40375cf8
40375c78:	72030c        	l8ui	a7, a3, 12
40375c7b:	bc37      	beqz.n	a7, 0x40375cb2
40375c7d:	c22325        	l32i	a12, a3, 148
40375c80:	169c08        	beqz	a12, 0x40375d0d
40375c83:	0c07      	movi.n	a7, 0
40375c85:	7971      	s32i.n	a7, a1, 28
40375c87:	a22326        	l32i	a10, a3, 152
40375c8a:	722323        	l32i	a7, a3, 140
40375c8d:	d823      	l32i.n	a13, a3, 8
40375c8f:	b2231d        	l32i	a11, a3, 116
40375c92:	4bf3      	addi.n	a15, a3, 4
40375c94:	e2c11c        	addi	a14, a1, 28
40375c97:	e00700        	callx8	a7
40375c9a:	a871      	l32i.n	a10, a1, 28
40375c9c:	722326        	l32i	a7, a3, 152
40375c9f:	922325        	l32i	a9, a3, 148
40375ca2:	aa77      	add.n	a7, a7, a10
40375ca4:	726326        	s32i	a7, a3, 152
40375ca7:	72231d        	l32i	a7, a3, 116
40375caa:	a099c0        	sub	a9, a9, a10
40375cad:	926325        	s32i	a9, a3, 148
40375cb0:	7953      	s32i.n	a7, a3, 20
40375cb2:	7802      	l32i.n	a7, a2, 0
40375cb4:	8b94      	addi.n	a9, a4, 8
40375cb6:	e09911        	slli	a9, a9, 2
40375cb9:	9a77      	add.n	a7, a7, a9
40375cbb:	c02000        	memw
40375cbe:	f807      	l32i.n	a15, a7, 0
40375cc0:	e813      	l32i.n	a14, a3, 4
40375cc2:	c823      	l32i.n	a12, a3, 8
40375cc4:	f0f504        	extui	a15, a15, 5, 1
40375cc7:	b853      	l32i.n	a11, a3, 20
40375cc9:	10ff11        	slli	a15, a15, 15
40375ccc:	d803      	l32i.n	a13, a3, 0
40375cce:	c73e46        	bltu	a14, a12, 0x40375d18
40375cd1:	ad04      	mov.n	a10, a4
40375cd3:	d0d0f4        	extui	a13, a13, 0, 16
40375cd6:	c0c0f4        	extui	a12, a12, 0, 16
40375cd9:	e5ddff        	call8	0x40375ab8
40375cdc:	a823      	l32i.n	a10, a3, 8
40375cde:	9853      	l32i.n	a9, a3, 20
40375ce0:	e07a11        	slli	a7, a10, 2
40375ce3:	7a99      	add.n	a9, a9, a7
40375ce5:	7813      	l32i.n	a7, a3, 4
40375ce7:	9953      	s32i.n	a9, a3, 20
40375ce9:	a077c0        	sub	a7, a7, a10
40375cec:	7913      	s32i.n	a7, a3, 4
40375cee:	9803      	l32i.n	a9, a3, 0
40375cf0:	7d05      	mov.n	a7, a5
40375cf2:	cc09      	bnez.n	a9, 0x40375cf6
40375cf4:	7823      	l32i.n	a7, a3, 8
40375cf6:	7903      	s32i.n	a7, a3, 0
40375cf8:	3802      	l32i.n	a3, a2, 0
40375cfa:	8b44      	addi.n	a4, a4, 8
40375cfc:	0c19      	movi.n	a9, 1
40375cfe:	001440        	ssl	a4
40375d01:	0049a1        	sll	a4, a9
40375d04:	c02000        	memw
40375d07:	42631f        	s32i	a4, a3, 124
40375d0a:	c684ff        	j	0x40375b21
40375d0d:	c26326        	s32i	a12, a3, 152
40375d10:	c2430c        	s8i	a12, a3, 12
40375d13:	c6e6ff        	j	0x40375cb2
40375d16:	0000f0        	subx8	a0, a0, a0
40375d19:	94114a        	mula.da.lh.ldinc	m1, a1, m0, a9
40375d1c:	99c0      	s32i.n	a9, a0, 48
40375d1e:	7911      	s32i.n	a7, a1, 4
40375d20:	dc4e      	bnez.n	a14, 0x40375d38
40375d22:	81d4f9        	l32r	a8, 0x40374474
40375d25:	da97      	add.n	a9, a7, a13
40375d27:	e0d911        	slli	a13, a9, 2
40375d2a:	9818      	l32i.n	a9, a8, 4
40375d2c:	da99      	add.n	a9, a9, a13
40375d2e:	c02000        	memw
40375d31:	f909      	s32i.n	a15, a9, 0
40375d33:	c6edff        	j	0x40375cee
40375d36:	0000d0        	subx2	a0, a0, a0
40375d39:	d0f4e0        	subx4	a15, a4, a13
40375d3c:	c0f440        	nsau	a12, a4
40375d3f:	a420e2        	ee.vldbc.32.ip	q4, a10, 0xfffffe80
40375d42:	6103f2        	l32r	a6, 0x40372550
40375d45:	610225        	l32r	a6, 0x4033f150
40375d48:	d7ffe8        	bbsi	a15, 29, 0x40375d34
40375d4b:	31d803        	l32r	a3, 0x40336cac
40375d4e:	81c9f9        	l32r	a8, 0x40374474
40375d51:	dade      	add.n	a13, a14, a13
40375d53:	7a9d      	add.n	a9, a13, a7
40375d55:	7818      	l32i.n	a7, a8, 4
40375d57:	f821      	l32i.n	a15, a1, 8
40375d59:	e09911        	slli	a9, a9, 2
40375d5c:	9a97      	add.n	a9, a7, a9
40375d5e:	7853      	l32i.n	a7, a3, 20
40375d60:	c02000        	memw
40375d63:	f909      	s32i.n	a15, a9, 0
40375d65:	e09e11        	slli	a9, a14, 2
40375d68:	9a77      	add.n	a7, a7, a9
40375d6a:	7953      	s32i.n	a7, a3, 20
40375d6c:	7813      	l32i.n	a7, a3, 4
40375d6e:	e0e7c0        	sub	a14, a7, a14
40375d71:	e913      	s32i.n	a14, a3, 4
40375d73:	c6ddff        	j	0x40375cee
40375d76:	00          	.byte	00
40375d77:	005030        	xor	a5, a0, a0
40375d7a:	605033        	clamps	a5, a0, 13
40375d7d:	10          	.byte	0x10
40375d7e:	30f340        	nsau	a3, a3
40375d81:	303060        	neg	a3, a3
40375d84:	32c31f        	addi	a3, a3, 31
40375d87:	303074        	extui	a3, a3, 0, 8
40375d8a:	001340        	ssl	a3
40375d8d:	0067a1        	sll	a6, a7
40375d90:	7cf4      	movi.n	a4, -1
40375d92:	604430        	xor	a4, a4, a6
40375d95:	405510        	and	a5, a5, a4
40375d98:	4bc3      	addi.n	a12, a3, 4
40375d9a:	41b7f9        	l32r	a4, 0x40374478
40375d9d:	e06c11        	slli	a6, a12, 2
40375da0:	6a44      	add.n	a4, a4, a6
40375da2:	4804      	l32i.n	a4, a4, 0
40375da4:	16c416        	beqz	a4, 0x40375f14
40375da7:	61b3f9        	l32r	a6, 0x40374474
40375daa:	7cea      	movi.n	a10, -2
40375dac:	f806      	l32i.n	a15, a6, 0
40375dae:	6b63      	addi.n	a6, a3, 6
40375db0:	d08611        	slli	a8, a6, 3
40375db3:	8a8f      	add.n	a8, a15, a8
40375db5:	c02000        	memw
40375db8:	9818      	l32i.n	a9, a8, 4
40375dba:	f0bc11        	slli	a11, a12, 1
40375dbd:	a09910        	and	a9, a9, a10
40375dc0:	c02000        	memw
40375dc3:	9918      	s32i.n	a9, a8, 4
40375dc5:	c02000        	memw
40375dc8:	9818      	l32i.n	a9, a8, 4
40375dca:	a1acf9        	l32r	a10, 0x4037447c
40375dcd:	a09920        	or	a9, a9, a10
40375dd0:	c02000        	memw
40375dd3:	9918      	s32i.n	a9, a8, 4
40375dd5:	c02000        	memw
40375dd8:	8808      	l32i.n	a8, a8, 0
40375dda:	caab      	add.n	a10, a11, a12
40375ddc:	808835        	extui	a8, a8, 24, 4
40375ddf:	f09811        	slli	a9, a8, 1
40375de2:	8a99      	add.n	a9, a9, a8
40375de4:	81a7f9        	l32r	a8, 0x40374480
40375de7:	a0aa11        	slli	a10, a10, 6
40375dea:	8aaa      	add.n	a10, a10, a8
40375dec:	c09911        	slli	a9, a9, 4
40375def:	0c08      	movi.n	a8, 0
40375df1:	87191b        	beq	a9, a8, 0x40375e10
40375df4:	e0d811        	slli	a13, a8, 2
40375df7:	dada      	add.n	a13, a10, a13
40375df9:	c02000        	memw
40375dfc:	e80d      	l32i.n	a14, a13, 0
40375dfe:	e0e0e4        	extui	a14, a14, 0, 15
40375e01:	8cbe      	beqz.n	a14, 0x40375e10
40375e03:	c02000        	memw
40375e06:	d80d      	l32i.n	a13, a13, 0
40375e08:	1b88      	addi.n	a8, a8, 1
40375e0a:	d0d0e5        	extui	a13, a13, 16, 15
40375e0d:	560dfe        	bnez	a13, 0x40375df1
40375e10:	d09611        	slli	a9, a6, 3
40375e13:	9aff      	add.n	a15, a15, a9
40375e15:	c02000        	memw
40375e18:	981f      	l32i.n	a9, a15, 4
40375e1a:	7c7a      	movi.n	a10, -9
40375e1c:	a09910        	and	a9, a9, a10
40375e1f:	c02000        	memw
40375e22:	991f      	s32i.n	a9, a15, 4
40375e24:	92241e        	l32i	a9, a4, 120
40375e27:	16d90f        	beqz	a9, 0x40375f28
40375e2a:	922422        	l32i	a9, a4, 136
40375e2d:	cabb      	add.n	a11, a11, a12
40375e2f:	a0bb11        	slli	a11, a11, 6
40375e32:	87a902        	bge	a9, a8, 0x40375e38
40375e35:	9088c0        	sub	a8, a8, a9
40375e38:	a22421        	l32i	a10, a4, 132
40375e3b:	e09911        	slli	a9, a9, 2
40375e3e:	d2241f        	l32i	a13, a4, 124
40375e41:	b0b980        	add	a11, a9, a11
40375e44:	918ff9        	l32r	a9, 0x40374480
40375e47:	e0aa11        	slli	a10, a10, 2
40375e4a:	e0c811        	slli	a12, a8, 2
40375e4d:	b0b980        	add	a11, a9, a11
40375e50:	aaad      	add.n	a10, a13, a10
40375e52:	826102        	s32i	a8, a1, 8
40375e55:	8190f9        	l32r	a8, 0x40374498
40375e58:	e00800        	callx8	a8
40375e5b:	c22421        	l32i	a12, a4, 132
40375e5e:	8821      	l32i.n	a8, a1, 8
40375e60:	b2241f        	l32i	a11, a4, 124
40375e63:	cac8      	add.n	a12, a8, a12
40375e65:	a2241e        	l32i	a10, a4, 120
40375e68:	c26421        	s32i	a12, a4, 132
40375e6b:	d2c118        	addi	a13, a1, 24
40375e6e:	e0cc11        	slli	a12, a12, 2
40375e71:	25ac06        	call8	0x4037c934
40375e74:	dc6a      	bnez.n	a10, 0x40375e8e
40375e76:	8183f9        	l32r	a8, 0x40374484
40375e79:	8808      	l32i.n	a8, a8, 0
40375e7b:	8cf8      	beqz.n	a8, 0x40375e8e
40375e7d:	a5a00c        	call8	0x40382888
40375e80:	bd0a      	mov.n	a11, a10
40375e82:	c181f9        	l32r	a12, 0x40374488
40375e85:	a181f9        	l32r	a10, 0x4037448c
40375e88:	8185f9        	l32r	a8, 0x4037449c
40375e8b:	e00800        	callx8	a8
40375e8e:	0c0b      	movi.n	a11, 0
40375e90:	c22420        	l32i	a12, a4, 128
40375e93:	a2241f        	l32i	a10, a4, 124
40375e96:	b26422        	s32i	a11, a4, 136
40375e99:	b26421        	s32i	a11, a4, 132
40375e9c:	8181f9        	l32r	a8, 0x403744a0
40375e9f:	e00800        	callx8	a8
40375ea2:	8174f9        	l32r	a8, 0x40374474
40375ea5:	d06611        	slli	a6, a6, 3
40375ea8:	4808      	l32i.n	a4, a8, 0
40375eaa:	0c28      	movi.n	a8, 2
40375eac:	6a64      	add.n	a6, a4, a6
40375eae:	c02000        	memw
40375eb1:	4816      	l32i.n	a4, a6, 4
40375eb3:	804420        	or	a4, a4, a8
40375eb6:	c02000        	memw
40375eb9:	4916      	s32i.n	a4, a6, 4
40375ebb:	c02000        	memw
40375ebe:	4816      	l32i.n	a4, a6, 4
40375ec0:	7cd8      	movi.n	a8, -3
40375ec2:	804410        	and	a4, a4, a8
40375ec5:	c02000        	memw
40375ec8:	4916      	s32i.n	a4, a6, 4
40375eca:	c02000        	memw
40375ecd:	4816      	l32i.n	a4, a6, 4
40375ecf:	0c48      	movi.n	a8, 4
40375ed1:	804420        	or	a4, a4, a8
40375ed4:	c02000        	memw
40375ed7:	4916      	s32i.n	a4, a6, 4
40375ed9:	c02000        	memw
40375edc:	4816      	l32i.n	a4, a6, 4
40375ede:	7cb8      	movi.n	a8, -5
40375ee0:	804410        	and	a4, a4, a8
40375ee3:	c02000        	memw
40375ee6:	4916      	s32i.n	a4, a6, 4
40375ee8:	c02000        	memw
40375eeb:	4816      	l32i.n	a4, a6, 4
40375eed:	0c88      	movi.n	a8, 8
40375eef:	804420        	or	a4, a4, a8
40375ef2:	c02000        	memw
40375ef5:	4916      	s32i.n	a4, a6, 4
40375ef7:	c02000        	memw
40375efa:	4816      	l32i.n	a4, a6, 4
40375efc:	8160f9        	l32r	a8, 0x4037447c
40375eff:	704420        	or	a4, a4, a7
40375f02:	c02000        	memw
40375f05:	4916      	s32i.n	a4, a6, 4
40375f07:	c02000        	memw
40375f0a:	4816      	l32i.n	a4, a6, 4
40375f0c:	804420        	or	a4, a4, a8
40375f0f:	c02000        	memw
40375f12:	4916      	s32i.n	a4, a6, 4
40375f14:	4802      	l32i.n	a4, a2, 0
40375f16:	32c310        	addi	a3, a3, 16
40375f19:	001340        	ssl	a3
40375f1c:	0037a1        	sll	a3, a7
40375f1f:	c02000        	memw
40375f22:	32641f        	s32i	a3, a4, 124
40375f25:	0602ff        	j	0x40375b31
40375f28:	8157f9        	l32r	a8, 0x40374484
40375f2b:	8808      	l32i.n	a8, a8, 0
40375f2d:	16d8f5        	beqz	a8, 0x40375e8e
40375f30:	65950c        	call8	0x40382888
40375f33:	bd0a      	mov.n	a11, a10
40375f35:	c154f9        	l32r	a12, 0x40374488
40375f38:	a156f9        	l32r	a10, 0x40374490
40375f3b:	46d2ff        	j	0x40375e88
40375f3e:	000000        	ill
40375f41:	603060        	neg	a3, a6
40375f44:	603310        	and	a3, a3, a6
40375f47:	30f340        	nsau	a3, a3
40375f4a:	303060        	neg	a3, a3
40375f4d:	32c31f        	addi	a3, a3, 31
40375f50:	303074        	extui	a3, a3, 0, 8
40375f53:	001340        	ssl	a3
40375f56:	0075a1        	sll	a7, a5
40375f59:	7cf4      	movi.n	a4, -1
40375f5b:	704430        	xor	a4, a4, a7
40375f5e:	406610        	and	a6, a6, a4
40375f61:	4bc3      	addi.n	a12, a3, 4
40375f63:	4145f9        	l32r	a4, 0x40374478
40375f66:	e07c11        	slli	a7, a12, 2
40375f69:	7a44      	add.n	a4, a4, a7
40375f6b:	7804      	l32i.n	a7, a4, 0
40375f6d:	4141f9        	l32r	a4, 0x40374474
40375f70:	6bd3      	addi.n	a13, a3, 6
40375f72:	9804      	l32i.n	a9, a4, 0
40375f74:	d04d11        	slli	a4, a13, 3
40375f77:	4a49      	add.n	a4, a9, a4
40375f79:	c02000        	memw
40375f7c:	4804      	l32i.n	a4, a4, 0
40375f7e:	b22722        	l32i	a11, a7, 136
40375f81:	404835        	extui	a4, a4, 24, 4
40375f84:	f08411        	slli	a8, a4, 1
40375f87:	4a88      	add.n	a8, a8, a4
40375f89:	42c32c        	addi	a4, a3, 44
40375f8c:	e04411        	slli	a4, a4, 2
40375f8f:	4a49      	add.n	a4, a9, a4
40375f91:	c02000        	memw
40375f94:	4804      	l32i.n	a4, a4, 0
40375f96:	c08811        	slli	a8, a8, 4
40375f99:	404084        	extui	a4, a4, 0, 9
40375f9c:	8c1b      	beqz.n	a11, 0x40375fa1
40375f9e:	4048c0        	sub	a4, a8, a4
40375fa1:	a22721        	l32i	a10, a7, 132
40375fa4:	e22720        	l32i	a14, a7, 128
40375fa7:	4afa      	add.n	a15, a10, a4
40375fa9:	e0e241        	srli	a14, a14, 2
40375fac:	e73f02        	bltu	a15, a14, 0x40375fb2
40375faf:	462000        	j	0x40376034
40375fb2:	d0dd11        	slli	a13, a13, 3
40375fb5:	da99      	add.n	a9, a9, a13
40375fb7:	c02000        	memw
40375fba:	e819      	l32i.n	a14, a9, 4
40375fbc:	7c7f      	movi.n	a15, -9
40375fbe:	f0ee10        	and	a14, a14, a15
40375fc1:	c02000        	memw
40375fc4:	e919      	s32i.n	a14, a9, 4
40375fc6:	f09c11        	slli	a9, a12, 1
40375fc9:	ca99      	add.n	a9, a9, a12
40375fcb:	a09911        	slli	a9, a9, 6
40375fce:	e0bb11        	slli	a11, a11, 2
40375fd1:	e2271f        	l32i	a14, a7, 124
40375fd4:	9abb      	add.n	a11, a11, a9
40375fd6:	912af9        	l32r	a9, 0x40374480
40375fd9:	e0aa11        	slli	a10, a10, 2
40375fdc:	e0c411        	slli	a12, a4, 2
40375fdf:	bab9      	add.n	a11, a9, a11
40375fe1:	aaae      	add.n	a10, a14, a10
40375fe3:	8921      	s32i.n	a8, a1, 8
40375fe5:	d931      	s32i.n	a13, a1, 12
40375fe7:	812cf9        	l32r	a8, 0x40374498
40375fea:	e00800        	callx8	a8
40375fed:	9121f9        	l32r	a9, 0x40374474
40375ff0:	d831      	l32i.n	a13, a1, 12
40375ff2:	9809      	l32i.n	a9, a9, 0
40375ff4:	0c8a      	movi.n	a10, 8
40375ff6:	dad9      	add.n	a13, a9, a13
40375ff8:	c02000        	memw
40375ffb:	981d      	l32i.n	a9, a13, 4
40375ffd:	a09920        	or	a9, a9, a10
40376000:	c02000        	memw
40376003:	991d      	s32i.n	a9, a13, 4
40376005:	922721        	l32i	a9, a7, 132
40376008:	8821      	l32i.n	a8, a1, 8
4037600a:	4a99      	add.n	a9, a9, a4
4037600c:	926721        	s32i	a9, a7, 132
4037600f:	922722        	l32i	a9, a7, 136
40376012:	9a44      	add.n	a4, a4, a9
40376014:	87a416        	bge	a4, a8, 0x4037602e
40376017:	426722        	s32i	a4, a7, 136
4037601a:	4802      	l32i.n	a4, a2, 0
4037601c:	32c318        	addi	a3, a3, 24
4037601f:	001340        	ssl	a3
40376022:	0035a1        	sll	a3, a5
40376025:	c02000        	memw
40376028:	32641f        	s32i	a3, a4, 124
4037602b:	86c4fe        	j	0x40375b41
4037602e:	0c04      	movi.n	a4, 0
40376030:	c6f8ff        	j	0x40376017
40376033:	004114        	extui	a4, a0, 1, 2
40376036:	f948      	s32i.n	a15, a8, 16
40376038:	0416d4        	ee.vst.l.64.ip	q2, a0, 0xfffffcb0
4037603b:	fd          	.byte	0xfd
4037603c:	a5840c        	call8	0x40382888
4037603f:	bd0a      	mov.n	a11, a10
40376041:	c111f9        	l32r	a12, 0x40374488
40376044:	a114f9        	l32r	a10, 0x40374494
40376047:	d2a004        	movi	a13, 4
4037604a:	8114f9        	l32r	a8, 0x4037449c
4037604d:	e00800        	callx8	a8
40376050:	86f1ff        	j	0x4037601a
40376053:	00          	.byte	00
40376054:	0050a0        	addx4	a5, a0, a0
40376057:	6050aa        	floor.s	a5, f0, 6
4037605a:	10a0fa        	abs.s	f10, f0
4037605d:	40a0a0        	addx4	a10, a0, a4
40376060:	60a2ca        	float.s	f10, a2, 6
40376063:	1fa03074 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a1, 0x100, q6, q4, q3, q0
40376067:	001340        	ssl	a3
4037606a:	0074a1        	sll	a7, a4
4037606d:	62afff        	movi	a6, -1
40376070:	706630        	xor	a6, a6, a7
40376073:	605510        	and	a5, a5, a6
40376076:	6100f9        	l32r	a6, 0x40374478
40376079:	e07311        	slli	a7, a3, 2
4037607c:	706680        	add	a6, a6, a7
4037607f:	622600        	l32i	a6, a6, 0
40376082:	9c46      	beqz.n	a6, 0x4037609a
40376084:	a866      	l32i.n	a10, a6, 24
40376086:	b2c118        	addi	a11, a1, 24
40376089:	657b07        	call8	0x4037d840
4037608c:	71faf8        	l32r	a7, 0x40374474
4037608f:	6867      	l32i.n	a6, a7, 24
40376091:	8c56      	beqz.n	a6, 0x4037609a
40376093:	b877      	l32i.n	a11, a7, 28
40376095:	ad03      	mov.n	a10, a3
40376097:	e00600        	callx8	a6
4037609a:	6802      	l32i.n	a6, a2, 0
4037609c:	cb33      	addi.n	a3, a3, 12
4037609e:	001340        	ssl	a3
403760a1:	0034a1        	sll	a3, a4
403760a4:	c02000        	memw
403760a7:	32661f        	s32i	a3, a6, 124
403760aa:	c6a8fe        	j	0x40375b51
403760ad:	502060        	neg	a2, a5
403760b0:	502210        	and	a2, a2, a5
403760b3:	20f240        	nsau	a2, a2
403760b6:	202060        	neg	a2, a2
403760b9:	22c21f        	addi	a2, a2, 31
403760bc:	202074        	extui	a2, a2, 0, 8
403760bf:	001240        	ssl	a2
403760c2:	00d6a1        	sll	a13, a6
403760c5:	d0d730        	xor	a13, a7, a13
403760c8:	d05510        	and	a5, a5, a13
403760cb:	4bd2      	addi.n	a13, a2, 4
403760cd:	e0dd11        	slli	a13, a13, 2
403760d0:	dad8      	add.n	a13, a8, a13
403760d2:	d80d      	l32i.n	a13, a13, 0
403760d4:	bc9d      	beqz.n	a13, 0x40376111
403760d6:	6bd2      	addi.n	a13, a2, 6
403760d8:	d0dd11        	slli	a13, a13, 3
403760db:	dad4      	add.n	a13, a4, a13
403760dd:	c02000        	memw
403760e0:	e81d      	l32i.n	a14, a13, 4
403760e2:	90ee20        	or	a14, a14, a9
403760e5:	c02000        	memw
403760e8:	e91d      	s32i.n	a14, a13, 4
403760ea:	c02000        	memw
403760ed:	e81d      	l32i.n	a14, a13, 4
403760ef:	a0ee10        	and	a14, a14, a10
403760f2:	c02000        	memw
403760f5:	e91d      	s32i.n	a14, a13, 4
403760f7:	c02000        	memw
403760fa:	e81d      	l32i.n	a14, a13, 4
403760fc:	b0ee20        	or	a14, a14, a11
403760ff:	c02000        	memw
40376102:	e91d      	s32i.n	a14, a13, 4
40376104:	c02000        	memw
40376107:	e81d      	l32i.n	a14, a13, 4
40376109:	c0ee10        	and	a14, a14, a12
4037610c:	c02000        	memw
4037610f:	e91d      	s32i.n	a14, a13, 4
40376111:	22c214        	addi	a2, a2, 20
40376114:	001240        	ssl	a2
40376117:	0026a1        	sll	a2, a6
4037611a:	c02000        	memw
4037611d:	22631f        	s32i	a2, a3, 124
40376120:	c693fe        	j	0x40375b73
40376123:	00a020        	or	a10, a0, a0
40376126:	60a022        	orb	b10, b0, b6
40376129:	1020f2        	rems	a2, a0, a1
4037612c:	402020        	or	a2, a0, a4
4037612f:	6022c2        	quou	a2, a2, a6
40376132:	1f202074 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a1, 0x100, q4, q4, q2, q0
40376136:	001240        	ssl	a2
40376139:	00d5a1        	sll	a13, a5
4037613c:	d0d630        	xor	a13, a6, a13
4037613f:	d0aa10        	and	a10, a10, a13
40376142:	e0d211        	slli	a13, a2, 2
40376145:	dad7      	add.n	a13, a7, a13
40376147:	d80d      	l32i.n	a13, a13, 0
40376149:	bc9d      	beqz.n	a13, 0x40376186
4037614b:	8bd2      	addi.n	a13, a2, 8
4037614d:	e0dd11        	slli	a13, a13, 2
40376150:	dad4      	add.n	a13, a4, a13
40376152:	c02000        	memw
40376155:	e80d      	l32i.n	a14, a13, 0
40376157:	80ee20        	or	a14, a14, a8
4037615a:	c02000        	memw
4037615d:	e90d      	s32i.n	a14, a13, 0
4037615f:	c02000        	memw
40376162:	e80d      	l32i.n	a14, a13, 0
40376164:	90ee10        	and	a14, a14, a9
40376167:	c02000        	memw
4037616a:	e90d      	s32i.n	a14, a13, 0
4037616c:	c02000        	memw
4037616f:	e80d      	l32i.n	a14, a13, 0
40376171:	b0ee20        	or	a14, a14, a11
40376174:	c02000        	memw
40376177:	e90d      	s32i.n	a14, a13, 0
40376179:	c02000        	memw
4037617c:	e80d      	l32i.n	a14, a13, 0
4037617e:	c0ee10        	and	a14, a14, a12
40376181:	c02000        	memw
40376184:	e90d      	s32i.n	a14, a13, 0
40376186:	4b22      	addi.n	a2, a2, 4
40376188:	001240        	ssl	a2
4037618b:	0025a1        	sll	a2, a5
4037618e:	c02000        	memw
40376191:	22631f        	s32i	a2, a3, 124
40376194:	867dfe        	j	0x40375b8e
40376197:	003641        	srli	a3, a0, 6
4037619a:	00          	.byte	00
4037619b:	16520c        	beqz	a2, 0x40376264
4037619e:	3822      	l32i.n	a3, a2, 8
403761a0:	16030c        	beqz	a3, 0x40376264
403761a3:	4852      	l32i.n	a4, a2, 20
403761a5:	31bff8        	l32r	a3, 0x403744a4
403761a8:	d04411        	slli	a4, a4, 3
403761ab:	658e09        	call8	0x4037fa90
403761ae:	3a44      	add.n	a4, a4, a3
403761b0:	ad04      	mov.n	a10, a4
403761b2:	7cfb      	movi.n	a11, -1
403761b4:	259009        	call8	0x4037fab8
403761b7:	8802      	l32i.n	a8, a2, 0
403761b9:	9812      	l32i.n	a9, a2, 4
403761bb:	c02000        	memw
403761be:	42281e        	l32i	a4, a8, 120
403761c1:	0c05      	movi.n	a5, 0
403761c3:	404014        	extui	a4, a4, 0, 2
403761c6:	97d402        	bbs	a4, a9, 0x403761cc
403761c9:	462000        	j	0x4037624e
403761cc:	c02000        	memw
403761cf:	42281f        	l32i	a4, a8, 124
403761d2:	0c15      	movi.n	a5, 1
403761d4:	001940        	ssl	a9
403761d7:	0055a1        	sll	a5, a5
403761da:	405520        	or	a5, a5, a4
403761dd:	d04911        	slli	a4, a9, 3
403761e0:	9a44      	add.n	a4, a4, a9
403761e2:	c02000        	memw
403761e5:	52681f        	s32i	a5, a8, 124
403761e8:	e04411        	slli	a4, a4, 2
403761eb:	5822      	l32i.n	a5, a2, 8
403761ed:	a832      	l32i.n	a10, a2, 12
403761ef:	4a88      	add.n	a8, a8, a4
403761f1:	c02000        	memw
403761f4:	622805        	l32i	a6, a8, 20
403761f7:	418ff8        	l32r	a4, 0x40374434
403761fa:	c02000        	memw
403761fd:	722804        	l32i	a7, a8, 16
40376200:	e00500        	callx8	a5
40376203:	b812      	l32i.n	a11, a2, 4
40376205:	5d0a      	mov.n	a5, a10
40376207:	d09b11        	slli	a9, a11, 3
4037620a:	a802      	l32i.n	a10, a2, 0
4037620c:	ba89      	add.n	a8, a9, a11
4037620e:	e08811        	slli	a8, a8, 2
40376211:	8a8a      	add.n	a8, a10, a8
40376213:	c02000        	memw
40376216:	c858      	l32i.n	a12, a8, 20
40376218:	406610        	and	a6, a6, a4
4037621b:	404c10        	and	a4, a12, a4
4037621e:	c02000        	memw
40376221:	c848      	l32i.n	a12, a8, 16
40376223:	c7973f        	bne	a7, a12, 0x40376266
40376226:	47963c        	bne	a6, a4, 0x40376266
40376229:	c02000        	memw
4037622c:	4808      	l32i.n	a4, a8, 0
4037622e:	404d05        	extui	a4, a4, 29, 1
40376231:	ba99      	add.n	a9, a9, a11
40376233:	e09911        	slli	a9, a9, 2
40376236:	9a9a      	add.n	a9, a10, a9
40376238:	c02000        	memw
4037623b:	8809      	l32i.n	a8, a9, 0
4037623d:	62abff        	movi	a6, 0xfffffbff
40376240:	604411        	slli	a4, a4, 10
40376243:	608810        	and	a8, a8, a6
40376246:	404820        	or	a4, a8, a4
40376249:	c02000        	memw
4037624c:	4909      	s32i.n	a4, a9, 0
4037624e:	2852      	l32i.n	a2, a2, 20
40376250:	e58309        	call8	0x4037fa90
40376253:	d02211        	slli	a2, a2, 3
40376256:	2a33      	add.n	a3, a3, a2
40376258:	ad03      	mov.n	a10, a3
4037625a:	259a09        	call8	0x4037fbfc
4037625d:	8c35      	beqz.n	a5, 0x40376264
4037625f:	0c0a      	movi.n	a10, 0
40376261:	a53003        	call8	0x4037956c
40376264:	1df0      	retw.n
40376266:	0c14      	movi.n	a4, 1
40376268:	46f1ff        	j	0x40376231
4037626b:	003641        	srli	a3, a0, 6
4037626e:	00          	.byte	00
4037626f:	818ef8        	l32r	a8, 0x403744a8
40376272:	920800        	l8ui	a9, a8, 0
40376275:	ac49      	beqz.n	a9, 0x4037629d
40376277:	0c09      	movi.n	a9, 0
40376279:	924800        	s8i	a9, a8, 0
4037627c:	918cf8        	l32r	a9, 0x403744ac
4037627f:	a2a090        	movi	a10, 144
40376282:	d18bf8        	l32r	a13, 0x403744b0
40376285:	9aaa      	add.n	a10, a10, a9
40376287:	0c08      	movi.n	a8, 0
40376289:	0c89      	movi.n	a9, 8
4037628b:	76890e        	loop	a9, 0x4037629d
4037628e:	8aba      	add.n	a11, a10, a8
40376290:	c02000        	memw
40376293:	c20b00        	l8ui	a12, a11, 0
40376296:	dab8      	add.n	a11, a8, a13
40376298:	c24b00        	s8i	a12, a11, 0
4037629b:	1b88      	addi.n	a8, a8, 1
4037629d:	0c19      	movi.n	a9, 1
4037629f:	0c08      	movi.n	a8, 0
403762a1:	208983        	moveqz	a8, a9, a2
403762a4:	808074        	extui	a8, a8, 0, 8
403762a7:	562805        	bnez	a8, 0x403762fd
403762aa:	308983        	moveqz	a8, a9, a3
403762ad:	56c804        	bnez	a8, 0x403762fd
403762b0:	0b33      	addi.n	a3, a3, -1
403762b2:	0cf9      	movi.n	a9, 15
403762b4:	0c88      	movi.n	a8, 8
403762b6:	373902        	bltu	a9, a3, 0x403762bc
403762b9:	308141        	srli	a8, a3, 1
403762bc:	f08811        	slli	a8, a8, 1
403762bf:	317cf8        	l32r	a3, 0x403744b0
403762c2:	8ab2      	add.n	a11, a2, a8
403762c4:	0c9c      	movi.n	a12, 9
403762c6:	279b0b        	bne	a11, a2, 0x403762d5
403762c9:	0c02      	movi.n	a2, 0
403762cb:	224b00        	s8i	a2, a11, 0
403762ce:	1b28      	addi.n	a2, a8, 1
403762d0:	1df0      	retw.n
403762d2:	000000        	ill
403762d5:	920300        	l8ui	a9, a3, 0
403762d8:	90a441        	srli	a10, a9, 4
403762db:	d2ca57        	addi	a13, a10, 87
403762de:	a73c02        	bltu	a12, a10, 0x403762e4
403762e1:	d2ca30        	addi	a13, a10, 48
403762e4:	909034        	extui	a9, a9, 0, 4
403762e7:	d24200        	s8i	a13, a2, 0
403762ea:	a2c957        	addi	a10, a9, 87
403762ed:	973c02        	bltu	a12, a9, 0x403762f3
403762f0:	a2c930        	addi	a10, a9, 48
403762f3:	a24201        	s8i	a10, a2, 1
403762f6:	1b33      	addi.n	a3, a3, 1
403762f8:	2b22      	addi.n	a2, a2, 2
403762fa:	06f2ff        	j	0x403762c6
403762fd:	0c02      	movi.n	a2, 0
403762ff:	46f3ff        	j	0x403762d0
40376302:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40376305:	410060        	l32r	a4, 0x4034e308
40376308:	60          	.byte	0x60
40376309:	74          	.byte	0x74
4037630a:	2c08      	movi.n	a8, 32
4037630c:	202074        	extui	a2, a2, 0, 8
4037630f:	505074        	extui	a5, a5, 0, 8
40376312:	920120        	l8ui	a9, a1, 32
40376315:	67b80e        	bgeu	a8, a6, 0x40376327
40376318:	d167f8        	l32r	a13, 0x403744b4
4037631b:	c167f8        	l32r	a12, 0x403744b8
4037631e:	b2a248        	movi	a11, 0x248
40376321:	a166f8        	l32r	a10, 0x403744bc
40376324:	a5630c        	call8	0x40382960
40376327:	97b80e        	bgeu	a8, a9, 0x40376339
4037632a:	d165f8        	l32r	a13, 0x403744c0
4037632d:	c162f8        	l32r	a12, 0x403744b8
40376330:	b2a249        	movi	a11, 0x249
40376333:	86faff        	j	0x40376321
40376336:	000000        	ill
40376339:	8162f8        	l32r	a8, 0x403744c4
4037633c:	a163f8        	l32r	a10, 0x403744c8
4037633f:	c02000        	memw
40376342:	d828      	l32i.n	a13, a8, 8
40376344:	c02000        	memw
40376347:	c868      	l32i.n	a12, a8, 24
40376349:	c02000        	memw
4037634c:	b878      	l32i.n	a11, a8, 28
4037634e:	c02000        	memw
40376351:	a928      	s32i.n	a10, a8, 8
40376353:	c02000        	memw
40376356:	a868      	l32i.n	a10, a8, 24
40376358:	e15df8        	l32r	a14, 0x403744cc
4037635b:	e0aa20        	or	a10, a10, a14
4037635e:	c02000        	memw
40376361:	a968      	s32i.n	a10, a8, 24
40376363:	c02000        	memw
40376366:	a888      	l32i.n	a10, a8, 32
40376368:	e15af8        	l32r	a14, 0x403744d0
4037636b:	e0aa10        	and	a10, a10, a14
4037636e:	e159f8        	l32r	a14, 0x403744d4
40376371:	e0aa20        	or	a10, a10, a14
40376374:	c02000        	memw
40376377:	a988      	s32i.n	a10, a8, 32
40376379:	c02000        	memw
4037637c:	a888      	l32i.n	a10, a8, 32
4037637e:	e156f8        	l32r	a14, 0x403744d8
40376381:	e0aa10        	and	a10, a10, a14
40376384:	202a20        	or	a2, a10, a2
40376387:	c02000        	memw
4037638a:	2988      	s32i.n	a2, a8, 32
4037638c:	0c0a      	movi.n	a10, 0
4037638e:	0c1e      	movi.n	a14, 1
40376390:	30ea83        	moveqz	a14, a10, a3
40376393:	2152f8        	l32r	a2, 0x403744dc
40376396:	c02000        	memw
40376399:	a868      	l32i.n	a10, a8, 24
4037639b:	20ee01        	slli	a14, a14, 30
4037639e:	20aa10        	and	a10, a10, a2
403763a1:	e0aa20        	or	a10, a10, a14
403763a4:	c02000        	memw
403763a7:	a968      	s32i.n	a10, a8, 24
403763a9:	c02000        	memw
403763ac:	a878      	l32i.n	a10, a8, 28
403763ae:	214cf8        	l32r	a2, 0x403744e0
403763b1:	0b33      	addi.n	a3, a3, -1
403763b3:	603301        	slli	a3, a3, 26
403763b6:	20aa10        	and	a10, a10, a2
403763b9:	303a20        	or	a3, a10, a3
403763bc:	c02000        	memw
403763bf:	3978      	s32i.n	a3, a8, 28
403763c1:	c02000        	memw
403763c4:	4918      	s32i.n	a4, a8, 4
403763c6:	8c89      	beqz.n	a9, 0x403763d2
403763c8:	2147f8        	l32r	a2, 0x403744e4
403763cb:	2802      	l32i.n	a2, a2, 0
403763cd:	220219        	l8ui	a2, a2, 25
403763d0:	2a55      	add.n	a5, a5, a2
403763d2:	0c0a      	movi.n	a10, 0
403763d4:	c02000        	memw
403763d7:	3868      	l32i.n	a3, a8, 24
403763d9:	0c1e      	movi.n	a14, 1
403763db:	2d0a      	mov.n	a2, a10
403763dd:	4142f8        	l32r	a4, 0x403744e8
403763e0:	502e93        	movnez	a2, a14, a5
403763e3:	302201        	slli	a2, a2, 29
403763e6:	403310        	and	a3, a3, a4
403763e9:	203320        	or	a3, a3, a2
403763ec:	c02000        	memw
403763ef:	3968      	s32i.n	a3, a8, 24
403763f1:	c02000        	memw
403763f4:	3878      	l32i.n	a3, a8, 28
403763f6:	22afc0        	movi	a2, -64
403763f9:	0b55      	addi.n	a5, a5, -1
403763fb:	203310        	and	a3, a3, a2
403763fe:	505054        	extui	a5, a5, 0, 6
40376401:	505320        	or	a5, a3, a5
40376404:	c02000        	memw
40376407:	5978      	s32i.n	a5, a8, 28
40376409:	c02000        	memw
4037640c:	3868      	l32i.n	a3, a8, 24
4037640e:	2137f8        	l32r	a2, 0x403744ec
40376411:	60ea83        	moveqz	a14, a10, a6
40376414:	50ee01        	slli	a14, a14, 27
40376417:	203310        	and	a3, a3, a2
4037641a:	e0e320        	or	a14, a3, a14
4037641d:	c02000        	memw
40376420:	e26806        	s32i	a14, a8, 24
40376423:	a71605        	beq	a6, a10, 0x4037642c
40376426:	a2c6ff        	addi	a10, a6, -1
40376429:	a0a094        	extui	a10, a10, 0, 10
4037642c:	c02000        	memw
4037642f:	6898      	l32i.n	a6, a8, 36
40376431:	22ac00        	movi	a2, 0xfffffc00
40376434:	206610        	and	a6, a6, a2
40376437:	a0a620        	or	a10, a6, a10
4037643a:	c02000        	memw
4037643d:	a998      	s32i.n	a10, a8, 36
4037643f:	c02000        	memw
40376442:	726816        	s32i	a7, a8, 88
40376445:	c02000        	memw
40376448:	3868      	l32i.n	a3, a8, 24
4037644a:	0c05      	movi.n	a5, 0
4037644c:	0c14      	movi.n	a4, 1
4037644e:	2128f8        	l32r	a2, 0x403744f0
40376451:	904583        	moveqz	a4, a5, a9
40376454:	404401        	slli	a4, a4, 28
40376457:	203310        	and	a3, a3, a2
4037645a:	403320        	or	a3, a3, a4
4037645d:	c02000        	memw
40376460:	326806        	s32i	a3, a8, 24
40376463:	571905        	beq	a9, a5, 0x4037646c
40376466:	52c9ff        	addi	a5, a9, -1
40376469:	505094        	extui	a5, a5, 0, 10
4037646c:	c02000        	memw
4037646f:	38a8      	l32i.n	a3, a8, 40
40376471:	22ac00        	movi	a2, 0xfffffc00
40376474:	203310        	and	a3, a3, a2
40376477:	505320        	or	a5, a3, a5
4037647a:	c02000        	memw
4037647d:	59a8      	s32i.n	a5, a8, 40
4037647f:	c02000        	memw
40376482:	222800        	l32i	a2, a8, 0
40376485:	311bf8        	l32r	a3, 0x403744f4
40376488:	302220        	or	a2, a2, a3
4037648b:	c02000        	memw
4037648e:	2908      	s32i.n	a2, a8, 0
40376490:	c02000        	memw
40376493:	2808      	l32i.n	a2, a8, 0
40376495:	27f2f7        	bbsi	a2, 18, 0x40376490
40376498:	c02000        	memw
4037649b:	d928      	s32i.n	a13, a8, 8
4037649d:	c02000        	memw
403764a0:	c968      	s32i.n	a12, a8, 24
403764a2:	c02000        	memw
403764a5:	b978      	s32i.n	a11, a8, 28
403764a7:	c02000        	memw
403764aa:	222816        	l32i	a2, a8, 88
403764ad:	26c90d        	beqi	a9, 32, 0x403764be
403764b0:	7cf3      	movi.n	a3, -1
403764b2:	001940        	ssl	a9
403764b5:	0083a1        	sll	a8, a3
403764b8:	808330        	xor	a8, a3, a8
403764bb:	802210        	and	a2, a2, a8
403764be:	1df0      	retw.n
403764c0:	366100        	entry	a1, 48
403764c3:	d2a000        	movi	a13, 0
403764c6:	505074        	extui	a5, a5, 0, 8
403764c9:	526100        	s32i	a5, a1, 0
403764cc:	30f320        	or	a15, a3, a3
403764cf:	40e074        	extui	a14, a4, 0, 8
403764d2:	cd0d      	mov.n	a12, a13
403764d4:	bd0d      	mov.n	a11, a13
403764d6:	20a074        	extui	a10, a2, 0, 8
403764d9:	a5e2ff        	call8	0x40376304
403764dc:	2d0a      	mov.n	a2, a10
403764de:	1df0      	retw.n
403764e0:	366100        	entry	a1, 48
403764e3:	20c220        	or	a12, a2, a2
403764e6:	b6530e        	bltui	a3, 5, 0x403764f8
403764e9:	d103f8        	l32r	a13, 0x403744f8
403764ec:	c104f8        	l32r	a12, 0x403744fc
403764ef:	a1f3f7        	l32r	a10, 0x403744bc
403764f2:	b2a291        	movi	a11, 0x291
403764f5:	a5460c        	call8	0x40382960
403764f8:	d03311        	slli	a3, a3, 3
403764fb:	f2a000        	movi	a15, 0
403764fe:	303074        	extui	a3, a3, 0, 8
40376501:	3901      	s32i.n	a3, a1, 0
40376503:	ed0f      	mov.n	a14, a15
40376505:	0c8d      	movi.n	a13, 8
40376507:	1c8b      	movi.n	a11, 24
40376509:	5caa      	movi.n	a10, 90
4037650b:	a5dfff        	call8	0x40376304
4037650e:	2d0a      	mov.n	a2, a10
40376510:	1df0      	retw.n
40376512:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40376515:	41000c        	l32r	a4, 0x40339518
40376518:	0c1c      	movi.n	a12, 1
4037651a:	8d          	.byte	0x8d
4037651b:	c0bc20        	or	a11, a12, a12
4037651e:	a2a09f        	movi	a10, 159
40376521:	e5f9ff        	call8	0x403764c0
40376524:	81f7f7        	l32r	a8, 0x40374500
40376527:	002a11        	slli	a2, a10, 16
4037652a:	802210        	and	a2, a2, a8
4037652d:	a08075        	extui	a8, a10, 16, 8
40376530:	802220        	or	a2, a2, a8
40376533:	81f4f7        	l32r	a8, 0x40374504
40376536:	80aa10        	and	a10, a10, a8
40376539:	a02220        	or	a2, a2, a10
4037653c:	1df0      	retw.n
4037653e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40376541:	410065        	l32r	a4, 0x4034f944
40376544:	f70081        	bnone	a0, a15, 0x403764c9
40376547:	f0f7e0        	subx4	a15, a7, a15
4037654a:	221180        	l16ui	a2, a1, 0x100
4037654d:	22          	.byte	0x22
4037654e:	80c020        	or	a12, a0, a8
40376551:	002222        	orb	b2, b2, b0
40376554:	00a504        	extui	a10, a0, 5, 1
40376557:	011df0        	l32r	a0, 0x403725cc
4037655a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037655d:	410081        	l32r	a4, 0x40356960
40376560:	ed          	.byte	0xed
40376561:	f7e008        	bbsi	a0, 15, 0x4037656d
40376564:	00          	.byte	00
40376565:	41e9f7        	l32r	a4, 0x4037450c
40376568:	a0a241        	srli	a10, a10, 2
4037656b:	aaa4      	add.n	a10, a4, a10
4037656d:	220a00        	l8ui	a2, a10, 0
40376570:	fcd2      	bnez.n	a2, 0x403765b1
40376572:	31e5f7        	l32r	a3, 0x40374508
40376575:	e05211        	slli	a5, a2, 2
40376578:	3a55      	add.n	a5, a5, a3
4037657a:	c02000        	memw
4037657d:	6805      	l32i.n	a6, a5, 0
4037657f:	31e4f7        	l32r	a3, 0x40374510
40376582:	303610        	and	a3, a6, a3
40376585:	ecb3      	bnez.n	a3, 0x403765b4
40376587:	81e3f7        	l32r	a8, 0x40374514
4037658a:	e00800        	callx8	a8
4037658d:	a0a241        	srli	a10, a10, 2
40376590:	271a0e        	beq	a10, a2, 0x403765a2
40376593:	0c18      	movi.n	a8, 1
40376595:	203883        	moveqz	a3, a8, a2
40376598:	303074        	extui	a3, a3, 0, 8
4037659b:	cc33      	bnez.n	a3, 0x403765a2
4037659d:	603893        	movnez	a3, a8, a6
403765a0:	9c03      	beqz.n	a3, 0x403765b4
403765a2:	2a34      	add.n	a3, a4, a2
403765a4:	0c15      	movi.n	a5, 1
403765a6:	524300        	s8i	a5, a3, 0
403765a9:	1b22      	addi.n	a2, a2, 1
403765ab:	32a200        	movi	a3, 0x200
403765ae:	3792c0        	bne	a2, a3, 0x40376572
403765b1:	1df0      	retw.n
403765b3:	0031d7        	ee.stf.64.xp	f3, f13, a0, a1
403765b6:	f7c020        	bnall	a0, a15, 0x403765da
403765b9:	003905        	extui	a3, a0, 25, 1
403765bc:	46faff        	j	0x403765a9
403765bf:	003641        	srli	a3, a0, 6
403765c2:	00fc72        	salt	a15, a12, a0
403765c5:	81d3f7        	l32r	a8, 0x40374514
403765c8:	e00800        	callx8	a8
403765cb:	a0a241        	srli	a10, a10, 2
403765ce:	a903      	s32i.n	a10, a3, 0
403765d0:	81d3f7        	l32r	a8, 0x4037451c
403765d3:	e00800        	callx8	a8
403765d6:	2d0a      	mov.n	a2, a10
403765d8:	81cff7        	l32r	a8, 0x40374514
403765db:	e00800        	callx8	a8
403765de:	a0a241        	srli	a10, a10, 2
403765e1:	208241        	srli	a8, a2, 2
403765e4:	a088c0        	sub	a8, a8, a10
403765e7:	826400        	s32i	a8, a4, 0
403765ea:	81caf7        	l32r	a8, 0x40374514
403765ed:	e00800        	callx8	a8
403765f0:	a0a241        	srli	a10, a10, 2
403765f3:	a2da3c        	addmi	a10, a10, 0x3c00
403765f6:	00aa11        	slli	a10, a10, 16
403765f9:	a905      	s32i.n	a10, a5, 0
403765fb:	1df0      	retw.n
403765fd:	000c02        	andb	b0, b12, b0
40376600:	2903      	s32i.n	a2, a3, 0
40376602:	81c4f7        	l32r	a8, 0x40374514
40376605:	e00800        	callx8	a8
40376608:	2803      	l32i.n	a2, a3, 0
4037660a:	a0a241        	srli	a10, a10, 2
4037660d:	20aac0        	sub	a10, a10, a2
40376610:	21c2f7        	l32r	a2, 0x40374518
40376613:	a904      	s32i.n	a10, a4, 0
40376615:	2905      	s32i.n	a2, a5, 0
40376617:	06f8ff        	j	0x403765fb
4037661a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037661d:	41000c        	l32r	a4, 0x40339620
40376620:	04          	.byte	0x4
40376621:	4903      	s32i.n	a4, a3, 0
40376623:	81bcf7        	l32r	a8, 0x40374514
40376626:	e00800        	callx8	a8
40376629:	a05241        	srli	a5, a10, 2
4037662c:	81bcf7        	l32r	a8, 0x4037451c
4037662f:	e00800        	callx8	a8
40376632:	a06241        	srli	a6, a10, 2
40376635:	81b7f7        	l32r	a8, 0x40374514
40376638:	e00800        	callx8	a8
4037663b:	91b3f7        	l32r	a9, 0x40374508
4037663e:	4d05      	mov.n	a4, a5
40376640:	67241c        	blt	a4, a6, 0x40376660
40376643:	51b1f7        	l32r	a5, 0x40374508
40376646:	a0a241        	srli	a10, a10, 2
40376649:	0c04      	movi.n	a4, 0
4037664b:	a7a423        	bge	a4, a10, 0x40376672
4037664e:	e08411        	slli	a8, a4, 2
40376651:	5a88      	add.n	a8, a8, a5
40376653:	c02000        	memw
40376656:	8808      	l32i.n	a8, a8, 0
40376658:	871238        	beq	a2, a8, 0x40376694
4037665b:	1b44      	addi.n	a4, a4, 1
4037665d:	86faff        	j	0x4037664b
40376660:	e08411        	slli	a8, a4, 2
40376663:	9a88      	add.n	a8, a8, a9
40376665:	c02000        	memw
40376668:	8808      	l32i.n	a8, a8, 0
4037666a:	87120a        	beq	a2, a8, 0x40376678
4037666d:	1b44      	addi.n	a4, a4, 1
4037666f:	46f3ff        	j	0x40376640
40376672:	0c02      	movi.n	a2, 0
40376674:	1df0      	retw.n
40376676:	000081        	src	a0, a0, a0
40376679:	a7f7e0        	bbsi	a7, 26, 0x4037665d
4037667c:	0800      	l32i.n	a0, a0, 0
4037667e:	a0a241        	srli	a10, a10, 2
40376681:	a2da3c        	addmi	a10, a10, 0x3c00
40376684:	5044c0        	sub	a4, a4, a5
40376687:	aa44      	add.n	a4, a4, a10
40376689:	004411        	slli	a4, a4, 16
4037668c:	4903      	s32i.n	a4, a3, 0
4037668e:	0c12      	movi.n	a2, 1
40376690:	06f8ff        	j	0x40376674
40376693:	0042d4        	extui	a4, a0, 2, 14
40376696:	42          	.byte	0x42
40376697:	86fbff        	j	0x40376689
4037669a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037669d:	81000c        	l32r	a8, 0x403396a0
403766a0:	0999      	s32i.n	a0, a9, 36
403766a2:	055931        	call0	0x403a7c34
403766a5:	9906      	s32i.n	a9, a6, 0
403766a7:	971332        	beq	a3, a9, 0x403766dd
403766aa:	a19df7        	l32r	a10, 0x40374520
403766ad:	b19df7        	l32r	a11, 0x40374524
403766b0:	aaa2      	add.n	a10, a2, a10
403766b2:	7d02      	mov.n	a7, a2
403766b4:	82a001        	movi	a8, 1
403766b7:	a7bb02        	bgeu	a11, a10, 0x403766bd
403766ba:	908920        	or	a8, a9, a9
403766bd:	919af7        	l32r	a9, 0x40374528
403766c0:	b19bf7        	l32r	a11, 0x4037452c
403766c3:	9a92      	add.n	a9, a2, a9
403766c5:	0c1a      	movi.n	a10, 1
403766c7:	97bb01        	bgeu	a11, a9, 0x403766cc
403766ca:	0c0a      	movi.n	a10, 0
403766cc:	a08820        	or	a8, a8, a10
403766cf:	07e811        	bbsi	a8, 0, 0x403766e4
403766d2:	8197f7        	l32r	a8, 0x40374530
403766d5:	9195f7        	l32r	a9, 0x4037452c
403766d8:	8a82      	add.n	a8, a2, a8
403766da:	87b906        	bgeu	a9, a8, 0x403766e4
403766dd:	22a102        	movi	a2, 0x102
403766e0:	863000        	j	0x403767a6
403766e3:	008180        	add	a8, a1, a0
403766e6:	f70c0a        	bnone	a12, a15, 0x403766f4
403766e9:	b808      	l32i.n	a11, a8, 0
403766eb:	9d03      	mov.n	a9, a3
403766ed:	768913        	loop	a9, 0x40376704
403766f0:	e08a11        	slli	a8, a10, 2
403766f3:	8a82      	add.n	a8, a2, a8
403766f5:	8808      	l32i.n	a8, a8, 0
403766f7:	9628fe        	bltz	a8, 0x403766dd
403766fa:	c81b      	l32i.n	a12, a11, 4
403766fc:	008811        	slli	a8, a8, 16
403766ff:	c7b8da        	bgeu	a8, a12, 0x403766dd
40376702:	1baa      	addi.n	a10, a10, 1
40376704:	b18cf7        	l32r	a11, 0x40374534
40376707:	1c4a      	movi.n	a10, 20
40376709:	65d501        	call8	0x40378460
4037670c:	5d0a      	mov.n	a5, a10
4037670e:	9caa      	beqz.n	a10, 0x4037672c
40376710:	65da00        	call8	0x403774b8
40376713:	a5e4ff        	call8	0x4037655c
40376716:	d2c11c        	addi	a13, a1, 28
40376719:	c2c118        	addi	a12, a1, 24
4037671c:	b2c114        	addi	a11, a1, 20
4037671f:	ad04      	mov.n	a10, a4
40376721:	e5e9ff        	call8	0x403765c0
40376724:	9861      	l32i.n	a9, a1, 24
40376726:	37b908        	bgeu	a9, a3, 0x40376732
40376729:	65e700        	call8	0x403775a0
4037672c:	22a101        	movi	a2, 0x101
4037672f:	c61c00        	j	0x403767a6
40376732:	4851      	l32i.n	a4, a1, 20
40376734:	d176f7        	l32r	a13, 0x4037450c
40376737:	4a99      	add.n	a9, a9, a4
40376739:	92c901        	addi	a9, a9, 1
4037673c:	e0a411        	slli	a10, a4, 2
4037673f:	3099c0        	sub	a9, a9, a3
40376742:	a022c0        	sub	a2, a2, a10
40376745:	30c480        	add	a12, a4, a3
40376748:	97a402        	bge	a4, a9, 0x4037674e
4037674b:	862300        	j	0x403767dd
4037674e:	979402        	bne	a4, a9, 0x40376754
40376751:	063c00        	j	0x40376845
40376754:	216ef7        	l32r	a2, 0x4037450c
40376757:	9d04      	mov.n	a9, a4
40376759:	2a24      	add.n	a2, a4, a2
4037675b:	4ac3      	add.n	a12, a3, a4
4037675d:	971c02        	beq	a12, a9, 0x40376763
40376760:	062000        	j	0x403767e4
40376763:	2179f7        	l32r	a2, 0x40374548
40376766:	7802      	l32i.n	a7, a2, 0
40376768:	7935      	s32i.n	a7, a5, 12
4037676a:	8c47      	beqz.n	a7, 0x40376772
4037676c:	92c50c        	addi	a9, a5, 12
4037676f:	926704        	s32i	a9, a7, 16
40376772:	526200        	s32i	a5, a2, 0
40376775:	226504        	s32i	a2, a5, 16
40376778:	2175f7        	l32r	a2, 0x4037454c
4037677b:	3925      	s32i.n	a3, a5, 8
4037677d:	3802      	l32i.n	a3, a2, 0
4037677f:	4915      	s32i.n	a4, a5, 4
40376781:	1b33      	addi.n	a3, a3, 1
40376783:	3902      	s32i.n	a3, a2, 0
40376785:	2851      	l32i.n	a2, a1, 20
40376787:	3905      	s32i.n	a3, a5, 0
40376789:	2044c0        	sub	a4, a4, a2
4037678c:	2871      	l32i.n	a2, a1, 28
4037678e:	004411        	slli	a4, a4, 16
40376791:	2a44      	add.n	a4, a4, a2
40376793:	22a000        	movi	a2, 0
40376796:	a5e000        	call8	0x403775a0
40376799:	cc34      	bnez.n	a4, 0x403767a0
4037679b:	ad05      	mov.n	a10, a5
4037679d:	252f0c        	call8	0x40382a90
403767a0:	5831      	l32i.n	a5, a1, 12
403767a2:	4905      	s32i.n	a4, a5, 0
403767a4:	3906      	s32i.n	a3, a6, 0
403767a6:	1df0      	retw.n
403767a8:	008157        	ee.stf.64.xp	f8, f5, a0, a1
403767ab:	f7e0ba        	bbsi	a0, 15, 0x40376769
403767ae:	11dafa        	l32r	a1, 0x40375318 (0x3fc98277)
403767b1:	8aeb      	add.n	a14, a11, a8
403767b3:	f20f00        	l8ui	a15, a15, 0
403767b6:	c02000        	memw
403767b9:	e80e      	l32i.n	a14, a14, 0
403767bb:	8c6f      	beqz.n	a15, 0x403767c5
403767bd:	b0b280        	add	a11, a2, a11
403767c0:	b80b      	l32i.n	a11, a11, 0
403767c2:	e79b04        	bne	a11, a14, 0x403767ca
403767c5:	1baa      	addi.n	a10, a10, 1
403767c7:	c73ade        	bltu	a10, a12, 0x403767a9
403767ca:	40aac0        	sub	a10, a10, a4
403767cd:	22c2fc        	addi	a2, a2, -4
403767d0:	1bcc      	addi.n	a12, a12, 1
403767d2:	379a02        	bne	a10, a3, 0x403767d8
403767d5:	c6deff        	j	0x40376754
403767d8:	1b44      	addi.n	a4, a4, 1
403767da:	86daff        	j	0x40376748
403767dd:	ad04      	mov.n	a10, a4
403767df:	06f9ff        	j	0x403767c7
403767e2:	0000b1        	sra	a0, a0
403767e5:	49f7      	s32i.n	a4, a7, 60
403767e7:	e0a911        	slli	a10, a9, 2
403767ea:	b0aa80        	add	a10, a10, a11
403767ed:	e20200        	l8ui	a14, a2, 0
403767f0:	c02000        	memw
403767f3:	d22a00        	l32i	a13, a10, 0
403767f6:	b22700        	l32i	a11, a7, 0
403767f9:	9c0e      	beqz.n	a14, 0x4037680d
403767fb:	b71d35        	beq	a13, a11, 0x40376834
403767fe:	d14ef7        	l32r	a13, 0x40374538
40376801:	c14ef7        	l32r	a12, 0x4037453c
40376804:	a14ff7        	l32r	a10, 0x40374540
40376807:	b2a0ee        	movi	a11, 238
4037680a:	65150c        	call8	0x40382960
4037680d:	b71d23        	beq	a13, a11, 0x40376834
40376810:	c02000        	memw
40376813:	b90a      	s32i.n	a11, a10, 0
40376815:	a851      	l32i.n	a10, a1, 20
40376817:	d871      	l32i.n	a13, a1, 28
40376819:	a0a9c0        	sub	a10, a9, a10
4037681c:	00aa11        	slli	a10, a10, 16
4037681f:	b149f7        	l32r	a11, 0x40374544
40376822:	daaa      	add.n	a10, a10, a13
40376824:	926102        	s32i	a9, a1, 8
40376827:	c26101        	s32i	a12, a1, 4
4037682a:	8149f7        	l32r	a8, 0x40374550
4037682d:	e00800        	callx8	a8
40376830:	c811      	l32i.n	a12, a1, 4
40376832:	9821      	l32i.n	a9, a1, 8
40376834:	a20200        	l8ui	a10, a2, 0
40376837:	1b99      	addi.n	a9, a9, 1
40376839:	1baa      	addi.n	a10, a10, 1
4037683b:	a24200        	s8i	a10, a2, 0
4037683e:	4b77      	addi.n	a7, a7, 4
40376840:	1b22      	addi.n	a2, a2, 1
40376842:	c6c5ff        	j	0x4037675d
40376845:	0c03      	movi.n	a3, 0
40376847:	4d03      	mov.n	a4, a3
40376849:	22a101        	movi	a2, 0x101
4037684c:	86d1ff        	j	0x40376796
4037684f:	00          	.byte	00
40376850:	366100        	entry	a1, 48
40376853:	2070f4        	extui	a7, a2, 0, 16
40376856:	dd05      	mov.n	a13, a5
40376858:	cd04      	mov.n	a12, a4
4037685a:	52a102        	movi	a5, 0x102
4037685d:	ecf7      	bnez.n	a7, 0x40376890
4037685f:	8121f7        	l32r	a8, 0x403744e4
40376862:	3a42      	add.n	a4, a2, a3
40376864:	8808      	l32i.n	a8, a8, 0
40376866:	8818      	l32i.n	a8, a8, 4
40376868:	473824        	bltu	a8, a4, 0x40376890
4037686b:	413af7        	l32r	a4, 0x40374554
4037686e:	b1f9f6        	l32r	a11, 0x40374454
40376871:	4a33      	add.n	a3, a3, a4
40376873:	3030f5        	extui	a3, a3, 16, 16
40376876:	e0a311        	slli	a10, a3, 2
40376879:	c931      	s32i.n	a12, a1, 12
4037687b:	d921      	s32i.n	a13, a1, 8
4037687d:	25be01        	call8	0x40378460
40376880:	2020f5        	extui	a2, a2, 16, 16
40376883:	4d0a      	mov.n	a4, a10
40376885:	52a101        	movi	a5, 0x101
40376888:	c831      	l32i.n	a12, a1, 12
4037688a:	d821      	l32i.n	a13, a1, 8
4037688c:	8d07      	mov.n	a8, a7
4037688e:	ccfa      	bnez.n	a10, 0x403768a1
40376890:	2d05      	mov.n	a2, a5
40376892:	1df0      	retw.n
40376894:	00e058        	ssxp	f14, a0, a0
40376897:	118a72        	l32r	a1, 0x403532c0
4037689a:	5a54      	add.n	a5, a4, a5
4037689c:	7905      	s32i.n	a7, a5, 0
4037689e:	82c801        	addi	a8, a8, 1
403768a1:	3728f0        	blt	a8, a3, 0x40376895
403768a4:	ed06      	mov.n	a14, a6
403768a6:	bd03      	mov.n	a11, a3
403768a8:	ad04      	mov.n	a10, a4
403768aa:	25dfff        	call8	0x4037669c
403768ad:	5d0a      	mov.n	a5, a10
403768af:	ad04      	mov.n	a10, a4
403768b1:	e51d0c        	call8	0x40382a90
403768b4:	06f6ff        	j	0x40376890
403768b7:	003641        	srli	a3, a0, 6
403768ba:	00          	.byte	00
403768bb:	e5bf00        	call8	0x403774b8
403768be:	3122f7        	l32r	a3, 0x40374548
403768c1:	322300        	l32i	a3, a3, 0
403768c4:	165302        	beqz	a3, 0x403768ed
403768c7:	822300        	l32i	a8, a3, 0
403768ca:	279867        	bne	a8, a2, 0x40376935
403768cd:	9813      	l32i.n	a9, a3, 4
403768cf:	b10ff7        	l32r	a11, 0x4037450c
403768d2:	c10df7        	l32r	a12, 0x40374508
403768d5:	d10ef7        	l32r	a13, 0x40374510
403768d8:	8813      	l32i.n	a8, a3, 4
403768da:	2823      	l32i.n	a2, a3, 8
403768dc:	2a88      	add.n	a8, a8, a2
403768de:	872920        	blt	a9, a8, 0x40376902
403768e1:	8833      	l32i.n	a8, a3, 12
403768e3:	8c28      	beqz.n	a8, 0x403768e9
403768e5:	2843      	l32i.n	a2, a3, 16
403768e7:	2948      	s32i.n	a2, a8, 16
403768e9:	2843      	l32i.n	a2, a3, 16
403768eb:	8902      	s32i.n	a8, a2, 0
403768ed:	25cb00        	call8	0x403775a0
403768f0:	566304        	bnez	a3, 0x4037693a
403768f3:	d11bf7        	l32r	a13, 0x40374560
403768f6:	c119f7        	l32r	a12, 0x4037455c
403768f9:	b2a140        	movi	a11, 0x140
403768fc:	060500        	j	0x40376914
403768ff:	000000        	ill
40376902:	b0a980        	add	a10, a9, a11
40376905:	820a00        	l8ui	a8, a10, 0
40376908:	56e800        	bnez	a8, 0x4037691a
4037690b:	d113f7        	l32r	a13, 0x40374558
4037690e:	c113f7        	l32r	a12, 0x4037455c
40376911:	b2a132        	movi	a11, 0x132
40376914:	a10bf7        	l32r	a10, 0x40374540
40376917:	a5040c        	call8	0x40382960
4037691a:	82c8ff        	addi	a8, a8, -1
4037691d:	808074        	extui	a8, a8, 0, 8
40376920:	824a00        	s8i	a8, a10, 0
40376923:	569800        	bnez	a8, 0x40376930
40376926:	e08911        	slli	a8, a9, 2
40376929:	ca88      	add.n	a8, a8, a12
4037692b:	c02000        	memw
4037692e:	d908      	s32i.n	a13, a8, 0
40376930:	1b99      	addi.n	a9, a9, 1
40376932:	86e8ff        	j	0x403768d8
40376935:	3833      	l32i.n	a3, a3, 12
40376937:	46e2ff        	j	0x403768c4
4037693a:	ad03      	mov.n	a10, a3
4037693c:	25150c        	call8	0x40382a90
4037693f:	1df0      	retw.n
40376941:	000000        	ill
40376944:	366100        	entry	a1, 48
40376947:	25b700        	call8	0x403774b8
4037694a:	25c1ff        	call8	0x4037655c
4037694d:	cbd1      	addi.n	a13, a1, 12
4037694f:	8bc1      	addi.n	a12, a1, 8
40376951:	4bb1      	addi.n	a11, a1, 4
40376953:	20a220        	or	a10, a2, a2
40376956:	a5c6ff        	call8	0x403765c0
40376959:	8811      	l32i.n	a8, a1, 4
4037695b:	9821      	l32i.n	a9, a1, 8
4037695d:	b1ebf6        	l32r	a11, 0x4037450c
40376960:	c1eaf6        	l32r	a12, 0x40374508
40376963:	d1ebf6        	l32r	a13, 0x40374510
40376966:	9a98      	add.n	a9, a8, a9
40376968:	0c02      	movi.n	a2, 0
4037696a:	972804        	blt	a8, a9, 0x40376972
4037696d:	25c300        	call8	0x403775a0
40376970:	1df0      	retw.n
40376972:	baa8      	add.n	a10, a8, a11
40376974:	a20a00        	l8ui	a10, a10, 0
40376977:	ccda      	bnez.n	a10, 0x40376988
40376979:	e0a811        	slli	a10, a8, 2
4037697c:	caaa      	add.n	a10, a10, a12
4037697e:	c02000        	memw
40376981:	a80a      	l32i.n	a10, a10, 0
40376983:	d79a01        	bne	a10, a13, 0x40376988
40376986:	1b22      	addi.n	a2, a2, 1
40376988:	1b88      	addi.n	a8, a8, 1
4037698a:	06f7ff        	j	0x4037696a
4037698d:	000000        	ill
40376990:	366100        	entry	a1, 48
40376993:	81f0f6        	l32r	a8, 0x40374554
40376996:	51d0f6        	l32r	a5, 0x403744d8
40376999:	8a33      	add.n	a3, a3, a8
4037699b:	504210        	and	a4, a2, a5
4037699e:	2a33      	add.n	a3, a3, a2
403769a0:	4033c0        	sub	a3, a3, a4
403769a3:	503310        	and	a3, a3, a5
403769a6:	0c02      	movi.n	a2, 0
403769a8:	3a34      	add.n	a3, a4, a3
403769aa:	37b40c        	bgeu	a4, a3, 0x403769ba
403769ad:	81edf6        	l32r	a8, 0x40374564
403769b0:	40a0f5        	extui	a10, a4, 16, 16
403769b3:	0c05      	movi.n	a5, 0
403769b5:	47b803        	bgeu	a8, a4, 0x403769bc
403769b8:	2d05      	mov.n	a2, a5
403769ba:	1df0      	retw.n
403769bc:	b2c10c        	addi	a11, a1, 12
403769bf:	526103        	s32i	a5, a1, 12
403769c2:	a5c5ff        	call8	0x4037661c
403769c5:	a05a20        	or	a5, a10, a10
403769c8:	8cda      	beqz.n	a10, 0x403769d9
403769ca:	a831      	l32i.n	a10, a1, 12
403769cc:	8c9a      	beqz.n	a10, 0x403769d9
403769ce:	b1ddf6        	l32r	a11, 0x40374544
403769d1:	2d05      	mov.n	a2, a5
403769d3:	81dff6        	l32r	a8, 0x40374550
403769d6:	e00800        	callx8	a8
403769d9:	51daf6        	l32r	a5, 0x40374544
403769dc:	5a44      	add.n	a4, a4, a5
403769de:	06f2ff        	j	0x403769aa
403769e1:	000000        	ill
403769e4:	364100        	entry	a1, 32
403769e7:	101120        	or	a1, a1, a1
403769ea:	653f08        	call8	0x4037ede0
403769ed:	662a05        	bnei	a10, 2, 0x403769f6
403769f0:	101120        	or	a1, a1, a1
403769f3:	655108        	call8	0x4037ef08
403769f6:	1df0      	retw.n
403769f8:	364100        	entry	a1, 32
403769fb:	25800d        	call8	0x403841fc
403769fe:	2d0a      	mov.n	a2, a10
40376a00:	1df0      	retw.n
40376a02:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40376a05:	410081        	l32r	a4, 0x40356e08
40376a08:	d8f6      	l32i.n	a13, a6, 60
40376a0a:	2908      	s32i.n	a2, a8, 0
40376a0c:	1df0      	retw.n
40376a0e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40376a11:	610020        	l32r	a6, 0x4033ea14
40376a14:	b22040        	l32i	a11, a0, 0x100
40376a17:	52          	.byte	0x52
40376a18:	8021b2        	mulsh	a2, a1, a8
40376a1b:	f62802        	bgeui	a8, 2, 0x40376a21
40376a1e:	8812      	l32i.n	a8, a2, 4
40376a20:	22a104        	movi	a2, 0x104
40376a23:	57382f        	bltu	a8, a5, 0x40376a56
40376a26:	0c02      	movi.n	a2, 0
40376a28:	27142a        	beq	a4, a2, 0x40376a56
40376a2b:	a1abf6        	l32r	a10, 0x403744d8
40376a2e:	cd02      	mov.n	a12, a2
40376a30:	a0ab10        	and	a10, a11, a10
40376a33:	a05bc0        	sub	a5, a11, a10
40376a36:	cbe1      	addi.n	a14, a1, 12
40376a38:	8bd1      	addi.n	a13, a1, 8
40376a3a:	4ab5      	add.n	a11, a5, a4
40376a3c:	25e1ff        	call8	0x40376850
40376a3f:	2d0a      	mov.n	a2, a10
40376a41:	dc1a      	bnez.n	a10, 0x40376a56
40376a43:	b821      	l32i.n	a11, a1, 8
40376a45:	cd04      	mov.n	a12, a4
40376a47:	5abb      	add.n	a11, a11, a5
40376a49:	ad03      	mov.n	a10, a3
40376a4b:	8193f6        	l32r	a8, 0x40374498
40376a4e:	e00800        	callx8	a8
40376a51:	a831      	l32i.n	a10, a1, 12
40376a53:	65e6ff        	call8	0x403768b8
40376a56:	1df0      	retw.n
40376a58:	364100        	entry	a1, 32
40376a5b:	404074        	extui	a4, a4, 0, 8
40376a5e:	71c3f6        	l32r	a7, 0x4037456c
40376a61:	dc04      	bnez.n	a4, 0x40376a75
40376a63:	8807      	l32i.n	a8, a7, 0
40376a65:	ad02      	mov.n	a10, a2
40376a67:	8808      	l32i.n	a8, a8, 0
40376a69:	e00800        	callx8	a8
40376a6c:	8c5a      	beqz.n	a10, 0x40376a75
40376a6e:	30a393        	movnez	a10, a3, a3
40376a71:	2d0a      	mov.n	a2, a10
40376a73:	1df0      	retw.n
40376a75:	a802      	l32i.n	a10, a2, 0
40376a77:	880a      	l32i.n	a8, a10, 0
40376a79:	822811        	l32i	a8, a8, 68
40376a7c:	8c88      	beqz.n	a8, 0x40376a88
40376a7e:	cd06      	mov.n	a12, a6
40376a80:	50b520        	or	a11, a5, a5
40376a83:	e00800        	callx8	a8
40376a86:	8c03      	beqz.n	a3, 0x40376a8a
40376a88:	ad03      	mov.n	a10, a3
40376a8a:	3807      	l32i.n	a3, a7, 0
40376a8c:	bd0a      	mov.n	a11, a10
40376a8e:	3813      	l32i.n	a3, a3, 4
40376a90:	ad02      	mov.n	a10, a2
40376a92:	e00300        	callx8	a3
40376a95:	06f6ff        	j	0x40376a71
40376a98:	364100        	entry	a1, 32
40376a9b:	82a105        	movi	a8, 0x105
40376a9e:	871262        	beq	a2, a8, 0x40376b04
40376aa1:	272837        	blt	a8, a2, 0x40376adc
40376aa4:	82a102        	movi	a8, 0x102
40376aa7:	272828        	blt	a8, a2, 0x40376ad3
40376aaa:	82a101        	movi	a8, 0x101
40376aad:	87a228        	bge	a2, a8, 0x40376ad9
40376ab0:	165202        	beqz	a2, 0x40376ad9
40376ab3:	8174f6        	l32r	a8, 0x40374484
40376ab6:	822800        	l32i	a8, a8, 0
40376ab9:	163801        	beqz	a8, 0x40376ad0
40376abc:	a5dc0b        	call8	0x40382888
40376abf:	a0ba20        	or	a11, a10, a10
40376ac2:	c1aff6        	l32r	a12, 0x40374580
40376ac5:	a1aff6        	l32r	a10, 0x40374584
40376ac8:	dd02      	mov.n	a13, a2
40376aca:	8174f6        	l32r	a8, 0x4037449c
40376acd:	e00800        	callx8	a8
40376ad0:	a5df0b        	call8	0x403828cc
40376ad3:	82a104        	movi	a8, 0x104
40376ad6:	8792d9        	bne	a2, a8, 0x40376ab3
40376ad9:	1df0      	retw.n
40376adb:	0081a5        	extui	a8, a0, 17, 11
40376ade:	f62728        	bgeui	a7, 2, 0x40376b0a
40376ae1:	1981      	s32i.n	a1, a1, 32
40376ae3:	a4f687        	ee.vmulas.s16.qacc.ldbc.incp	q3, a10, q6, q6
40376ae6:	a21b82        	l16ui	a10, a11, 0x104
40376ae9:	a10887        	l32r	a10, 0x4035870c
40376aec:	12ea81        	s32c1i	a1, a10, 0x204
40376aef:	a2f687        	s32ri	a10, a6, 0x21c
40376af2:	92be22        	l32ai	a9, a14, 136
40376af5:	a10386        	l32r	a10, 0x40358304
40376af8:	f7ff00        	bbsi	a15, 31, 0x40376afc
40376afb:	0081a0        	addx4	a8, a1, a0
40376afe:	f686fb        	bgeui	a6, 8, 0x40376afd
40376b01:	ff000022 	ee.vmulas.s8.accx.ld.ip.qup	q4, a15, 0, q4, q0, q0, q0
40376b05:	a10686        	l32r	a10, 0x40358320
40376b08:	f3          	.byte	0xf3
40376b09:	ff000036 	ee.vmulas.s8.qacc.ld.ip.qup	q4, a15, 0x100, q4, q0, q0, q0
40376b0d:	41003d        	l32r	a4, 0x40345f10
40376b10:	026222        	s32i	a0, a2, 136
40376b13:	06219d        	j	0x4035df9b
40376b16:	f65195        	bgeui	a1, 5, 0x40376aaf
40376b19:	f64802        	bgeui	a8, 4, 0x40376b1f
40376b1c:	2804      	l32i.n	a2, a4, 0
40376b1e:	ad03      	mov.n	a10, a3
40376b20:	819bf6        	l32r	a8, 0x4037458c
40376b23:	e00800        	callx8	a8
40376b26:	bce2      	beqz.n	a2, 0x40376b68
40376b28:	8c6a      	beqz.n	a10, 0x40376b32
40376b2a:	0c02      	movi.n	a2, 0
40376b2c:	060d00        	j	0x40376b64
40376b2f:	000000        	ill
40376b32:	2913      	s32i.n	a2, a3, 4
40376b34:	2805      	l32i.n	a2, a5, 0
40376b36:	ad03      	mov.n	a10, a3
40376b38:	222200        	l32i	a2, a2, 0
40376b3b:	e00200        	callx8	a2
40376b3e:	2d0a      	mov.n	a2, a10
40376b40:	ec0a      	bnez.n	a10, 0x40376b64
40376b42:	8813      	l32i.n	a8, a3, 4
40376b44:	bd06      	mov.n	a11, a6
40376b46:	8828      	l32i.n	a8, a8, 8
40376b48:	30a320        	or	a10, a3, a3
40376b4b:	e00800        	callx8	a8
40376b4e:	8c0a      	beqz.n	a10, 0x40376b52
40376b50:	2913      	s32i.n	a2, a3, 4
40376b52:	2805      	l32i.n	a2, a5, 0
40376b54:	0c0b      	movi.n	a11, 0
40376b56:	2812      	l32i.n	a2, a2, 4
40376b58:	ad03      	mov.n	a10, a3
40376b5a:	e00200        	callx8	a2
40376b5d:	4b44      	addi.n	a4, a4, 4
40376b5f:	2d0a      	mov.n	a2, a10
40376b61:	167afb        	beqz	a10, 0x40376b1c
40376b64:	1df0      	retw.n
40376b66:	000032        	orbc	b0, b0, b0
40376b69:	a105a0        	l32r	a10, 0x4035eb80
40376b6c:	238386        	lsip	f2, a3, 0x218
40376b6f:	fcff      	bnez.n	a15, 0x40376bb2
40376b71:	000000        	ill
40376b74:	366100        	entry	a1, 48
40376b77:	20a220        	or	a10, a2, a2
40376b7a:	8184f6        	l32r	a8, 0x4037458c
40376b7d:	e00800        	callx8	a8
40376b80:	617bf6        	l32r	a6, 0x4037456c
40376b83:	5d0a      	mov.n	a5, a10
40376b85:	7806      	l32i.n	a7, a6, 0
40376b87:	ad02      	mov.n	a10, a2
40376b89:	7807      	l32i.n	a7, a7, 0
40376b8b:	e00700        	callx8	a7
40376b8e:	fcea      	bnez.n	a10, 0x40376bd0
40376b90:	8ca5      	beqz.n	a5, 0x40376b9e
40376b92:	522201        	l32i	a5, a2, 4
40376b95:	207220        	or	a7, a2, a2
40376b98:	522518        	l32i	a5, a5, 96
40376b9b:	567500        	bnez	a5, 0x40376ba6
40376b9e:	7802      	l32i.n	a7, a2, 0
40376ba0:	522700        	l32i	a5, a7, 0
40376ba3:	522502        	l32i	a5, a5, 8
40376ba6:	bd03      	mov.n	a11, a3
40376ba8:	70a720        	or	a10, a7, a7
40376bab:	e00500        	callx8	a5
40376bae:	dc3a      	bnez.n	a10, 0x40376bc5
40376bb0:	9c14      	beqz.n	a4, 0x40376bc5
40376bb2:	cbb1      	addi.n	a11, a1, 12
40376bb4:	ad07      	mov.n	a10, a7
40376bb6:	e00500        	callx8	a5
40376bb9:	cc8a      	bnez.n	a10, 0x40376bc5
40376bbb:	4803      	l32i.n	a4, a3, 0
40376bbd:	3831      	l32i.n	a3, a1, 12
40376bbf:	371402        	beq	a4, a3, 0x40376bc5
40376bc2:	a16df6        	l32r	a10, 0x40374578
40376bc5:	3806      	l32i.n	a3, a6, 0
40376bc7:	bd0a      	mov.n	a11, a10
40376bc9:	3813      	l32i.n	a3, a3, 4
40376bcb:	ad02      	mov.n	a10, a2
40376bcd:	e00300        	callx8	a3
40376bd0:	2d0a      	mov.n	a2, a10
40376bd2:	1df0      	retw.n
40376bd4:	368100        	entry	a1, 64
40376bd7:	2931      	s32i.n	a2, a1, 12
40376bd9:	2164f6        	l32r	a2, 0x4037456c
40376bdc:	cba1      	addi.n	a10, a1, 12
40376bde:	8802      	l32i.n	a8, a2, 0
40376be0:	8828      	l32i.n	a8, a8, 8
40376be2:	e00800        	callx8	a8
40376be5:	fcfa      	bnez.n	a10, 0x40376c28
40376be7:	8831      	l32i.n	a8, a1, 12
40376be9:	a161f6        	l32r	a10, 0x40374570
40376bec:	9818      	l32i.n	a9, a8, 4
40376bee:	9849      	l32i.n	a9, a9, 16
40376bf0:	bc49      	beqz.n	a9, 0x40376c28
40376bf2:	a2a102        	movi	a10, 0x102
40376bf5:	acf3      	beqz.n	a3, 0x40376c28
40376bf7:	9802      	l32i.n	a9, a2, 0
40376bf9:	ad08      	mov.n	a10, a8
40376bfb:	9809      	l32i.n	a9, a9, 0
40376bfd:	e00900        	callx8	a9
40376c00:	ec4a      	bnez.n	a10, 0x40376c28
40376c02:	a831      	l32i.n	a10, a1, 12
40376c04:	b2c11c        	addi	a11, a1, 28
40376c07:	881a      	l32i.n	a8, a10, 4
40376c09:	8848      	l32i.n	a8, a8, 16
40376c0b:	e00800        	callx8	a8
40376c0e:	ccaa      	bnez.n	a10, 0x40376c1c
40376c10:	9831      	l32i.n	a9, a1, 12
40376c12:	8871      	l32i.n	a8, a1, 28
40376c14:	b859      	l32i.n	a11, a9, 20
40376c16:	cc0b      	bnez.n	a11, 0x40376c1a
40376c18:	8959      	s32i.n	a8, a9, 20
40376c1a:	8903      	s32i.n	a8, a3, 0
40376c1c:	2802      	l32i.n	a2, a2, 0
40376c1e:	bd0a      	mov.n	a11, a10
40376c20:	2812      	l32i.n	a2, a2, 4
40376c22:	a22103        	l32i	a10, a1, 12
40376c25:	e00200        	callx8	a2
40376c28:	2d0a      	mov.n	a2, a10
40376c2a:	1df0      	retw.n
40376c2c:	366100        	entry	a1, 48
40376c2f:	4802      	l32i.n	a4, a2, 0
40376c31:	3d02      	mov.n	a3, a2
40376c33:	22a102        	movi	a2, 0x102
40376c36:	16f406        	beqz	a4, 0x40376ca9
40376c39:	5804      	l32i.n	a5, a4, 0
40376c3b:	16a506        	beqz	a5, 0x40376ca9
40376c3e:	4814      	l32i.n	a4, a4, 4
40376c40:	165406        	beqz	a4, 0x40376ca9
40376c43:	0c02      	movi.n	a2, 0
40376c45:	5843      	l32i.n	a5, a3, 16
40376c47:	2921      	s32i.n	a2, a1, 8
40376c49:	0cf2      	movi.n	a2, 15
40376c4b:	57b241        	bgeu	a2, a5, 0x40376c90
40376c4e:	2125f6        	l32r	a2, 0x403744e4
40376c51:	2802      	l32i.n	a2, a2, 0
40376c53:	2802      	l32i.n	a2, a2, 0
40376c55:	226102        	s32i	a2, a1, 8
40376c58:	2821      	l32i.n	a2, a1, 8
40376c5a:	ad03      	mov.n	a10, a3
40376c5c:	226306        	s32i	a2, a3, 24
40376c5f:	814bf6        	l32r	a8, 0x4037458c
40376c62:	e00800        	callx8	a8
40376c65:	169a04        	beqz	a10, 0x40376cb2
40376c68:	b2c10c        	addi	a11, a1, 12
40376c6b:	30a320        	or	a10, a3, a3
40376c6e:	65f6ff        	call8	0x40376bd4
40376c71:	2d0a      	mov.n	a2, a10
40376c73:	16ba04        	beqz	a10, 0x40376cc2
40376c76:	25c10b        	call8	0x40382888
40376c79:	b141f6        	l32r	a11, 0x40374580
40376c7c:	c145f6        	l32r	a12, 0x40374590
40376c7f:	dd0a      	mov.n	a13, a10
40376c81:	ed0b      	mov.n	a14, a11
40376c83:	a2a001        	movi	a10, 1
40376c86:	8144f6        	l32r	a8, 0x40374598
40376c89:	e00800        	callx8	a8
40376c8c:	460600        	j	0x40376ca9
40376c8f:	000cb4        	extui	a0, a0, 12, 12
40376c92:	8bb1      	addi.n	a11, a1, 8
40376c94:	ad03      	mov.n	a10, a3
40376c96:	8141f6        	l32r	a8, 0x4037459c
40376c99:	e00800        	callx8	a8
40376c9c:	6137f6        	l32r	a6, 0x40374578
40376c9f:	2d0a      	mov.n	a2, a10
40376ca1:	679a07        	bne	a10, a6, 0x40376cac
40376ca4:	0b44      	addi.n	a4, a4, -1
40376ca6:	5684fe        	bnez	a4, 0x40376c92
40376ca9:	1df0      	retw.n
40376cab:	00168a        	round.s	a1, f6, 0
40376cae:	fa86      	add.n	a8, a6, a15
40376cb0:	fd          	.byte	0xfd
40376cb1:	ffad0365 	ee.vmulas.u8.accx.ld.ip.qup	q2, a15, 0x1d0, q6, q4, q0, q3
40376cb5:	e5ff2d        	call8	0x403a4cb4
40376cb8:	0a16      	add.n	a1, a6, a0
40376cba:	bafa      	add.n	a15, a10, a11
40376cbc:	46faff        	j	0x40376ca9
40376cbf:	000000        	ill
40376cc2:	2813      	l32i.n	a2, a3, 4
40376cc4:	22221d        	l32i	a2, a2, 116
40376cc7:	162201        	beqz	a2, 0x40376cdd
40376cca:	30a320        	or	a10, a3, a3
40376ccd:	e00200        	callx8	a2
40376cd0:	17ea09        	bbsi	a10, 1, 0x40376cdd
40376cd3:	2130f6        	l32r	a2, 0x40374594
40376cd6:	4831      	l32i.n	a4, a1, 12
40376cd8:	47b201        	bgeu	a2, a4, 0x40376cdd
40376cdb:	2931      	s32i.n	a2, a1, 12
40376cdd:	4123f6        	l32r	a4, 0x4037456c
40376ce0:	ad03      	mov.n	a10, a3
40376ce2:	2804      	l32i.n	a2, a4, 0
40376ce4:	2802      	l32i.n	a2, a2, 0
40376ce6:	e00200        	callx8	a2
40376ce9:	2d0a      	mov.n	a2, a10
40376ceb:	56aafb        	bnez	a10, 0x40376ca9
40376cee:	0cf8      	movi.n	a8, 15
40376cf0:	573818        	bltu	a8, a5, 0x40376d0c
40376cf3:	5813      	l32i.n	a5, a3, 4
40376cf5:	ad03      	mov.n	a10, a3
40376cf7:	522516        	l32i	a5, a5, 88
40376cfa:	e00500        	callx8	a5
40376cfd:	52a108        	movi	a5, 0x108
40376d00:	579a0a        	bne	a10, a5, 0x40376d0e
40376d03:	822304        	l32i	a8, a3, 16
40376d06:	82c8fc        	addi	a8, a8, -4
40376d09:	b62801        	bltui	a8, 2, 0x40376d0e
40376d0c:	ad02      	mov.n	a10, a2
40376d0e:	2804      	l32i.n	a2, a4, 0
40376d10:	bd0a      	mov.n	a11, a10
40376d12:	2812      	l32i.n	a2, a2, 4
40376d14:	ad03      	mov.n	a10, a3
40376d16:	e00200        	callx8	a2
40376d19:	2d0a      	mov.n	a2, a10
40376d1b:	86e2ff        	j	0x40376ca9
40376d1e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40376d21:	a10061        	l32r	a10, 0x4034f124
40376d24:	12f629        	s32ri	a1, a6, 164
40376d27:	712806        	l32r	a7, 0x403385c8
40376d2a:	a2c11c        	addi	a10, a1, 28
40376d2d:	2822      	l32i.n	a2, a2, 8
40376d2f:	e00200        	callx8	a2
40376d32:	2d0a      	mov.n	a2, a10
40376d34:	56da0e        	bnez	a10, 0x40376e25
40376d37:	5871      	l32i.n	a5, a1, 28
40376d39:	7815      	l32i.n	a7, a5, 4
40376d3b:	8867      	l32i.n	a8, a7, 24
40376d3d:	16f81b        	beqz	a8, 0x40376f00
40376d40:	7877      	l32i.n	a7, a7, 28
40376d42:	16a71b        	beqz	a7, 0x40376f00
40376d45:	7825      	l32i.n	a7, a5, 8
40376d47:	7827      	l32i.n	a7, a7, 8
40376d49:	8cc7      	beqz.n	a7, 0x40376d59
40376d4b:	a835      	l32i.n	a10, a5, 12
40376d4d:	cd04      	mov.n	a12, a4
40376d4f:	bd03      	mov.n	a11, a3
40376d51:	e00700        	callx8	a7
40376d54:	8c1a      	beqz.n	a10, 0x40376d59
40376d56:	65b70b        	call8	0x403828cc
40376d59:	a871      	l32i.n	a10, a1, 28
40376d5b:	0c07      	movi.n	a7, 0
40376d5d:	881a      	l32i.n	a8, a10, 4
40376d5f:	5878      	l32i.n	a5, a8, 28
40376d61:	771501        	beq	a5, a7, 0x40376d66
40376d64:	7898      	l32i.n	a7, a8, 36
40376d66:	5888      	l32i.n	a5, a8, 32
40376d68:	5961      	s32i.n	a5, a1, 24
40376d6a:	16a519        	beqz	a5, 0x40376f08
40376d6d:	5057e2        	remu	a5, a7, a5
40376d70:	564519        	bnez	a5, 0x40376f08
40376d73:	985a      	l32i.n	a9, a10, 20
40376d75:	37b902        	bgeu	a9, a3, 0x40376d7b
40376d78:	066500        	j	0x40376f10
40376d7b:	4a53      	add.n	a5, a3, a4
40376d7d:	57b902        	bgeu	a9, a5, 0x40376d83
40376d80:	066300        	j	0x40376f10
40376d83:	b22106        	l32i	a11, a1, 24
40376d86:	b093e2        	remu	a9, a3, a11
40376d89:	563918        	bnez	a9, 0x40376f10
40376d8c:	b094e2        	remu	a9, a4, a11
40376d8f:	56d917        	bnez	a9, 0x40376f10
40376d92:	16f408        	beqz	a4, 0x40376e25
40376d95:	22280e        	l32i	a2, a8, 56
40376d98:	ec12      	bnez.n	a2, 0x40376dbd
40376d9a:	6d04      	mov.n	a6, a4
40376d9c:	5d03      	mov.n	a5, a3
40376d9e:	a871      	l32i.n	a10, a1, 28
40376da0:	281a      	l32i.n	a2, a10, 4
40376da2:	22221a        	l32i	a2, a2, 104
40376da5:	56320c        	bnez	a2, 0x40376e6c
40376da8:	21f1f5        	l32r	a2, 0x4037456c
40376dab:	a871      	l32i.n	a10, a1, 28
40376dad:	8802      	l32i.n	a8, a2, 0
40376daf:	8808      	l32i.n	a8, a8, 0
40376db1:	e00800        	callx8	a8
40376db4:	162a0c        	beqz	a10, 0x40376e7a
40376db7:	0c0b      	movi.n	a11, 0
40376db9:	c64a00        	j	0x40376ee8
40376dbc:	002208        	lsx	f2, a2, a0
40376dbf:	301662        	saltu	a1, a6, a3
40376dc2:	fd          	.byte	0xfd
40376dc3:	2806      	l32i.n	a2, a6, 0
40376dc5:	2802      	l32i.n	a2, a2, 0
40376dc7:	e00200        	callx8	a2
40376dca:	2d0a      	mov.n	a2, a10
40376dcc:	565a05        	bnez	a10, 0x40376e25
40376dcf:	a871      	l32i.n	a10, a1, 28
40376dd1:	81f3f5        	l32r	a8, 0x403745a0
40376dd4:	281a      	l32i.n	a2, a10, 4
40376dd6:	91f2f5        	l32r	a9, 0x403745a0
40376dd9:	28e2      	l32i.n	a2, a2, 56
40376ddb:	89a1      	s32i.n	a8, a1, 40
40376ddd:	99b1      	s32i.n	a9, a1, 44
40376ddf:	b2c128        	addi	a11, a1, 40
40376de2:	e00200        	callx8	a2
40376de5:	2d0a      	mov.n	a2, a10
40376de7:	ec5a      	bnez.n	a10, 0x40376e10
40376de9:	98a1      	l32i.n	a9, a1, 40
40376deb:	d8b1      	l32i.n	a13, a1, 44
40376ded:	d06920        	or	a6, a9, a13
40376df0:	9cc6      	beqz.n	a6, 0x40376e10
40376df2:	6871      	l32i.n	a6, a1, 28
40376df4:	bd0a      	mov.n	a11, a10
40376df6:	8816      	l32i.n	a8, a6, 4
40376df8:	0c1f      	movi.n	a15, 1
40376dfa:	e20830        	l8ui	a14, a8, 48
40376dfd:	6d0a      	mov.n	a6, a10
40376dff:	e7a60b        	bge	a6, a14, 0x40376e0e
40376e02:	a2a000        	movi	a10, 0
40376e05:	b0af83        	moveqz	a10, a15, a11
40376e08:	a0a074        	extui	a10, a10, 0, 8
40376e0b:	569a01        	bnez	a10, 0x40376e28
40376e0e:	2d0b      	mov.n	a2, a11
40376e10:	51d7f5        	l32r	a5, 0x4037456c
40376e13:	a871      	l32i.n	a10, a1, 28
40376e15:	5805      	l32i.n	a5, a5, 0
40376e17:	20b220        	or	a11, a2, a2
40376e1a:	522501        	l32i	a5, a5, 4
40376e1d:	e00500        	callx8	a5
40376e20:	2d0a      	mov.n	a2, a10
40376e22:	164af7        	beqz	a10, 0x40376d9a
40376e25:	1df0      	retw.n
40376e27:	00ad09        	l32e	a0, a13, -24
40376e2a:	bd0d      	mov.n	a11, a13
40376e2c:	cd06      	mov.n	a12, a6
40376e2e:	8951      	s32i.n	a8, a1, 20
40376e30:	9911      	s32i.n	a9, a1, 4
40376e32:	d931      	s32i.n	a13, a1, 12
40376e34:	e941      	s32i.n	a14, a1, 16
40376e36:	f921      	s32i.n	a15, a1, 8
40376e38:	81def5        	l32r	a8, 0x403745b0
40376e3b:	e00800        	callx8	a8
40376e3e:	bd02      	mov.n	a11, a2
40376e40:	8851      	l32i.n	a8, a1, 20
40376e42:	9811      	l32i.n	a9, a1, 4
40376e44:	d831      	l32i.n	a13, a1, 12
40376e46:	e841      	l32i.n	a14, a1, 16
40376e48:	f821      	l32i.n	a15, a1, 8
40376e4a:	076a18        	bbci	a10, 0, 0x40376e66
40376e4d:	b8d8      	l32i.n	a11, a8, 52
40376e4f:	d0a611        	slli	a10, a6, 3
40376e52:	aaab      	add.n	a10, a11, a10
40376e54:	c80a      	l32i.n	a12, a10, 0
40376e56:	a22a01        	l32i	a10, a10, 4
40376e59:	aaac      	add.n	a10, a12, a10
40376e5b:	a7b305        	bgeu	a3, a10, 0x40376e64
40376e5e:	b1c7f5        	l32r	a11, 0x4037457c
40376e61:	573c01        	bltu	a12, a5, 0x40376e66
40376e64:	bd02      	mov.n	a11, a2
40376e66:	1b66      	addi.n	a6, a6, 1
40376e68:	c6e4ff        	j	0x40376dff
40376e6b:	00          	.byte	00
40376e6c:	0c0b      	movi.n	a11, 0
40376e6e:	e00200        	callx8	a2
40376e71:	2d0a      	mov.n	a2, a10
40376e73:	161af3        	beqz	a10, 0x40376da8
40376e76:	c6eaff        	j	0x40376e25
40376e79:	000c18        	lsxp	f0, a12, a0
40376e7c:	9871      	l32i.n	a9, a1, 28
40376e7e:	708a83        	moveqz	a8, a10, a7
40376e81:	808074        	extui	a8, a8, 0, 8
40376e84:	b819      	l32i.n	a11, a9, 4
40376e86:	ac68      	beqz.n	a8, 0x40376eb0
40376e88:	773624        	bltu	a6, a7, 0x40376eb0
40376e8b:	7085e2        	remu	a8, a5, a7
40376e8e:	dce8      	bnez.n	a8, 0x40376eb0
40376e90:	887b      	l32i.n	a8, a11, 28
40376e92:	ad09      	mov.n	a10, a9
40376e94:	bd05      	mov.n	a11, a5
40376e96:	e00800        	callx8	a8
40376e99:	7a55      	add.n	a5, a5, a7
40376e9b:	7066c0        	sub	a6, a6, a7
40376e9e:	473621        	bltu	a6, a4, 0x40376ec3
40376ea1:	d1c0f5        	l32r	a13, 0x403745a4
40376ea4:	c1c1f5        	l32r	a12, 0x403745a8
40376ea7:	a1c1f5        	l32r	a10, 0x403745ac
40376eaa:	b2a281        	movi	a11, 0x281
40376ead:	25ab0b        	call8	0x40382960
40376eb0:	886b      	l32i.n	a8, a11, 24
40376eb2:	ad09      	mov.n	a10, a9
40376eb4:	bd05      	mov.n	a11, a5
40376eb6:	e00800        	callx8	a8
40376eb9:	8861      	l32i.n	a8, a1, 24
40376ebb:	8a55      	add.n	a5, a5, a8
40376ebd:	8066c0        	sub	a6, a6, a8
40376ec0:	86f6ff        	j	0x40376e9e
40376ec3:	0c08      	movi.n	a8, 0
40376ec5:	0c19      	movi.n	a9, 1
40376ec7:	bd08      	mov.n	a11, a8
40376ec9:	a0b993        	movnez	a11, a9, a10
40376ecc:	608983        	moveqz	a8, a9, a6
40376ecf:	80bb20        	or	a11, a11, a8
40376ed2:	c871      	l32i.n	a12, a1, 28
40376ed4:	8802      	l32i.n	a8, a2, 0
40376ed6:	cceb      	bnez.n	a11, 0x40376ee8
40376ed8:	8818      	l32i.n	a8, a8, 4
40376eda:	ad0c      	mov.n	a10, a12
40376edc:	9911      	s32i.n	a9, a1, 4
40376ede:	e00800        	callx8	a8
40376ee1:	9811      	l32i.n	a9, a1, 4
40376ee3:	167aeb        	beqz	a10, 0x40376d9e
40376ee6:	bd09      	mov.n	a11, a9
40376ee8:	2802      	l32i.n	a2, a2, 0
40376eea:	cd0b      	mov.n	a12, a11
40376eec:	2832      	l32i.n	a2, a2, 12
40376eee:	bd0a      	mov.n	a11, a10
40376ef0:	a871      	l32i.n	a10, a1, 28
40376ef2:	ed04      	mov.n	a14, a4
40376ef4:	dd03      	mov.n	a13, a3
40376ef6:	e00200        	callx8	a2
40376ef9:	2d0a      	mov.n	a2, a10
40376efb:	86c9ff        	j	0x40376e25
40376efe:	000021        	srai	a0, a0, 0
40376f01:	9cf5      	beqz.n	a5, 0x40376f24
40376f03:	86c7ff        	j	0x40376e25
40376f06:	000021        	srai	a0, a0, 0
40376f09:	9cf5      	beqz.n	a5, 0x40376f2c
40376f0b:	86c5ff        	j	0x40376e25
40376f0e:	000022        	orb	b0, b0, b0
40376f11:	a10286        	l32r	a10, 0x4035871c
40376f14:	c3          	.byte	0xc3
40376f15:	ff000036 	ee.vmulas.s8.qacc.ld.ip.qup	q4, a15, 0x100, q4, q0, q0, q0
40376f19:	810029        	l32r	a8, 0x4034131c
40376f1c:	312193        	l32r	a3, 0x4035bba0
40376f1f:	f5cba1        	call12	0x40318bdc
40376f22:	622200        	l32i	a6, a2, 0
40376f25:	426101        	s32i	a4, a1, 4
40376f28:	622602        	l32i	a6, a6, 8
40376f2b:	e00600        	callx8	a6
40376f2e:	4d0a      	mov.n	a4, a10
40376f30:	564a04        	bnez	a10, 0x40376f78
40376f33:	6831      	l32i.n	a6, a1, 12
40376f35:	7816      	l32i.n	a7, a6, 4
40376f37:	722710        	l32i	a7, a7, 64
40376f3a:	16e70c        	beqz	a7, 0x4037700c
40376f3d:	16330d        	beqz	a3, 0x40377014
40376f40:	7856      	l32i.n	a7, a6, 20
40376f42:	8811      	l32i.n	a8, a1, 4
40376f44:	87b702        	bgeu	a7, a8, 0x40376f4a
40376f47:	463200        	j	0x40377014
40376f4a:	5a98      	add.n	a9, a8, a5
40376f4c:	97b702        	bgeu	a7, a9, 0x40376f52
40376f4f:	463000        	j	0x40377014
40376f52:	ac25      	beqz.n	a5, 0x40376f78
40376f54:	a806      	l32i.n	a10, a6, 0
40376f56:	bd03      	mov.n	a11, a3
40376f58:	680a      	l32i.n	a6, a10, 0
40376f5a:	62260c        	l32i	a6, a6, 48
40376f5d:	e00600        	callx8	a6
40376f60:	716cf5        	l32r	a7, 0x40374510
40376f63:	706563        	minu	a6, a5, a7
40376f66:	6921      	s32i.n	a6, a1, 8
40376f68:	56ca06        	bnez	a10, 0x40376fd8
40376f6b:	8831      	l32i.n	a8, a1, 12
40376f6d:	a971      	s32i.n	a10, a1, 28
40376f6f:	6828      	l32i.n	a6, a8, 8
40376f71:	6846      	l32i.n	a6, a6, 16
40376f73:	cc56      	bnez.n	a6, 0x40376f7c
40376f75:	42a101        	movi	a4, 0x101
40376f78:	2d04      	mov.n	a2, a4
40376f7a:	1df0      	retw.n
40376f7c:	a838      	l32i.n	a10, a8, 12
40376f7e:	b821      	l32i.n	a11, a1, 8
40376f80:	c2c11c        	addi	a12, a1, 28
40376f83:	e00600        	callx8	a6
40376f86:	8871      	l32i.n	a8, a1, 28
40376f88:	6d0a      	mov.n	a6, a10
40376f8a:	826102        	s32i	a8, a1, 8
40376f8d:	164afe        	beqz	a10, 0x40376f75
40376f90:	8802      	l32i.n	a8, a2, 0
40376f92:	a831      	l32i.n	a10, a1, 12
40376f94:	8808      	l32i.n	a8, a8, 0
40376f96:	e00800        	callx8	a8
40376f99:	4d0a      	mov.n	a4, a10
40376f9b:	ec5a      	bnez.n	a10, 0x40376fc4
40376f9d:	a831      	l32i.n	a10, a1, 12
40376f9f:	4821      	l32i.n	a4, a1, 8
40376fa1:	881a      	l32i.n	a8, a10, 4
40376fa3:	407563        	minu	a7, a5, a4
40376fa6:	822810        	l32i	a8, a8, 64
40376fa9:	c811      	l32i.n	a12, a1, 4
40376fab:	bd03      	mov.n	a11, a3
40376fad:	dd07      	mov.n	a13, a7
40376faf:	60b693        	movnez	a11, a6, a6
40376fb2:	e00800        	callx8	a8
40376fb5:	4d0a      	mov.n	a4, a10
40376fb7:	ac2a      	beqz.n	a10, 0x40376fdd
40376fb9:	2802      	l32i.n	a2, a2, 0
40376fbb:	bd0a      	mov.n	a11, a10
40376fbd:	2812      	l32i.n	a2, a2, 4
40376fbf:	a831      	l32i.n	a10, a1, 12
40376fc1:	e00200        	callx8	a2
40376fc4:	3831      	l32i.n	a3, a1, 12
40376fc6:	2823      	l32i.n	a2, a3, 8
40376fc8:	2852      	l32i.n	a2, a2, 20
40376fca:	16a2fa        	beqz	a2, 0x40376f78
40376fcd:	a833      	l32i.n	a10, a3, 12
40376fcf:	bd06      	mov.n	a11, a6
40376fd1:	e00200        	callx8	a2
40376fd4:	06e8ff        	j	0x40376f78
40376fd7:	006d04        	extui	a6, a0, 13, 1
40376fda:	86ecff        	j	0x40376f90
40376fdd:	a802      	l32i.n	a10, a2, 0
40376fdf:	bd04      	mov.n	a11, a4
40376fe1:	c81a      	l32i.n	a12, a10, 4
40376fe3:	a831      	l32i.n	a10, a1, 12
40376fe5:	e00c00        	callx8	a12
40376fe8:	4d0a      	mov.n	a4, a10
40376fea:	8ca6      	beqz.n	a6, 0x40376ff8
40376fec:	cd07      	mov.n	a12, a7
40376fee:	bd06      	mov.n	a11, a6
40376ff0:	ad03      	mov.n	a10, a3
40376ff2:	8129f5        	l32r	a8, 0x40374498
40376ff5:	e00800        	callx8	a8
40376ff8:	8811      	l32i.n	a8, a1, 4
40376ffa:	7055c0        	sub	a5, a5, a7
40376ffd:	7a88      	add.n	a8, a8, a7
40376fff:	8911      	s32i.n	a8, a1, 4
40377001:	7a33      	add.n	a3, a3, a7
40377003:	56d4fb        	bnez	a4, 0x40376fc4
40377006:	5665f8        	bnez	a5, 0x40376f90
40377009:	c6edff        	j	0x40376fc4
4037700c:	4159f5        	l32r	a4, 0x40374570
4037700f:	46d9ff        	j	0x40376f78
40377012:	000042        	xorb	b0, b0, b0
40377015:	a10246        	l32r	a10, 0x40348820
40377018:	d7ff00        	bbsi	a15, 29, 0x4037701c
4037701b:	0036a1        	sll	a3, a6
4037701e:	002931        	srai	a2, a0, 25
40377021:	2152f5        	l32r	a2, 0x4037456c
40377024:	cba1      	addi.n	a10, a1, 12
40377026:	2802      	l32i.n	a2, a2, 0
40377028:	2822      	l32i.n	a2, a2, 8
4037702a:	e00200        	callx8	a2
4037702d:	8d0a      	mov.n	a8, a10
4037702f:	561a10        	bnez	a10, 0x40377134
40377032:	2831      	l32i.n	a2, a1, 12
40377034:	6812      	l32i.n	a6, a2, 4
40377036:	622611        	l32i	a6, a6, 68
40377039:	160610        	beqz	a6, 0x4037713d
4037703c:	6822      	l32i.n	a6, a2, 8
4037703e:	6826      	l32i.n	a6, a6, 8
40377040:	9c06      	beqz.n	a6, 0x40377054
40377042:	a832      	l32i.n	a10, a2, 12
40377044:	cd05      	mov.n	a12, a5
40377046:	8901      	s32i.n	a8, a1, 0
40377048:	bd04      	mov.n	a11, a4
4037704a:	e00600        	callx8	a6
4037704d:	8801      	l32i.n	a8, a1, 0
4037704f:	8c1a      	beqz.n	a10, 0x40377054
40377051:	a5870b        	call8	0x403828cc
40377054:	16c30e        	beqz	a3, 0x40377144
40377057:	2831      	l32i.n	a2, a1, 12
40377059:	6852      	l32i.n	a6, a2, 20
4037705b:	47b602        	bgeu	a6, a4, 0x40377061
4037705e:	863800        	j	0x40377144
40377061:	5a74      	add.n	a7, a4, a5
40377063:	77b602        	bgeu	a6, a7, 0x40377069
40377066:	863600        	j	0x40377144
40377069:	16750c        	beqz	a5, 0x40377134
4037706c:	a802      	l32i.n	a10, a2, 0
4037706e:	bd03      	mov.n	a11, a3
40377070:	280a      	l32i.n	a2, a10, 0
40377072:	7d05      	mov.n	a7, a5
40377074:	2892      	l32i.n	a2, a2, 36
40377076:	e00200        	callx8	a2
40377079:	a921      	s32i.n	a10, a1, 8
4037707b:	4911      	s32i.n	a4, a1, 4
4037707d:	2821      	l32i.n	a2, a1, 8
4037707f:	16f204        	beqz	a2, 0x403770d2
40377082:	614cf5        	l32r	a6, 0x403745b4
40377085:	2d03      	mov.n	a2, a3
40377087:	606763        	minu	a6, a7, a6
4037708a:	a831      	l32i.n	a10, a1, 12
4037708c:	881a      	l32i.n	a8, a10, 4
4037708e:	82281a        	l32i	a8, a8, 104
40377091:	8c88      	beqz.n	a8, 0x4037709d
40377093:	0c0b      	movi.n	a11, 0
40377095:	e00800        	callx8	a8
40377098:	8d0a      	mov.n	a8, a10
4037709a:	566a09        	bnez	a10, 0x40377134
4037709d:	9133f5        	l32r	a9, 0x4037456c
403770a0:	a831      	l32i.n	a10, a1, 12
403770a2:	8809      	l32i.n	a8, a9, 0
403770a4:	8808      	l32i.n	a8, a8, 0
403770a6:	e00800        	callx8	a8
403770a9:	561a07        	bnez	a10, 0x4037711e
403770ac:	a831      	l32i.n	a10, a1, 12
403770ae:	c811      	l32i.n	a12, a1, 4
403770b0:	881a      	l32i.n	a8, a10, 4
403770b2:	dd06      	mov.n	a13, a6
403770b4:	822811        	l32i	a8, a8, 68
403770b7:	20b220        	or	a11, a2, a2
403770ba:	6077c0        	sub	a7, a7, a6
403770bd:	e00800        	callx8	a8
403770c0:	573726        	bltu	a7, a5, 0x403770ea
403770c3:	d13df5        	l32r	a13, 0x403745b8
403770c6:	c13df5        	l32r	a12, 0x403745bc
403770c9:	a138f5        	l32r	a10, 0x403745ac
403770cc:	b2a3a1        	movi	a11, 0x3a1
403770cf:	25890b        	call8	0x40382960
403770d2:	2c09      	movi.n	a9, 32
403770d4:	906763        	minu	a6, a7, a9
403770d7:	cd06      	mov.n	a12, a6
403770d9:	bd03      	mov.n	a11, a3
403770db:	a2c110        	addi	a10, a1, 16
403770de:	81eef4        	l32r	a8, 0x40374498
403770e1:	e00800        	callx8	a8
403770e4:	22c110        	addi	a2, a1, 16
403770e7:	c6e7ff        	j	0x4037708a
403770ea:	0c02      	movi.n	a2, 0
403770ec:	0c18      	movi.n	a8, 1
403770ee:	cd02      	mov.n	a12, a2
403770f0:	911ff5        	l32r	a9, 0x4037456c
403770f3:	702883        	moveqz	a2, a8, a7
403770f6:	a0c893        	movnez	a12, a8, a10
403770f9:	20cc20        	or	a12, a12, a2
403770fc:	2809      	l32i.n	a2, a9, 0
403770fe:	9831      	l32i.n	a9, a1, 12
40377100:	dccc      	bnez.n	a12, 0x40377120
40377102:	2812      	l32i.n	a2, a2, 4
40377104:	bd0c      	mov.n	a11, a12
40377106:	8901      	s32i.n	a8, a1, 0
40377108:	ad09      	mov.n	a10, a9
4037710a:	e00200        	callx8	a2
4037710d:	8801      	l32i.n	a8, a1, 0
4037710f:	ec5a      	bnez.n	a10, 0x40377138
40377111:	2811      	l32i.n	a2, a1, 4
40377113:	6a33      	add.n	a3, a3, a6
40377115:	6a22      	add.n	a2, a2, a6
40377117:	2911      	s32i.n	a2, a1, 4
40377119:	06d8ff        	j	0x4037707d
4037711c:	00          	.byte	00
4037711d:	00          	.byte	00
4037711e:	0c0c      	movi.n	a12, 0
40377120:	2113f5        	l32r	a2, 0x4037456c
40377123:	bd0a      	mov.n	a11, a10
40377125:	2802      	l32i.n	a2, a2, 0
40377127:	a831      	l32i.n	a10, a1, 12
40377129:	2832      	l32i.n	a2, a2, 12
4037712b:	ed05      	mov.n	a14, a5
4037712d:	dd04      	mov.n	a13, a4
4037712f:	e00200        	callx8	a2
40377132:	8d0a      	mov.n	a8, a10
40377134:	2d08      	mov.n	a2, a8
40377136:	1df0      	retw.n
40377138:	cd08      	mov.n	a12, a8
4037713a:	86f8ff        	j	0x40377120
4037713d:	810cf5        	l32r	a8, 0x40374570
40377140:	06fcff        	j	0x40377134
40377143:	0082a1        	sll	a8, a2
40377146:	0246fa        	s8i	a0, a6, 250
40377149:	ff000036 	ee.vmulas.s8.qacc.ld.ip.qup	q4, a15, 0x100, q4, q0, q0, q0
4037714d:	010122        	l32r	a0, 0x4033f954
40377150:	610321        	l32r	a6, 0x4033f55c
40377153:	1bf5      	addi.n	a15, a5, 1
40377155:	426102        	s32i	a4, a1, 8
40377158:	c02000        	memw
4037715b:	2802      	l32i.n	a2, a2, 0
4037715d:	4103f5        	l32r	a4, 0x4037456c
40377160:	c02000        	memw
40377163:	226117        	s32i	a2, a1, 92
40377166:	2804      	l32i.n	a2, a4, 0
40377168:	cba1      	addi.n	a10, a1, 12
4037716a:	2822      	l32i.n	a2, a2, 8
4037716c:	e00200        	callx8	a2
4037716f:	6115f5        	l32r	a6, 0x403745c4
40377172:	7831      	l32i.n	a7, a1, 12
40377174:	6806      	l32i.n	a6, a6, 0
40377176:	2d0a      	mov.n	a2, a10
40377178:	671702        	beq	a7, a6, 0x4037717e
4037717b:	464800        	j	0x403772a0
4037717e:	ecfa      	bnez.n	a10, 0x403771b1
40377180:	6821      	l32i.n	a6, a1, 8
40377182:	162612        	beqz	a6, 0x403772a8
40377185:	7857      	l32i.n	a7, a7, 20
40377187:	5a63      	add.n	a6, a3, a5
40377189:	67b702        	bgeu	a7, a6, 0x4037718f
4037718c:	064600        	j	0x403772a8
4037718f:	306034        	extui	a6, a3, 0, 4
40377192:	bc26      	beqz.n	a6, 0x403771c8
40377194:	21bcf4        	l32r	a2, 0x40374484
40377197:	322200        	l32i	a3, a2, 0
4037719a:	22a102        	movi	a2, 0x102
4037719d:	160301        	beqz	a3, 0x403771b1
403771a0:	656e0b        	call8	0x40382888
403771a3:	bd0a      	mov.n	a11, a10
403771a5:	c1f6f4        	l32r	a12, 0x40374580
403771a8:	a108f5        	l32r	a10, 0x403745c8
403771ab:	81bcf4        	l32r	a8, 0x4037449c
403771ae:	e00800        	callx8	a8
403771b1:	3103f5        	l32r	a3, 0x403745c0
403771b4:	c02000        	memw
403771b7:	422117        	l32i	a4, a1, 92
403771ba:	c02000        	memw
403771bd:	3803      	l32i.n	a3, a3, 0
403771bf:	379402        	bne	a4, a3, 0x403771c5
403771c2:	063a00        	j	0x403772ae
403771c5:	a55b00        	call8	0x40377780
403771c8:	1655fe        	beqz	a5, 0x403771b1
403771cb:	502034        	extui	a2, a5, 0, 4
403771ce:	16b201        	beqz	a2, 0x403771ed
403771d1:	21acf4        	l32r	a2, 0x40374484
403771d4:	322200        	l32i	a3, a2, 0
403771d7:	22a104        	movi	a2, 0x104
403771da:	1633fd        	beqz	a3, 0x403771b1
403771dd:	a56a0b        	call8	0x40382888
403771e0:	a0ba20        	or	a11, a10, a10
403771e3:	c1e7f4        	l32r	a12, 0x40374580
403771e6:	a1f9f4        	l32r	a10, 0x403745cc
403771e9:	86efff        	j	0x403771ab
403771ec:	006821        	srai	a6, a0, 8
403771ef:	3a72      	add.n	a7, a2, a3
403771f1:	2ab6      	add.n	a11, a6, a2
403771f3:	706054        	extui	a6, a7, 0, 6
403771f6:	56a604        	bnez	a6, 0x40377244
403771f9:	2065c0        	sub	a6, a5, a2
403771fc:	3cf8      	movi.n	a8, 63
403771fe:	67b842        	bgeu	a8, a6, 0x40377244
40377201:	4c0c      	movi.n	a12, 64
40377203:	a2c11c        	addi	a10, a1, 28
40377206:	81a4f4        	l32r	a8, 0x40374498
40377209:	e00800        	callx8	a8
4037720c:	4c06      	movi.n	a6, 64
4037720e:	8804      	l32i.n	a8, a4, 0
40377210:	a831      	l32i.n	a10, a1, 12
40377212:	8808      	l32i.n	a8, a8, 0
40377214:	e00800        	callx8	a8
40377217:	8d0a      	mov.n	a8, a10
40377219:	56ba06        	bnez	a10, 0x40377288
4037721c:	a831      	l32i.n	a10, a1, 12
4037721e:	dd06      	mov.n	a13, a6
40377220:	981a      	l32i.n	a9, a10, 4
40377222:	70c720        	or	a12, a7, a7
40377225:	922914        	l32i	a9, a9, 80
40377228:	b2c11c        	addi	a11, a1, 28
4037722b:	826101        	s32i	a8, a1, 4
4037722e:	e00900        	callx8	a9
40377231:	8811      	l32i.n	a8, a1, 4
40377233:	bcaa      	beqz.n	a10, 0x40377271
40377235:	d1e6f4        	l32r	a13, 0x403745d0
40377238:	c1e7f4        	l32r	a12, 0x403745d4
4037723b:	a1dcf4        	l32r	a10, 0x403745ac
4037723e:	b2a422        	movi	a11, 0x422
40377241:	e5710b        	call8	0x40382960
40377244:	706044        	extui	a6, a7, 0, 5
40377247:	dc66      	bnez.n	a6, 0x40377261
40377249:	2065c0        	sub	a6, a5, a2
4037724c:	1cf8      	movi.n	a8, 31
4037724e:	67b80f        	bgeu	a8, a6, 0x40377261
40377251:	2c0c      	movi.n	a12, 32
40377253:	a2c11c        	addi	a10, a1, 28
40377256:	8190f4        	l32r	a8, 0x40374498
40377259:	e00800        	callx8	a8
4037725c:	2c06      	movi.n	a6, 32
4037725e:	06ebff        	j	0x4037720e
40377261:	1c0c      	movi.n	a12, 16
40377263:	a2c11c        	addi	a10, a1, 28
40377266:	818cf4        	l32r	a8, 0x40374498
40377269:	e00800        	callx8	a8
4037726c:	1c06      	movi.n	a6, 16
4037726e:	06e7ff        	j	0x4037720e
40377271:	7804      	l32i.n	a7, a4, 0
40377273:	a831      	l32i.n	a10, a1, 12
40377275:	7817      	l32i.n	a7, a7, 4
40377277:	bd08      	mov.n	a11, a8
40377279:	e00700        	callx8	a7
4037727c:	8d0a      	mov.n	a8, a10
4037727e:	cc6a      	bnez.n	a10, 0x40377288
40377280:	6a22      	add.n	a2, a2, a6
40377282:	57b202        	bgeu	a2, a5, 0x40377288
40377285:	06d9ff        	j	0x403771ed
40377288:	2804      	l32i.n	a2, a4, 0
4037728a:	a831      	l32i.n	a10, a1, 12
4037728c:	2832      	l32i.n	a2, a2, 12
4037728e:	ed05      	mov.n	a14, a5
40377290:	dd03      	mov.n	a13, a3
40377292:	0c0c      	movi.n	a12, 0
40377294:	bd08      	mov.n	a11, a8
40377296:	e00200        	callx8	a2
40377299:	2d0a      	mov.n	a2, a10
4037729b:	86c4ff        	j	0x403771b1
4037729e:	000022        	orb	b0, b0, b0
403772a1:	a10686        	l32r	a10, 0x40358abc
403772a4:	c2ff00        	s32ri	a12, a15, 0
403772a7:	0022a1        	sll	a2, a2
403772aa:	02          	.byte	0x2
403772ab:	86c0ff        	j	0x403771b1
403772ae:	1df0      	retw.n
403772b0:	364100        	entry	a1, 32
403772b3:	20c220        	or	a12, a2, a2
403772b6:	40d420        	or	a13, a4, a4
403772b9:	bd03      	mov.n	a11, a3
403772bb:	0c0a      	movi.n	a10, 0
403772bd:	a5c5ff        	call8	0x40376f18
403772c0:	657dff        	call8	0x40376a98
403772c3:	2d0a      	mov.n	a2, a10
403772c5:	1df0      	retw.n
403772c7:	003641        	srli	a3, a0, 6
403772ca:	00          	.byte	00
403772cb:	ad03      	mov.n	a10, a3
403772cd:	257c0b        	call8	0x40382a90
403772d0:	1df0      	retw.n
403772d2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403772d5:	410021        	l32r	a4, 0x4033f6d8
403772d8:	97f40c        	bbsi	a4, 25, 0x403772e8
403772db:	650b55        	call8	0x403cc390
403772de:	cc75      	bnez.n	a5, 0x403772e9
403772e0:	3d05      	mov.n	a3, a5
403772e2:	ad05      	mov.n	a10, a5
403772e4:	c60a00        	j	0x40377313
403772e7:	00          	.byte	00
403772e8:	00ad02        	andb	b10, b13, b0
403772eb:	81bbf4        	l32r	a8, 0x403745d8
403772ee:	e00800        	callx8	a8
403772f1:	a73309        	bltu	a3, a10, 0x403772fe
403772f4:	ad02      	mov.n	a10, a2
403772f6:	81b8f4        	l32r	a8, 0x403745d8
403772f9:	e00800        	callx8	a8
403772fc:	3d0a      	mov.n	a3, a10
403772fe:	32c303        	addi	a3, a3, 3
40377301:	82affc        	movi	a8, -4
40377304:	803310        	and	a3, a3, a8
40377307:	b18bf4        	l32r	a11, 0x40374534
4037730a:	30a320        	or	a10, a3, a3
4037730d:	251501        	call8	0x40378460
40377310:	168afc        	beqz	a10, 0x403772dc
40377313:	3904      	s32i.n	a3, a4, 0
40377315:	2d0a      	mov.n	a2, a10
40377317:	1df0      	retw.n
40377319:	000000        	ill
4037731c:	364100        	entry	a1, 32
4037731f:	30a320        	or	a10, a3, a3
40377322:	81aef4        	l32r	a8, 0x403745dc
40377325:	e00800        	callx8	a8
40377328:	0c02      	movi.n	a2, 0
4037732a:	1df0      	retw.n
4037732c:	364100        	entry	a1, 32
4037732f:	16e300        	beqz	a3, 0x40377341
40377332:	d1abf4        	l32r	a13, 0x403745e0
40377335:	c1abf4        	l32r	a12, 0x403745e4
40377338:	a1acf4        	l32r	a10, 0x403745e8
4037733b:	b2a078        	movi	a11, 120
4037733e:	25620b        	call8	0x40382960
40377341:	a51502        	call8	0x4037949c
40377344:	8832      	l32i.n	a8, a2, 12
40377346:	92a7cf        	movi	a9, 0x7cf
40377349:	808ac0        	sub	a8, a10, a8
4037734c:	87b90a        	bgeu	a9, a8, 0x4037735a
4037734f:	a922      	s32i.n	a10, a2, 8
40377351:	22a107        	movi	a2, 0x107
40377354:	8c04      	beqz.n	a4, 0x40377358
40377356:	3904      	s32i.n	a3, a4, 0
40377358:	1df0      	retw.n
4037735a:	2822      	l32i.n	a2, a2, 8
4037735c:	20aac0        	sub	a10, a10, a2
4037735f:	21a3f4        	l32r	a2, 0x403745ec
40377362:	a7b2eb        	bgeu	a2, a10, 0x40377351
40377365:	0c13      	movi.n	a3, 1
40377367:	0c02      	movi.n	a2, 0
40377369:	c6f9ff        	j	0x40377354
4037736c:	364100        	entry	a1, 32
4037736f:	220204        	l8ui	a2, a2, 4
40377372:	30a320        	or	a10, a3, a3
40377375:	40b420        	or	a11, a4, a4
40377378:	56a200        	bnez	a2, 0x40377386
4037737b:	819df4        	l32r	a8, 0x403745f0
4037737e:	e00800        	callx8	a8
40377381:	22a106        	movi	a2, 0x106
40377384:	8c0a      	beqz.n	a10, 0x40377388
40377386:	0c02      	movi.n	a2, 0
40377388:	1df0      	retw.n
4037738a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037738d:	410081        	l32r	a4, 0x40357790
40377390:	99f4      	s32i.n	a9, a4, 60
40377392:	822801        	l32i	a8, a8, 4
40377395:	e00800        	callx8	a8
40377398:	1df0      	retw.n
4037739a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037739d:	410081        	l32r	a4, 0x403577a0
403773a0:	95f482        	call4	0x402fa2ec
403773a3:	2800      	l32i.n	a2, a0, 0
403773a5:	e00800        	callx8	a8
403773a8:	1df0      	retw.n
403773aa:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403773ad:	4100e5        	l32r	a4, 0x403707b0
403773b0:	feff0c02 	ee.vmulas.s16.accx.ld.ip.qup	q5, a15, 240, q3, q6, q0, q4
403773b4:	1df0      	retw.n
403773b6:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403773b9:	410065        	l32r	a4, 0x403507bc
403773bc:	a20766        	l8ui	a10, a7, 102
403773bf:	2a02      	add.n	a0, a2, a2
403773c1:	65b407        	call8	0x4037ef08
403773c4:	650d02        	call8	0x4037949c
403773c7:	a26202        	s32i	a10, a2, 8
403773ca:	0c02      	movi.n	a2, 0
403773cc:	1df0      	retw.n
403773ce:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403773d1:	4100a5        	l32r	a4, 0x403607d4
403773d4:	fbff      	addi.n	a15, a15, 15
403773d6:	650c02        	call8	0x4037949c
403773d9:	a26203        	s32i	a10, a2, 12
403773dc:	22a000        	movi	a2, 0
403773df:	1df0      	retw.n
403773e1:	000000        	ill
403773e4:	364100        	entry	a1, 32
403773e7:	30a320        	or	a10, a3, a3
403773ea:	817cf4        	l32r	a8, 0x403745dc
403773ed:	e00800        	callx8	a8
403773f0:	0c02      	movi.n	a2, 0
403773f2:	1df0      	retw.n
403773f4:	364100        	entry	a1, 32
403773f7:	8180f4        	l32r	a8, 0x403745f8
403773fa:	e00800        	callx8	a8
403773fd:	a22200        	l32i	a10, a2, 0
40377400:	817ff4        	l32r	a8, 0x403745fc
40377403:	e00800        	callx8	a8
40377406:	a812      	l32i.n	a10, a2, 4
40377408:	0c02      	movi.n	a2, 0
4037740a:	817df4        	l32r	a8, 0x40374600
4037740d:	e00800        	callx8	a8
40377410:	1df0      	retw.n
40377412:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40377415:	410081        	l32r	a4, 0x40357818
40377418:	7bf4      	addi.n	a15, a4, 7
4037741a:	e00800        	callx8	a8
4037741d:	a902      	s32i.n	a10, a2, 0
4037741f:	817af4        	l32r	a8, 0x40374608
40377422:	e00800        	callx8	a8
40377425:	a912      	s32i.n	a10, a2, 4
40377427:	0c02      	movi.n	a2, 0
40377429:	1df0      	retw.n
4037742b:	003641        	srli	a3, a0, 6
4037742e:	008177        	ee.stf.64.xp	f8, f7, a0, a1
40377431:	f4          	.byte	0xf4
40377432:	8922      	s32i.n	a8, a2, 8
40377434:	8177f4        	l32r	a8, 0x40374610
40377437:	8932      	s32i.n	a8, a2, 12
40377439:	0c02      	movi.n	a2, 0
4037743b:	1df0      	retw.n
4037743d:	000000        	ill
40377440:	364100        	entry	a1, 32
40377443:	20a0f4        	extui	a10, a2, 0, 16
40377446:	816ef4        	l32r	a8, 0x40374600
40377449:	e00800        	callx8	a8
4037744c:	20a0f5        	extui	a10, a2, 16, 16
4037744f:	816bf4        	l32r	a8, 0x403745fc
40377452:	e00800        	callx8	a8
40377455:	1df0      	retw.n
40377457:	003641        	srli	a3, a0, 6
4037745a:	0025fa        	mov.s	f2, f5
4037745d:	06253f        	j	0x403870f5
40377460:	01916c        	l32r	a0, 0x403526a4
40377463:	f4          	.byte	0xf4
40377464:	82a000        	movi	a8, 0
40377467:	c02000        	memw
4037746a:	824900        	s8i	a8, a9, 0
4037746d:	816af4        	l32r	a8, 0x40374618
40377470:	a2a001        	movi	a10, 1
40377473:	c02000        	memw
40377476:	a24800        	s8i	a10, a8, 0
40377479:	c02000        	memw
4037747c:	820900        	l8ui	a8, a9, 0
4037747f:	808074        	extui	a8, a8, 0, 8
40377482:	1638ff        	beqz	a8, 0x40377479
40377485:	e08211        	slli	a8, a2, 2
40377488:	2165f4        	l32r	a2, 0x4037461c
4037748b:	802280        	add	a2, a2, a8
4037748e:	a802      	l32i.n	a10, a2, 0
40377490:	e5faff        	call8	0x40377440
40377493:	254101        	call8	0x403788a4
40377496:	65ab07        	call8	0x4037ef4c
40377499:	1df0      	retw.n
4037749b:	003641        	srli	a3, a0, 6
4037749e:	008159        	s32nb	a0, a1, 32
403774a1:	f4          	.byte	0xf4
403774a2:	e00800        	callx8	a8
403774a5:	3d0a      	mov.n	a3, a10
403774a7:	8158f4        	l32r	a8, 0x40374608
403774aa:	e00800        	callx8	a8
403774ad:	008311        	slli	a8, a3, 16
403774b0:	a0a820        	or	a10, a8, a10
403774b3:	a902      	s32i.n	a10, a2, 0
403774b5:	1df0      	retw.n
403774b7:	00          	.byte	00
403774b8:	366100        	entry	a1, 48
403774bb:	102120        	or	a2, a1, a1
403774be:	3118f4        	l32r	a3, 0x40374520
403774c1:	4157f4        	l32r	a4, 0x40374620
403774c4:	303280        	add	a3, a2, a3
403774c7:	37b41a        	bgeu	a4, a3, 0x403774e5
403774ca:	3119f4        	l32r	a3, 0x40374530
403774cd:	302280        	add	a2, a2, a3
403774d0:	3117f4        	l32r	a3, 0x4037452c
403774d3:	27b30e        	bgeu	a3, a2, 0x403774e5
403774d6:	d153f4        	l32r	a13, 0x40374624
403774d9:	c153f4        	l32r	a12, 0x40374628
403774dc:	b2a089        	movi	a11, 137
403774df:	a153f4        	l32r	a10, 0x4037462c
403774e2:	e5470b        	call8	0x40382960
403774e5:	8159f4        	l32r	a8, 0x4037464c
403774e8:	e00800        	callx8	a8
403774eb:	30eb03        	rsr.prid	a3
403774ee:	303d04        	extui	a3, a3, 13, 1
403774f1:	414ff4        	l32r	a4, 0x40374630
403774f4:	0c05      	movi.n	a5, 0
403774f6:	c02000        	memw
403774f9:	8804      	l32i.n	a8, a4, 0
403774fb:	0c12      	movi.n	a2, 1
403774fd:	302593        	movnez	a2, a5, a3
40377500:	26080d        	beqi	a8, -1, 0x40377511
40377503:	d14cf4        	l32r	a13, 0x40374634
40377506:	c148f4        	l32r	a12, 0x40374628
40377509:	b2a091        	movi	a11, 145
4037750c:	c6f3ff        	j	0x403774df
4037750f:	0000c0        	sub	a0, a0, a0
40377512:	20          	.byte	0x20
40377513:	003904        	extui	a3, a0, 9, 1
40377516:	a58c07        	call8	0x4037ede0
40377519:	661a11        	bnei	a10, 1, 0x4037752e
4037751c:	165306        	beqz	a3, 0x40377585
4037751f:	d146f4        	l32r	a13, 0x40374638
40377522:	c141f4        	l32r	a12, 0x40374628
40377525:	b2a09b        	movi	a11, 155
40377528:	c6ecff        	j	0x403774df
4037752b:	000000        	ill
4037752e:	1c8b      	movi.n	a11, 24
40377530:	8ba1      	addi.n	a10, a1, 8
40377532:	250e08        	call8	0x4037f614
40377535:	b141f4        	l32r	a11, 0x4037463c
40377538:	4138f4        	l32r	a4, 0x40374618
4037753b:	cd02      	mov.n	a12, a2
4037753d:	ad02      	mov.n	a10, a2
4037753f:	c02000        	memw
40377542:	524400        	s8i	a5, a4, 0
40377545:	8142f4        	l32r	a8, 0x40374650
40377548:	e00800        	callx8	a8
4037754b:	8cda      	beqz.n	a10, 0x4037755c
4037754d:	e13cf4        	l32r	a14, 0x40374640
40377550:	d136f4        	l32r	a13, 0x40374628
40377553:	b13cf4        	l32r	a11, 0x40374644
40377556:	c2a0a5        	movi	a12, 165
40377559:	e57a05        	call8	0x4037cd08
4037755c:	c02000        	memw
4037755f:	820400        	l8ui	a8, a4, 0
40377562:	808074        	extui	a8, a8, 0, 8
40377565:	1638ff        	beqz	a8, 0x4037755c
40377568:	25e906        	call8	0x4037e3fc
4037756b:	8ba1      	addi.n	a10, a1, 8
4037756d:	651308        	call8	0x4037f6a4
40377570:	40eb03        	rsr.prid	a4
40377573:	404d04        	extui	a4, a4, 13, 1
40377576:	47130b        	beq	a3, a4, 0x40377585
40377579:	d133f4        	l32r	a13, 0x40374648
4037757c:	c12bf4        	l32r	a12, 0x40374628
4037757f:	b2a0b1        	movi	a11, 177
40377582:	46d6ff        	j	0x403774df
40377585:	a52c01        	call8	0x40378850
40377588:	e0a311        	slli	a10, a3, 2
4037758b:	3124f4        	l32r	a3, 0x4037461c
4037758e:	a0a380        	add	a10, a3, a10
40377591:	a5f0ff        	call8	0x4037749c
40377594:	e0a211        	slli	a10, a2, 2
40377597:	aaa3      	add.n	a10, a3, a10
40377599:	25f0ff        	call8	0x4037749c
4037759c:	1df0      	retw.n
4037759e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403775a1:	410020        	l32r	a4, 0x4033f5a4
403775a4:	eb03      	addi.n	a0, a3, 14
403775a6:	202d04        	extui	a2, a2, 13, 1
403775a9:	42a001        	movi	a4, 1
403775ac:	32a000        	movi	a3, 0
403775af:	203483        	moveqz	a3, a4, a2
403775b2:	411ff4        	l32r	a4, 0x40374630
403775b5:	c02000        	memw
403775b8:	522400        	l32i	a5, a4, 0
403775bb:	27150e        	beq	a5, a2, 0x403775cd
403775be:	d125f4        	l32r	a13, 0x40374654
403775c1:	c125f4        	l32r	a12, 0x40374658
403775c4:	b2a0c3        	movi	a11, 195
403775c7:	a119f4        	l32r	a10, 0x4037462c
403775ca:	65390b        	call8	0x40382960
403775cd:	258107        	call8	0x4037ede0
403775d0:	9c05      	beqz.n	a5, 0x403775e4
403775d2:	661a0e        	bnei	a10, 1, 0x403775e4
403775d5:	d121f4        	l32r	a13, 0x4037465c
403775d8:	c120f4        	l32r	a12, 0x40374658
403775db:	b2a0c5        	movi	a11, 197
403775de:	46f9ff        	j	0x403775c7
403775e1:	000000        	ill
403775e4:	52afff        	movi	a5, -1
403775e7:	c02000        	memw
403775ea:	5904      	s32i.n	a5, a4, 0
403775ec:	410cf4        	l32r	a4, 0x4037461c
403775ef:	e02211        	slli	a2, a2, 2
403775f2:	2a24      	add.n	a2, a4, a2
403775f4:	a802      	l32i.n	a10, a2, 0
403775f6:	e03311        	slli	a3, a3, 2
403775f9:	65e4ff        	call8	0x40377440
403775fc:	3a44      	add.n	a4, a4, a3
403775fe:	a804      	l32i.n	a10, a4, 0
40377600:	e5e3ff        	call8	0x40377440
40377603:	e57d07        	call8	0x4037ede0
40377606:	261a0a        	beqi	a10, 1, 0x40377614
40377609:	2102f4        	l32r	a2, 0x40374614
4037760c:	0c13      	movi.n	a3, 1
4037760e:	c02000        	memw
40377611:	324200        	s8i	a3, a2, 0
40377614:	101120        	or	a1, a1, a1
40377617:	e52801        	call8	0x403788a4
4037761a:	101120        	or	a1, a1, a1
4037761d:	257c07        	call8	0x4037ede0
40377620:	261a05        	beqi	a10, 1, 0x40377629
40377623:	101120        	or	a1, a1, a1
40377626:	659207        	call8	0x4037ef4c
40377629:	810df4        	l32r	a8, 0x40374660
4037762c:	e00800        	callx8	a8
4037762f:	1df0      	retw.n
40377631:	000000        	ill
40377634:	364100        	entry	a1, 32
40377637:	20eb03        	rsr.prid	a2
4037763a:	202d04        	extui	a2, a2, 13, 1
4037763d:	32a000        	movi	a3, 0
40377640:	a2a001        	movi	a10, 1
40377643:	20a393        	movnez	a10, a3, a2
40377646:	31f5f3        	l32r	a3, 0x4037461c
40377649:	e0aa11        	slli	a10, a10, 2
4037764c:	a0a380        	add	a10, a3, a10
4037764f:	e5e4ff        	call8	0x4037749c
40377652:	e51f01        	call8	0x40378850
40377655:	e0a211        	slli	a10, a2, 2
40377658:	aaa3      	add.n	a10, a3, a10
4037765a:	25e4ff        	call8	0x4037749c
4037765d:	1df0      	retw.n
4037765f:	003641        	srli	a3, a0, 6
40377662:	00          	.byte	00
40377663:	80eb03        	rsr.prid	a8
40377666:	808d04        	extui	a8, a8, 13, 1
40377669:	e09811        	slli	a9, a8, 2
4037766c:	81ecf3        	l32r	a8, 0x4037461c
4037766f:	908880        	add	a8, a8, a9
40377672:	a22800        	l32i	a10, a8, 0
40377675:	a5dcff        	call8	0x40377440
40377678:	a52201        	call8	0x403788a4
4037767b:	1df0      	retw.n
4037767d:	000000        	ill
40377680:	364100        	entry	a1, 32
40377683:	21f8f3        	l32r	a2, 0x40374664
40377686:	c02000        	memw
40377689:	2802      	l32i.n	a2, a2, 0
4037768b:	202004        	extui	a2, a2, 0, 1
4037768e:	1df0      	retw.n
40377690:	364100        	entry	a1, 32
40377693:	0c0a      	movi.n	a10, 0
40377695:	a5daff        	call8	0x40377440
40377698:	1df0      	retw.n
4037769a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037769d:	41001c        	l32r	a4, 0x4033e6a0
403776a0:	68ac      	l32i.n	a6, a12, 40
403776a2:	f24222        	s8i	a15, a2, 34
403776a5:	012624        	l32r	a0, 0x40340740
403776a8:	18a2      	l32i.n	a1, a2, 40
403776aa:	220022        	l8ui	a2, a0, 34
403776ad:	220166        	l8ui	a2, a1, 102
403776b0:	122530        	l32i	a1, a5, 192
403776b3:	b3          	.byte	0xb3
403776b4:	20          	.byte	0x20
403776b5:	a55206        	call8	0x4037dbe0
403776b8:	1c08      	movi.n	a8, 16
403776ba:	661a16        	bnei	a10, 1, 0x403776d4
403776bd:	0c08      	movi.n	a8, 0
403776bf:	460400        	j	0x403776d4
403776c2:	a22200        	l32i	a10, a2, 0
403776c5:	e5df05        	call8	0x4037d4c4
403776c8:	a04a20        	or	a4, a10, a10
403776cb:	253b07        	call8	0x4037ea7c
403776ce:	82a02d        	movi	a8, 45
403776d1:	a794d4        	bne	a4, a10, 0x403776a9
403776d4:	2d08      	mov.n	a2, a8
403776d6:	1df0      	retw.n
403776d8:	bd03      	mov.n	a11, a3
403776da:	253806        	call8	0x4037da5c
403776dd:	c6f5ff        	j	0x403776b8
403776e0:	364100        	entry	a1, 32
403776e3:	a2a016        	movi	a10, 22
403776e6:	16c200        	beqz	a2, 0x403776f6
403776e9:	822200        	l32i	a8, a2, 0
403776ec:	26080a        	beqi	a8, -1, 0x403776fa
403776ef:	a802      	l32i.n	a10, a2, 0
403776f1:	7cfb      	movi.n	a11, -1
403776f3:	a5faff        	call8	0x4037769c
403776f6:	2d0a      	mov.n	a2, a10
403776f8:	1df0      	retw.n
403776fa:	ad02      	mov.n	a10, a2
403776fc:	81dbf3        	l32r	a8, 0x40374668
403776ff:	e00800        	callx8	a8
40377702:	560aff        	bnez	a10, 0x403776f6
40377705:	86f9ff        	j	0x403776ef
40377708:	364100        	entry	a1, 32
4037770b:	169204        	beqz	a2, 0x40377758
4037770e:	3802      	l32i.n	a3, a2, 0
40377710:	164304        	beqz	a3, 0x40377758
40377713:	2813      	l32i.n	a2, a3, 4
40377715:	0b22      	addi.n	a2, a2, -1
40377717:	b6221d        	bltui	a2, 2, 0x40377738
4037771a:	2813      	l32i.n	a2, a3, 4
4037771c:	a803      	l32i.n	a10, a3, 0
4037771e:	661229        	bnei	a2, 1, 0x4037774b
40377721:	25fd05        	call8	0x4037d6f4
40377724:	0c02      	movi.n	a2, 0
40377726:	261a1f        	beqi	a10, 1, 0x40377749
40377729:	d1d0f3        	l32r	a13, 0x4037466c
4037772c:	c1d1f3        	l32r	a12, 0x40374670
4037772f:	a1d1f3        	l32r	a10, 0x40374674
40377732:	b2a2c8        	movi	a11, 0x2c8
40377735:	a5220b        	call8	0x40382960
40377738:	a22300        	l32i	a10, a3, 0
4037773b:	22a001        	movi	a2, 1
4037773e:	65d805        	call8	0x4037d4c4
40377741:	4d0a      	mov.n	a4, a10
40377743:	a53307        	call8	0x4037ea7c
40377746:	a714d0        	beq	a4, a10, 0x4037771a
40377749:	1df0      	retw.n
4037774b:	0c0d      	movi.n	a13, 0
4037774d:	cd0d      	mov.n	a12, a13
4037774f:	bd0d      	mov.n	a11, a13
40377751:	a5dd05        	call8	0x4037d52c
40377754:	06f3ff        	j	0x40377724
40377757:	001c62        	saltu	a1, a12, a0
4037775a:	c6faff        	j	0x40377749
4037775d:	000000        	ill
40377760:	364100        	entry	a1, 32
40377763:	31c5f3        	l32r	a3, 0x40374678
40377766:	22a004        	movi	a2, 4
40377769:	8843      	l32i.n	a8, a3, 16
4037776b:	8c18      	beqz.n	a8, 0x40377770
4037776d:	e00800        	callx8	a8
40377770:	0b22      	addi.n	a2, a2, -1
40377772:	32c3fc        	addi	a3, a3, -4
40377775:	6602f0        	bnei	a2, -1, 0x40377769
40377778:	25c806        	call8	0x4037e3fc
4037777b:	e53b00        	call8	0x40377b38
4037777e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40377781:	4100a1        	l32r	a4, 0x4035fb84
40377784:	bef3a559 	ee.vmulas.u16.qacc.ld.ip.qup	q2, a11, 0xfffffe30, q3, q7, q2, q5
40377788:	050000        	call0	0x4037778c
4037778b:	003641        	srli	a3, a0, 6
4037778e:	00          	.byte	00
4037778f:	a1bcf3        	l32r	a10, 0x40374680
40377792:	22a001        	movi	a2, 1
40377795:	e57708        	call8	0x4037ff14
40377798:	a2a000        	movi	a10, 0
4037779b:	81c0f3        	l32r	a8, 0x4037469c
4037779e:	e00800        	callx8	a8
403777a1:	81bff3        	l32r	a8, 0x403746a0
403777a4:	e00800        	callx8	a8
403777a7:	259d00        	call8	0x40378178
403777aa:	0c0a      	movi.n	a10, 0
403777ac:	81bef3        	l32r	a8, 0x403746a4
403777af:	e00800        	callx8	a8
403777b2:	81b4f3        	l32r	a8, 0x40374684
403777b5:	c02000        	memw
403777b8:	2908      	s32i.n	a2, a8, 0
403777ba:	81b3f3        	l32r	a8, 0x40374688
403777bd:	c02000        	memw
403777c0:	2908      	s32i.n	a2, a8, 0
403777c2:	81b2f3        	l32r	a8, 0x4037468c
403777c5:	c02000        	memw
403777c8:	224801        	s8i	a2, a8, 1
403777cb:	81b7f3        	l32r	a8, 0x403746a8
403777ce:	e00800        	callx8	a8
403777d1:	81b6f3        	l32r	a8, 0x403746ac
403777d4:	e00800        	callx8	a8
403777d7:	81aef3        	l32r	a8, 0x40374690
403777da:	c02000        	memw
403777dd:	224801        	s8i	a2, a8, 1
403777e0:	31adf3        	l32r	a3, 0x40374694
403777e3:	c02000        	memw
403777e6:	220300        	l8ui	a2, a3, 0
403777e9:	202074        	extui	a2, a2, 0, 8
403777ec:	9c42      	beqz.n	a2, 0x40377804
403777ee:	20eb03        	rsr.prid	a2
403777f1:	202d04        	extui	a2, a2, 13, 1
403777f4:	e08211        	slli	a8, a2, 2
403777f7:	21a8f3        	l32r	a2, 0x40374698
403777fa:	8a22      	add.n	a2, a2, a8
403777fc:	2802      	l32i.n	a2, a2, 0
403777fe:	e00200        	callx8	a2
40377801:	1df0      	retw.n
40377803:	00a2a0        	addx4	a10, a2, a0
40377806:	64          	.byte	0x64
40377807:	8175f3        	l32r	a8, 0x403745dc
4037780a:	e00800        	callx8	a8
4037780d:	c6f3ff        	j	0x403777e0
40377810:	366100        	entry	a1, 48
40377813:	a19bf3        	l32r	a10, 0x40374680
40377816:	e56f08        	call8	0x4037ff14
40377819:	0c0a      	movi.n	a10, 0
4037781b:	81b4f3        	l32r	a8, 0x403746ec
4037781e:	e00800        	callx8	a8
40377821:	5d0a      	mov.n	a5, a10
40377823:	a2a001        	movi	a10, 1
40377826:	81b1f3        	l32r	a8, 0x403746ec
40377829:	e00800        	callx8	a8
4037782c:	a1a2f3        	l32r	a10, 0x403746b4
4037782f:	c1a0f3        	l32r	a12, 0x403746b0
40377832:	0c0b      	movi.n	a11, 0
40377834:	a0ccc0        	sub	a12, a12, a10
40377837:	811af3        	l32r	a8, 0x403744a0
4037783a:	e00800        	callx8	a8
4037783d:	265510        	beqi	a5, 5, 0x40377851
40377840:	a19ff3        	l32r	a10, 0x403746bc
40377843:	c19df3        	l32r	a12, 0x403746b8
40377846:	0c0b      	movi.n	a11, 0
40377848:	a0ccc0        	sub	a12, a12, a10
4037784b:	8115f3        	l32r	a8, 0x403744a0
4037784e:	e00800        	callx8	a8
40377851:	a12ff3        	l32r	a10, 0x40374510
40377854:	2c0c      	movi.n	a12, 32
40377856:	0c8b      	movi.n	a11, 8
40377858:	81a6f3        	l32r	a8, 0x403746f0
4037785b:	e00800        	callx8	a8
4037785e:	816af3        	l32r	a8, 0x40374608
40377861:	e00800        	callx8	a8
40377864:	a106f3        	l32r	a10, 0x4037447c
40377867:	2c0c      	movi.n	a12, 32
40377869:	b2a008        	movi	a11, 8
4037786c:	81a2f3        	l32r	a8, 0x403746f4
4037786f:	e00800        	callx8	a8
40377872:	0c0a      	movi.n	a10, 0
40377874:	8163f3        	l32r	a8, 0x40374600
40377877:	e00800        	callx8	a8
4037787a:	819ff3        	l32r	a8, 0x403746f8
4037787d:	e00800        	callx8	a8
40377880:	8c1a      	beqz.n	a10, 0x40377885
40377882:	e5edff        	call8	0x40377760
40377885:	2114f3        	l32r	a2, 0x403744d8
40377888:	318ef3        	l32r	a3, 0x403746c0
4037788b:	b2a400        	movi	a11, 0x400
4037788e:	204310        	and	a4, a3, a2
40377891:	318cf3        	l32r	a3, 0x403746c4
40377894:	2130f3        	l32r	a2, 0x40374554
40377897:	3a34      	add.n	a3, a4, a3
40377899:	3030f5        	extui	a3, a3, 16, 16
4037789c:	e0a311        	slli	a10, a3, 2
4037789f:	a0bbc0        	sub	a11, a11, a10
403778a2:	6189f3        	l32r	a6, 0x403746c8
403778a5:	8195f3        	l32r	a8, 0x403746fc
403778a8:	e00800        	callx8	a8
403778ab:	e51e03        	call8	0x4037aa98
403778ae:	8194f3        	l32r	a8, 0x40374700
403778b1:	e00800        	callx8	a8
403778b4:	2514ff        	call8	0x403769f8
403778b7:	2a26      	add.n	a2, a6, a2
403778b9:	65b50c        	call8	0x40384410
403778bc:	4022c0        	sub	a2, a2, a4
403778bf:	8178f3        	l32r	a8, 0x403746a0
403778c2:	e00800        	callx8	a8
403778c5:	4171f3        	l32r	a4, 0x4037468c
403778c8:	82a001        	movi	a8, 1
403778cb:	a2c104        	addi	a10, a1, 4
403778ce:	c02000        	memw
403778d1:	824400        	s8i	a8, a4, 0
403778d4:	818cf3        	l32r	a8, 0x40374704
403778d7:	e00800        	callx8	a8
403778da:	82010e        	l8ui	a8, a1, 14
403778dd:	2020f5        	extui	a2, a2, 16, 16
403778e0:	f62830        	bgeui	a8, 2, 0x40377914
403778e3:	31e8f2        	l32r	a3, 0x40374484
403778e6:	2803      	l32i.n	a2, a3, 0
403778e8:	ac52      	beqz.n	a2, 0x40377911
403778ea:	e5f90a        	call8	0x40382888
403778ed:	2177f3        	l32r	a2, 0x403746cc
403778f0:	bd0a      	mov.n	a11, a10
403778f2:	a177f3        	l32r	a10, 0x403746d0
403778f5:	cd02      	mov.n	a12, a2
403778f7:	81e9f2        	l32r	a8, 0x4037449c
403778fa:	e00800        	callx8	a8
403778fd:	3803      	l32i.n	a3, a3, 0
403778ff:	8ce3      	beqz.n	a3, 0x40377911
40377901:	65f80a        	call8	0x40382888
40377904:	bd0a      	mov.n	a11, a10
40377906:	a173f3        	l32r	a10, 0x403746d4
40377909:	cd02      	mov.n	a12, a2
4037790b:	81e4f2        	l32r	a8, 0x4037449c
4037790e:	e00800        	callx8	a8
40377911:	a5fb0a        	call8	0x403828cc
40377914:	0c1a      	movi.n	a10, 1
40377916:	e5e000        	call8	0x40378724
40377919:	816ff3        	l32r	a8, 0x403746d8
4037791c:	0c2a      	movi.n	a10, 2
4037791e:	c02000        	memw
40377921:	9808      	l32i.n	a9, a8, 0
40377923:	a78939        	bany	a9, a10, 0x40377960
40377926:	c02000        	memw
40377929:	9808      	l32i.n	a9, a8, 0
4037792b:	a09920        	or	a9, a9, a10
4037792e:	c02000        	memw
40377931:	9908      	s32i.n	a9, a8, 0
40377933:	c02000        	memw
40377936:	9808      	l32i.n	a9, a8, 0
40377938:	7cea      	movi.n	a10, -2
4037793a:	a09910        	and	a9, a9, a10
4037793d:	c02000        	memw
40377940:	9908      	s32i.n	a9, a8, 0
40377942:	c02000        	memw
40377945:	9808      	l32i.n	a9, a8, 0
40377947:	0c4a      	movi.n	a10, 4
40377949:	a09920        	or	a9, a9, a10
4037794c:	c02000        	memw
4037794f:	9908      	s32i.n	a9, a8, 0
40377951:	c02000        	memw
40377954:	9808      	l32i.n	a9, a8, 0
40377956:	7cba      	movi.n	a10, -5
40377958:	a09910        	and	a9, a9, a10
4037795b:	c02000        	memw
4037795e:	9908      	s32i.n	a9, a8, 0
40377960:	a15ff3        	l32r	a10, 0x403746dc
40377963:	72a064        	movi	a7, 100
40377966:	814df3        	l32r	a8, 0x4037469c
40377969:	e00800        	callx8	a8
4037796c:	c02000        	memw
4037796f:	a20400        	l8ui	a10, a4, 0
40377972:	c02000        	memw
40377975:	820401        	l8ui	a8, a4, 1
40377978:	808074        	extui	a8, a8, 0, 8
4037797b:	a06810        	and	a6, a8, a10
4037797e:	70a720        	or	a10, a7, a7
40377981:	8116f3        	l32r	a8, 0x403745dc
40377984:	e00800        	callx8	a8
40377987:	1616fe        	beqz	a6, 0x4037796c
4037798a:	f2a000        	movi	a15, 0
4037798d:	c14cf3        	l32r	a12, 0x403746c0
40377990:	d14ef3        	l32r	a13, 0x403746c8
40377993:	ed0f      	mov.n	a14, a15
40377995:	bd02      	mov.n	a11, a2
40377997:	ad03      	mov.n	a10, a3
40377999:	815bf3        	l32r	a8, 0x40374708
4037799c:	e00800        	callx8	a8
4037799f:	815bf3        	l32r	a8, 0x4037470c
403779a2:	e00800        	callx8	a8
403779a5:	815af3        	l32r	a8, 0x40374710
403779a8:	e00800        	callx8	a8
403779ab:	815af3        	l32r	a8, 0x40374714
403779ae:	e00800        	callx8	a8
403779b1:	214bf3        	l32r	a2, 0x403746e0
403779b4:	b912      	s32i.n	a11, a2, 4
403779b6:	a902      	s32i.n	a10, a2, 0
403779b8:	813cf3        	l32r	a8, 0x403746a8
403779bb:	e00800        	callx8	a8
403779be:	25a503        	call8	0x4037b410
403779c1:	0c0a      	movi.n	a10, 0
403779c3:	8155f3        	l32r	a8, 0x40374718
403779c6:	e00800        	callx8	a8
403779c9:	c146f3        	l32r	a12, 0x403746e4
403779cc:	b147f3        	l32r	a11, 0x403746e8
403779cf:	0c0a      	movi.n	a10, 0
403779d1:	257c00        	call8	0x40378194
403779d4:	665505        	bnei	a5, 5, 0x403779dd
403779d7:	8151f3        	l32r	a8, 0x4037471c
403779da:	e00800        	callx8	a8
403779dd:	8133f3        	l32r	a8, 0x403746ac
403779e0:	e00800        	callx8	a8
403779e3:	412bf3        	l32r	a4, 0x40374690
403779e6:	0c12      	movi.n	a2, 1
403779e8:	0c03      	movi.n	a3, 0
403779ea:	c02000        	memw
403779ed:	224400        	s8i	a2, a4, 0
403779f0:	c02000        	memw
403779f3:	324104        	s8i	a3, a1, 4
403779f6:	3d02      	mov.n	a3, a2
403779f8:	c02000        	memw
403779fb:	220104        	l8ui	a2, a1, 4
403779fe:	202074        	extui	a2, a2, 0, 8
40377a01:	9c42      	beqz.n	a2, 0x40377a19
40377a03:	20eb03        	rsr.prid	a2
40377a06:	202d04        	extui	a2, a2, 13, 1
40377a09:	e03211        	slli	a3, a2, 2
40377a0c:	2123f3        	l32r	a2, 0x40374698
40377a0f:	3a22      	add.n	a2, a2, a3
40377a11:	2802      	l32i.n	a2, a2, 0
40377a13:	e00200        	callx8	a2
40377a16:	1df0      	retw.n
40377a18:	00c020        	or	a12, a0, a0
40377a1b:	003241        	srli	a3, a0, 2
40377a1e:	04          	.byte	0x4
40377a1f:	c02000        	memw
40377a22:	520400        	l8ui	a5, a4, 0
40377a25:	c02000        	memw
40377a28:	220104        	l8ui	a2, a1, 4
40377a2b:	a2a064        	movi	a10, 100
40377a2e:	202074        	extui	a2, a2, 0, 8
40377a31:	502210        	and	a2, a2, a5
40377a34:	c02000        	memw
40377a37:	224104        	s8i	a2, a1, 4
40377a3a:	c02000        	memw
40377a3d:	520401        	l8ui	a5, a4, 1
40377a40:	c02000        	memw
40377a43:	220104        	l8ui	a2, a1, 4
40377a46:	202074        	extui	a2, a2, 0, 8
40377a49:	502210        	and	a2, a2, a5
40377a4c:	c02000        	memw
40377a4f:	224104        	s8i	a2, a1, 4
40377a52:	81e2f2        	l32r	a8, 0x403745dc
40377a55:	e00800        	callx8	a8
40377a58:	06e7ff        	j	0x403779f8
40377a5b:	0000e2        	remu	a0, a0, a0
40377a5e:	03000c        	lsi	f0, a0, 48
40377a61:	0556f0        	call0	0x40367fc4
40377a64:	070d01        	bnone	a13, a0, 0x40377a69
40377a67:	12d1ff        	addmi	a1, a1, 0xffffff00
40377a6a:	12c140        	addi	a1, a1, 64
40377a6d:	0941      	s32i.n	a0, a1, 16
40377a6f:	00d149        	s32e	a0, a1, -12
40377a72:	00e603        	rsr.ps	a0
40377a75:	0921      	s32i.n	a0, a1, 8
40377a77:	00b403        	rsr.epc4	a0
40377a7a:	0911      	s32i.n	a0, a1, 4
40377a7c:	00c149        	s32e	a0, a1, -16
40377a7f:	c2610f        	s32i	a12, a1, 60
40377a82:	d26110        	s32i	a13, a1, 64
40377a85:	054405        	call0	0x4037cec8
40377a88:	00ee03        	rsr.excvaddr	a0
40377a8b:	026115        	s32i	a0, a1, 84
40377a8e:	00e203        	rsr.interrupt	a0
40377a91:	000905        	extui	a0, a0, 25, 1
40377a94:	9c00      	beqz.n	a0, 0x40377aa8
40377a96:	00e403        	rsr.intenable	a0
40377a99:	4121f3        	l32r	a4, 0x40374720
40377a9c:	000410        	and	a0, a4, a0
40377a9f:	00e413        	wsr.intenable	a0
40377aa2:	0c70      	movi.n	a0, 7
40377aa4:	c60300        	j	0x40377ab7
40377aa7:	00          	.byte	00
40377aa8:	011ff3        	l32r	a0, 0x40374724
40377aab:	0800      	l32i.n	a0, a0, 0
40377aad:	cc30      	bnez.n	a0, 0x40377ab4
40377aaf:	0c60      	movi.n	a0, 6
40377ab1:	860000        	j	0x40377ab7
40377ab4:	02a005        	movi	a0, 5
40377ab7:	026114        	s32i	a0, a1, 80
40377aba:	00d403        	rsr.excsave4	a0
40377abd:	026103        	s32i	a0, a1, 12
40377ac0:	011af3        	l32r	a0, 0x40374728
40377ac3:	00e613        	wsr.ps	a0
40377ac6:	6d01      	mov.n	a6, a1
40377ac8:	156600        	call4	0x4037812c
40377acb:	054a05        	call0	0x4037cf6c
40377ace:	0821      	l32i.n	a0, a1, 8
40377ad0:	00e613        	wsr.ps	a0
40377ad3:	0811      	l32i.n	a0, a1, 4
40377ad5:	00b413        	wsr.epc4	a0
40377ad8:	0831      	l32i.n	a0, a1, 12
40377ada:	1841      	l32i.n	a1, a1, 16
40377adc:	102000        	rsync
40377adf:	00d403        	rsr.excsave4	a0
40377ae2:	103400        	rfi	4
40377ae5:	0111f3        	l32r	a0, 0x4037472c
40377ae8:	a00000        	jx	a0
40377aeb:	003641        	srli	a3, a0, 6
40377aee:	008110        	and	a8, a1, a0
40377af1:	f38702        	lsip	f15, a7, 8
40377af4:	0ed10ff3 	ee.vmulas.u8.qacc.ld.ip	q7, a0, 16, q3, q2
40377af8:	c110f3        	l32r	a12, 0x40374738
40377afb:	a110f3        	l32r	a10, 0x4037473c
40377afe:	b2a061        	movi	a11, 97
40377b01:	e5e50a        	call8	0x40382960
40377b04:	008211        	slli	a8, a2, 16
40377b07:	208820        	or	a8, a8, a2
40377b0a:	2170f2        	l32r	a2, 0x403744cc
40377b0d:	208820        	or	a8, a8, a2
40377b10:	210cf3        	l32r	a2, 0x40374740
40377b13:	c02000        	memw
40377b16:	8902      	s32i.n	a8, a2, 0
40377b18:	1df0      	retw.n
40377b1a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40377b1d:	410021        	l32r	a4, 0x4033ff20
40377b20:	08f3      	l32i.n	a0, a3, 60
40377b22:	c02000        	memw
40377b25:	822200        	l32i	a8, a2, 0
40377b28:	8020e4        	extui	a2, a8, 0, 15
40377b2b:	8090e5        	extui	a9, a8, 16, 15
40377b2e:	279902        	bne	a9, a2, 0x40377b34
40377b31:	961800        	bltz	a8, 0x40377b36
40377b34:	0c02      	movi.n	a2, 0
40377b36:	1df0      	retw.n
40377b38:	368100        	entry	a1, 64
40377b3b:	7cfa      	movi.n	a10, -1
40377b3d:	e5b40c        	call8	0x4038468c
40377b40:	0c0d      	movi.n	a13, 0
40377b42:	cd0d      	mov.n	a12, a13
40377b44:	bd0d      	mov.n	a11, a13
40377b46:	a2c108        	addi	a10, a1, 8
40377b49:	25ad09        	call8	0x4038161c
40377b4c:	252b03        	call8	0x4037ae00
40377b4f:	22a3e8        	movi	a2, 0x3e8
40377b52:	20baa2        	muluh	a11, a10, a2
40377b55:	c1fbf2        	l32r	a12, 0x40374744
40377b58:	d192f2        	l32r	a13, 0x403745a0
40377b5b:	20aa82        	mull	a10, a10, a2
40377b5e:	8109f3        	l32r	a8, 0x40374784
40377b61:	e00800        	callx8	a8
40377b64:	2d0a      	mov.n	a2, a10
40377b66:	8ba1      	addi.n	a10, a1, 8
40377b68:	65e309        	call8	0x403819a0
40377b6b:	cd02      	mov.n	a12, a2
40377b6d:	8ba1      	addi.n	a10, a1, 8
40377b6f:	0c3d      	movi.n	a13, 3
40377b71:	0c0b      	movi.n	a11, 0
40377b73:	e5ce09        	call8	0x40381860
40377b76:	cd02      	mov.n	a12, a2
40377b78:	0c4d      	movi.n	a13, 4
40377b7a:	8ba1      	addi.n	a10, a1, 8
40377b7c:	0c1b      	movi.n	a11, 1
40377b7e:	25ce09        	call8	0x40381860
40377b81:	0c1b      	movi.n	a11, 1
40377b83:	8ba1      	addi.n	a10, a1, 8
40377b85:	65f209        	call8	0x40381aac
40377b88:	8ba1      	addi.n	a10, a1, 8
40377b8a:	65f609        	call8	0x40381af0
40377b8d:	21eef2        	l32r	a2, 0x40374748
40377b90:	a2c110        	addi	a10, a1, 16
40377b93:	3802      	l32i.n	a3, a2, 0
40377b95:	2812      	l32i.n	a2, a2, 4
40377b97:	3941      	s32i.n	a3, a1, 16
40377b99:	2951      	s32i.n	a2, a1, 20
40377b9b:	65e009        	call8	0x403819a0
40377b9e:	a2c110        	addi	a10, a1, 16
40377ba1:	65e609        	call8	0x40381a08
40377ba4:	a2c110        	addi	a10, a1, 16
40377ba7:	a5f409        	call8	0x40381af0
40377baa:	21e8f2        	l32r	a2, 0x4037474c
40377bad:	a2c118        	addi	a10, a1, 24
40377bb0:	3802      	l32i.n	a3, a2, 0
40377bb2:	222201        	l32i	a2, a2, 4
40377bb5:	326106        	s32i	a3, a1, 24
40377bb8:	2971      	s32i.n	a2, a1, 28
40377bba:	65de09        	call8	0x403819a0
40377bbd:	a2c118        	addi	a10, a1, 24
40377bc0:	65e409        	call8	0x40381a08
40377bc3:	a2c118        	addi	a10, a1, 24
40377bc6:	a5f209        	call8	0x40381af0
40377bc9:	0c0a      	movi.n	a10, 0
40377bcb:	81d3f2        	l32r	a8, 0x40374718
40377bce:	e00800        	callx8	a8
40377bd1:	0c1a      	movi.n	a10, 1
40377bd3:	81d1f2        	l32r	a8, 0x40374718
40377bd6:	e00800        	callx8	a8
40377bd9:	81ebf2        	l32r	a8, 0x40374788
40377bdc:	e00800        	callx8	a8
40377bdf:	81ebf2        	l32r	a8, 0x4037478c
40377be2:	e00800        	callx8	a8
40377be5:	40eb03        	rsr.prid	a4
40377be8:	404d04        	extui	a4, a4, 13, 1
40377beb:	0c02      	movi.n	a2, 0
40377bed:	0c13      	movi.n	a3, 1
40377bef:	5d02      	mov.n	a5, a2
40377bf1:	405383        	moveqz	a5, a3, a4
40377bf4:	ad05      	mov.n	a10, a5
40377bf6:	a5b300        	call8	0x40378730
40377bf9:	ad05      	mov.n	a10, a5
40377bfb:	e5b100        	call8	0x40378718
40377bfe:	51d4f2        	l32r	a5, 0x40374750
40377c01:	3c08      	movi.n	a8, 48
40377c03:	c02000        	memw
40377c06:	8905      	s32i.n	a8, a5, 0
40377c08:	51d3f2        	l32r	a5, 0x40374754
40377c0b:	c02000        	memw
40377c0e:	8905      	s32i.n	a8, a5, 0
40377c10:	51d2f2        	l32r	a5, 0x40374758
40377c13:	c02000        	memw
40377c16:	8905      	s32i.n	a8, a5, 0
40377c18:	51d1f2        	l32r	a5, 0x4037475c
40377c1b:	c02000        	memw
40377c1e:	8905      	s32i.n	a8, a5, 0
40377c20:	51d0f2        	l32r	a5, 0x40374760
40377c23:	c02000        	memw
40377c26:	8905      	s32i.n	a8, a5, 0
40377c28:	51cff2        	l32r	a5, 0x40374764
40377c2b:	c02000        	memw
40377c2e:	8905      	s32i.n	a8, a5, 0
40377c30:	81cef2        	l32r	a8, 0x40374768
40377c33:	51cef2        	l32r	a5, 0x4037476c
40377c36:	c02000        	memw
40377c39:	9808      	l32i.n	a9, a8, 0
40377c3b:	509920        	or	a9, a9, a5
40377c3e:	c02000        	memw
40377c41:	9908      	s32i.n	a9, a8, 0
40377c43:	c02000        	memw
40377c46:	2908      	s32i.n	a2, a8, 0
40377c48:	81caf2        	l32r	a8, 0x40374770
40377c4b:	51caf2        	l32r	a5, 0x40374774
40377c4e:	c02000        	memw
40377c51:	9808      	l32i.n	a9, a8, 0
40377c53:	509920        	or	a9, a9, a5
40377c56:	c02000        	memw
40377c59:	9908      	s32i.n	a9, a8, 0
40377c5b:	c02000        	memw
40377c5e:	2908      	s32i.n	a2, a8, 0
40377c60:	81c6f2        	l32r	a8, 0x40374778
40377c63:	4c05      	movi.n	a5, 64
40377c65:	c02000        	memw
40377c68:	9808      	l32i.n	a9, a8, 0
40377c6a:	509920        	or	a9, a9, a5
40377c6d:	c02000        	memw
40377c70:	9908      	s32i.n	a9, a8, 0
40377c72:	c02000        	memw
40377c75:	2908      	s32i.n	a2, a8, 0
40377c77:	81c1f2        	l32r	a8, 0x4037477c
40377c7a:	0c25      	movi.n	a5, 2
40377c7c:	c02000        	memw
40377c7f:	9808      	l32i.n	a9, a8, 0
40377c81:	509920        	or	a9, a9, a5
40377c84:	c02000        	memw
40377c87:	9908      	s32i.n	a9, a8, 0
40377c89:	c02000        	memw
40377c8c:	9808      	l32i.n	a9, a8, 0
40377c8e:	7cd5      	movi.n	a5, -3
40377c90:	509910        	and	a9, a9, a5
40377c93:	c02000        	memw
40377c96:	9908      	s32i.n	a9, a8, 0
40377c98:	a57503        	call8	0x4037b3f4
40377c9b:	51b9f2        	l32r	a5, 0x40374780
40377c9e:	c02000        	memw
40377ca1:	2905      	s32i.n	a2, a5, 0
40377ca3:	27940d        	bne	a4, a2, 0x40377cb4
40377ca6:	ad03      	mov.n	a10, a3
40377ca8:	65a800        	call8	0x40378730
40377cab:	ad04      	mov.n	a10, a4
40377cad:	25a800        	call8	0x40378730
40377cb0:	06ffff        	j	0x40377cb0
40377cb3:	0020a2        	muluh	a2, a0, a0
40377cb6:	20a5a7        	ee.stf.64.xp	f10, f10, a2, a5
40377cb9:	00ad02        	andb	b10, b13, b0
40377cbc:	65a600        	call8	0x40378724
40377cbf:	ad03      	mov.n	a10, a3
40377cc1:	e5a600        	call8	0x40378730
40377cc4:	06faff        	j	0x40377cb0
40377cc7:	003641        	srli	a3, a0, 6
40377cca:	00          	.byte	00
40377ccb:	21b1f2        	l32r	a2, 0x40374790
40377cce:	c02000        	memw
40377cd1:	8802      	l32i.n	a8, a2, 0
40377cd3:	0c02      	movi.n	a2, 0
40377cd5:	808044        	extui	a8, a8, 0, 5
40377cd8:	279814        	bne	a8, a2, 0x40377cf0
40377cdb:	21aef2        	l32r	a2, 0x40374794
40377cde:	7cf9      	movi.n	a9, -1
40377ce0:	c02000        	memw
40377ce3:	2802      	l32i.n	a2, a2, 0
40377ce5:	0c18      	movi.n	a8, 1
40377ce7:	202044        	extui	a2, a2, 0, 5
40377cea:	208983        	moveqz	a8, a9, a2
40377ced:	802820        	or	a2, a8, a8
40377cf0:	1df0      	retw.n
40377cf2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40377cf5:	410081        	l32r	a4, 0x403580f8
40377cf8:	a8f2      	l32i.n	a10, a2, 60
40377cfa:	91a8f2        	l32r	a9, 0x4037479c
40377cfd:	8a82      	add.n	a8, a2, a8
40377cff:	87b92a        	bgeu	a9, a8, 0x40377d2d
40377d02:	81a7f2        	l32r	a8, 0x403747a0
40377d05:	91a7f2        	l32r	a9, 0x403747a4
40377d08:	8a82      	add.n	a8, a2, a8
40377d0a:	87b91f        	bgeu	a9, a8, 0x40377d2d
40377d0d:	91a6f2        	l32r	a9, 0x403747a8
40377d10:	a1a7f2        	l32r	a10, 0x403747ac
40377d13:	9a92      	add.n	a9, a2, a9
40377d15:	0c18      	movi.n	a8, 1
40377d17:	97ba0d        	bgeu	a10, a9, 0x40377d28
40377d1a:	9105f2        	l32r	a9, 0x40374530
40377d1d:	9a22      	add.n	a2, a2, a9
40377d1f:	9103f2        	l32r	a9, 0x4037452c
40377d22:	27b902        	bgeu	a9, a2, 0x40377d28
40377d25:	82a000        	movi	a8, 0
40377d28:	802004        	extui	a2, a8, 0, 1
40377d2b:	1df0      	retw.n
40377d2d:	0c18      	movi.n	a8, 1
40377d2f:	46fdff        	j	0x40377d28
40377d32:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40377d35:	410081        	l32r	a4, 0x40358138
40377d38:	9ef2919e 	ee.stf.128.xp	f12, f2, f15, f9, a9, a2
40377d3c:	f2          	.byte	0xf2
40377d3d:	8a82      	add.n	a8, a2, a8
40377d3f:	873906        	bltu	a9, a8, 0x40377d49
40377d42:	209034        	extui	a9, a2, 0, 4
40377d45:	0c18      	movi.n	a8, 1
40377d47:	8cd9      	beqz.n	a9, 0x40377d58
40377d49:	81f9f1        	l32r	a8, 0x40374530
40377d4c:	91f8f1        	l32r	a9, 0x4037452c
40377d4f:	8a22      	add.n	a2, a2, a8
40377d51:	0c18      	movi.n	a8, 1
40377d53:	27b901        	bgeu	a9, a2, 0x40377d58
40377d56:	0c08      	movi.n	a8, 0
40377d58:	802004        	extui	a2, a8, 0, 1
40377d5b:	1df0      	retw.n
40377d5d:	000000        	ill
40377d60:	364100        	entry	a1, 32
40377d63:	ad02      	mov.n	a10, a2
40377d65:	8c73      	beqz.n	a3, 0x40377d70
40377d67:	8194f2        	l32r	a8, 0x403747b8
40377d6a:	e00800        	callx8	a8
40377d6d:	1df0      	retw.n
40377d6f:	0081cb        	movf.s	f8, f1, b0
40377d72:	f1e008        	l32r	a15, 0x4033a0f4
40377d75:	00          	.byte	00
40377d76:	c6fcff        	j	0x40377d6d
40377d79:	000000        	ill
40377d7c:	364100        	entry	a1, 32
40377d7f:	822201        	l32i	a8, a2, 4
40377d82:	322202        	l32i	a3, a2, 8
40377d85:	92c8f0        	addi	a9, a8, -16
40377d88:	3902      	s32i.n	a3, a2, 0
40377d8a:	9809      	l32i.n	a9, a9, 0
40377d8c:	82c8f4        	addi	a8, a8, -12
40377d8f:	9922      	s32i.n	a9, a2, 8
40377d91:	a808      	l32i.n	a10, a8, 0
40377d93:	a912      	s32i.n	a10, a2, 4
40377d95:	e5f9ff        	call8	0x40377d34
40377d98:	0c02      	movi.n	a2, 0
40377d9a:	271a16        	beq	a10, a2, 0x40377db4
40377d9d:	27a30b        	bge	a3, a2, 0x40377dac
40377da0:	2187f2        	l32r	a2, 0x403747bc
40377da3:	203310        	and	a3, a3, a2
40377da6:	21a0f1        	l32r	a2, 0x40374428
40377da9:	203320        	or	a3, a3, a2
40377dac:	a2c3fd        	addi	a10, a3, -3
40377daf:	65f4ff        	call8	0x40377cf4
40377db2:	2d0a      	mov.n	a2, a10
40377db4:	202004        	extui	a2, a2, 0, 1
40377db7:	1df0      	retw.n
40377db9:	000000        	ill
40377dbc:	366100        	entry	a1, 48
40377dbf:	205220        	or	a5, a2, a2
40377dc2:	404074        	extui	a4, a4, 0, 8
40377dc5:	22a102        	movi	a2, 0x102
40377dc8:	e61502        	bgei	a5, 1, 0x40377dce
40377dcb:	862900        	j	0x40377e75
40377dce:	c2a010        	movi	a12, 16
40377dd1:	30b320        	or	a11, a3, a3
40377dd4:	ad01      	mov.n	a10, a1
40377dd6:	81b0f1        	l32r	a8, 0x40374498
40377dd9:	e00800        	callx8	a8
40377ddc:	a179f2        	l32r	a10, 0x403747c0
40377ddf:	bd04      	mov.n	a11, a4
40377de1:	e5f7ff        	call8	0x40377d60
40377de4:	b801      	l32i.n	a11, a1, 0
40377de6:	d6bb00        	bgez	a11, 0x40377df5
40377de9:	2174f2        	l32r	a2, 0x403747bc
40377dec:	20bb10        	and	a11, a11, a2
40377def:	218ef1        	l32r	a2, 0x40374428
40377df2:	20bb20        	or	a11, a11, a2
40377df5:	22cbfd        	addi	a2, a11, -3
40377df8:	322101        	l32i	a3, a1, 4
40377dfb:	169407        	beqz	a4, 0x40377e78
40377dfe:	a171f2        	l32r	a10, 0x403747c4
40377e01:	816df2        	l32r	a8, 0x403747b8
40377e04:	e00800        	callx8	a8
40377e07:	20a220        	or	a10, a2, a2
40377e0a:	8174f2        	l32r	a8, 0x403747dc
40377e0d:	e00800        	callx8	a8
40377e10:	a16ef2        	l32r	a10, 0x403747c8
40377e13:	8169f2        	l32r	a8, 0x403747b8
40377e16:	e00800        	callx8	a8
40377e19:	30a320        	or	a10, a3, a3
40377e1c:	8170f2        	l32r	a8, 0x403747dc
40377e1f:	e00800        	callx8	a8
40377e22:	a811      	l32i.n	a10, a1, 4
40377e24:	0c13      	movi.n	a3, 1
40377e26:	e5f0ff        	call8	0x40377d34
40377e29:	ac9a      	beqz.n	a10, 0x40377e56
40377e2b:	a801      	l32i.n	a10, a1, 0
40377e2d:	d6ba00        	bgez	a10, 0x40377e3c
40377e30:	2163f2        	l32r	a2, 0x403747bc
40377e33:	20aa10        	and	a10, a10, a2
40377e36:	217cf1        	l32r	a2, 0x40374428
40377e39:	20aa20        	or	a10, a10, a2
40377e3c:	a2cafd        	addi	a10, a10, -3
40377e3f:	65ebff        	call8	0x40377cf4
40377e42:	0c03      	movi.n	a3, 0
40377e44:	379a0e        	bne	a10, a3, 0x40377e56
40377e47:	2831      	l32i.n	a2, a1, 12
40377e49:	0c13      	movi.n	a3, 1
40377e4b:	8c72      	beqz.n	a2, 0x40377e56
40377e4d:	222214        	l32i	a2, a2, 80
40377e50:	22c2ec        	addi	a2, a2, -20
40377e53:	203a83        	moveqz	a3, a10, a2
40377e56:	2d05      	mov.n	a2, a5
40377e58:	0c16      	movi.n	a6, 1
40377e5a:	5821      	l32i.n	a5, a1, 8
40377e5c:	16050a        	beqz	a5, 0x40377f00
40377e5f:	ac73      	beqz.n	a3, 0x40377e8a
40377e61:	a15bf2        	l32r	a10, 0x403747d0
40377e64:	40b420        	or	a11, a4, a4
40377e67:	a5efff        	call8	0x40377d60
40377e6a:	22afff        	movi	a2, -1
40377e6d:	a15af2        	l32r	a10, 0x403747d8
40377e70:	bd04      	mov.n	a11, a4
40377e72:	e5eeff        	call8	0x40377d60
40377e75:	1df0      	retw.n
40377e77:	00a155        	extui	a10, a0, 17, 6
40377e7a:	f2cd03        	addi	a15, a13, 3
40377e7d:	bd02      	mov.n	a11, a2
40377e7f:	8187f1        	l32r	a8, 0x4037449c
40377e82:	e00800        	callx8	a8
40377e85:	46e6ff        	j	0x40377e22
40377e88:	00          	.byte	00
40377e89:	00ad01        	slli	a10, a13, 32
40377e8c:	101120        	or	a1, a1, a1
40377e8f:	e5eeff        	call8	0x40377d7c
40377e92:	b801      	l32i.n	a11, a1, 0
40377e94:	60aa30        	xor	a10, a10, a6
40377e97:	a03074        	extui	a3, a10, 0, 8
40377e9a:	d6bb00        	bgez	a11, 0x40377ea9
40377e9d:	5147f2        	l32r	a5, 0x403747bc
40377ea0:	50bb10        	and	a11, a11, a5
40377ea3:	5161f1        	l32r	a5, 0x40374428
40377ea6:	50bb20        	or	a11, a11, a5
40377ea9:	52cbfd        	addi	a5, a11, -3
40377eac:	722101        	l32i	a7, a1, 4
40377eaf:	16d403        	beqz	a4, 0x40377ef0
40377eb2:	a144f2        	l32r	a10, 0x403747c4
40377eb5:	8140f2        	l32r	a8, 0x403747b8
40377eb8:	e00800        	callx8	a8
40377ebb:	50a520        	or	a10, a5, a5
40377ebe:	8147f2        	l32r	a8, 0x403747dc
40377ec1:	e00800        	callx8	a8
40377ec4:	a141f2        	l32r	a10, 0x403747c8
40377ec7:	813cf2        	l32r	a8, 0x403747b8
40377eca:	e00800        	callx8	a8
40377ecd:	ad07      	mov.n	a10, a7
40377ecf:	8143f2        	l32r	a8, 0x403747dc
40377ed2:	e00800        	callx8	a8
40377ed5:	0b22      	addi.n	a2, a2, -1
40377ed7:	56f2f7        	bnez	a2, 0x40377e5a
40377eda:	5633f8        	bnez	a3, 0x40377e61
40377edd:	5821      	l32i.n	a5, a1, 8
40377edf:	2d03      	mov.n	a2, a3
40377ee1:	1685f8        	beqz	a5, 0x40377e6d
40377ee4:	a13cf2        	l32r	a10, 0x403747d4
40377ee7:	bd04      	mov.n	a11, a4
40377ee9:	65e7ff        	call8	0x40377d60
40377eec:	46dfff        	j	0x40377e6d
40377eef:	00a137        	ee.stf.64.xp	f10, f3, a0, a1
40377ef2:	f2cd07        	addi	a15, a13, 7
40377ef5:	bd05      	mov.n	a11, a5
40377ef7:	8169f1        	l32r	a8, 0x4037449c
40377efa:	e00800        	callx8	a8
40377efd:	06f5ff        	j	0x40377ed5
40377f00:	2d03      	mov.n	a2, a3
40377f02:	1673f6        	beqz	a3, 0x40377e6d
40377f05:	06d6ff        	j	0x40377e61
40377f08:	366100        	entry	a1, 48
40377f0b:	c2a010        	movi	a12, 16
40377f0e:	b2a000        	movi	a11, 0
40377f11:	10a120        	or	a10, a1, a1
40377f14:	8163f1        	l32r	a8, 0x403744a0
40377f17:	e00800        	callx8	a8
40377f1a:	8bc1      	addi.n	a12, a1, 8
40377f1c:	4bb1      	addi.n	a11, a1, 4
40377f1e:	ad01      	mov.n	a10, a1
40377f20:	e50000        	call8	0x40377f30
40377f23:	0c0c      	movi.n	a12, 0
40377f25:	bd01      	mov.n	a11, a1
40377f27:	ad02      	mov.n	a10, a2
40377f29:	25e9ff        	call8	0x40377dbc
40377f2c:	2d0a      	mov.n	a2, a10
40377f2e:	1df0      	retw.n
40377f30:	364100        	entry	a1, 32
40377f33:	e56b0c        	call8	0x403845f0
40377f36:	50c109        	l32e	a5, a1, -16
40377f39:	526200        	s32i	a5, a2, 0
40377f3c:	60d109        	l32e	a6, a1, -12
40377f3f:	50d609        	l32e	a5, a6, -12
40377f42:	526300        	s32i	a5, a3, 0
40377f45:	50c609        	l32e	a5, a6, -16
40377f48:	526400        	s32i	a5, a4, 0
40377f4b:	1df0      	retw.n
40377f4d:	000000        	ill
40377f50:	364100        	entry	a1, 32
40377f53:	30eb03        	rsr.prid	a3
40377f56:	303d04        	extui	a3, a3, 13, 1
40377f59:	567303        	bnez	a3, 0x40377f94
40377f5c:	4121f2        	l32r	a4, 0x403747e0
40377f5f:	c02000        	memw
40377f62:	3904      	s32i.n	a3, a4, 0
40377f64:	5121f2        	l32r	a5, 0x403747e8
40377f67:	7cfb      	movi.n	a11, -1
40377f69:	ad05      	mov.n	a10, a5
40377f6b:	e5b407        	call8	0x4037fab8
40377f6e:	0c04      	movi.n	a4, 0
40377f70:	c02000        	memw
40377f73:	3802      	l32i.n	a3, a2, 0
40377f75:	ad05      	mov.n	a10, a5
40377f77:	c02000        	memw
40377f7a:	4902      	s32i.n	a4, a2, 0
40377f7c:	e5c707        	call8	0x4037fbfc
40377f7f:	475304        	bbc	a3, a4, 0x40377f87
40377f82:	ad04      	mov.n	a10, a4
40377f84:	655e01        	call8	0x4037956c
40377f87:	276305        	bbci	a3, 2, 0x40377f90
40377f8a:	a2a064        	movi	a10, 100
40377f8d:	a5f7ff        	call8	0x40377f08
40377f90:	1df0      	retw.n
40377f92:	000031        	srai	a0, a0, 16
40377f95:	14          	.byte	0x14
40377f96:	f20c04        	l8ui	a15, a12, 4
40377f99:	c02000        	memw
40377f9c:	4903      	s32i.n	a4, a3, 0
40377f9e:	86f0ff        	j	0x40377f64
40377fa1:	000000        	ill
40377fa4:	364100        	entry	a1, 32
40377fa7:	a6220e        	blti	a2, 2, 0x40377fb9
40377faa:	d110f2        	l32r	a13, 0x403747ec
40377fad:	c110f2        	l32r	a12, 0x403747f0
40377fb0:	a111f2        	l32r	a10, 0x403747f4
40377fb3:	b2a075        	movi	a11, 117
40377fb6:	a59a0a        	call8	0x40382960
40377fb9:	410bf2        	l32r	a4, 0x403747e8
40377fbc:	b2afff        	movi	a11, -1
40377fbf:	ad04      	mov.n	a10, a4
40377fc1:	65af07        	call8	0x4037fab8
40377fc4:	810df2        	l32r	a8, 0x403747f8
40377fc7:	e09211        	slli	a9, a2, 2
40377fca:	9a88      	add.n	a8, a8, a9
40377fcc:	c02000        	memw
40377fcf:	9808      	l32i.n	a9, a8, 0
40377fd1:	ad04      	mov.n	a10, a4
40377fd3:	309920        	or	a9, a9, a3
40377fd6:	c02000        	memw
40377fd9:	9908      	s32i.n	a9, a8, 0
40377fdb:	25c207        	call8	0x4037fbfc
40377fde:	0c18      	movi.n	a8, 1
40377fe0:	cc82      	bnez.n	a2, 0x40377fec
40377fe2:	21fff1        	l32r	a2, 0x403747e0
40377fe5:	c02000        	memw
40377fe8:	8902      	s32i.n	a8, a2, 0
40377fea:	1df0      	retw.n
40377fec:	21fef1        	l32r	a2, 0x403747e4
40377fef:	86fcff        	j	0x40377fe5
40377ff2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40377ff5:	4100b2        	l32r	a4, 0x403647f8
40377ff8:	a00120        	or	a0, a1, a10
40377ffb:	a22065        	l32i	a10, a0, 0x194
40377ffe:	faff      	add.n	a15, a15, a15
40378000:	900000        	retw
40378003:	003641        	srli	a3, a0, 6
40378006:	00b2a0        	addx4	a11, a2, a0
40378009:	0420a2        	ee.vldbc.32.ip	q4, a0, 128
4037800c:	20          	.byte	0x20
4037800d:	65f9ff        	call8	0x40377fa4
40378010:	900000        	retw
40378013:	003641        	srli	a3, a0, 6
40378016:	00          	.byte	00
40378017:	20eb03        	rsr.prid	a2
4037801a:	202d04        	extui	a2, a2, 13, 1
4037801d:	31f7f1        	l32r	a3, 0x403747fc
40378020:	b02211        	slli	a2, a2, 5
40378023:	302280        	add	a2, a2, a3
40378026:	32a000        	movi	a3, 0
40378029:	8802      	l32i.n	a8, a2, 0
4037802b:	8c18      	beqz.n	a8, 0x40378030
4037802d:	e00800        	callx8	a8
40378030:	1b33      	addi.n	a3, a3, 1
40378032:	4b22      	addi.n	a2, a2, 4
40378034:	6683f1        	bnei	a3, 8, 0x40378029
40378037:	1df0      	retw.n
40378039:	000000        	ill
4037803c:	364100        	entry	a1, 32
4037803f:	40eb03        	rsr.prid	a4
40378042:	404d04        	extui	a4, a4, 13, 1
40378045:	31b7f1        	l32r	a3, 0x40374724
40378048:	8c94      	beqz.n	a4, 0x40378055
4037804a:	22a001        	movi	a2, 1
4037804d:	224300        	s8i	a2, a3, 0
40378050:	1df0      	retw.n
40378052:	000000        	ill
40378055:	220300        	l8ui	a2, a3, 0
40378058:	1642ff        	beqz	a2, 0x40378050
4037805b:	21e9f1        	l32r	a2, 0x40374800
4037805e:	20a220        	or	a10, a2, a2
40378061:	e59309        	call8	0x403819a0
40378064:	d2a001        	movi	a13, 1
40378067:	c2a258        	movi	a12, 0x258
4037806a:	40b420        	or	a11, a4, a4
4037806d:	ad02      	mov.n	a10, a2
4037806f:	257f09        	call8	0x40381860
40378072:	0c3d      	movi.n	a13, 3
40378074:	c2a4b0        	movi	a12, 0x4b0
40378077:	0c1b      	movi.n	a11, 1
40378079:	ad02      	mov.n	a10, a2
4037807b:	657e09        	call8	0x40381860
4037807e:	ad02      	mov.n	a10, a2
40378080:	25a009        	call8	0x40381a84
40378083:	ad02      	mov.n	a10, a2
40378085:	a5a609        	call8	0x40381af0
40378088:	424300        	s8i	a4, a3, 0
4037808b:	46f0ff        	j	0x40378050
4037808e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378091:	410081        	l32r	a4, 0x40358494
40378094:	dcf1      	bnez.n	a1, 0x403780b7
40378096:	0c19      	movi.n	a9, 1
40378098:	924800        	s8i	a9, a8, 0
4037809b:	81dbf1        	l32r	a8, 0x40374808
4037809e:	2908      	s32i.n	a2, a8, 0
403780a0:	0c08      	movi.n	a8, 0
403780a2:	c02000        	memw
403780a5:	8908      	s32i.n	a8, a8, 0
403780a7:	f04100        	break	1, 15
403780aa:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403780ad:	410081        	l32r	a4, 0x403584b0
403780b0:	d8f1      	l32i.n	a13, a1, 60
403780b2:	e00800        	callx8	a8
403780b5:	81d7f1        	l32r	a8, 0x40374814
403780b8:	e00800        	callx8	a8
403780bb:	81d7f1        	l32r	a8, 0x40374818
403780be:	e00800        	callx8	a8
403780c1:	a1d2f1        	l32r	a10, 0x4037480c
403780c4:	81d6f1        	l32r	a8, 0x4037481c
403780c7:	e00800        	callx8	a8
403780ca:	81d5f1        	l32r	a8, 0x40374820
403780cd:	e00800        	callx8	a8
403780d0:	a2a001        	movi	a10, 1
403780d3:	25a102        	call8	0x4037aae4
403780d6:	a2a000        	movi	a10, 0
403780d9:	81d2f1        	l32r	a8, 0x40374824
403780dc:	e00800        	callx8	a8
403780df:	900000        	retw
403780e2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403780e5:	410081        	l32r	a4, 0x403584e8
403780e8:	d1f1e0        	l32r	a13, 0x403704ac
403780eb:	0800      	l32i.n	a0, a0, 0
403780ed:	21cef1        	l32r	a2, 0x40374828
403780f0:	c02000        	memw
403780f3:	820200        	l8ui	a8, a2, 0
403780f6:	808074        	extui	a8, a8, 0, 8
403780f9:	8c48      	beqz.n	a8, 0x40378101
403780fb:	81cdf1        	l32r	a8, 0x40374830
403780fe:	e00800        	callx8	a8
40378101:	a2a064        	movi	a10, 100
40378104:	8136f1        	l32r	a8, 0x403745dc
40378107:	e00800        	callx8	a8
4037810a:	c6f7ff        	j	0x403780ed
4037810d:	000000        	ill
40378110:	364100        	entry	a1, 32
40378113:	20eb03        	rsr.prid	a2
40378116:	202d04        	extui	a2, a2, 13, 1
40378119:	6556ff        	call8	0x40377680
4037811c:	568a00        	bnez	a10, 0x40378128
4037811f:	65fc01        	call8	0x4037a0e4
40378122:	20a220        	or	a10, a2, a2
40378125:	a556ff        	call8	0x40377690
40378128:	1df0      	retw.n
4037812a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037812d:	410025        	l32r	a4, 0x40341530
40378130:	feff0c1b 	ee.vmulas.s16.qacc.ld.ip.qup	q7, a15, 0xfffffef0, q3, q6, q0, q4
40378134:	ad02      	mov.n	a10, a2
40378136:	81bff1        	l32r	a8, 0x40374834
40378139:	e00800        	callx8	a8
4037813c:	1df0      	retw.n
4037813e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378141:	4100e5        	l32r	a4, 0x40371544
40378144:	fcff      	bnez.n	a15, 0x40378187
40378146:	0c0b      	movi.n	a11, 0
40378148:	ad02      	mov.n	a10, a2
4037814a:	81baf1        	l32r	a8, 0x40374834
4037814d:	e00800        	callx8	a8
40378150:	1df0      	retw.n
40378152:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378155:	4100a5        	l32r	a4, 0x40361558
40378158:	9307a1        	lsi	f9, a7, 0x284
4037815b:	b7f1e5        	bbsi	a1, 27, 0x40378144
4037815e:	a907      	s32i.n	a10, a7, 0
40378160:	1df0      	retw.n
40378162:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378165:	4100a5        	l32r	a4, 0x40361568
40378168:	9207a1        	l8ui	a9, a7, 161
4037816b:	b3          	.byte	0xb3
4037816c:	f1b2af        	l32r	a15, 0x40364034
4037816f:	ff659407 	ee.vmulas.s16.accx.ld.ip.qup	q6, a15, 0x150, q5, q5, q1, q4
40378173:	900000        	retw
40378176:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378179:	410091        	l32r	a4, 0x4035c57c
4037817c:	b0f182        	mull	a15, a1, a11
4037817f:	a00182        	mull	a0, a1, a10
40378182:	4900      	s32i.n	a4, a0, 0
40378184:	91aff1        	l32r	a9, 0x40374840
40378187:	824900        	s8i	a8, a9, 0
4037818a:	81aef1        	l32r	a8, 0x40374844
4037818d:	e00800        	callx8	a8
40378190:	1df0      	retw.n
40378192:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378195:	610020        	l32r	a6, 0x40340198
40378198:	20          	.byte	0x20
40378199:	74a1ab        	ee.vst.h.64.ip	q5, a7, 0x108
4037819c:	f18c72        	l32r	a15, 0x40354bcc
4037819f:	a1abf1        	l32r	a10, 0x4037484c
403781a2:	261202        	beqi	a2, 1, 0x403781a8
403781a5:	a1aaf1        	l32r	a10, 0x40374850
403781a8:	c02000        	memw
403781ab:	922a1e        	l32i	a9, a10, 120
403781ae:	81aaf1        	l32r	a8, 0x40374858
403781b1:	909415        	extui	a9, a9, 20, 2
403781b4:	262908        	beqi	a9, 2, 0x403781c0
403781b7:	814cf1        	l32r	a8, 0x403746e8
403781ba:	263902        	beqi	a9, 3, 0x403781c0
403781bd:	81a5f1        	l32r	a8, 0x40374854
403781c0:	409411        	slli	a9, a4, 12
403781c3:	40b9c0        	sub	a11, a9, a4
403781c6:	0b9b      	addi.n	a9, a11, -1
403781c8:	8a99      	add.n	a9, a9, a8
403781ca:	b099c2        	quou	a9, a9, a11
403781cd:	904482        	mull	a4, a4, a9
403781d0:	c08811        	slli	a8, a8, 4
403781d3:	c02000        	memw
403781d6:	b85a      	l32i.n	a11, a10, 20
403781d8:	4088c2        	quou	a8, a8, a4
403781db:	41a0f1        	l32r	a4, 0x4037485c
403781de:	8024b4        	extui	a2, a8, 4, 12
403781e1:	40bb10        	and	a11, a11, a4
403781e4:	20bb20        	or	a11, a11, a2
403781e7:	c02000        	memw
403781ea:	b95a      	s32i.n	a11, a10, 20
403781ec:	c02000        	memw
403781ef:	b85a      	l32i.n	a11, a10, 20
403781f1:	219bf1        	l32r	a2, 0x40374860
403781f4:	808034        	extui	a8, a8, 0, 4
403781f7:	20bb10        	and	a11, a11, a2
403781fa:	c08801        	slli	a8, a8, 20
403781fd:	808b20        	or	a8, a11, a8
40378200:	c02000        	memw
40378203:	895a      	s32i.n	a8, a10, 20
40378205:	c02000        	memw
40378208:	222a1e        	l32i	a2, a10, 120
4037820b:	0b99      	addi.n	a9, a9, -1
4037820d:	c02000        	memw
40378210:	2931      	s32i.n	a2, a1, 12
40378212:	c02000        	memw
40378215:	8831      	l32i.n	a8, a1, 12
40378217:	2193f1        	l32r	a2, 0x40374864
4037821a:	909074        	extui	a9, a9, 0, 8
4037821d:	208810        	and	a8, a8, a2
40378220:	409911        	slli	a9, a9, 12
40378223:	909820        	or	a9, a8, a9
40378226:	c02000        	memw
40378229:	9931      	s32i.n	a9, a1, 12
4037822b:	c02000        	memw
4037822e:	2831      	l32i.n	a2, a1, 12
40378230:	c02000        	memw
40378233:	226a1e        	s32i	a2, a10, 120
40378236:	1df0      	retw.n
40378238:	364100        	entry	a1, 32
4037823b:	650400        	call8	0x40378280
4037823e:	a03a20        	or	a3, a10, a10
40378241:	e02311        	slli	a2, a3, 2
40378244:	302280        	add	a2, a2, a3
40378247:	e03211        	slli	a3, a2, 2
4037824a:	302280        	add	a2, a2, a3
4037824d:	e50600        	call8	0x403782bc
40378250:	e02211        	slli	a2, a2, 2
40378253:	aa22      	add.n	a2, a2, a10
40378255:	1df0      	retw.n
40378257:	003641        	srli	a3, a0, 6
4037825a:	002183        	moveqz	a2, a1, a0
4037825d:	f10c19        	l32r	a15, 0x4033e690
40378260:	c02000        	memw
40378263:	88d2      	l32i.n	a8, a2, 52
40378265:	0c02      	movi.n	a2, 0
40378267:	808225        	extui	a8, a8, 18, 3
4037826a:	cc28      	bnez.n	a8, 0x40378270
4037826c:	1df0      	retw.n
4037826e:	000007        	ee.stf.64.xp	f0, f0, a0, a0
40378271:	6805      	l32i.n	a6, a5, 0
40378273:	902230        	xor	a2, a2, a9
40378276:	202074        	extui	a2, a2, 0, 8
40378279:	808141        	srli	a8, a8, 1
4037827c:	86faff        	j	0x4037826a
4037827f:	003641        	srli	a3, a0, 6
40378282:	00          	.byte	00
40378283:	8179f1        	l32r	a8, 0x40374868
40378286:	c02000        	memw
40378289:	222816        	l32i	a2, a8, 88
4037828c:	c02000        	memw
4037828f:	222814        	l32i	a2, a8, 80
40378292:	202225        	extui	a2, a2, 18, 3
40378295:	567201        	bnez	a2, 0x403782b0
40378298:	c02000        	memw
4037829b:	92281b        	l32i	a9, a8, 108
4037829e:	909014        	extui	a9, a9, 0, 2
403782a1:	66190b        	bnei	a9, 1, 0x403782b0
403782a4:	c02000        	memw
403782a7:	922814        	l32i	a9, a8, 80
403782aa:	909825        	extui	a9, a9, 24, 3
403782ad:	261908        	beqi	a9, 1, 0x403782b9
403782b0:	c02000        	memw
403782b3:	222816        	l32i	a2, a8, 88
403782b6:	202815        	extui	a2, a2, 24, 2
403782b9:	1df0      	retw.n
403782bb:	003641        	srli	a3, a0, 6
403782be:	00816a        	maddn.s	f8, f1, f0
403782c1:	f1c020        	l32r	a15, 0x403405c4
403782c4:	00          	.byte	00
403782c5:	222816        	l32i	a2, a8, 88
403782c8:	c02000        	memw
403782cb:	922814        	l32i	a9, a8, 80
403782ce:	202705        	extui	a2, a2, 23, 1
403782d1:	909225        	extui	a9, a9, 18, 3
403782d4:	d02211        	slli	a2, a2, 3
403782d7:	9a22      	add.n	a2, a2, a9
403782d9:	20a024        	extui	a10, a2, 0, 3
403782dc:	dc8a      	bnez.n	a10, 0x403782f8
403782de:	c02000        	memw
403782e1:	92281b        	l32i	a9, a8, 108
403782e4:	909014        	extui	a9, a9, 0, 2
403782e7:	66190d        	bnei	a9, 1, 0x403782f8
403782ea:	c02000        	memw
403782ed:	822814        	l32i	a8, a8, 80
403782f0:	808825        	extui	a8, a8, 24, 3
403782f3:	0b88      	addi.n	a8, a8, -1
403782f5:	802a83        	moveqz	a2, a10, a8
403782f8:	1df0      	retw.n
403782fa:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403782fd:	4100b1        	l32r	a4, 0x40364700
40378300:	5bf1      	addi.n	a15, a1, 5
40378302:	20a220        	or	a10, a2, a2
40378305:	a51500        	call8	0x40378460
40378308:	a02a20        	or	a2, a10, a10
4037830b:	900000        	retw
4037830e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378311:	41000c        	l32r	a4, 0x4033b314
40378314:	0a65      	add.n	a6, a5, a0
40378316:	25011d        	call8	0x40395328
40378319:	f00000        	callx12	a0
4037831c:	364100        	entry	a1, 32
4037831f:	a22200        	l32i	a10, a2, 0
40378322:	30b320        	or	a11, a3, a3
40378325:	a55105        	call8	0x4037d840
40378328:	a02a20        	or	a2, a10, a10
4037832b:	1df0      	retw.n
4037832d:	000000        	ill
40378330:	364100        	entry	a1, 32
40378333:	a802      	l32i.n	a10, a2, 0
40378335:	cd03      	mov.n	a12, a3
40378337:	0c0b      	movi.n	a11, 0
40378339:	a5a205        	call8	0x4037dd64
4037833c:	2d0a      	mov.n	a2, a10
4037833e:	1df0      	retw.n
40378340:	364100        	entry	a1, 32
40378343:	814bf1        	l32r	a8, 0x40374870
40378346:	ad02      	mov.n	a10, a2
40378348:	8808      	l32i.n	a8, a8, 0
4037834a:	bd03      	mov.n	a11, a3
4037834c:	cd04      	mov.n	a12, a4
4037834e:	162800        	beqz	a8, 0x40378354
40378351:	e00800        	callx8	a8
40378354:	1df0      	retw.n
40378356:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378359:	410081        	l32r	a4, 0x4035875c
4037835c:	46f188        	j	0x4035a725
4037835f:	08cc      	l32i.n	a0, a12, 48
40378361:	282d      	l32i.n	a2, a13, 8
40378363:	081d      	l32i.n	a0, a13, 4
40378365:	f0          	.byte	0xf0
40378366:	9878      	l32i.n	a9, a8, 28
40378368:	8c89      	beqz.n	a9, 0x40378374
4037836a:	9838      	l32i.n	a9, a8, 12
4037836c:	972204        	blt	a2, a9, 0x40378374
4037836f:	9848      	l32i.n	a9, a8, 16
40378371:	9722ed        	blt	a2, a9, 0x40378362
40378374:	8888      	l32i.n	a8, a8, 32
40378376:	86f9ff        	j	0x40378360
40378379:	000000        	ill
4037837c:	366100        	entry	a1, 48
4037837f:	5179f0        	l32r	a5, 0x40374564
40378382:	0b42      	addi.n	a4, a2, -1
40378384:	47352e        	bltu	a5, a4, 0x403783b6
40378387:	076315        	bbci	a3, 0, 0x403783a0
4037838a:	0cc4      	movi.n	a4, 12
4037838c:	478326        	bany	a3, a4, 0x403783b6
4037838f:	0c24      	movi.n	a4, 2
40378391:	403320        	or	a3, a3, a4
40378394:	3b22      	addi.n	a2, a2, 3
40378396:	7cc4      	movi.n	a4, -4
40378398:	402210        	and	a2, a2, a4
4037839b:	060100        	j	0x403783a3
4037839e:	000017        	ee.stf.64.xp	f0, f1, a0, a0
403783a1:	e3          	.byte	0xe3
403783a2:	f00c05        	extui	a0, a15, 28, 1
403783a5:	6133f1        	l32r	a6, 0x40374874
403783a8:	e08511        	slli	a8, a5, 2
403783ab:	4806      	l32i.n	a4, a6, 0
403783ad:	8931      	s32i.n	a8, a1, 12
403783af:	cc94      	bnez.n	a4, 0x403783bc
403783b1:	1b55      	addi.n	a5, a5, 1
403783b3:	6635ee        	bnei	a5, 3, 0x403783a5
403783b6:	0c0a      	movi.n	a10, 0
403783b8:	462500        	j	0x40378451
403783bb:	00a874        	extui	a10, a0, 8, 8
403783be:	cc3a      	bnez.n	a10, 0x403783c5
403783c0:	4884      	l32i.n	a4, a4, 32
403783c2:	46faff        	j	0x403783af
403783c5:	822103        	l32i	a8, a1, 12
403783c8:	806480        	add	a6, a4, a8
403783cb:	6806      	l32i.n	a6, a6, 0
403783cd:	6703ef        	bnone	a3, a6, 0x403783c0
403783d0:	7814      	l32i.n	a7, a4, 4
403783d2:	6804      	l32i.n	a6, a4, 0
403783d4:	706620        	or	a6, a6, a7
403783d7:	7824      	l32i.n	a7, a4, 8
403783d9:	706620        	or	a6, a6, a7
403783dc:	306610        	and	a6, a6, a3
403783df:	3796dd        	bne	a6, a3, 0x403783c0
403783e2:	07636f        	bbci	a3, 0, 0x40378455
403783e5:	7834      	l32i.n	a7, a4, 12
403783e7:	614ef0        	l32r	a6, 0x40374520
403783ea:	9123f1        	l32r	a9, 0x40374878
403783ed:	6a77      	add.n	a7, a7, a6
403783ef:	773962        	bltu	a9, a7, 0x40378455
403783f2:	4b72      	addi.n	a7, a2, 4
403783f4:	bd07      	mov.n	a11, a7
403783f6:	9921      	s32i.n	a9, a1, 8
403783f8:	252c0a        	call8	0x403826bc
403783fb:	9821      	l32i.n	a9, a1, 8
403783fd:	16fafb        	beqz	a10, 0x403783c0
40378400:	6a6a      	add.n	a6, a10, a6
40378402:	aa77      	add.n	a7, a7, a10
40378404:	67b90d        	bgeu	a9, a6, 0x40378415
40378407:	d11df1        	l32r	a13, 0x4037487c
4037840a:	c11df1        	l32r	a12, 0x40374880
4037840d:	4c9b      	movi.n	a11, 73
4037840f:	a11df1        	l32r	a10, 0x40374884
40378412:	e5540a        	call8	0x40382960
40378415:	211cf1        	l32r	a2, 0x40374888
40378418:	2a27      	add.n	a2, a7, a2
4037841a:	27b90a        	bgeu	a9, a2, 0x40378428
4037841d:	d11bf1        	l32r	a13, 0x4037488c
40378420:	c118f1        	l32r	a12, 0x40374880
40378423:	4cab      	movi.n	a11, 74
40378425:	86f9ff        	j	0x4037840f
40378428:	a02014        	extui	a2, a10, 0, 2
4037842b:	8c92      	beqz.n	a2, 0x40378438
4037842d:	d118f1        	l32r	a13, 0x40374890
40378430:	c114f1        	l32r	a12, 0x40374880
40378433:	4cbb      	movi.n	a11, 75
40378435:	86f5ff        	j	0x4037840f
40378438:	707014        	extui	a7, a7, 0, 2
4037843b:	8c97      	beqz.n	a7, 0x40378448
4037843d:	d115f1        	l32r	a13, 0x40374894
40378440:	c110f1        	l32r	a12, 0x40374880
40378443:	4ccb      	movi.n	a11, 76
40378445:	86f1ff        	j	0x4037840f
40378448:	2114f1        	l32r	a2, 0x40374898
4037844b:	2a2a      	add.n	a2, a10, a2
4037844d:	a902      	s32i.n	a10, a2, 0
4037844f:	4ba2      	addi.n	a10, a2, 4
40378451:	2d0a      	mov.n	a2, a10
40378453:	1df0      	retw.n
40378455:	bd02      	mov.n	a11, a2
40378457:	65260a        	call8	0x403826bc
4037845a:	162af6        	beqz	a10, 0x403783c0
4037845d:	06fcff        	j	0x40378451
40378460:	364100        	entry	a1, 32
40378463:	30b320        	or	a11, a3, a3
40378466:	20a220        	or	a10, a2, a2
40378469:	25f1ff        	call8	0x4037837c
4037846c:	4d0a      	mov.n	a4, a10
4037846e:	ccaa      	bnez.n	a10, 0x4037847c
40378470:	8c82      	beqz.n	a2, 0x4037847c
40378472:	c10af1        	l32r	a12, 0x4037489c
40378475:	bd03      	mov.n	a11, a3
40378477:	ad02      	mov.n	a10, a2
40378479:	65ecff        	call8	0x40378340
4037847c:	2d04      	mov.n	a2, a4
4037847e:	1df0      	retw.n
40378480:	364100        	entry	a1, 32
40378483:	3107f1        	l32r	a3, 0x403748a0
40378486:	322300        	l32i	a3, a3, 0
40378489:	66030f        	bnei	a3, -1, 0x4037849c
4037848c:	b1f4ef        	l32r	a11, 0x4037445c
4037848f:	20a220        	or	a10, a2, a2
40378492:	e5fcff        	call8	0x40378460
40378495:	a03a20        	or	a3, a10, a10
40378498:	2d03      	mov.n	a2, a3
4037849a:	1df0      	retw.n
4037849c:	b1f0ef        	l32r	a11, 0x4037445c
4037849f:	27b302        	bgeu	a3, a2, 0x403784a5
403784a2:	b100f1        	l32r	a11, 0x403748a4
403784a5:	20a220        	or	a10, a2, a2
403784a8:	25edff        	call8	0x4037837c
403784ab:	3d0a      	mov.n	a3, a10
403784ad:	567afe        	bnez	a10, 0x40378498
403784b0:	1642fe        	beqz	a2, 0x40378498
403784b3:	4140f0        	l32r	a4, 0x403745b4
403784b6:	ad02      	mov.n	a10, a2
403784b8:	bd04      	mov.n	a11, a4
403784ba:	25ecff        	call8	0x4037837c
403784bd:	3d0a      	mov.n	a3, a10
403784bf:	565afd        	bnez	a10, 0x40378498
403784c2:	c1f9f0        	l32r	a12, 0x403748a8
403784c5:	bd04      	mov.n	a11, a4
403784c7:	ad02      	mov.n	a10, a2
403784c9:	65e7ff        	call8	0x40378340
403784cc:	06f2ff        	j	0x40378498
403784cf:	0036a1        	sll	a3, a6
403784d2:	004921        	srai	a4, a0, 9
403784d5:	4d02      	mov.n	a4, a2
403784d7:	2d01      	mov.n	a2, a1
403784d9:	29a1      	s32i.n	a2, a1, 40
403784db:	22c130        	addi	a2, a1, 48
403784de:	6941      	s32i.n	a6, a1, 16
403784e0:	2991      	s32i.n	a2, a1, 36
403784e2:	6134f0        	l32r	a6, 0x403745b4
403784e5:	0c82      	movi.n	a2, 8
403784e7:	5931      	s32i.n	a5, a1, 12
403784e9:	7951      	s32i.n	a7, a1, 20
403784eb:	29b1      	s32i.n	a2, a1, 44
403784ed:	52a018        	movi	a5, 24
403784f0:	cc43      	bnez.n	a3, 0x403784f8
403784f2:	2d03      	mov.n	a2, a3
403784f4:	460f00        	j	0x40378535
403784f7:	00          	.byte	00
403784f8:	28b1      	l32i.n	a2, a1, 44
403784fa:	88a1      	l32i.n	a8, a1, 40
403784fc:	4b62      	addi.n	a6, a2, 4
403784fe:	69b1      	s32i.n	a6, a1, 44
40378500:	67a508        	bge	a5, a6, 0x4037850c
40378503:	272503        	blt	a5, a2, 0x4037850a
40378506:	2c42      	movi.n	a2, 36
40378508:	29b1      	s32i.n	a2, a1, 44
4037850a:	8891      	l32i.n	a8, a1, 36
4037850c:	22210b        	l32i	a2, a1, 44
4037850f:	40a420        	or	a10, a4, a4
40378512:	208880        	add	a8, a8, a2
40378515:	82c8fc        	addi	a8, a8, -4
40378518:	6808      	l32i.n	a6, a8, 0
4037851a:	0b33      	addi.n	a3, a3, -1
4037851c:	bd06      	mov.n	a11, a6
4037851e:	e5e5ff        	call8	0x4037837c
40378521:	0c19      	movi.n	a9, 1
40378523:	0c08      	movi.n	a8, 0
40378525:	a08993        	movnez	a8, a9, a10
40378528:	808074        	extui	a8, a8, 0, 8
4037852b:	2d0a      	mov.n	a2, a10
4037852d:	cc48      	bnez.n	a8, 0x40378535
4037852f:	408983        	moveqz	a8, a9, a4
40378532:	16a8fb        	beqz	a8, 0x403784f0
40378535:	56d200        	bnez	a2, 0x40378546
40378538:	16a400        	beqz	a4, 0x40378546
4037853b:	c1dcf0        	l32r	a12, 0x403748ac
4037853e:	60b620        	or	a11, a6, a6
40378541:	ad04      	mov.n	a10, a4
40378543:	e5dfff        	call8	0x40378340
40378546:	1df0      	retw.n
40378548:	364100        	entry	a1, 32
4037854b:	16d202        	beqz	a2, 0x4037857c
4037854e:	81d8f0        	l32r	a8, 0x403748b0
40378551:	91c9f0        	l32r	a9, 0x40374878
40378554:	8a82      	add.n	a8, a2, a8
40378556:	873905        	bltu	a9, a8, 0x4037855f
40378559:	22c2fc        	addi	a2, a2, -4
4037855c:	222200        	l32i	a2, a2, 0
4037855f:	ad02      	mov.n	a10, a2
40378561:	65dfff        	call8	0x40378358
40378564:	ccda      	bnez.n	a10, 0x40378575
40378566:	d1d3f0        	l32r	a13, 0x403748b4
40378569:	c1d3f0        	l32r	a12, 0x403748b8
4037856c:	a1c6f0        	l32r	a10, 0x40374884
4037856f:	b2a17d        	movi	a11, 0x17d
40378572:	e53e0a        	call8	0x40382960
40378575:	a87a      	l32i.n	a10, a10, 28
40378577:	bd02      	mov.n	a11, a2
40378579:	a50d0a        	call8	0x40382654
4037857c:	1df0      	retw.n
4037857e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378581:	6100cc        	l32r	a6, 0x4036b584
40378584:	b2bd04        	l32ai	a11, a13, 16
40378587:	ad03      	mov.n	a10, a3
40378589:	25dfff        	call8	0x4037837c
4037858c:	5d0a      	mov.n	a5, a10
4037858e:	2d05      	mov.n	a2, a5
40378590:	1df0      	retw.n
40378592:	ccb3      	bnez.n	a3, 0x403785a1
40378594:	ad02      	mov.n	a10, a2
40378596:	25fbff        	call8	0x40378548
40378599:	0c05      	movi.n	a5, 0
4037859b:	c6fbff        	j	0x4037858e
4037859e:	000000        	ill
403785a1:	51fcef        	l32r	a5, 0x40374594
403785a4:	3735f1        	bltu	a5, a3, 0x40378599
403785a7:	51c2f0        	l32r	a5, 0x403748b0
403785aa:	61b3f0        	l32r	a6, 0x40374878
403785ad:	505280        	add	a5, a2, a5
403785b0:	573620        	bltu	a6, a5, 0x403785d4
403785b3:	52c2fc        	addi	a5, a2, -4
403785b6:	722500        	l32i	a7, a5, 0
403785b9:	70a720        	or	a10, a7, a7
403785bc:	a5d9ff        	call8	0x40378358
403785bf:	6d0a      	mov.n	a6, a10
403785c1:	0c18      	movi.n	a8, 1
403785c3:	ecba      	bnez.n	a10, 0x403785f2
403785c5:	d1bdf0        	l32r	a13, 0x403748bc
403785c8:	c1bef0        	l32r	a12, 0x403748c0
403785cb:	b2a19f        	movi	a11, 0x19f
403785ce:	a1adf0        	l32r	a10, 0x40374884
403785d1:	e5380a        	call8	0x40382960
403785d4:	20a220        	or	a10, a2, a2
403785d7:	25d8ff        	call8	0x40378358
403785da:	72a000        	movi	a7, 0
403785dd:	a06a20        	or	a6, a10, a10
403785e0:	8d07      	mov.n	a8, a7
403785e2:	779a0c        	bne	a10, a7, 0x403785f2
403785e5:	d1b5f0        	l32r	a13, 0x403748bc
403785e8:	c1b6f0        	l32r	a12, 0x403748c0
403785eb:	b2a1a8        	movi	a11, 0x1a8
403785ee:	06f7ff        	j	0x403785ce
403785f1:	00a876        	ee.ldf.64.xp	f10, f7, a0, a8
403785f4:	5d0a      	mov.n	a5, a10
403785f6:	8cba      	beqz.n	a10, 0x40378605
403785f8:	9816      	l32i.n	a9, a6, 4
403785fa:	5806      	l32i.n	a5, a6, 0
403785fc:	905520        	or	a5, a5, a9
403785ff:	922602        	l32i	a9, a6, 8
40378602:	905520        	or	a5, a5, a9
40378605:	505410        	and	a5, a4, a5
40378608:	0c19      	movi.n	a9, 1
4037860a:	479502        	bne	a5, a4, 0x40378610
4037860d:	97982c        	bne	a8, a9, 0x4037863d
40378610:	bd04      	mov.n	a11, a4
40378612:	ad03      	mov.n	a10, a3
40378614:	826103        	s32i	a8, a1, 12
40378617:	65d6ff        	call8	0x4037837c
4037861a:	5d0a      	mov.n	a5, a10
4037861c:	8831      	l32i.n	a8, a1, 12
4037861e:	167af7        	beqz	a10, 0x40378599
40378621:	a876      	l32i.n	a10, a6, 28
40378623:	bd07      	mov.n	a11, a7
40378625:	cc08      	bnez.n	a8, 0x40378629
40378627:	bd02      	mov.n	a11, a2
40378629:	e5050a        	call8	0x40382688
4037862c:	ec4a      	bnez.n	a10, 0x40378654
4037862e:	d1a5f0        	l32r	a13, 0x403748c4
40378631:	c1a3f0        	l32r	a12, 0x403748c0
40378634:	b2a1c6        	movi	a11, 0x1c6
40378637:	c6e4ff        	j	0x403785ce
4037863a:	000000        	ill
4037863d:	30c320        	or	a12, a3, a3
40378640:	20b220        	or	a11, a2, a2
40378643:	826103        	s32i	a8, a1, 12
40378646:	650a0a        	call8	0x403826ec
40378649:	5d0a      	mov.n	a5, a10
4037864b:	8831      	l32i.n	a8, a1, 12
4037864d:	56daf3        	bnez	a10, 0x4037858e
40378650:	06efff        	j	0x40378610
40378653:	00a0c3        	movf	a10, a0, b0
40378656:	63          	.byte	0x63
40378657:	20b220        	or	a11, a2, a2
4037865a:	50a520        	or	a10, a5, a5
4037865d:	818eef        	l32r	a8, 0x40374498
40378660:	e00800        	callx8	a8
40378663:	20a220        	or	a10, a2, a2
40378666:	25eeff        	call8	0x40378548
40378669:	46c8ff        	j	0x4037858e
4037866c:	364100        	entry	a1, 32
4037866f:	ad02      	mov.n	a10, a2
40378671:	cd04      	mov.n	a12, a4
40378673:	bd03      	mov.n	a11, a3
40378675:	a5f0ff        	call8	0x40378580
40378678:	2d0a      	mov.n	a2, a10
4037867a:	ccaa      	bnez.n	a10, 0x40378688
4037867c:	8c83      	beqz.n	a3, 0x40378688
4037867e:	c192f0        	l32r	a12, 0x403748c8
40378681:	bd04      	mov.n	a11, a4
40378683:	ad03      	mov.n	a10, a3
40378685:	a5cbff        	call8	0x40378340
40378688:	1df0      	retw.n
4037868a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037868d:	410020        	l32r	a4, 0x40340690
40378690:	422021        	l32i	a4, a0, 132
40378693:	83          	.byte	0x83
40378694:	f02222        	orb	b2, b2, b15
40378697:	006602        	andb	b6, b6, b0
4037869a:	11c170        	l32r	a1, 0x403549a0
4037869d:	ef30b320 	ee.vmulas.s8.accx.ld.ip.qup	q0, a14, 0, q4, q7, q3, q3
403786a1:	ad04      	mov.n	a10, a4
403786a3:	a5fcff        	call8	0x4037866c
403786a6:	2d0a      	mov.n	a2, a10
403786a8:	1df0      	retw.n
403786aa:	000000        	ill
403786ad:	c16bef        	l32r	a12, 0x4037445c
403786b0:	37b202        	bgeu	a2, a3, 0x403786b6
403786b3:	c17cf0        	l32r	a12, 0x403748a4
403786b6:	bd03      	mov.n	a11, a3
403786b8:	ad04      	mov.n	a10, a4
403786ba:	65ecff        	call8	0x40378580
403786bd:	2d0a      	mov.n	a2, a10
403786bf:	565afe        	bnez	a10, 0x403786a8
403786c2:	1623fe        	beqz	a3, 0x403786a8
403786c5:	51bbef        	l32r	a5, 0x403745b4
403786c8:	bd03      	mov.n	a11, a3
403786ca:	cd05      	mov.n	a12, a5
403786cc:	ad04      	mov.n	a10, a4
403786ce:	25ebff        	call8	0x40378580
403786d1:	2d0a      	mov.n	a2, a10
403786d3:	561afd        	bnez	a10, 0x403786a8
403786d6:	c17df0        	l32r	a12, 0x403748cc
403786d9:	bd05      	mov.n	a11, a5
403786db:	ad03      	mov.n	a10, a3
403786dd:	25c6ff        	call8	0x40378340
403786e0:	06f1ff        	j	0x403786a8
403786e3:	003641        	srli	a3, a0, 6
403786e6:	00          	.byte	00
403786e7:	3052a2        	muluh	a5, a2, a3
403786ea:	306282        	mull	a6, a2, a3
403786ed:	0c02      	movi.n	a2, 0
403786ef:	dc35      	bnez.n	a5, 0x40378706
403786f1:	bd04      	mov.n	a11, a4
403786f3:	ad06      	mov.n	a10, a6
403786f5:	65c8ff        	call8	0x4037837c
403786f8:	2d0a      	mov.n	a2, a10
403786fa:	8c8a      	beqz.n	a10, 0x40378706
403786fc:	cd06      	mov.n	a12, a6
403786fe:	bd05      	mov.n	a11, a5
40378700:	8168ef        	l32r	a8, 0x403744a0
40378703:	e00800        	callx8	a8
40378706:	cca2      	bnez.n	a2, 0x40378714
40378708:	8c83      	beqz.n	a3, 0x40378714
4037870a:	c171f0        	l32r	a12, 0x403748d0
4037870d:	bd04      	mov.n	a11, a4
4037870f:	ad03      	mov.n	a10, a3
40378711:	e5c2ff        	call8	0x40378340
40378714:	1df0      	retw.n
40378716:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378719:	4100ad        	l32r	a4, 0x40363b1c
4037871c:	02a5b1        	movi	a0, 0x5b1
4037871f:	071df0        	beq	a13, a0, 0x40378713
40378722:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378725:	4100ad        	l32r	a4, 0x40363b28
40378728:	0265ba        	s32i	a0, a5, 0x2e8
4037872b:	071df0        	beq	a13, a0, 0x4037871f
4037872e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378731:	4100a1        	l32r	a4, 0x40360b34
40378734:	68f0      	l32i.n	a6, a0, 60
40378736:	2c09      	movi.n	a9, 32
40378738:	c02000        	memw
4037873b:	880a      	l32i.n	a8, a10, 0
4037873d:	1c0b      	movi.n	a11, 16
4037873f:	20b983        	moveqz	a11, a9, a2
40378742:	b08820        	or	a8, a8, a11
40378745:	2d0b      	mov.n	a2, a11
40378747:	c02000        	memw
4037874a:	890a      	s32i.n	a8, a10, 0
4037874c:	1df0      	retw.n
4037874e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378751:	410081        	l32r	a4, 0x40358b54
40378754:	15f0ad        	call4	0x40326658
40378757:	02bd03        	l32ai	a0, a13, 12
4037875a:	cd04      	mov.n	a12, a4
4037875c:	871512        	beq	a5, a8, 0x40378772
4037875f:	8132ef        	l32r	a8, 0x40374428
40378762:	871516        	beq	a5, a8, 0x4037877c
40378765:	9159ef        	l32r	a9, 0x403744cc
40378768:	22a102        	movi	a2, 0x102
4037876b:	0c1d      	movi.n	a13, 1
4037876d:	971503        	beq	a5, a9, 0x40378774
40378770:	1df0      	retw.n
40378772:	0c2d      	movi.n	a13, 2
40378774:	e57107        	call8	0x4037fe94
40378777:	0c02      	movi.n	a2, 0
40378779:	c6fcff        	j	0x40378770
4037877c:	0c0d      	movi.n	a13, 0
4037877e:	86fcff        	j	0x40378774
40378781:	000000        	ill
40378784:	364100        	entry	a1, 32
40378787:	2154f0        	l32r	a2, 0x403748d8
4037878a:	206240        	rer	a2, a2
4037878d:	202004        	extui	a2, a2, 0, 1
40378790:	1df0      	retw.n
40378792:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378795:	410081        	l32r	a4, 0x40358b98
40378798:	52f0e0        	s32ri	a5, a0, 0x380
4037879b:	0800      	l32i.n	a0, a0, 0
4037879d:	214ff0        	l32r	a2, 0x403748dc
403787a0:	202a82        	mull	a2, a10, a2
403787a3:	1df0      	retw.n
403787a5:	000000        	ill
403787a8:	364100        	entry	a1, 32
403787ab:	814df0        	l32r	a8, 0x403748e0
403787ae:	e00800        	callx8	a8
403787b1:	82a04f        	movi	a8, 79
403787b4:	2128f0        	l32r	a2, 0x40374854
403787b7:	a7280b        	blt	a8, a10, 0x403787c6
403787ba:	8149f0        	l32r	a8, 0x403748e0
403787bd:	e00800        	callx8	a8
403787c0:	2147f0        	l32r	a2, 0x403748dc
403787c3:	202a82        	mull	a2, a10, a2
403787c6:	1df0      	retw.n
403787c8:	364100        	entry	a1, 32
403787cb:	a5fcff        	call8	0x40378794
403787ce:	a02a20        	or	a2, a10, a10
403787d1:	65fdff        	call8	0x403787a8
403787d4:	a0a2d2        	quos	a10, a2, a10
403787d7:	d08a11        	slli	a8, a10, 3
403787da:	a088c0        	sub	a8, a8, a10
403787dd:	9141f0        	l32r	a9, 0x403748e4
403787e0:	90a811        	slli	a10, a8, 7
403787e3:	80aac0        	sub	a10, a10, a8
403787e6:	d22900        	l32i	a13, a9, 0
403787e9:	813ff0        	l32r	a8, 0x403748e8
403787ec:	f0aa11        	slli	a10, a10, 1
403787ef:	0c02      	movi.n	a2, 0
403787f1:	b0ea03        	rsr.ccount	a11
403787f4:	c02000        	memw
403787f7:	c808      	l32i.n	a12, a8, 0
403787f9:	c02230        	xor	a2, a2, a12
403787fc:	d0cbc0        	sub	a12, a11, a13
403787ff:	a73cee        	bltu	a12, a10, 0x403787f1
40378802:	b909      	s32i.n	a11, a9, 0
40378804:	c02000        	memw
40378807:	8808      	l32i.n	a8, a8, 0
40378809:	202830        	xor	a2, a8, a2
4037880c:	1df0      	retw.n
4037880e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40378811:	410031        	l32r	a4, 0x40344c14
40378814:	36f0b2        	entry	a0, 0x5978
40378817:	afff30a3 	ee.fft.ams.s16.st.incp	q3, q6, a10, a15, q0, q7, q6, 0
4037881b:	202812        	andbc	b2, b8, b2
4037881e:	a52907        	call8	0x4037fab8
40378821:	cc72      	bnez.n	a2, 0x4037882c
40378823:	ad03      	mov.n	a10, a3
40378825:	653d07        	call8	0x4037fbfc
40378828:	1df0      	retw.n
4037882a:	000082        	mull	a0, a0, a0
4037882d:	120007        	l8ui	a1, a0, 7
40378830:	e815      	l32i.n	a14, a5, 4
40378832:	8812      	l32i.n	a8, a2, 4
40378834:	8c98      	beqz.n	a8, 0x40378841
40378836:	c02000        	memw
40378839:	9808      	l32i.n	a9, a8, 0
4037883b:	822202        	l32i	a8, a2, 8
4037883e:	870906        	bnone	a9, a8, 0x40378848
40378841:	8832      	l32i.n	a8, a2, 12
40378843:	a842      	l32i.n	a10, a2, 16
40378845:	e00800        	callx8	a8
40378848:	2852      	l32i.n	a2, a2, 20
4037884a:	c6f4ff        	j	0x40378821
4037884d:	000000        	ill
40378850:	364100        	entry	a1, 32
40378853:	e52307        	call8	0x4037fa90
40378856:	3125f0        	l32r	a3, 0x403748ec
40378859:	b2afff        	movi	a11, -1
4037885c:	30a320        	or	a10, a3, a3
4037885f:	a52507        	call8	0x4037fab8
40378862:	90eb03        	rsr.prid	a9
40378865:	909d04        	extui	a9, a9, 13, 1
40378868:	8123f0        	l32r	a8, 0x403748f4
4037886b:	2121f0        	l32r	a2, 0x403748f0
4037886e:	908880        	add	a8, a8, a9
40378871:	e04911        	slli	a4, a9, 2
40378874:	520800        	l8ui	a5, a8, 0
40378877:	4a22      	add.n	a2, a2, a4
40378879:	2802      	l32i.n	a2, a2, 0
4037887b:	8c15      	beqz.n	a5, 0x40378880
4037887d:	e5040a        	call8	0x403828cc
40378880:	52a001        	movi	a5, 1
40378883:	524800        	s8i	a5, a8, 0
40378886:	50e403        	rsr.intenable	a5
40378889:	ad02      	mov.n	a10, a2
4037888b:	25e00b        	call8	0x4038468c
4037888e:	811af0        	l32r	a8, 0x403748f8
40378891:	502210        	and	a2, a2, a5
40378894:	4a88      	add.n	a8, a8, a4
40378896:	2908      	s32i.n	a2, a8, 0
40378898:	651f07        	call8	0x4037fa90
4037889b:	ad03      	mov.n	a10, a3
4037889d:	e53507        	call8	0x4037fbfc
403788a0:	1df0      	retw.n
403788a2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403788a5:	4100a5        	l32r	a4, 0x40361ca8
403788a8:	1e072110 	ee.vmulas.s16.qacc.ld.ip.qup	q0, a1, 112, q0, q0, q2, q1
403788ac:	f0          	.byte	0xf0
403788ad:	b2afff        	movi	a11, -1
403788b0:	20a220        	or	a10, a2, a2
403788b3:	652007        	call8	0x4037fab8
403788b6:	b0eb03        	rsr.prid	a11
403788b9:	b0bd04        	extui	a11, a11, 13, 1
403788bc:	910ff0        	l32r	a9, 0x403748f8
403788bf:	e08b11        	slli	a8, a11, 2
403788c2:	809980        	add	a9, a9, a8
403788c5:	810bf0        	l32r	a8, 0x403748f4
403788c8:	a809      	l32i.n	a10, a9, 0
403788ca:	ba88      	add.n	a8, a8, a11
403788cc:	920800        	l8ui	a9, a8, 0
403788cf:	562900        	bnez	a9, 0x403788d5
403788d2:	a5ff09        	call8	0x403828cc
403788d5:	92a000        	movi	a9, 0
403788d8:	924800        	s8i	a9, a8, 0
403788db:	a5d90b        	call8	0x40384674
403788de:	251b07        	call8	0x4037fa90
403788e1:	ad02      	mov.n	a10, a2
403788e3:	a53107        	call8	0x4037fbfc
403788e6:	1df0      	retw.n
403788e8:	364100        	entry	a1, 32
403788eb:	cc62      	bnez.n	a2, 0x403788f5
403788ed:	22a102        	movi	a2, 0x102
403788f0:	1df0      	retw.n
403788f2:	000000        	ill
403788f5:	a51907        	call8	0x4037fa90
403788f8:	31fdef        	l32r	a3, 0x403748ec
403788fb:	b2afff        	movi	a11, -1
403788fe:	30a320        	or	a10, a3, a3
40378901:	651b07        	call8	0x4037fab8
40378904:	8812      	l32i.n	a8, a2, 4
40378906:	bc28      	beqz.n	a8, 0x4037893c
40378908:	921800        	l16ui	a9, a8, 0
4037890b:	7cea      	movi.n	a10, -2
4037890d:	a09910        	and	a9, a9, a10
40378910:	925800        	s16i	a9, a8, 0
40378913:	b808      	l32i.n	a11, a8, 0
40378915:	90bb01        	slli	a11, a11, 23
40378918:	b0b831        	srai	a11, a11, 24
4037891b:	2802      	l32i.n	a2, a2, 0
4037891d:	968b02        	bltz	a11, 0x40378949
40378920:	a802      	l32i.n	a10, a2, 0
40378922:	a0c145        	extui	a12, a10, 17, 5
40378925:	a0a005        	extui	a10, a10, 16, 1
40378928:	81f5ef        	l32r	a8, 0x403748fc
4037892b:	e00800        	callx8	a8
4037892e:	251607        	call8	0x4037fa90
40378931:	ad03      	mov.n	a10, a3
40378933:	a52c07        	call8	0x4037fbfc
40378936:	0c02      	movi.n	a2, 0
40378938:	06edff        	j	0x403788f0
4037893b:	008802        	andb	b8, b8, b0
4037893e:	b808      	l32i.n	a11, a8, 0
40378940:	e0bb11        	slli	a11, a11, 2
40378943:	46f4ff        	j	0x40378918
40378946:	000000        	ill
40378949:	80eb03        	rsr.prid	a8
4037894c:	808d04        	extui	a8, a8, 13, 1
4037894f:	a802      	l32i.n	a10, a2, 0
40378951:	a02005        	extui	a2, a10, 16, 1
40378954:	879295        	bne	a2, a8, 0x403788ed
40378957:	a0a145        	extui	a10, a10, 17, 5
4037895a:	81e9ef        	l32r	a8, 0x40374900
4037895d:	e00800        	callx8	a8
40378960:	86f2ff        	j	0x4037892e
40378963:	003641        	srli	a3, a0, 6
40378966:	001672        	salt	a1, a6, a0
40378969:	0a65      	add.n	a6, a5, a0
4037896b:	120731        	l8ui	a1, a7, 49
4037896e:	dfefb2af 	ee.fft.cmul.s16.st.xp	q7, q3, q2, a13, a15, 5, 2, 3
40378972:	ffad0325 	ee.vmulas.s8.accx.ld.ip.qup	q2, a15, 0x1d0, q6, q4, q0, q3
40378976:	140788        	ee.vld.h.64.ip	q0, a1, 56
40378979:	1216e8        	l16ui	a1, a6, 0x1d0
4037897c:	059218        	call0	0x403912a0
4037897f:	000c1a        	sub.s	f0, f12, f0
40378982:	a09920        	or	a9, a9, a10
40378985:	925800        	s16i	a9, a8, 0
40378988:	b808      	l32i.n	a11, a8, 0
4037898a:	8802      	l32i.n	a8, a2, 0
4037898c:	b0b174        	extui	a11, a11, 1, 8
4037898f:	8818      	l32i.n	a8, a8, 4
40378991:	00bb23        	sext	a11, a11, 7
40378994:	ccd8      	bnez.n	a8, 0x403789a5
40378996:	d1dbef        	l32r	a13, 0x40374904
40378999:	c1dbef        	l32r	a12, 0x40374908
4037899c:	a1dcef        	l32r	a10, 0x4037490c
4037899f:	b2a2f1        	movi	a11, 0x2f1
403789a2:	e5fb09        	call8	0x40382960
403789a5:	9808      	l32i.n	a9, a8, 0
403789a7:	909901        	slli	a9, a9, 23
403789aa:	909831        	srai	a9, a9, 24
403789ad:	b79905        	bne	a9, a11, 0x403789b6
403789b0:	921800        	l16ui	a9, a8, 0
403789b3:	07693e        	bbci	a9, 0, 0x403789f5
403789b6:	8858      	l32i.n	a8, a8, 20
403789b8:	5698fe        	bnez	a8, 0x403789a5
403789bb:	969b03        	bltz	a11, 0x403789f8
403789be:	2802      	l32i.n	a2, a2, 0
403789c0:	0c6c      	movi.n	a12, 6
403789c2:	a802      	l32i.n	a10, a2, 0
403789c4:	a0a005        	extui	a10, a10, 16, 1
403789c7:	81cdef        	l32r	a8, 0x403748fc
403789ca:	e00800        	callx8	a8
403789cd:	250c07        	call8	0x4037fa90
403789d0:	30a320        	or	a10, a3, a3
403789d3:	a52207        	call8	0x4037fbfc
403789d6:	22a000        	movi	a2, 0
403789d9:	900000        	retw
403789dc:	8802      	l32i.n	a8, a2, 0
403789de:	b808      	l32i.n	a11, a8, 0
403789e0:	e0bb11        	slli	a11, a11, 2
403789e3:	b0b831        	srai	a11, a11, 24
403789e6:	46f4ff        	j	0x403789bb
403789e9:	a0a145        	extui	a10, a10, 17, 5
403789ec:	81c9ef        	l32r	a8, 0x40374910
403789ef:	e00800        	callx8	a8
403789f2:	c6f5ff        	j	0x403789cd
403789f5:	d64bfd        	bgez	a11, 0x403789cd
403789f8:	822200        	l32i	a8, a2, 0
403789fb:	20eb03        	rsr.prid	a2
403789fe:	202d04        	extui	a2, a2, 13, 1
40378a01:	a22800        	l32i	a10, a8, 0
40378a04:	a08005        	extui	a8, a10, 16, 1
40378a07:	2718de        	beq	a8, a2, 0x403789e9
40378a0a:	650807        	call8	0x4037fa90
40378a0d:	ad03      	mov.n	a10, a3
40378a0f:	e51e07        	call8	0x4037fbfc
40378a12:	22a102        	movi	a2, 0x102
40378a15:	06f0ff        	j	0x403789d9
40378a18:	364100        	entry	a1, 32
40378a1b:	8d02      	mov.n	a8, a2
40378a1d:	2154ef        	l32r	a2, 0x40374770
40378a20:	663802        	bnei	a8, 3, 0x40378a26
40378a23:	2155ef        	l32r	a2, 0x40374778
40378a26:	c02000        	memw
40378a29:	a802      	l32i.n	a10, a2, 0
40378a2b:	2c09      	movi.n	a9, 32
40378a2d:	26280d        	beqi	a8, 2, 0x40378a3e
40378a30:	92c8fd        	addi	a9, a8, -3
40378a33:	b2a200        	movi	a11, 0x200
40378a36:	0c42      	movi.n	a2, 4
40378a38:	902b83        	moveqz	a2, a11, a9
40378a3b:	209220        	or	a9, a2, a2
40378a3e:	0c02      	movi.n	a2, 0
40378a40:	978a29        	bany	a10, a9, 0x40378a6d
40378a43:	21b4ef        	l32r	a2, 0x40374914
40378a46:	663802        	bnei	a8, 3, 0x40378a4c
40378a49:	21b3ef        	l32r	a2, 0x40374918
40378a4c:	c02000        	memw
40378a4f:	2802      	l32i.n	a2, a2, 0
40378a51:	2c09      	movi.n	a9, 32
40378a53:	26280a        	beqi	a8, 2, 0x40378a61
40378a56:	82c8fd        	addi	a8, a8, -3
40378a59:	92a200        	movi	a9, 0x200
40378a5c:	0c4a      	movi.n	a10, 4
40378a5e:	809a93        	movnez	a9, a10, a8
40378a61:	902210        	and	a2, a2, a9
40378a64:	0c08      	movi.n	a8, 0
40378a66:	0c19      	movi.n	a9, 1
40378a68:	208993        	movnez	a8, a9, a2
40378a6b:	2d08      	mov.n	a2, a8
40378a6d:	1df0      	retw.n
40378a6f:	0036c1        	mul16u	a3, a6, a0
40378a72:	002030        	xor	a2, a0, a0
40378a75:	04          	.byte	0x4
40378a76:	163336        	beqz	a3, 0x40378ddd
40378a79:	42a000        	movi	a4, 0
40378a7c:	1b54      	addi.n	a5, a4, 1
40378a7e:	ad05      	mov.n	a10, a5
40378a80:	65f9ff        	call8	0x40378a18
40378a83:	167a00        	beqz	a10, 0x40378a8e
40378a86:	ad04      	mov.n	a10, a4
40378a88:	8124ef        	l32r	a8, 0x40374718
40378a8b:	e00800        	callx8	a8
40378a8e:	4d05      	mov.n	a4, a5
40378a90:	6635e8        	bnei	a5, 3, 0x40378a7c
40378a93:	e53502        	call8	0x4037adf0
40378a96:	568300        	bnez	a3, 0x40378aa2
40378a99:	41a2ef        	l32r	a4, 0x40374924
40378a9c:	420400        	l8ui	a4, a4, 0
40378a9f:	562439        	bnez	a4, 0x40378e35
40378aa2:	0c04      	movi.n	a4, 0
40378aa4:	662a05        	bnei	a10, 2, 0x40378aad
40378aa7:	52abff        	movi	a5, 0xfffffbff
40378aaa:	502210        	and	a2, a2, a5
40378aad:	0c1a      	movi.n	a10, 1
40378aaf:	25920b        	call8	0x403843d0
40378ab2:	a2c130        	addi	a10, a1, 48
40378ab5:	e55d02        	call8	0x4037b094
40378ab8:	a59302        	call8	0x4037b3f4
40378abb:	719bef        	l32r	a7, 0x40374928
40378abe:	58a7      	l32i.n	a5, a7, 40
40378ac0:	076564        	bbci	a5, 0, 0x40378b28
40378ac3:	58b7      	l32i.n	a5, a7, 44
40378ac5:	9199ef        	l32r	a9, 0x4037492c
40378ac8:	508745        	extui	a8, a5, 23, 5
40378acb:	c02000        	memw
40378ace:	6809      	l32i.n	a6, a9, 0
40378ad0:	50a605        	extui	a10, a5, 22, 1
40378ad3:	5197ef        	l32r	a5, 0x40374930
40378ad6:	506610        	and	a6, a6, a5
40378ad9:	505801        	slli	a5, a8, 27
40378adc:	506620        	or	a6, a6, a5
40378adf:	c02000        	memw
40378ae2:	6909      	s32i.n	a6, a9, 0
40378ae4:	9194ef        	l32r	a9, 0x40374934
40378ae7:	617dee        	l32r	a6, 0x403744dc
40378aea:	c02000        	memw
40378aed:	5809      	l32i.n	a5, a9, 0
40378aef:	605510        	and	a5, a5, a6
40378af2:	206a01        	slli	a6, a10, 30
40378af5:	605520        	or	a5, a5, a6
40378af8:	c02000        	memw
40378afb:	5909      	s32i.n	a5, a9, 0
40378afd:	ad08      	mov.n	a10, a8
40378aff:	8911      	s32i.n	a8, a1, 4
40378b01:	81a6ef        	l32r	a8, 0x4037499c
40378b04:	e00800        	callx8	a8
40378b07:	8811      	l32i.n	a8, a1, 4
40378b09:	518bef        	l32r	a5, 0x40374938
40378b0c:	d0a811        	slli	a10, a8, 3
40378b0f:	80aac0        	sub	a10, a10, a8
40378b12:	d0aa11        	slli	a10, a10, 3
40378b15:	aaa5      	add.n	a10, a5, a10
40378b17:	680a      	l32i.n	a6, a10, 0
40378b19:	883a      	l32i.n	a8, a10, 12
40378b1b:	c02000        	memw
40378b1e:	5806      	l32i.n	a5, a6, 0
40378b20:	805520        	or	a5, a5, a8
40378b23:	c02000        	memw
40378b26:	5906      	s32i.n	a5, a6, 0
40378b28:	58a7      	l32i.n	a5, a7, 40
40378b2a:	17655d        	bbci	a5, 1, 0x40378b8b
40378b2d:	88b7      	l32i.n	a8, a7, 44
40378b2f:	5141ee        	l32r	a5, 0x40374434
40378b32:	0c0b      	movi.n	a11, 0
40378b34:	508810        	and	a8, a8, a5
40378b37:	3c0c      	movi.n	a12, 48
40378b39:	b72c02        	blt	a12, a11, 0x40378b3f
40378b3c:	56c82f        	bnez	a8, 0x40378e3c
40378b3f:	a182ef        	l32r	a10, 0x40374948
40378b42:	6182ef        	l32r	a6, 0x4037494c
40378b45:	c02000        	memw
40378b48:	580a      	l32i.n	a5, a10, 0
40378b4a:	605520        	or	a5, a5, a6
40378b4d:	c02000        	memw
40378b50:	590a      	s32i.n	a5, a10, 0
40378b52:	68a7      	l32i.n	a6, a7, 40
40378b54:	5138ee        	l32r	a5, 0x40374434
40378b57:	609f04        	extui	a9, a6, 15, 1
40378b5a:	68b7      	l32i.n	a6, a7, 44
40378b5c:	c02000        	memw
40378b5f:	880a      	l32i.n	a8, a10, 0
40378b61:	506610        	and	a6, a6, a5
40378b64:	5135ee        	l32r	a5, 0x40374438
40378b67:	508810        	and	a8, a8, a5
40378b6a:	806620        	or	a6, a6, a8
40378b6d:	8171ef        	l32r	a8, 0x40374934
40378b70:	c02000        	memw
40378b73:	690a      	s32i.n	a6, a10, 0
40378b75:	c02000        	memw
40378b78:	5808      	l32i.n	a5, a8, 0
40378b7a:	6175ef        	l32r	a6, 0x40374950
40378b7d:	605510        	and	a5, a5, a6
40378b80:	106901        	slli	a6, a9, 31
40378b83:	605520        	or	a5, a5, a6
40378b86:	c02000        	memw
40378b89:	5908      	s32i.n	a5, a8, 0
40378b8b:	16e338        	beqz	a3, 0x40378f1d
40378b8e:	8184ef        	l32r	a8, 0x403749a0
40378b91:	e00800        	callx8	a8
40378b94:	8c1a      	beqz.n	a10, 0x40378b99
40378b96:	e57101        	call8	0x4037a2b4
40378b99:	58a7      	l32i.n	a5, a7, 40
40378b9b:	87e502        	bbsi	a5, 8, 0x40378ba1
40378b9e:	c6e400        	j	0x40378f35
40378ba1:	0c05      	movi.n	a5, 0
40378ba3:	816cef        	l32r	a8, 0x40374954
40378ba6:	52510d        	s16i	a5, a1, 26
40378ba9:	525114        	s16i	a5, a1, 40
40378bac:	c02000        	memw
40378baf:	d22845        	l32i	a13, a8, 0x114
40378bb2:	0cd6      	movi.n	a6, 13
40378bb4:	d0db45        	extui	a13, a13, 27, 5
40378bb7:	0b5d      	addi.n	a5, a13, -1
40378bb9:	57b602        	bgeu	a6, a5, 0x40378bbf
40378bbc:	46dd00        	j	0x40378f35
40378bbf:	c02000        	memw
40378bc2:	522843        	l32i	a5, a8, 0x10c
40378bc5:	67d502        	bbs	a5, a6, 0x40378bcb
40378bc8:	46da00        	j	0x40378f35
40378bcb:	c02000        	memw
40378bce:	522843        	l32i	a5, a8, 0x10c
40378bd1:	6161ef        	l32r	a6, 0x40374958
40378bd4:	9163ef        	l32r	a9, 0x40374960
40378bd7:	605510        	and	a5, a5, a6
40378bda:	c02000        	memw
40378bdd:	526843        	s32i	a5, a8, 0x10c
40378be0:	c02000        	memw
40378be3:	522843        	l32i	a5, a8, 0x10c
40378be6:	615def        	l32r	a6, 0x4037495c
40378be9:	4c0a      	movi.n	a10, 64
40378beb:	605510        	and	a5, a5, a6
40378bee:	c02000        	memw
40378bf1:	526843        	s32i	a5, a8, 0x10c
40378bf4:	c02000        	memw
40378bf7:	622843        	l32i	a6, a8, 0x10c
40378bfa:	515aef        	l32r	a5, 0x40374964
40378bfd:	906620        	or	a6, a6, a9
40378c00:	c02000        	memw
40378c03:	626843        	s32i	a6, a8, 0x10c
40378c06:	c02000        	memw
40378c09:	622843        	l32i	a6, a8, 0x10c
40378c0c:	b2c128        	addi	a11, a1, 40
40378c0f:	506610        	and	a6, a6, a5
40378c12:	5155ef        	l32r	a5, 0x40374968
40378c15:	c02000        	memw
40378c18:	626843        	s32i	a6, a8, 0x10c
40378c1b:	c02000        	memw
40378c1e:	622517        	l32i	a6, a5, 92
40378c21:	61c3ee        	l32r	a6, 0x40374730
40378c24:	c02000        	memw
40378c27:	722517        	l32i	a7, a5, 92
40378c2a:	607710        	and	a7, a7, a6
40378c2d:	c02000        	memw
40378c30:	726517        	s32i	a7, a5, 92
40378c33:	c02000        	memw
40378c36:	722844        	l32i	a7, a8, 0x110
40378c39:	714cef        	l32r	a7, 0x4037496c
40378c3c:	c02000        	memw
40378c3f:	922844        	l32i	a9, a8, 0x110
40378c42:	709910        	and	a9, a9, a7
40378c45:	c02000        	memw
40378c48:	926844        	s32i	a9, a8, 0x110
40378c4b:	c02000        	memw
40378c4e:	922813        	l32i	a9, a8, 76
40378c51:	a09920        	or	a9, a9, a10
40378c54:	c02000        	memw
40378c57:	926813        	s32i	a9, a8, 76
40378c5a:	c02000        	memw
40378c5d:	922813        	l32i	a9, a8, 76
40378c60:	a2a080        	movi	a10, 128
40378c63:	a09920        	or	a9, a9, a10
40378c66:	c02000        	memw
40378c69:	926813        	s32i	a9, a8, 76
40378c6c:	c02000        	memw
40378c6f:	922813        	l32i	a9, a8, 76
40378c72:	a2a100        	movi	a10, 0x100
40378c75:	a09920        	or	a9, a9, a10
40378c78:	c02000        	memw
40378c7b:	926813        	s32i	a9, a8, 76
40378c7e:	c02000        	memw
40378c81:	922813        	l32i	a9, a8, 76
40378c84:	1c0a      	movi.n	a10, 16
40378c86:	a09920        	or	a9, a9, a10
40378c89:	c02000        	memw
40378c8c:	926813        	s32i	a9, a8, 76
40378c8f:	c02000        	memw
40378c92:	922813        	l32i	a9, a8, 76
40378c95:	a117ee        	l32r	a10, 0x403744f4
40378c98:	a09920        	or	a9, a9, a10
40378c9b:	c02000        	memw
40378c9e:	926813        	s32i	a9, a8, 76
40378ca1:	c02000        	memw
40378ca4:	922813        	l32i	a9, a8, 76
40378ca7:	a132ef        	l32r	a10, 0x40374970
40378caa:	a09920        	or	a9, a9, a10
40378cad:	c02000        	memw
40378cb0:	926813        	s32i	a9, a8, 76
40378cb3:	a2c11a        	addi	a10, a1, 26
40378cb6:	8911      	s32i.n	a8, a1, 4
40378cb8:	d931      	s32i.n	a13, a1, 12
40378cba:	813aef        	l32r	a8, 0x403749a4
40378cbd:	e00800        	callx8	a8
40378cc0:	8811      	l32i.n	a8, a1, 4
40378cc2:	a21114        	l16ui	a10, a1, 40
40378cc5:	c02000        	memw
40378cc8:	922842        	l32i	a9, a8, 0x108
40378ccb:	00aa11        	slli	a10, a10, 16
40378cce:	c02000        	memw
40378cd1:	9981      	s32i.n	a9, a1, 32
40378cd3:	c02000        	memw
40378cd6:	9881      	l32i.n	a9, a1, 32
40378cd8:	b100ee        	l32r	a11, 0x403744d8
40378cdb:	9090f4        	extui	a9, a9, 0, 16
40378cde:	a09920        	or	a9, a9, a10
40378ce1:	c02000        	memw
40378ce4:	9981      	s32i.n	a9, a1, 32
40378ce6:	c02000        	memw
40378ce9:	9881      	l32i.n	a9, a1, 32
40378ceb:	a122ef        	l32r	a10, 0x40374974
40378cee:	c02000        	memw
40378cf1:	926842        	s32i	a9, a8, 0x108
40378cf4:	c02000        	memw
40378cf7:	922843        	l32i	a9, a8, 0x10c
40378cfa:	d831      	l32i.n	a13, a1, 12
40378cfc:	c02000        	memw
40378cff:	9991      	s32i.n	a9, a1, 36
40378d01:	c02000        	memw
40378d04:	9891      	l32i.n	a9, a1, 36
40378d06:	a09920        	or	a9, a9, a10
40378d09:	c02000        	memw
40378d0c:	9991      	s32i.n	a9, a1, 36
40378d0e:	c02000        	memw
40378d11:	9891      	l32i.n	a9, a1, 36
40378d13:	a2110d        	l16ui	a10, a1, 26
40378d16:	c02000        	memw
40378d19:	926843        	s32i	a9, a8, 0x10c
40378d1c:	c02000        	memw
40378d1f:	922842        	l32i	a9, a8, 0x108
40378d22:	c02000        	memw
40378d25:	9971      	s32i.n	a9, a1, 28
40378d27:	c02000        	memw
40378d2a:	9871      	l32i.n	a9, a1, 28
40378d2c:	b09910        	and	a9, a9, a11
40378d2f:	a09920        	or	a9, a9, a10
40378d32:	c02000        	memw
40378d35:	9971      	s32i.n	a9, a1, 28
40378d37:	c02000        	memw
40378d3a:	9871      	l32i.n	a9, a1, 28
40378d3c:	0c1a      	movi.n	a10, 1
40378d3e:	c02000        	memw
40378d41:	926842        	s32i	a9, a8, 0x108
40378d44:	c02000        	memw
40378d47:	922844        	l32i	a9, a8, 0x110
40378d4a:	001d40        	ssl	a13
40378d4d:	00daa1        	sll	a13, a10
40378d50:	80dd23        	sext	a13, a13, 15
40378d53:	909ae4        	extui	a9, a9, 10, 15
40378d56:	c02000        	memw
40378d59:	b22844        	l32i	a11, a8, 0x110
40378d5c:	909d20        	or	a9, a13, a9
40378d5f:	9090e4        	extui	a9, a9, 0, 15
40378d62:	707b10        	and	a7, a11, a7
40378d65:	609911        	slli	a9, a9, 10
40378d68:	909720        	or	a9, a7, a9
40378d6b:	c02000        	memw
40378d6e:	926844        	s32i	a9, a8, 0x110
40378d71:	c02000        	memw
40378d74:	722517        	l32i	a7, a5, 92
40378d77:	91faee        	l32r	a9, 0x40374960
40378d7a:	d0d720        	or	a13, a7, a13
40378d7d:	c02000        	memw
40378d80:	722517        	l32i	a7, a5, 92
40378d83:	d0d0e4        	extui	a13, a13, 0, 15
40378d86:	606710        	and	a6, a7, a6
40378d89:	d06620        	or	a6, a6, a13
40378d8c:	c02000        	memw
40378d8f:	626517        	s32i	a6, a5, 92
40378d92:	c02000        	memw
40378d95:	622843        	l32i	a6, a8, 0x10c
40378d98:	905620        	or	a5, a6, a9
40378d9b:	c02000        	memw
40378d9e:	526843        	s32i	a5, a8, 0x10c
40378da1:	c02000        	memw
40378da4:	522843        	l32i	a5, a8, 0x10c
40378da7:	61efee        	l32r	a6, 0x40374964
40378daa:	91ecee        	l32r	a9, 0x4037495c
40378dad:	605510        	and	a5, a5, a6
40378db0:	c02000        	memw
40378db3:	526843        	s32i	a5, a8, 0x10c
40378db6:	c02000        	memw
40378db9:	522843        	l32i	a5, a8, 0x10c
40378dbc:	c02000        	memw
40378dbf:	622843        	l32i	a6, a8, 0x10c
40378dc2:	505005        	extui	a5, a5, 16, 1
40378dc5:	a05530        	xor	a5, a5, a10
40378dc8:	305511        	slli	a5, a5, 13
40378dcb:	906610        	and	a6, a6, a9
40378dce:	505620        	or	a5, a6, a5
40378dd1:	c02000        	memw
40378dd4:	526843        	s32i	a5, a8, 0x10c
40378dd7:	865600        	j	0x40378f35
40378dda:	000000        	ill
40378ddd:	61d0ee        	l32r	a6, 0x40374920
40378de0:	5d03      	mov.n	a5, a3
40378de2:	1b75      	addi.n	a7, a5, 1
40378de4:	ad07      	mov.n	a10, a7
40378de6:	25c3ff        	call8	0x40378a18
40378de9:	160a04        	beqz	a10, 0x40378e2d
40378dec:	004711        	slli	a4, a7, 16
40378def:	6a84      	add.n	a8, a4, a6
40378df1:	41caee        	l32r	a4, 0x4037491c
40378df4:	52c5fe        	addi	a5, a5, -2
40378df7:	0c09      	movi.n	a9, 0
40378df9:	504993        	movnez	a4, a9, a5
40378dfc:	8a44      	add.n	a4, a4, a8
40378dfe:	c02000        	memw
40378e01:	58d4      	l32i.n	a5, a4, 52
40378e03:	7cb8      	movi.n	a8, -5
40378e05:	805510        	and	a5, a5, a8
40378e08:	c02000        	memw
40378e0b:	59d4      	s32i.n	a5, a4, 52
40378e0d:	c02000        	memw
40378e10:	58d4      	l32i.n	a5, a4, 52
40378e12:	0c98      	movi.n	a8, 9
40378e14:	805520        	or	a5, a5, a8
40378e17:	c02000        	memw
40378e1a:	59d4      	s32i.n	a5, a4, 52
40378e1c:	c02000        	memw
40378e1f:	52241b        	l32i	a5, a4, 108
40378e22:	505434        	extui	a5, a5, 4, 4
40378e25:	8c45      	beqz.n	a5, 0x40378e2d
40378e27:	52c5f1        	addi	a5, a5, -15
40378e2a:	56e5fe        	bnez	a5, 0x40378e1c
40378e2d:	5d07      	mov.n	a5, a7
40378e2f:	6637af        	bnei	a7, 3, 0x40378de2
40378e32:	4617ff        	j	0x40378a93
40378e35:	0c14      	movi.n	a4, 1
40378e37:	061bff        	j	0x40378aa7
40378e3a:	000061        	xsr.lbeg	a0
40378e3d:	c0eee0        	subx4	a14, a14, a12
40378e40:	5b11      	addi.n	a1, a1, 5
40378e42:	6a55      	add.n	a5, a5, a6
40378e44:	6805      	l32i.n	a6, a5, 0
40378e46:	67d802        	bbs	a8, a6, 0x40378e4c
40378e49:	063200        	j	0x40378f15
40378e4c:	ad06      	mov.n	a10, a6
40378e4e:	8911      	s32i.n	a8, a1, 4
40378e50:	b931      	s32i.n	a11, a1, 12
40378e52:	c921      	s32i.n	a12, a1, 8
40378e54:	d05611        	slli	a5, a6, 3
40378e57:	81d1ee        	l32r	a8, 0x4037499c
40378e5a:	e00800        	callx8	a8
40378e5d:	91b6ee        	l32r	a9, 0x40374938
40378e60:	60a5c0        	sub	a10, a5, a6
40378e63:	d0aa11        	slli	a10, a10, 3
40378e66:	aaa9      	add.n	a10, a9, a10
40378e68:	e80a      	l32i.n	a14, a10, 0
40378e6a:	a83a      	l32i.n	a10, a10, 12
40378e6c:	c02000        	memw
40378e6f:	d80e      	l32i.n	a13, a14, 0
40378e71:	8811      	l32i.n	a8, a1, 4
40378e73:	a0ad20        	or	a10, a13, a10
40378e76:	c02000        	memw
40378e79:	a90e      	s32i.n	a10, a14, 0
40378e7b:	a807      	l32i.n	a10, a7, 0
40378e7d:	b831      	l32i.n	a11, a1, 12
40378e7f:	c821      	l32i.n	a12, a1, 8
40378e81:	661a02        	bnei	a10, 1, 0x40378e87
40378e84:	862000        	j	0x40378f0a
40378e87:	1c4a      	movi.n	a10, 20
40378e89:	a79623        	bne	a6, a10, 0x40378eb0
40378e8c:	a1adee        	l32r	a10, 0x40374940
40378e8f:	e2a100        	movi	a14, 0x100
40378e92:	c02000        	memw
40378e95:	d80a      	l32i.n	a13, a10, 0
40378e97:	e0dd20        	or	a13, a13, a14
40378e9a:	c02000        	memw
40378e9d:	d90a      	s32i.n	a13, a10, 0
40378e9f:	c02000        	memw
40378ea2:	d80a      	l32i.n	a13, a10, 0
40378ea4:	e2adff        	movi	a14, 0xfffffdff
40378ea7:	e0dd10        	and	a13, a13, a14
40378eaa:	c02000        	memw
40378ead:	d26a00        	s32i	a13, a10, 0
40378eb0:	60a5c0        	sub	a10, a5, a6
40378eb3:	d0aa11        	slli	a10, a10, 3
40378eb6:	aaa9      	add.n	a10, a9, a10
40378eb8:	e84a      	l32i.n	a14, a10, 16
40378eba:	9c2e      	beqz.n	a14, 0x40378ed0
40378ebc:	d80a      	l32i.n	a13, a10, 0
40378ebe:	7cfa      	movi.n	a10, -1
40378ec0:	c02000        	memw
40378ec3:	f80d      	l32i.n	a15, a13, 0
40378ec5:	e0aa30        	xor	a10, a10, a14
40378ec8:	f0aa10        	and	a10, a10, a15
40378ecb:	c02000        	memw
40378ece:	a90d      	s32i.n	a10, a13, 0
40378ed0:	60a5c0        	sub	a10, a5, a6
40378ed3:	d0aa11        	slli	a10, a10, 3
40378ed6:	aaa9      	add.n	a10, a9, a10
40378ed8:	e85a      	l32i.n	a14, a10, 20
40378eda:	9c2e      	beqz.n	a14, 0x40378ef0
40378edc:	d80a      	l32i.n	a13, a10, 0
40378ede:	7cfa      	movi.n	a10, -1
40378ee0:	c02000        	memw
40378ee3:	f80d      	l32i.n	a15, a13, 0
40378ee5:	e0aa30        	xor	a10, a10, a14
40378ee8:	f0aa10        	and	a10, a10, a15
40378eeb:	c02000        	memw
40378eee:	a90d      	s32i.n	a10, a13, 0
40378ef0:	6055c0        	sub	a5, a5, a6
40378ef3:	d194ee        	l32r	a13, 0x40374944
40378ef6:	d05511        	slli	a5, a5, 3
40378ef9:	5a59      	add.n	a5, a9, a5
40378efb:	c02000        	memw
40378efe:	a80d      	l32i.n	a10, a13, 0
40378f00:	58a5      	l32i.n	a5, a5, 40
40378f02:	50aa20        	or	a10, a10, a5
40378f05:	c02000        	memw
40378f08:	a90d      	s32i.n	a10, a13, 0
40378f0a:	7ce5      	movi.n	a5, -2
40378f0c:	001640        	ssl	a6
40378f0f:	506581        	src	a6, a5, a5
40378f12:	608810        	and	a8, a8, a6
40378f15:	1bbb      	addi.n	a11, a11, 1
40378f17:	8607ff        	j	0x40378b39
40378f1a:	000000        	ill
40378f1d:	81a2ee        	l32r	a8, 0x403749a8
40378f20:	e00800        	callx8	a8
40378f23:	a54400        	call8	0x4037936c
40378f26:	518bee        	l32r	a5, 0x40374954
40378f29:	c02000        	memw
40378f2c:	522543        	l32i	a5, a5, 0x10c
40378f2f:	d76502        	bbci	a5, 13, 0x40378f35
40378f32:	465600        	j	0x4037908f
40378f35:	206004        	extui	a6, a2, 0, 1
40378f38:	517cee        	l32r	a5, 0x40374928
40378f3b:	569615        	bnez	a6, 0x40379098
40378f3e:	78a5      	l32i.n	a7, a5, 40
40378f40:	7070e4        	extui	a7, a7, 0, 15
40378f43:	708204        	extui	a8, a7, 2, 1
40378f46:	806793        	movnez	a6, a7, a8
40378f49:	718bee        	l32r	a7, 0x40374978
40378f4c:	720700        	l8ui	a7, a7, 0
40378f4f:	165700        	beqz	a7, 0x40378f58
40378f52:	718aee        	l32r	a7, 0x4037497c
40378f55:	702220        	or	a2, a2, a7
40378f58:	718aee        	l32r	a7, 0x40374980
40378f5b:	720700        	l8ui	a7, a7, 0
40378f5e:	cc47      	bnez.n	a7, 0x40378f66
40378f60:	7165ed        	l32r	a7, 0x403744f4
40378f63:	702220        	or	a2, a2, a7
40378f66:	165400        	beqz	a4, 0x40378f6f
40378f69:	4176ed        	l32r	a4, 0x40374544
40378f6c:	402220        	or	a2, a2, a4
40378f6f:	b2c128        	addi	a11, a1, 40
40378f72:	20a220        	or	a10, a2, a2
40378f75:	656602        	call8	0x4037b5dc
40378f78:	a8a1      	l32i.n	a10, a1, 40
40378f7a:	b2210b        	l32i	a11, a1, 44
40378f7d:	a57802        	call8	0x4037b708
40378f80:	cc43      	bnez.n	a3, 0x40378f88
40378f82:	a22510        	l32i	a10, a5, 64
40378f85:	a5b602        	call8	0x4037baf0
40378f88:	28a5      	l32i.n	a2, a5, 40
40378f8a:	37626c        	bbci	a2, 3, 0x40378ffa
40378f8d:	28d5      	l32i.n	a2, a5, 52
40378f8f:	7885      	l32i.n	a7, a5, 32
40378f91:	8895      	l32i.n	a8, a5, 36
40378f93:	2027c0        	sub	a2, a7, a2
40378f96:	0c14      	movi.n	a4, 1
40378f98:	273701        	bltu	a7, a2, 0x40378f9d
40378f9b:	0c04      	movi.n	a4, 0
40378f9d:	40b8c0        	sub	a11, a8, a4
40378fa0:	ad02      	mov.n	a10, a2
40378fa2:	d63b00        	bgez	a11, 0x40378fa9
40378fa5:	0c0a      	movi.n	a10, 0
40378fa7:	bd0a      	mov.n	a11, a10
40378fa9:	c22510        	l32i	a12, a5, 64
40378fac:	22a001        	movi	a2, 1
40378faf:	e5ee02        	call8	0x4037be9c
40378fb2:	422512        	l32i	a4, a5, 72
40378fb5:	722513        	l32i	a7, a5, 76
40378fb8:	404a80        	add	a4, a10, a4
40378fbb:	a73402        	bltu	a4, a10, 0x40378fc1
40378fbe:	22a000        	movi	a2, 0
40378fc1:	70bb80        	add	a11, a11, a7
40378fc4:	7170ee        	l32r	a7, 0x40374984
40378fc7:	b02280        	add	a2, a2, a11
40378fca:	c02000        	memw
40378fcd:	4907      	s32i.n	a4, a7, 0
40378fcf:	416eee        	l32r	a4, 0x40374988
40378fd2:	716eee        	l32r	a7, 0x4037498c
40378fd5:	c02000        	memw
40378fd8:	2904      	s32i.n	a2, a4, 0
40378fda:	c02000        	memw
40378fdd:	2807      	l32i.n	a2, a7, 0
40378fdf:	82a400        	movi	a8, 0x400
40378fe2:	802220        	or	a2, a2, a8
40378fe5:	c02000        	memw
40378fe8:	2907      	s32i.n	a2, a7, 0
40378fea:	c02000        	memw
40378fed:	2804      	l32i.n	a2, a4, 0
40378fef:	7155ed        	l32r	a7, 0x40374544
40378ff2:	702220        	or	a2, a2, a7
40378ff5:	c02000        	memw
40378ff8:	2904      	s32i.n	a2, a4, 0
40378ffa:	9c33      	beqz.n	a3, 0x40379011
40378ffc:	a50f00        	call8	0x403790f8
40378fff:	b164ee        	l32r	a11, 0x40374990
40379002:	2164ee        	l32r	a2, 0x40374994
40379005:	a164ee        	l32r	a10, 0x40374998
40379008:	20bbc0        	sub	a11, a11, a2
4037900b:	8168ee        	l32r	a8, 0x403749ac
4037900e:	e00800        	callx8	a8
40379011:	c8a1      	l32i.n	a12, a1, 40
40379013:	a8a5      	l32i.n	a10, a5, 40
40379015:	c0c004        	extui	a12, a12, 0, 1
40379018:	60b620        	or	a11, a6, a6
4037901b:	a0a0e4        	extui	a10, a10, 0, 15
4037901e:	e5b202        	call8	0x4037bb4c
40379021:	2d0a      	mov.n	a2, a10
40379023:	a2c130        	addi	a10, a1, 48
40379026:	652b02        	call8	0x4037b2dc
40379029:	0c0a      	movi.n	a10, 0
4037902b:	653a0b        	call8	0x403843d0
4037902e:	cc93      	bnez.n	a3, 0x4037903b
40379030:	30ea03        	rsr.ccount	a3
40379033:	39e5      	s32i.n	a3, a5, 56
40379035:	e53700        	call8	0x403793b4
40379038:	653500        	call8	0x40379390
4037903b:	5139ee        	l32r	a5, 0x40374920
4037903e:	0c04      	movi.n	a4, 0
40379040:	1b64      	addi.n	a6, a4, 1
40379042:	ad06      	mov.n	a10, a6
40379044:	259dff        	call8	0x40378a18
40379047:	bcda      	beqz.n	a10, 0x40379088
40379049:	7134ee        	l32r	a7, 0x4037491c
4037904c:	42c4fe        	addi	a4, a4, -2
4037904f:	003611        	slli	a3, a6, 16
40379052:	0c08      	movi.n	a8, 0
40379054:	407893        	movnez	a7, a8, a4
40379057:	5a33      	add.n	a3, a3, a5
40379059:	7a33      	add.n	a3, a3, a7
4037905b:	c02000        	memw
4037905e:	48d3      	l32i.n	a4, a3, 52
40379060:	7c77      	movi.n	a7, -9
40379062:	704410        	and	a4, a4, a7
40379065:	c02000        	memw
40379068:	49d3      	s32i.n	a4, a3, 52
4037906a:	c02000        	memw
4037906d:	48d3      	l32i.n	a4, a3, 52
4037906f:	0c47      	movi.n	a7, 4
40379071:	704420        	or	a4, a4, a7
40379074:	c02000        	memw
40379077:	49d3      	s32i.n	a4, a3, 52
40379079:	c02000        	memw
4037907c:	48d3      	l32i.n	a4, a3, 52
4037907e:	7ca7      	movi.n	a7, -6
40379080:	704410        	and	a4, a4, a7
40379083:	c02000        	memw
40379086:	49d3      	s32i.n	a4, a3, 52
40379088:	4d06      	mov.n	a4, a6
4037908a:	6636b2        	bnei	a6, 3, 0x40379040
4037908d:	1df0      	retw.n
4037908f:	7cd5      	movi.n	a5, -3
40379091:	502210        	and	a2, a2, a5
40379094:	46a7ff        	j	0x40378f35
40379097:	000c06        	ee.ldf.64.xp	f0, f0, a0, a12
4037909a:	c6aaff        	j	0x40378f49
4037909d:	000000        	ill
403790a0:	364100        	entry	a1, 32
403790a3:	8147ee        	l32r	a8, 0x403749c0
403790a6:	e00800        	callx8	a8
403790a9:	a141ee        	l32r	a10, 0x403749b0
403790ac:	b2afff        	movi	a11, -1
403790af:	a5a006        	call8	0x4037fab8
403790b2:	25fd00        	call8	0x4037a084
403790b5:	65e002        	call8	0x4037bebc
403790b8:	211cee        	l32r	a2, 0x40374928
403790bb:	a26212        	s32i	a10, a2, 72
403790be:	b26213        	s32i	a11, a2, 76
403790c1:	8140ee        	l32r	a8, 0x403749c4
403790c4:	e00800        	callx8	a8
403790c7:	568a00        	bnez	a10, 0x403790d3
403790ca:	313aee        	l32r	a3, 0x403749b4
403790cd:	813aee        	l32r	a8, 0x403749b8
403790d0:	826300        	s32i	a8, a3, 0
403790d3:	813dee        	l32r	a8, 0x403749c8
403790d6:	e00800        	callx8	a8
403790d9:	3d0a      	mov.n	a3, a10
403790db:	813cee        	l32r	a8, 0x403749cc
403790de:	e00800        	callx8	a8
403790e1:	a26210        	s32i	a10, a2, 64
403790e4:	a136ee        	l32r	a10, 0x403749bc
403790e7:	82a15e        	movi	a8, 0x15e
403790ea:	a0a320        	or	a10, a3, a10
403790ed:	89d2      	s32i.n	a8, a2, 52
403790ef:	2598ff        	call8	0x40378a70
403790f2:	06ffff        	j	0x403790f2
403790f5:	000000        	ill
403790f8:	368100        	entry	a1, 64
403790fb:	0c02      	movi.n	a2, 0
403790fd:	2971      	s32i.n	a2, a1, 28
403790ff:	2135ee        	l32r	a2, 0x403749d4
40379102:	4133ee        	l32r	a4, 0x403749d0
40379105:	c02000        	memw
40379108:	3802      	l32i.n	a3, a2, 0
4037910a:	5101ed        	l32r	a5, 0x40374510
4037910d:	4961      	s32i.n	a4, a1, 24
4037910f:	503310        	and	a3, a3, a5
40379112:	562313        	bnez	a3, 0x40379248
40379115:	c02000        	memw
40379118:	2802      	l32i.n	a2, a2, 0
4037911a:	b7e202        	bbsi	a2, 11, 0x40379120
4037911d:	c64900        	j	0x40379248
40379120:	2138ee        	l32r	a2, 0x40374a00
40379123:	6100ed        	l32r	a6, 0x40374524
40379126:	2a51      	add.n	a5, a1, a2
40379128:	22a001        	movi	a2, 1
4037912b:	57b601        	bgeu	a6, a5, 0x40379130
4037912e:	2d03      	mov.n	a2, a3
40379130:	31feec        	l32r	a3, 0x40374528
40379133:	52c118        	addi	a5, a1, 24
40379136:	61fdec        	l32r	a6, 0x4037452c
40379139:	3a35      	add.n	a3, a5, a3
4037913b:	0c15      	movi.n	a5, 1
4037913d:	37b602        	bgeu	a6, a3, 0x40379143
40379140:	52a000        	movi	a5, 0
40379143:	502220        	or	a2, a2, a5
40379146:	076202        	bbci	a2, 0, 0x4037914c
40379149:	064900        	j	0x40379271
4037914c:	21f9ec        	l32r	a2, 0x40374530
4037914f:	82c118        	addi	a8, a1, 24
40379152:	31f6ec        	l32r	a3, 0x4037452c
40379155:	2a28      	add.n	a2, a8, a2
40379157:	273302        	bltu	a3, a2, 0x4037915d
4037915a:	c64400        	j	0x40379271
4037915d:	d11eee        	l32r	a13, 0x403749d8
40379160:	c11fee        	l32r	a12, 0x403749dc
40379163:	a11fee        	l32r	a10, 0x403749e0
40379166:	b2a077        	movi	a11, 119
40379169:	657f09        	call8	0x40382960
4037916c:	a11eee        	l32r	a10, 0x403749e4
4037916f:	b11eee        	l32r	a11, 0x403749e8
40379172:	cd02      	mov.n	a12, a2
40379174:	9931      	s32i.n	a9, a1, 12
40379176:	d921      	s32i.n	a13, a1, 8
40379178:	810eed        	l32r	a8, 0x403745b0
4037917b:	e00800        	callx8	a8
4037917e:	9831      	l32i.n	a9, a1, 12
40379180:	d821      	l32i.n	a13, a1, 8
40379182:	07ea02        	bbsi	a10, 0, 0x40379188
40379185:	462d00        	j	0x4037923e
40379188:	8119ee        	l32r	a8, 0x403749ec
4037918b:	c02000        	memw
4037918e:	a808      	l32i.n	a10, a8, 0
40379190:	82c3ec        	addi	a8, a3, -20
40379193:	875a02        	bbc	a10, a8, 0x40379199
40379196:	062900        	j	0x4037923e
40379199:	a115ee        	l32r	a10, 0x403749f0
4037919c:	e0b211        	slli	a11, a2, 2
4037919f:	aa8b      	add.n	a8, a11, a10
403791a1:	c02000        	memw
403791a4:	a808      	l32i.n	a10, a8, 0
403791a6:	60aa10        	and	a10, a10, a6
403791a9:	c02000        	memw
403791ac:	a908      	s32i.n	a10, a8, 0
403791ae:	27ad02        	bge	a13, a2, 0x403791b4
403791b1:	c62500        	j	0x4037924c
403791b4:	001240        	ssl	a2
403791b7:	0035a1        	sll	a3, a5
403791ba:	c02000        	memw
403791bd:	39a4      	s32i.n	a3, a4, 40
403791bf:	310dee        	l32r	a3, 0x403749f4
403791c2:	3abb      	add.n	a11, a11, a3
403791c4:	c02000        	memw
403791c7:	790b      	s32i.n	a7, a11, 0
403791c9:	1c43      	movi.n	a3, 20
403791cb:	37921d        	bne	a2, a3, 0x403791ec
403791ce:	31dced        	l32r	a3, 0x40374940
403791d1:	c02000        	memw
403791d4:	a803      	l32i.n	a10, a3, 0
403791d6:	70aa20        	or	a10, a10, a7
403791d9:	c02000        	memw
403791dc:	a903      	s32i.n	a10, a3, 0
403791de:	c02000        	memw
403791e1:	a803      	l32i.n	a10, a3, 0
403791e3:	60aa10        	and	a10, a10, a6
403791e6:	c02000        	memw
403791e9:	a26300        	s32i	a10, a3, 0
403791ec:	c02000        	memw
403791ef:	3808      	l32i.n	a3, a8, 0
403791f1:	a2aeff        	movi	a10, 0xfffffeff
403791f4:	a03310        	and	a3, a3, a10
403791f7:	c02000        	memw
403791fa:	3908      	s32i.n	a3, a8, 0
403791fc:	c02000        	memw
403791ff:	3808      	l32i.n	a3, a8, 0
40379201:	a2af7f        	movi	a10, -129
40379204:	a03310        	and	a3, a3, a10
40379207:	c02000        	memw
4037920a:	3908      	s32i.n	a3, a8, 0
4037920c:	32c2ed        	addi	a3, a2, -19
4037920f:	303074        	extui	a3, a3, 0, 8
40379212:	f62312        	bgeui	a3, 2, 0x40379228
40379215:	a1caed        	l32r	a10, 0x40374940
40379218:	b1f8ed        	l32r	a11, 0x403749f8
4037921b:	c02000        	memw
4037921e:	380a      	l32i.n	a3, a10, 0
40379220:	b03310        	and	a3, a3, a11
40379223:	c02000        	memw
40379226:	390a      	s32i.n	a3, a10, 0
40379228:	c02000        	memw
4037922b:	3808      	l32i.n	a3, a8, 0
4037922d:	a1f3ed        	l32r	a10, 0x403749fc
40379230:	a03310        	and	a3, a3, a10
40379233:	a1e0ec        	l32r	a10, 0x403745b4
40379236:	a03320        	or	a3, a3, a10
40379239:	c02000        	memw
4037923c:	3908      	s32i.n	a3, a8, 0
4037923e:	3d02      	mov.n	a3, a2
40379240:	1b23      	addi.n	a2, a3, 1
40379242:	971202        	beq	a2, a9, 0x40379248
40379245:	c6c8ff        	j	0x4037916c
40379248:	1df0      	retw.n
4037924a:	000032        	orbc	b0, b0, b0
4037924d:	c3          	.byte	0xc3
4037924e:	e10013        	l32r	a14, 0x4033de50
40379251:	4000c5        	extui	a0, a4, 16, 13
40379254:	a13177        	l32r	a10, 0x40356f18
40379257:	ecc0      	bnez.n	a0, 0x40379287
40379259:	20          	.byte	0x20
4037925a:	00a8d4        	extui	a10, a0, 8, 14
4037925d:	303c10        	and	a3, a12, a3
40379260:	c176ec        	l32r	a12, 0x40374438
40379263:	c0aa10        	and	a10, a10, a12
40379266:	30aa20        	or	a10, a10, a3
40379269:	c02000        	memw
4037926c:	a9d4      	s32i.n	a10, a4, 52
4037926e:	46d3ff        	j	0x403791bf
40379271:	0c03      	movi.n	a3, 0
40379273:	3c19      	movi.n	a9, 49
40379275:	0c15      	movi.n	a5, 1
40379277:	62adff        	movi	a6, 0xfffffdff
4037927a:	1cfd      	movi.n	a13, 31
4037927c:	72a100        	movi	a7, 0x100
4037927f:	46efff        	j	0x40379240
40379282:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40379285:	4100a5        	l32r	a4, 0x40362688
40379288:	80          	.byte	0x80
40379289:	0651de        	j	0x40370bd1
4037928c:	ed          	.byte	0xed
4037928d:	b2afff        	movi	a11, -1
40379290:	50a520        	or	a10, a5, a5
40379293:	658206        	call8	0x4037fab8
40379296:	202074        	extui	a2, a2, 0, 8
40379299:	303074        	extui	a3, a3, 0, 8
4037929c:	404074        	extui	a4, a4, 0, 8
4037929f:	cd04      	mov.n	a12, a4
403792a1:	bd03      	mov.n	a11, a3
403792a3:	ad02      	mov.n	a10, a2
403792a5:	81d8ed        	l32r	a8, 0x40374a08
403792a8:	e00800        	callx8	a8
403792ab:	2d0a      	mov.n	a2, a10
403792ad:	257e06        	call8	0x4037fa90
403792b0:	ad05      	mov.n	a10, a5
403792b2:	a59406        	call8	0x4037fbfc
403792b5:	1df0      	retw.n
403792b7:	003641        	srli	a3, a0, 6
403792ba:	00          	.byte	00
403792bb:	657d06        	call8	0x4037fa90
403792be:	71d1ed        	l32r	a7, 0x40374a04
403792c1:	b2afff        	movi	a11, -1
403792c4:	70a720        	or	a10, a7, a7
403792c7:	257f06        	call8	0x4037fab8
403792ca:	202074        	extui	a2, a2, 0, 8
403792cd:	303074        	extui	a3, a3, 0, 8
403792d0:	404074        	extui	a4, a4, 0, 8
403792d3:	505074        	extui	a5, a5, 0, 8
403792d6:	606074        	extui	a6, a6, 0, 8
403792d9:	ed06      	mov.n	a14, a6
403792db:	dd05      	mov.n	a13, a5
403792dd:	cd04      	mov.n	a12, a4
403792df:	bd03      	mov.n	a11, a3
403792e1:	20a220        	or	a10, a2, a2
403792e4:	81caed        	l32r	a8, 0x40374a0c
403792e7:	e00800        	callx8	a8
403792ea:	2d0a      	mov.n	a2, a10
403792ec:	257a06        	call8	0x4037fa90
403792ef:	ad07      	mov.n	a10, a7
403792f1:	a59006        	call8	0x4037fbfc
403792f4:	1df0      	retw.n
403792f6:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403792f9:	410065        	l32r	a4, 0x403526fc
403792fc:	7906      	s32i.n	a7, a6, 0
403792fe:	61c1ed        	l32r	a6, 0x40374a04
40379301:	7cfb      	movi.n	a11, -1
40379303:	ad06      	mov.n	a10, a6
40379305:	257b06        	call8	0x4037fab8
40379308:	202074        	extui	a2, a2, 0, 8
4037930b:	303074        	extui	a3, a3, 0, 8
4037930e:	404074        	extui	a4, a4, 0, 8
40379311:	505074        	extui	a5, a5, 0, 8
40379314:	dd05      	mov.n	a13, a5
40379316:	cd04      	mov.n	a12, a4
40379318:	bd03      	mov.n	a11, a3
4037931a:	ad02      	mov.n	a10, a2
4037931c:	81bded        	l32r	a8, 0x40374a10
4037931f:	e00800        	callx8	a8
40379322:	e57606        	call8	0x4037fa90
40379325:	ad06      	mov.n	a10, a6
40379327:	658d06        	call8	0x4037fbfc
4037932a:	1df0      	retw.n
4037932c:	364100        	entry	a1, 32
4037932f:	257606        	call8	0x4037fa90
40379332:	a1b4ed        	l32r	a10, 0x40374a04
40379335:	b2afff        	movi	a11, -1
40379338:	e57706        	call8	0x4037fab8
4037933b:	202074        	extui	a2, a2, 0, 8
4037933e:	303074        	extui	a3, a3, 0, 8
40379341:	404074        	extui	a4, a4, 0, 8
40379344:	505074        	extui	a5, a5, 0, 8
40379347:	606074        	extui	a6, a6, 0, 8
4037934a:	707074        	extui	a7, a7, 0, 8
4037934d:	fd07      	mov.n	a15, a7
4037934f:	ed06      	mov.n	a14, a6
40379351:	dd05      	mov.n	a13, a5
40379353:	cd04      	mov.n	a12, a4
40379355:	bd03      	mov.n	a11, a3
40379357:	ad02      	mov.n	a10, a2
40379359:	81aeed        	l32r	a8, 0x40374a14
4037935c:	e00800        	callx8	a8
4037935f:	257306        	call8	0x4037fa90
40379362:	a1a8ed        	l32r	a10, 0x40374a04
40379365:	658906        	call8	0x4037fbfc
40379368:	1df0      	retw.n
4037936a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037936d:	41000c        	l32r	a4, 0x4033c370
40379370:	0220c2        	l32i	a0, a0, 0x308
40379373:	20b2a0        	addx4	a11, a2, a2
40379376:	01a2a0        	l32r	a0, 0x40361600
40379379:	69a5      	s32i.n	a6, a5, 40
4037937b:	f0ff31        	srai	a15, a15, 31
4037937e:	a6ed30        	blti	a13, 128, 0x403793b2
40379381:	82          	.byte	0x82
40379382:	80a248        	ssx	f10, a2, a8
40379385:	001b22        	orb	b1, b11, b0
40379388:	6682e5        	bnei	a2, 8, 0x40379371
4037938b:	1df0      	retw.n
4037938d:	000000        	ill
40379390:	364100        	entry	a1, 32
40379393:	0c02      	movi.n	a2, 0
40379395:	31a0ed        	l32r	a3, 0x40374a18
40379398:	20c220        	or	a12, a2, a2
4037939b:	308280        	add	a8, a2, a3
4037939e:	d20800        	l8ui	a13, a8, 0
403793a1:	b2a001        	movi	a11, 1
403793a4:	a2a069        	movi	a10, 105
403793a7:	1b22      	addi.n	a2, a2, 1
403793a9:	e5f4ff        	call8	0x403792f8
403793ac:	6682e5        	bnei	a2, 8, 0x40379395
403793af:	1df0      	retw.n
403793b1:	000000        	ill
403793b4:	364100        	entry	a1, 32
403793b7:	2199ed        	l32r	a2, 0x40374a1c
403793ba:	20a220        	or	a10, a2, a2
403793bd:	65e000        	call8	0x4037a1c4
403793c0:	20a220        	or	a10, a2, a2
403793c3:	a5e300        	call8	0x4037a1fc
403793c6:	1df0      	retw.n
403793c8:	364100        	entry	a1, 32
403793cb:	bd02      	mov.n	a11, a2
403793cd:	c0eb03        	rsr.prid	a12
403793d0:	c0cd04        	extui	a12, a12, 13, 1
403793d3:	a193ed        	l32r	a10, 0x40374a20
403793d6:	8131ec        	l32r	a8, 0x4037449c
403793d9:	e00800        	callx8	a8
403793dc:	1df0      	retw.n
403793de:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403793e1:	4100e5        	l32r	a4, 0x403727e4
403793e4:	6a06      	add.n	a0, a6, a6
403793e6:	a18fed        	l32r	a10, 0x40374a24
403793e9:	d02211        	slli	a2, a2, 3
403793ec:	b2afff        	movi	a11, -1
403793ef:	20aa80        	add	a10, a10, a2
403793f2:	656c06        	call8	0x4037fab8
403793f5:	1df0      	retw.n
403793f7:	003641        	srli	a3, a0, 6
403793fa:	00c202        	andb	b12, b2, b0
403793fd:	0f          	.byte	0xf
403793fe:	918aed        	l32r	a9, 0x40374a28
40379401:	c0c004        	extui	a12, a12, 0, 1
40379404:	e0bc11        	slli	a11, a12, 2
40379407:	baa9      	add.n	a10, a9, a11
40379409:	880a      	l32i.n	a8, a10, 0
4037940b:	dc18      	bnez.n	a8, 0x40379420
4037940d:	8962      	s32i.n	a8, a2, 24
4037940f:	290a      	s32i.n	a2, a10, 0
40379411:	a972      	s32i.n	a10, a2, 28
40379413:	cc53      	bnez.n	a3, 0x4037941c
40379415:	a802      	l32i.n	a10, a2, 0
40379417:	b812      	l32i.n	a11, a2, 4
40379419:	650e00        	call8	0x40379500
4037941c:	0c02      	movi.n	a2, 0
4037941e:	1df0      	retw.n
40379420:	e802      	l32i.n	a14, a2, 0
40379422:	d812      	l32i.n	a13, a2, 4
40379424:	a818      	l32i.n	a10, a8, 4
40379426:	a73d07        	bltu	a13, a10, 0x40379431
40379429:	d79a24        	bne	a10, a13, 0x40379451
4037942c:	a808      	l32i.n	a10, a8, 0
4037942e:	a7be1f        	bgeu	a14, a10, 0x40379451
40379431:	a878      	l32i.n	a10, a8, 28
40379433:	8962      	s32i.n	a8, a2, 24
40379435:	a972      	s32i.n	a10, a2, 28
40379437:	290a      	s32i.n	a2, a10, 0
40379439:	a2c218        	addi	a10, a2, 24
4037943c:	a978      	s32i.n	a10, a8, 28
4037943e:	56a3fd        	bnez	a3, 0x4037941c
40379441:	ba99      	add.n	a9, a9, a11
40379443:	3809      	l32i.n	a3, a9, 0
40379445:	2793d3        	bne	a3, a2, 0x4037941c
40379448:	46f2ff        	j	0x40379415
4037944b:	008d0a        	add.s	f8, f13, f0
4037944e:	86f4ff        	j	0x40379424
40379451:	a868      	l32i.n	a10, a8, 24
40379453:	565aff        	bnez	a10, 0x4037944c
40379456:	a962      	s32i.n	a10, a2, 24
40379458:	2968      	s32i.n	a2, a8, 24
4037945a:	82c818        	addi	a8, a8, 24
4037945d:	8972      	s32i.n	a8, a2, 28
4037945f:	c6f6ff        	j	0x4037943e
40379462:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40379465:	4100a5        	l32r	a4, 0x40362868
40379468:	6206a1        	l8ui	a6, a6, 161
4037946b:	6eedd022 	ee.vmulas.s8.accx.ld.ip.qup	q4, a6, 208, q3, q5, q5, q0
4037946f:	112aaa        	l32r	a1, 0x40363d18
40379472:	a57806        	call8	0x4037fbfc
40379475:	1df0      	retw.n
40379477:	00          	.byte	00
40379478:	366100        	entry	a1, 48
4037947b:	816ced        	l32r	a8, 0x40374a2c
4037947e:	22a000        	movi	a2, 0
40379481:	a22800        	l32i	a10, a8, 0
40379484:	cbc1      	addi.n	a12, a1, 12
40379486:	bd02      	mov.n	a11, a2
40379488:	2931      	s32i.n	a2, a1, 12
4037948a:	e50006        	call8	0x4037f498
4037948d:	8831      	l32i.n	a8, a1, 12
4037948f:	661805        	bnei	a8, 1, 0x40379498
40379492:	20a220        	or	a10, a2, a2
40379495:	650d00        	call8	0x4037956c
40379498:	1df0      	retw.n
4037949a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037949d:	410065        	l32r	a4, 0x403528a0
403794a0:	04          	.byte	0x4
403794a1:	003163        	minu	a3, a1, a0
403794a4:	ed          	.byte	0xed
403794a5:	222300        	l32i	a2, a3, 0
403794a8:	822301        	l32i	a8, a3, 4
403794ab:	202a80        	add	a2, a10, a2
403794ae:	0c13      	movi.n	a3, 1
403794b0:	a73201        	bltu	a2, a10, 0x403794b5
403794b3:	0c03      	movi.n	a3, 0
403794b5:	8abb      	add.n	a11, a11, a8
403794b7:	ba33      	add.n	a3, a3, a11
403794b9:	1df0      	retw.n
403794bb:	003641        	srli	a3, a0, 6
403794be:	00          	.byte	00
403794bf:	815ded        	l32r	a8, 0x40374a34
403794c2:	0c4a      	movi.n	a10, 4
403794c4:	9808      	l32i.n	a9, a8, 0
403794c6:	c02000        	memw
403794c9:	82291b        	l32i	a8, a9, 108
403794cc:	a08820        	or	a8, a8, a10
403794cf:	c02000        	memw
403794d2:	82691b        	s32i	a8, a9, 108
403794d5:	8158ed        	l32r	a8, 0x40374a38
403794d8:	ad02      	mov.n	a10, a2
403794da:	822800        	l32i	a8, a8, 0
403794dd:	e00800        	callx8	a8
403794e0:	1df0      	retw.n
403794e2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403794e5:	4100a1        	l32r	a4, 0x403618e8
403794e8:	53          	.byte	0x53
403794e9:	ed0c      	mov.n	a14, a12
403794eb:	0b25      	addi.n	a2, a5, -1
403794ed:	eb07      	addi.n	a0, a7, 14
403794ef:	402b01        	slli	a2, a11, 28
403794f2:	a0a441        	srli	a10, a10, 4
403794f5:	a02220        	or	a2, a2, a10
403794f8:	b03441        	srli	a3, a11, 4
403794fb:	1df0      	retw.n
403794fd:	000000        	ill
40379500:	364100        	entry	a1, 32
40379503:	e55806        	call8	0x4037fa90
40379506:	514ded        	l32r	a5, 0x40374a3c
40379509:	7cfb      	movi.n	a11, -1
4037950b:	ad05      	mov.n	a10, a5
4037950d:	a55a06        	call8	0x4037fab8
40379510:	814ced        	l32r	a8, 0x40374a40
40379513:	d04411        	slli	a4, a4, 3
40379516:	4a48      	add.n	a4, a8, a4
40379518:	2904      	s32i.n	a2, a4, 0
4037951a:	3914      	s32i.n	a3, a4, 4
4037951c:	4818      	l32i.n	a4, a8, 4
4037951e:	d838      	l32i.n	a13, a8, 12
40379520:	9808      	l32i.n	a9, a8, 0
40379522:	c828      	l32i.n	a12, a8, 8
40379524:	d73405        	bltu	a4, a13, 0x4037952d
40379527:	479d07        	bne	a13, a4, 0x40379532
4037952a:	c7b904        	bgeu	a9, a12, 0x40379532
4037952d:	90c920        	or	a12, a9, a9
40379530:	dd04      	mov.n	a13, a4
40379532:	660c02        	bnei	a12, -1, 0x40379538
40379535:	260d07        	beqi	a13, -1, 0x40379540
40379538:	a13fed        	l32r	a10, 0x40374a34
4037953b:	0c2b      	movi.n	a11, 2
4037953d:	65eb07        	call8	0x403813f4
40379540:	e55406        	call8	0x4037fa90
40379543:	ad05      	mov.n	a10, a5
40379545:	656b06        	call8	0x4037fbfc
40379548:	1df0      	retw.n
4037954a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037954d:	410020        	l32r	a4, 0x40341550
40379550:	eb03      	addi.n	a0, a3, 14
40379552:	202d04        	extui	a2, a2, 13, 1
40379555:	e08211        	slli	a8, a2, 2
40379558:	213bed        	l32r	a2, 0x40374a44
4037955b:	0c19      	movi.n	a9, 1
4037955d:	8a22      	add.n	a2, a2, a8
4037955f:	2802      	l32i.n	a2, a2, 0
40379561:	0c08      	movi.n	a8, 0
40379563:	208993        	movnez	a8, a9, a2
40379566:	2d08      	mov.n	a2, a8
40379568:	1df0      	retw.n
4037956a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037956d:	a10082        	l32r	a10, 0x40359d70
40379570:	c13039        	l32r	a12, 0x40347a30
40379573:	118991        	l32r	a1, 0x4035db98
40379576:	3d01      	mov.n	a3, a1
40379578:	0c48      	movi.n	a8, 4
4037957a:	4921      	s32i.n	a4, a1, 8
4037957c:	5931      	s32i.n	a5, a1, 12
4037957e:	6941      	s32i.n	a6, a1, 16
40379580:	7951      	s32i.n	a7, a1, 20
40379582:	39a1      	s32i.n	a3, a1, 40
40379584:	89b1      	s32i.n	a8, a1, 44
40379586:	8c72      	beqz.n	a2, 0x40379591
40379588:	0c88      	movi.n	a8, 8
4037958a:	89b1      	s32i.n	a8, a1, 44
4037958c:	8811      	l32i.n	a8, a1, 4
4037958e:	661802        	bnei	a8, 1, 0x40379594
40379591:	e57903        	call8	0x4037cd30
40379594:	1df0      	retw.n
40379596:	000000        	ill
40379599:	41000c        	l32r	a4, 0x4033c59c
4037959c:	30          	.byte	0x30
4037959d:	00e813        	wsr.exccause	a0
403795a0:	c5bd00        	call0	0x4037a180
403795a3:	003000        	rfe
403795a6:	000010        	and	a0, a0, a0
403795a9:	112045        	l32r	a1, 0x4034aa2c
403795ac:	aafa      	add.n	a15, a10, a10
403795ae:	000045        	extui	a0, a0, 16, 5
403795b1:	0b00      	addi.n	a0, a0, -1
403795b3:	00          	.byte	00
403795b4:	850f00        	call0	0x403796b0
403795b7:	00          	.byte	00
403795b8:	00e803        	rsr.exccause	a0
403795bb:	664002        	bnei	a0, 4, 0x403795c1
403795be:	86de00        	j	0x4037993c
403795c1:	f6c0ef        	bgeui	a0, 32, 0x403795b4
403795c4:	2650e0        	beqi	a0, 5, 0x403795a8
403795c7:	2610e5        	beqi	a0, 1, 0x403795b0
403795ca:	100120        	or	a0, a1, a1
403795cd:	12d1ff        	addmi	a1, a1, 0xffffff00
403795d0:	12c140        	addi	a1, a1, 64
403795d3:	026104        	s32i	a0, a1, 16
403795d6:	00d149        	s32e	a0, a1, -12
403795d9:	00e603        	rsr.ps	a0
403795dc:	0921      	s32i.n	a0, a1, 8
403795de:	00b103        	rsr.epc1	a0
403795e1:	0911      	s32i.n	a0, a1, 4
403795e3:	00c149        	s32e	a0, a1, -16
403795e6:	c2610f        	s32i	a12, a1, 60
403795e9:	d26110        	s32i	a13, a1, 64
403795ec:	858d03        	call0	0x4037cec8
403795ef:	00e803        	rsr.exccause	a0
403795f2:	026114        	s32i	a0, a1, 80
403795f5:	00ee03        	rsr.excvaddr	a0
403795f8:	026115        	s32i	a0, a1, 84
403795fb:	00d103        	rsr.excsave1	a0
403795fe:	0931      	s32i.n	a0, a1, 12
40379600:	0112ed        	l32r	a0, 0x40374a48
40379603:	00e613        	wsr.ps	a0
40379606:	3831      	l32i.n	a3, a1, 12
40379608:	30c149        	s32e	a3, a1, -16
4037960b:	3841      	l32i.n	a3, a1, 16
4037960d:	30d149        	s32e	a3, a1, -12
40379610:	00b103        	rsr.epc1	a0
40379613:	5165ec        	l32r	a5, 0x403747a8
40379616:	102000        	rsync
40379619:	500020        	or	a0, a0, a5
4037961c:	000590        	addx2	a0, a5, a0
4037961f:	20e803        	rsr.exccause	a2
40379622:	20e803        	rsr.exccause	a2
40379625:	3109ed        	l32r	a3, 0x40374a4c
40379628:	40eb03        	rsr.prid	a4
4037962b:	404d04        	extui	a4, a4, 13, 1
4037962e:	402290        	addx2	a2, a2, a4
40379631:	3042a0        	addx4	a4, a2, a3
40379634:	4804      	l32i.n	a4, a4, 0
40379636:	6d01      	mov.n	a6, a1
40379638:	d00400        	callx4	a4
4037963b:	059303        	call0	0x4037cf6c
4037963e:	0821      	l32i.n	a0, a1, 8
40379640:	00e613        	wsr.ps	a0
40379643:	0811      	l32i.n	a0, a1, 4
40379645:	00b113        	wsr.epc1	a0
40379648:	0831      	l32i.n	a0, a1, 12
4037964a:	1841      	l32i.n	a1, a1, 16
4037964c:	102000        	rsync
4037964f:	003000        	rfe
40379652:	000008        	lsx	f0, a0, a0
40379655:	2100e6        	l32r	a2, 0x40372e58
40379658:	130811        	lsi	f1, a8, 68
4037965b:	00b113        	wsr.epc1	a0
4037965e:	0831      	l32i.n	a0, a1, 12
40379660:	1841      	l32i.n	a1, a1, 16
40379662:	102000        	rsync
40379665:	003000        	rfe
40379668:	12d1ff        	addmi	a1, a1, 0xffffff00
4037966b:	12c140        	addi	a1, a1, 64
4037966e:	c2610f        	s32i	a12, a1, 60
40379671:	d26110        	s32i	a13, a1, 64
40379674:	058503        	call0	0x4037cec8
40379677:	20b103        	rsr.epc1	a2
4037967a:	32c203        	addi	a3, a2, 3
4037967d:	000103        	rsr.lend	a0
40379680:	07930d        	bne	a3, a0, 0x40379691
40379683:	000203        	rsr.lcount	a0
40379686:	167000        	beqz	a0, 0x40379691
40379689:	0b00      	addi.n	a0, a0, -1
4037968b:	300003        	rsr.lbeg	a3
4037968e:	000213        	wsr.lcount	a0
40379691:	30b113        	wsr.epc1	a3
40379694:	458d03        	call0	0x4037cf6c
40379697:	12d101        	addmi	a1, a1, 0x100
4037969a:	12c1c0        	addi	a1, a1, -64
4037969d:	7cf0      	movi.n	a0, -1
4037969f:	202093        	movnez	a2, a0, a2
403796a2:	00d103        	rsr.excsave1	a0
403796a5:	003000        	rfe
403796a8:	46a100        	j	0x40379931
403796ab:	00          	.byte	00
403796ac:	069200        	j	0x403798f8
403796af:	000d01        	slli	a0, a13, 32
403796b2:	12d1ff        	addmi	a1, a1, 0xffffff00
403796b5:	12c140        	addi	a1, a1, 64
403796b8:	0941      	s32i.n	a0, a1, 16
403796ba:	00d149        	s32e	a0, a1, -12
403796bd:	00e603        	rsr.ps	a0
403796c0:	0921      	s32i.n	a0, a1, 8
403796c2:	00b103        	rsr.epc1	a0
403796c5:	0911      	s32i.n	a0, a1, 4
403796c7:	00d103        	rsr.excsave1	a0
403796ca:	0931      	s32i.n	a0, a1, 12
403796cc:	00c149        	s32e	a0, a1, -16
403796cf:	01e0ec        	l32r	a0, 0x40374a50
403796d2:	0901      	s32i.n	a0, a1, 0
403796d4:	00e803        	rsr.exccause	a0
403796d7:	5981      	s32i.n	a5, a1, 32
403796d9:	52c0e0        	addi	a5, a0, -32
403796dc:	2951      	s32i.n	a2, a1, 20
403796de:	3961      	s32i.n	a3, a1, 24
403796e0:	4971      	s32i.n	a4, a1, 28
403796e2:	f26112        	s32i	a15, a1, 72
403796e5:	457b03        	call0	0x4037ce9c
403796e8:	16cffb        	beqz	a15, 0x403796a8
403796eb:	21daec        	l32r	a2, 0x40374a54
403796ee:	30eb03        	rsr.prid	a3
403796f1:	303d04        	extui	a3, a3, 13, 1
403796f4:	2023a0        	addx4	a2, a3, a2
403796f7:	2802      	l32i.n	a2, a2, 0
403796f9:	22c248        	addi	a2, a2, 72
403796fc:	3902      	s32i.n	a3, a2, 0
403796fe:	01d6ec        	l32r	a0, 0x40374a58
40379701:	40e003        	rsr.cpenable	a4
40379704:	0005a0        	addx4	a0, a5, a0
40379707:	0800      	l32i.n	a0, a0, 0
40379709:	0020f4        	extui	a2, a0, 0, 16
4037970c:	204420        	or	a4, a4, a2
4037970f:	40e013        	wsr.cpenable	a4
40379712:	1c02      	movi.n	a2, 16
40379714:	302282        	mull	a2, a2, a3
40379717:	31d1ec        	l32r	a3, 0x40374a5c
4037971a:	2a33      	add.n	a3, a3, a2
4037971c:	3035a0        	addx4	a3, a5, a3
4037971f:	2803      	l32i.n	a2, a3, 0
40379721:	f903      	s32i.n	a15, a3, 0
40379723:	102000        	rsync
40379726:	279f02        	bne	a15, a2, 0x4037972c
40379729:	c6dfff        	j	0x403796ac
4037972c:	16820e        	beqz	a2, 0x40379818
4037972f:	421200        	l16ui	a4, a2, 0
40379732:	078402        	bany	a4, a0, 0x40379738
40379735:	c63700        	j	0x40379818
40379738:	51caec        	l32r	a5, 0x40374a60
4037973b:	004430        	xor	a4, a4, a0
4037973e:	425200        	s16i	a4, a2, 0
40379741:	004045        	extui	a4, a0, 16, 5
40379744:	5054a0        	addx4	a5, a4, a5
40379747:	421201        	l16ui	a4, a2, 2
4037974a:	5805      	l32i.n	a5, a5, 0
4037974c:	004420        	or	a4, a4, a0
4037974f:	425201        	s16i	a4, a2, 2
40379752:	2822      	l32i.n	a2, a2, 8
40379754:	003045        	extui	a3, a0, 16, 5
40379757:	5a22      	add.n	a2, a2, a5
40379759:	fcb3      	bnez.n	a3, 0x40379798
4037975b:	803ee3        	rur.fcr	a3
4037975e:	3902      	s32i.n	a3, a2, 0
40379760:	903ee3        	rur.fsr	a3
40379763:	3912      	s32i.n	a3, a2, 4
40379765:	034202        	ssi	f0, a2, 8
40379768:	134203        	ssi	f1, a2, 12
4037976b:	234204        	ssi	f2, a2, 16
4037976e:	334205        	ssi	f3, a2, 20
40379771:	434206        	ssi	f4, a2, 24
40379774:	534207        	ssi	f5, a2, 28
40379777:	634208        	ssi	f6, a2, 32
4037977a:	734209        	ssi	f7, a2, 36
4037977d:	83420a        	ssi	f8, a2, 40
40379780:	93420b        	ssi	f9, a2, 44
40379783:	a3420c        	ssi	f10, a2, 48
40379786:	b3420d        	ssi	f11, a2, 52
40379789:	c3420e        	ssi	f12, a2, 56
4037978c:	d3420f        	ssi	f13, a2, 60
4037978f:	e34210        	ssi	f14, a2, 64
40379792:	f34211        	ssi	f15, a2, 68
40379795:	c61f00        	j	0x40379818
40379798:	66337c        	bnei	a3, 3, 0x40379818
4037979b:	0030e3        	rur.accx_0	a3
4037979e:	3902      	s32i.n	a3, a2, 0
403797a0:	1030e3        	rur.accx_1	a3
403797a3:	3912      	s32i.n	a3, a2, 4
403797a5:	2030e3        	rur.qacc_h_0	a3
403797a8:	3922      	s32i.n	a3, a2, 8
403797aa:	3030e3        	rur.qacc_h_1	a3
403797ad:	3932      	s32i.n	a3, a2, 12
403797af:	4030e3        	rur.qacc_h_2	a3
403797b2:	3942      	s32i.n	a3, a2, 16
403797b4:	5030e3        	rur.qacc_h_3	a3
403797b7:	3952      	s32i.n	a3, a2, 20
403797b9:	6030e3        	rur.qacc_h_4	a3
403797bc:	3962      	s32i.n	a3, a2, 24
403797be:	7030e3        	rur.qacc_l_0	a3
403797c1:	3972      	s32i.n	a3, a2, 28
403797c3:	8030e3        	rur.qacc_l_1	a3
403797c6:	3982      	s32i.n	a3, a2, 32
403797c8:	9030e3        	rur.qacc_l_2	a3
403797cb:	3992      	s32i.n	a3, a2, 36
403797cd:	a030e3        	rur.qacc_l_3	a3
403797d0:	39a2      	s32i.n	a3, a2, 40
403797d2:	b030e3        	rur.qacc_l_4	a3
403797d5:	39b2      	s32i.n	a3, a2, 44
403797d7:	d030e3        	rur.sar_byte	a3
403797da:	39c2      	s32i.n	a3, a2, 48
403797dc:	e030e3        	rur.fft_bit_width	a3
403797df:	39d2      	s32i.n	a3, a2, 52
403797e1:	f030e3        	rur.ua_state_0	a3
403797e4:	39e2      	s32i.n	a3, a2, 56
403797e6:	0031e3        	rur.ua_state_1	a3
403797e9:	39f2      	s32i.n	a3, a2, 60
403797eb:	1031e3        	rur.ua_state_2	a3
403797ee:	326210        	s32i	a3, a2, 64
403797f1:	2031e3        	rur.ua_state_3	a3
403797f4:	326211        	s32i	a3, a2, 68
403797f7:	2465cd        	st.qr	q0, a2, 80
403797fa:	24e6cd        	st.qr	q1, a2, 96
403797fd:	2467dd        	st.qr	q2, a2, 112
40379800:	22d201        	addmi	a2, a2, 0x100
40379803:	22c280        	addi	a2, a2, -128
40379806:	24e0dd        	st.qr	q3, a2, 0
40379809:	2461ed        	st.qr	q4, a2, 16
4037980c:	24e2ed        	st.qr	q5, a2, 32
4037980f:	2463fd        	st.qr	q6, a2, 48
40379812:	24e4fd        	st.qr	q7, a2, 64
40379815:	c6ffff        	j	0x40379818
40379818:	16cf0d        	beqz	a15, 0x403798f8
4037981b:	321f01        	l16ui	a3, a15, 2
4037981e:	4190ec        	l32r	a4, 0x40374a60
40379821:	078302        	bany	a3, a0, 0x40379827
40379824:	063800        	j	0x40379908
40379827:	003330        	xor	a3, a3, a0
4037982a:	325f01        	s16i	a3, a15, 2
4037982d:	003045        	extui	a3, a0, 16, 5
40379830:	4043a0        	addx4	a4, a3, a4
40379833:	4804      	l32i.n	a4, a4, 0
40379835:	582f      	l32i.n	a5, a15, 8
40379837:	5a24      	add.n	a2, a4, a5
40379839:	fcb3      	bnez.n	a3, 0x40379878
4037983b:	3802      	l32i.n	a3, a2, 0
4037983d:	30e8f3        	wur.fcr	a3
40379840:	3812      	l32i.n	a3, a2, 4
40379842:	30e9f3        	wur.fsr	a3
40379845:	030202        	lsi	f0, a2, 8
40379848:	130203        	lsi	f1, a2, 12
4037984b:	230204        	lsi	f2, a2, 16
4037984e:	330205        	lsi	f3, a2, 20
40379851:	430206        	lsi	f4, a2, 24
40379854:	530207        	lsi	f5, a2, 28
40379857:	630208        	lsi	f6, a2, 32
4037985a:	730209        	lsi	f7, a2, 36
4037985d:	83020a        	lsi	f8, a2, 40
40379860:	93020b        	lsi	f9, a2, 44
40379863:	a3020c        	lsi	f10, a2, 48
40379866:	b3020d        	lsi	f11, a2, 52
40379869:	c3020e        	lsi	f12, a2, 56
4037986c:	d3020f        	lsi	f13, a2, 60
4037986f:	e30210        	lsi	f14, a2, 64
40379872:	f30211        	lsi	f15, a2, 68
40379875:	c61f00        	j	0x403798f8
40379878:	66337c        	bnei	a3, 3, 0x403798f8
4037987b:	3802      	l32i.n	a3, a2, 0
4037987d:	3000f3        	wur.accx_0	a3
40379880:	3812      	l32i.n	a3, a2, 4
40379882:	3001f3        	wur.accx_1	a3
40379885:	3822      	l32i.n	a3, a2, 8
40379887:	3002f3        	wur.qacc_h_0	a3
4037988a:	3832      	l32i.n	a3, a2, 12
4037988c:	3003f3        	wur.qacc_h_1	a3
4037988f:	3842      	l32i.n	a3, a2, 16
40379891:	3004f3        	wur.qacc_h_2	a3
40379894:	3852      	l32i.n	a3, a2, 20
40379896:	3005f3        	wur.qacc_h_3	a3
40379899:	3862      	l32i.n	a3, a2, 24
4037989b:	3006f3        	wur.qacc_h_4	a3
4037989e:	3872      	l32i.n	a3, a2, 28
403798a0:	3007f3        	wur.qacc_l_0	a3
403798a3:	3882      	l32i.n	a3, a2, 32
403798a5:	3008f3        	wur.qacc_l_1	a3
403798a8:	3892      	l32i.n	a3, a2, 36
403798aa:	3009f3        	wur.qacc_l_2	a3
403798ad:	38a2      	l32i.n	a3, a2, 40
403798af:	300af3        	wur.qacc_l_3	a3
403798b2:	38b2      	l32i.n	a3, a2, 44
403798b4:	300bf3        	wur.qacc_l_4	a3
403798b7:	38c2      	l32i.n	a3, a2, 48
403798b9:	300df3        	wur.sar_byte	a3
403798bc:	38d2      	l32i.n	a3, a2, 52
403798be:	300ef3        	wur.fft_bit_width	a3
403798c1:	38e2      	l32i.n	a3, a2, 56
403798c3:	300ff3        	wur.ua_state_0	a3
403798c6:	38f2      	l32i.n	a3, a2, 60
403798c8:	3010f3        	wur.ua_state_1	a3
403798cb:	322210        	l32i	a3, a2, 64
403798ce:	3011f3        	wur.ua_state_2	a3
403798d1:	322211        	l32i	a3, a2, 68
403798d4:	3012f3        	wur.ua_state_3	a3
403798d7:	2425cd        	ld.qr	q0, a2, 80
403798da:	24a6cd        	ld.qr	q1, a2, 96
403798dd:	2427dd        	ld.qr	q2, a2, 112
403798e0:	22d201        	addmi	a2, a2, 0x100
403798e3:	22c280        	addi	a2, a2, -128
403798e6:	24a0dd        	ld.qr	q3, a2, 0
403798e9:	2421ed        	ld.qr	q4, a2, 16
403798ec:	24a2ed        	ld.qr	q5, a2, 32
403798ef:	2423fd        	ld.qr	q6, a2, 48
403798f2:	24a4fd        	ld.qr	q7, a2, 64
403798f5:	c6ffff        	j	0x403798f8
403798f8:	f22112        	l32i	a15, a1, 72
403798fb:	5881      	l32i.n	a5, a1, 32
403798fd:	4871      	l32i.n	a4, a1, 28
403798ff:	322106        	l32i	a3, a1, 24
40379902:	222105        	l32i	a2, a1, 20
40379905:	c5d4ff        	call0	0x40379654
40379908:	221f02        	l16ui	a2, a15, 4
4037990b:	0702e9        	bnone	a2, a0, 0x403798f8
4037990e:	002210        	and	a2, a2, a0
40379911:	202074        	extui	a2, a2, 0, 8
40379914:	626109        	s32i	a6, a1, 36
40379917:	72610a        	s32i	a7, a1, 40
4037991a:	d26110        	s32i	a13, a1, 64
4037991d:	e26111        	s32i	a14, a1, 68
40379920:	c56f03        	call0	0x4037d020
40379923:	622109        	l32i	a6, a1, 36
40379926:	78a1      	l32i.n	a7, a1, 40
40379928:	d22110        	l32i	a13, a1, 64
4037992b:	e22111        	l32i	a14, a1, 68
4037992e:	86f1ff        	j	0x403798f8
40379931:	0c40      	movi.n	a0, 4
40379933:	00e813        	wsr.exccause	a0
40379936:	101120        	or	a1, a1, a1
40379939:	458400        	call0	0x4037a180
4037993c:	100120        	or	a0, a1, a1
4037993f:	12d1ff        	addmi	a1, a1, 0xffffff00
40379942:	12c140        	addi	a1, a1, 64
40379945:	026104        	s32i	a0, a1, 16
40379948:	00e603        	rsr.ps	a0
4037994b:	026102        	s32i	a0, a1, 8
4037994e:	00b103        	rsr.epc1	a0
40379951:	0911      	s32i.n	a0, a1, 4
40379953:	00d103        	rsr.excsave1	a0
40379956:	0931      	s32i.n	a0, a1, 12
40379958:	013eec        	l32r	a0, 0x40374a50
4037995b:	0901      	s32i.n	a0, a1, 0
4037995d:	0d01      	mov.n	a0, a1
4037995f:	00d113        	wsr.excsave1	a0
40379962:	453e03        	call0	0x4037cd48
40379965:	013fec        	l32r	a0, 0x40374a64
40379968:	00e613        	wsr.ps	a0
4037996b:	102000        	rsync
4037996e:	20e403        	rsr.intenable	a2
40379971:	30e203        	rsr.interrupt	a3
40379974:	413dec        	l32r	a4, 0x40374a68
40379977:	302210        	and	a2, a2, a3
4037997a:	402210        	and	a2, a2, a4
4037997d:	16f204        	beqz	a2, 0x403799d0
40379980:	00d103        	rsr.excsave1	a0
40379983:	3830      	l32i.n	a3, a0, 12
40379985:	30c149        	s32e	a3, a1, -16
40379988:	3840      	l32i.n	a3, a0, 16
4037998a:	30d149        	s32e	a3, a1, -12
4037998d:	00b103        	rsr.epc1	a0
40379990:	4186eb        	l32r	a4, 0x403747a8
40379993:	400020        	or	a0, a0, a4
40379996:	000490        	addx2	a0, a4, a0
40379999:	0b42      	addi.n	a4, a2, -1
4037999b:	402210        	and	a2, a2, a4
4037999e:	5672ff        	bnez	a2, 0x40379999
403799a1:	1b44      	addi.n	a4, a4, 1
403799a3:	40e313        	wsr.intclear	a4
403799a6:	1cf3      	movi.n	a3, 31
403799a8:	40f440        	nsau	a4, a4
403799ab:	4033c0        	sub	a3, a3, a4
403799ae:	c0eb03        	rsr.prid	a12
403799b1:	c0cd04        	extui	a12, a12, 13, 1
403799b4:	c03390        	addx2	a3, a3, a12
403799b7:	412dec        	l32r	a4, 0x40374a6c
403799ba:	4033b0        	addx8	a3, a3, a4
403799bd:	4803      	l32i.n	a4, a3, 0
403799bf:	602620        	or	a2, a6, a6
403799c2:	622301        	l32i	a6, a3, 4
403799c5:	d00400        	callx4	a4
403799c8:	86e8ff        	j	0x4037996e
403799cb:	000046        	ee.ldf.64.xp	f0, f4, a0, a0
403799ce:	e7ff10        	bbsi	a15, 30, 0x403799e2
403799d1:	112085        	l32r	a1, 0x4035ae54
403799d4:	3b03      	addi.n	a0, a3, 3
403799d6:	000010        	and	a0, a0, a0
403799d9:	012012        	l32r	a0, 0x4033e25c
403799dc:	d1ff12        	l32r	a13, 0x4033e5d8
403799df:	c14002        	l32r	a12, 0x4033a2e0
403799e2:	610400        	l32r	a6, 0x403399f4
403799e5:	c20302        	l8ui	a12, a3, 2
403799e8:	610200        	l32r	a6, 0x403399f0
403799eb:	b20309        	l8ui	a11, a3, 9
403799ee:	1100d2        	l32r	a1, 0x4036e1f0
403799f1:	030931        	lsi	f0, a9, 196
403799f4:	011fec        	l32r	a0, 0x40374a70
403799f7:	0901      	s32i.n	a0, a1, 0
403799f9:	0d01      	mov.n	a0, a1
403799fb:	00d213        	wsr.excsave2	a0
403799fe:	853403        	call0	0x4037cd48
40379a01:	011cec        	l32r	a0, 0x40374a74
40379a04:	00e613        	wsr.ps	a0
40379a07:	102000        	rsync
40379a0a:	20e403        	rsr.intenable	a2
40379a0d:	30e203        	rsr.interrupt	a3
40379a10:	411aec        	l32r	a4, 0x40374a78
40379a13:	302210        	and	a2, a2, a3
40379a16:	402210        	and	a2, a2, a4
40379a19:	16f204        	beqz	a2, 0x40379a6c
40379a1c:	00d203        	rsr.excsave2	a0
40379a1f:	3830      	l32i.n	a3, a0, 12
40379a21:	30c149        	s32e	a3, a1, -16
40379a24:	3840      	l32i.n	a3, a0, 16
40379a26:	30d149        	s32e	a3, a1, -12
40379a29:	00b203        	rsr.epc2	a0
40379a2c:	415feb        	l32r	a4, 0x403747a8
40379a2f:	400020        	or	a0, a0, a4
40379a32:	000490        	addx2	a0, a4, a0
40379a35:	0b42      	addi.n	a4, a2, -1
40379a37:	402210        	and	a2, a2, a4
40379a3a:	5672ff        	bnez	a2, 0x40379a35
40379a3d:	1b44      	addi.n	a4, a4, 1
40379a3f:	40e313        	wsr.intclear	a4
40379a42:	1cf3      	movi.n	a3, 31
40379a44:	40f440        	nsau	a4, a4
40379a47:	4033c0        	sub	a3, a3, a4
40379a4a:	c0eb03        	rsr.prid	a12
40379a4d:	c0cd04        	extui	a12, a12, 13, 1
40379a50:	c03390        	addx2	a3, a3, a12
40379a53:	4106ec        	l32r	a4, 0x40374a6c
40379a56:	4033b0        	addx8	a3, a3, a4
40379a59:	4803      	l32i.n	a4, a3, 0
40379a5b:	602620        	or	a2, a6, a6
40379a5e:	622301        	l32i	a6, a3, 4
40379a61:	d00400        	callx4	a4
40379a64:	86e8ff        	j	0x40379a0a
40379a67:	000046        	ee.ldf.64.xp	f0, f4, a0, a0
40379a6a:	e7ff10        	bbsi	a15, 30, 0x40379a7e
40379a6d:	1120c5        	l32r	a1, 0x4036aef0
40379a70:	310300        	l32r	a3, 0x40339a7c
40379a73:	000821        	srai	a0, a0, 8
40379a76:	00c213        	wsr.eps2	a0
40379a79:	0811      	l32i.n	a0, a1, 4
40379a7b:	00b213        	wsr.epc2	a0
40379a7e:	0831      	l32i.n	a0, a1, 12
40379a80:	1841      	l32i.n	a1, a1, 16
40379a82:	102000        	rsync
40379a85:	103200        	rfi	2
40379a88:	100120        	or	a0, a1, a1
40379a8b:	12d1ff        	addmi	a1, a1, 0xffffff00
40379a8e:	12c140        	addi	a1, a1, 64
40379a91:	026104        	s32i	a0, a1, 16
40379a94:	00c303        	rsr.eps3	a0
40379a97:	026102        	s32i	a0, a1, 8
40379a9a:	00b303        	rsr.epc3	a0
40379a9d:	0911      	s32i.n	a0, a1, 4
40379a9f:	00d303        	rsr.excsave3	a0
40379aa2:	0931      	s32i.n	a0, a1, 12
40379aa4:	01f6eb        	l32r	a0, 0x40374a7c
40379aa7:	0901      	s32i.n	a0, a1, 0
40379aa9:	0d01      	mov.n	a0, a1
40379aab:	00d313        	wsr.excsave3	a0
40379aae:	852903        	call0	0x4037cd48
40379ab1:	01f3eb        	l32r	a0, 0x40374a80
40379ab4:	00e613        	wsr.ps	a0
40379ab7:	102000        	rsync
40379aba:	20e403        	rsr.intenable	a2
40379abd:	30e203        	rsr.interrupt	a3
40379ac0:	41f1eb        	l32r	a4, 0x40374a84
40379ac3:	302210        	and	a2, a2, a3
40379ac6:	402210        	and	a2, a2, a4
40379ac9:	16f204        	beqz	a2, 0x40379b1c
40379acc:	00d303        	rsr.excsave3	a0
40379acf:	3830      	l32i.n	a3, a0, 12
40379ad1:	30c149        	s32e	a3, a1, -16
40379ad4:	3840      	l32i.n	a3, a0, 16
40379ad6:	30d149        	s32e	a3, a1, -12
40379ad9:	00b303        	rsr.epc3	a0
40379adc:	4133eb        	l32r	a4, 0x403747a8
40379adf:	400020        	or	a0, a0, a4
40379ae2:	000490        	addx2	a0, a4, a0
40379ae5:	0b42      	addi.n	a4, a2, -1
40379ae7:	402210        	and	a2, a2, a4
40379aea:	5672ff        	bnez	a2, 0x40379ae5
40379aed:	1b44      	addi.n	a4, a4, 1
40379aef:	40e313        	wsr.intclear	a4
40379af2:	1cf3      	movi.n	a3, 31
40379af4:	40f440        	nsau	a4, a4
40379af7:	4033c0        	sub	a3, a3, a4
40379afa:	c0eb03        	rsr.prid	a12
40379afd:	c0cd04        	extui	a12, a12, 13, 1
40379b00:	c03390        	addx2	a3, a3, a12
40379b03:	41daeb        	l32r	a4, 0x40374a6c
40379b06:	4033b0        	addx8	a3, a3, a4
40379b09:	4803      	l32i.n	a4, a3, 0
40379b0b:	602620        	or	a2, a6, a6
40379b0e:	622301        	l32i	a6, a3, 4
40379b11:	d00400        	callx4	a4
40379b14:	86e8ff        	j	0x40379aba
40379b17:	000046        	ee.ldf.64.xp	f0, f4, a0, a0
40379b1a:	e7ff10        	bbsi	a15, 30, 0x40379b2e
40379b1d:	1120c5        	l32r	a1, 0x4036afa0
40379b20:	260300        	beqi	a3, -1, 0x40379b24
40379b23:	000821        	srai	a0, a0, 8
40379b26:	00c313        	wsr.eps3	a0
40379b29:	0811      	l32i.n	a0, a1, 4
40379b2b:	00b313        	wsr.epc3	a0
40379b2e:	0831      	l32i.n	a0, a1, 12
40379b30:	1841      	l32i.n	a1, a1, 16
40379b32:	102000        	rsync
40379b35:	103300        	rfi	3
40379b38:	364100        	entry	a1, 32
40379b3b:	30eb03        	rsr.prid	a3
40379b3e:	303d04        	extui	a3, a3, 13, 1
40379b41:	0c14      	movi.n	a4, 1
40379b43:	61d1eb        	l32r	a6, 0x40374a88
40379b46:	cb53      	addi.n	a5, a3, 12
40379b48:	001340        	ssl	a3
40379b4b:	0044a1        	sll	a4, a4
40379b4e:	e03311        	slli	a3, a3, 2
40379b51:	e05511        	slli	a5, a5, 2
40379b54:	3a76      	add.n	a7, a6, a3
40379b56:	9802      	l32i.n	a9, a2, 0
40379b58:	0c1b      	movi.n	a11, 1
40379b5a:	c02000        	memw
40379b5d:	82291b        	l32i	a8, a9, 108
40379b60:	ad02      	mov.n	a10, a2
40379b62:	408820        	or	a8, a8, a4
40379b65:	c02000        	memw
40379b68:	82691b        	s32i	a8, a9, 108
40379b6b:	658307        	call8	0x403813a0
40379b6e:	8802      	l32i.n	a8, a2, 0
40379b70:	0c0d      	movi.n	a13, 0
40379b72:	5a88      	add.n	a8, a8, a5
40379b74:	c02000        	memw
40379b77:	c818      	l32i.n	a12, a8, 4
40379b79:	8159ea        	l32r	a8, 0x403744e0
40379b7c:	80cc10        	and	a12, a12, a8
40379b7f:	8101eb        	l32r	a8, 0x40374784
40379b82:	e00800        	callx8	a8
40379b85:	b807      	l32i.n	a11, a7, 0
40379b87:	b09ac0        	sub	a9, a10, a11
40379b8a:	9c89      	beqz.n	a9, 0x40379ba6
40379b8c:	0c16      	movi.n	a6, 1
40379b8e:	8c3b      	beqz.n	a11, 0x40379b95
40379b90:	6d09      	mov.n	a6, a9
40379b92:	a09a20        	or	a9, a10, a10
40379b95:	81bceb        	l32r	a8, 0x40374a88
40379b98:	3aa8      	add.n	a10, a8, a3
40379b9a:	926a00        	s32i	a9, a10, 0
40379b9d:	62c6ff        	addi	a6, a6, -1
40379ba0:	a55603        	call8	0x4037d10c
40379ba3:	5666ff        	bnez	a6, 0x40379b9d
40379ba6:	822200        	l32i	a8, a2, 0
40379ba9:	c02000        	memw
40379bac:	82281c        	l32i	a8, a8, 112
40379baf:	8784a3        	bany	a4, a8, 0x40379b56
40379bb2:	900000        	retw
40379bb5:	000000        	ill
40379bb8:	0c10      	movi.n	a0, 1
40379bba:	00e813        	wsr.exccause	a0
40379bbd:	00b603        	rsr.epc6	a0
40379bc0:	00b113        	wsr.epc1	a0
40379bc3:	00d603        	rsr.excsave6	a0
40379bc6:	00d113        	wsr.excsave1	a0
40379bc9:	455b00        	call0	0x4037a180
40379bcc:	103600        	rfi	6
40379bcf:	0000d4        	extui	a0, a0, 0, 14
40379bd2:	03          	.byte	0x3
40379bd3:	103400        	rfi	4
40379bd6:	000000        	ill
40379bd9:	d50310        	call4	0x40389c18
40379bdc:	350000        	call12	0x40379be0
40379bdf:	0000d7        	ee.stf.64.xp	f0, f13, a0, a0
40379be2:	03          	.byte	0x3
40379be3:	103700        	rfi	7
40379be6:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40379be9:	410041        	l32r	a4, 0x40349fec
40379bec:	a8eb      	l32i.n	a10, a11, 56
40379bee:	b2afff        	movi	a11, -1
40379bf1:	ad04      	mov.n	a10, a4
40379bf3:	65ec05        	call8	0x4037fab8
40379bf6:	8802      	l32i.n	a8, a2, 0
40379bf8:	ccb8      	bnez.n	a8, 0x40379c07
40379bfa:	ad03      	mov.n	a10, a3
40379bfc:	e5b203        	call8	0x4037d72c
40379bff:	cc1a      	bnez.n	a10, 0x40379c04
40379c01:	a5cc08        	call8	0x403828cc
40379c04:	a26200        	s32i	a10, a2, 0
40379c07:	40a420        	or	a10, a4, a4
40379c0a:	25ff05        	call8	0x4037fbfc
40379c0d:	900000        	retw
40379c10:	366100        	entry	a1, 48
40379c13:	5802      	l32i.n	a5, a2, 0
40379c15:	ec75      	bnez.n	a5, 0x40379c40
40379c17:	a51c05        	call8	0x4037ede0
40379c1a:	661a06        	bnei	a10, 1, 0x40379c24
40379c1d:	0c02      	movi.n	a2, 0
40379c1f:	1df0      	retw.n
40379c21:	000000        	ill
40379c24:	40b420        	or	a11, a4, a4
40379c27:	20a220        	or	a10, a2, a2
40379c2a:	e5fbff        	call8	0x40379be8
40379c2d:	5802      	l32i.n	a5, a2, 0
40379c2f:	ccd5      	bnez.n	a5, 0x40379c40
40379c31:	d197eb        	l32r	a13, 0x40374a90
40379c34:	c198eb        	l32r	a12, 0x40374a94
40379c37:	a198eb        	l32r	a10, 0x40374a98
40379c3a:	b2a081        	movi	a11, 129
40379c3d:	25d208        	call8	0x40382960
40379c40:	101120        	or	a1, a1, a1
40379c43:	e51905        	call8	0x4037ede0
40379c46:	261ad3        	beqi	a10, 1, 0x40379c1d
40379c49:	20e603        	rsr.ps	a2
40379c4c:	202034        	extui	a2, a2, 0, 4
40379c4f:	bc52      	beqz.n	a2, 0x40379c88
40379c51:	664405        	bnei	a4, 4, 0x40379c5a
40379c54:	101120        	or	a1, a1, a1
40379c57:	65c708        	call8	0x403828cc
40379c5a:	0c0b      	movi.n	a11, 0
40379c5c:	cbc1      	addi.n	a12, a1, 12
40379c5e:	ad05      	mov.n	a10, a5
40379c60:	b931      	s32i.n	a11, a1, 12
40379c62:	251004        	call8	0x4037dd64
40379c65:	2d0a      	mov.n	a2, a10
40379c67:	cc1a      	bnez.n	a10, 0x40379c6c
40379c69:	5673fe        	bnez	a3, 0x40379c54
40379c6c:	322103        	l32i	a3, a1, 12
40379c6f:	165300        	beqz	a3, 0x40379c78
40379c72:	a2a000        	movi	a10, 0
40379c75:	658fff        	call8	0x4037956c
40379c78:	0b22      	addi.n	a2, a2, -1
40379c7a:	0c14      	movi.n	a4, 1
40379c7c:	0c03      	movi.n	a3, 0
40379c7e:	203493        	movnez	a3, a4, a2
40379c81:	302060        	neg	a2, a3
40379c84:	c6e5ff        	j	0x40379c1f
40379c87:	0030b3        	movgez	a3, a0, a0
40379c8a:	2050a5        	extui	a5, a2, 16, 11
40379c8d:	206644        	extui	a6, a2, 6, 5
40379c90:	0ae5      	add.n	a14, a5, a0
40379c92:	f4          	.byte	0xf4
40379c93:	03          	.byte	0x3
40379c94:	a02a20        	or	a2, a10, a10
40379c97:	46f7ff        	j	0x40379c78
40379c9a:	0000e5        	extui	a0, a0, 16, 15
40379c9d:	db03      	addi.n	a0, a3, 13
40379c9f:	46fcff        	j	0x40379c94
40379ca2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40379ca5:	410056        	l32r	a4, 0x4034f4a8
40379ca8:	e200d1        	l8ui	a14, a0, 209
40379cab:	7ceb      	movi.n	a11, -2
40379cad:	c17ceb        	l32r	a12, 0x40374aa0
40379cb0:	a17aeb        	l32r	a10, 0x40374a98
40379cb3:	b2a135        	movi	a11, 0x135
40379cb6:	a5ca08        	call8	0x40382960
40379cb9:	1df0      	retw.n
40379cbb:	00          	.byte	00
40379cbc:	366100        	entry	a1, 48
40379cbf:	251205        	call8	0x4037ede0
40379cc2:	261a38        	beqi	a10, 1, 0x40379cfe
40379cc5:	a22200        	l32i	a10, a2, 0
40379cc8:	56ea00        	bnez	a10, 0x40379cda
40379ccb:	d176eb        	l32r	a13, 0x40374aa4
40379cce:	c176eb        	l32r	a12, 0x40374aa8
40379cd1:	a171eb        	l32r	a10, 0x40374a98
40379cd4:	b2a0ba        	movi	a11, 186
40379cd7:	a5c808        	call8	0x40382960
40379cda:	b0e603        	rsr.ps	a11
40379cdd:	b0b034        	extui	a11, a11, 0, 4
40379ce0:	16cb01        	beqz	a11, 0x40379d00
40379ce3:	664302        	bnei	a3, 4, 0x40379ce9
40379ce6:	65be08        	call8	0x403828cc
40379ce9:	32a000        	movi	a3, 0
40379cec:	b2c10c        	addi	a11, a1, 12
40379cef:	3931      	s32i.n	a3, a1, 12
40379cf1:	e5b403        	call8	0x4037d840
40379cf4:	8831      	l32i.n	a8, a1, 12
40379cf6:	371804        	beq	a8, a3, 0x40379cfe
40379cf9:	ad03      	mov.n	a10, a3
40379cfb:	2587ff        	call8	0x4037956c
40379cfe:	1df0      	retw.n
40379d00:	664306        	bnei	a3, 4, 0x40379d0a
40379d03:	259f03        	call8	0x4037d6f4
40379d06:	06fdff        	j	0x40379cfe
40379d09:	00          	.byte	00
40379d0a:	dd0b      	mov.n	a13, a11
40379d0c:	cd0b      	mov.n	a12, a11
40379d0e:	e58103        	call8	0x4037d52c
40379d11:	46faff        	j	0x40379cfe
40379d14:	364100        	entry	a1, 32
40379d17:	82a000        	movi	a8, 0
40379d1a:	20a220        	or	a10, a2, a2
40379d1d:	826200        	s32i	a8, a2, 0
40379d20:	0c1b      	movi.n	a11, 1
40379d22:	65ecff        	call8	0x40379be8
40379d25:	1df0      	retw.n
40379d27:	003641        	srli	a3, a0, 6
40379d2a:	004158        	ssxp	f4, a1, a0
40379d2d:	ebb2      	addi.n	a11, a2, 14
40379d2f:	afff40a4 	ee.fft.ams.s16.st.incp	q4, q0, a10, a15, q0, q7, q6, 1
40379d33:	20          	.byte	0x20
40379d34:	25d805        	call8	0x4037fab8
40379d37:	322200        	l32i	a3, a2, 0
40379d3a:	9cd3      	beqz.n	a3, 0x40379d5b
40379d3c:	ad03      	mov.n	a10, a3
40379d3e:	657803        	call8	0x4037d4c4
40379d41:	5d0a      	mov.n	a5, a10
40379d43:	8cda      	beqz.n	a10, 0x40379d54
40379d45:	d159eb        	l32r	a13, 0x40374aac
40379d48:	c15aeb        	l32r	a12, 0x40374ab0
40379d4b:	a153eb        	l32r	a10, 0x40374a98
40379d4e:	b2a06b        	movi	a11, 107
40379d51:	e5c008        	call8	0x40382960
40379d54:	ad03      	mov.n	a10, a3
40379d56:	e50e04        	call8	0x4037de44
40379d59:	5902      	s32i.n	a5, a2, 0
40379d5b:	ad04      	mov.n	a10, a4
40379d5d:	e5e905        	call8	0x4037fbfc
40379d60:	1df0      	retw.n
40379d62:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40379d65:	41000c        	l32r	a4, 0x4033cd68
40379d68:	1c7c      	movi.n	a12, 23
40379d6a:	fbad      	addi.n	a10, a13, 15
40379d6c:	0225ea        	l32i	a0, a5, 0x3a8
40379d6f:	ff1df000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 208, q4, q3, q7, q0
40379d73:	003641        	srli	a3, a0, 6
40379d76:	00          	.byte	00
40379d77:	0c4c      	movi.n	a12, 4
40379d79:	7cfb      	movi.n	a11, -1
40379d7b:	ad02      	mov.n	a10, a2
40379d7d:	25e9ff        	call8	0x40379c10
40379d80:	1df0      	retw.n
40379d82:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40379d85:	41000c        	l32r	a4, 0x4033cd88
40379d88:	1c0c      	movi.n	a12, 16
40379d8a:	0bad      	addi.n	a10, a13, -1
40379d8c:	0225e8        	l32i	a0, a5, 0x3a0
40379d8f:	ff2d0a1d 	ee.vmulas.s16.qacc.ld.ip.qup	q3, a15, -48, q4, q4, q0, q2
40379d93:	f03641        	srli	a3, a15, 6
40379d96:	00          	.byte	00
40379d97:	0c4c      	movi.n	a12, 4
40379d99:	0c0b      	movi.n	a11, 0
40379d9b:	ad02      	mov.n	a10, a2
40379d9d:	25e7ff        	call8	0x40379c10
40379da0:	2d0a      	mov.n	a2, a10
40379da2:	1df0      	retw.n
40379da4:	364100        	entry	a1, 32
40379da7:	b2a001        	movi	a11, 1
40379daa:	20a220        	or	a10, a2, a2
40379dad:	e5f0ff        	call8	0x40379cbc
40379db0:	900000        	retw
40379db3:	003641        	srli	a3, a0, 6
40379db6:	00b2a0        	addx4	a11, a2, a0
40379db9:	0420a2        	ee.vldbc.32.ip	q4, a0, 128
40379dbc:	20          	.byte	0x20
40379dbd:	e5efff        	call8	0x40379cbc
40379dc0:	900000        	retw
40379dc3:	003641        	srli	a3, a0, 6
40379dc6:	0082a0        	addx4	a8, a2, a0
40379dc9:	0020a2        	muluh	a2, a0, a0
40379dcc:	208262        	saltu	a8, a2, a2
40379dcf:	000c1b        	un.s	b0, f12, f0
40379dd2:	65e1ff        	call8	0x40379be8
40379dd5:	1df0      	retw.n
40379dd7:	003641        	srli	a3, a0, 6
40379dda:	0082a0        	addx4	a8, a2, a0
40379ddd:	0020a2        	muluh	a2, a0, a0
40379de0:	208262        	saltu	a8, a2, a2
40379de3:	000c4b        	olt.s	b0, f12, f0
40379de6:	25e0ff        	call8	0x40379be8
40379de9:	1df0      	retw.n
40379deb:	00          	.byte	00
40379dec:	366100        	entry	a1, 48
40379def:	a2c10c        	addi	a10, a1, 12
40379df2:	226103        	s32i	a2, a1, 12
40379df5:	25f3ff        	call8	0x40379d28
40379df8:	900000        	retw
40379dfb:	00          	.byte	00
40379dfc:	366100        	entry	a1, 48
40379dff:	a2c10c        	addi	a10, a1, 12
40379e02:	226103        	s32i	a2, a1, 12
40379e05:	25f2ff        	call8	0x40379d28
40379e08:	900000        	retw
40379e0b:	00          	.byte	00
40379e0c:	366100        	entry	a1, 48
40379e0f:	20a220        	or	a10, a2, a2
40379e12:	226103        	s32i	a2, a1, 12
40379e15:	e5e8ff        	call8	0x40379ca4
40379e18:	8127eb        	l32r	a8, 0x40374ab4
40379e1b:	222200        	l32i	a2, a2, 0
40379e1e:	879204        	bne	a2, a8, 0x40379e26
40379e21:	2125eb        	l32r	a2, 0x40374ab8
40379e24:	2931      	s32i.n	a2, a1, 12
40379e26:	cba1      	addi.n	a10, a1, 12
40379e28:	a5f3ff        	call8	0x40379d64
40379e2b:	1df0      	retw.n
40379e2d:	000000        	ill
40379e30:	366100        	entry	a1, 48
40379e33:	20a220        	or	a10, a2, a2
40379e36:	226103        	s32i	a2, a1, 12
40379e39:	a5e6ff        	call8	0x40379ca4
40379e3c:	811eeb        	l32r	a8, 0x40374ab4
40379e3f:	222200        	l32i	a2, a2, 0
40379e42:	879204        	bne	a2, a8, 0x40379e4a
40379e45:	211deb        	l32r	a2, 0x40374abc
40379e48:	2931      	s32i.n	a2, a1, 12
40379e4a:	cba1      	addi.n	a10, a1, 12
40379e4c:	65f2ff        	call8	0x40379d74
40379e4f:	1df0      	retw.n
40379e51:	000000        	ill
40379e54:	366100        	entry	a1, 48
40379e57:	20a220        	or	a10, a2, a2
40379e5a:	226103        	s32i	a2, a1, 12
40379e5d:	65e4ff        	call8	0x40379ca4
40379e60:	8115eb        	l32r	a8, 0x40374ab4
40379e63:	222200        	l32i	a2, a2, 0
40379e66:	879204        	bne	a2, a8, 0x40379e6e
40379e69:	2113eb        	l32r	a2, 0x40374ab8
40379e6c:	2931      	s32i.n	a2, a1, 12
40379e6e:	a2c10c        	addi	a10, a1, 12
40379e71:	25f1ff        	call8	0x40379d84
40379e74:	a02a20        	or	a2, a10, a10
40379e77:	900000        	retw
40379e7a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40379e7d:	610020        	l32r	a6, 0x40341e80
40379e80:	a22022        	l32i	a10, a0, 136
40379e83:	6103e5        	l32r	a6, 0x40373290
40379e86:	e1ff81        	l32r	a14, 0x4035a684
40379e89:	0beb      	addi.n	a14, a11, -1
40379e8b:	222200        	l32i	a2, a2, 0
40379e8e:	879204        	bne	a2, a8, 0x40379e96
40379e91:	210aeb        	l32r	a2, 0x40374abc
40379e94:	2931      	s32i.n	a2, a1, 12
40379e96:	a2c10c        	addi	a10, a1, 12
40379e99:	a5efff        	call8	0x40379d94
40379e9c:	a02a20        	or	a2, a10, a10
40379e9f:	900000        	retw
40379ea2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40379ea5:	610020        	l32r	a6, 0x40341ea8
40379ea8:	a22022        	l32i	a10, a0, 136
40379eab:	610365        	l32r	a6, 0x403532b8
40379eae:	dfffcba1 	ee.fft.ams.s16.st.incp	q4, q3, a13, a15, q3, q7, q7, 0
40379eb2:	25efff        	call8	0x40379da4
40379eb5:	1df0      	retw.n
40379eb7:	00          	.byte	00
40379eb8:	366100        	entry	a1, 48
40379ebb:	20a220        	or	a10, a2, a2
40379ebe:	226103        	s32i	a2, a1, 12
40379ec1:	25deff        	call8	0x40379ca4
40379ec4:	cba1      	addi.n	a10, a1, 12
40379ec6:	e5eeff        	call8	0x40379db4
40379ec9:	1df0      	retw.n
40379ecb:	003641        	srli	a3, a0, 6
40379ece:	00c2a0        	addx4	a12, a2, a0
40379ed1:	f0          	.byte	0xf0
40379ed2:	0c0b      	movi.n	a11, 0
40379ed4:	ad02      	mov.n	a10, a2
40379ed6:	8172e9        	l32r	a8, 0x403744a0
40379ed9:	e00800        	callx8	a8
40379edc:	81f9ea        	l32r	a8, 0x40374ac0
40379edf:	8808      	l32i.n	a8, a8, 0
40379ee1:	9828      	l32i.n	a9, a8, 8
40379ee3:	9922      	s32i.n	a9, a2, 8
40379ee5:	9838      	l32i.n	a9, a8, 12
40379ee7:	8818      	l32i.n	a8, a8, 4
40379ee9:	9932      	s32i.n	a9, a2, 12
40379eeb:	8912      	s32i.n	a8, a2, 4
40379eed:	81f5ea        	l32r	a8, 0x40374ac4
40379ef0:	89a2      	s32i.n	a8, a2, 40
40379ef2:	0c18      	movi.n	a8, 1
40379ef4:	8962      	s32i.n	a8, a2, 24
40379ef6:	0c08      	movi.n	a8, 0
40379ef8:	826236        	s32i	a8, a2, 216
40379efb:	826237        	s32i	a8, a2, 220
40379efe:	826238        	s32i	a8, a2, 224
40379f01:	1df0      	retw.n
40379f03:	003641        	srli	a3, a0, 6
40379f06:	0051f0        	subx8	a5, a1, a0
40379f09:	ea0c      	add.n	a0, a12, a14
40379f0b:	13          	.byte	0x13
40379f0c:	ad05      	mov.n	a10, a5
40379f0e:	65e5ff        	call8	0x40379d64
40379f11:	81eeea        	l32r	a8, 0x40374acc
40379f14:	e00800        	callx8	a8
40379f17:	4d0a      	mov.n	a4, a10
40379f19:	ad05      	mov.n	a10, a5
40379f1b:	6d0b      	mov.n	a6, a11
40379f1d:	65e8ff        	call8	0x40379da4
40379f20:	81ecea        	l32r	a8, 0x40374ad0
40379f23:	e00800        	callx8	a8
40379f26:	4a4a      	add.n	a4, a10, a4
40379f28:	a73401        	bltu	a4, a10, 0x40379f2d
40379f2b:	0c03      	movi.n	a3, 0
40379f2d:	6abb      	add.n	a11, a11, a6
40379f2f:	ba33      	add.n	a3, a3, a11
40379f31:	c16aea        	l32r	a12, 0x403748dc
40379f34:	d19be9        	l32r	a13, 0x403745a0
40379f37:	ad04      	mov.n	a10, a4
40379f39:	bd03      	mov.n	a11, a3
40379f3b:	8112ea        	l32r	a8, 0x40374784
40379f3e:	e00800        	callx8	a8
40379f41:	c166ea        	l32r	a12, 0x403748dc
40379f44:	d197e9        	l32r	a13, 0x403745a0
40379f47:	a902      	s32i.n	a10, a2, 0
40379f49:	bd03      	mov.n	a11, a3
40379f4b:	40a420        	or	a10, a4, a4
40379f4e:	81e1ea        	l32r	a8, 0x40374ad4
40379f51:	e00800        	callx8	a8
40379f54:	a912      	s32i.n	a10, a2, 4
40379f56:	1df0      	retw.n
40379f58:	364100        	entry	a1, 32
40379f5b:	ad03      	mov.n	a10, a3
40379f5d:	8c13      	beqz.n	a3, 0x40379f62
40379f5f:	65faff        	call8	0x40379f04
40379f62:	0c02      	movi.n	a2, 0
40379f64:	1df0      	retw.n
40379f66:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40379f69:	6100a5        	l32r	a6, 0x4036336c
40379f6c:	4b04      	addi.n	a0, a4, 4
40379f6e:	82a000        	movi	a8, 0
40379f71:	a26301        	s32i	a10, a3, 4
40379f74:	8933      	s32i.n	a8, a3, 12
40379f76:	8923      	s32i.n	a8, a3, 8
40379f78:	8903      	s32i.n	a8, a3, 0
40379f7a:	8ba1      	addi.n	a10, a1, 8
40379f7c:	8921      	s32i.n	a8, a1, 8
40379f7e:	826103        	s32i	a8, a1, 12
40379f81:	25f8ff        	call8	0x40379f04
40379f84:	2821      	l32i.n	a2, a1, 8
40379f86:	1df0      	retw.n
40379f88:	364100        	entry	a1, 32
40379f8b:	30eb03        	rsr.prid	a3
40379f8e:	303d04        	extui	a3, a3, 13, 1
40379f91:	371210        	beq	a2, a3, 0x40379fa5
40379f94:	d1d1ea        	l32r	a13, 0x40374ad8
40379f97:	c1d1ea        	l32r	a12, 0x40374adc
40379f9a:	a1d1ea        	l32r	a10, 0x40374ae0
40379f9d:	2ceb      	movi.n	a11, 46
40379f9f:	101120        	or	a1, a1, a1
40379fa2:	e59b08        	call8	0x40382960
40379fa5:	81d4ea        	l32r	a8, 0x40374af8
40379fa8:	e00800        	callx8	a8
40379fab:	51ceea        	l32r	a5, 0x40374ae4
40379fae:	31ceea        	l32r	a3, 0x40374ae8
40379fb1:	e02211        	slli	a2, a2, 2
40379fb4:	205580        	add	a5, a5, a2
40379fb7:	203380        	add	a3, a3, a2
40379fba:	a22500        	l32i	a10, a5, 0
40379fbd:	b2afff        	movi	a11, -1
40379fc0:	a5a903        	call8	0x4037da5c
40379fc3:	261a02        	beqi	a10, 1, 0x40379fc9
40379fc6:	659008        	call8	0x403828cc
40379fc9:	c02000        	memw
40379fcc:	422300        	l32i	a4, a3, 0
40379fcf:	1674fe        	beqz	a4, 0x40379fba
40379fd2:	42a000        	movi	a4, 0
40379fd5:	c02000        	memw
40379fd8:	622300        	l32i	a6, a3, 0
40379fdb:	c02000        	memw
40379fde:	4903      	s32i.n	a4, a3, 0
40379fe0:	41c3ea        	l32r	a4, 0x40374aec
40379fe3:	2a44      	add.n	a4, a4, a2
40379fe5:	c02000        	memw
40379fe8:	7804      	l32i.n	a7, a4, 0
40379fea:	41c1ea        	l32r	a4, 0x40374af0
40379fed:	2a44      	add.n	a4, a4, a2
40379fef:	c02000        	memw
40379ff2:	4804      	l32i.n	a4, a4, 0
40379ff4:	cce4      	bnez.n	a4, 0x4037a006
40379ff6:	81bfea        	l32r	a8, 0x40374af4
40379ff9:	dd04      	mov.n	a13, a4
40379ffb:	2a88      	add.n	a8, a8, a2
40379ffd:	a808      	l32i.n	a10, a8, 0
40379fff:	cd04      	mov.n	a12, a4
4037a001:	bd04      	mov.n	a11, a4
4037a003:	a55203        	call8	0x4037d52c
4037a006:	70a720        	or	a10, a7, a7
4037a009:	e00600        	callx8	a6
4037a00c:	6614aa        	bnei	a4, 1, 0x40379fba
4037a00f:	41b9ea        	l32r	a4, 0x40374af4
4037a012:	d2a000        	movi	a13, 0
4037a015:	204480        	add	a4, a4, a2
4037a018:	a804      	l32i.n	a10, a4, 0
4037a01a:	cd0d      	mov.n	a12, a13
4037a01c:	bd0d      	mov.n	a11, a13
4037a01e:	e55003        	call8	0x4037d52c
4037a021:	46e5ff        	j	0x40379fba
4037a024:	364100        	entry	a1, 32
4037a027:	b0eb03        	rsr.prid	a11
4037a02a:	b0bd04        	extui	a11, a11, 13, 1
4037a02d:	81b3ea        	l32r	a8, 0x40374afc
4037a030:	c02000        	memw
4037a033:	9808      	l32i.n	a9, a8, 0
4037a035:	1679ff        	beqz	a9, 0x4037a030
4037a038:	91b2ea        	l32r	a9, 0x40374b00
4037a03b:	0c0a      	movi.n	a10, 0
4037a03d:	c02000        	memw
4037a040:	2909      	s32i.n	a2, a9, 0
4037a042:	91b0ea        	l32r	a9, 0x40374b04
4037a045:	c02000        	memw
4037a048:	3909      	s32i.n	a3, a9, 0
4037a04a:	91afea        	l32r	a9, 0x40374b08
4037a04d:	c02000        	memw
4037a050:	a909      	s32i.n	a10, a9, 0
4037a052:	c02000        	memw
4037a055:	a908      	s32i.n	a10, a8, 0
4037a057:	0c1a      	movi.n	a10, 1
4037a059:	dc3b      	bnez.n	a11, 0x4037a070
4037a05b:	b1acea        	l32r	a11, 0x40374b0c
4037a05e:	c02000        	memw
4037a061:	a90b      	s32i.n	a10, a11, 0
4037a063:	dc14      	bnez.n	a4, 0x4037a078
4037a065:	c02000        	memw
4037a068:	8809      	l32i.n	a8, a9, 0
4037a06a:	1678ff        	beqz	a8, 0x4037a065
4037a06d:	1df0      	retw.n
4037a06f:	00          	.byte	00
4037a070:	b1a8ea        	l32r	a11, 0x40374b10
4037a073:	c6f9ff        	j	0x4037a05e
4037a076:	0000c0        	sub	a0, a0, a0
4037a079:	20          	.byte	0x20
4037a07a:	009808        	lsx	f9, a8, a0
4037a07d:	1679ff        	beqz	a9, 0x4037a078
4037a080:	46faff        	j	0x4037a06d
4037a083:	003641        	srli	a3, a0, 6
4037a086:	0021a3        	movltz	a2, a1, a0
4037a089:	eac0      	add.n	a12, a0, a14
4037a08b:	200022        	orb	b0, b0, b2
4037a08e:	220066        	l8ui	a2, a0, 102
4037a091:	124030        	s8i	a1, a0, 48
4037a094:	630080        	lsi	f6, a0, 0x200
4037a097:	eb03      	addi.n	a0, a3, 14
4037a099:	808d04        	extui	a8, a8, 13, 1
4037a09c:	e02811        	slli	a2, a8, 2
4037a09f:	819eea        	l32r	a8, 0x40374b18
4037a0a2:	2a88      	add.n	a8, a8, a2
4037a0a4:	c02000        	memw
4037a0a7:	2808      	l32i.n	a2, a8, 0
4037a0a9:	1b92      	addi.n	a9, a2, 1
4037a0ab:	c02000        	memw
4037a0ae:	926800        	s32i	a9, a8, 0
4037a0b1:	561202        	bnez	a2, 0x4037a0d6
4037a0b4:	a59d05        	call8	0x4037fa90
4037a0b7:	a199ea        	l32r	a10, 0x40374b1c
4037a0ba:	7cfb      	movi.n	a11, -1
4037a0bc:	a59f05        	call8	0x4037fab8
4037a0bf:	8198ea        	l32r	a8, 0x40374b20
4037a0c2:	b198ea        	l32r	a11, 0x40374b24
4037a0c5:	a198ea        	l32r	a10, 0x40374b28
4037a0c8:	cd02      	mov.n	a12, a2
4037a0ca:	3908      	s32i.n	a3, a8, 0
4037a0cc:	c02000        	memw
4037a0cf:	290b      	s32i.n	a2, a11, 0
4037a0d1:	25f5ff        	call8	0x4037a024
4037a0d4:	1df0      	retw.n
4037a0d6:	ad03      	mov.n	a10, a3
4037a0d8:	8195ea        	l32r	a8, 0x40374b2c
4037a0db:	e00800        	callx8	a8
4037a0de:	86fcff        	j	0x4037a0d4
4037a0e1:	000000        	ill
4037a0e4:	364100        	entry	a1, 32
4037a0e7:	818bea        	l32r	a8, 0x40374b14
4037a0ea:	0c09      	movi.n	a9, 0
4037a0ec:	c02000        	memw
4037a0ef:	9908      	s32i.n	a9, a8, 0
4037a0f1:	1df0      	retw.n
4037a0f3:	00          	.byte	00
4037a0f4:	018fea        	l32r	a0, 0x40374b30
4037a0f7:	2910      	s32i.n	a2, a0, 4
4037a0f9:	3920      	s32i.n	a3, a0, 8
4037a0fb:	4930      	s32i.n	a4, a0, 12
4037a0fd:	20d403        	rsr.excsave4	a2
4037a100:	2900      	s32i.n	a2, a0, 0
4037a102:	2c50      	movi.n	a0, 37
4037a104:	00e613        	wsr.ps	a0
4037a107:	102000        	rsync
4037a10a:	318aea        	l32r	a3, 0x40374b34
4037a10d:	30e313        	wsr.intclear	a3
4037a110:	30eb03        	rsr.prid	a3
4037a113:	303d04        	extui	a3, a3, 13, 1
4037a116:	8ca3      	beqz.n	a3, 0x4037a124
4037a118:	317dea        	l32r	a3, 0x40374b0c
4037a11b:	0c04      	movi.n	a4, 0
4037a11d:	4903      	s32i.n	a4, a3, 0
4037a11f:	060200        	j	0x4037a12b
4037a122:	000031        	srai	a0, a0, 16
4037a125:	7bea      	addi.n	a14, a10, 7
4037a127:	0c04      	movi.n	a4, 0
4037a129:	4903      	s32i.n	a4, a3, 0
4037a12b:	0177ea        	l32r	a0, 0x40374b08
4037a12e:	0900      	s32i.n	a0, a0, 0
4037a130:	0174ea        	l32r	a0, 0x40374b00
4037a133:	0800      	l32i.n	a0, a0, 0
4037a135:	2173ea        	l32r	a2, 0x40374b04
4037a138:	2802      	l32i.n	a2, a2, 0
4037a13a:	c00000        	callx0	a0
4037a13d:	017cea        	l32r	a0, 0x40374b30
4037a140:	2810      	l32i.n	a2, a0, 4
4037a142:	3820      	l32i.n	a3, a0, 8
4037a144:	4830      	l32i.n	a4, a0, 12
4037a146:	016dea        	l32r	a0, 0x40374afc
4037a149:	0900      	s32i.n	a0, a0, 0
4037a14b:	00d403        	rsr.excsave4	a0
4037a14e:	103400        	rfi	4
4037a151:	000000        	ill
4037a154:	364100        	entry	a1, 32
4037a157:	8196e9        	l32r	a8, 0x403747b0
4037a15a:	9196e9        	l32r	a9, 0x403747b4
4037a15d:	8a82      	add.n	a8, a2, a8
4037a15f:	873906        	bltu	a9, a8, 0x4037a169
4037a162:	209034        	extui	a9, a2, 0, 4
4037a165:	0c18      	movi.n	a8, 1
4037a167:	8cd9      	beqz.n	a9, 0x4037a178
4037a169:	81f1e8        	l32r	a8, 0x40374530
4037a16c:	91f0e8        	l32r	a9, 0x4037452c
4037a16f:	8a22      	add.n	a2, a2, a8
4037a171:	0c18      	movi.n	a8, 1
4037a173:	27b901        	bgeu	a9, a2, 0x4037a178
4037a176:	0c08      	movi.n	a8, 0
4037a178:	802004        	extui	a2, a8, 0, 1
4037a17b:	1df0      	retw.n
4037a17d:	000000        	ill
4037a180:	100120        	or	a0, a1, a1
4037a183:	12d1ff        	addmi	a1, a1, 0xffffff00
4037a186:	12c140        	addi	a1, a1, 64
4037a189:	026104        	s32i	a0, a1, 16
4037a18c:	00d149        	s32e	a0, a1, -12
4037a18f:	00e603        	rsr.ps	a0
4037a192:	0921      	s32i.n	a0, a1, 8
4037a194:	00b103        	rsr.epc1	a0
4037a197:	0911      	s32i.n	a0, a1, 4
4037a199:	00c149        	s32e	a0, a1, -16
4037a19c:	c9f1      	s32i.n	a12, a1, 60
4037a19e:	d26110        	s32i	a13, a1, 64
4037a1a1:	45d202        	call0	0x4037cec8
4037a1a4:	00e803        	rsr.exccause	a0
4037a1a7:	026114        	s32i	a0, a1, 80
4037a1aa:	00ee03        	rsr.excvaddr	a0
4037a1ad:	026115        	s32i	a0, a1, 84
4037a1b0:	00d103        	rsr.excsave1	a0
4037a1b3:	0931      	s32i.n	a0, a1, 12
4037a1b5:	0124ea        	l32r	a0, 0x40374a48
4037a1b8:	00e613        	wsr.ps	a0
4037a1bb:	6d01      	mov.n	a6, a1
4037a1bd:	d5f6fd        	call4	0x4037812c
4037a1c0:	0df0      	ret.n
4037a1c2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037a1c5:	4100ac        	l32r	a4, 0x403651c8
4037a1c8:	d2          	.byte	0xd2
4037a1c9:	822200        	l32i	a8, a2, 0
4037a1cc:	ac88      	beqz.n	a8, 0x4037a1f8
4037a1ce:	822202        	l32i	a8, a2, 8
4037a1d1:	87f805        	bbsi	a8, 24, 0x4037a1da
4037a1d4:	8109e9        	l32r	a8, 0x403745f8
4037a1d7:	e00800        	callx8	a8
4037a1da:	2832      	l32i.n	a2, a2, 12
4037a1dc:	b7f205        	bbsi	a2, 27, 0x4037a1e5
4037a1df:	8158ea        	l32r	a8, 0x40374b40
4037a1e2:	e00800        	callx8	a8
4037a1e5:	8154ea        	l32r	a8, 0x40374b38
4037a1e8:	9155ea        	l32r	a9, 0x40374b3c
4037a1eb:	c02000        	memw
4037a1ee:	2808      	l32i.n	a2, a8, 0
4037a1f0:	902210        	and	a2, a2, a9
4037a1f3:	c02000        	memw
4037a1f6:	2908      	s32i.n	a2, a8, 0
4037a1f8:	1df0      	retw.n
4037a1fa:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037a1fd:	410016        	l32r	a4, 0x4033fa00
4037a200:	520588        	l8ui	a5, a5, 136
4037a203:	121608        	l16ui	a1, a6, 16
4037a206:	05914c        	call0	0x403c6b18
4037a209:	eab1      	add.n	a11, a1, a14
4037a20b:	4eeac020 	ee.vmulas.s8.accx.ld.ip.qup	q0, a4, 160, q3, q5, q4, q0
4037a20f:	00a809        	l32e	a0, a8, -24
4037a212:	c02000        	memw
4037a215:	8809      	l32i.n	a8, a9, 0
4037a217:	b08810        	and	a8, a8, a11
4037a21a:	b1bde8        	l32r	a11, 0x40374510
4037a21d:	b0aa10        	and	a10, a10, a11
4037a220:	a08820        	or	a8, a8, a10
4037a223:	c02000        	memw
4037a226:	8909      	s32i.n	a8, a9, 0
4037a228:	8822      	l32i.n	a8, a2, 8
4037a22a:	877812        	bbci	a8, 24, 0x4037a240
4037a22d:	9146ea        	l32r	a9, 0x40374b48
4037a230:	a1c8e9        	l32r	a10, 0x40374950
4037a233:	c02000        	memw
4037a236:	8809      	l32i.n	a8, a9, 0
4037a238:	a08810        	and	a8, a8, a10
4037a23b:	c02000        	memw
4037a23e:	8909      	s32i.n	a8, a9, 0
4037a240:	2832      	l32i.n	a2, a2, 12
4037a242:	b77212        	bbci	a2, 27, 0x4037a258
4037a245:	8141ea        	l32r	a8, 0x40374b4c
4037a248:	91c2e9        	l32r	a9, 0x40374950
4037a24b:	c02000        	memw
4037a24e:	2808      	l32i.n	a2, a8, 0
4037a250:	902210        	and	a2, a2, a9
4037a253:	c02000        	memw
4037a256:	2908      	s32i.n	a2, a8, 0
4037a258:	1df0      	retw.n
4037a25a:	00          	.byte	00
4037a25b:	00          	.byte	00
4037a25c:	c86c      	l32i.n	a12, a12, 24
4037a25e:	c93f      	s32i.n	a12, a15, 12
4037a260:	9862      	l32i.n	a9, a2, 24
4037a262:	ca3f      	add.n	a3, a15, a12
4037a264:	ace0      	beqz.n	a0, 0x4037a296
4037a266:	034236        	ssi	f0, a2, 216
4037a269:	4100e5        	l32r	a4, 0x4037366c
4037a26c:	24          	.byte	0x24
4037a26d:	00          	.byte	00
4037a26e:	21fbff        	l32r	a2, 0x4037a25c (0x3fc96cc8)
4037a271:	2c03      	movi.n	a3, 32
4037a273:	822248        	l32i	a8, a2, 0x120
4037a276:	87831f        	bany	a3, a8, 0x4037a299
4037a279:	81faff        	l32r	a8, 0x4037a264 (0x4203e0ac)
4037a27c:	e00800        	callx8	a8
4037a27f:	81f8ff        	l32r	a8, 0x4037a260 (0x3fca6298)
4037a282:	92d201        	addmi	a9, a2, 0x100
4037a285:	8808      	l32i.n	a8, a8, 0
4037a287:	a209f2        	l8ui	a10, a9, 242
4037a28a:	822833        	l32i	a8, a8, 204
4037a28d:	e00800        	callx8	a8
4037a290:	822248        	l32i	a8, a2, 0x120
4037a293:	303820        	or	a3, a8, a3
4037a296:	326248        	s32i	a3, a2, 0x120
4037a299:	1df0      	retw.n
4037a29b:	003641        	srli	a3, a0, 6
4037a29e:	0030b0        	addx8	a3, a0, a0
4037a2a1:	74          	.byte	0x74
4037a2a2:	20a074        	extui	a10, a2, 0, 8
4037a2a5:	e57900        	call8	0x4037aa44
4037a2a8:	1df0      	retw.n
4037a2aa:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037a2ad:	41001d        	l32r	a4, 0x403416b0
4037a2b0:	f00000        	callx12	a0
4037a2b3:	003641        	srli	a3, a0, 6
4037a2b6:	002534        	extui	a2, a0, 5, 4
4037a2b9:	001df0        	subx8	a1, a13, a0
4037a2bc:	90e403        	rsr.intenable	a9
4037a2bf:	42          	.byte	0x42
4037a2c0:	364100        	entry	a1, 32
4037a2c3:	a2a000        	movi	a10, 0
4037a2c6:	81fdff        	l32r	a8, 0x4037a2bc (0x4203e490)
4037a2c9:	e00800        	callx8	a8
4037a2cc:	1df0      	retw.n
4037a2ce:	0000c4        	extui	a0, a0, 0, 13
4037a2d1:	e00060        	neg	a0, a14
4037a2d4:	c0          	.byte	0xc0
4037a2d5:	e00060        	neg	a0, a14
4037a2d8:	00          	.byte	00
4037a2d9:	ef000048 	ee.vmulas.u16.accx.ld.ip.qup	q0, a14, 0xfffffe00, q4, q0, q0, q0
4037a2dd:	e10060        	l32r	a14, 0x403522e0
4037a2e0:	364100        	entry	a1, 32
4037a2e3:	91fbff        	l32r	a9, 0x4037a2d0 (0x6000e0c4)
4037a2e6:	f1fdff        	l32r	a15, 0x4037a2dc (0x6000e148)
4037a2e9:	802223        	sext	a2, a2, 15
4037a2ec:	0c0c      	movi.n	a12, 0
4037a2ee:	32af00        	movi	a3, 0xffffff00
4037a2f1:	e2a200        	movi	a14, 0x200
4037a2f4:	d2adff        	movi	a13, 0xfffffdff
4037a2f7:	5c5b      	movi.n	a11, 85
4037a2f9:	768b61        	loop	a11, 0x4037a35e
4037a2fc:	c02000        	memw
4037a2ff:	8809      	l32i.n	a8, a9, 0
4037a301:	41f4ff        	l32r	a4, 0x4037a2d4 (0x6000e0c0)
4037a304:	308810        	and	a8, a8, a3
4037a307:	c08820        	or	a8, a8, a12
4037a30a:	c02000        	memw
4037a30d:	8909      	s32i.n	a8, a9, 0
4037a30f:	c02000        	memw
4037a312:	a804      	l32i.n	a10, a4, 0
4037a314:	3bcc      	addi.n	a12, a12, 3
4037a316:	a08c04        	extui	a8, a10, 12, 1
4037a319:	804811        	slli	a4, a8, 8
4037a31c:	a08074        	extui	a8, a10, 0, 8
4037a31f:	808420        	or	a8, a4, a8
4037a322:	2a88      	add.n	a8, a8, a2
4037a324:	41edff        	l32r	a4, 0x4037a2d8 (0xef00)
4037a327:	8080f4        	extui	a8, a8, 0, 16
4037a32a:	40aa10        	and	a10, a10, a4
4037a32d:	804074        	extui	a4, a8, 0, 8
4037a330:	808823        	sext	a8, a8, 15
4037a333:	808821        	srai	a8, a8, 8
4037a336:	40aa20        	or	a10, a10, a4
4037a339:	408811        	slli	a8, a8, 12
4037a33c:	a08820        	or	a8, a8, a10
4037a33f:	c02000        	memw
4037a342:	890f      	s32i.n	a8, a15, 0
4037a344:	c02000        	memw
4037a347:	8809      	l32i.n	a8, a9, 0
4037a349:	e08820        	or	a8, a8, a14
4037a34c:	c02000        	memw
4037a34f:	8909      	s32i.n	a8, a9, 0
4037a351:	c02000        	memw
4037a354:	8809      	l32i.n	a8, a9, 0
4037a356:	d08810        	and	a8, a8, a13
4037a359:	c02000        	memw
4037a35c:	8909      	s32i.n	a8, a9, 0
4037a35e:	1df0      	retw.n
4037a360:	364100        	entry	a1, 32
4037a363:	91dbff        	l32r	a9, 0x4037a2d0 (0x6000e0c4)
4037a366:	81eee8        	l32r	a8, 0x40374720
4037a369:	c02000        	memw
4037a36c:	a809      	l32i.n	a10, a9, 0
4037a36e:	808a10        	and	a8, a10, a8
4037a371:	c02000        	memw
4037a374:	8909      	s32i.n	a8, a9, 0
4037a376:	1df0      	retw.n
4037a378:	00          	.byte	00
4037a379:	060040        	j	0x4038a37d
4037a37c:	364100        	entry	a1, 32
4037a37f:	91d4ff        	l32r	a9, 0x4037a2d0 (0x6000e0c4)
4037a382:	8194eb        	l32r	a8, 0x403751d4
4037a385:	c02000        	memw
4037a388:	a809      	l32i.n	a10, a9, 0
4037a38a:	808a20        	or	a8, a10, a8
4037a38d:	c02000        	memw
4037a390:	8909      	s32i.n	a8, a9, 0
4037a392:	0c2a      	movi.n	a10, 2
4037a394:	81f9ff        	l32r	a8, 0x4037a378 (0x40000600)
4037a397:	e00800        	callx8	a8
4037a39a:	1df0      	retw.n
4037a39c:	0c60      	movi.n	a0, 6
4037a39e:	0260c0        	s32i	a0, a0, 0x300
4037a3a1:	610060        	l32r	a6, 0x403523a4
4037a3a4:	555500        	call4	0x4037a8fc
4037a3a7:	003641        	srli	a3, a0, 6
4037a3aa:	00          	.byte	00
4037a3ab:	21adff        	l32r	a2, 0x4037a260 (0x3fca6298)
4037a3ae:	3802      	l32i.n	a3, a2, 0
4037a3b0:	a22358        	l32i	a10, a3, 0x160
4037a3b3:	e00a00        	callx8	a10
4037a3b6:	8802      	l32i.n	a8, a2, 0
4037a3b8:	a03a20        	or	a3, a10, a10
4037a3bb:	8808      	l32i.n	a8, a8, 0
4037a3bd:	e00800        	callx8	a8
4037a3c0:	91f7ff        	l32r	a9, 0x4037a39c (0x6002600c)
4037a3c3:	7cd8      	movi.n	a8, -3
4037a3c5:	c02000        	memw
4037a3c8:	a809      	l32i.n	a10, a9, 0
4037a3ca:	808a10        	and	a8, a10, a8
4037a3cd:	c02000        	memw
4037a3d0:	8909      	s32i.n	a8, a9, 0
4037a3d2:	8802      	l32i.n	a8, a2, 0
4037a3d4:	82286c        	l32i	a8, a8, 0x1b0
4037a3d7:	e00800        	callx8	a8
4037a3da:	8802      	l32i.n	a8, a2, 0
4037a3dc:	0c1b      	movi.n	a11, 1
4037a3de:	82286a        	l32i	a8, a8, 0x1a8
4037a3e1:	ad0b      	mov.n	a10, a11
4037a3e3:	0c0c      	movi.n	a12, 0
4037a3e5:	e00800        	callx8	a8
4037a3e8:	8802      	l32i.n	a8, a2, 0
4037a3ea:	82286d        	l32i	a8, a8, 0x1b4
4037a3ed:	e00800        	callx8	a8
4037a3f0:	912cea        	l32r	a9, 0x40374ca0
4037a3f3:	812cea        	l32r	a8, 0x40374ca4
4037a3f6:	c02000        	memw
4037a3f9:	a809      	l32i.n	a10, a9, 0
4037a3fb:	2802      	l32i.n	a2, a2, 0
4037a3fd:	808a10        	and	a8, a10, a8
4037a400:	a1e8ff        	l32r	a10, 0x4037a3a0 (0x600061c0)
4037a403:	c02000        	memw
4037a406:	8909      	s32i.n	a8, a9, 0
4037a408:	c02000        	memw
4037a40b:	980a      	l32i.n	a9, a10, 0
4037a40d:	8132e8        	l32r	a8, 0x403744d8
4037a410:	222259        	l32i	a2, a2, 0x164
4037a413:	809910        	and	a9, a9, a8
4037a416:	81e3ff        	l32r	a8, 0x4037a3a4 (0x5555)
4037a419:	808920        	or	a8, a9, a8
4037a41c:	c02000        	memw
4037a41f:	890a      	s32i.n	a8, a10, 0
4037a421:	ad03      	mov.n	a10, a3
4037a423:	e00200        	callx8	a2
4037a426:	1df0      	retw.n
4037a428:	364100        	entry	a1, 32
4037a42b:	218dff        	l32r	a2, 0x4037a260 (0x3fca6298)
4037a42e:	3802      	l32i.n	a3, a2, 0
4037a430:	322329        	l32i	a3, a3, 164
4037a433:	e00300        	callx8	a3
4037a436:	3189ff        	l32r	a3, 0x4037a25c (0x3fc96cc8)
4037a439:	9802      	l32i.n	a9, a2, 0
4037a43b:	82d301        	addmi	a8, a3, 0x100
4037a43e:	b208f5        	l8ui	a11, a8, 245
4037a441:	92292b        	l32i	a9, a9, 172
4037a444:	a208f6        	l8ui	a10, a8, 246
4037a447:	e00900        	callx8	a9
4037a44a:	822200        	l32i	a8, a2, 0
4037a44d:	a22335        	l32i	a10, a3, 212
4037a450:	82288c        	l32i	a8, a8, 0x230
4037a453:	e00800        	callx8	a8
4037a456:	3802      	l32i.n	a3, a2, 0
4037a458:	32232c        	l32i	a3, a3, 176
4037a45b:	e00300        	callx8	a3
4037a45e:	3802      	l32i.n	a3, a2, 0
4037a460:	32232e        	l32i	a3, a3, 184
4037a463:	e00300        	callx8	a3
4037a466:	3802      	l32i.n	a3, a2, 0
4037a468:	322327        	l32i	a3, a3, 156
4037a46b:	e00300        	callx8	a3
4037a46e:	3802      	l32i.n	a3, a2, 0
4037a470:	0c1a      	movi.n	a10, 1
4037a472:	32234d        	l32i	a3, a3, 0x134
4037a475:	e00300        	callx8	a3
4037a478:	3802      	l32i.n	a3, a2, 0
4037a47a:	32234f        	l32i	a3, a3, 0x13c
4037a47d:	e00300        	callx8	a3
4037a480:	3802      	l32i.n	a3, a2, 0
4037a482:	32231c        	l32i	a3, a3, 112
4037a485:	e00300        	callx8	a3
4037a488:	3802      	l32i.n	a3, a2, 0
4037a48a:	3223a1        	l32i	a3, a3, 0x284
4037a48d:	e00300        	callx8	a3
4037a490:	3802      	l32i.n	a3, a2, 0
4037a492:	32238e        	l32i	a3, a3, 0x238
4037a495:	e00300        	callx8	a3
4037a498:	2802      	l32i.n	a2, a2, 0
4037a49a:	22222d        	l32i	a2, a2, 180
4037a49d:	e00200        	callx8	a2
4037a4a0:	1df0      	retw.n
4037a4a2:	000030        	xor	a0, a0, a0
4037a4a5:	e10060        	l32r	a14, 0x403524a8
4037a4a8:	106100        	rsil	a1, 1
4037a4ab:	60          	.byte	0x60
4037a4ac:	826ec9        	s32i	a8, a14, 0x324
4037a4af:	3f726ec9 	ee.vmulas.u8.accx.ld.xp.qup	q3, a3, a2, q5, q6, q6, q6
4037a4b3:	3fe8e403 	ee.vmulas.s16.accx.ld.ip.qup	q6, a3, 128, q7, q5, q6, q4
4037a4b7:	42          	.byte	0x42
4037a4b8:	364100        	entry	a1, 32
4037a4bb:	2169ff        	l32r	a2, 0x4037a260 (0x3fca6298)
4037a4be:	3802      	l32i.n	a3, a2, 0
4037a4c0:	a22358        	l32i	a10, a3, 0x160
4037a4c3:	e00a00        	callx8	a10
4037a4c6:	31f7ff        	l32r	a3, 0x4037a4a4 (0x6000e130)
4037a4c9:	41f3e9        	l32r	a4, 0x40374c98
4037a4cc:	c02000        	memw
4037a4cf:	8803      	l32i.n	a8, a3, 0
4037a4d1:	5d0a      	mov.n	a5, a10
4037a4d3:	404810        	and	a4, a8, a4
4037a4d6:	c02000        	memw
4037a4d9:	4903      	s32i.n	a4, a3, 0
4037a4db:	c02000        	memw
4037a4de:	8803      	l32i.n	a8, a3, 0
4037a4e0:	4127e9        	l32r	a4, 0x4037497c
4037a4e3:	404820        	or	a4, a8, a4
4037a4e6:	c02000        	memw
4037a4e9:	426300        	s32i	a4, a3, 0
4037a4ec:	3802      	l32i.n	a3, a2, 0
4037a4ee:	322381        	l32i	a3, a3, 0x204
4037a4f1:	e00300        	callx8	a3
4037a4f4:	315aff        	l32r	a3, 0x4037a25c (0x3fc96cc8)
4037a4f7:	0c0a      	movi.n	a10, 0
4037a4f9:	b203aa        	l8ui	a11, a3, 170
4037a4fc:	81eeff        	l32r	a8, 0x4037a4b4 (0x4203e4e8)
4037a4ff:	e00800        	callx8	a8
4037a502:	41e9ff        	l32r	a4, 0x4037a4a8 (0x60006110)
4037a505:	82acff        	movi	a8, 0xfffffcff
4037a508:	c02000        	memw
4037a50b:	9804      	l32i.n	a9, a4, 0
4037a50d:	0c9c      	movi.n	a12, 9
4037a50f:	809910        	and	a9, a9, a8
4037a512:	82a200        	movi	a8, 0x200
4037a515:	808920        	or	a8, a9, a8
4037a518:	c02000        	memw
4037a51b:	8904      	s32i.n	a8, a4, 0
4037a51d:	8802      	l32i.n	a8, a2, 0
4037a51f:	d203d1        	l8ui	a13, a3, 209
4037a522:	822864        	l32i	a8, a8, 0x190
4037a525:	b2a000        	movi	a11, 0
4037a528:	a2a066        	movi	a10, 102
4037a52b:	e00800        	callx8	a8
4037a52e:	8802      	l32i.n	a8, a2, 0
4037a530:	d203d2        	l8ui	a13, a3, 210
4037a533:	822864        	l32i	a8, a8, 0x190
4037a536:	c2a00a        	movi	a12, 10
4037a539:	b2a000        	movi	a11, 0
4037a53c:	a2a066        	movi	a10, 102
4037a53f:	e00800        	callx8	a8
4037a542:	822200        	l32i	a8, a2, 0
4037a545:	32d301        	addmi	a3, a3, 0x100
4037a548:	822832        	l32i	a8, a8, 200
4037a54b:	e00800        	callx8	a8
4037a54e:	8802      	l32i.n	a8, a2, 0
4037a550:	82282a        	l32i	a8, a8, 168
4037a553:	e00800        	callx8	a8
4037a556:	8802      	l32i.n	a8, a2, 0
4037a558:	82288b        	l32i	a8, a8, 0x22c
4037a55b:	e00800        	callx8	a8
4037a55e:	8802      	l32i.n	a8, a2, 0
4037a560:	822844        	l32i	a8, a8, 0x110
4037a563:	e00800        	callx8	a8
4037a566:	822200        	l32i	a8, a2, 0
4037a569:	a1d0ff        	l32r	a10, 0x4037a4ac (0x3fc96e82)
4037a56c:	822889        	l32i	a8, a8, 0x224
4037a56f:	e00800        	callx8	a8
4037a572:	8802      	l32i.n	a8, a2, 0
4037a574:	a1cfff        	l32r	a10, 0x4037a4b0 (0x3fc96e72)
4037a577:	822885        	l32i	a8, a8, 0x214
4037a57a:	e00800        	callx8	a8
4037a57d:	8802      	l32i.n	a8, a2, 0
4037a57f:	822830        	l32i	a8, a8, 192
4037a582:	e00800        	callx8	a8
4037a585:	8802      	l32i.n	a8, a2, 0
4037a587:	82284f        	l32i	a8, a8, 0x13c
4037a58a:	e00800        	callx8	a8
4037a58d:	8802      	l32i.n	a8, a2, 0
4037a58f:	822876        	l32i	a8, a8, 0x1d8
4037a592:	e00800        	callx8	a8
4037a595:	8802      	l32i.n	a8, a2, 0
4037a597:	822895        	l32i	a8, a8, 0x254
4037a59a:	e00800        	callx8	a8
4037a59d:	8802      	l32i.n	a8, a2, 0
4037a59f:	a203f2        	l8ui	a10, a3, 242
4037a5a2:	822833        	l32i	a8, a8, 204
4037a5a5:	e00800        	callx8	a8
4037a5a8:	3802      	l32i.n	a3, a2, 0
4037a5aa:	322392        	l32i	a3, a3, 0x248
4037a5ad:	e00300        	callx8	a3
4037a5b0:	3802      	l32i.n	a3, a2, 0
4037a5b2:	0c0a      	movi.n	a10, 0
4037a5b4:	322393        	l32i	a3, a3, 0x24c
4037a5b7:	e00300        	callx8	a3
4037a5ba:	0c1a      	movi.n	a10, 1
4037a5bc:	8140ff        	l32r	a8, 0x4037a2bc (0x4203e490)
4037a5bf:	e00800        	callx8	a8
4037a5c2:	c02000        	memw
4037a5c5:	8804      	l32i.n	a8, a4, 0
4037a5c7:	32adff        	movi	a3, 0xfffffdff
4037a5ca:	303810        	and	a3, a8, a3
4037a5cd:	c02000        	memw
4037a5d0:	3904      	s32i.n	a3, a4, 0
4037a5d2:	3802      	l32i.n	a3, a2, 0
4037a5d4:	322301        	l32i	a3, a3, 4
4037a5d7:	e00300        	callx8	a3
4037a5da:	3802      	l32i.n	a3, a2, 0
4037a5dc:	322380        	l32i	a3, a3, 0x200
4037a5df:	e00300        	callx8	a3
4037a5e2:	3802      	l32i.n	a3, a2, 0
4037a5e4:	0c0a      	movi.n	a10, 0
4037a5e6:	322390        	l32i	a3, a3, 0x240
4037a5e9:	e00300        	callx8	a3
4037a5ec:	2802      	l32i.n	a2, a2, 0
4037a5ee:	ad05      	mov.n	a10, a5
4037a5f0:	222259        	l32i	a2, a2, 0x164
4037a5f3:	e00200        	callx8	a2
4037a5f6:	1df0      	retw.n
4037a5f8:	364100        	entry	a1, 32
4037a5fb:	2119ff        	l32r	a2, 0x4037a260 (0x3fca6298)
4037a5fe:	8802      	l32i.n	a8, a2, 0
4037a600:	822835        	l32i	a8, a8, 212
4037a603:	e00800        	callx8	a8
4037a606:	8802      	l32i.n	a8, a2, 0
4037a608:	0c6d      	movi.n	a13, 6
4037a60a:	822864        	l32i	a8, a8, 0x190
4037a60d:	c2a002        	movi	a12, 2
4037a610:	0c0b      	movi.n	a11, 0
4037a612:	a2a067        	movi	a10, 103
4037a615:	e00800        	callx8	a8
4037a618:	8802      	l32i.n	a8, a2, 0
4037a61a:	0c1a      	movi.n	a10, 1
4037a61c:	822890        	l32i	a8, a8, 0x240
4037a61f:	e00800        	callx8	a8
4037a622:	2802      	l32i.n	a2, a2, 0
4037a624:	222281        	l32i	a2, a2, 0x204
4037a627:	e00200        	callx8	a2
4037a62a:	1df0      	retw.n
4037a62c:	364100        	entry	a1, 32
4037a62f:	0c02      	movi.n	a2, 0
4037a631:	1df0      	retw.n
4037a633:	003641        	srli	a3, a0, 6
4037a636:	00310a        	add.s	f3, f1, f0
4037a639:	ff          	.byte	0xff
4037a63a:	2020f4        	extui	a2, a2, 0, 16
4037a63d:	8803      	l32i.n	a8, a3, 0
4037a63f:	c2a001        	movi	a12, 1
4037a642:	822864        	l32i	a8, a8, 0x190
4037a645:	20d074        	extui	a13, a2, 0, 8
4037a648:	bd0c      	mov.n	a11, a12
4037a64a:	a2a062        	movi	a10, 98
4037a64d:	e00800        	callx8	a8
4037a650:	3803      	l32i.n	a3, a3, 0
4037a652:	0c4e      	movi.n	a14, 4
4037a654:	322366        	l32i	a3, a3, 0x198
4037a657:	20f841        	srli	a15, a2, 8
4037a65a:	dd0e      	mov.n	a13, a14
4037a65c:	0c2c      	movi.n	a12, 2
4037a65e:	0c1b      	movi.n	a11, 1
4037a660:	a2a062        	movi	a10, 98
4037a663:	e00300        	callx8	a3
4037a666:	1df0      	retw.n
4037a668:	364100        	entry	a1, 32
4037a66b:	31fdfe        	l32r	a3, 0x4037a260 (0x3fca6298)
4037a66e:	0c5c      	movi.n	a12, 5
4037a670:	2803      	l32i.n	a2, a3, 0
4037a672:	0c1b      	movi.n	a11, 1
4037a674:	222262        	l32i	a2, a2, 0x188
4037a677:	a2a062        	movi	a10, 98
4037a67a:	e00200        	callx8	a2
4037a67d:	3803      	l32i.n	a3, a3, 0
4037a67f:	0c2e      	movi.n	a14, 2
4037a681:	322365        	l32i	a3, a3, 0x194
4037a684:	2d0a      	mov.n	a2, a10
4037a686:	dd0e      	mov.n	a13, a14
4037a688:	c2a007        	movi	a12, 7
4037a68b:	b2a001        	movi	a11, 1
4037a68e:	a2a062        	movi	a10, 98
4037a691:	e00300        	callx8	a3
4037a694:	80aa11        	slli	a10, a10, 8
4037a697:	2a2a      	add.n	a2, a10, a2
4037a699:	2020f4        	extui	a2, a2, 0, 16
4037a69c:	1df0      	retw.n
4037a69e:	00          	.byte	00
4037a69f:	003881        	src	a3, a8, a0
4037a6a2:	c93f      	s32i.n	a12, a15, 12
4037a6a4:	d4          	.byte	0xd4
4037a6a5:	de034236 	ee.vmulas.s8.qacc.ld.ip.qup	q4, a13, 0x130, q0, q0, q4, q2
4037a6a9:	410020        	l32r	a4, 0x403426ac
4037a6ac:	407421        	srai	a7, a4, 4
4037a6af:	ecfe      	bnez.n	a14, 0x4037a6e2
4037a6b1:	0ccc      	movi.n	a12, 12
4037a6b3:	3802      	l32i.n	a3, a2, 0
4037a6b5:	0c1b      	movi.n	a11, 1
4037a6b7:	322362        	l32i	a3, a3, 0x188
4037a6ba:	a2a062        	movi	a10, 98
4037a6bd:	e00300        	callx8	a3
4037a6c0:	a03214        	extui	a3, a10, 2, 2
4037a6c3:	5d02      	mov.n	a5, a2
4037a6c5:	acf3      	beqz.n	a3, 0x4037a6f8
4037a6c7:	25faff        	call8	0x4037a668
4037a6ca:	806a23        	sext	a6, a10, 15
4037a6cd:	0c42      	movi.n	a2, 4
4037a6cf:	261309        	beqi	a3, 1, 0x4037a6dc
4037a6d2:	32c3fe        	addi	a3, a3, -2
4037a6d5:	0c02      	movi.n	a2, 0
4037a6d7:	7cc8      	movi.n	a8, -4
4037a6d9:	302883        	moveqz	a2, a8, a3
4037a6dc:	522500        	l32i	a5, a5, 0
4037a6df:	20aa80        	add	a10, a10, a2
4037a6e2:	522583        	l32i	a5, a5, 0x20c
4037a6e5:	a0a0f4        	extui	a10, a10, 0, 16
4037a6e8:	803a23        	sext	a3, a10, 15
4037a6eb:	e00500        	callx8	a5
4037a6ee:	20a220        	or	a10, a2, a2
4037a6f1:	e5beff        	call8	0x4037a2e0
4037a6f4:	060100        	j	0x4037a6fc
4037a6f7:	00          	.byte	00
4037a6f8:	2d03      	mov.n	a2, a3
4037a6fa:	6d03      	mov.n	a6, a3
4037a6fc:	8cd4      	beqz.n	a4, 0x4037a70d
4037a6fe:	a1e8ff        	l32r	a10, 0x4037a6a0 (0x3fc98138)
4037a701:	dd03      	mov.n	a13, a3
4037a703:	cd06      	mov.n	a12, a6
4037a705:	bd02      	mov.n	a11, a2
4037a707:	81e7ff        	l32r	a8, 0x4037a6a4 (0x4203ded4)
4037a70a:	e00800        	callx8	a8
4037a70d:	1df0      	retw.n
4037a70f:	003641        	srli	a3, a0, 6
4037a712:	0020b0        	addx8	a2, a0, a0
4037a715:	74          	.byte	0x74
4037a716:	30d074        	extui	a13, a3, 0, 8
4037a719:	41d1fe        	l32r	a4, 0x4037a260 (0x3fca6298)
4037a71c:	162b04        	beqz	a11, 0x4037a762
4037a71f:	8804      	l32i.n	a8, a4, 0
4037a721:	c2a004        	movi	a12, 4
4037a724:	822862        	l32i	a8, a8, 0x188
4037a727:	b2a000        	movi	a11, 0
4037a72a:	a2a061        	movi	a10, 97
4037a72d:	e00800        	callx8	a8
4037a730:	81cbfe        	l32r	a8, 0x4037a25c (0x3fc96cc8)
4037a733:	dd0a      	mov.n	a13, a10
4037a735:	a2489f        	s8i	a10, a8, 159
4037a738:	a248a0        	s8i	a10, a8, 160
4037a73b:	8804      	l32i.n	a8, a4, 0
4037a73d:	0c6c      	movi.n	a12, 6
4037a73f:	822864        	l32i	a8, a8, 0x190
4037a742:	0c0b      	movi.n	a11, 0
4037a744:	a2a061        	movi	a10, 97
4037a747:	e00800        	callx8	a8
4037a74a:	4804      	l32i.n	a4, a4, 0
4037a74c:	0c6e      	movi.n	a14, 6
4037a74e:	422466        	l32i	a4, a4, 0x198
4037a751:	0c1f      	movi.n	a15, 1
4037a753:	dd0e      	mov.n	a13, a14
4037a755:	0c5c      	movi.n	a12, 5
4037a757:	b2a000        	movi	a11, 0
4037a75a:	a2a061        	movi	a10, 97
4037a75d:	e00400        	callx8	a4
4037a760:	1df0      	retw.n
4037a762:	4804      	l32i.n	a4, a4, 0
4037a764:	c2a006        	movi	a12, 6
4037a767:	422464        	l32i	a4, a4, 0x190
4037a76a:	a2a061        	movi	a10, 97
4037a76d:	e00400        	callx8	a4
4037a770:	1df0      	retw.n
4037a772:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037a775:	41001d        	l32r	a4, 0x40341b78
4037a778:	f00000        	callx12	a0
4037a77b:	003641        	srli	a3, a0, 6
4037a77e:	00a294        	extui	a10, a0, 2, 10
4037a781:	018055        	l32r	a0, 0x4034fd84
4037a784:	23          	.byte	0x23
4037a785:	202074        	extui	a2, a2, 0, 8
4037a788:	80b623        	sext	a11, a6, 15
4037a78b:	720300        	l8ui	a7, a3, 0
4037a78e:	57aa02        	bge	a10, a5, 0x4037a794
4037a791:	460100        	j	0x4037a79a
4037a794:	a29400        	l16si	a10, a4, 0
4037a797:	a7a512        	bge	a5, a10, 0x4037a7ad
4037a79a:	41b1fe        	l32r	a4, 0x4037a260 (0x3fca6298)
4037a79d:	4804      	l32i.n	a4, a4, 0
4037a79f:	422451        	l32i	a4, a4, 0x144
4037a7a2:	e00400        	callx8	a4
4037a7a5:	a24300        	s8i	a10, a3, 0
4037a7a8:	460300        	j	0x4037a7b9
4037a7ab:	000081        	src	a0, a0, a0
4037a7ae:	abfe      	addi.n	a15, a14, 10
4037a7b0:	82d801        	addmi	a8, a8, 0x100
4037a7b3:	4208fa        	l8ui	a4, a8, 250
4037a7b6:	424300        	s8i	a4, a3, 0
4037a7b9:	320300        	l8ui	a3, a3, 0
4037a7bc:	007723        	sext	a7, a7, 7
4037a7bf:	003323        	sext	a3, a3, 7
4037a7c2:	771323        	beq	a3, a7, 0x4037a7e9
4037a7c5:	31a6fe        	l32r	a3, 0x4037a260 (0x3fca6298)
4037a7c8:	8ca2      	beqz.n	a2, 0x4037a7d6
4037a7ca:	2803      	l32i.n	a2, a3, 0
4037a7cc:	0c0a      	movi.n	a10, 0
4037a7ce:	22229c        	l32i	a2, a2, 0x270
4037a7d1:	e00200        	callx8	a2
4037a7d4:	1df0      	retw.n
4037a7d6:	3803      	l32i.n	a3, a3, 0
4037a7d8:	bd02      	mov.n	a11, a2
4037a7da:	422399        	l32i	a4, a3, 0x264
4037a7dd:	319ffe        	l32r	a3, 0x4037a25c (0x3fc96cc8)
4037a7e0:	32d301        	addmi	a3, a3, 0x100
4037a7e3:	a203f2        	l8ui	a10, a3, 242
4037a7e6:	e00400        	callx8	a4
4037a7e9:	1df0      	retw.n
4037a7eb:	00          	.byte	00
4037a7ec:	7a6d      	add.n	a6, a13, a7
4037a7ee:	c93f      	s32i.n	a12, a15, 12
4037a7f0:	c46ec9        	ee.vld.l.64.ip	q0, a12, -144
4037a7f3:	3f766dc9 	ee.vmulas.u8.accx.ld.xp.qup	q3, a3, a6, q5, q6, q6, q5
4037a7f7:	3fc36ec9 	ee.vmulas.u8.accx.ld.xp.qup	q3, a3, a3, q7, q0, q6, q6
4037a7fb:	3f6181c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a1, q5, q5, q0, q1
4037a7ff:	3fc86ec9 	ee.vmulas.u8.accx.ld.xp.qup	q3, a3, a8, q7, q0, q6, q6
4037a803:	3f366100 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 96, q4, q6, q6, q1
4037a807:	202074        	extui	a2, a2, 0, 8
4037a80a:	303074        	extui	a3, a3, 0, 8
4037a80d:	404074        	extui	a4, a4, 0, 8
4037a810:	5193fe        	l32r	a5, 0x4037a25c (0x3fc96cc8)
4037a813:	61fbff        	l32r	a6, 0x4037a800 (0x3fc96ec8)
4037a816:	cca2      	bnez.n	a2, 0x4037a824
4037a818:	720604        	l8ui	a7, a6, 4
4037a81b:	661716        	bnei	a7, 1, 0x4037a835
4037a81e:	729603        	l16si	a7, a6, 6
4037a821:	c60400        	j	0x4037a838
4037a824:	66120d        	bnei	a2, 1, 0x4037a835
4037a827:	720604        	l8ui	a7, a6, 4
4037a82a:	66b707        	bnei	a7, 16, 0x4037a835
4037a82d:	729604        	l16si	a7, a6, 8
4037a830:	060100        	j	0x4037a838
4037a833:	000072        	salt	a0, a0, a0
4037a836:	960561        	bltz	a5, 0x4037ae4a
4037a839:	8afe      	add.n	a15, a14, a8
4037a83b:	a29549        	l16si	a10, a5, 146
4037a83e:	822600        	l32i	a8, a6, 0
4037a841:	70aac0        	sub	a10, a10, a7
4037a844:	82283b        	l32i	a8, a8, 236
4037a847:	e00800        	callx8	a8
4037a84a:	0c28      	movi.n	a8, 2
4037a84c:	a68a02        	blti	a10, 8, 0x4037a852
4037a84f:	82a004        	movi	a8, 4
4037a852:	9806      	l32i.n	a9, a6, 0
4037a854:	b29549        	l16si	a11, a5, 146
4037a857:	a2954b        	l16si	a10, a5, 150
4037a85a:	92293b        	l32i	a9, a9, 236
4037a85d:	a0abc0        	sub	a10, a11, a10
4037a860:	826100        	s32i	a8, a1, 0
4037a863:	e00900        	callx8	a9
4037a866:	8801      	l32i.n	a8, a1, 0
4037a868:	872a78        	blt	a10, a8, 0x4037a8e4
4037a86b:	8806      	l32i.n	a8, a6, 0
4037a86d:	a29549        	l16si	a10, a5, 146
4037a870:	822851        	l32i	a8, a8, 0x144
4037a873:	bd07      	mov.n	a11, a7
4037a875:	e00800        	callx8	a8
4037a878:	a0b074        	extui	a11, a10, 0, 8
4037a87b:	165306        	beqz	a3, 0x4037a8e4
4037a87e:	32d501        	addmi	a3, a5, 0x100
4037a881:	9203fa        	l8ui	a9, a3, 250
4037a884:	008b23        	sext	a8, a11, 7
4037a887:	009923        	sext	a9, a9, 7
4037a88a:	871956        	beq	a9, a8, 0x4037a8e4
4037a88d:	8806      	l32i.n	a8, a6, 0
4037a88f:	0c1a      	movi.n	a10, 1
4037a891:	822890        	l32i	a8, a8, 0x240
4037a894:	b901      	s32i.n	a11, a1, 0
4037a896:	e00800        	callx8	a8
4037a899:	821549        	l16ui	a8, a5, 146
4037a89c:	b801      	l32i.n	a11, a1, 0
4037a89e:	82554b        	s16i	a8, a5, 150
4037a8a1:	b243fa        	s8i	a11, a3, 250
4037a8a4:	80d823        	sext	a13, a8, 15
4037a8a7:	ed07      	mov.n	a14, a7
4037a8a9:	8cc2      	beqz.n	a2, 0x4037a8b9
4037a8ab:	c1d0ff        	l32r	a12, 0x4037a7ec (0x3fc96d7a)
4037a8ae:	b1d0ff        	l32r	a11, 0x4037a7f0 (0x3fc96ec4)
4037a8b1:	0c1a      	movi.n	a10, 1
4037a8b3:	860200        	j	0x4037a8c1
4037a8b6:	000000        	ill
4037a8b9:	c1ceff        	l32r	a12, 0x4037a7f4 (0x3fc96d76)
4037a8bc:	b1cfff        	l32r	a11, 0x4037a7f8 (0x3fc96ec3)
4037a8bf:	ad02      	mov.n	a10, a2
4037a8c1:	a5ebff        	call8	0x4037a77c
4037a8c4:	9c24      	beqz.n	a4, 0x4037a8da
4037a8c6:	b203fa        	l8ui	a11, a3, 250
4037a8c9:	c29549        	l16si	a12, a5, 146
4037a8cc:	a1ccff        	l32r	a10, 0x4037a7fc (0x3fc98161)
4037a8cf:	dd07      	mov.n	a13, a7
4037a8d1:	00bb23        	sext	a11, a11, 7
4037a8d4:	8174ff        	l32r	a8, 0x4037a6a4 (0x4203ded4)
4037a8d7:	e00800        	callx8	a8
4037a8da:	2806      	l32i.n	a2, a6, 0
4037a8dc:	0c0a      	movi.n	a10, 0
4037a8de:	222290        	l32i	a2, a2, 0x240
4037a8e1:	e00200        	callx8	a2
4037a8e4:	1df0      	retw.n
4037a8e6:	0000ab        	movltz.s	f0, f0, a0
4037a8e9:	aaaa      	add.n	a10, a10, a10
4037a8eb:	2a7e      	add.n	a7, a14, a2
4037a8ed:	81c93f        	l32r	a8, 0x4034a814
4037a8f0:	364100        	entry	a1, 32
4037a8f3:	315afe        	l32r	a3, 0x4037a25c (0x3fc96cc8)
4037a8f6:	202074        	extui	a2, a2, 0, 8
4037a8f9:	92d302        	addmi	a9, a3, 0x200
4037a8fc:	82134a        	l16ui	a8, a3, 148
4037a8ff:	921905        	l16ui	a9, a9, 10
4037a902:	9088c0        	sub	a8, a8, a9
4037a905:	808823        	sext	a8, a8, 15
4037a908:	80a321        	srai	a10, a8, 3
4037a90b:	d6e800        	bgez	a8, 0x4037a91d
4037a90e:	a1f6ff        	l32r	a10, 0x4037a8e8 (0x2aaaaaab)
4037a911:	a0a8b2        	mulsh	a10, a8, a10
4037a914:	808f31        	srai	a8, a8, 31
4037a917:	808ac0        	sub	a8, a10, a8
4037a91a:	80a823        	sext	a10, a8, 15
4037a91d:	8150fe        	l32r	a8, 0x4037a260 (0x3fca6298)
4037a920:	0cfb      	movi.n	a11, 15
4037a922:	8808      	l32i.n	a8, a8, 0
4037a924:	7c1c      	movi.n	a12, -15
4037a926:	82280a        	l32i	a8, a8, 40
4037a929:	e00800        	callx8	a8
4037a92c:	b2039f        	l8ui	a11, a3, 159
4037a92f:	8203a0        	l8ui	a8, a3, 160
4037a932:	aaab      	add.n	a10, a11, a10
4037a934:	a0b0f4        	extui	a11, a10, 0, 16
4037a937:	809b23        	sext	a9, a11, 15
4037a93a:	87190a        	beq	a9, a8, 0x4037a948
4037a93d:	b0b074        	extui	a11, a11, 0, 8
4037a940:	0c0a      	movi.n	a10, 0
4037a942:	b243a0        	s8i	a11, a3, 160
4037a945:	a5dcff        	call8	0x4037a710
4037a948:	8cd2      	beqz.n	a2, 0x4037a959
4037a94a:	c2039f        	l8ui	a12, a3, 159
4037a94d:	b203a0        	l8ui	a11, a3, 160
4037a950:	a1e7ff        	l32r	a10, 0x4037a8ec (0x3fc9817e)
4037a953:	8154ff        	l32r	a8, 0x4037a6a4 (0x4203ded4)
4037a956:	e00800        	callx8	a8
4037a959:	1df0      	retw.n
4037a95b:	003641        	srli	a3, a0, 6
4037a95e:	00          	.byte	00
4037a95f:	8140fe        	l32r	a8, 0x4037a260 (0x3fca6298)
4037a962:	30c074        	extui	a12, a3, 0, 8
4037a965:	8808      	l32i.n	a8, a8, 0
4037a967:	20b074        	extui	a11, a2, 0, 8
4037a96a:	82289a        	l32i	a8, a8, 0x268
4037a96d:	0c1a      	movi.n	a10, 1
4037a96f:	e00800        	callx8	a8
4037a972:	1df0      	retw.n
4037a974:	364100        	entry	a1, 32
4037a977:	813afe        	l32r	a8, 0x4037a260 (0x3fca6298)
4037a97a:	30c074        	extui	a12, a3, 0, 8
4037a97d:	8808      	l32i.n	a8, a8, 0
4037a97f:	20b074        	extui	a11, a2, 0, 8
4037a982:	82289a        	l32i	a8, a8, 0x268
4037a985:	0c0a      	movi.n	a10, 0
4037a987:	e00800        	callx8	a8
4037a98a:	1df0      	retw.n
4037a98c:	92          	.byte	0x92
4037a98d:	81c93f        	l32r	a8, 0x4034a8b4
4037a990:	60e403        	rsr.intenable	a6
4037a993:	42          	.byte	0x42
4037a994:	364100        	entry	a1, 32
4037a997:	4132fe        	l32r	a4, 0x4037a260 (0x3fca6298)
4037a99a:	3130fe        	l32r	a3, 0x4037a25c (0x3fc96cc8)
4037a99d:	8804      	l32i.n	a8, a4, 0
4037a99f:	a29349        	l16si	a10, a3, 146
4037a9a2:	92934a        	l16si	a9, a3, 148
4037a9a5:	82283b        	l32i	a8, a8, 236
4037a9a8:	90aac0        	sub	a10, a10, a9
4037a9ab:	202074        	extui	a2, a2, 0, 8
4037a9ae:	e00800        	callx8	a8
4037a9b1:	a65a3f        	blti	a10, 5, 0x4037a9f4
4037a9b4:	8804      	l32i.n	a8, a4, 0
4037a9b6:	822881        	l32i	a8, a8, 0x204
4037a9b9:	e00800        	callx8	a8
4037a9bc:	81f5ff        	l32r	a8, 0x4037a990 (0x4203e460)
4037a9bf:	e00800        	callx8	a8
4037a9c2:	a2039b        	l8ui	a10, a3, 155
4037a9c5:	25ceff        	call8	0x4037a6a8
4037a9c8:	9c02      	beqz.n	a2, 0x4037a9dc
4037a9ca:	a0da20        	or	a13, a10, a10
4037a9cd:	c2934a        	l16si	a12, a3, 148
4037a9d0:	b29349        	l16si	a11, a3, 146
4037a9d3:	a1eeff        	l32r	a10, 0x4037a98c (0x3fc98192)
4037a9d6:	8133ff        	l32r	a8, 0x4037a6a4 (0x4203ded4)
4037a9d9:	e00800        	callx8	a8
4037a9dc:	821349        	l16ui	a8, a3, 146
4037a9df:	82534a        	s16i	a8, a3, 148
4037a9e2:	32039f        	l8ui	a3, a3, 159
4037a9e5:	8c33      	beqz.n	a3, 0x4037a9ec
4037a9e7:	ad02      	mov.n	a10, a2
4037a9e9:	65f0ff        	call8	0x4037a8f0
4037a9ec:	2804      	l32i.n	a2, a4, 0
4037a9ee:	222280        	l32i	a2, a2, 0x200
4037a9f1:	e00200        	callx8	a2
4037a9f4:	1df0      	retw.n
4037a9f6:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037a9f9:	410021        	l32r	a4, 0x40342dfc
4037a9fc:	19fe      	s32i.n	a1, a14, 60
4037a9fe:	3802      	l32i.n	a3, a2, 0
4037aa00:	a22358        	l32i	a10, a3, 0x160
4037aa03:	e00a00        	callx8	a10
4037aa06:	3802      	l32i.n	a3, a2, 0
4037aa08:	4d0a      	mov.n	a4, a10
4037aa0a:	a22396        	l32i	a10, a3, 0x258
4037aa0d:	e00a00        	callx8	a10
4037aa10:	3113fe        	l32r	a3, 0x4037a25c (0x3fc96cc8)
4037aa13:	82039c        	l8ui	a8, a3, 156
4037aa16:	8c48      	beqz.n	a8, 0x4037aa1e
4037aa18:	a2039b        	l8ui	a10, a3, 155
4037aa1b:	a5f7ff        	call8	0x4037a994
4037aa1e:	82039d        	l8ui	a8, a3, 157
4037aa21:	8cb8      	beqz.n	a8, 0x4037aa30
4037aa23:	8802      	l32i.n	a8, a2, 0
4037aa25:	b2039b        	l8ui	a11, a3, 155
4037aa28:	8228a2        	l32i	a8, a8, 0x288
4037aa2b:	0c1a      	movi.n	a10, 1
4037aa2d:	e00800        	callx8	a8
4037aa30:	2802      	l32i.n	a2, a2, 0
4037aa32:	ad04      	mov.n	a10, a4
4037aa34:	222259        	l32i	a2, a2, 0x164
4037aa37:	e00200        	callx8	a2
4037aa3a:	1df0      	retw.n
4037aa3c:	364100        	entry	a1, 32
4037aa3f:	a5fbff        	call8	0x4037a9f8
4037aa42:	1df0      	retw.n
4037aa44:	364100        	entry	a1, 32
4037aa47:	4106fe        	l32r	a4, 0x4037a260 (0x3fca6298)
4037aa4a:	202074        	extui	a2, a2, 0, 8
4037aa4d:	5804      	l32i.n	a5, a4, 0
4037aa4f:	303074        	extui	a3, a3, 0, 8
4037aa52:	a22558        	l32i	a10, a5, 0x160
4037aa55:	e00a00        	callx8	a10
4037aa58:	8804      	l32i.n	a8, a4, 0
4037aa5a:	5d0a      	mov.n	a5, a10
4037aa5c:	a22896        	l32i	a10, a8, 0x258
4037aa5f:	e00a00        	callx8	a10
4037aa62:	8804      	l32i.n	a8, a4, 0
4037aa64:	30b320        	or	a11, a3, a3
4037aa67:	8228a3        	l32i	a8, a8, 0x28c
4037aa6a:	20a220        	or	a10, a2, a2
4037aa6d:	e00800        	callx8	a8
4037aa70:	81fbfd        	l32r	a8, 0x4037a25c (0x3fc96cc8)
4037aa73:	92089c        	l8ui	a9, a8, 156
4037aa76:	8c49      	beqz.n	a9, 0x4037aa7e
4037aa78:	a2089b        	l8ui	a10, a8, 155
4037aa7b:	a5f1ff        	call8	0x4037a994
4037aa7e:	4804      	l32i.n	a4, a4, 0
4037aa80:	ad05      	mov.n	a10, a5
4037aa82:	422459        	l32i	a4, a4, 0x164
4037aa85:	e00400        	callx8	a4
4037aa88:	1df0      	retw.n
4037aa8a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037aa8d:	4100e0        	l32r	a4, 0x40372a90
4037aa90:	02000c        	l8ui	a0, a0, 12
4037aa93:	021df0        	l16ui	a0, a13, 0x1e0
4037aa96:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037aa99:	41001d        	l32r	a4, 0x40341e9c
4037aa9c:	f00000        	callx12	a0
4037aa9f:	003641        	srli	a3, a0, 6
4037aaa2:	008822        	orb	b8, b8, b0
4037aaa5:	561801        	bnez	a8, 0x4037aaba
4037aaa8:	a802      	l32i.n	a10, a2, 0
4037aaaa:	280a      	l32i.n	a2, a10, 0
4037aaac:	2802      	l32i.n	a2, a2, 0
4037aaae:	e00200        	callx8	a2
4037aab1:	0c0a      	movi.n	a10, 0
4037aab3:	2d0a      	mov.n	a2, a10
4037aab5:	1df0      	retw.n
4037aab7:	000000        	ill
4037aaba:	8808      	l32i.n	a8, a8, 0
4037aabc:	1688fe        	beqz	a8, 0x4037aaa8
4037aabf:	a832      	l32i.n	a10, a2, 12
4037aac1:	e00800        	callx8	a8
4037aac4:	160afe        	beqz	a10, 0x4037aaa8
4037aac7:	06faff        	j	0x4037aab3
4037aaca:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037aacd:	410088        	l32r	a4, 0x4035cad0
4037aad0:	22          	.byte	0x22
4037aad1:	8c98      	beqz.n	a8, 0x4037aade
4037aad3:	8818      	l32i.n	a8, a8, 4
4037aad5:	8c58      	beqz.n	a8, 0x4037aade
4037aad7:	a832      	l32i.n	a10, a2, 12
4037aad9:	e00800        	callx8	a8
4037aadc:	8c03      	beqz.n	a3, 0x4037aae0
4037aade:	ad03      	mov.n	a10, a3
4037aae0:	2d0a      	mov.n	a2, a10
4037aae2:	1df0      	retw.n
4037aae4:	364100        	entry	a1, 32
4037aae7:	1df0      	retw.n
4037aae9:	000000        	ill
4037aaec:	364100        	entry	a1, 32
4037aaef:	20e603        	rsr.ps	a2
4037aaf2:	0c19      	movi.n	a9, 1
4037aaf4:	202034        	extui	a2, a2, 0, 4
4037aaf7:	0c08      	movi.n	a8, 0
4037aaf9:	208993        	movnez	a8, a9, a2
4037aafc:	2d08      	mov.n	a2, a8
4037aafe:	1df0      	retw.n
4037ab00:	3802      	l32i.n	a3, a2, 0
4037ab02:	16a3ff        	beqz	a3, 0x4037ab00
4037ab05:	0df0      	ret.n
4037ab07:	003681        	src	a3, a6, a0
4037ab0a:	00dd05        	extui	a13, a0, 29, 1
4037ab0d:	60e620        	or	a14, a6, a6
4037ab10:	ccd2      	bnez.n	a2, 0x4037ab21
4037ab12:	d10fe8        	l32r	a13, 0x40374b50
4037ab15:	c10fe8        	l32r	a12, 0x40374b54
4037ab18:	a110e8        	l32r	a10, 0x40374b58
4037ab1b:	b2a389        	movi	a11, 0x389
4037ab1e:	25e407        	call8	0x40382960
4037ab21:	0c16      	movi.n	a6, 1
4037ab23:	0c05      	movi.n	a5, 0
4037ab25:	305683        	moveqz	a5, a6, a3
4037ab28:	509074        	extui	a9, a5, 0, 8
4037ab2b:	cca9      	bnez.n	a9, 0x4037ab39
4037ab2d:	608480        	add	a8, a4, a6
4037ab30:	905920        	or	a5, a9, a9
4037ab33:	805683        	moveqz	a5, a6, a8
4037ab36:	164500        	beqz	a5, 0x4037ab3e
4037ab39:	22a102        	movi	a2, 0x102
4037ab3c:	1df0      	retw.n
4037ab3e:	1c0c      	movi.n	a12, 16
4037ab40:	bd05      	mov.n	a11, a5
4037ab42:	caa1      	add.n	a10, a1, a12
4037ab44:	d931      	s32i.n	a13, a1, 12
4037ab46:	e921      	s32i.n	a14, a1, 8
4037ab48:	8156e6        	l32r	a8, 0x403744a0
4037ab4b:	e00800        	callx8	a8
4037ab4e:	e821      	l32i.n	a14, a1, 8
4037ab50:	d831      	l32i.n	a13, a1, 12
4037ab52:	f65ee3        	bgeui	a14, 5, 0x4037ab39
4037ab55:	8d05      	mov.n	a8, a5
4037ab57:	d08693        	movnez	a8, a6, a13
4037ab5a:	9c68      	beqz.n	a8, 0x4037ab74
4037ab5c:	8d05      	mov.n	a8, a5
4037ab5e:	e08693        	movnez	a8, a6, a14
4037ab61:	8cf8      	beqz.n	a8, 0x4037ab74
4037ab63:	cd0e      	mov.n	a12, a14
4037ab65:	d0bd20        	or	a11, a13, a13
4037ab68:	a2c11c        	addi	a10, a1, 28
4037ab6b:	814be6        	l32r	a8, 0x40374498
4037ab6e:	e00800        	callx8	a8
4037ab71:	624111        	s8i	a6, a1, 17
4037ab74:	a22201        	l32i	a10, a2, 4
4037ab77:	d2a000        	movi	a13, 0
4037ab7a:	cd07      	mov.n	a12, a7
4037ab7c:	b2c110        	addi	a11, a1, 16
4037ab7f:	3951      	s32i.n	a3, a1, 20
4037ab81:	426106        	s32i	a4, a1, 24
4037ab84:	65bd02        	call8	0x4037d75c
4037ab87:	0c02      	movi.n	a2, 0
4037ab89:	261aaf        	beqi	a10, 1, 0x4037ab3c
4037ab8c:	320110        	l8ui	a3, a1, 16
4037ab8f:	7cf2      	movi.n	a2, -1
4037ab91:	1673fa        	beqz	a3, 0x4037ab3c
4037ab94:	a871      	l32i.n	a10, a1, 28
4037ab96:	162afa        	beqz	a10, 0x4037ab3c
4037ab99:	65ef07        	call8	0x40382a90
4037ab9c:	06e7ff        	j	0x4037ab3c
4037ab9f:	003681        	src	a3, a6, a0
4037aba2:	00          	.byte	00
4037aba3:	b1eee7        	l32r	a11, 0x40374b5c
4037aba6:	1c4c      	movi.n	a12, 20
4037aba8:	cba1      	addi.n	a10, a1, 12
4037abaa:	0c03      	movi.n	a3, 0
4037abac:	813be6        	l32r	a8, 0x40374498
4037abaf:	e00800        	callx8	a8
4037abb2:	cb21      	addi.n	a2, a1, 12
4037abb4:	4d03      	mov.n	a4, a3
4037abb6:	a802      	l32i.n	a10, a2, 0
4037abb8:	bd04      	mov.n	a11, a4
4037abba:	1b33      	addi.n	a3, a3, 1
4037abbc:	81e9e7        	l32r	a8, 0x40374b60
4037abbf:	e00800        	callx8	a8
4037abc2:	4b22      	addi.n	a2, a2, 4
4037abc4:	6653ee        	bnei	a3, 5, 0x4037abb6
4037abc7:	0c1b      	movi.n	a11, 1
4037abc9:	ad0b      	mov.n	a10, a11
4037abcb:	81e5e7        	l32r	a8, 0x40374b60
4037abce:	e00800        	callx8	a8
4037abd1:	1df0      	retw.n
4037abd3:	003641        	srli	a3, a0, 6
4037abd6:	00          	.byte	00
4037abd7:	913fe7        	l32r	a9, 0x403748d4
4037abda:	a2a540        	movi	a10, 0x540
4037abdd:	c02000        	memw
4037abe0:	8809      	l32i.n	a8, a9, 0
4037abe2:	a08820        	or	a8, a8, a10
4037abe5:	c02000        	memw
4037abe8:	8909      	s32i.n	a8, a9, 0
4037abea:	81dee7        	l32r	a8, 0x40374b64
4037abed:	0c09      	movi.n	a9, 0
4037abef:	9908      	s32i.n	a9, a8, 0
4037abf1:	1df0      	retw.n
4037abf3:	003641        	srli	a3, a0, 6
4037abf6:	00          	.byte	00
4037abf7:	81dce7        	l32r	a8, 0x40374b68
4037abfa:	209054        	extui	a9, a2, 0, 6
4037abfd:	b1dbe7        	l32r	a11, 0x40374b6c
4037ac00:	f09901        	slli	a9, a9, 17
4037ac03:	c02000        	memw
4037ac06:	a808      	l32i.n	a10, a8, 0
4037ac08:	b09910        	and	a9, a9, a11
4037ac0b:	b1d9e7        	l32r	a11, 0x40374b70
4037ac0e:	b0aa10        	and	a10, a10, a11
4037ac11:	a09920        	or	a9, a9, a10
4037ac14:	c02000        	memw
4037ac17:	9908      	s32i.n	a9, a8, 0
4037ac19:	c02000        	memw
4037ac1c:	a808      	l32i.n	a10, a8, 0
4037ac1e:	b1d5e7        	l32r	a11, 0x40374b74
4037ac21:	209624        	extui	a9, a2, 6, 3
4037ac24:	b0aa10        	and	a10, a10, a11
4037ac27:	309911        	slli	a9, a9, 13
4037ac2a:	a09920        	or	a9, a9, a10
4037ac2d:	c02000        	memw
4037ac30:	9908      	s32i.n	a9, a8, 0
4037ac32:	c02000        	memw
4037ac35:	a808      	l32i.n	a10, a8, 0
4037ac37:	b1d0e7        	l32r	a11, 0x40374b78
4037ac3a:	209924        	extui	a9, a2, 9, 3
4037ac3d:	b0aa10        	and	a10, a10, a11
4037ac40:	609911        	slli	a9, a9, 10
4037ac43:	a09920        	or	a9, a9, a10
4037ac46:	c02000        	memw
4037ac49:	9908      	s32i.n	a9, a8, 0
4037ac4b:	c02000        	memw
4037ac4e:	9808      	l32i.n	a9, a8, 0
4037ac50:	202c04        	extui	a2, a2, 12, 1
4037ac53:	a2adff        	movi	a10, 0xfffffdff
4037ac56:	a09910        	and	a9, a9, a10
4037ac59:	702211        	slli	a2, a2, 9
4037ac5c:	902220        	or	a2, a2, a9
4037ac5f:	c02000        	memw
4037ac62:	2908      	s32i.n	a2, a8, 0
4037ac64:	c02000        	memw
4037ac67:	2808      	l32i.n	a2, a8, 0
4037ac69:	9136e6        	l32r	a9, 0x40374544
4037ac6c:	902220        	or	a2, a2, a9
4037ac6f:	c02000        	memw
4037ac72:	2908      	s32i.n	a2, a8, 0
4037ac74:	1df0      	retw.n
4037ac76:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037ac79:	410020        	l32r	a4, 0x40342c7c
4037ac7c:	20          	.byte	0x20
4037ac7d:	74ace2        	ee.vldbc.32.ip	q5, a7, 0xfffffeb0
4037ac80:	81bfe7        	l32r	a8, 0x40374b7c
4037ac83:	a1bfe7        	l32r	a10, 0x40374b80
4037ac86:	c02000        	memw
4037ac89:	9808      	l32i.n	a9, a8, 0
4037ac8b:	21bfe7        	l32r	a2, 0x40374b88
4037ac8e:	a09920        	or	a9, a9, a10
4037ac91:	c02000        	memw
4037ac94:	9908      	s32i.n	a9, a8, 0
4037ac96:	91bbe7        	l32r	a9, 0x40374b84
4037ac99:	c02000        	memw
4037ac9c:	8809      	l32i.n	a8, a9, 0
4037ac9e:	a08820        	or	a8, a8, a10
4037aca1:	c02000        	memw
4037aca4:	8909      	s32i.n	a8, a9, 0
4037aca6:	20a0f4        	extui	a10, a2, 0, 16
4037aca9:	a5f4ff        	call8	0x4037abf4
4037acac:	1df0      	retw.n
4037acae:	000081        	src	a0, a0, a0
4037acb1:	aee7a2a0 	ee.fft.ams.s16.st.incp	q2, q0, a10, a7, q2, q3, q5, 0
4037acb5:	80c020        	or	a12, a0, a8
4037acb8:	009808        	lsx	f9, a8, a0
4037acbb:	a09920        	or	a9, a9, a10
4037acbe:	c02000        	memw
4037acc1:	9908      	s32i.n	a9, a8, 0
4037acc3:	c02000        	memw
4037acc6:	9808      	l32i.n	a9, a8, 0
4037acc8:	a1b1e7        	l32r	a10, 0x40374b8c
4037accb:	a09910        	and	a9, a9, a10
4037acce:	c02000        	memw
4037acd1:	9908      	s32i.n	a9, a8, 0
4037acd3:	46f5ff        	j	0x4037acac
4037acd6:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037acd9:	410081        	l32r	a4, 0x4035b0dc
4037acdc:	ad          	.byte	0xad
4037acdd:	e72020        	blt	a0, a14, 0x4037ad01
4037ace0:	74          	.byte	0x74
4037ace1:	c02000        	memw
4037ace4:	a808      	l32i.n	a10, a8, 0
4037ace6:	303074        	extui	a3, a3, 0, 8
4037ace9:	91aae7        	l32r	a9, 0x40374b94
4037acec:	160204        	beqz	a2, 0x4037ad30
4037acef:	b2afbf        	movi	a11, -65
4037acf2:	b0aa10        	and	a10, a10, a11
4037acf5:	c02000        	memw
4037acf8:	a908      	s32i.n	a10, a8, 0
4037acfa:	c02000        	memw
4037acfd:	8809      	l32i.n	a8, a9, 0
4037acff:	a1a6e7        	l32r	a10, 0x40374b98
4037ad02:	a08810        	and	a8, a8, a10
4037ad05:	a2a140        	movi	a10, 0x140
4037ad08:	a08820        	or	a8, a8, a10
4037ad0b:	c02000        	memw
4037ad0e:	8909      	s32i.n	a8, a9, 0
4037ad10:	3c2a      	movi.n	a10, 50
4037ad12:	8132e6        	l32r	a8, 0x403745dc
4037ad15:	e00800        	callx8	a8
4037ad18:	819ee7        	l32r	a8, 0x40374b90
4037ad1b:	c02000        	memw
4037ad1e:	9808      	l32i.n	a9, a8, 0
4037ad20:	bc03      	beqz.n	a3, 0x4037ad54
4037ad22:	32af7f        	movi	a3, -129
4037ad25:	309910        	and	a9, a9, a3
4037ad28:	c02000        	memw
4037ad2b:	9908      	s32i.n	a9, a8, 0
4037ad2d:	1df0      	retw.n
4037ad2f:	00          	.byte	00
4037ad30:	4c0b      	movi.n	a11, 64
4037ad32:	b0aa20        	or	a10, a10, a11
4037ad35:	c02000        	memw
4037ad38:	a908      	s32i.n	a10, a8, 0
4037ad3a:	c02000        	memw
4037ad3d:	8809      	l32i.n	a8, a9, 0
4037ad3f:	a196e7        	l32r	a10, 0x40374b98
4037ad42:	a08810        	and	a8, a8, a10
4037ad45:	a2a500        	movi	a10, 0x500
4037ad48:	a08820        	or	a8, a8, a10
4037ad4b:	c02000        	memw
4037ad4e:	8909      	s32i.n	a8, a9, 0
4037ad50:	06f1ff        	j	0x4037ad18
4037ad53:	0032a0        	addx4	a3, a2, a0
4037ad56:	80          	.byte	0x80
4037ad57:	309920        	or	a9, a9, a3
4037ad5a:	86f2ff        	j	0x4037ad28
4037ad5d:	000000        	ill
4037ad60:	364100        	entry	a1, 32
4037ad63:	218be7        	l32r	a2, 0x40374b90
4037ad66:	c02000        	memw
4037ad69:	8802      	l32i.n	a8, a2, 0
4037ad6b:	0c12      	movi.n	a2, 1
4037ad6d:	808604        	extui	a8, a8, 6, 1
4037ad70:	202830        	xor	a2, a8, a2
4037ad73:	1df0      	retw.n
4037ad75:	000000        	ill
4037ad78:	364100        	entry	a1, 32
4037ad7b:	2185e7        	l32r	a2, 0x40374b90
4037ad7e:	c02000        	memw
4037ad81:	8802      	l32i.n	a8, a2, 0
4037ad83:	0c12      	movi.n	a2, 1
4037ad85:	808704        	extui	a8, a8, 7, 1
4037ad88:	202830        	xor	a2, a8, a2
4037ad8b:	1df0      	retw.n
4037ad8d:	000000        	ill
4037ad90:	364100        	entry	a1, 32
4037ad93:	817fe7        	l32r	a8, 0x40374b90
4037ad96:	a189e6        	l32r	a10, 0x403747bc
4037ad99:	c02000        	memw
4037ad9c:	9808      	l32i.n	a9, a8, 0
4037ad9e:	0c0b      	movi.n	a11, 0
4037ada0:	a09910        	and	a9, a9, a10
4037ada3:	20a201        	slli	a10, a2, 30
4037ada6:	a09920        	or	a9, a9, a10
4037ada9:	c02000        	memw
4037adac:	9908      	s32i.n	a9, a8, 0
4037adae:	c02000        	memw
4037adb1:	9808      	l32i.n	a9, a8, 0
4037adb3:	a2aeff        	movi	a10, 0xfffffeff
4037adb6:	a09910        	and	a9, a9, a10
4037adb9:	c2a100        	movi	a12, 0x100
4037adbc:	0ba2      	addi.n	a10, a2, -1
4037adbe:	a0cb93        	movnez	a12, a11, a10
4037adc1:	c09920        	or	a9, a9, a12
4037adc4:	c02000        	memw
4037adc7:	9908      	s32i.n	a9, a8, 0
4037adc9:	c02000        	memw
4037adcc:	9808      	l32i.n	a9, a8, 0
4037adce:	a174e7        	l32r	a10, 0x40374ba0
4037add1:	22c2fe        	addi	a2, a2, -2
4037add4:	a09910        	and	a9, a9, a10
4037add7:	a171e7        	l32r	a10, 0x40374b9c
4037adda:	20ab93        	movnez	a10, a11, a2
4037addd:	a09920        	or	a9, a9, a10
4037ade0:	c02000        	memw
4037ade3:	9908      	s32i.n	a9, a8, 0
4037ade5:	a2a12c        	movi	a10, 0x12c
4037ade8:	81fde5        	l32r	a8, 0x403745dc
4037adeb:	e00800        	callx8	a8
4037adee:	1df0      	retw.n
4037adf0:	364100        	entry	a1, 32
4037adf3:	2167e7        	l32r	a2, 0x40374b90
4037adf6:	c02000        	memw
4037adf9:	2802      	l32i.n	a2, a2, 0
4037adfb:	202e15        	extui	a2, a2, 30, 2
4037adfe:	1df0      	retw.n
4037ae00:	364100        	entry	a1, 32
4037ae03:	2163e7        	l32r	a2, 0x40374b90
4037ae06:	c02000        	memw
4037ae09:	8802      	l32i.n	a8, a2, 0
4037ae0b:	219ce5        	l32r	a2, 0x4037447c
4037ae0e:	808e15        	extui	a8, a8, 30, 2
4037ae11:	26180f        	beqi	a8, 1, 0x4037ae24
4037ae14:	2164e7        	l32r	a2, 0x40374ba4
4037ae17:	8c98      	beqz.n	a8, 0x4037ae24
4037ae19:	2163e7        	l32r	a2, 0x40374ba8
4037ae1c:	82c8fe        	addi	a8, a8, -2
4037ae1f:	0c09      	movi.n	a9, 0
4037ae21:	802993        	movnez	a2, a9, a8
4037ae24:	1df0      	retw.n
4037ae26:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037ae29:	410091        	l32r	a4, 0x4035f22c
4037ae2c:	59e7      	s32i.n	a5, a7, 56
4037ae2e:	a15fe7        	l32r	a10, 0x40374bac
4037ae31:	302201        	slli	a2, a2, 29
4037ae34:	c02000        	memw
4037ae37:	8809      	l32i.n	a8, a9, 0
4037ae39:	a02210        	and	a2, a2, a10
4037ae3c:	a1abe5        	l32r	a10, 0x403744e8
4037ae3f:	a08810        	and	a8, a8, a10
4037ae42:	802220        	or	a2, a2, a8
4037ae45:	c02000        	memw
4037ae48:	2909      	s32i.n	a2, a9, 0
4037ae4a:	0c3a      	movi.n	a10, 3
4037ae4c:	81e4e5        	l32r	a8, 0x403745dc
4037ae4f:	e00800        	callx8	a8
4037ae52:	1df0      	retw.n
4037ae54:	364100        	entry	a1, 32
4037ae57:	4156e7        	l32r	a4, 0x40374bb0
4037ae5a:	7cb8      	movi.n	a8, -5
4037ae5c:	c02000        	memw
4037ae5f:	6804      	l32i.n	a6, a4, 0
4037ae61:	52a1e0        	movi	a5, 0x1e0
4037ae64:	806610        	and	a6, a6, a8
4037ae67:	c02000        	memw
4037ae6a:	6904      	s32i.n	a6, a4, 0
4037ae6c:	c02000        	memw
4037ae6f:	7804      	l32i.n	a7, a4, 0
4037ae71:	0c86      	movi.n	a6, 8
4037ae73:	607720        	or	a7, a7, a6
4037ae76:	c02000        	memw
4037ae79:	7904      	s32i.n	a7, a4, 0
4037ae7b:	414ee7        	l32r	a4, 0x40374bb4
4037ae7e:	571302        	beq	a3, a5, 0x4037ae84
4037ae81:	c63000        	j	0x4037af48
4037ae84:	c02000        	memw
4037ae87:	5804      	l32i.n	a5, a4, 0
4037ae89:	0c4c      	movi.n	a12, 4
4037ae8b:	c05520        	or	a5, a5, a12
4037ae8e:	22c2e0        	addi	a2, a2, -32
4037ae91:	c02000        	memw
4037ae94:	5904      	s32i.n	a5, a4, 0
4037ae96:	0c37      	movi.n	a7, 3
4037ae98:	0c04      	movi.n	a4, 0
4037ae9a:	0c1b      	movi.n	a11, 1
4037ae9c:	207483        	moveqz	a7, a4, a2
4037ae9f:	0c55      	movi.n	a5, 5
4037aea1:	1ca8      	movi.n	a8, 26
4037aea3:	204b83        	moveqz	a4, a11, a2
4037aea6:	d2a06b        	movi	a13, 107
4037aea9:	a2a066        	movi	a10, 102
4037aeac:	205c83        	moveqz	a5, a12, a2
4037aeaf:	206883        	moveqz	a6, a8, a2
4037aeb2:	2d04      	mov.n	a2, a4
4037aeb4:	2544fe        	call8	0x403792f8
4037aeb7:	c0d511        	slli	a13, a5, 4
4037aeba:	20dd20        	or	a13, a13, a2
4037aebd:	0c2c      	movi.n	a12, 2
4037aebf:	0c1b      	movi.n	a11, 1
4037aec1:	a2a066        	movi	a10, 102
4037aec4:	2543fe        	call8	0x403792f8
4037aec7:	dd06      	mov.n	a13, a6
4037aec9:	0c3c      	movi.n	a12, 3
4037aecb:	0c1b      	movi.n	a11, 1
4037aecd:	a2a066        	movi	a10, 102
4037aed0:	6542fe        	call8	0x403792f8
4037aed3:	fd04      	mov.n	a15, a4
4037aed5:	0c0e      	movi.n	a14, 0
4037aed7:	0c2d      	movi.n	a13, 2
4037aed9:	0c5c      	movi.n	a12, 5
4037aedb:	0c1b      	movi.n	a11, 1
4037aedd:	a2a066        	movi	a10, 102
4037aee0:	a544fe        	call8	0x4037932c
4037aee3:	fd04      	mov.n	a15, a4
4037aee5:	0c4e      	movi.n	a14, 4
4037aee7:	0c6d      	movi.n	a13, 6
4037aee9:	0c5c      	movi.n	a12, 5
4037aeeb:	0c1b      	movi.n	a11, 1
4037aeed:	a2a066        	movi	a10, 102
4037aef0:	a543fe        	call8	0x4037932c
4037aef3:	d2a070        	movi	a13, 112
4037aef6:	d0d720        	or	a13, a7, a13
4037aef9:	c2a006        	movi	a12, 6
4037aefc:	b2a001        	movi	a11, 1
4037aeff:	a2a066        	movi	a10, 102
4037af02:	653ffe        	call8	0x403792f8
4037af05:	0c1d      	movi.n	a13, 1
4037af07:	0c2f      	movi.n	a15, 2
4037af09:	0c0e      	movi.n	a14, 0
4037af0b:	0c9c      	movi.n	a12, 9
4037af0d:	bd0d      	mov.n	a11, a13
4037af0f:	a2a066        	movi	a10, 102
4037af12:	a541fe        	call8	0x4037932c
4037af15:	4126e7        	l32r	a4, 0x40374bb0
4037af18:	219fe5        	l32r	a2, 0x40374594
4037af1b:	c02000        	memw
4037af1e:	5804      	l32i.n	a5, a4, 0
4037af20:	2705f7        	bnone	a5, a2, 0x4037af1b
4037af23:	c02000        	memw
4037af26:	2804      	l32i.n	a2, a4, 0
4037af28:	7c75      	movi.n	a5, -9
4037af2a:	502210        	and	a2, a2, a5
4037af2d:	c02000        	memw
4037af30:	2904      	s32i.n	a2, a4, 0
4037af32:	c02000        	memw
4037af35:	2804      	l32i.n	a2, a4, 0
4037af37:	0c45      	movi.n	a5, 4
4037af39:	502220        	or	a2, a2, a5
4037af3c:	c02000        	memw
4037af3f:	2904      	s32i.n	a2, a4, 0
4037af41:	2108e7        	l32r	a2, 0x40374b64
4037af44:	3902      	s32i.n	a3, a2, 0
4037af46:	1df0      	retw.n
4037af48:	c02000        	memw
4037af4b:	522400        	l32i	a5, a4, 0
4037af4e:	b2a001        	movi	a11, 1
4037af51:	805510        	and	a5, a5, a8
4037af54:	c02000        	memw
4037af57:	526400        	s32i	a5, a4, 0
4037af5a:	22c2e0        	addi	a2, a2, -32
4037af5d:	5d0b      	mov.n	a5, a11
4037af5f:	0c04      	movi.n	a4, 0
4037af61:	0c4c      	movi.n	a12, 4
4037af63:	205493        	movnez	a5, a4, a2
4037af66:	0c66      	movi.n	a6, 6
4037af68:	d2a069        	movi	a13, 105
4037af6b:	a2a066        	movi	a10, 102
4037af6e:	206c93        	movnez	a6, a12, a2
4037af71:	0c37      	movi.n	a7, 3
4037af73:	2d05      	mov.n	a2, a5
4037af75:	2538fe        	call8	0x403792f8
4037af78:	0c55      	movi.n	a5, 5
4037af7a:	46ceff        	j	0x4037aeb7
4037af7d:	000000        	ill
4037af80:	364100        	entry	a1, 32
4037af83:	810de7        	l32r	a8, 0x40374bb8
4037af86:	0c4d      	movi.n	a13, 4
4037af88:	f20800        	l8ui	a15, a8, 0
4037af8b:	cd0d      	mov.n	a12, a13
4037af8d:	0c0e      	movi.n	a14, 0
4037af8f:	0c1b      	movi.n	a11, 1
4037af91:	a2a06d        	movi	a10, 109
4037af94:	6539fe        	call8	0x4037932c
4037af97:	8109e7        	l32r	a8, 0x40374bbc
4037af9a:	0c1b      	movi.n	a11, 1
4037af9c:	f20800        	l8ui	a15, a8, 0
4037af9f:	0c0e      	movi.n	a14, 0
4037afa1:	0c4d      	movi.n	a13, 4
4037afa3:	c2a006        	movi	a12, 6
4037afa6:	a2a06d        	movi	a10, 109
4037afa9:	2538fe        	call8	0x4037932c
4037afac:	2c8a      	movi.n	a10, 40
4037afae:	818be5        	l32r	a8, 0x403745dc
4037afb1:	e00800        	callx8	a8
4037afb4:	ad02      	mov.n	a10, a2
4037afb6:	8107e7        	l32r	a8, 0x40374bd4
4037afb9:	e00800        	callx8	a8
4037afbc:	8101e7        	l32r	a8, 0x40374bc0
4037afbf:	b2ac00        	movi	a11, 0xfffffc00
4037afc2:	c02000        	memw
4037afc5:	a808      	l32i.n	a10, a8, 0
4037afc7:	0b33      	addi.n	a3, a3, -1
4037afc9:	b0aa10        	and	a10, a10, a11
4037afcc:	c02000        	memw
4037afcf:	a908      	s32i.n	a10, a8, 0
4037afd1:	c02000        	memw
4037afd4:	9808      	l32i.n	a9, a8, 0
4037afd6:	303094        	extui	a3, a3, 0, 10
4037afd9:	b09910        	and	a9, a9, a11
4037afdc:	903320        	or	a3, a3, a9
4037afdf:	c02000        	memw
4037afe2:	3908      	s32i.n	a3, a8, 0
4037afe4:	c02000        	memw
4037afe7:	3808      	l32i.n	a3, a8, 0
4037afe9:	91f6e6        	l32r	a9, 0x40374bc4
4037afec:	903310        	and	a3, a3, a9
4037afef:	c02000        	memw
4037aff2:	3908      	s32i.n	a3, a8, 0
4037aff4:	313ae6        	l32r	a3, 0x403748dc
4037aff7:	81f6e6        	l32r	a8, 0x40374bd0
4037affa:	302282        	mull	a2, a2, a3
4037affd:	31f2e6        	l32r	a3, 0x40374bc8
4037b000:	2903      	s32i.n	a2, a3, 0
4037b002:	31f2e6        	l32r	a3, 0x40374bcc
4037b005:	c02000        	memw
4037b008:	2803      	l32i.n	a2, a3, 0
4037b00a:	802210        	and	a2, a2, a8
4037b00d:	8143e6        	l32r	a8, 0x4037491c
4037b010:	802220        	or	a2, a2, a8
4037b013:	c02000        	memw
4037b016:	2903      	s32i.n	a2, a3, 0
4037b018:	1df0      	retw.n
4037b01a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037b01d:	410021        	l32r	a4, 0x40343420
4037b020:	eee6c020 	ee.vmulas.s8.accx.ld.ip.qup	q0, a14, 96, q3, q5, q4, q0
4037b024:	008802        	andb	b8, b8, b0
4037b027:	8020f4        	extui	a2, a8, 0, 16
4037b02a:	8090f5        	extui	a9, a8, 16, 16
4037b02d:	979208        	bne	a2, a9, 0x4037b039
4037b030:	0b88      	addi.n	a8, a8, -1
4037b032:	7cd9      	movi.n	a9, -3
4037b034:	873901        	bltu	a9, a8, 0x4037b039
4037b037:	1df0      	retw.n
4037b039:	2c82      	movi.n	a2, 40
4037b03b:	06feff        	j	0x4037b037
4037b03e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037b041:	4100a5        	l32r	a4, 0x40364444
4037b044:	fd          	.byte	0xfd
4037b045:	ff273a20 	ee.vmulas.s8.accx.ld.ip.qup	q1, a15, 112, q4, q4, q3, q2
4037b049:	209ac2        	quou	a9, a10, a2
4037b04c:	90b141        	srli	a11, a9, 1
4037b04f:	a0bb80        	add	a11, a11, a10
4037b052:	90bbc2        	quou	a11, a11, a9
4037b055:	82a000        	movi	a8, 0
4037b058:	b7920a        	bne	a2, a11, 0x4037b066
4037b05b:	826300        	s32i	a8, a3, 0
4037b05e:	a913      	s32i.n	a10, a3, 4
4037b060:	9923      	s32i.n	a9, a3, 8
4037b062:	2933      	s32i.n	a2, a3, 12
4037b064:	0c18      	movi.n	a8, 1
4037b066:	2d08      	mov.n	a2, a8
4037b068:	1df0      	retw.n
4037b06a:	5c08      	movi.n	a8, 80
4037b06c:	871218        	beq	a2, a8, 0x4037b088
4037b06f:	82a0a0        	movi	a8, 160
4037b072:	871217        	beq	a2, a8, 0x4037b08d
4037b075:	92a0f0        	movi	a9, 240
4037b078:	0c08      	movi.n	a8, 0
4037b07a:	9792e8        	bne	a2, a9, 0x4037b066
4037b07d:	0c29      	movi.n	a9, 2
4037b07f:	0c18      	movi.n	a8, 1
4037b081:	a2a1e0        	movi	a10, 0x1e0
4037b084:	c6f4ff        	j	0x4037b05b
4037b087:	00          	.byte	00
4037b088:	0c69      	movi.n	a9, 6
4037b08a:	46fcff        	j	0x4037b07f
4037b08d:	0c39      	movi.n	a9, 3
4037b08f:	06fbff        	j	0x4037b07f
4037b092:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037b095:	410031        	l32r	a4, 0x40347498
4037b098:	cae6      	add.n	a14, a6, a12
4037b09a:	c02000        	memw
4037b09d:	4803      	l32i.n	a4, a3, 0
4037b09f:	404a14        	extui	a4, a4, 10, 2
4037b0a2:	26143e        	beqi	a4, 1, 0x4037b0e4
4037b0a5:	9cc4      	beqz.n	a4, 0x4037b0c5
4037b0a7:	262469        	beqi	a4, 2, 0x4037b114
4037b0aa:	21f6e4        	l32r	a2, 0x40374484
4037b0ad:	2802      	l32i.n	a2, a2, 0
4037b0af:	8cf2      	beqz.n	a2, 0x4037b0c2
4037b0b1:	657d07        	call8	0x40382888
4037b0b4:	bd0a      	mov.n	a11, a10
4037b0b6:	c1c9e6        	l32r	a12, 0x40374bdc
4037b0b9:	a1c9e6        	l32r	a10, 0x40374be0
4037b0bc:	81f8e4        	l32r	a8, 0x4037449c
4037b0bf:	e00800        	callx8	a8
4037b0c2:	1df0      	retw.n
4037b0c4:	00c020        	or	a12, a0, a0
4037b0c7:	003223        	sext	a3, a2, 7
4037b0ca:	0025f5        	extui	a2, a0, 21, 16
4037b0cd:	ff303094 	ee.stf.128.ip	f8, f1, f3, f3, a15, 0
4037b0d1:	32c301        	addi	a3, a3, 1
4037b0d4:	308ac2        	quou	a8, a10, a3
4037b0d7:	426200        	s32i	a4, a2, 0
4037b0da:	a912      	s32i.n	a10, a2, 4
4037b0dc:	3922      	s32i.n	a3, a2, 8
4037b0de:	8932      	s32i.n	a8, a2, 12
4037b0e0:	86f7ff        	j	0x4037b0c2
4037b0e3:	0081b4        	extui	a8, a0, 1, 12
4037b0e6:	e6c020        	bgei	a0, 32, 0x4037b10a
4037b0e9:	003808        	lsx	f3, a8, a0
4037b0ec:	c02000        	memw
4037b0ef:	8808      	l32i.n	a8, a8, 0
4037b0f1:	303014        	extui	a3, a3, 0, 2
4037b0f4:	808204        	extui	a8, a8, 2, 1
4037b0f7:	ecd8      	bnez.n	a8, 0x4037b128
4037b0f9:	a2a140        	movi	a10, 0x140
4037b0fc:	cc83      	bnez.n	a3, 0x4037b108
4037b0fe:	5c08      	movi.n	a8, 80
4037b100:	0c43      	movi.n	a3, 4
4037b102:	a2a140        	movi	a10, 0x140
4037b105:	86f3ff        	j	0x4037b0d7
4037b108:	261311        	beqi	a3, 1, 0x4037b11d
4037b10b:	66239b        	bnei	a3, 2, 0x4037b0aa
4037b10e:	82a0f0        	movi	a8, 240
4037b111:	86f0ff        	j	0x4037b0d7
4037b114:	0c88      	movi.n	a8, 8
4037b116:	0c13      	movi.n	a3, 1
4037b118:	ad08      	mov.n	a10, a8
4037b11a:	46eeff        	j	0x4037b0d7
4037b11d:	4d03      	mov.n	a4, a3
4037b11f:	82a0a0        	movi	a8, 160
4037b122:	0c33      	movi.n	a3, 3
4037b124:	c6ebff        	j	0x4037b0d7
4037b127:	00a2a1        	sll	a10, a2
4037b12a:	e05693        	movnez	a5, a6, a14
4037b12d:	fd          	.byte	0xfd
4037b12e:	4d08      	mov.n	a4, a8
4037b130:	0c63      	movi.n	a3, 6
4037b132:	5c08      	movi.n	a8, 80
4037b134:	a2a1e0        	movi	a10, 0x1e0
4037b137:	06e7ff        	j	0x4037b0d7
4037b13a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037b13d:	61005c        	l32r	a6, 0x40352140
4037b140:	03          	.byte	0x3
4037b141:	379202        	bne	a2, a3, 0x4037b147
4037b144:	063c00        	j	0x4037b238
4037b147:	32a0a0        	movi	a3, 160
4037b14a:	379202        	bne	a2, a3, 0x4037b150
4037b14d:	065400        	j	0x4037b2a1
4037b150:	32a0f0        	movi	a3, 240
4037b153:	379202        	bne	a2, a3, 0x4037b159
4037b156:	c65300        	j	0x4037b2a9
4037b159:	31cae4        	l32r	a3, 0x40374484
4037b15c:	0c04      	movi.n	a4, 0
4037b15e:	3803      	l32i.n	a3, a3, 0
4037b160:	471311        	beq	a3, a4, 0x4037b175
4037b163:	657207        	call8	0x40382888
4037b166:	a0ba20        	or	a11, a10, a10
4037b169:	c19ce6        	l32r	a12, 0x40374bdc
4037b16c:	a19ee6        	l32r	a10, 0x40374be4
4037b16f:	81cbe4        	l32r	a8, 0x4037449c
4037b172:	e00800        	callx8	a8
4037b175:	3190e6        	l32r	a3, 0x40374bb8
4037b178:	d2a004        	movi	a13, 4
4037b17b:	f20300        	l8ui	a15, a3, 0
4037b17e:	cd0d      	mov.n	a12, a13
4037b180:	0c0e      	movi.n	a14, 0
4037b182:	b2a001        	movi	a11, 1
4037b185:	a2a06d        	movi	a10, 109
4037b188:	251afe        	call8	0x4037932c
4037b18b:	318ce6        	l32r	a3, 0x40374bbc
4037b18e:	0c0e      	movi.n	a14, 0
4037b190:	f20300        	l8ui	a15, a3, 0
4037b193:	0c4d      	movi.n	a13, 4
4037b195:	0c6c      	movi.n	a12, 6
4037b197:	0c1b      	movi.n	a11, 1
4037b199:	a2a06d        	movi	a10, 109
4037b19c:	e518fe        	call8	0x4037932c
4037b19f:	2c8a      	movi.n	a10, 40
4037b1a1:	810ee5        	l32r	a8, 0x403745dc
4037b1a4:	e00800        	callx8	a8
4037b1a7:	ad01      	mov.n	a10, a1
4037b1a9:	a5eeff        	call8	0x4037b094
4037b1ac:	318fe6        	l32r	a3, 0x40374be8
4037b1af:	208f31        	srai	a8, a2, 31
4037b1b2:	3032b2        	mulsh	a3, a2, a3
4037b1b5:	9184e6        	l32r	a9, 0x40374bc8
4037b1b8:	303521        	srai	a3, a3, 5
4037b1bb:	8033c0        	sub	a3, a3, a8
4037b1be:	0c78      	movi.n	a8, 7
4037b1c0:	000340        	ssr	a3
4037b1c3:	8030b1        	sra	a3, a8
4037b1c6:	8189e6        	l32r	a8, 0x40374bec
4037b1c9:	303311        	slli	a3, a3, 13
4037b1cc:	803310        	and	a3, a3, a8
4037b1cf:	8831      	l32i.n	a8, a1, 12
4037b1d1:	27b868        	bgeu	a8, a2, 0x4037b23d
4037b1d4:	a17ee6        	l32r	a10, 0x40374bcc
4037b1d7:	b17ee6        	l32r	a11, 0x40374bd0
4037b1da:	c02000        	memw
4037b1dd:	880a      	l32i.n	a8, a10, 0
4037b1df:	b08810        	and	a8, a8, a11
4037b1e2:	303820        	or	a3, a8, a3
4037b1e5:	8173e6        	l32r	a8, 0x40374bb4
4037b1e8:	c02000        	memw
4037b1eb:	390a      	s32i.n	a3, a10, 0
4037b1ed:	c02000        	memw
4037b1f0:	3808      	l32i.n	a3, a8, 0
4037b1f2:	7cca      	movi.n	a10, -4
4037b1f4:	a03310        	and	a3, a3, a10
4037b1f7:	404320        	or	a4, a3, a4
4037b1fa:	c02000        	memw
4037b1fd:	4908      	s32i.n	a4, a8, 0
4037b1ff:	4170e6        	l32r	a4, 0x40374bc0
4037b202:	82ac00        	movi	a8, 0xfffffc00
4037b205:	c02000        	memw
4037b208:	3804      	l32i.n	a3, a4, 0
4037b20a:	ad02      	mov.n	a10, a2
4037b20c:	803310        	and	a3, a3, a8
4037b20f:	c02000        	memw
4037b212:	3904      	s32i.n	a3, a4, 0
4037b214:	c02000        	memw
4037b217:	3804      	l32i.n	a3, a4, 0
4037b219:	816ae6        	l32r	a8, 0x40374bc4
4037b21c:	803310        	and	a3, a3, a8
4037b21f:	82a400        	movi	a8, 0x400
4037b222:	803320        	or	a3, a3, a8
4037b225:	c02000        	memw
4037b228:	3904      	s32i.n	a3, a4, 0
4037b22a:	318ae5        	l32r	a3, 0x40374854
4037b22d:	3909      	s32i.n	a3, a9, 0
4037b22f:	8169e6        	l32r	a8, 0x40374bd4
4037b232:	e00800        	callx8	a8
4037b235:	1df0      	retw.n
4037b237:	000c04        	extui	a0, a0, 12, 1
4037b23a:	c6cdff        	j	0x4037b175
4037b23d:	a15de6        	l32r	a10, 0x40374bb4
4037b240:	7ccb      	movi.n	a11, -4
4037b242:	c02000        	memw
4037b245:	880a      	l32i.n	a8, a10, 0
4037b247:	b08810        	and	a8, a8, a11
4037b24a:	404820        	or	a4, a8, a4
4037b24d:	815ce6        	l32r	a8, 0x40374bc0
4037b250:	c02000        	memw
4037b253:	490a      	s32i.n	a4, a10, 0
4037b255:	c02000        	memw
4037b258:	4808      	l32i.n	a4, a8, 0
4037b25a:	a2ac00        	movi	a10, 0xfffffc00
4037b25d:	a04410        	and	a4, a4, a10
4037b260:	c02000        	memw
4037b263:	4908      	s32i.n	a4, a8, 0
4037b265:	c02000        	memw
4037b268:	4808      	l32i.n	a4, a8, 0
4037b26a:	a156e6        	l32r	a10, 0x40374bc4
4037b26d:	a04410        	and	a4, a4, a10
4037b270:	a2a400        	movi	a10, 0x400
4037b273:	a04420        	or	a4, a4, a10
4037b276:	c02000        	memw
4037b279:	4908      	s32i.n	a4, a8, 0
4037b27b:	4176e5        	l32r	a4, 0x40374854
4037b27e:	ad02      	mov.n	a10, a2
4037b280:	4909      	s32i.n	a4, a9, 0
4037b282:	8154e6        	l32r	a8, 0x40374bd4
4037b285:	e00800        	callx8	a8
4037b288:	4151e6        	l32r	a4, 0x40374bcc
4037b28b:	8151e6        	l32r	a8, 0x40374bd0
4037b28e:	c02000        	memw
4037b291:	2804      	l32i.n	a2, a4, 0
4037b293:	802210        	and	a2, a2, a8
4037b296:	303220        	or	a3, a2, a3
4037b299:	c02000        	memw
4037b29c:	3904      	s32i.n	a3, a4, 0
4037b29e:	c6e4ff        	j	0x4037b235
4037b2a1:	0c14      	movi.n	a4, 1
4037b2a3:	86b3ff        	j	0x4037b175
4037b2a6:	000000        	ill
4037b2a9:	3151e6        	l32r	a3, 0x40374bf0
4037b2ac:	d2a004        	movi	a13, 4
4037b2af:	f20300        	l8ui	a15, a3, 0
4037b2b2:	d0cd20        	or	a12, a13, a13
4037b2b5:	0c0e      	movi.n	a14, 0
4037b2b7:	b2a001        	movi	a11, 1
4037b2ba:	a2a06d        	movi	a10, 109
4037b2bd:	e506fe        	call8	0x4037932c
4037b2c0:	314de6        	l32r	a3, 0x40374bf4
4037b2c3:	0c0e      	movi.n	a14, 0
4037b2c5:	f20300        	l8ui	a15, a3, 0
4037b2c8:	0c4d      	movi.n	a13, 4
4037b2ca:	0c6c      	movi.n	a12, 6
4037b2cc:	0c1b      	movi.n	a11, 1
4037b2ce:	a2a06d        	movi	a10, 109
4037b2d1:	a505fe        	call8	0x4037932c
4037b2d4:	0c24      	movi.n	a4, 2
4037b2d6:	46b1ff        	j	0x4037b19f
4037b2d9:	000000        	ill
4037b2dc:	364100        	entry	a1, 32
4037b2df:	4138e6        	l32r	a4, 0x40374bc0
4037b2e2:	822200        	l32i	a8, a2, 0
4037b2e5:	c02000        	memw
4037b2e8:	322400        	l32i	a3, a4, 0
4037b2eb:	303a14        	extui	a3, a3, 10, 2
4037b2ee:	dcb8      	bnez.n	a8, 0x4037b30d
4037b2f0:	b822      	l32i.n	a11, a2, 8
4037b2f2:	a832      	l32i.n	a10, a2, 12
4037b2f4:	a5c8ff        	call8	0x4037af80
4037b2f7:	66130d        	bnei	a3, 1, 0x4037b308
4037b2fa:	213fe6        	l32r	a2, 0x40374bf8
4037b2fd:	c02000        	memw
4037b300:	2812      	l32i.n	a2, a2, 4
4037b302:	17e202        	bbsi	a2, 1, 0x4037b308
4037b305:	e58cff        	call8	0x4037abd4
4037b308:	1df0      	retw.n
4037b30a:	000000        	ill
4037b30d:	661828        	bnei	a8, 1, 0x4037b339
4037b310:	26131c        	beqi	a3, 1, 0x4037b330
4037b313:	4170e5        	l32r	a4, 0x403748d4
4037b316:	82aabf        	movi	a8, 0xfffffabf
4037b319:	c02000        	memw
4037b31c:	322400        	l32i	a3, a4, 0
4037b31f:	803310        	and	a3, a3, a8
4037b322:	c02000        	memw
4037b325:	326400        	s32i	a3, a4, 0
4037b328:	25cfff        	call8	0x4037b01c
4037b32b:	b812      	l32i.n	a11, a2, 4
4037b32d:	65b2ff        	call8	0x4037ae54
4037b330:	a832      	l32i.n	a10, a2, 12
4037b332:	a5e0ff        	call8	0x4037b13c
4037b335:	c6f3ff        	j	0x4037b308
4037b338:	00          	.byte	00
4037b339:	6628cb        	bnei	a8, 2, 0x4037b308
4037b33c:	0c8a      	movi.n	a10, 8
4037b33e:	8125e6        	l32r	a8, 0x40374bd4
4037b341:	e00800        	callx8	a8
4037b344:	211de6        	l32r	a2, 0x40374bb8
4037b347:	0c4d      	movi.n	a13, 4
4037b349:	f20200        	l8ui	a15, a2, 0
4037b34c:	cd0d      	mov.n	a12, a13
4037b34e:	0c0e      	movi.n	a14, 0
4037b350:	0c1b      	movi.n	a11, 1
4037b352:	a2a06d        	movi	a10, 109
4037b355:	65fdfd        	call8	0x4037932c
4037b358:	2119e6        	l32r	a2, 0x40374bbc
4037b35b:	0c0e      	movi.n	a14, 0
4037b35d:	f20200        	l8ui	a15, a2, 0
4037b360:	0c4d      	movi.n	a13, 4
4037b362:	0c6c      	movi.n	a12, 6
4037b364:	0c1b      	movi.n	a11, 1
4037b366:	a2a06d        	movi	a10, 109
4037b369:	25fcfd        	call8	0x4037932c
4037b36c:	2c8a      	movi.n	a10, 40
4037b36e:	819be4        	l32r	a8, 0x403745dc
4037b371:	e00800        	callx8	a8
4037b374:	c02000        	memw
4037b377:	2804      	l32i.n	a2, a4, 0
4037b379:	82ac00        	movi	a8, 0xfffffc00
4037b37c:	802210        	and	a2, a2, a8
4037b37f:	c02000        	memw
4037b382:	2904      	s32i.n	a2, a4, 0
4037b384:	c02000        	memw
4037b387:	8804      	l32i.n	a8, a4, 0
4037b389:	210ee6        	l32r	a2, 0x40374bc4
4037b38c:	208810        	and	a8, a8, a2
4037b38f:	2131e4        	l32r	a2, 0x40374454
4037b392:	208820        	or	a8, a8, a2
4037b395:	c02000        	memw
4037b398:	8904      	s32i.n	a8, a4, 0
4037b39a:	210be6        	l32r	a2, 0x40374bc8
4037b39d:	4117e6        	l32r	a4, 0x40374bfc
4037b3a0:	4902      	s32i.n	a4, a2, 0
4037b3a2:	210ae6        	l32r	a2, 0x40374bcc
4037b3a5:	410ae6        	l32r	a4, 0x40374bd0
4037b3a8:	c02000        	memw
4037b3ab:	8802      	l32i.n	a8, a2, 0
4037b3ad:	408810        	and	a8, a8, a4
4037b3b0:	415be5        	l32r	a4, 0x4037491c
4037b3b3:	408820        	or	a8, a8, a4
4037b3b6:	c02000        	memw
4037b3b9:	8902      	s32i.n	a8, a2, 0
4037b3bb:	06ceff        	j	0x4037b2f7
4037b3be:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037b3c1:	410088        	l32r	a4, 0x4035d3c4
4037b3c4:	02ad02        	movi	a0, 0xfffffd02
4037b3c7:	cc98      	bnez.n	a8, 0x4037b3d4
4037b3c9:	b822      	l32i.n	a11, a2, 8
4037b3cb:	a832      	l32i.n	a10, a2, 12
4037b3cd:	25bbff        	call8	0x4037af80
4037b3d0:	1df0      	retw.n
4037b3d2:	000066        	ee.ldf.64.xp	f0, f6, a0, a0
4037b3d5:	1814      	l32i.n	a1, a4, 4
4037b3d7:	81e3e5        	l32r	a8, 0x40374b64
4037b3da:	922201        	l32i	a9, a2, 4
4037b3dd:	822800        	l32i	a8, a8, 0
4037b3e0:	879908        	bne	a9, a8, 0x4037b3ec
4037b3e3:	a22203        	l32i	a10, a2, 12
4037b3e6:	65d5ff        	call8	0x4037b13c
4037b3e9:	c6f8ff        	j	0x4037b3d0
4037b3ec:	e5eeff        	call8	0x4037b2dc
4037b3ef:	46f7ff        	j	0x4037b3d0
4037b3f2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037b3f5:	410065        	l32r	a4, 0x403547f8
4037b3f8:	c2ffb2        	s32ri	a12, a15, 0x2c8
4037b3fb:	a00125        	extui	a0, a10, 17, 3
4037b3fe:	b8ff      	l32i.n	a11, a15, 60
4037b400:	81fee5        	l32r	a8, 0x40374bf8
4037b403:	c02000        	memw
4037b406:	8818      	l32i.n	a8, a8, 4
4037b408:	17e802        	bbsi	a8, 1, 0x4037b40e
4037b40b:	a57cff        	call8	0x4037abd4
4037b40e:	1df0      	retw.n
4037b410:	364100        	entry	a1, 32
4037b413:	81ede5        	l32r	a8, 0x40374bc8
4037b416:	2808      	l32i.n	a2, a8, 0
4037b418:	1df0      	retw.n
4037b41a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037b41d:	410091        	l32r	a4, 0x4035f820
4037b420:	dce5      	bnez.n	a5, 0x4037b442
4037b422:	a2a400        	movi	a10, 0x400
4037b425:	c02000        	memw
4037b428:	8809      	l32i.n	a8, a9, 0
4037b42a:	a08820        	or	a8, a8, a10
4037b42d:	c02000        	memw
4037b430:	8909      	s32i.n	a8, a9, 0
4037b432:	0c5a      	movi.n	a10, 5
4037b434:	816ae4        	l32r	a8, 0x403745dc
4037b437:	e00800        	callx8	a8
4037b43a:	1df0      	retw.n
4037b43c:	364100        	entry	a1, 32
4037b43f:	81f0e5        	l32r	a8, 0x40374c00
4037b442:	6cfe      	movi.n	a14, -17
4037b444:	c02000        	memw
4037b447:	4808      	l32i.n	a4, a8, 0
4037b449:	203004        	extui	a3, a2, 0, 1
4037b44c:	e04410        	and	a4, a4, a14
4037b44f:	c03311        	slli	a3, a3, 4
4037b452:	403320        	or	a3, a3, a4
4037b455:	c02000        	memw
4037b458:	3908      	s32i.n	a3, a8, 0
4037b45a:	31eae5        	l32r	a3, 0x40374c04
4037b45d:	20a104        	extui	a10, a2, 1, 1
4037b460:	c02000        	memw
4037b463:	8803      	l32i.n	a8, a3, 0
4037b465:	42aeff        	movi	a4, 0xfffffeff
4037b468:	408810        	and	a8, a8, a4
4037b46b:	804a11        	slli	a4, a10, 8
4037b46e:	408820        	or	a8, a8, a4
4037b471:	c02000        	memw
4037b474:	8903      	s32i.n	a8, a3, 0
4037b476:	c02000        	memw
4037b479:	4803      	l32i.n	a4, a3, 0
4037b47b:	81e3e5        	l32r	a8, 0x40374c08
4037b47e:	50aa11        	slli	a10, a10, 11
4037b481:	804410        	and	a4, a4, a8
4037b484:	a04420        	or	a4, a4, a10
4037b487:	a1e1e5        	l32r	a10, 0x40374c0c
4037b48a:	c02000        	memw
4037b48d:	4903      	s32i.n	a4, a3, 0
4037b48f:	c02000        	memw
4037b492:	380a      	l32i.n	a3, a10, 0
4037b494:	209604        	extui	a9, a2, 6, 1
4037b497:	c04911        	slli	a4, a9, 4
4037b49a:	e03310        	and	a3, a3, a14
4037b49d:	403320        	or	a3, a3, a4
4037b4a0:	c02000        	memw
4037b4a3:	390a      	s32i.n	a3, a10, 0
4037b4a5:	c02000        	memw
4037b4a8:	380a      	l32i.n	a3, a10, 0
4037b4aa:	7cb4      	movi.n	a4, -5
4037b4ac:	403310        	and	a3, a3, a4
4037b4af:	e04911        	slli	a4, a9, 2
4037b4b2:	403320        	or	a3, a3, a4
4037b4b5:	c02000        	memw
4037b4b8:	390a      	s32i.n	a3, a10, 0
4037b4ba:	c02000        	memw
4037b4bd:	380a      	l32i.n	a3, a10, 0
4037b4bf:	7ce4      	movi.n	a4, -2
4037b4c1:	403310        	and	a3, a3, a4
4037b4c4:	903320        	or	a3, a3, a9
4037b4c7:	c02000        	memw
4037b4ca:	390a      	s32i.n	a3, a10, 0
4037b4cc:	a1d1e5        	l32r	a10, 0x40374c10
4037b4cf:	20d404        	extui	a13, a2, 4, 1
4037b4d2:	c02000        	memw
4037b4d5:	380a      	l32i.n	a3, a10, 0
4037b4d7:	7c74      	movi.n	a4, -9
4037b4d9:	d08d11        	slli	a8, a13, 3
4037b4dc:	403310        	and	a3, a3, a4
4037b4df:	803320        	or	a3, a3, a8
4037b4e2:	c02000        	memw
4037b4e5:	390a      	s32i.n	a3, a10, 0
4037b4e7:	c02000        	memw
4037b4ea:	880a      	l32i.n	a8, a10, 0
4037b4ec:	7cd3      	movi.n	a3, -3
4037b4ee:	308810        	and	a8, a8, a3
4037b4f1:	f0dd11        	slli	a13, a13, 1
4037b4f4:	d08820        	or	a8, a8, a13
4037b4f7:	c02000        	memw
4037b4fa:	890a      	s32i.n	a8, a10, 0
4037b4fc:	a1c6e5        	l32r	a10, 0x40374c14
4037b4ff:	20c504        	extui	a12, a2, 5, 1
4037b502:	c02000        	memw
4037b505:	f80a      	l32i.n	a15, a10, 0
4037b507:	e2afdf        	movi	a14, -33
4037b50a:	b08c11        	slli	a8, a12, 5
4037b50d:	e0ff10        	and	a15, a15, a14
4037b510:	80ff20        	or	a15, a15, a8
4037b513:	c02000        	memw
4037b516:	f90a      	s32i.n	a15, a10, 0
4037b518:	c02000        	memw
4037b51b:	d80a      	l32i.n	a13, a10, 0
4037b51d:	20b074        	extui	a11, a2, 0, 8
4037b520:	40dd10        	and	a13, a13, a4
4037b523:	d04c11        	slli	a4, a12, 3
4037b526:	40dd20        	or	a13, a13, a4
4037b529:	c02000        	memw
4037b52c:	d90a      	s32i.n	a13, a10, 0
4037b52e:	c02000        	memw
4037b531:	880a      	l32i.n	a8, a10, 0
4037b533:	f0cc11        	slli	a12, a12, 1
4037b536:	308810        	and	a8, a8, a3
4037b539:	c08820        	or	a8, a8, a12
4037b53c:	31b7e5        	l32r	a3, 0x40374c18
4037b53f:	c02000        	memw
4037b542:	890a      	s32i.n	a8, a10, 0
4037b544:	c02000        	memw
4037b547:	a803      	l32i.n	a10, a3, 0
4037b549:	b04911        	slli	a4, a9, 5
4037b54c:	e0aa10        	and	a10, a10, a14
4037b54f:	40aa20        	or	a10, a10, a4
4037b552:	c02000        	memw
4037b555:	a903      	s32i.n	a10, a3, 0
4037b557:	31b1e5        	l32r	a3, 0x40374c1c
4037b55a:	42abff        	movi	a4, 0xfffffbff
4037b55d:	c02000        	memw
4037b560:	a803      	l32i.n	a10, a3, 0
4037b562:	609911        	slli	a9, a9, 10
4037b565:	40aa10        	and	a10, a10, a4
4037b568:	909a20        	or	a9, a10, a9
4037b56b:	c02000        	memw
4037b56e:	9903      	s32i.n	a9, a3, 0
4037b570:	82af8d        	movi	a8, -115
4037b573:	32a072        	movi	a3, 114
4037b576:	808210        	and	a8, a2, a8
4037b579:	30bb10        	and	a11, a11, a3
4037b57c:	b08820        	or	a8, a8, a11
4037b57f:	32af00        	movi	a3, 0xffffff00
4037b582:	302210        	and	a2, a2, a3
4037b585:	808074        	extui	a8, a8, 0, 8
4037b588:	42a080        	movi	a4, 128
4037b58b:	802220        	or	a2, a2, a8
4037b58e:	31a4e5        	l32r	a3, 0x40374c20
4037b591:	470827        	bnone	a8, a4, 0x4037b5bc
4037b594:	c02000        	memw
4037b597:	4803      	l32i.n	a4, a3, 0
4037b599:	81a2e5        	l32r	a8, 0x40374c24
4037b59c:	804420        	or	a4, a4, a8
4037b59f:	c02000        	memw
4037b5a2:	4903      	s32i.n	a4, a3, 0
4037b5a4:	319fe5        	l32r	a3, 0x40374c20
4037b5a7:	876221        	bbci	a2, 8, 0x4037b5cc
4037b5aa:	c02000        	memw
4037b5ad:	2803      	l32i.n	a2, a3, 0
4037b5af:	0c74      	movi.n	a4, 7
4037b5b1:	402220        	or	a2, a2, a4
4037b5b4:	c02000        	memw
4037b5b7:	2903      	s32i.n	a2, a3, 0
4037b5b9:	1df0      	retw.n
4037b5bb:	00c020        	or	a12, a0, a0
4037b5be:	004803        	rsr.windowbase	a0
4037b5c1:	8199e5        	l32r	a8, 0x40374c28
4037b5c4:	804410        	and	a4, a4, a8
4037b5c7:	06f5ff        	j	0x4037b59f
4037b5ca:	0000c0        	sub	a0, a0, a0
4037b5cd:	20          	.byte	0x20
4037b5ce:	00          	.byte	00
4037b5cf:	2803      	l32i.n	a2, a3, 0
4037b5d1:	7c84      	movi.n	a4, -8
4037b5d3:	402210        	and	a2, a2, a4
4037b5d6:	86f6ff        	j	0x4037b5b4
4037b5d9:	000000        	ill
4037b5dc:	364100        	entry	a1, 32
4037b5df:	208404        	extui	a8, a2, 4, 1
4037b5e2:	20c304        	extui	a12, a2, 3, 1
4037b5e5:	e0cc11        	slli	a12, a12, 2
4037b5e8:	f08811        	slli	a8, a8, 1
4037b5eb:	20b204        	extui	a11, a2, 2, 1
4037b5ee:	d0bb11        	slli	a11, a11, 3
4037b5f1:	c08820        	or	a8, a8, a12
4037b5f4:	20c104        	extui	a12, a2, 1, 1
4037b5f7:	c0cc11        	slli	a12, a12, 4
4037b5fa:	b08820        	or	a8, a8, a11
4037b5fd:	20b604        	extui	a11, a2, 6, 1
4037b600:	b0bb11        	slli	a11, a11, 5
4037b603:	c08820        	or	a8, a8, a12
4037b606:	20c704        	extui	a12, a2, 7, 1
4037b609:	a0cc11        	slli	a12, a12, 6
4037b60c:	b08820        	or	a8, a8, a11
4037b60f:	20b804        	extui	a11, a2, 8, 1
4037b612:	90bb11        	slli	a11, a11, 7
4037b615:	c08820        	or	a8, a8, a12
4037b618:	a18fe3        	l32r	a10, 0x40374454
4037b61b:	20ca04        	extui	a12, a2, 10, 1
4037b61e:	80cc11        	slli	a12, a12, 8
4037b621:	b08820        	or	a8, a8, a11
4037b624:	20b904        	extui	a11, a2, 9, 1
4037b627:	70bb11        	slli	a11, a11, 9
4037b62a:	c08820        	or	a8, a8, a12
4037b62d:	a09210        	and	a9, a2, a10
4037b630:	f2a000        	movi	a15, 0
4037b633:	c2a001        	movi	a12, 1
4037b636:	b08820        	or	a8, a8, a11
4037b639:	90cf93        	movnez	a12, a15, a9
4037b63c:	20b504        	extui	a11, a2, 5, 1
4037b63f:	d0cc11        	slli	a12, a12, 3
4037b642:	20d004        	extui	a13, a2, 0, 1
4037b645:	e0bb11        	slli	a11, a11, 2
4037b648:	c0bb20        	or	a11, a11, a12
4037b64b:	60ed11        	slli	a14, a13, 10
4037b64e:	c177e5        	l32r	a12, 0x40374c2c
4037b651:	e08820        	or	a8, a8, a14
4037b654:	c08820        	or	a8, a8, a12
4037b657:	c2a060        	movi	a12, 96
4037b65a:	b26301        	s32i	a11, a3, 4
4037b65d:	c0bb20        	or	a11, a11, a12
4037b660:	8903      	s32i.n	a8, a3, 0
4037b662:	b24304        	s8i	a11, a3, 4
4037b665:	f71d6d        	beq	a13, a15, 0x4037b6d6
4037b668:	f7990d        	bne	a9, a15, 0x4037b679
4037b66b:	d171e5        	l32r	a13, 0x40374c30
4037b66e:	c171e5        	l32r	a12, 0x40374c34
4037b671:	a171e5        	l32r	a10, 0x40374c38
4037b674:	5c0b      	movi.n	a11, 80
4037b676:	a52e07        	call8	0x40382960
4037b679:	9813      	l32i.n	a9, a3, 4
4037b67b:	177235        	bbci	a2, 17, 0x4037b6b4
4037b67e:	1c08      	movi.n	a8, 16
4037b680:	809920        	or	a9, a9, a8
4037b683:	9913      	s32i.n	a9, a3, 4
4037b685:	0c18      	movi.n	a8, 1
4037b687:	202105        	extui	a2, a2, 17, 1
4037b68a:	802230        	xor	a2, a2, a8
4037b68d:	8813      	l32i.n	a8, a3, 4
4037b68f:	7ce9      	movi.n	a9, -2
4037b691:	908810        	and	a8, a8, a9
4037b694:	202820        	or	a2, a8, a2
4037b697:	820303        	l8ui	a8, a3, 3
4037b69a:	92a07b        	movi	a9, 123
4037b69d:	908810        	and	a8, a8, a9
4037b6a0:	92af84        	movi	a9, -124
4037b6a3:	908820        	or	a8, a8, a9
4037b6a6:	824303        	s8i	a8, a3, 3
4037b6a9:	0c28      	movi.n	a8, 2
4037b6ab:	802220        	or	a2, a2, a8
4037b6ae:	2913      	s32i.n	a2, a3, 4
4037b6b0:	461100        	j	0x4037b6f9
4037b6b3:	002772        	salt	a2, a7, a0
4037b6b6:	181c      	l32i.n	a1, a12, 4
4037b6b8:	0aa0      	add.n	a10, a0, a0
4037b6ba:	9920      	s32i.n	a9, a0, 8
4037b6bc:	9913      	s32i.n	a9, a3, 4
4037b6be:	915fe5        	l32r	a9, 0x40374c3c
4037b6c1:	908810        	and	a8, a8, a9
4037b6c4:	9184e3        	l32r	a9, 0x403744d4
4037b6c7:	908820        	or	a8, a8, a9
4037b6ca:	8903      	s32i.n	a8, a3, 0
4037b6cc:	46edff        	j	0x4037b685
4037b6cf:	00          	.byte	00
4037b6d0:	915ce5        	l32r	a9, 0x40374c40
4037b6d3:	06fcff        	j	0x4037b6c7
4037b6d6:	b813      	l32i.n	a11, a3, 4
4037b6d8:	1c0c      	movi.n	a12, 16
4037b6da:	c0bb20        	or	a11, a11, a12
4037b6dd:	b913      	s32i.n	a11, a3, 4
4037b6df:	b159e5        	l32r	a11, 0x40374c44
4037b6e2:	b0b210        	and	a11, a2, a11
4037b6e5:	a71b13        	beq	a11, a10, 0x4037b6fc
4037b6e8:	a158e5        	l32r	a10, 0x40374c48
4037b6eb:	a08810        	and	a8, a8, a10
4037b6ee:	a157e5        	l32r	a10, 0x40374c4c
4037b6f1:	a08820        	or	a8, a8, a10
4037b6f4:	8903      	s32i.n	a8, a3, 0
4037b6f6:	56b9f8        	bnez	a9, 0x4037b685
4037b6f9:	1df0      	retw.n
4037b6fb:	00a155        	extui	a10, a0, 17, 6
4037b6fe:	e5a088        	call8	0x4030410c
4037b701:	10a154        	extui	a10, a1, 1, 6
4037b704:	e506fa        	call8	0x40375774
4037b707:	ff366100 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 96, q4, q6, q6, q1
4037b70b:	326103        	s32i	a3, a1, 12
4037b70e:	226102        	s32i	a2, a1, 8
4037b711:	303304        	extui	a3, a3, 3, 1
4037b714:	076207        	bbci	a2, 0, 0x4037b71f
4037b717:	8150e5        	l32r	a8, 0x40374c58
4037b71a:	a808      	l32i.n	a10, a8, 0
4037b71c:	e5d1ff        	call8	0x4037b43c
4037b71f:	8138e5        	l32r	a8, 0x40374c00
4037b722:	1c0a      	movi.n	a10, 16
4037b724:	c02000        	memw
4037b727:	9808      	l32i.n	a9, a8, 0
4037b729:	a09920        	or	a9, a9, a10
4037b72c:	c02000        	memw
4037b72f:	9908      	s32i.n	a9, a8, 0
4037b731:	57e202        	bbsi	a2, 5, 0x4037b737
4037b734:	064c00        	j	0x4037b868
4037b737:	a1a7e4        	l32r	a10, 0x403749d4
4037b73a:	b148e5        	l32r	a11, 0x40374c5c
4037b73d:	c02000        	memw
4037b740:	980a      	l32i.n	a9, a10, 0
4037b742:	b09910        	and	a9, a9, a11
4037b745:	c02000        	memw
4037b748:	990a      	s32i.n	a9, a10, 0
4037b74a:	c02000        	memw
4037b74d:	9808      	l32i.n	a9, a8, 0
4037b74f:	a144e5        	l32r	a10, 0x40374c60
4037b752:	a09910        	and	a9, a9, a10
4037b755:	c02000        	memw
4037b758:	9908      	s32i.n	a9, a8, 0
4037b75a:	c02000        	memw
4037b75d:	9808      	l32i.n	a9, a8, 0
4037b75f:	a132e3        	l32r	a10, 0x40374428
4037b762:	a09920        	or	a9, a9, a10
4037b765:	c02000        	memw
4037b768:	9908      	s32i.n	a9, a8, 0
4037b76a:	8125e5        	l32r	a8, 0x40374c00
4037b76d:	67e202        	bbsi	a2, 6, 0x4037b773
4037b770:	064100        	j	0x4037b878
4037b773:	a198e4        	l32r	a10, 0x403749d4
4037b776:	b13be5        	l32r	a11, 0x40374c64
4037b779:	c02000        	memw
4037b77c:	980a      	l32i.n	a9, a10, 0
4037b77e:	b09910        	and	a9, a9, a11
4037b781:	c02000        	memw
4037b784:	990a      	s32i.n	a9, a10, 0
4037b786:	c02000        	memw
4037b789:	9808      	l32i.n	a9, a8, 0
4037b78b:	a137e5        	l32r	a10, 0x40374c68
4037b78e:	a09910        	and	a9, a9, a10
4037b791:	c02000        	memw
4037b794:	9908      	s32i.n	a9, a8, 0
4037b796:	c02000        	memw
4037b799:	9808      	l32i.n	a9, a8, 0
4037b79b:	a134e5        	l32r	a10, 0x40374c6c
4037b79e:	a09920        	or	a9, a9, a10
4037b7a1:	c02000        	memw
4037b7a4:	9908      	s32i.n	a9, a8, 0
4037b7a6:	8116e5        	l32r	a8, 0x40374c00
4037b7a9:	77e202        	bbsi	a2, 7, 0x4037b7af
4037b7ac:	063600        	j	0x4037b888
4037b7af:	a189e4        	l32r	a10, 0x403749d4
4037b7b2:	b12fe5        	l32r	a11, 0x40374c70
4037b7b5:	c02000        	memw
4037b7b8:	980a      	l32i.n	a9, a10, 0
4037b7ba:	b09910        	and	a9, a9, a11
4037b7bd:	c02000        	memw
4037b7c0:	990a      	s32i.n	a9, a10, 0
4037b7c2:	c02000        	memw
4037b7c5:	9808      	l32i.n	a9, a8, 0
4037b7c7:	a12be5        	l32r	a10, 0x40374c74
4037b7ca:	a09910        	and	a9, a9, a10
4037b7cd:	c02000        	memw
4037b7d0:	9908      	s32i.n	a9, a8, 0
4037b7d2:	c02000        	memw
4037b7d5:	9808      	l32i.n	a9, a8, 0
4037b7d7:	a1f5e4        	l32r	a10, 0x40374bac
4037b7da:	a09920        	or	a9, a9, a10
4037b7dd:	c02000        	memw
4037b7e0:	9908      	s32i.n	a9, a8, 0
4037b7e2:	8107e5        	l32r	a8, 0x40374c00
4037b7e5:	97e202        	bbsi	a2, 9, 0x4037b7eb
4037b7e8:	862a00        	j	0x4037b896
4037b7eb:	a17ae4        	l32r	a10, 0x403749d4
4037b7ee:	b122e5        	l32r	a11, 0x40374c78
4037b7f1:	c02000        	memw
4037b7f4:	980a      	l32i.n	a9, a10, 0
4037b7f6:	b09910        	and	a9, a9, a11
4037b7f9:	c02000        	memw
4037b7fc:	990a      	s32i.n	a9, a10, 0
4037b7fe:	c02000        	memw
4037b801:	9808      	l32i.n	a9, a8, 0
4037b803:	a17de4        	l32r	a10, 0x403749f8
4037b806:	a09910        	and	a9, a9, a10
4037b809:	c02000        	memw
4037b80c:	9908      	s32i.n	a9, a8, 0
4037b80e:	c02000        	memw
4037b811:	9808      	l32i.n	a9, a8, 0
4037b813:	a1c8e4        	l32r	a10, 0x40374b34
4037b816:	a09920        	or	a9, a9, a10
4037b819:	c02000        	memw
4037b81c:	9908      	s32i.n	a9, a8, 0
4037b81e:	81f9e4        	l32r	a8, 0x40374c04
4037b821:	c02000        	memw
4037b824:	9808      	l32i.n	a9, a8, 0
4037b826:	47627a        	bbci	a2, 4, 0x4037b8a4
4037b829:	a114e5        	l32r	a10, 0x40374c7c
4037b82c:	a09910        	and	a9, a9, a10
4037b82f:	c02000        	memw
4037b832:	9908      	s32i.n	a9, a8, 0
4037b834:	c02000        	memw
4037b837:	9808      	l32i.n	a9, a8, 0
4037b839:	a14de4        	l32r	a10, 0x40374970
4037b83c:	a09920        	or	a9, a9, a10
4037b83f:	c02000        	memw
4037b842:	9908      	s32i.n	a9, a8, 0
4037b844:	9831      	l32i.n	a9, a1, 12
4037b846:	7c7a      	movi.n	a10, -9
4037b848:	d08311        	slli	a8, a3, 3
4037b84b:	a09910        	and	a9, a9, a10
4037b84e:	808920        	or	a8, a9, a8
4037b851:	8931      	s32i.n	a8, a1, 12
4037b853:	076856        	bbci	a8, 0, 0x4037b8ad
4037b856:	a7f253        	bbsi	a2, 26, 0x4037b8ad
4037b859:	d10ae5        	l32r	a13, 0x40374c84
4037b85c:	c10be5        	l32r	a12, 0x40374c88
4037b85f:	b2a0c6        	movi	a11, 198
4037b862:	a1f5e4        	l32r	a10, 0x40374c38
4037b865:	a50f07        	call8	0x40382960
4037b868:	c02000        	memw
4037b86b:	9808      	l32i.n	a9, a8, 0
4037b86d:	a11be3        	l32r	a10, 0x403744dc
4037b870:	a09910        	and	a9, a9, a10
4037b873:	86bbff        	j	0x4037b765
4037b876:	0000c0        	sub	a0, a0, a0
4037b879:	20          	.byte	0x20
4037b87a:	009808        	lsx	f9, a8, a0
4037b87d:	a11be3        	l32r	a10, 0x403744ec
4037b880:	a09910        	and	a9, a9, a10
4037b883:	86c6ff        	j	0x4037b7a1
4037b886:	0000c0        	sub	a0, a0, a0
4037b889:	20          	.byte	0x20
4037b88a:	009808        	lsx	f9, a8, a0
4037b88d:	a116e3        	l32r	a10, 0x403744e8
4037b890:	a09910        	and	a9, a9, a10
4037b893:	86d1ff        	j	0x4037b7dd
4037b896:	c02000        	memw
4037b899:	9808      	l32i.n	a9, a8, 0
4037b89b:	a115e3        	l32r	a10, 0x403744f0
4037b89e:	a09910        	and	a9, a9, a10
4037b8a1:	06ddff        	j	0x4037b819
4037b8a4:	a1f7e4        	l32r	a10, 0x40374c80
4037b8a7:	a09910        	and	a9, a9, a10
4037b8aa:	46e4ff        	j	0x4037b83f
4037b8ad:	17680f        	bbci	a8, 1, 0x4037b8c0
4037b8b0:	96c200        	bltz	a2, 0x4037b8c0
4037b8b3:	d1f6e4        	l32r	a13, 0x40374c8c
4037b8b6:	c1f4e4        	l32r	a12, 0x40374c88
4037b8b9:	b2a0c7        	movi	a11, 199
4037b8bc:	86e8ff        	j	0x4037b862
4037b8bf:	00f221        	srai	a15, a0, 2
4037b8c2:	02e2a0        	s32c1i	a0, a2, 0x280
4037b8c5:	00          	.byte	00
4037b8c6:	f0f145        	extui	a15, a15, 17, 5
4037b8c9:	0c4d      	movi.n	a13, 4
4037b8cb:	0c5c      	movi.n	a12, 5
4037b8cd:	0c1b      	movi.n	a11, 1
4037b8cf:	a2a06d        	movi	a10, 109
4037b8d2:	a5a5fd        	call8	0x4037932c
4037b8d5:	f821      	l32i.n	a15, a1, 8
4037b8d7:	0c1b      	movi.n	a11, 1
4037b8d9:	a2a06d        	movi	a10, 109
4037b8dc:	f0fc44        	extui	a15, a15, 12, 5
4037b8df:	0c0e      	movi.n	a14, 0
4037b8e1:	0c4d      	movi.n	a13, 4
4037b8e3:	0c7c      	movi.n	a12, 7
4037b8e5:	65a4fd        	call8	0x4037932c
4037b8e8:	81eae4        	l32r	a8, 0x40374c90
4037b8eb:	9821      	l32i.n	a9, a1, 8
4037b8ed:	c02000        	memw
4037b8f0:	a808      	l32i.n	a10, a8, 0
4037b8f2:	b1e8e4        	l32r	a11, 0x40374c94
4037b8f5:	909635        	extui	a9, a9, 22, 4
4037b8f8:	b0aa10        	and	a10, a10, a11
4037b8fb:	a09901        	slli	a9, a9, 22
4037b8fe:	a09920        	or	a9, a9, a10
4037b901:	c02000        	memw
4037b904:	9908      	s32i.n	a9, a8, 0
4037b906:	9821      	l32i.n	a9, a1, 8
4037b908:	c02000        	memw
4037b90b:	a808      	l32i.n	a10, a8, 0
4037b90d:	b1e2e4        	l32r	a11, 0x40374c98
4037b910:	909a05        	extui	a9, a9, 26, 1
4037b913:	b0aa10        	and	a10, a10, a11
4037b916:	f09901        	slli	a9, a9, 17
4037b919:	a09920        	or	a9, a9, a10
4037b91c:	c02000        	memw
4037b91f:	9908      	s32i.n	a9, a8, 0
4037b921:	9821      	l32i.n	a9, a1, 8
4037b923:	c02000        	memw
4037b926:	a808      	l32i.n	a10, a8, 0
4037b928:	b1dde4        	l32r	a11, 0x40374c9c
4037b92b:	909b35        	extui	a9, a9, 27, 4
4037b92e:	b0aa10        	and	a10, a10, a11
4037b931:	e09901        	slli	a9, a9, 18
4037b934:	a09920        	or	a9, a9, a10
4037b937:	c02000        	memw
4037b93a:	9908      	s32i.n	a9, a8, 0
4037b93c:	9821      	l32i.n	a9, a1, 8
4037b93e:	c02000        	memw
4037b941:	a808      	l32i.n	a10, a8, 0
4037b943:	b192e4        	l32r	a11, 0x40374b8c
4037b946:	909f05        	extui	a9, a9, 31, 1
4037b949:	b0aa10        	and	a10, a10, a11
4037b94c:	009911        	slli	a9, a9, 16
4037b94f:	a09920        	or	a9, a9, a10
4037b952:	c02000        	memw
4037b955:	9908      	s32i.n	a9, a8, 0
4037b957:	9831      	l32i.n	a9, a1, 12
4037b959:	c02000        	memw
4037b95c:	a808      	l32i.n	a10, a8, 0
4037b95e:	b1fee3        	l32r	a11, 0x40374958
4037b961:	909004        	extui	a9, a9, 0, 1
4037b964:	b0aa10        	and	a10, a10, a11
4037b967:	109911        	slli	a9, a9, 15
4037b96a:	a09920        	or	a9, a9, a10
4037b96d:	c02000        	memw
4037b970:	9908      	s32i.n	a9, a8, 0
4037b972:	9831      	l32i.n	a9, a1, 12
4037b974:	c02000        	memw
4037b977:	a808      	l32i.n	a10, a8, 0
4037b979:	b11fe4        	l32r	a11, 0x403749f8
4037b97c:	909104        	extui	a9, a9, 1, 1
4037b97f:	209911        	slli	a9, a9, 14
4037b982:	b0aa10        	and	a10, a10, a11
4037b985:	a09920        	or	a9, a9, a10
4037b988:	c02000        	memw
4037b98b:	9908      	s32i.n	a9, a8, 0
4037b98d:	a7e202        	bbsi	a2, 10, 0x4037b993
4037b990:	064900        	j	0x4037bab8
4037b993:	919be4        	l32r	a9, 0x40374c00
4037b996:	a1cde2        	l32r	a10, 0x403744cc
4037b999:	c02000        	memw
4037b99c:	8809      	l32i.n	a8, a9, 0
4037b99e:	a08820        	or	a8, a8, a10
4037b9a1:	c02000        	memw
4037b9a4:	8909      	s32i.n	a8, a9, 0
4037b9a6:	91bee4        	l32r	a9, 0x40374ca0
4037b9a9:	a1bee4        	l32r	a10, 0x40374ca4
4037b9ac:	c02000        	memw
4037b9af:	8809      	l32i.n	a8, a9, 0
4037b9b1:	a08810        	and	a8, a8, a10
4037b9b4:	c02000        	memw
4037b9b7:	8909      	s32i.n	a8, a9, 0
4037b9b9:	9191e4        	l32r	a9, 0x40374c00
4037b9bc:	6cfa      	movi.n	a10, -17
4037b9be:	c02000        	memw
4037b9c1:	8809      	l32i.n	a8, a9, 0
4037b9c3:	b1e3e3        	l32r	a11, 0x40374950
4037b9c6:	a08810        	and	a8, a8, a10
4037b9c9:	a1b9e4        	l32r	a10, 0x40374cb0
4037b9cc:	c02000        	memw
4037b9cf:	8909      	s32i.n	a8, a9, 0
4037b9d1:	8831      	l32i.n	a8, a1, 12
4037b9d3:	c02000        	memw
4037b9d6:	980a      	l32i.n	a9, a10, 0
4037b9d8:	808404        	extui	a8, a8, 4, 1
4037b9db:	108801        	slli	a8, a8, 31
4037b9de:	b09910        	and	a9, a9, a11
4037b9e1:	908820        	or	a8, a8, a9
4037b9e4:	c02000        	memw
4037b9e7:	890a      	s32i.n	a8, a10, 0
4037b9e9:	8169e4        	l32r	a8, 0x40374b90
4037b9ec:	876202        	bbci	a2, 8, 0x4037b9f2
4037b9ef:	463b00        	j	0x4037bae0
4037b9f2:	c02000        	memw
4037b9f5:	2808      	l32i.n	a2, a8, 0
4037b9f7:	9169e4        	l32r	a9, 0x40374b9c
4037b9fa:	902220        	or	a2, a2, a9
4037b9fd:	c02000        	memw
4037ba00:	2908      	s32i.n	a2, a8, 0
4037ba02:	81ace4        	l32r	a8, 0x40374cb4
4037ba05:	919be4        	l32r	a9, 0x40374c74
4037ba08:	c02000        	memw
4037ba0b:	2808      	l32i.n	a2, a8, 0
4037ba0d:	a1aae4        	l32r	a10, 0x40374cb8
4037ba10:	902210        	and	a2, a2, a9
4037ba13:	c02000        	memw
4037ba16:	2908      	s32i.n	a2, a8, 0
4037ba18:	2831      	l32i.n	a2, a1, 12
4037ba1a:	c02000        	memw
4037ba1d:	9808      	l32i.n	a9, a8, 0
4037ba1f:	202204        	extui	a2, a2, 2, 1
4037ba22:	a09910        	and	a9, a9, a10
4037ba25:	b02201        	slli	a2, a2, 21
4037ba28:	902220        	or	a2, a2, a9
4037ba2b:	c02000        	memw
4037ba2e:	2908      	s32i.n	a2, a8, 0
4037ba30:	81a3e4        	l32r	a8, 0x40374cbc
4037ba33:	2831      	l32i.n	a2, a1, 12
4037ba35:	c02000        	memw
4037ba38:	9808      	l32i.n	a9, a8, 0
4037ba3a:	a1c5e3        	l32r	a10, 0x40374950
4037ba3d:	202504        	extui	a2, a2, 5, 1
4037ba40:	a09910        	and	a9, a9, a10
4037ba43:	102201        	slli	a2, a2, 31
4037ba46:	902220        	or	a2, a2, a9
4037ba49:	c02000        	memw
4037ba4c:	2908      	s32i.n	a2, a8, 0
4037ba4e:	2831      	l32i.n	a2, a1, 12
4037ba50:	c02000        	memw
4037ba53:	9808      	l32i.n	a9, a8, 0
4037ba55:	a1a1e2        	l32r	a10, 0x403744dc
4037ba58:	202604        	extui	a2, a2, 6, 1
4037ba5b:	a09910        	and	a9, a9, a10
4037ba5e:	202201        	slli	a2, a2, 30
4037ba61:	902220        	or	a2, a2, a9
4037ba64:	c02000        	memw
4037ba67:	2908      	s32i.n	a2, a8, 0
4037ba69:	8195e4        	l32r	a8, 0x40374cc0
4037ba6c:	9196e4        	l32r	a9, 0x40374cc4
4037ba6f:	c02000        	memw
4037ba72:	2808      	l32i.n	a2, a8, 0
4037ba74:	902210        	and	a2, a2, a9
4037ba77:	9194e4        	l32r	a9, 0x40374cc8
4037ba7a:	902220        	or	a2, a2, a9
4037ba7d:	c02000        	memw
4037ba80:	2908      	s32i.n	a2, a8, 0
4037ba82:	8194e3        	l32r	a8, 0x403748d4
4037ba85:	91b5e3        	l32r	a9, 0x4037495c
4037ba88:	c02000        	memw
4037ba8b:	2808      	l32i.n	a2, a8, 0
4037ba8d:	902210        	and	a2, a2, a9
4037ba90:	309311        	slli	a9, a3, 13
4037ba93:	902220        	or	a2, a2, a9
4037ba96:	c02000        	memw
4037ba99:	2908      	s32i.n	a2, a8, 0
4037ba9b:	813de4        	l32r	a8, 0x40374b90
4037ba9e:	9194e2        	l32r	a9, 0x403744f0
4037baa1:	c02000        	memw
4037baa4:	2808      	l32i.n	a2, a8, 0
4037baa6:	403301        	slli	a3, a3, 28
4037baa9:	902210        	and	a2, a2, a9
4037baac:	302220        	or	a2, a2, a3
4037baaf:	c02000        	memw
4037bab2:	2908      	s32i.n	a2, a8, 0
4037bab4:	1df0      	retw.n
4037bab6:	000091        	srl	a0, a0
4037bab9:	7ce4      	movi.n	a4, -2
4037babb:	a16ae3        	l32r	a10, 0x40374864
4037babe:	c02000        	memw
4037bac1:	8809      	l32i.n	a8, a9, 0
4037bac3:	a08810        	and	a8, a8, a10
4037bac6:	a179e4        	l32r	a10, 0x40374cac
4037bac9:	a08820        	or	a8, a8, a10
4037bacc:	c02000        	memw
4037bacf:	8909      	s32i.n	a8, a9, 0
4037bad1:	914be4        	l32r	a9, 0x40374c00
4037bad4:	a19fe3        	l32r	a10, 0x40374950
4037bad7:	c02000        	memw
4037bada:	8809      	l32i.n	a8, a9, 0
4037badc:	46b4ff        	j	0x4037b9b1
4037badf:	00c020        	or	a12, a0, a0
4037bae2:	002808        	lsx	f2, a8, a0
4037bae5:	912ee4        	l32r	a9, 0x40374ba0
4037bae8:	902210        	and	a2, a2, a9
4037baeb:	86c3ff        	j	0x4037b9fd
4037baee:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037baf1:	410031        	l32r	a4, 0x40347ef4
4037baf4:	28e4      	l32i.n	a2, a4, 56
4037baf6:	419be2        	l32r	a4, 0x40374564
4037baf9:	c02000        	memw
4037bafc:	8803      	l32i.n	a8, a3, 0
4037bafe:	a173e4        	l32r	a10, 0x40374ccc
4037bb01:	408810        	and	a8, a8, a4
4037bb04:	41a4e2        	l32r	a4, 0x40374594
4037bb07:	b1a6e2        	l32r	a11, 0x403745a0
4037bb0a:	408820        	or	a8, a8, a4
4037bb0d:	c02000        	memw
4037bb10:	8903      	s32i.n	a8, a3, 0
4037bb12:	cd02      	mov.n	a12, a2
4037bb14:	c02000        	memw
4037bb17:	4803      	l32i.n	a4, a3, 0
4037bb19:	253800        	call8	0x4037be9c
4037bb1c:	816de4        	l32r	a8, 0x40374cd0
4037bb1f:	20aa11        	slli	a10, a10, 14
4037bb22:	80aa10        	and	a10, a10, a8
4037bb25:	816be4        	l32r	a8, 0x40374cd4
4037bb28:	804410        	and	a4, a4, a8
4037bb2b:	40aa20        	or	a10, a10, a4
4037bb2e:	c02000        	memw
4037bb31:	a903      	s32i.n	a10, a3, 0
4037bb33:	c02000        	memw
4037bb36:	8803      	l32i.n	a8, a3, 0
4037bb38:	4118e4        	l32r	a4, 0x40374b98
4037bb3b:	408810        	and	a8, a8, a4
4037bb3e:	42a100        	movi	a4, 0x100
4037bb41:	408820        	or	a8, a8, a4
4037bb44:	c02000        	memw
4037bb47:	8903      	s32i.n	a8, a3, 0
4037bb49:	1df0      	retw.n
4037bb4b:	003641        	srli	a3, a0, 6
4037bb4e:	009162        	saltu	a9, a1, a0
4037bb51:	e4          	.byte	0xe4
4037bb52:	102211        	slli	a2, a2, 15
4037bb55:	c02000        	memw
4037bb58:	8809      	l32i.n	a8, a9, 0
4037bb5a:	403311        	slli	a3, a3, 12
4037bb5d:	8080e4        	extui	a8, a8, 0, 15
4037bb60:	208820        	or	a8, a8, a2
4037bb63:	c02000        	memw
4037bb66:	8909      	s32i.n	a8, a9, 0
4037bb68:	8155e4        	l32r	a8, 0x40374cbc
4037bb6b:	915ce4        	l32r	a9, 0x40374cdc
4037bb6e:	c02000        	memw
4037bb71:	2808      	l32i.n	a2, a8, 0
4037bb73:	903310        	and	a3, a3, a9
4037bb76:	915ae4        	l32r	a9, 0x40374ce0
4037bb79:	902210        	and	a2, a2, a9
4037bb7c:	203320        	or	a3, a3, a2
4037bb7f:	c02000        	memw
4037bb82:	3908      	s32i.n	a3, a8, 0
4037bb84:	3182e3        	l32r	a3, 0x4037498c
4037bb87:	0c38      	movi.n	a8, 3
4037bb89:	c02000        	memw
4037bb8c:	2803      	l32i.n	a2, a3, 0
4037bb8e:	802220        	or	a2, a2, a8
4037bb91:	c02000        	memw
4037bb94:	2903      	s32i.n	a2, a3, 0
4037bb96:	3153e4        	l32r	a3, 0x40374ce4
4037bb99:	814ce2        	l32r	a8, 0x403744cc
4037bb9c:	c02000        	memw
4037bb9f:	2803      	l32i.n	a2, a3, 0
4037bba1:	802220        	or	a2, a2, a8
4037bba4:	c02000        	memw
4037bba7:	2903      	s32i.n	a2, a3, 0
4037bba9:	314fe4        	l32r	a3, 0x40374ce8
4037bbac:	c02000        	memw
4037bbaf:	2803      	l32i.n	a2, a3, 0
4037bbb1:	202014        	extui	a2, a2, 0, 2
4037bbb4:	1642ff        	beqz	a2, 0x4037bbac
4037bbb7:	8175e3        	l32r	a8, 0x4037498c
4037bbba:	c02000        	memw
4037bbbd:	2803      	l32i.n	a2, a3, 0
4037bbbf:	c02000        	memw
4037bbc2:	3808      	l32i.n	a3, a8, 0
4037bbc4:	0c39      	movi.n	a9, 3
4037bbc6:	903320        	or	a3, a3, a9
4037bbc9:	c02000        	memw
4037bbcc:	3908      	s32i.n	a3, a8, 0
4037bbce:	202104        	extui	a2, a2, 1, 1
4037bbd1:	167400        	beqz	a4, 0x4037bbdc
4037bbd4:	3121e4        	l32r	a3, 0x40374c58
4037bbd7:	a803      	l32i.n	a10, a3, 0
4037bbd9:	2586ff        	call8	0x4037b43c
4037bbdc:	3139e4        	l32r	a3, 0x40374cc0
4037bbdf:	4139e4        	l32r	a4, 0x40374cc4
4037bbe2:	c02000        	memw
4037bbe5:	8803      	l32i.n	a8, a3, 0
4037bbe7:	408810        	and	a8, a8, a4
4037bbea:	41e5e3        	l32r	a4, 0x40374b80
4037bbed:	408820        	or	a8, a8, a4
4037bbf0:	c02000        	memw
4037bbf3:	8903      	s32i.n	a8, a3, 0
4037bbf5:	1df0      	retw.n
4037bbf7:	003641        	srli	a3, a0, 6
4037bbfa:	004d02        	andb	b4, b13, b0
4037bbfd:	2d03      	mov.n	a2, a3
4037bbff:	56d419        	bnez	a4, 0x4037bda0
4037bc02:	e51eff        	call8	0x4037adf0
4037bc05:	661a02        	bnei	a10, 1, 0x4037bc0b
4037bc08:	066800        	j	0x4037bdac
4037bc0b:	a2cafe        	addi	a10, a10, -2
4037bc0e:	32a001        	movi	a3, 1
4037bc11:	a04383        	moveqz	a4, a3, a10
4037bc14:	31dfe3        	l32r	a3, 0x40374b90
4037bc17:	c02000        	memw
4037bc1a:	5803      	l32i.n	a5, a3, 0
4037bc1c:	505841        	srli	a5, a5, 8
4037bc1f:	662412        	bnei	a4, 2, 0x4037bc35
4037bc22:	07e50f        	bbsi	a5, 0, 0x4037bc35
4037bc25:	c02000        	memw
4037bc28:	6803      	l32i.n	a6, a3, 0
4037bc2a:	72a100        	movi	a7, 0x100
4037bc2d:	706620        	or	a6, a6, a7
4037bc30:	c02000        	memw
4037bc33:	6903      	s32i.n	a6, a3, 0
4037bc35:	a512ff        	call8	0x4037ad60
4037bc38:	6d0a      	mov.n	a6, a10
4037bc3a:	e513ff        	call8	0x4037ad78
4037bc3d:	7d0a      	mov.n	a7, a10
4037bc3f:	661419        	bnei	a4, 1, 0x4037bc5c
4037bc42:	bd04      	mov.n	a11, a4
4037bc44:	ad04      	mov.n	a10, a4
4037bc46:	2509ff        	call8	0x4037acd8
4037bc49:	81d1e3        	l32r	a8, 0x40374b90
4037bc4c:	92a200        	movi	a9, 0x200
4037bc4f:	c02000        	memw
4037bc52:	3808      	l32i.n	a3, a8, 0
4037bc54:	903320        	or	a3, a3, a9
4037bc57:	c02000        	memw
4037bc5a:	3908      	s32i.n	a3, a8, 0
4037bc5c:	9124e4        	l32r	a9, 0x40374cec
4037bc5f:	c02000        	memw
4037bc62:	3809      	l32i.n	a3, a9, 0
4037bc64:	c76328        	bbci	a3, 12, 0x4037bc90
4037bc67:	3122e4        	l32r	a3, 0x40374cf0
4037bc6a:	a2a080        	movi	a10, 128
4037bc6d:	c02000        	memw
4037bc70:	8803      	l32i.n	a8, a3, 0
4037bc72:	808074        	extui	a8, a8, 0, 8
4037bc75:	a08820        	or	a8, a8, a10
4037bc78:	a101e2        	l32r	a10, 0x4037447c
4037bc7b:	c02000        	memw
4037bc7e:	8903      	s32i.n	a8, a3, 0
4037bc80:	c02000        	memw
4037bc83:	8809      	l32i.n	a8, a9, 0
4037bc85:	a78807        	bany	a8, a10, 0x4037bc90
4037bc88:	c02000        	memw
4037bc8b:	8803      	l32i.n	a8, a3, 0
4037bc8d:	0768ef        	bbci	a8, 0, 0x4037bc80
4037bc90:	3117e4        	l32r	a3, 0x40374cec
4037bc93:	a118e4        	l32r	a10, 0x40374cf4
4037bc96:	308411        	slli	a8, a4, 13
4037bc99:	c02000        	memw
4037bc9c:	9803      	l32i.n	a9, a3, 0
4037bc9e:	a08810        	and	a8, a8, a10
4037bca1:	a115e4        	l32r	a10, 0x40374cf8
4037bca4:	a09910        	and	a9, a9, a10
4037bca7:	908820        	or	a8, a8, a9
4037bcaa:	c02000        	memw
4037bcad:	8903      	s32i.n	a8, a3, 0
4037bcaf:	c02000        	memw
4037bcb2:	8803      	l32i.n	a8, a3, 0
4037bcb4:	91ede3        	l32r	a9, 0x40374c68
4037bcb7:	a111e4        	l32r	a10, 0x40374cfc
4037bcba:	908810        	and	a8, a8, a9
4037bcbd:	c02000        	memw
4037bcc0:	8903      	s32i.n	a8, a3, 0
4037bcc2:	008211        	slli	a8, a2, 16
4037bcc5:	c02000        	memw
4037bcc8:	9803      	l32i.n	a9, a3, 0
4037bcca:	a08810        	and	a8, a8, a10
4037bccd:	a10ce4        	l32r	a10, 0x40374d00
4037bcd0:	a09910        	and	a9, a9, a10
4037bcd3:	908820        	or	a8, a8, a9
4037bcd6:	c02000        	memw
4037bcd9:	8903      	s32i.n	a8, a3, 0
4037bcdb:	3105e4        	l32r	a3, 0x40374cf0
4037bcde:	c02000        	memw
4037bce1:	8803      	l32i.n	a8, a3, 0
4037bce3:	808064        	extui	a8, a8, 0, 7
4037bce6:	262402        	beqi	a4, 2, 0x4037bcec
4037bce9:	063100        	j	0x4037bdb1
4037bcec:	d09201        	slli	a9, a2, 19
4037bcef:	908820        	or	a8, a8, a9
4037bcf2:	c1e2e1        	l32r	a12, 0x4037447c
4037bcf5:	c02000        	memw
4037bcf8:	8903      	s32i.n	a8, a3, 0
4037bcfa:	31fce3        	l32r	a3, 0x40374cec
4037bcfd:	9114e3        	l32r	a9, 0x40374950
4037bd00:	c02000        	memw
4037bd03:	8803      	l32i.n	a8, a3, 0
4037bd05:	a1f5e2        	l32r	a10, 0x403748dc
4037bd08:	908810        	and	a8, a8, a9
4037bd0b:	c02000        	memw
4037bd0e:	8903      	s32i.n	a8, a3, 0
4037bd10:	91efe1        	l32r	a9, 0x403744cc
4037bd13:	c02000        	memw
4037bd16:	8803      	l32i.n	a8, a3, 0
4037bd18:	a0b2a2        	muluh	a11, a2, a10
4037bd1b:	908820        	or	a8, a8, a9
4037bd1e:	a0a282        	mull	a10, a2, a10
4037bd21:	c02000        	memw
4037bd24:	8903      	s32i.n	a8, a3, 0
4037bd26:	d2a000        	movi	a13, 0
4037bd29:	8196e2        	l32r	a8, 0x40374784
4037bd2c:	e00800        	callx8	a8
4037bd2f:	812be2        	l32r	a8, 0x403745dc
4037bd32:	e00800        	callx8	a8
4037bd35:	b1d1e1        	l32r	a11, 0x4037447c
4037bd38:	91eee3        	l32r	a9, 0x40374cf0
4037bd3b:	ad03      	mov.n	a10, a3
4037bd3d:	c02000        	memw
4037bd40:	280a      	l32i.n	a2, a10, 0
4037bd42:	b02210        	and	a2, a2, a11
4037bd45:	16f208        	beqz	a2, 0x4037bdd8
4037bd48:	21efe3        	l32r	a2, 0x40374d04
4037bd4b:	c02000        	memw
4037bd4e:	2802      	l32i.n	a2, a2, 0
4037bd50:	202741        	srli	a2, a2, 7
4037bd53:	c02000        	memw
4037bd56:	8803      	l32i.n	a8, a3, 0
4037bd58:	91fee2        	l32r	a9, 0x40374950
4037bd5b:	805511        	slli	a5, a5, 8
4037bd5e:	908810        	and	a8, a8, a9
4037bd61:	c02000        	memw
4037bd64:	8903      	s32i.n	a8, a3, 0
4037bd66:	318ae3        	l32r	a3, 0x40374b90
4037bd69:	92a100        	movi	a9, 0x100
4037bd6c:	c02000        	memw
4037bd6f:	8803      	l32i.n	a8, a3, 0
4037bd71:	905510        	and	a5, a5, a9
4037bd74:	92aeff        	movi	a9, 0xfffffeff
4037bd77:	908810        	and	a8, a8, a9
4037bd7a:	805520        	or	a5, a5, a8
4037bd7d:	c02000        	memw
4037bd80:	5903      	s32i.n	a5, a3, 0
4037bd82:	661416        	bnei	a4, 1, 0x4037bd9c
4037bd85:	c02000        	memw
4037bd88:	4803      	l32i.n	a4, a3, 0
4037bd8a:	52adff        	movi	a5, 0xfffffdff
4037bd8d:	504410        	and	a4, a4, a5
4037bd90:	c02000        	memw
4037bd93:	4903      	s32i.n	a4, a3, 0
4037bd95:	bd07      	mov.n	a11, a7
4037bd97:	ad06      	mov.n	a10, a6
4037bd99:	e5f3fe        	call8	0x4037acd8
4037bd9c:	1df0      	retw.n
4037bd9e:	000026        	ee.ldf.64.xp	f0, f2, a0, a0
4037bda1:	340246        	ee.ld.qacc_h.l.128.ip	a3, 0xfffff820
4037bda4:	9bff      	addi.n	a15, a15, 9
4037bda6:	0c04      	movi.n	a4, 0
4037bda8:	069aff        	j	0x4037bc14
4037bdab:	000c24        	extui	a0, a0, 12, 3
4037bdae:	8698ff        	j	0x4037bc14
4037bdb1:	661410        	bnei	a4, 1, 0x4037bdc5
4037bdb4:	d09201        	slli	a9, a2, 19
4037bdb7:	908820        	or	a8, a8, a9
4037bdba:	c02000        	memw
4037bdbd:	8903      	s32i.n	a8, a3, 0
4037bdbf:	c17ae3        	l32r	a12, 0x40374ba8
4037bdc2:	06cdff        	j	0x4037bcfa
4037bdc5:	f09201        	slli	a9, a2, 17
4037bdc8:	908820        	or	a8, a8, a9
4037bdcb:	c02000        	memw
4037bdce:	8903      	s32i.n	a8, a3, 0
4037bdd0:	c175e3        	l32r	a12, 0x40374ba4
4037bdd3:	c6c8ff        	j	0x4037bcfa
4037bdd6:	0000c0        	sub	a0, a0, a0
4037bdd9:	20          	.byte	0x20
4037bdda:	008809        	l32e	a0, a8, -32
4037bddd:	07e802        	bbsi	a8, 0, 0x4037bde3
4037bde0:	46d6ff        	j	0x4037bd3d
4037bde3:	06dbff        	j	0x4037bd53
4037bde6:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037bde9:	410025        	l32r	a4, 0x403451ec
4037bdec:	23          	.byte	0x23
4037bded:	ff5d0abd 	ee.vmulas.s8.qacc.ld.xp.qup	q3, a15, a13, q5, q2, q0, q2
4037bdf1:	03          	.byte	0x3
4037bdf2:	ad02      	mov.n	a10, a2
4037bdf4:	25e0ff        	call8	0x4037bbf8
4037bdf7:	304582        	mull	a4, a5, a3
4037bdfa:	6d0a      	mov.n	a6, a10
4037bdfc:	0c07      	movi.n	a7, 0
4037bdfe:	3035a2        	muluh	a3, a5, a3
4037be01:	662254        	bnei	a2, 2, 0x4037be59
4037be04:	81b6e2        	l32r	a8, 0x403748dc
4037be07:	c1c0e3        	l32r	a12, 0x40374d08
4037be0a:	802382        	mull	a2, a3, a8
4037be0d:	805482        	mull	a5, a4, a8
4037be10:	8084a2        	muluh	a8, a4, a8
4037be13:	505f41        	srli	a5, a5, 15
4037be16:	8a82      	add.n	a8, a2, a8
4037be18:	f02801        	slli	a2, a8, 17
4037be1b:	505220        	or	a5, a2, a5
4037be1e:	d1e0e1        	l32r	a13, 0x403745a0
4037be21:	802f41        	srli	a2, a8, 15
4037be24:	ad05      	mov.n	a10, a5
4037be26:	bd02      	mov.n	a11, a2
4037be28:	8157e2        	l32r	a8, 0x40374784
4037be2b:	e00800        	callx8	a8
4037be2e:	a085c0        	sub	a8, a5, a10
4037be31:	0c19      	movi.n	a9, 1
4037be33:	873501        	bltu	a5, a8, 0x4037be38
4037be36:	9d07      	mov.n	a9, a7
4037be38:	b0c2c0        	sub	a12, a2, a11
4037be3b:	90ccc0        	sub	a12, a12, a9
4037be3e:	562c05        	bnez	a12, 0x4037be94
4037be41:	87364f        	bltu	a6, a8, 0x4037be94
4037be44:	aa85      	add.n	a8, a5, a10
4037be46:	0c19      	movi.n	a9, 1
4037be48:	573801        	bltu	a8, a5, 0x4037be4d
4037be4b:	9d0c      	mov.n	a9, a12
4037be4d:	ba22      	add.n	a2, a2, a11
4037be4f:	2a29      	add.n	a2, a9, a2
4037be51:	279704        	bne	a7, a2, 0x4037be59
4037be54:	0c02      	movi.n	a2, 0
4037be56:	673838        	bltu	a8, a6, 0x4037be92
4037be59:	d0a601        	slli	a10, a6, 19
4037be5c:	0b5a      	addi.n	a5, a10, -1
4037be5e:	602d41        	srli	a2, a6, 13
4037be61:	0c16      	movi.n	a6, 1
4037be63:	a73501        	bltu	a5, a10, 0x4037be68
4037be66:	0c06      	movi.n	a6, 0
4037be68:	0b22      	addi.n	a2, a2, -1
4037be6a:	2a26      	add.n	a2, a6, a2
4037be6c:	40a141        	srli	a10, a4, 1
4037be6f:	106301        	slli	a6, a3, 31
4037be72:	a0a620        	or	a10, a6, a10
4037be75:	aaa5      	add.n	a10, a5, a10
4037be77:	306141        	srli	a6, a3, 1
4037be7a:	0c1b      	movi.n	a11, 1
4037be7c:	573a02        	bltu	a10, a5, 0x4037be82
4037be7f:	b2a000        	movi	a11, 0
4037be82:	6a22      	add.n	a2, a2, a6
4037be84:	2abb      	add.n	a11, a11, a2
4037be86:	cd04      	mov.n	a12, a4
4037be88:	dd03      	mov.n	a13, a3
4037be8a:	813ee2        	l32r	a8, 0x40374784
4037be8d:	e00800        	callx8	a8
4037be90:	2d0a      	mov.n	a2, a10
4037be92:	1df0      	retw.n
4037be94:	0c02      	movi.n	a2, 0
4037be96:	06feff        	j	0x4037be92
4037be99:	000000        	ill
4037be9c:	364100        	entry	a1, 32
4037be9f:	20bd41        	srli	a11, a2, 13
4037bea2:	d03301        	slli	a3, a3, 19
4037bea5:	cd04      	mov.n	a12, a4
4037bea7:	0c0d      	movi.n	a13, 0
4037bea9:	d0a201        	slli	a10, a2, 19
4037beac:	30bb20        	or	a11, a11, a3
4037beaf:	8135e2        	l32r	a8, 0x40374784
4037beb2:	e00800        	callx8	a8
4037beb5:	2d0a      	mov.n	a2, a10
4037beb7:	3d0b      	mov.n	a3, a11
4037beb9:	1df0      	retw.n
4037bebb:	003641        	srli	a3, a0, 6
4037bebe:	009193        	movnez	a9, a1, a0
4037bec1:	e3          	.byte	0xe3
4037bec2:	2182e1        	l32r	a2, 0x403744cc
4037bec5:	c02000        	memw
4037bec8:	8809      	l32i.n	a8, a9, 0
4037beca:	3192e3        	l32r	a3, 0x40374d14
4037becd:	208820        	or	a8, a8, a2
4037bed0:	2190e3        	l32r	a2, 0x40374d10
4037bed3:	c02000        	memw
4037bed6:	8909      	s32i.n	a8, a9, 0
4037bed8:	c02000        	memw
4037bedb:	2802      	l32i.n	a2, a2, 0
4037bedd:	c02000        	memw
4037bee0:	3803      	l32i.n	a3, a3, 0
4037bee2:	1df0      	retw.n
4037bee4:	364100        	entry	a1, 32
4037bee7:	9c12      	beqz.n	a2, 0x4037befc
4037bee9:	a18be3        	l32r	a10, 0x40374d18
4037beec:	b18ce3        	l32r	a11, 0x40374d1c
4037beef:	cd02      	mov.n	a12, a2
4037bef1:	d2a000        	movi	a13, 0
4037bef4:	8124e2        	l32r	a8, 0x40374784
4037bef7:	e00800        	callx8	a8
4037befa:	2d0a      	mov.n	a2, a10
4037befc:	1df0      	retw.n
4037befe:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037bf01:	41008d        	l32r	a4, 0x4035f304
4037bf04:	0228e2        	l32i	a0, a8, 0x388
4037bf07:	a6120d        	blti	a2, 1, 0x4037bf18
4037bf0a:	28a8      	l32i.n	a2, a8, 40
4037bf0c:	a22809        	l32i	a10, a8, 36
4037bf0f:	a79217        	bne	a2, a10, 0x4037bf2a
4037bf12:	922802        	l32i	a9, a8, 8
4037bf15:	27e911        	bbsi	a9, 2, 0x4037bf2a
4037bf18:	d182e3        	l32r	a13, 0x40374d20
4037bf1b:	c182e3        	l32r	a12, 0x40374d24
4037bf1e:	b2a243        	movi	a11, 0x243
4037bf21:	a181e3        	l32r	a10, 0x40374d28
4037bf24:	101120        	or	a1, a1, a1
4037bf27:	a5a306        	call8	0x40382960
4037bf2a:	b8c8      	l32i.n	a11, a8, 48
4037bf2c:	b73204        	bltu	a2, a11, 0x4037bf34
4037bf2f:	98d8      	l32i.n	a9, a8, 52
4037bf31:	97320b        	bltu	a2, a9, 0x4037bf40
4037bf34:	d17ee3        	l32r	a13, 0x40374d2c
4037bf37:	c17be3        	l32r	a12, 0x40374d24
4037bf3a:	b2a244        	movi	a11, 0x244
4037bf3d:	06f8ff        	j	0x4037bf21
4037bf40:	c8b8      	l32i.n	a12, a8, 44
4037bf42:	c7120b        	beq	a2, a12, 0x4037bf51
4037bf45:	d17ae3        	l32r	a13, 0x40374d30
4037bf48:	c177e3        	l32r	a12, 0x40374d24
4037bf4b:	b2a245        	movi	a11, 0x245
4037bf4e:	c6f3ff        	j	0x4037bf21
4037bf51:	273a04        	bltu	a10, a2, 0x4037bf59
4037bf54:	c828      	l32i.n	a12, a8, 8
4037bf56:	276c16        	bbci	a12, 2, 0x4037bf70
4037bf59:	2099c0        	sub	a9, a9, a2
4037bf5c:	8c14      	beqz.n	a4, 0x4037bf61
4037bf5e:	973424        	bltu	a4, a9, 0x4037bf86
4037bf61:	9905      	s32i.n	a9, a5, 0
4037bf63:	48e8      	l32i.n	a4, a8, 56
4037bf65:	b9a8      	s32i.n	a11, a8, 40
4037bf67:	9094c0        	sub	a9, a4, a9
4037bf6a:	99e8      	s32i.n	a9, a8, 56
4037bf6c:	1df0      	retw.n
4037bf6e:	000020        	or	a0, a0, a0
4037bf71:	9ac0      	add.n	a12, a0, a9
4037bf73:	8c14      	beqz.n	a4, 0x4037bf78
4037bf75:	97340d        	bltu	a4, a9, 0x4037bf86
4037bf78:	9905      	s32i.n	a9, a5, 0
4037bf7a:	48e8      	l32i.n	a4, a8, 56
4037bf7c:	a9a8      	s32i.n	a10, a8, 40
4037bf7e:	9044c0        	sub	a4, a4, a9
4037bf81:	49e8      	s32i.n	a4, a8, 56
4037bf83:	46f9ff        	j	0x4037bf6c
4037bf86:	4905      	s32i.n	a4, a5, 0
4037bf88:	58e8      	l32i.n	a5, a8, 56
4037bf8a:	4055c0        	sub	a5, a5, a4
4037bf8d:	4a42      	add.n	a4, a2, a4
4037bf8f:	59e8      	s32i.n	a5, a8, 56
4037bf91:	49a8      	s32i.n	a4, a8, 40
4037bf93:	46f5ff        	j	0x4037bf6c
4037bf96:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037bf99:	410030        	l32r	a4, 0x40347f9c
4037bf9c:	80          	.byte	0x80
4037bf9d:	14          	.byte	0x14
4037bf9e:	9c08      	beqz.n	a8, 0x4037bfb2
4037bfa0:	d165e3        	l32r	a13, 0x40374d34
4037bfa3:	c165e3        	l32r	a12, 0x40374d38
4037bfa6:	b2a269        	movi	a11, 0x269
4037bfa9:	a15fe3        	l32r	a10, 0x40374d28
4037bfac:	101120        	or	a1, a1, a1
4037bfaf:	259b06        	call8	0x40382960
4037bfb2:	98c2      	l32i.n	a9, a2, 48
4037bfb4:	97b30c        	bgeu	a3, a9, 0x4037bfc4
4037bfb7:	d161e3        	l32r	a13, 0x40374d3c
4037bfba:	c15fe3        	l32r	a12, 0x40374d38
4037bfbd:	b2a26a        	movi	a11, 0x26a
4037bfc0:	46f9ff        	j	0x4037bfa9
4037bfc3:	00a8d2        	quos	a10, a8, a0
4037bfc6:	37ba0b        	bgeu	a10, a3, 0x4037bfd5
4037bfc9:	d15de3        	l32r	a13, 0x40374d40
4037bfcc:	c15be3        	l32r	a12, 0x40374d38
4037bfcf:	b2a26b        	movi	a11, 0x26b
4037bfd2:	c6f4ff        	j	0x4037bfa9
4037bfd5:	32c3f8        	addi	a3, a3, -8
4037bfd8:	8803      	l32i.n	a8, a3, 0
4037bfda:	b812      	l32i.n	a11, a2, 4
4037bfdc:	87bb0c        	bgeu	a11, a8, 0x4037bfec
4037bfdf:	d159e3        	l32r	a13, 0x40374d44
4037bfe2:	c155e3        	l32r	a12, 0x40374d38
4037bfe5:	b2a26f        	movi	a11, 0x26f
4037bfe8:	46efff        	j	0x4037bfa9
4037bfeb:	00          	.byte	00
4037bfec:	8813      	l32i.n	a8, a3, 4
4037bfee:	0c2b      	movi.n	a11, 2
4037bff0:	b7080c        	bnone	a8, a11, 0x4037c000
4037bff3:	d155e3        	l32r	a13, 0x40374d48
4037bff6:	c150e3        	l32r	a12, 0x40374d38
4037bff9:	b2a270        	movi	a11, 0x270
4037bffc:	46eaff        	j	0x4037bfa9
4037bfff:	00          	.byte	00
4037c000:	07680b        	bbci	a8, 0, 0x4037c00f
4037c003:	d152e3        	l32r	a13, 0x40374d4c
4037c006:	c14ce3        	l32r	a12, 0x40374d38
4037c009:	b2a271        	movi	a11, 0x271
4037c00c:	46e6ff        	j	0x4037bfa9
4037c00f:	7cbc      	movi.n	a12, -5
4037c011:	c08810        	and	a8, a8, a12
4037c014:	0c1c      	movi.n	a12, 1
4037c016:	c08820        	or	a8, a8, a12
4037c019:	e8b2      	l32i.n	a14, a2, 44
4037c01b:	8913      	s32i.n	a8, a3, 4
4037c01d:	7ccd      	movi.n	a13, -4
4037c01f:	381e      	l32i.n	a3, a14, 4
4037c021:	308014        	extui	a8, a3, 0, 2
4037c024:	8c58      	beqz.n	a8, 0x4037c02d
4037c026:	88b2      	l32i.n	a8, a2, 44
4037c028:	f8a2      	l32i.n	a15, a2, 40
4037c02a:	f79816        	bne	a8, a15, 0x4037c044
4037c02d:	3822      	l32i.n	a3, a2, 8
4037c02f:	27634f        	bbci	a3, 2, 0x4037c082
4037c032:	88b2      	l32i.n	a8, a2, 44
4037c034:	9882      	l32i.n	a9, a2, 32
4037c036:	971843        	beq	a8, a9, 0x4037c07d
4037c039:	7cb8      	movi.n	a8, -5
4037c03b:	803310        	and	a3, a3, a8
4037c03e:	3922      	s32i.n	a3, a2, 8
4037c040:	860f00        	j	0x4037c082
4037c043:	00b703        	rsr.epc7	a0
4037c046:	15c033        	call4	0x403afc48
4037c049:	20          	.byte	0x20
4037c04a:	391e      	s32i.n	a3, a14, 4
4037c04c:	99b2      	s32i.n	a9, a2, 44
4037c04e:	38b2      	l32i.n	a3, a2, 44
4037c050:	303ac0        	sub	a3, a10, a3
4037c053:	f68301        	bgeui	a3, 8, 0x4037c058
4037c056:	99b2      	s32i.n	a9, a2, 44
4037c058:	e8b2      	l32i.n	a14, a2, 44
4037c05a:	46f0ff        	j	0x4037c01f
4037c05d:	380e      	l32i.n	a3, a14, 0
4037c05f:	3b33      	addi.n	a3, a3, 3
4037c061:	d03310        	and	a3, a3, a13
4037c064:	8b33      	addi.n	a3, a3, 8
4037c066:	3a38      	add.n	a3, a8, a3
4037c068:	8802      	l32i.n	a8, a2, 0
4037c06a:	39b2      	s32i.n	a3, a2, 44
4037c06c:	8a89      	add.n	a8, a9, a8
4037c06e:	37b8dc        	bgeu	a8, a3, 0x4037c04e
4037c071:	d137e3        	l32r	a13, 0x40374d50
4037c074:	c131e3        	l32r	a12, 0x40374d38
4037c077:	b2a286        	movi	a11, 0x286
4037c07a:	c6caff        	j	0x4037bfa9
4037c07d:	98a2      	l32i.n	a9, a2, 40
4037c07f:	9718b6        	beq	a8, a9, 0x4037c039
4037c082:	1df0      	retw.n
4037c084:	364100        	entry	a1, 32
4037c087:	8d02      	mov.n	a8, a2
4037c089:	ccd3      	bnez.n	a3, 0x4037c09a
4037c08b:	d132e3        	l32r	a13, 0x40374d54
4037c08e:	c132e3        	l32r	a12, 0x40374d58
4037c091:	b2a21b        	movi	a11, 0x21b
4037c094:	a125e3        	l32r	a10, 0x40374d28
4037c097:	a58c06        	call8	0x40382960
4037c09a:	28e2      	l32i.n	a2, a2, 56
4037c09c:	a6120c        	blti	a2, 1, 0x4037c0ac
4037c09f:	98a8      	l32i.n	a9, a8, 40
4037c0a1:	2898      	l32i.n	a2, a8, 36
4037c0a3:	979211        	bne	a2, a9, 0x4037c0b8
4037c0a6:	222802        	l32i	a2, a8, 8
4037c0a9:	27e20b        	bbsi	a2, 2, 0x4037c0b8
4037c0ac:	d11de3        	l32r	a13, 0x40374d20
4037c0af:	c12ae3        	l32r	a12, 0x40374d58
4037c0b2:	b2a21c        	movi	a11, 0x21c
4037c0b5:	c6f6ff        	j	0x4037c094
4037c0b8:	902014        	extui	a2, a9, 0, 2
4037c0bb:	8cb2      	beqz.n	a2, 0x4037c0ca
4037c0bd:	d127e3        	l32r	a13, 0x40374d5c
4037c0c0:	c126e3        	l32r	a12, 0x40374d58
4037c0c3:	b2a21d        	movi	a11, 0x21d
4037c0c6:	86f2ff        	j	0x4037c094
4037c0c9:	00          	.byte	00
4037c0ca:	a8c8      	l32i.n	a10, a8, 48
4037c0cc:	a73904        	bltu	a9, a10, 0x4037c0d4
4037c0cf:	b8d8      	l32i.n	a11, a8, 52
4037c0d1:	b7390b        	bltu	a9, a11, 0x4037c0e0
4037c0d4:	d116e3        	l32r	a13, 0x40374d2c
4037c0d7:	c120e3        	l32r	a12, 0x40374d58
4037c0da:	b2a21e        	movi	a11, 0x21e
4037c0dd:	c6ecff        	j	0x4037c094
4037c0e0:	d819      	l32i.n	a13, a9, 4
4037c0e2:	0c22      	movi.n	a2, 2
4037c0e4:	d02210        	and	a2, a2, a13
4037c0e7:	c818      	l32i.n	a12, a8, 4
4037c0e9:	d809      	l32i.n	a13, a9, 0
4037c0eb:	d7bc0d        	bgeu	a12, a13, 0x4037c0fc
4037c0ee:	ccc2      	bnez.n	a2, 0x4037c0fe
4037c0f0:	d11ce3        	l32r	a13, 0x40374d60
4037c0f3:	c119e3        	l32r	a12, 0x40374d58
4037c0f6:	b2a21f        	movi	a11, 0x21f
4037c0f9:	c6e5ff        	j	0x4037c094
4037c0fc:	9c42      	beqz.n	a2, 0x4037c114
4037c0fe:	280a      	l32i.n	a2, a10, 0
4037c100:	a9a8      	s32i.n	a10, a8, 40
4037c102:	9d0a      	mov.n	a9, a10
4037c104:	27bc0c        	bgeu	a12, a2, 0x4037c114
4037c107:	d117e3        	l32r	a13, 0x40374d64
4037c10a:	c113e3        	l32r	a12, 0x40374d58
4037c10d:	b2a227        	movi	a11, 0x227
4037c110:	06e0ff        	j	0x4037c094
4037c113:	00          	.byte	00
4037c114:	c8a8      	l32i.n	a12, a8, 40
4037c116:	e809      	l32i.n	a14, a9, 0
4037c118:	8b2c      	addi.n	a2, a12, 8
4037c11a:	0c1d      	movi.n	a13, 1
4037c11c:	a73201        	bltu	a2, a10, 0x4037c121
4037c11f:	0c0d      	movi.n	a13, 0
4037c121:	d0d074        	extui	a13, a13, 0, 8
4037c124:	560e01        	bnez	a14, 0x4037c138
4037c127:	273b01        	bltu	a11, a2, 0x4037c12c
4037c12a:	9cbd      	beqz.n	a13, 0x4037c149
4037c12c:	d10fe3        	l32r	a13, 0x40374d68
4037c12f:	c10ae3        	l32r	a12, 0x40374d58
4037c132:	b2a22c        	movi	a11, 0x22c
4037c135:	c6d6ff        	j	0x4037c094
4037c138:	b7b201        	bgeu	a2, a11, 0x4037c13d
4037c13b:	8cad      	beqz.n	a13, 0x4037c149
4037c13d:	d10be3        	l32r	a13, 0x40374d6c
4037c140:	c106e3        	l32r	a12, 0x40374d58
4037c143:	b2a22f        	movi	a11, 0x22f
4037c146:	86d2ff        	j	0x4037c094
4037c149:	e905      	s32i.n	a14, a5, 0
4037c14b:	d8e8      	l32i.n	a13, a8, 56
4037c14d:	0bdd      	addi.n	a13, a13, -1
4037c14f:	d9e8      	s32i.n	a13, a8, 56
4037c151:	d819      	l32i.n	a13, a9, 4
4037c153:	d0d204        	extui	a13, a13, 2, 1
4037c156:	d903      	s32i.n	a13, a3, 0
4037c158:	9809      	l32i.n	a9, a9, 0
4037c15a:	7cc3      	movi.n	a3, -4
4037c15c:	3b99      	addi.n	a9, a9, 3
4037c15e:	309910        	and	a9, a9, a3
4037c161:	8b99      	addi.n	a9, a9, 8
4037c163:	9a9c      	add.n	a9, a12, a9
4037c165:	90bbc0        	sub	a11, a11, a9
4037c168:	b68b04        	bltui	a11, 8, 0x4037c170
4037c16b:	99a8      	s32i.n	a9, a8, 40
4037c16d:	1df0      	retw.n
4037c16f:	00          	.byte	00
4037c170:	a9a8      	s32i.n	a10, a8, 40
4037c172:	c6fdff        	j	0x4037c16d
4037c175:	000000        	ill
4037c178:	364100        	entry	a1, 32
4037c17b:	b22208        	l32i	a11, a2, 32
4037c17e:	208220        	or	a8, a2, a2
4037c181:	b0e014        	extui	a14, a11, 0, 2
4037c184:	c2220d        	l32i	a12, a2, 52
4037c187:	8cde      	beqz.n	a14, 0x4037c198
4037c189:	d1f9e2        	l32r	a13, 0x40374d70
4037c18c:	c1fae2        	l32r	a12, 0x40374d74
4037c18f:	b2a15a        	movi	a11, 0x15a
4037c192:	a1e5e2        	l32r	a10, 0x40374d28
4037c195:	a57c06        	call8	0x40382960
4037c198:	d8c2      	l32i.n	a13, a2, 48
4037c19a:	c7bb16        	bgeu	a11, a12, 0x4037c1b4
4037c19d:	d73b13        	bltu	a11, a13, 0x4037c1b4
4037c1a0:	b0fcc0        	sub	a15, a12, a11
4037c1a3:	f68f19        	bgeui	a15, 8, 0x4037c1c0
4037c1a6:	d1f5e2        	l32r	a13, 0x40374d7c
4037c1a9:	c1f2e2        	l32r	a12, 0x40374d74
4037c1ac:	b2a15c        	movi	a11, 0x15c
4037c1af:	c6f7ff        	j	0x4037c192
4037c1b2:	0000d1        	mul16s	a0, a0, a0
4037c1b5:	f1e2c1        	l32r	a15, 0x4036c940
4037c1b8:	efe2b2a1 	ee.fft.ams.s16.st.incp	q3, q2, a14, a2, q2, q7, q5, 0
4037c1bc:	5b46      	addi.n	a4, a6, 5
4037c1be:	f4          	.byte	0xf4
4037c1bf:	ff7cca3b 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a15, 0xfffffec0, q5, q7, q4, q2
4037c1c3:	93          	.byte	0x93
4037c1c4:	a09910        	and	a9, a9, a10
4037c1c7:	8ba9      	addi.n	a10, a9, 8
4037c1c9:	a7bf07        	bgeu	a15, a10, 0x4037c1d4
4037c1cc:	0c22      	movi.n	a2, 2
4037c1ce:	291b      	s32i.n	a2, a11, 4
4037c1d0:	e90b      	s32i.n	a14, a11, 0
4037c1d2:	d988      	s32i.n	a13, a8, 32
4037c1d4:	9888      	l32i.n	a9, a8, 32
4037c1d6:	0c02      	movi.n	a2, 0
4037c1d8:	2919      	s32i.n	a2, a9, 4
4037c1da:	3909      	s32i.n	a3, a9, 0
4037c1dc:	8b29      	addi.n	a2, a9, 8
4037c1de:	aa99      	add.n	a9, a9, a10
4037c1e0:	90ccc0        	sub	a12, a12, a9
4037c1e3:	b68c13        	bltui	a12, 8, 0x4037c1fa
4037c1e6:	9988      	s32i.n	a9, a8, 32
4037c1e8:	9888      	l32i.n	a9, a8, 32
4037c1ea:	38b8      	l32i.n	a3, a8, 44
4037c1ec:	379908        	bne	a9, a3, 0x4037c1f8
4037c1ef:	9828      	l32i.n	a9, a8, 8
4037c1f1:	0c43      	movi.n	a3, 4
4037c1f3:	309920        	or	a9, a9, a3
4037c1f6:	9928      	s32i.n	a9, a8, 8
4037c1f8:	1df0      	retw.n
4037c1fa:	d988      	s32i.n	a13, a8, 32
4037c1fc:	06faff        	j	0x4037c1e8
4037c1ff:	003641        	srli	a3, a0, 6
4037c202:	003040        	ssa8b	a0
4037c205:	14          	.byte	0x14
4037c206:	9c04      	beqz.n	a4, 0x4037c21a
4037c208:	d1cbe2        	l32r	a13, 0x40374d34
4037c20b:	c1dde2        	l32r	a12, 0x40374d80
4037c20e:	b2a17f        	movi	a11, 0x17f
4037c211:	a1c5e2        	l32r	a10, 0x40374d28
4037c214:	101120        	or	a1, a1, a1
4037c217:	a57406        	call8	0x40382960
4037c21a:	98c2      	l32i.n	a9, a2, 48
4037c21c:	97b30c        	bgeu	a3, a9, 0x4037c22c
4037c21f:	d1c7e2        	l32r	a13, 0x40374d3c
4037c222:	c1d7e2        	l32r	a12, 0x40374d80
4037c225:	b2a180        	movi	a11, 0x180
4037c228:	46f9ff        	j	0x4037c211
4037c22b:	00a8d2        	quos	a10, a8, a0
4037c22e:	37ba0b        	bgeu	a10, a3, 0x4037c23d
4037c231:	d1c3e2        	l32r	a13, 0x40374d40
4037c234:	c1d3e2        	l32r	a12, 0x40374d80
4037c237:	b2a181        	movi	a11, 0x181
4037c23a:	c6f4ff        	j	0x4037c211
4037c23d:	32c3f8        	addi	a3, a3, -8
4037c240:	4803      	l32i.n	a4, a3, 0
4037c242:	8812      	l32i.n	a8, a2, 4
4037c244:	47b80c        	bgeu	a8, a4, 0x4037c254
4037c247:	d1bfe2        	l32r	a13, 0x40374d44
4037c24a:	c1cde2        	l32r	a12, 0x40374d80
4037c24d:	b2a185        	movi	a11, 0x185
4037c250:	46efff        	j	0x4037c211
4037c253:	00          	.byte	00
4037c254:	8813      	l32i.n	a8, a3, 4
4037c256:	0c2c      	movi.n	a12, 2
4037c258:	c7080c        	bnone	a8, a12, 0x4037c268
4037c25b:	d1bbe2        	l32r	a13, 0x40374d48
4037c25e:	c1c8e2        	l32r	a12, 0x40374d80
4037c261:	b2a186        	movi	a11, 0x186
4037c264:	46eaff        	j	0x4037c211
4037c267:	000c8b        	moveqz.s	f0, f12, a0
4037c26a:	b7080b        	bnone	a8, a11, 0x4037c279
4037c26d:	d1c5e2        	l32r	a13, 0x40374d84
4037c270:	c1c4e2        	l32r	a12, 0x40374d80
4037c273:	b2a187        	movi	a11, 0x187
4037c276:	c6e5ff        	j	0x4037c211
4037c279:	7cb4      	movi.n	a4, -5
4037c27b:	408810        	and	a8, a8, a4
4037c27e:	b08820        	or	a8, a8, a11
4037c281:	8913      	s32i.n	a8, a3, 4
4037c283:	38e2      	l32i.n	a3, a2, 56
4037c285:	f892      	l32i.n	a15, a2, 36
4037c287:	1b33      	addi.n	a3, a3, 1
4037c289:	39e2      	s32i.n	a3, a2, 56
4037c28b:	0cad      	movi.n	a13, 10
4037c28d:	7cce      	movi.n	a14, -4
4037c28f:	381f      	l32i.n	a3, a15, 4
4037c291:	d70307        	bnone	a3, a13, 0x4037c29c
4037c294:	4892      	l32i.n	a4, a2, 36
4037c296:	822208        	l32i	a8, a2, 32
4037c299:	879403        	bne	a4, a8, 0x4037c2a0
4037c29c:	1df0      	retw.n
4037c29e:	0000c7        	ee.stf.64.xp	f0, f12, a0, a0
4037c2a1:	03          	.byte	0x3
4037c2a2:	15b033        	call4	0x403afda4
4037c2a5:	20          	.byte	0x20
4037c2a6:	391f      	s32i.n	a3, a15, 4
4037c2a8:	9992      	s32i.n	a9, a2, 36
4037c2aa:	3892      	l32i.n	a3, a2, 36
4037c2ac:	303ac0        	sub	a3, a10, a3
4037c2af:	f68301        	bgeui	a3, 8, 0x4037c2b4
4037c2b2:	9992      	s32i.n	a9, a2, 36
4037c2b4:	f892      	l32i.n	a15, a2, 36
4037c2b6:	46f5ff        	j	0x4037c28f
4037c2b9:	880f      	l32i.n	a8, a15, 0
4037c2bb:	3802      	l32i.n	a3, a2, 0
4037c2bd:	3b88      	addi.n	a8, a8, 3
4037c2bf:	e08810        	and	a8, a8, a14
4037c2c2:	8b88      	addi.n	a8, a8, 8
4037c2c4:	8a84      	add.n	a8, a4, a8
4037c2c6:	8992      	s32i.n	a8, a2, 36
4037c2c8:	3a39      	add.n	a3, a9, a3
4037c2ca:	87b3dc        	bgeu	a3, a8, 0x4037c2aa
4037c2cd:	d1aee2        	l32r	a13, 0x40374d88
4037c2d0:	c1ace2        	l32r	a12, 0x40374d80
4037c2d3:	b2a19f        	movi	a11, 0x19f
4037c2d6:	c6cdff        	j	0x4037c211
4037c2d9:	000000        	ill
4037c2dc:	364100        	entry	a1, 32
4037c2df:	9882      	l32i.n	a9, a2, 32
4037c2e1:	90c014        	extui	a12, a9, 0, 2
4037c2e4:	16ec00        	beqz	a12, 0x4037c2f6
4037c2e7:	d1a2e2        	l32r	a13, 0x40374d70
4037c2ea:	c1a8e2        	l32r	a12, 0x40374d8c
4037c2ed:	b2a12b        	movi	a11, 0x12b
4037c2f0:	a18ee2        	l32r	a10, 0x40374d28
4037c2f3:	e56606        	call8	0x40382960
4037c2f6:	f8c2      	l32i.n	a15, a2, 48
4037c2f8:	f73904        	bltu	a9, a15, 0x4037c300
4037c2fb:	88d2      	l32i.n	a8, a2, 52
4037c2fd:	87390b        	bltu	a9, a8, 0x4037c30c
4037c300:	d19ee2        	l32r	a13, 0x40374d78
4037c303:	c1a2e2        	l32r	a12, 0x40374d8c
4037c306:	b2a12c        	movi	a11, 0x12c
4037c309:	c6f8ff        	j	0x4037c2f0
4037c30c:	7cca      	movi.n	a10, -4
4037c30e:	3b33      	addi.n	a3, a3, 3
4037c310:	a03310        	and	a3, a3, a10
4037c313:	a8b2      	l32i.n	a10, a2, 44
4037c315:	8be3      	addi.n	a14, a3, 8
4037c317:	0c1b      	movi.n	a11, 1
4037c319:	a7990b        	bne	a9, a10, 0x4037c328
4037c31c:	9822      	l32i.n	a9, a2, 8
4037c31e:	909204        	extui	a9, a9, 2, 1
4037c321:	b08930        	xor	a8, a9, a11
4037c324:	2d08      	mov.n	a2, a8
4037c326:	1df0      	retw.n
4037c328:	a7b90c        	bgeu	a9, a10, 0x4037c338
4037c32b:	909ac0        	sub	a9, a10, a9
4037c32e:	8d0b      	mov.n	a8, a11
4037c330:	e7b9f0        	bgeu	a9, a14, 0x4037c324
4037c333:	8d0c      	mov.n	a8, a12
4037c335:	c6faff        	j	0x4037c324
4037c338:	90d8c0        	sub	a13, a8, a9
4037c33b:	8d0b      	mov.n	a8, a11
4037c33d:	e7bde3        	bgeu	a13, a14, 0x4037c324
4037c340:	d822      	l32i.n	a13, a2, 8
4037c342:	d0d004        	extui	a13, a13, 0, 1
4037c345:	8cfd      	beqz.n	a13, 0x4037c358
4037c347:	2802      	l32i.n	a2, a2, 0
4037c349:	a099c0        	sub	a9, a9, a10
4037c34c:	32c310        	addi	a3, a3, 16
4037c34f:	9092c0        	sub	a9, a2, a9
4037c352:	37b9ce        	bgeu	a9, a3, 0x4037c324
4037c355:	86f6ff        	j	0x4037c333
4037c358:	f09ac0        	sub	a9, a10, a15
4037c35b:	e7b9c5        	bgeu	a9, a14, 0x4037c324
4037c35e:	8d0d      	mov.n	a8, a13
4037c360:	06f0ff        	j	0x4037c324
4037c363:	003641        	srli	a3, a0, 6
4037c366:	002085        	extui	a2, a0, 16, 9
4037c369:	805264        	extui	a5, a8, 2, 7
4037c36c:	0c52      	movi.n	a2, 5
4037c36e:	640b59        	mula.da.hl.lddec	m0, a11, m0, a6
4037c371:	a45994        	ee.vst.l.64.ip	q2, a10, 0x2c8
4037c374:	5984      	s32i.n	a5, a4, 32
4037c376:	0c05      	movi.n	a5, 0
4037c378:	2904      	s32i.n	a2, a4, 0
4037c37a:	89d4      	s32i.n	a8, a4, 52
4037c37c:	59e4      	s32i.n	a5, a4, 56
4037c37e:	5924      	s32i.n	a5, a4, 8
4037c380:	579344        	bne	a3, a5, 0x4037c3c8
4037c383:	3183e2        	l32r	a3, 0x40374d90
4037c386:	202141        	srli	a2, a2, 1
4037c389:	3934      	s32i.n	a3, a4, 12
4037c38b:	3182e2        	l32r	a3, 0x40374d94
4037c38e:	3b22      	addi.n	a2, a2, 3
4037c390:	3944      	s32i.n	a3, a4, 16
4037c392:	3181e2        	l32r	a3, 0x40374d98
4037c395:	3954      	s32i.n	a3, a4, 20
4037c397:	3181e2        	l32r	a3, 0x40374d9c
4037c39a:	3964      	s32i.n	a3, a4, 24
4037c39c:	7cc3      	movi.n	a3, -4
4037c39e:	302210        	and	a2, a2, a3
4037c3a1:	22c2f8        	addi	a2, a2, -8
4037c3a4:	2914      	s32i.n	a2, a4, 4
4037c3a6:	217ee2        	l32r	a2, 0x40374da0
4037c3a9:	0c0d      	movi.n	a13, 0
4037c3ab:	2974      	s32i.n	a2, a4, 28
4037c3ad:	a2c43c        	addi	a10, a4, 60
4037c3b0:	22a0e4        	movi	a2, 228
4037c3b3:	cd0d      	mov.n	a12, a13
4037c3b5:	bd0d      	mov.n	a11, a13
4037c3b7:	651701        	call8	0x4037d52c
4037c3ba:	2a44      	add.n	a4, a4, a2
4037c3bc:	2181e2        	l32r	a2, 0x40374dc0
4037c3bf:	2904      	s32i.n	a2, a4, 0
4037c3c1:	0c02      	movi.n	a2, 0
4037c3c3:	2914      	s32i.n	a2, a4, 4
4037c3c5:	1df0      	retw.n
4037c3c7:	00          	.byte	00
4037c3c8:	661320        	bnei	a3, 1, 0x4037c3ec
4037c3cb:	3924      	s32i.n	a3, a4, 8
4037c3cd:	3170e2        	l32r	a3, 0x40374d90
4037c3d0:	22c2f0        	addi	a2, a2, -16
4037c3d3:	3934      	s32i.n	a3, a4, 12
4037c3d5:	3173e2        	l32r	a3, 0x40374da4
4037c3d8:	2914      	s32i.n	a2, a4, 4
4037c3da:	3944      	s32i.n	a3, a4, 16
4037c3dc:	316fe2        	l32r	a3, 0x40374d98
4037c3df:	2172e2        	l32r	a2, 0x40374da8
4037c3e2:	3954      	s32i.n	a3, a4, 20
4037c3e4:	316ee2        	l32r	a3, 0x40374d9c
4037c3e7:	3964      	s32i.n	a3, a4, 24
4037c3e9:	06efff        	j	0x4037c3a9
4037c3ec:	0c23      	movi.n	a3, 2
4037c3ee:	3924      	s32i.n	a3, a4, 8
4037c3f0:	316fe2        	l32r	a3, 0x40374dac
4037c3f3:	2914      	s32i.n	a2, a4, 4
4037c3f5:	3934      	s32i.n	a3, a4, 12
4037c3f7:	316ee2        	l32r	a3, 0x40374db0
4037c3fa:	2170e2        	l32r	a2, 0x40374dbc
4037c3fd:	3944      	s32i.n	a3, a4, 16
4037c3ff:	316de2        	l32r	a3, 0x40374db4
4037c402:	3954      	s32i.n	a3, a4, 20
4037c404:	316de2        	l32r	a3, 0x40374db8
4037c407:	3964      	s32i.n	a3, a4, 24
4037c409:	06e7ff        	j	0x4037c3a9
4037c40c:	364100        	entry	a1, 32
4037c40f:	a882      	l32i.n	a10, a2, 32
4037c411:	52220c        	l32i	a5, a2, 48
4037c414:	573a04        	bltu	a10, a5, 0x4037c41c
4037c417:	58d2      	l32i.n	a5, a2, 52
4037c419:	573a0e        	bltu	a10, a5, 0x4037c42b
4037c41c:	d157e2        	l32r	a13, 0x40374d78
4037c41f:	c169e2        	l32r	a12, 0x40374dc4
4037c422:	a141e2        	l32r	a10, 0x40374d28
4037c425:	b2a1ea        	movi	a11, 0x1ea
4037c428:	655306        	call8	0x40382960
4037c42b:	a055c0        	sub	a5, a5, a10
4037c42e:	47b51b        	bgeu	a5, a4, 0x4037c44d
4037c431:	50c520        	or	a12, a5, a5
4037c434:	30b320        	or	a11, a3, a3
4037c437:	8118e0        	l32r	a8, 0x40374498
4037c43a:	e00800        	callx8	a8
4037c43d:	82220e        	l32i	a8, a2, 56
4037c440:	5a33      	add.n	a3, a3, a5
4037c442:	5a88      	add.n	a8, a8, a5
4037c444:	5044c0        	sub	a4, a4, a5
4037c447:	58c2      	l32i.n	a5, a2, 48
4037c449:	89e2      	s32i.n	a8, a2, 56
4037c44b:	5982      	s32i.n	a5, a2, 32
4037c44d:	a882      	l32i.n	a10, a2, 32
4037c44f:	cd04      	mov.n	a12, a4
4037c451:	bd03      	mov.n	a11, a3
4037c453:	8111e0        	l32r	a8, 0x40374498
4037c456:	e00800        	callx8	a8
4037c459:	38e2      	l32i.n	a3, a2, 56
4037c45b:	5882      	l32i.n	a5, a2, 32
4037c45d:	4a33      	add.n	a3, a3, a4
4037c45f:	39e2      	s32i.n	a3, a2, 56
4037c461:	4a45      	add.n	a4, a5, a4
4037c463:	38d2      	l32i.n	a3, a2, 52
4037c465:	4982      	s32i.n	a4, a2, 32
4037c467:	379403        	bne	a4, a3, 0x4037c46e
4037c46a:	38c2      	l32i.n	a3, a2, 48
4037c46c:	3982      	s32i.n	a3, a2, 32
4037c46e:	4882      	l32i.n	a4, a2, 32
4037c470:	38b2      	l32i.n	a3, a2, 44
4037c472:	379408        	bne	a4, a3, 0x4037c47e
4037c475:	3822      	l32i.n	a3, a2, 8
4037c477:	0c45      	movi.n	a5, 4
4037c479:	503320        	or	a3, a3, a5
4037c47c:	3922      	s32i.n	a3, a2, 8
4037c47e:	4992      	s32i.n	a4, a2, 36
4037c480:	1df0      	retw.n
4037c482:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037c485:	410062        	l32r	a4, 0x40354c88
4037c488:	220852        	l8ui	a2, a8, 82
4037c48b:	220d60        	l8ui	a2, a13, 96
4037c48e:	801416        	ee.ldf.64.xp	f1, f1, a8, a4
4037c491:	e800      	l32i.n	a14, a0, 0
4037c493:	d137e2        	l32r	a13, 0x40374d70
4037c496:	c14ce2        	l32r	a12, 0x40374dc8
4037c499:	b2a1b5        	movi	a11, 0x1b5
4037c49c:	a123e2        	l32r	a10, 0x40374d28
4037c49f:	254c06        	call8	0x40382960
4037c4a2:	78c2      	l32i.n	a7, a2, 48
4037c4a4:	773614        	bltu	a6, a7, 0x4037c4bc
4037c4a7:	57b611        	bgeu	a6, a5, 0x4037c4bc
4037c4aa:	6055c0        	sub	a5, a5, a6
4037c4ad:	f68517        	bgeui	a5, 8, 0x4037c4c8
4037c4b0:	d133e2        	l32r	a13, 0x40374d7c
4037c4b3:	c145e2        	l32r	a12, 0x40374dc8
4037c4b6:	b2a1b7        	movi	a11, 0x1b7
4037c4b9:	c6f7ff        	j	0x4037c49c
4037c4bc:	d12fe2        	l32r	a13, 0x40374d78
4037c4bf:	c142e2        	l32r	a12, 0x40374dc8
4037c4c2:	b2a1b6        	movi	a11, 0x1b6
4037c4c5:	c6f4ff        	j	0x4037c49c
4037c4c8:	3b94      	addi.n	a9, a4, 3
4037c4ca:	7cc7      	movi.n	a7, -4
4037c4cc:	707910        	and	a7, a9, a7
4037c4cf:	8b97      	addi.n	a9, a7, 8
4037c4d1:	97b52d        	bgeu	a5, a9, 0x4037c502
4037c4d4:	52c5f8        	addi	a5, a5, -8
4037c4d7:	8ba6      	addi.n	a10, a6, 8
4037c4d9:	8916      	s32i.n	a8, a6, 4
4037c4db:	5906      	s32i.n	a5, a6, 0
4037c4dd:	a982      	s32i.n	a10, a2, 32
4037c4df:	161506        	beqz	a5, 0x4037c544
4037c4e2:	cd05      	mov.n	a12, a5
4037c4e4:	bd03      	mov.n	a11, a3
4037c4e6:	81ecdf        	l32r	a8, 0x40374498
4037c4e9:	e00800        	callx8	a8
4037c4ec:	88e2      	l32i.n	a8, a2, 56
4037c4ee:	5a33      	add.n	a3, a3, a5
4037c4f0:	1b88      	addi.n	a8, a8, 1
4037c4f2:	5044c0        	sub	a4, a4, a5
4037c4f5:	5077c0        	sub	a7, a7, a5
4037c4f8:	89e2      	s32i.n	a8, a2, 56
4037c4fa:	0c45      	movi.n	a5, 4
4037c4fc:	5916      	s32i.n	a5, a6, 4
4037c4fe:	58c2      	l32i.n	a5, a2, 48
4037c500:	5982      	s32i.n	a5, a2, 32
4037c502:	a882      	l32i.n	a10, a2, 32
4037c504:	0c05      	movi.n	a5, 0
4037c506:	490a      	s32i.n	a4, a10, 0
4037c508:	591a      	s32i.n	a5, a10, 4
4037c50a:	8baa      	addi.n	a10, a10, 8
4037c50c:	cd04      	mov.n	a12, a4
4037c50e:	bd03      	mov.n	a11, a3
4037c510:	a982      	s32i.n	a10, a2, 32
4037c512:	81e1df        	l32r	a8, 0x40374498
4037c515:	e00800        	callx8	a8
4037c518:	38e2      	l32i.n	a3, a2, 56
4037c51a:	4882      	l32i.n	a4, a2, 32
4037c51c:	1b33      	addi.n	a3, a3, 1
4037c51e:	39e2      	s32i.n	a3, a2, 56
4037c520:	38d2      	l32i.n	a3, a2, 52
4037c522:	7a74      	add.n	a7, a4, a7
4037c524:	7982      	s32i.n	a7, a2, 32
4037c526:	7073c0        	sub	a7, a3, a7
4037c529:	f68703        	bgeui	a7, 8, 0x4037c530
4037c52c:	38c2      	l32i.n	a3, a2, 48
4037c52e:	3982      	s32i.n	a3, a2, 32
4037c530:	4882      	l32i.n	a4, a2, 32
4037c532:	38b2      	l32i.n	a3, a2, 44
4037c534:	379408        	bne	a4, a3, 0x4037c540
4037c537:	3822      	l32i.n	a3, a2, 8
4037c539:	0c45      	movi.n	a5, 4
4037c53b:	503320        	or	a3, a3, a5
4037c53e:	3922      	s32i.n	a3, a2, 8
4037c540:	4992      	s32i.n	a4, a2, 36
4037c542:	1df0      	retw.n
4037c544:	0c25      	movi.n	a5, 2
4037c546:	86ecff        	j	0x4037c4fc
4037c549:	000000        	ill
4037c54c:	364100        	entry	a1, 32
4037c54f:	40b420        	or	a11, a4, a4
4037c552:	20a220        	or	a10, a2, a2
4037c555:	25c2ff        	call8	0x4037c178
4037c558:	30b320        	or	a11, a3, a3
4037c55b:	cd04      	mov.n	a12, a4
4037c55d:	81cedf        	l32r	a8, 0x40374498
4037c560:	e00800        	callx8	a8
4037c563:	bd0a      	mov.n	a11, a10
4037c565:	ad02      	mov.n	a10, a2
4037c567:	a5c9ff        	call8	0x4037c200
4037c56a:	1df0      	retw.n
4037c56c:	36a100        	entry	a1, 80
4037c56f:	5941      	s32i.n	a5, a1, 16
4037c571:	6951      	s32i.n	a6, a1, 20
4037c573:	7971      	s32i.n	a7, a1, 28
4037c575:	e5ea01        	call8	0x4037e424
4037c578:	522114        	l32i	a5, a1, 80
4037c57b:	62a090        	movi	a6, 144
4037c57e:	5aaa      	add.n	a10, a10, a5
4037c580:	5931      	s32i.n	a5, a1, 12
4037c582:	52a0e4        	movi	a5, 228
4037c585:	a26106        	s32i	a10, a1, 24
4037c588:	606280        	add	a6, a2, a6
4037c58b:	505280        	add	a5, a2, a5
4037c58e:	b22103        	l32i	a11, a1, 12
4037c591:	60a620        	or	a10, a6, a6
4037c594:	654c01        	call8	0x4037da5c
4037c597:	261a07        	beqi	a10, 1, 0x4037c5a2
4037c59a:	72a000        	movi	a7, 0
4037c59d:	2d07      	mov.n	a2, a7
4037c59f:	1df0      	retw.n
4037c5a1:	00          	.byte	00
4037c5a2:	b2afff        	movi	a11, -1
4037c5a5:	50a520        	or	a10, a5, a5
4037c5a8:	e55003        	call8	0x4037fab8
4037c5ab:	20a220        	or	a10, a2, a2
4037c5ae:	656300        	call8	0x4037cbe4
4037c5b1:	7d0a      	mov.n	a7, a10
4037c5b3:	261a02        	beqi	a10, 1, 0x4037c5b9
4037c5b6:	c62000        	j	0x4037c63d
4037c5b9:	9822      	l32i.n	a9, a2, 8
4037c5bb:	0c2c      	movi.n	a12, 2
4037c5bd:	90cc10        	and	a12, a12, a9
4037c5c0:	8852      	l32i.n	a8, a2, 20
4037c5c2:	d841      	l32i.n	a13, a1, 16
4037c5c4:	b2c12c        	addi	a11, a1, 44
4037c5c7:	8c2c      	beqz.n	a12, 0x4037c5cd
4037c5c9:	c871      	l32i.n	a12, a1, 28
4037c5cb:	0c0b      	movi.n	a11, 0
4037c5cd:	20a220        	or	a10, a2, a2
4037c5d0:	e00800        	callx8	a8
4037c5d3:	822202        	l32i	a8, a2, 8
4037c5d6:	a26300        	s32i	a10, a3, 0
4037c5d9:	076843        	bbci	a8, 0, 0x4037c620
4037c5dc:	0c0c      	movi.n	a12, 0
4037c5de:	c7143e        	beq	a4, a12, 0x4037c620
4037c5e1:	8851      	l32i.n	a8, a1, 20
4037c5e3:	c71839        	beq	a8, a12, 0x4037c620
4037c5e6:	88b1      	l32i.n	a8, a1, 44
4037c5e8:	661832        	bnei	a8, 1, 0x4037c61e
4037c5eb:	8852      	l32i.n	a8, a2, 20
4037c5ed:	d851      	l32i.n	a13, a1, 20
4037c5ef:	b2c12c        	addi	a11, a1, 44
4037c5f2:	ad02      	mov.n	a10, a2
4037c5f4:	e00800        	callx8	a8
4037c5f7:	a904      	s32i.n	a10, a4, 0
4037c5f9:	3803      	l32i.n	a3, a3, 0
4037c5fb:	373a0e        	bltu	a10, a3, 0x4037c60d
4037c5fe:	d1f3e1        	l32r	a13, 0x40374dcc
4037c601:	c1f3e1        	l32r	a12, 0x40374dd0
4037c604:	b2a31d        	movi	a11, 0x31d
4037c607:	a1c8e1        	l32r	a10, 0x40374d28
4037c60a:	653506        	call8	0x40382960
4037c60d:	38b1      	l32i.n	a3, a1, 44
4037c60f:	8cd3      	beqz.n	a3, 0x4037c620
4037c611:	d1f0e1        	l32r	a13, 0x40374dd4
4037c614:	c1efe1        	l32r	a12, 0x40374dd0
4037c617:	b2a31e        	movi	a11, 0x31e
4037c61a:	46faff        	j	0x4037c607
4037c61d:	00c904        	extui	a12, a0, 9, 1
4037c620:	28e2      	l32i.n	a2, a2, 56
4037c622:	ad05      	mov.n	a10, a5
4037c624:	655d03        	call8	0x4037fbfc
4037c627:	e61202        	bgei	a2, 1, 0x4037c62d
4037c62a:	c6dbff        	j	0x4037c59d
4037c62d:	0c0d      	movi.n	a13, 0
4037c62f:	cd0d      	mov.n	a12, a13
4037c631:	bd0d      	mov.n	a11, a13
4037c633:	ad06      	mov.n	a10, a6
4037c635:	65ef00        	call8	0x4037d52c
4037c638:	46d8ff        	j	0x4037c59d
4037c63b:	00          	.byte	00
4037c63c:	009221        	srai	a9, a0, 2
4037c63f:	14          	.byte	0x14
4037c640:	260909        	beqi	a9, -1, 0x4037c64d
4037c643:	25de01        	call8	0x4037e424
4037c646:	8861      	l32i.n	a8, a1, 24
4037c648:	a0a8c0        	sub	a10, a8, a10
4037c64b:	a931      	s32i.n	a10, a1, 12
4037c64d:	ad05      	mov.n	a10, a5
4037c64f:	e55a03        	call8	0x4037fbfc
4037c652:	922114        	l32i	a9, a1, 80
4037c655:	8831      	l32i.n	a8, a1, 12
4037c657:	873902        	bltu	a9, a8, 0x4037c65d
4037c65a:	06ccff        	j	0x4037c58e
4037c65d:	46ceff        	j	0x4037c59a
4037c660:	368100        	entry	a1, 64
4037c663:	708720        	or	a8, a7, a7
4037c666:	72a0e4        	movi	a7, 228
4037c669:	707280        	add	a7, a2, a7
4037c66c:	7cfb      	movi.n	a11, -1
4037c66e:	ad07      	mov.n	a10, a7
4037c670:	8921      	s32i.n	a8, a1, 8
4037c672:	5931      	s32i.n	a5, a1, 12
4037c674:	254403        	call8	0x4037fab8
4037c677:	ad02      	mov.n	a10, a2
4037c679:	a55600        	call8	0x4037cbe4
4037c67c:	5d0a      	mov.n	a5, a10
4037c67e:	8821      	l32i.n	a8, a1, 8
4037c680:	d831      	l32i.n	a13, a1, 12
4037c682:	261a02        	beqi	a10, 1, 0x4037c688
4037c685:	462000        	j	0x4037c70a
4037c688:	a822      	l32i.n	a10, a2, 8
4037c68a:	0c2c      	movi.n	a12, 2
4037c68c:	a0cc10        	and	a12, a12, a10
4037c68f:	9852      	l32i.n	a9, a2, 20
4037c691:	b2c11c        	addi	a11, a1, 28
4037c694:	8c2c      	beqz.n	a12, 0x4037c69a
4037c696:	cd08      	mov.n	a12, a8
4037c698:	0c0b      	movi.n	a11, 0
4037c69a:	ad02      	mov.n	a10, a2
4037c69c:	e00900        	callx8	a9
4037c69f:	8822      	l32i.n	a8, a2, 8
4037c6a1:	a903      	s32i.n	a10, a3, 0
4037c6a3:	076841        	bbci	a8, 0, 0x4037c6e8
4037c6a6:	0c0c      	movi.n	a12, 0
4037c6a8:	c7143c        	beq	a4, a12, 0x4037c6e8
4037c6ab:	c71639        	beq	a6, a12, 0x4037c6e8
4037c6ae:	8871      	l32i.n	a8, a1, 28
4037c6b0:	661831        	bnei	a8, 1, 0x4037c6e5
4037c6b3:	8852      	l32i.n	a8, a2, 20
4037c6b5:	dd06      	mov.n	a13, a6
4037c6b7:	b2c11c        	addi	a11, a1, 28
4037c6ba:	ad02      	mov.n	a10, a2
4037c6bc:	e00800        	callx8	a8
4037c6bf:	a904      	s32i.n	a10, a4, 0
4037c6c1:	3803      	l32i.n	a3, a3, 0
4037c6c3:	373a0e        	bltu	a10, a3, 0x4037c6d5
4037c6c6:	d1c1e1        	l32r	a13, 0x40374dcc
4037c6c9:	c1c3e1        	l32r	a12, 0x40374dd8
4037c6cc:	b2a353        	movi	a11, 0x353
4037c6cf:	a196e1        	l32r	a10, 0x40374d28
4037c6d2:	e52806        	call8	0x40382960
4037c6d5:	3871      	l32i.n	a3, a1, 28
4037c6d7:	8cd3      	beqz.n	a3, 0x4037c6e8
4037c6d9:	d1bee1        	l32r	a13, 0x40374dd4
4037c6dc:	c1bfe1        	l32r	a12, 0x40374dd8
4037c6df:	b2a354        	movi	a11, 0x354
4037c6e2:	46faff        	j	0x4037c6cf
4037c6e5:	c26400        	s32i	a12, a4, 0
4037c6e8:	42220e        	l32i	a4, a2, 56
4037c6eb:	403f31        	srai	a3, a4, 31
4037c6ee:	4033c0        	sub	a3, a3, a4
4037c6f1:	303f05        	extui	a3, a3, 31, 1
4037c6f4:	ad07      	mov.n	a10, a7
4037c6f6:	655003        	call8	0x4037fbfc
4037c6f9:	661309        	bnei	a3, 1, 0x4037c706
4037c6fc:	a2a090        	movi	a10, 144
4037c6ff:	0c0b      	movi.n	a11, 0
4037c701:	aaa2      	add.n	a10, a2, a10
4037c703:	e51301        	call8	0x4037d840
4037c706:	2d05      	mov.n	a2, a5
4037c708:	1df0      	retw.n
4037c70a:	0c03      	movi.n	a3, 0
4037c70c:	5d03      	mov.n	a5, a3
4037c70e:	86f8ff        	j	0x4037c6f4
4037c711:	000000        	ill
4037c714:	364100        	entry	a1, 32
4037c717:	88c2      	l32i.n	a8, a2, 48
4037c719:	87b30e        	bgeu	a3, a8, 0x4037c72b
4037c71c:	d1b0e1        	l32r	a13, 0x40374ddc
4037c71f:	c1b0e1        	l32r	a12, 0x40374de0
4037c722:	b2a29d        	movi	a11, 0x29d
4037c725:	a180e1        	l32r	a10, 0x40374d28
4037c728:	652306        	call8	0x40382960
4037c72b:	88d2      	l32i.n	a8, a2, 52
4037c72d:	87330b        	bltu	a3, a8, 0x4037c73c
4037c730:	d1ade1        	l32r	a13, 0x40374de4
4037c733:	c1abe1        	l32r	a12, 0x40374de0
4037c736:	b2a29e        	movi	a11, 0x29e
4037c739:	06faff        	j	0x4037c725
4037c73c:	38a2      	l32i.n	a3, a2, 40
4037c73e:	8822      	l32i.n	a8, a2, 8
4037c740:	39b2      	s32i.n	a3, a2, 44
4037c742:	276806        	bbci	a8, 2, 0x4037c74c
4037c745:	7cb3      	movi.n	a3, -5
4037c747:	308810        	and	a8, a8, a3
4037c74a:	8922      	s32i.n	a8, a2, 8
4037c74c:	1df0      	retw.n
4037c74e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037c751:	410098        	l32r	a4, 0x40362754
4037c754:	82          	.byte	0x82
4037c755:	88c2      	l32i.n	a8, a2, 48
4037c757:	873904        	bltu	a9, a8, 0x4037c75f
4037c75a:	88d2      	l32i.n	a8, a2, 52
4037c75c:	87390e        	bltu	a9, a8, 0x4037c76e
4037c75f:	d186e1        	l32r	a13, 0x40374d78
4037c762:	c1a1e1        	l32r	a12, 0x40374de8
4037c765:	a170e1        	l32r	a10, 0x40374d28
4037c768:	b2a147        	movi	a11, 0x147
4037c76b:	651f06        	call8	0x40382960
4037c76e:	a8b2      	l32i.n	a10, a2, 44
4037c770:	0c18      	movi.n	a8, 1
4037c772:	a7990b        	bne	a9, a10, 0x4037c781
4037c775:	2822      	l32i.n	a2, a2, 8
4037c777:	202204        	extui	a2, a2, 2, 1
4037c77a:	802230        	xor	a2, a2, a8
4037c77d:	1df0      	retw.n
4037c77f:	0000a7        	ee.stf.64.xp	f0, f10, a0, a0
4037c782:	b90c      	s32i.n	a11, a12, 0
4037c784:	909ac0        	sub	a9, a10, a9
4037c787:	37b901        	bgeu	a9, a3, 0x4037c78c
4037c78a:	0c08      	movi.n	a8, 0
4037c78c:	2d08      	mov.n	a2, a8
4037c78e:	c6faff        	j	0x4037c77d
4037c791:	2802      	l32i.n	a2, a2, 0
4037c793:	a099c0        	sub	a9, a9, a10
4037c796:	9092c0        	sub	a9, a2, a9
4037c799:	86faff        	j	0x4037c787
4037c79c:	364100        	entry	a1, 32
4037c79f:	8822      	l32i.n	a8, a2, 8
4037c7a1:	27e821        	bbsi	a8, 2, 0x4037c7c6
4037c7a4:	9882      	l32i.n	a9, a2, 32
4037c7a6:	88b2      	l32i.n	a8, a2, 44
4037c7a8:	9088c0        	sub	a8, a8, a9
4037c7ab:	9802      	l32i.n	a9, a2, 0
4037c7ad:	e61801        	bgei	a8, 1, 0x4037c7b2
4037c7b0:	9a88      	add.n	a8, a8, a9
4037c7b2:	2d08      	mov.n	a2, a8
4037c7b4:	87b910        	bgeu	a9, a8, 0x4037c7c8
4037c7b7:	d18de1        	l32r	a13, 0x40374dec
4037c7ba:	c18de1        	l32r	a12, 0x40374df0
4037c7bd:	a15ae1        	l32r	a10, 0x40374d28
4037c7c0:	b2a124        	movi	a11, 0x124
4037c7c3:	e51906        	call8	0x40382960
4037c7c6:	0c02      	movi.n	a2, 0
4037c7c8:	1df0      	retw.n
4037c7ca:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037c7cd:	41005d        	l32r	a4, 0x40353bd0
4037c7d0:	02dc02        	addmi	a0, a12, 0x200
4037c7d3:	d188e1        	l32r	a13, 0x40374df4
4037c7d6:	c188e1        	l32r	a12, 0x40374df8
4037c7d9:	b2a36a        	movi	a11, 0x36a
4037c7dc:	a153e1        	l32r	a10, 0x40374d28
4037c7df:	101120        	or	a1, a1, a1
4037c7e2:	e51706        	call8	0x40382960
4037c7e5:	b6330c        	bltui	a3, 3, 0x4037c7f5
4037c7e8:	d185e1        	l32r	a13, 0x40374dfc
4037c7eb:	c183e1        	l32r	a12, 0x40374df8
4037c7ee:	b2a36b        	movi	a11, 0x36b
4037c7f1:	c6f9ff        	j	0x4037c7dc
4037c7f4:	002623        	sext	a2, a6, 7
4037c7f7:	073b52        	bltu	a11, a0, 0x4037c84d
4037c7fa:	22affc        	movi	a2, -4
4037c7fd:	205510        	and	a5, a5, a2
4037c800:	b2a0ec        	movi	a11, 236
4037c803:	a2a001        	movi	a10, 1
4037c806:	652e06        	call8	0x40382aec
4037c809:	2d0a      	mov.n	a2, a10
4037c80b:	0c16      	movi.n	a6, 1
4037c80d:	0c04      	movi.n	a4, 0
4037c80f:	ad05      	mov.n	a10, a5
4037c811:	204683        	moveqz	a4, a6, a2
4037c814:	a52506        	call8	0x40382a70
4037c817:	404074        	extui	a4, a4, 0, 8
4037c81a:	7d0a      	mov.n	a7, a10
4037c81c:	cc34      	bnez.n	a4, 0x4037c823
4037c81e:	a04683        	moveqz	a4, a6, a10
4037c821:	8cc4      	beqz.n	a4, 0x4037c831
4037c823:	ad02      	mov.n	a10, a2
4037c825:	a52606        	call8	0x40382a90
4037c828:	ad07      	mov.n	a10, a7
4037c82a:	652606        	call8	0x40382a90
4037c82d:	0c02      	movi.n	a2, 0
4037c82f:	1df0      	retw.n
4037c831:	d2c23c        	addi	a13, a2, 60
4037c834:	cd04      	mov.n	a12, a4
4037c836:	bd04      	mov.n	a11, a4
4037c838:	0c3e      	movi.n	a14, 3
4037c83a:	ad06      	mov.n	a10, a6
4037c83c:	e5b600        	call8	0x4037d3ac
4037c83f:	d2a090        	movi	a13, 144
4037c842:	dad2      	add.n	a13, a2, a13
4037c844:	cd04      	mov.n	a12, a4
4037c846:	bd04      	mov.n	a11, a4
4037c848:	0c3e      	movi.n	a14, 3
4037c84a:	ad06      	mov.n	a10, a6
4037c84c:	e5b500        	call8	0x4037d3ac
4037c84f:	dd07      	mov.n	a13, a7
4037c851:	cd02      	mov.n	a12, a2
4037c853:	30b320        	or	a11, a3, a3
4037c856:	50a520        	or	a10, a5, a5
4037c859:	a5b0ff        	call8	0x4037c364
4037c85c:	c6f3ff        	j	0x4037c82f
4037c85f:	00          	.byte	00
4037c860:	366100        	entry	a1, 48
4037c863:	3921      	s32i.n	a3, a1, 8
4037c865:	ccd2      	bnez.n	a2, 0x4037c876
4037c867:	d166e1        	l32r	a13, 0x40374e00
4037c86a:	c166e1        	l32r	a12, 0x40374e04
4037c86d:	b2a403        	movi	a11, 0x403
4037c870:	a12ee1        	l32r	a10, 0x40374d28
4037c873:	e50e06        	call8	0x40382960
4037c876:	0c06      	movi.n	a6, 0
4037c878:	0c13      	movi.n	a3, 1
4037c87a:	403693        	movnez	a3, a6, a4
4037c87d:	6821      	l32i.n	a6, a1, 8
4037c87f:	303074        	extui	a3, a3, 0, 8
4037c882:	ccf6      	bnez.n	a6, 0x4037c895
4037c884:	ccd3      	bnez.n	a3, 0x4037c895
4037c886:	d160e1        	l32r	a13, 0x40374e08
4037c889:	c15ee1        	l32r	a12, 0x40374e04
4037c88c:	b2a404        	movi	a11, 0x404
4037c88f:	46f7ff        	j	0x4037c870
4037c892:	000000        	ill
4037c895:	6812      	l32i.n	a6, a2, 4
4037c897:	47b602        	bgeu	a6, a4, 0x4037c89d
4037c89a:	061f00        	j	0x4037c91a
4037c89d:	6822      	l32i.n	a6, a2, 8
4037c89f:	176604        	bbci	a6, 1, 0x4037c8a7
4037c8a2:	0c16      	movi.n	a6, 1
4037c8a4:	564307        	bnez	a3, 0x4037c91c
4037c8a7:	e5b701        	call8	0x4037e424
4037c8aa:	32c23c        	addi	a3, a2, 60
4037c8ad:	5aaa      	add.n	a10, a10, a5
4037c8af:	3911      	s32i.n	a3, a1, 4
4037c8b1:	32a0e4        	movi	a3, 228
4037c8b4:	a931      	s32i.n	a10, a1, 12
4037c8b6:	7d05      	mov.n	a7, a5
4037c8b8:	3a32      	add.n	a3, a2, a3
4037c8ba:	a811      	l32i.n	a10, a1, 4
4037c8bc:	bd07      	mov.n	a11, a7
4037c8be:	e51901        	call8	0x4037da5c
4037c8c1:	661a55        	bnei	a10, 1, 0x4037c91a
4037c8c4:	7cfb      	movi.n	a11, -1
4037c8c6:	ad03      	mov.n	a10, a3
4037c8c8:	e51e03        	call8	0x4037fab8
4037c8cb:	6832      	l32i.n	a6, a2, 12
4037c8cd:	bd04      	mov.n	a11, a4
4037c8cf:	ad02      	mov.n	a10, a2
4037c8d1:	e00600        	callx8	a6
4037c8d4:	6d0a      	mov.n	a6, a10
4037c8d6:	661a2a        	bnei	a10, 1, 0x4037c904
4037c8d9:	b821      	l32i.n	a11, a1, 8
4037c8db:	5842      	l32i.n	a5, a2, 16
4037c8dd:	cd04      	mov.n	a12, a4
4037c8df:	ad02      	mov.n	a10, a2
4037c8e1:	e00500        	callx8	a5
4037c8e4:	ad02      	mov.n	a10, a2
4037c8e6:	65ebff        	call8	0x4037c79c
4037c8e9:	4d0a      	mov.n	a4, a10
4037c8eb:	ad03      	mov.n	a10, a3
4037c8ed:	e53003        	call8	0x4037fbfc
4037c8f0:	ece4      	bnez.n	a4, 0x4037c922
4037c8f2:	0c0d      	movi.n	a13, 0
4037c8f4:	a2a090        	movi	a10, 144
4037c8f7:	cd0d      	mov.n	a12, a13
4037c8f9:	bd0d      	mov.n	a11, a13
4037c8fb:	aaa2      	add.n	a10, a2, a10
4037c8fd:	e5c200        	call8	0x4037d52c
4037c900:	060600        	j	0x4037c91c
4037c903:	002605        	extui	a2, a0, 22, 1
4037c906:	0a10      	add.n	a1, a0, a0
4037c908:	1120a5        	l32r	a1, 0x40365d88
4037c90b:	b10168        	l32r	a11, 0x40356910
4037c90e:	31a076        	l32r	a3, 0x4035a390
4037c911:	c0          	.byte	0xc0
4037c912:	ad03      	mov.n	a10, a3
4037c914:	652e03        	call8	0x4037fbfc
4037c917:	77b59f        	bgeu	a5, a7, 0x4037c8ba
4037c91a:	0c06      	movi.n	a6, 0
4037c91c:	2d06      	mov.n	a2, a6
4037c91e:	1df0      	retw.n
4037c920:	0000d2        	quos	a0, a0, a0
4037c923:	a000a2        	muluh	a0, a0, a10
4037c926:	2101d0        	l32r	a2, 0x4037092c
4037c929:	cd          	.byte	0xcd
4037c92a:	20          	.byte	0x20
4037c92b:	bd0d      	mov.n	a11, a13
4037c92d:	e5bf00        	call8	0x4037d52c
4037c930:	86efff        	j	0x4037c8f2
4037c933:	003641        	srli	a3, a0, 6
4037c936:	0056e2        	remu	a5, a6, a0
4037c939:	00d131        	srai	a13, a0, 17
4037c93c:	e1c133        	l32r	a14, 0x40349840
4037c93f:	e1b2a4        	l32r	a14, 0x40365c08
4037c942:	40          	.byte	0x40
4037c943:	a1f9e0        	l32r	a10, 0x40374d28
4037c946:	a50106        	call8	0x40382960
4037c949:	0c18      	movi.n	a8, 1
4037c94b:	0c06      	movi.n	a6, 0
4037c94d:	408693        	movnez	a8, a6, a4
4037c950:	808074        	extui	a8, a8, 0, 8
4037c953:	67930e        	bne	a3, a6, 0x4037c965
4037c956:	67980b        	bne	a8, a6, 0x4037c965
4037c959:	d12be1        	l32r	a13, 0x40374e08
4037c95c:	c12ce1        	l32r	a12, 0x40374e0c
4037c95f:	b2a441        	movi	a11, 0x441
4037c962:	46f7ff        	j	0x4037c943
4037c965:	6812      	l32i.n	a6, a2, 4
4037c967:	47b607        	bgeu	a6, a4, 0x4037c972
4037c96a:	0c06      	movi.n	a6, 0
4037c96c:	2d06      	mov.n	a2, a6
4037c96e:	1df0      	retw.n
4037c970:	00          	.byte	00
4037c971:	006822        	orb	b6, b8, b0
4037c974:	176604        	bbci	a6, 1, 0x4037c97c
4037c977:	0c16      	movi.n	a6, 1
4037c979:	56f8fe        	bnez	a8, 0x4037c96c
4037c97c:	72a0e4        	movi	a7, 228
4037c97f:	7a72      	add.n	a7, a2, a7
4037c981:	7cfb      	movi.n	a11, -1
4037c983:	ad07      	mov.n	a10, a7
4037c985:	251303        	call8	0x4037fab8
4037c988:	6832      	l32i.n	a6, a2, 12
4037c98a:	bd04      	mov.n	a11, a4
4037c98c:	ad02      	mov.n	a10, a2
4037c98e:	e00600        	callx8	a6
4037c991:	6d0a      	mov.n	a6, a10
4037c993:	661a35        	bnei	a10, 1, 0x4037c9cc
4037c996:	8842      	l32i.n	a8, a2, 16
4037c998:	bd03      	mov.n	a11, a3
4037c99a:	cd04      	mov.n	a12, a4
4037c99c:	ad02      	mov.n	a10, a2
4037c99e:	e00800        	callx8	a8
4037c9a1:	ad02      	mov.n	a10, a2
4037c9a3:	a5dfff        	call8	0x4037c79c
4037c9a6:	0c03      	movi.n	a3, 0
4037c9a8:	a03693        	movnez	a3, a6, a10
4037c9ab:	ad07      	mov.n	a10, a7
4037c9ad:	e52403        	call8	0x4037fbfc
4037c9b0:	661307        	bnei	a3, 1, 0x4037c9bb
4037c9b3:	bd05      	mov.n	a11, a5
4037c9b5:	a2c23c        	addi	a10, a2, 60
4037c9b8:	65e800        	call8	0x4037d840
4037c9bb:	6616ab        	bnei	a6, 1, 0x4037c96a
4037c9be:	a2a090        	movi	a10, 144
4037c9c1:	bd05      	mov.n	a11, a5
4037c9c3:	aaa2      	add.n	a10, a2, a10
4037c9c5:	a5e700        	call8	0x4037d840
4037c9c8:	06e8ff        	j	0x4037c96c
4037c9cb:	000c03        	rsr.scompare1	a0
4037c9ce:	6d03      	mov.n	a6, a3
4037c9d0:	c6f5ff        	j	0x4037c9ab
4037c9d3:	003681        	src	a3, a6, a0
4037c9d6:	0056e2        	remu	a5, a6, a0
4037c9d9:	00d109        	l32e	a0, a1, -12
4037c9dc:	e1c10c        	l32r	a14, 0x4033fce0
4037c9df:	e1a1d2        	l32r	a14, 0x40371464
4037c9e2:	e0b2a4        	extui	a11, a14, 2, 11
4037c9e5:	67a5f7        	bge	a5, a6, 0x4037c9e0
4037c9e8:	050c0f        	call0	0x4038baac
4037c9eb:	20a220        	or	a10, a2, a2
4037c9ee:	426100        	s32i	a4, a1, 0
4037c9f1:	ed0f      	mov.n	a14, a15
4037c9f3:	d2c11c        	addi	a13, a1, 28
4037c9f6:	cd0f      	mov.n	a12, a15
4037c9f8:	b2c118        	addi	a11, a1, 24
4037c9fb:	25b7ff        	call8	0x4037c56c
4037c9fe:	0c02      	movi.n	a2, 0
4037ca00:	661a08        	bnei	a10, 1, 0x4037ca0c
4037ca03:	271303        	beq	a3, a2, 0x4037ca0a
4037ca06:	2871      	l32i.n	a2, a1, 28
4037ca08:	2903      	s32i.n	a2, a3, 0
4037ca0a:	2861      	l32i.n	a2, a1, 24
4037ca0c:	1df0      	retw.n
4037ca0e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037ca11:	6100ad        	l32r	a6, 0x40367e14
4037ca14:	02fd04        	s32ri	a0, a13, 16
4037ca17:	56e200        	bnez	a2, 0x4037ca29
4037ca1a:	d1f9e0        	l32r	a13, 0x40374e00
4037ca1d:	c1fde0        	l32r	a12, 0x40374e14
4037ca20:	b2a4f5        	movi	a11, 0x4f5
4037ca23:	a1c1e0        	l32r	a10, 0x40374d28
4037ca26:	a5f305        	call8	0x40382960
4037ca29:	2822      	l32i.n	a2, a2, 8
4037ca2b:	17e20b        	bbsi	a2, 1, 0x4037ca3a
4037ca2e:	d1fae0        	l32r	a13, 0x40374e18
4037ca31:	c1f8e0        	l32r	a12, 0x40374e14
4037ca34:	b2a4f6        	movi	a11, 0x4f6
4037ca37:	06faff        	j	0x4037ca23
4037ca3a:	cc24      	bnez.n	a4, 0x4037ca40
4037ca3c:	0c02      	movi.n	a2, 0
4037ca3e:	1df0      	retw.n
4037ca40:	0c0e      	movi.n	a14, 0
4037ca42:	cbd1      	addi.n	a13, a1, 12
4037ca44:	cd0e      	mov.n	a12, a14
4037ca46:	b2c108        	addi	a11, a1, 8
4037ca49:	65c1ff        	call8	0x4037c660
4037ca4c:	661aec        	bnei	a10, 1, 0x4037ca3c
4037ca4f:	8c23      	beqz.n	a3, 0x4037ca55
4037ca51:	2831      	l32i.n	a2, a1, 12
4037ca53:	2903      	s32i.n	a2, a3, 0
4037ca55:	2821      	l32i.n	a2, a1, 8
4037ca57:	c6f8ff        	j	0x4037ca3e
4037ca5a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037ca5d:	410056        	l32r	a4, 0x40352260
4037ca60:	e200d1        	l8ui	a14, a0, 209
4037ca63:	e7e0c1        	bbsi	a0, 14, 0x4037ca28
4037ca66:	ed          	.byte	0xed
4037ca67:	e0b2a5        	extui	a11, a14, 18, 11
4037ca6a:	0ba1      	addi.n	a10, a1, -1
4037ca6c:	af          	.byte	0xaf
4037ca6d:	e0          	.byte	0xe0
4037ca6e:	25ef05        	call8	0x40382960
4037ca71:	ccc3      	bnez.n	a3, 0x4037ca81
4037ca73:	d1ebe0        	l32r	a13, 0x40374e20
4037ca76:	c1e9e0        	l32r	a12, 0x40374e1c
4037ca79:	b2a50c        	movi	a11, 0x50c
4037ca7c:	c6faff        	j	0x4037ca6b
4037ca7f:	000042        	xorb	b0, b0, b0
4037ca82:	a0e440        	nsa	a10, a4
4037ca85:	42          	.byte	0x42
4037ca86:	80          	.byte	0x80
4037ca87:	7cfb      	movi.n	a11, -1
4037ca89:	ad04      	mov.n	a10, a4
4037ca8b:	e50203        	call8	0x4037fab8
4037ca8e:	8862      	l32i.n	a8, a2, 24
4037ca90:	bd03      	mov.n	a11, a3
4037ca92:	ad02      	mov.n	a10, a2
4037ca94:	e00800        	callx8	a8
4037ca97:	ad04      	mov.n	a10, a4
4037ca99:	251603        	call8	0x4037fbfc
4037ca9c:	0c0d      	movi.n	a13, 0
4037ca9e:	cd0d      	mov.n	a12, a13
4037caa0:	bd0d      	mov.n	a11, a13
4037caa2:	a2c23c        	addi	a10, a2, 60
4037caa5:	65a800        	call8	0x4037d52c
4037caa8:	1df0      	retw.n
4037caaa:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037caad:	410056        	l32r	a4, 0x403522b0
4037cab0:	e200d1        	l8ui	a14, a0, 209
4037cab3:	d3          	.byte	0xd3
4037cab4:	e0c1db        	movt.s	f12, f1, b14
4037cab7:	e0b2a5        	extui	a11, a14, 18, 11
4037caba:	17a19b        	bge	a1, a1, 0x4037ca59
4037cabd:	e025ea        	utrunc.s	a2, f5, 14
4037cac0:	05ccc3        	call0	0x40340784
4037cac3:	d1d7e0        	l32r	a13, 0x40374e20
4037cac6:	c1d7e0        	l32r	a12, 0x40374e24
4037cac9:	b2a518        	movi	a11, 0x518
4037cacc:	c6faff        	j	0x4037cabb
4037cacf:	00          	.byte	00
4037cad0:	0052a0        	addx4	a5, a2, a0
4037cad3:	e45052        	ee.st.qacc_h.h.32.ip	a14, -192
4037cad6:	80          	.byte	0x80
4037cad7:	7cfb      	movi.n	a11, -1
4037cad9:	ad05      	mov.n	a10, a5
4037cadb:	e5fd02        	call8	0x4037fab8
4037cade:	8862      	l32i.n	a8, a2, 24
4037cae0:	bd03      	mov.n	a11, a3
4037cae2:	ad02      	mov.n	a10, a2
4037cae4:	e00800        	callx8	a8
4037cae7:	ad05      	mov.n	a10, a5
4037cae9:	251103        	call8	0x4037fbfc
4037caec:	bd04      	mov.n	a11, a4
4037caee:	a2c23c        	addi	a10, a2, 60
4037caf1:	e5d400        	call8	0x4037d840
4037caf4:	1df0      	retw.n
4037caf6:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037caf9:	410056        	l32r	a4, 0x403522fc
4037cafc:	e200d1        	l8ui	a14, a0, 209
4037caff:	c0e0c1        	mul16u	a14, a0, a12
4037cb02:	c9e0      	s32i.n	a12, a0, 56
4037cb04:	a189e0        	l32r	a10, 0x40374d28
4037cb07:	b2a523        	movi	a11, 0x523
4037cb0a:	65e505        	call8	0x40382960
4037cb0d:	a2c23c        	addi	a10, a2, 60
4037cb10:	253301        	call8	0x4037de44
4037cb13:	a2a090        	movi	a10, 144
4037cb16:	aaa2      	add.n	a10, a2, a10
4037cb18:	a53201        	call8	0x4037de44
4037cb1b:	8822      	l32i.n	a8, a2, 8
4037cb1d:	37e809        	bbsi	a8, 3, 0x4037cb2a
4037cb20:	a8c2      	l32i.n	a10, a2, 48
4037cb22:	e5f605        	call8	0x40382a90
4037cb25:	ad02      	mov.n	a10, a2
4037cb27:	a5f605        	call8	0x40382a90
4037cb2a:	1df0      	retw.n
4037cb2c:	364100        	entry	a1, 32
4037cb2f:	56e200        	bnez	a2, 0x4037cb41
4037cb32:	d1b3e0        	l32r	a13, 0x40374e00
4037cb35:	c1bde0        	l32r	a12, 0x40374e2c
4037cb38:	a17ce0        	l32r	a10, 0x40374d28
4037cb3b:	b2a535        	movi	a11, 0x535
4037cb3e:	25e205        	call8	0x40382960
4037cb41:	2812      	l32i.n	a2, a2, 4
4037cb43:	1df0      	retw.n
4037cb45:	000000        	ill
4037cb48:	364100        	entry	a1, 32
4037cb4b:	56e200        	bnez	a2, 0x4037cb5d
4037cb4e:	d1ace0        	l32r	a13, 0x40374e00
4037cb51:	c1b7e0        	l32r	a12, 0x40374e30
4037cb54:	a175e0        	l32r	a10, 0x40374d28
4037cb57:	b2a53c        	movi	a11, 0x53c
4037cb5a:	65e005        	call8	0x40382960
4037cb5d:	32a0e4        	movi	a3, 228
4037cb60:	3a32      	add.n	a3, a2, a3
4037cb62:	7cfb      	movi.n	a11, -1
4037cb64:	ad03      	mov.n	a10, a3
4037cb66:	25f502        	call8	0x4037fab8
4037cb69:	8872      	l32i.n	a8, a2, 28
4037cb6b:	ad02      	mov.n	a10, a2
4037cb6d:	e00800        	callx8	a8
4037cb70:	2d0a      	mov.n	a2, a10
4037cb72:	ad03      	mov.n	a10, a3
4037cb74:	650803        	call8	0x4037fbfc
4037cb77:	1df0      	retw.n
4037cb79:	000000        	ill
4037cb7c:	366100        	entry	a1, 48
4037cb7f:	9d07      	mov.n	a9, a7
4037cb81:	dc02      	bnez.n	a2, 0x4037cb95
4037cb83:	d19fe0        	l32r	a13, 0x40374e00
4037cb86:	c1abe0        	l32r	a12, 0x40374e34
4037cb89:	a167e0        	l32r	a10, 0x40374d28
4037cb8c:	b2a57b        	movi	a11, 0x57b
4037cb8f:	101120        	or	a1, a1, a1
4037cb92:	e5dc05        	call8	0x40382960
4037cb95:	72a0e4        	movi	a7, 228
4037cb98:	7a72      	add.n	a7, a2, a7
4037cb9a:	7cfb      	movi.n	a11, -1
4037cb9c:	ad07      	mov.n	a10, a7
4037cb9e:	9931      	s32i.n	a9, a1, 12
4037cba0:	65f102        	call8	0x4037fab8
4037cba3:	9831      	l32i.n	a9, a1, 12
4037cba5:	8c73      	beqz.n	a3, 0x4037cbb0
4037cba7:	88b2      	l32i.n	a8, a2, 44
4037cba9:	a8c2      	l32i.n	a10, a2, 48
4037cbab:	a088c0        	sub	a8, a8, a10
4037cbae:	8903      	s32i.n	a8, a3, 0
4037cbb0:	8c84      	beqz.n	a4, 0x4037cbbc
4037cbb2:	88a2      	l32i.n	a8, a2, 40
4037cbb4:	32220c        	l32i	a3, a2, 48
4037cbb7:	3088c0        	sub	a8, a8, a3
4037cbba:	8904      	s32i.n	a8, a4, 0
4037cbbc:	8c85      	beqz.n	a5, 0x4037cbc8
4037cbbe:	8892      	l32i.n	a8, a2, 36
4037cbc0:	32220c        	l32i	a3, a2, 48
4037cbc3:	3088c0        	sub	a8, a8, a3
4037cbc6:	8905      	s32i.n	a8, a5, 0
4037cbc8:	8c86      	beqz.n	a6, 0x4037cbd4
4037cbca:	8882      	l32i.n	a8, a2, 32
4037cbcc:	32220c        	l32i	a3, a2, 48
4037cbcf:	3088c0        	sub	a8, a8, a3
4037cbd2:	8906      	s32i.n	a8, a6, 0
4037cbd4:	8c29      	beqz.n	a9, 0x4037cbda
4037cbd6:	28e2      	l32i.n	a2, a2, 56
4037cbd8:	2909      	s32i.n	a2, a9, 0
4037cbda:	ad07      	mov.n	a10, a7
4037cbdc:	e50103        	call8	0x4037fbfc
4037cbdf:	1df0      	retw.n
4037cbe1:	000000        	ill
4037cbe4:	364100        	entry	a1, 32
4037cbe7:	9822      	l32i.n	a9, a2, 8
4037cbe9:	8d02      	mov.n	a8, a2
4037cbeb:	176909        	bbci	a9, 1, 0x4037cbf8
4037cbee:	b8a2      	l32i.n	a11, a2, 40
4037cbf0:	a8b2      	l32i.n	a10, a2, 44
4037cbf2:	22a000        	movi	a2, 0
4037cbf5:	a79b13        	bne	a11, a10, 0x4037cc0c
4037cbf8:	a8e8      	l32i.n	a10, a8, 56
4037cbfa:	0c02      	movi.n	a2, 0
4037cbfc:	a61a0c        	blti	a10, 1, 0x4037cc0c
4037cbff:	a8a8      	l32i.n	a10, a8, 40
4037cc01:	8898      	l32i.n	a8, a8, 36
4037cc03:	22a001        	movi	a2, 1
4037cc06:	879a02        	bne	a10, a8, 0x4037cc0c
4037cc09:	902204        	extui	a2, a9, 2, 1
4037cc0c:	1df0      	retw.n
4037cc0e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037cc11:	410098        	l32r	a4, 0x40362c14
4037cc14:	220c08        	l8ui	a2, a12, 8
4037cc17:	27e921        	bbsi	a9, 2, 0x4037cc3c
4037cc1a:	a882      	l32i.n	a10, a2, 32
4037cc1c:	98b2      	l32i.n	a9, a2, 44
4037cc1e:	a089c0        	sub	a8, a9, a10
4037cc21:	973a0c        	bltu	a10, a9, 0x4037cc31
4037cc24:	88d2      	l32i.n	a8, a2, 52
4037cc26:	a088c0        	sub	a8, a8, a10
4037cc29:	a8c2      	l32i.n	a10, a2, 48
4037cc2b:	a099c0        	sub	a9, a9, a10
4037cc2e:	908873        	maxu	a8, a8, a9
4037cc31:	82c8f8        	addi	a8, a8, -8
4037cc34:	968800        	bltz	a8, 0x4037cc40
4037cc37:	2812      	l32i.n	a2, a2, 4
4037cc39:	208863        	minu	a8, a8, a2
4037cc3c:	2d08      	mov.n	a2, a8
4037cc3e:	1df0      	retw.n
4037cc40:	0c08      	movi.n	a8, 0
4037cc42:	86fdff        	j	0x4037cc3c
4037cc45:	000000        	ill
4037cc48:	364100        	entry	a1, 32
4037cc4b:	9822      	l32i.n	a9, a2, 8
4037cc4d:	0c08      	movi.n	a8, 0
4037cc4f:	27e919        	bbsi	a9, 2, 0x4037cc6c
4037cc52:	a882      	l32i.n	a10, a2, 32
4037cc54:	b8c2      	l32i.n	a11, a2, 48
4037cc56:	98b2      	l32i.n	a9, a2, 44
4037cc58:	b79a14        	bne	a10, a11, 0x4037cc70
4037cc5b:	979a11        	bne	a10, a9, 0x4037cc70
4037cc5e:	8802      	l32i.n	a8, a2, 0
4037cc60:	82c8f8        	addi	a8, a8, -8
4037cc63:	962802        	bltz	a8, 0x4037cc89
4037cc66:	222201        	l32i	a2, a2, 4
4037cc69:	208863        	minu	a8, a8, a2
4037cc6c:	2d08      	mov.n	a2, a8
4037cc6e:	1df0      	retw.n
4037cc70:	97ba05        	bgeu	a10, a9, 0x4037cc79
4037cc73:	a089c0        	sub	a8, a9, a10
4037cc76:	86f9ff        	j	0x4037cc60
4037cc79:	88d2      	l32i.n	a8, a2, 52
4037cc7b:	b099c0        	sub	a9, a9, a11
4037cc7e:	a088c0        	sub	a8, a8, a10
4037cc81:	9a88      	add.n	a8, a8, a9
4037cc83:	82c8f0        	addi	a8, a8, -16
4037cc86:	46f6ff        	j	0x4037cc63
4037cc89:	0c08      	movi.n	a8, 0
4037cc8b:	46f7ff        	j	0x4037cc6c
4037cc8e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037cc91:	410098        	l32r	a4, 0x40362c94
4037cc94:	220c08        	l8ui	a2, a12, 8
4037cc97:	27e90d        	bbsi	a9, 2, 0x4037cca8
4037cc9a:	88b2      	l32i.n	a8, a2, 44
4037cc9c:	9882      	l32i.n	a9, a2, 32
4037cc9e:	9088c0        	sub	a8, a8, a9
4037cca1:	e61803        	bgei	a8, 1, 0x4037cca8
4037cca4:	2802      	l32i.n	a2, a2, 0
4037cca6:	2a88      	add.n	a8, a8, a2
4037cca8:	2d08      	mov.n	a2, a8
4037ccaa:	1df0      	retw.n
4037ccac:	364100        	entry	a1, 32
4037ccaf:	a162e0        	l32r	a10, 0x40374e38
4037ccb2:	cd03      	mov.n	a12, a3
4037ccb4:	bd02      	mov.n	a11, a2
4037ccb6:	81f9dd        	l32r	a8, 0x4037449c
4037ccb9:	e00800        	callx8	a8
4037ccbc:	30a320        	or	a10, a3, a3
4037ccbf:	8163e0        	l32r	a8, 0x40374e4c
4037ccc2:	e00800        	callx8	a8
4037ccc5:	bd0a      	mov.n	a11, a10
4037ccc7:	a15de0        	l32r	a10, 0x40374e3c
4037ccca:	81f4dd        	l32r	a8, 0x4037449c
4037cccd:	e00800        	callx8	a8
4037ccd0:	815ce0        	l32r	a8, 0x40374e40
4037ccd3:	e0b011        	slli	a11, a0, 2
4037ccd6:	808e15        	extui	a8, a8, 30, 2
4037ccd9:	208801        	slli	a8, a8, 30
4037ccdc:	b0b241        	srli	a11, a11, 2
4037ccdf:	80bb20        	or	a11, a11, a8
4037cce2:	a158e0        	l32r	a10, 0x40374e44
4037cce5:	b2cbfd        	addi	a11, a11, -3
4037cce8:	81eddd        	l32r	a8, 0x4037449c
4037cceb:	e00800        	callx8	a8
4037ccee:	2599fa        	call8	0x40377680
4037ccf1:	8cfa      	beqz.n	a10, 0x4037cd04
4037ccf3:	a155e0        	l32r	a10, 0x40374e48
4037ccf6:	ed07      	mov.n	a14, a7
4037ccf8:	dd06      	mov.n	a13, a6
4037ccfa:	cd05      	mov.n	a12, a5
4037ccfc:	bd04      	mov.n	a11, a4
4037ccfe:	81e7dd        	l32r	a8, 0x4037449c
4037cd01:	e00800        	callx8	a8
4037cd04:	1df0      	retw.n
4037cd06:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037cd09:	4100a1        	l32r	a4, 0x4036510c
4037cd0c:	51e0fd        	l32r	a5, 0x4037c48c (0x1480600d)
4037cd0f:	06ed05        	j	0x4037e4c7
4037cd12:	dd04      	mov.n	a13, a4
4037cd14:	cd03      	mov.n	a12, a3
4037cd16:	bd02      	mov.n	a11, a2
4037cd18:	25f9ff        	call8	0x4037ccac
4037cd1b:	25bb05        	call8	0x403828cc
4037cd1e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037cd21:	4100ad        	l32r	a4, 0x40368124
4037cd24:	02a536        	movi	a0, 0x536
4037cd27:	fb36      	addi.n	a3, a6, 15
4037cd29:	41001d        	l32r	a4, 0x4034412c
4037cd2c:	f00000        	callx12	a0
4037cd2f:	003621        	srai	a3, a0, 6
4037cd32:	00          	.byte	00
4037cd33:	30eb03        	rsr.prid	a3
4037cd36:	303d04        	extui	a3, a3, 13, 1
4037cd39:	2146e0        	l32r	a2, 0x40374e54
4037cd3c:	2023a0        	addx4	a2, a3, a2
4037cd3f:	0c13      	movi.n	a3, 1
4037cd41:	3902      	s32i.n	a3, a2, 0
4037cd43:	1df0      	retw.n
4037cd45:	000000        	ill
4037cd48:	c9f1      	s32i.n	a12, a1, 60
4037cd4a:	d26110        	s32i	a13, a1, 64
4037cd4d:	cd00      	mov.n	a12, a0
4037cd4f:	851700        	call0	0x4037cec8
4037cd52:	40eb03        	rsr.prid	a4
4037cd55:	404d04        	extui	a4, a4, 13, 1
4037cd58:	2140e0        	l32r	a2, 0x40374e58
4037cd5b:	2024a0        	addx4	a2, a4, a2
4037cd5e:	3139df        	l32r	a3, 0x40374a44
4037cd61:	3034a0        	addx4	a3, a4, a3
4037cd64:	2802      	l32i.n	a2, a2, 0
4037cd66:	9ce2      	beqz.n	a2, 0x4037cd88
4037cd68:	2803      	l32i.n	a2, a3, 0
4037cd6a:	1b22      	addi.n	a2, a2, 1
4037cd6c:	2903      	s32i.n	a2, a3, 0
4037cd6e:	661216        	bnei	a2, 1, 0x4037cd88
4037cd71:	2138df        	l32r	a2, 0x40374a54
4037cd74:	2024a0        	addx4	a2, a4, a2
4037cd77:	2802      	l32i.n	a2, a2, 0
4037cd79:	8cb2      	beqz.n	a2, 0x4037cd88
4037cd7b:	1902      	s32i.n	a1, a2, 0
4037cd7d:	1137e0        	l32r	a1, 0x40374e5c
4037cd80:	2138e0        	l32r	a2, 0x40374e60
4037cd83:	202482        	mull	a2, a4, a2
4037cd86:	2a11      	add.n	a1, a1, a2
4037cd88:	0d0c      	mov.n	a0, a12
4037cd8a:	0df0      	ret.n
4037cd8c:	40eb03        	rsr.prid	a4
4037cd8f:	404d04        	extui	a4, a4, 13, 1
4037cd92:	2131e0        	l32r	a2, 0x40374e58
4037cd95:	2024a0        	addx4	a2, a4, a2
4037cd98:	312bdf        	l32r	a3, 0x40374a44
4037cd9b:	3034a0        	addx4	a3, a4, a3
4037cd9e:	006300        	rsil	a0, 3
4037cda1:	2802      	l32i.n	a2, a2, 0
4037cda3:	ace2      	beqz.n	a2, 0x4037cdd5
4037cda5:	2803      	l32i.n	a2, a3, 0
4037cda7:	0b22      	addi.n	a2, a2, -1
4037cda9:	2903      	s32i.n	a2, a3, 0
4037cdab:	ec62      	bnez.n	a2, 0x4037cdd5
4037cdad:	2129df        	l32r	a2, 0x40374a54
4037cdb0:	2024a0        	addx4	a2, a4, a2
4037cdb3:	2802      	l32i.n	a2, a2, 0
4037cdb5:	9c02      	beqz.n	a2, 0x4037cdc9
4037cdb7:	1802      	l32i.n	a1, a2, 0
4037cdb9:	2126e0        	l32r	a2, 0x40374e54
4037cdbc:	2024a0        	addx4	a2, a4, a2
4037cdbf:	3802      	l32i.n	a3, a2, 0
4037cdc1:	9c03      	beqz.n	a3, 0x4037cdd5
4037cdc3:	32a000        	movi	a3, 0
4037cdc6:	326200        	s32i	a3, a2, 0
4037cdc9:	101120        	or	a1, a1, a1
4037cdcc:	d50a00        	call4	0x4037ce7c
4037cdcf:	101120        	or	a1, a1, a1
4037cdd2:	850000        	call0	0x4037cddc
4037cdd5:	451900        	call0	0x4037cf6c
4037cdd8:	0801      	l32i.n	a0, a1, 0
4037cdda:	0df0      	ret.n
4037cddc:	558301        	call4	0x4037e614
4037cddf:	211ddf        	l32r	a2, 0x40374a54
4037cde2:	30eb03        	rsr.prid	a3
4037cde5:	303d04        	extui	a3, a3, 13, 1
4037cde8:	2023a0        	addx4	a2, a3, a2
4037cdeb:	322200        	l32i	a3, a2, 0
4037cdee:	122300        	l32i	a1, a3, 0
4037cdf1:	326200        	s32i	a3, a2, 0
4037cdf4:	2801      	l32i.n	a2, a1, 0
4037cdf6:	ccf2      	bnez.n	a2, 0x4037ce09
4037cdf8:	2831      	l32i.n	a2, a1, 12
4037cdfa:	20e7f3        	wur.threadptr	a2
4037cdfd:	3821      	l32i.n	a3, a1, 8
4037cdff:	0811      	l32i.n	a0, a1, 4
4037ce01:	102000        	rsync
4037ce04:	30e613        	wsr.ps	a3
4037ce07:	1df0      	retw.n
4037ce09:	3112df        	l32r	a3, 0x40374a54
4037ce0c:	20eb03        	rsr.prid	a2
4037ce0f:	202d04        	extui	a2, a2, 13, 1
4037ce12:	3032a0        	addx4	a3, a2, a3
4037ce15:	322300        	l32i	a3, a3, 0
4037ce18:	222301        	l32i	a2, a3, 4
4037ce1b:	321200        	l16ui	a3, a2, 0
4037ce1e:	30e013        	wsr.cpenable	a3
4037ce21:	851400        	call0	0x4037cf6c
4037ce24:	102000        	rsync
4037ce27:	022100        	l32i	a0, a1, 0
4037ce2a:	0df0      	ret.n
4037ce2c:	364100        	entry	a1, 32
4037ce2f:	20e603        	rsr.ps	a2
4037ce32:	0911      	s32i.n	a0, a1, 4
4037ce34:	2921      	s32i.n	a2, a1, 8
4037ce36:	702ee3        	rur.threadptr	a2
4037ce39:	2931      	s32i.n	a2, a1, 12
4037ce3b:	610ae0        	l32r	a6, 0x40374e64
4037ce3e:	602210        	and	a2, a2, a6
4037ce41:	22c203        	addi	a2, a2, 3
4037ce44:	20e613        	wsr.ps	a2
4037ce47:	102000        	rsync
4037ce4a:	056907        	call0	0x403844dc
4037ce4d:	2821      	l32i.n	a2, a1, 8
4037ce4f:	20e613        	wsr.ps	a2
4037ce52:	206300        	rsil	a2, 3
4037ce55:	051a00        	call0	0x4037cff8
4037ce58:	21ffde        	l32r	a2, 0x40374a54
4037ce5b:	30eb03        	rsr.prid	a3
4037ce5e:	303d04        	extui	a3, a3, 13, 1
4037ce61:	2023a0        	addx4	a2, a3, a2
4037ce64:	2802      	l32i.n	a2, a2, 0
4037ce66:	0c03      	movi.n	a3, 0
4037ce68:	3901      	s32i.n	a3, a1, 0
4037ce6a:	1902      	s32i.n	a1, a2, 0
4037ce6c:	2812      	l32i.n	a2, a2, 4
4037ce6e:	0c03      	movi.n	a3, 0
4037ce70:	30e013        	wsr.cpenable	a3
4037ce73:	162200        	beqz	a2, 0x4037ce79
4037ce76:	325200        	s16i	a3, a2, 0
4037ce79:	05f6ff        	call0	0x4037cddc
4037ce7c:	362100        	entry	a1, 16
4037ce7f:	31f5de        	l32r	a3, 0x40374a54
4037ce82:	20eb03        	rsr.prid	a2
4037ce85:	202d04        	extui	a2, a2, 13, 1
4037ce88:	3032a0        	addx4	a3, a2, a3
4037ce8b:	3803      	l32i.n	a3, a3, 0
4037ce8d:	2813      	l32i.n	a2, a3, 4
4037ce8f:	30e003        	rsr.cpenable	a3
4037ce92:	325200        	s16i	a3, a2, 0
4037ce95:	0c03      	movi.n	a3, 0
4037ce97:	30e013        	wsr.cpenable	a3
4037ce9a:	1df0      	retw.n
4037ce9c:	30eb03        	rsr.prid	a3
4037ce9f:	303d04        	extui	a3, a3, 13, 1
4037cea2:	f1eddf        	l32r	a15, 0x40374e58
4037cea5:	f0f3a0        	addx4	a15, a3, a15
4037cea8:	f80f      	l32i.n	a15, a15, 0
4037ceaa:	9c6f      	beqz.n	a15, 0x4037cec4
4037ceac:	f1e6de        	l32r	a15, 0x40374a44
4037ceaf:	f0f3a0        	addx4	a15, a3, a15
4037ceb2:	f80f      	l32i.n	a15, a15, 0
4037ceb4:	cccf      	bnez.n	a15, 0x4037cec4
4037ceb6:	f1e7de        	l32r	a15, 0x40374a54
4037ceb9:	f0f3a0        	addx4	a15, a3, a15
4037cebc:	f80f      	l32i.n	a15, a15, 0
4037cebe:	8c4f      	beqz.n	a15, 0x4037cec6
4037cec0:	f81f      	l32i.n	a15, a15, 4
4037cec2:	0df0      	ret.n
4037cec4:	0c0f      	movi.n	a15, 0
4037cec6:	0df0      	ret.n
4037cec8:	2951      	s32i.n	a2, a1, 20
4037ceca:	3961      	s32i.n	a3, a1, 24
4037cecc:	4971      	s32i.n	a4, a1, 28
4037cece:	5981      	s32i.n	a5, a1, 32
4037ced0:	6991      	s32i.n	a6, a1, 36
4037ced2:	79a1      	s32i.n	a7, a1, 40
4037ced4:	89b1      	s32i.n	a8, a1, 44
4037ced6:	99c1      	s32i.n	a9, a1, 48
4037ced8:	a9d1      	s32i.n	a10, a1, 52
4037ceda:	b9e1      	s32i.n	a11, a1, 56
4037cedc:	e26111        	s32i	a14, a1, 68
4037cedf:	f26112        	s32i	a15, a1, 72
4037cee2:	300303        	rsr.sar	a3
4037cee5:	326113        	s32i	a3, a1, 76
4037cee8:	300003        	rsr.lbeg	a3
4037ceeb:	326116        	s32i	a3, a1, 88
4037ceee:	300103        	rsr.lend	a3
4037cef1:	326117        	s32i	a3, a1, 92
4037cef4:	300203        	rsr.lcount	a3
4037cef7:	326118        	s32i	a3, a1, 96
4037cefa:	9d00      	mov.n	a9, a0
4037cefc:	c26119        	s32i	a12, a1, 100
4037ceff:	d2611a        	s32i	a13, a1, 104
4037cf02:	92611b        	s32i	a9, a1, 108
4037cf05:	c8f1      	l32i.n	a12, a1, 60
4037cf07:	d22110        	l32i	a13, a1, 64
4037cf0a:	98c1      	l32i.n	a9, a1, 48
4037cf0c:	22c170        	addi	a2, a1, 112
4037cf0f:	457307        	call0	0x40384644
4037cf12:	20e603        	rsr.ps	a2
4037cf15:	0cf0      	movi.n	a0, 15
4037cf17:	003210        	and	a3, a2, a0
4037cf1a:	f63302        	bgeui	a3, 3, 0x4037cf20
4037cf1d:	32a003        	movi	a3, 3
4037cf20:	01d2df        	l32r	a0, 0x40374e68
4037cf23:	003320        	or	a3, a3, a0
4037cf26:	30e613        	wsr.ps	a3
4037cf29:	00b103        	rsr.epc1	a0
4037cf2c:	12d101        	addmi	a1, a1, 0x100
4037cf2f:	12c1c0        	addi	a1, a1, -64
4037cf32:	c0cc10        	and	a12, a12, a12
4037cf35:	308040        	rotw	3
4037cf38:	c0cc10        	and	a12, a12, a12
4037cf3b:	308040        	rotw	3
4037cf3e:	c0cc10        	and	a12, a12, a12
4037cf41:	308040        	rotw	3
4037cf44:	c0cc10        	and	a12, a12, a12
4037cf47:	308040        	rotw	3
4037cf4a:	c0cc10        	and	a12, a12, a12
4037cf4d:	408040        	rotw	4
4037cf50:	12d1ff        	addmi	a1, a1, 0xffffff00
4037cf53:	12c140        	addi	a1, a1, 64
4037cf56:	20e613        	wsr.ps	a2
4037cf59:	102000        	rsync
4037cf5c:	00b113        	wsr.epc1	a0
4037cf5f:	c22119        	l32i	a12, a1, 100
4037cf62:	d2211a        	l32i	a13, a1, 104
4037cf65:	92211b        	l32i	a9, a1, 108
4037cf68:	0d09      	mov.n	a0, a9
4037cf6a:	0df0      	ret.n
4037cf6c:	dd00      	mov.n	a13, a0
4037cf6e:	22c170        	addi	a2, a1, 112
4037cf71:	056a07        	call0	0x40384614
4037cf74:	0d0d      	mov.n	a0, a13
4037cf76:	222116        	l32i	a2, a1, 88
4037cf79:	322117        	l32i	a3, a1, 92
4037cf7c:	200013        	wsr.lbeg	a2
4037cf7f:	222118        	l32i	a2, a1, 96
4037cf82:	300113        	wsr.lend	a3
4037cf85:	200213        	wsr.lcount	a2
4037cf88:	322113        	l32i	a3, a1, 76
4037cf8b:	2851      	l32i.n	a2, a1, 20
4037cf8d:	300313        	wsr.sar	a3
4037cf90:	3861      	l32i.n	a3, a1, 24
4037cf92:	4871      	l32i.n	a4, a1, 28
4037cf94:	5881      	l32i.n	a5, a1, 32
4037cf96:	6891      	l32i.n	a6, a1, 36
4037cf98:	78a1      	l32i.n	a7, a1, 40
4037cf9a:	88b1      	l32i.n	a8, a1, 44
4037cf9c:	98c1      	l32i.n	a9, a1, 48
4037cf9e:	a8d1      	l32i.n	a10, a1, 52
4037cfa0:	b8e1      	l32i.n	a11, a1, 56
4037cfa2:	c8f1      	l32i.n	a12, a1, 60
4037cfa4:	d22110        	l32i	a13, a1, 64
4037cfa7:	e22111        	l32i	a14, a1, 68
4037cfaa:	f22112        	l32i	a15, a1, 72
4037cfad:	0df0      	ret.n
4037cfaf:	003621        	srai	a3, a0, 6
4037cfb2:	0021aa        	floor.s	a2, f1, 0
4037cfb5:	de32c220 	ee.vmulas.s8.accx.ld.ip.qup	q0, a13, 32, q0, q7, q4, q2
4037cfb9:	42a000        	movi	a4, 0
4037cfbc:	4902      	s32i.n	a4, a2, 0
4037cfbe:	4b22      	addi.n	a2, a2, 4
4037cfc0:	3732f8        	bltu	a2, a3, 0x4037cfbc
4037cfc3:	1df0      	retw.n
4037cfc5:	000000        	ill
4037cfc8:	362100        	entry	a1, 16
4037cfcb:	50eb03        	rsr.prid	a5
4037cfce:	505d04        	extui	a5, a5, 13, 1
4037cfd1:	1c03      	movi.n	a3, 16
4037cfd3:	305582        	mull	a5, a5, a3
4037cfd6:	31a1de        	l32r	a3, 0x40374a5c
4037cfd9:	503380        	add	a3, a3, a5
4037cfdc:	42c310        	addi	a4, a3, 16
4037cfdf:	52a000        	movi	a5, 0
4037cfe2:	606300        	rsil	a6, 3
4037cfe5:	7803      	l32i.n	a7, a3, 0
4037cfe7:	779201        	bne	a2, a7, 0x4037cfec
4037cfea:	5903      	s32i.n	a5, a3, 0
4037cfec:	4b33      	addi.n	a3, a3, 4
4037cfee:	4733f3        	bltu	a3, a4, 0x4037cfe5
4037cff1:	60e613        	wsr.ps	a6
4037cff4:	1df0      	retw.n
4037cff6:	000020        	or	a0, a0, a0
4037cff9:	e0          	.byte	0xe0
4037cffa:	03          	.byte	0x3
4037cffb:	9cd2      	beqz.n	a2, 0x4037d01c
4037cffd:	ed00      	mov.n	a14, a0
4037cfff:	c5e9ff        	call0	0x4037ce9c
4037d002:	0d0e      	mov.n	a0, a14
4037d004:	9c4f      	beqz.n	a15, 0x4037d01c
4037d006:	225f02        	s16i	a2, a15, 4
4037d009:	d195de        	l32r	a13, 0x40374a60
4037d00c:	f82f      	l32i.n	a15, a15, 8
4037d00e:	076203        	bbci	a2, 0, 0x4037d015
4037d011:	e80d      	l32i.n	a14, a13, 0
4037d013:	fa3e      	add.n	a3, a14, a15
4037d015:	376203        	bbci	a2, 3, 0x4037d01c
4037d018:	e83d      	l32i.n	a14, a13, 12
4037d01a:	fa3e      	add.n	a3, a14, a15
4037d01c:	0df0      	ret.n
4037d01e:	00          	.byte	00
4037d01f:	00          	.byte	00
4037d020:	ed00      	mov.n	a14, a0
4037d022:	85e7ff        	call0	0x4037ce9c
4037d025:	0d0e      	mov.n	a0, a14
4037d027:	9c9f      	beqz.n	a15, 0x4037d044
4037d029:	321f02        	l16ui	a3, a15, 4
4037d02c:	203330        	xor	a3, a3, a2
4037d02f:	391f      	s32i.n	a3, a15, 4
4037d031:	d18bde        	l32r	a13, 0x40374a60
4037d034:	f82f      	l32i.n	a15, a15, 8
4037d036:	076203        	bbci	a2, 0, 0x4037d03d
4037d039:	e80d      	l32i.n	a14, a13, 0
4037d03b:	fa3e      	add.n	a3, a14, a15
4037d03d:	376203        	bbci	a2, 3, 0x4037d044
4037d040:	e83d      	l32i.n	a14, a13, 12
4037d042:	fa3e      	add.n	a3, a14, a15
4037d044:	0df0      	ret.n
4037d046:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037d049:	410020        	l32r	a4, 0x4034504c
4037d04c:	eb03      	addi.n	a0, a3, 14
4037d04e:	202d04        	extui	a2, a2, 13, 1
4037d051:	3186df        	l32r	a3, 0x40374e6c
4037d054:	c187df        	l32r	a12, 0x40374e70
4037d057:	0c0e      	movi.n	a14, 0
4037d059:	dd03      	mov.n	a13, a3
4037d05b:	b2a402        	movi	a11, 0x402
4037d05e:	a2c239        	addi	a10, a2, 57
4037d061:	8189df        	l32r	a8, 0x40374e88
4037d064:	e00800        	callx8	a8
4037d067:	8cca      	beqz.n	a10, 0x4037d077
4037d069:	e182df        	l32r	a14, 0x40374e74
4037d06c:	d183df        	l32r	a13, 0x40374e78
4037d06f:	b183df        	l32r	a11, 0x40374e7c
4037d072:	5c1c      	movi.n	a12, 81
4037d074:	25c9ff        	call8	0x4037cd08
4037d077:	567208        	bnez	a2, 0x4037d102
4037d07a:	ad03      	mov.n	a10, a3
4037d07c:	252e04        	call8	0x40381360
4037d07f:	8803      	l32i.n	a8, a3, 0
4037d081:	917fdf        	l32r	a9, 0x40374e80
4037d084:	c02000        	memw
4037d087:	4858      	l32i.n	a4, a8, 20
4037d089:	dd02      	mov.n	a13, a2
4037d08b:	904410        	and	a4, a4, a9
4037d08e:	c02000        	memw
4037d091:	4958      	s32i.n	a4, a8, 20
4037d093:	c02000        	memw
4037d096:	2968      	s32i.n	a2, a8, 24
4037d098:	0c14      	movi.n	a4, 1
4037d09a:	cd02      	mov.n	a12, a2
4037d09c:	bd04      	mov.n	a11, a4
4037d09e:	ad03      	mov.n	a10, a3
4037d0a0:	c02000        	memw
4037d0a3:	426818        	s32i	a4, a8, 96
4037d0a6:	e55304        	call8	0x403815e4
4037d0a9:	dd02      	mov.n	a13, a2
4037d0ab:	cd04      	mov.n	a12, a4
4037d0ad:	bd04      	mov.n	a11, a4
4037d0af:	ad03      	mov.n	a10, a3
4037d0b1:	255304        	call8	0x403815e4
4037d0b4:	cd04      	mov.n	a12, a4
4037d0b6:	bd02      	mov.n	a11, a2
4037d0b8:	ad03      	mov.n	a10, a3
4037d0ba:	254c04        	call8	0x4038157c
4037d0bd:	c2a3e8        	movi	a12, 0x3e8
4037d0c0:	bd02      	mov.n	a11, a2
4037d0c2:	ad03      	mov.n	a10, a3
4037d0c4:	253a04        	call8	0x40381468
4037d0c7:	cd04      	mov.n	a12, a4
4037d0c9:	bd02      	mov.n	a11, a2
4037d0cb:	ad03      	mov.n	a10, a3
4037d0cd:	e54604        	call8	0x4038153c
4037d0d0:	dd04      	mov.n	a13, a4
4037d0d2:	cd02      	mov.n	a12, a2
4037d0d4:	bd04      	mov.n	a11, a4
4037d0d6:	ad03      	mov.n	a10, a3
4037d0d8:	a55004        	call8	0x403815e4
4037d0db:	dce2      	bnez.n	a2, 0x4037d0fd
4037d0dd:	bd02      	mov.n	a11, a2
4037d0df:	ad03      	mov.n	a10, a3
4037d0e1:	e54b04        	call8	0x403815a0
4037d0e4:	bd04      	mov.n	a11, a4
4037d0e6:	ad03      	mov.n	a10, a3
4037d0e8:	654d04        	call8	0x403815c0
4037d0eb:	c166df        	l32r	a12, 0x40374e84
4037d0ee:	d12cdd        	l32r	a13, 0x403745a0
4037d0f1:	bd04      	mov.n	a11, a4
4037d0f3:	ad03      	mov.n	a10, a3
4037d0f5:	a53e04        	call8	0x403814e0
4037d0f8:	2d04      	mov.n	a2, a4
4037d0fa:	86edff        	j	0x4037d0b4
4037d0fd:	6612f7        	bnei	a2, 1, 0x4037d0f8
4037d100:	1df0      	retw.n
4037d102:	bd02      	mov.n	a11, a2
4037d104:	ad03      	mov.n	a10, a3
4037d106:	a54904        	call8	0x403815a0
4037d109:	c6fcff        	j	0x4037d100
4037d10c:	364100        	entry	a1, 32
4037d10f:	253701        	call8	0x4037e480
4037d112:	a02a20        	or	a2, a10, a10
4037d115:	164a00        	beqz	a10, 0x4037d11d
4037d118:	0c0a      	movi.n	a10, 0
4037d11a:	2545fc        	call8	0x4037956c
4037d11d:	1df0      	retw.n
4037d11f:	003641        	srli	a3, a0, 6
4037d122:	0042c2        	quou	a4, a2, a0
4037d125:	4cb2      	movi.n	a2, 75
4037d127:	afff40a4 	ee.fft.ams.s16.st.incp	q4, q0, a10, a15, q0, q7, q6, 1
4037d12b:	20          	.byte	0x20
4037d12c:	a59802        	call8	0x4037fab8
4037d12f:	40a420        	or	a10, a4, a4
4037d132:	c02000        	memw
4037d135:	38e2      	l32i.n	a3, a2, 56
4037d137:	0c14      	movi.n	a4, 1
4037d139:	25ac02        	call8	0x4037fbfc
4037d13c:	0c02      	movi.n	a2, 0
4037d13e:	302483        	moveqz	a2, a4, a3
4037d141:	1df0      	retw.n
4037d143:	003641        	srli	a3, a0, 6
4037d146:	00c222        	orb	b12, b2, b0
4037d149:	10c020        	or	a12, a0, a1
4037d14c:	005222        	orb	b5, b2, b0
4037d14f:	0e30b320 	ee.vmulas.s8.accx.ld.ip.qup	q0, a0, 0, q0, q7, q3, q3
4037d153:	569c01        	bnez	a12, 0x4037d170
4037d156:	3802      	l32i.n	a3, a2, 0
4037d158:	4d0c      	mov.n	a4, a12
4037d15a:	cc73      	bnez.n	a3, 0x4037d165
4037d15c:	a822      	l32i.n	a10, a2, 8
4037d15e:	a50a02        	call8	0x4037f208
4037d161:	4d0a      	mov.n	a4, a10
4037d163:	3922      	s32i.n	a3, a2, 8
4037d165:	1b55      	addi.n	a5, a5, 1
4037d167:	c02000        	memw
4037d16a:	59e2      	s32i.n	a5, a2, 56
4037d16c:	2d04      	mov.n	a2, a4
4037d16e:	1df0      	retw.n
4037d170:	dcd4      	bnez.n	a4, 0x4037d191
4037d172:	a812      	l32i.n	a10, a2, 4
4037d174:	81c9dc        	l32r	a8, 0x40374498
4037d177:	e00800        	callx8	a8
4037d17a:	8812      	l32i.n	a8, a2, 4
4037d17c:	322210        	l32i	a3, a2, 64
4037d17f:	3a88      	add.n	a8, a8, a3
4037d181:	3822      	l32i.n	a3, a2, 8
4037d183:	8912      	s32i.n	a8, a2, 4
4037d185:	3738dc        	bltu	a8, a3, 0x4037d165
4037d188:	3802      	l32i.n	a3, a2, 0
4037d18a:	3912      	s32i.n	a3, a2, 4
4037d18c:	46f5ff        	j	0x4037d165
4037d18f:	00          	.byte	00
4037d190:	00a832        	orbc	b10, b8, b0
4037d193:	81c1dc        	l32r	a8, 0x40374498
4037d196:	e00800        	callx8	a8
4037d199:	822210        	l32i	a8, a2, 64
4037d19c:	9832      	l32i.n	a9, a2, 12
4037d19e:	808060        	neg	a8, a8
4037d1a1:	8a99      	add.n	a9, a9, a8
4037d1a3:	3802      	l32i.n	a3, a2, 0
4037d1a5:	9932      	s32i.n	a9, a2, 12
4037d1a7:	37b905        	bgeu	a9, a3, 0x4037d1b0
4037d1aa:	9822      	l32i.n	a9, a2, 8
4037d1ac:	8a89      	add.n	a8, a9, a8
4037d1ae:	8932      	s32i.n	a8, a2, 12
4037d1b0:	662409        	bnei	a4, 2, 0x4037d1bd
4037d1b3:	0c04      	movi.n	a4, 0
4037d1b5:	4715ac        	beq	a5, a4, 0x4037d165
4037d1b8:	0b55      	addi.n	a5, a5, -1
4037d1ba:	c6e9ff        	j	0x4037d165
4037d1bd:	0c04      	movi.n	a4, 0
4037d1bf:	86e8ff        	j	0x4037d165
4037d1c2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037d1c5:	610042        	l32r	a6, 0x4034d9c8
4037d1c8:	221229        	l16ui	a2, a2, 82
4037d1cb:	31ccd4        	l32r	a3, 0x403724fc
4037d1ce:	d12fdf        	l32r	a13, 0x40374e8c
4037d1d1:	c12fdf        	l32r	a12, 0x40374e90
4037d1d4:	b130df        	l32r	a11, 0x40374e94
4037d1d7:	a130df        	l32r	a10, 0x40374e98
4037d1da:	657805        	call8	0x40382960
4037d1dd:	62c44c        	addi	a6, a4, 76
4037d1e0:	7cfb      	movi.n	a11, -1
4037d1e2:	60a620        	or	a10, a6, a6
4037d1e5:	258d02        	call8	0x4037fab8
4037d1e8:	c02000        	memw
4037d1eb:	22240e        	l32i	a2, a4, 56
4037d1ee:	58f4      	l32i.n	a5, a4, 60
4037d1f0:	57320c        	bltu	a2, a5, 0x4037d200
4037d1f3:	d12adf        	l32r	a13, 0x40374e9c
4037d1f6:	c126df        	l32r	a12, 0x40374e90
4037d1f9:	b129df        	l32r	a11, 0x40374ea0
4037d1fc:	c6f5ff        	j	0x4037d1d7
4037d1ff:	00c020        	or	a12, a0, a0
4037d202:	008224        	extui	a8, a0, 2, 3
4037d205:	0e0c0257 	ee.vmulas.u16.qacc.ld.ip.qup	q6, a0, 0x1c0, q0, q0, q0, q2
4037d209:	b82c      	l32i.n	a11, a12, 8
4037d20b:	c02000        	memw
4037d20e:	520445        	l8ui	a5, a4, 69
4037d211:	cd03      	mov.n	a12, a3
4037d213:	cbb1      	addi.n	a11, a1, 12
4037d215:	40a420        	or	a10, a4, a4
4037d218:	a5f2ff        	call8	0x4037d144
4037d21b:	505074        	extui	a5, a5, 0, 8
4037d21e:	008523        	sext	a8, a5, 7
4037d221:	2d0a      	mov.n	a2, a10
4037d223:	660819        	bnei	a8, -1, 0x4037d240
4037d226:	c02000        	memw
4037d229:	5894      	l32i.n	a5, a4, 36
4037d22b:	8c95      	beqz.n	a5, 0x4037d238
4037d22d:	a2c424        	addi	a10, a4, 36
4037d230:	a56301        	call8	0x4037e86c
4037d233:	0c14      	movi.n	a4, 1
4037d235:	a02493        	movnez	a2, a4, a10
4037d238:	ad06      	mov.n	a10, a6
4037d23a:	259c02        	call8	0x4037fbfc
4037d23d:	1df0      	retw.n
4037d23f:	001b55        	extui	a1, a0, 27, 6
4037d242:	505074        	extui	a5, a5, 0, 8
4037d245:	c02000        	memw
4037d248:	524445        	s8i	a5, a4, 69
4037d24b:	46faff        	j	0x4037d238
4037d24e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037d251:	4100c2        	l32r	a4, 0x4036da54
4037d254:	2210ad        	l16ui	a2, a0, 0x15a
4037d257:	03          	.byte	0x3
4037d258:	9c5c      	beqz.n	a12, 0x4037d271
4037d25a:	8832      	l32i.n	a8, a2, 12
4037d25c:	9822      	l32i.n	a9, a2, 8
4037d25e:	ca88      	add.n	a8, a8, a12
4037d260:	8932      	s32i.n	a8, a2, 12
4037d262:	973803        	bltu	a8, a9, 0x4037d269
4037d265:	8802      	l32i.n	a8, a2, 0
4037d267:	8932      	s32i.n	a8, a2, 12
4037d269:	b832      	l32i.n	a11, a2, 12
4037d26b:	818bdc        	l32r	a8, 0x40374498
4037d26e:	e00800        	callx8	a8
4037d271:	1df0      	retw.n
4037d273:	003641        	srli	a3, a0, 6
4037d276:	0042c2        	quou	a4, a2, a0
4037d279:	4c7c      	movi.n	a12, 71
4037d27b:	fbad      	addi.n	a10, a13, 15
4037d27d:	041011        	ee.ldqa.s8.128.ip	a0, 0x100
4037d280:	206583        	moveqz	a6, a5, a2
4037d283:	02c020        	addi	a0, a0, 32
4037d286:	003202        	andb	b3, b2, b0
4037d289:	4562c2        	call0	0x4033f8b0
4037d28c:	24          	.byte	0x24
4037d28d:	303074        	extui	a3, a3, 0, 8
4037d290:	005323        	sext	a5, a3, 7
4037d293:	e6153a        	bgei	a5, 1, 0x4037d2d1
4037d296:	32afff        	movi	a3, -1
4037d299:	c02000        	memw
4037d29c:	324245        	s8i	a3, a2, 69
4037d29f:	40a420        	or	a10, a4, a4
4037d2a2:	a59502        	call8	0x4037fbfc
4037d2a5:	7cfb      	movi.n	a11, -1
4037d2a7:	ad04      	mov.n	a10, a4
4037d2a9:	e58002        	call8	0x4037fab8
4037d2ac:	c02000        	memw
4037d2af:	320244        	l8ui	a3, a2, 68
4037d2b2:	52c210        	addi	a5, a2, 16
4037d2b5:	303074        	extui	a3, a3, 0, 8
4037d2b8:	008323        	sext	a8, a3, 7
4037d2bb:	e6183d        	bgei	a8, 1, 0x4037d2fc
4037d2be:	32afff        	movi	a3, -1
4037d2c1:	c02000        	memw
4037d2c4:	324244        	s8i	a3, a2, 68
4037d2c7:	40a420        	or	a10, a4, a4
4037d2ca:	259302        	call8	0x4037fbfc
4037d2cd:	900000        	retw
4037d2d0:	005222        	orb	b5, b2, b0
4037d2d3:	121645        	l16ui	a1, a6, 138
4037d2d6:	01b2a0        	l32r	a0, 0x403655a0
4037d2d9:	00ad02        	andb	b10, b13, b0
4037d2dc:	65eeff        	call8	0x4037d1c4
4037d2df:	8c1a      	beqz.n	a10, 0x4037d2e4
4037d2e1:	e57701        	call8	0x4037ea60
4037d2e4:	0b33      	addi.n	a3, a3, -1
4037d2e6:	303074        	extui	a3, a3, 0, 8
4037d2e9:	c6e8ff        	j	0x4037d290
4037d2ec:	c02000        	memw
4037d2ef:	5892      	l32i.n	a5, a2, 36
4037d2f1:	1615fa        	beqz	a5, 0x4037d296
4037d2f4:	ad06      	mov.n	a10, a6
4037d2f6:	655701        	call8	0x4037e86c
4037d2f9:	86f8ff        	j	0x4037d2df
4037d2fc:	c02000        	memw
4037d2ff:	822204        	l32i	a8, a2, 16
4037d302:	1688fb        	beqz	a8, 0x4037d2be
4037d305:	50a520        	or	a10, a5, a5
4037d308:	255601        	call8	0x4037e86c
4037d30b:	8c1a      	beqz.n	a10, 0x4037d310
4037d30d:	257501        	call8	0x4037ea60
4037d310:	0b33      	addi.n	a3, a3, -1
4037d312:	303074        	extui	a3, a3, 0, 8
4037d315:	c6e7ff        	j	0x4037d2b8
4037d318:	364100        	entry	a1, 32
4037d31b:	56e200        	bnez	a2, 0x4037d32d
4037d31e:	d1e1de        	l32r	a13, 0x40374ea4
4037d321:	c1e1de        	l32r	a12, 0x40374ea8
4037d324:	a1ddde        	l32r	a10, 0x40374e98
4037d327:	b2a11f        	movi	a11, 0x11f
4037d32a:	656305        	call8	0x40382960
4037d32d:	66130a        	bnei	a3, 1, 0x4037d33b
4037d330:	41a4de        	l32r	a4, 0x40374dc0
4037d333:	426213        	s32i	a4, a2, 76
4037d336:	0c04      	movi.n	a4, 0
4037d338:	426214        	s32i	a4, a2, 80
4037d33b:	42c24c        	addi	a4, a2, 76
4037d33e:	b2afff        	movi	a11, -1
4037d341:	ad04      	mov.n	a10, a4
4037d343:	657702        	call8	0x4037fab8
4037d346:	b22210        	l32i	a11, a2, 64
4037d349:	98f2      	l32i.n	a9, a2, 60
4037d34b:	a802      	l32i.n	a10, a2, 0
4037d34d:	908b82        	mull	a8, a11, a9
4037d350:	a912      	s32i.n	a10, a2, 4
4037d352:	8a9a      	add.n	a9, a10, a8
4037d354:	b088c0        	sub	a8, a8, a11
4037d357:	8a8a      	add.n	a8, a10, a8
4037d359:	9922      	s32i.n	a9, a2, 8
4037d35b:	0c09      	movi.n	a9, 0
4037d35d:	c02000        	memw
4037d360:	99e2      	s32i.n	a9, a2, 56
4037d362:	8932      	s32i.n	a8, a2, 12
4037d364:	7cf8      	movi.n	a8, -1
4037d366:	c02000        	memw
4037d369:	824244        	s8i	a8, a2, 68
4037d36c:	c02000        	memw
4037d36f:	824245        	s8i	a8, a2, 69
4037d372:	979326        	bne	a3, a9, 0x4037d39c
4037d375:	c02000        	memw
4037d378:	3842      	l32i.n	a3, a2, 16
4037d37a:	971310        	beq	a3, a9, 0x4037d38e
4037d37d:	a2c210        	addi	a10, a2, 16
4037d380:	a54e01        	call8	0x4037e86c
4037d383:	8c7a      	beqz.n	a10, 0x4037d38e
4037d385:	a0eb03        	rsr.prid	a10
4037d388:	a0ad04        	extui	a10, a10, 13, 1
4037d38b:	a5c6fa        	call8	0x40377ff4
4037d38e:	40a420        	or	a10, a4, a4
4037d391:	a58602        	call8	0x4037fbfc
4037d394:	22a001        	movi	a2, 1
4037d397:	900000        	retw
4037d39a:	0000a2        	muluh	a0, a0, a0
4037d39d:	c210e5        	l16ui	a12, a0, 0x1ca
4037d3a0:	5502a2        	call4	0x4031f3c8
4037d3a3:	c22465        	l32i	a12, a4, 0x194
4037d3a6:	550286        	call4	0x403033cc
4037d3a9:	f8ff      	l32i.n	a15, a15, 60
4037d3ab:	00          	.byte	00
4037d3ac:	366100        	entry	a1, 48
4037d3af:	56e200        	bnez	a2, 0x4037d3c1
4037d3b2:	d1bede        	l32r	a13, 0x40374eac
4037d3b5:	c1bede        	l32r	a12, 0x40374eb0
4037d3b8:	b2a161        	movi	a11, 0x161
4037d3bb:	a1b7de        	l32r	a10, 0x40374e98
4037d3be:	255a05        	call8	0x40382960
4037d3c1:	ccd5      	bnez.n	a5, 0x4037d3d2
4037d3c3:	d1bcde        	l32r	a13, 0x40374eb4
4037d3c6:	c1bade        	l32r	a12, 0x40374eb0
4037d3c9:	b2a165        	movi	a11, 0x165
4037d3cc:	c6faff        	j	0x4037d3bb
4037d3cf:	000000        	ill
4037d3d2:	0c1a      	movi.n	a10, 1
4037d3d4:	0c09      	movi.n	a9, 0
4037d3d6:	409a83        	moveqz	a9, a10, a4
4037d3d9:	909074        	extui	a9, a9, 0, 8
4037d3dc:	bd0a      	mov.n	a11, a10
4037d3de:	ccf9      	bnez.n	a9, 0x4037d3f1
4037d3e0:	309a93        	movnez	a9, a10, a3
4037d3e3:	cca9      	bnez.n	a9, 0x4037d3f1
4037d3e5:	d1b4de        	l32r	a13, 0x40374eb8
4037d3e8:	c1b2de        	l32r	a12, 0x40374eb0
4037d3eb:	b2a169        	movi	a11, 0x169
4037d3ee:	46f2ff        	j	0x4037d3bb
4037d3f1:	0c08      	movi.n	a8, 0
4037d3f3:	408b93        	movnez	a8, a11, a4
4037d3f6:	808074        	extui	a8, a8, 0, 8
4037d3f9:	ccf8      	bnez.n	a8, 0x4037d40c
4037d3fb:	308b83        	moveqz	a8, a11, a3
4037d3fe:	cca8      	bnez.n	a8, 0x4037d40c
4037d400:	d1afde        	l32r	a13, 0x40374ebc
4037d403:	c1abde        	l32r	a12, 0x40374eb0
4037d406:	b2a16a        	movi	a11, 0x16a
4037d409:	86ebff        	j	0x4037d3bb
4037d40c:	5c48      	movi.n	a8, 84
4037d40e:	c02000        	memw
4037d411:	8931      	s32i.n	a8, a1, 12
4037d413:	c02000        	memw
4037d416:	9831      	l32i.n	a9, a1, 12
4037d418:	87190c        	beq	a9, a8, 0x4037d428
4037d41b:	d1a9de        	l32r	a13, 0x40374ec0
4037d41e:	c1a4de        	l32r	a12, 0x40374eb0
4037d421:	b2a174        	movi	a11, 0x174
4037d424:	c6e4ff        	j	0x4037d3bb
4037d427:	00c020        	or	a12, a0, a0
4037d42a:	008221        	srai	a8, a0, 2
4037d42d:	0382a0        	lsip	f0, a2, 0x280
4037d430:	013045        	l32r	a0, 0x4034e8f0
4037d433:	83          	.byte	0x83
4037d434:	22650f        	s32i	a2, a5, 60
4037d437:	824546        	s8i	a8, a5, 70
4037d43a:	4905      	s32i.n	a4, a5, 0
4037d43c:	326510        	s32i	a3, a5, 64
4037d43f:	0c1b      	movi.n	a11, 1
4037d441:	ad05      	mov.n	a10, a5
4037d443:	65edff        	call8	0x4037d318
4037d446:	0c02      	movi.n	a2, 0
4037d448:	226512        	s32i	a2, a5, 72
4037d44b:	2d05      	mov.n	a2, a5
4037d44d:	1df0      	retw.n
4037d44f:	003641        	srli	a3, a0, 6
4037d452:	004d02        	andb	b4, b13, b0
4037d455:	dc02      	bnez.n	a2, 0x4037d469
4037d457:	d195de        	l32r	a13, 0x40374eac
4037d45a:	c19ade        	l32r	a12, 0x40374ec4
4037d45d:	b2a1a1        	movi	a11, 0x1a1
4037d460:	a18ede        	l32r	a10, 0x40374e98
4037d463:	101120        	or	a1, a1, a1
4037d466:	a54f05        	call8	0x40382960
4037d469:	30a282        	mull	a10, a2, a3
4037d46c:	ac23      	beqz.n	a3, 0x4037d492
4037d46e:	302ac2        	quou	a2, a10, a3
4037d471:	47120b        	beq	a2, a4, 0x4037d480
4037d474:	d195de        	l32r	a13, 0x40374ec8
4037d477:	c193de        	l32r	a12, 0x40374ec4
4037d47a:	b2a1b1        	movi	a11, 0x1b1
4037d47d:	c6f7ff        	j	0x4037d460
4037d480:	22afab        	movi	a2, -85
4037d483:	a7b20b        	bgeu	a2, a10, 0x4037d492
4037d486:	d191de        	l32r	a13, 0x40374ecc
4037d489:	c18ede        	l32r	a12, 0x40374ec4
4037d48c:	b2a1b4        	movi	a11, 0x1b4
4037d48f:	46f3ff        	j	0x4037d460
4037d492:	a2ca54        	addi	a10, a10, 84
4037d495:	a55d05        	call8	0x40382a70
4037d498:	a02a20        	or	a2, a10, a10
4037d49b:	161a02        	beqz	a10, 0x4037d4c0
4037d49e:	82a000        	movi	a8, 0
4037d4a1:	824a46        	s8i	a8, a10, 70
4037d4a4:	8d0a      	mov.n	a8, a10
4037d4a6:	162300        	beqz	a3, 0x4037d4ac
4037d4a9:	82ca54        	addi	a8, a10, 84
4037d4ac:	326210        	s32i	a3, a2, 64
4037d4af:	8902      	s32i.n	a8, a2, 0
4037d4b1:	49f2      	s32i.n	a4, a2, 60
4037d4b3:	0c1b      	movi.n	a11, 1
4037d4b5:	ad02      	mov.n	a10, a2
4037d4b7:	32a000        	movi	a3, 0
4037d4ba:	e5e5ff        	call8	0x4037d318
4037d4bd:	326212        	s32i	a3, a2, 72
4037d4c0:	1df0      	retw.n
4037d4c2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037d4c5:	410042        	l32r	a4, 0x4034dcc8
4037d4c8:	c24cb2        	s8i	a12, a12, 178
4037d4cb:	afff40a4 	ee.fft.ams.s16.st.incp	q4, q0, a10, a15, q0, q7, q6, 1
4037d4cf:	20          	.byte	0x20
4037d4d0:	655e02        	call8	0x4037fab8
4037d4d3:	822200        	l32i	a8, a2, 0
4037d4d6:	0c03      	movi.n	a3, 0
4037d4d8:	379801        	bne	a8, a3, 0x4037d4dd
4037d4db:	3822      	l32i.n	a3, a2, 8
4037d4dd:	40a420        	or	a10, a4, a4
4037d4e0:	a57102        	call8	0x4037fbfc
4037d4e3:	302320        	or	a2, a3, a3
4037d4e6:	900000        	retw
4037d4e9:	000000        	ill
4037d4ec:	364100        	entry	a1, 32
4037d4ef:	ad02      	mov.n	a10, a2
4037d4f1:	dd04      	mov.n	a13, a4
4037d4f3:	56e200        	bnez	a2, 0x4037d505
4037d4f6:	d176de        	l32r	a13, 0x40374ed0
4037d4f9:	c176de        	l32r	a12, 0x40374ed4
4037d4fc:	b2a2f8        	movi	a11, 0x2f8
4037d4ff:	a166de        	l32r	a10, 0x40374e98
4037d502:	e54505        	call8	0x40382960
4037d505:	37b20c        	bgeu	a2, a3, 0x4037d515
4037d508:	d174de        	l32r	a13, 0x40374ed8
4037d50b:	c172de        	l32r	a12, 0x40374ed4
4037d50e:	b2a2f9        	movi	a11, 0x2f9
4037d511:	86faff        	j	0x4037d4ff
4037d514:	00c2a0        	addx4	a12, a2, a0
4037d517:	00e2a0        	addx4	a14, a2, a0
4037d51a:	02c0bc        	addi	a0, a0, -68
4037d51d:	20          	.byte	0x20
4037d51e:	e5e8ff        	call8	0x4037d3ac
4037d521:	8c3a      	beqz.n	a10, 0x4037d528
4037d523:	c02000        	memw
4037d526:	39ea      	s32i.n	a3, a10, 56
4037d528:	2d0a      	mov.n	a2, a10
4037d52a:	1df0      	retw.n
4037d52c:	368100        	entry	a1, 64
4037d52f:	4931      	s32i.n	a4, a1, 12
4037d531:	ccd2      	bnez.n	a2, 0x4037d542
4037d533:	d15cde        	l32r	a13, 0x40374ea4
4037d536:	c169de        	l32r	a12, 0x40374edc
4037d539:	b2a334        	movi	a11, 0x334
4037d53c:	a157de        	l32r	a10, 0x40374e98
4037d53f:	254205        	call8	0x40382960
4037d542:	dc23      	bnez.n	a3, 0x4037d558
4037d544:	422210        	l32i	a4, a2, 64
4037d547:	8cd4      	beqz.n	a4, 0x4037d558
4037d549:	d165de        	l32r	a13, 0x40374ee0
4037d54c:	c164de        	l32r	a12, 0x40374edc
4037d54f:	b2a335        	movi	a11, 0x335
4037d552:	86f9ff        	j	0x4037d53c
4037d555:	000000        	ill
4037d558:	662510        	bnei	a5, 2, 0x4037d56c
4037d55b:	48f2      	l32i.n	a4, a2, 60
4037d55d:	26140b        	beqi	a4, 1, 0x4037d56c
4037d560:	d161de        	l32r	a13, 0x40374ee4
4037d563:	c15ede        	l32r	a12, 0x40374edc
4037d566:	b2a336        	movi	a11, 0x336
4037d569:	c6f3ff        	j	0x4037d53c
4037d56c:	258701        	call8	0x4037ede0
4037d56f:	562a01        	bnez	a10, 0x4037d585
4037d572:	422103        	l32i	a4, a1, 12
4037d575:	16c400        	beqz	a4, 0x4037d585
4037d578:	d15cde        	l32r	a13, 0x40374ee8
4037d57b:	c158de        	l32r	a12, 0x40374edc
4037d57e:	b2a339        	movi	a11, 0x339
4037d581:	c6edff        	j	0x4037d53c
4037d584:	004802        	andb	b4, b8, b0
4037d587:	165406        	beqz	a4, 0x4037d5f0
4037d58a:	82a000        	movi	a8, 0
4037d58d:	42c5fe        	addi	a4, a5, -2
4037d590:	72a001        	movi	a7, 1
4037d593:	9d08      	mov.n	a9, a8
4037d595:	409783        	moveqz	a9, a7, a4
4037d598:	62c24c        	addi	a6, a2, 76
4037d59b:	904074        	extui	a4, a9, 0, 8
4037d59e:	7cfb      	movi.n	a11, -1
4037d5a0:	ad06      	mov.n	a10, a6
4037d5a2:	826102        	s32i	a8, a1, 8
4037d5a5:	255102        	call8	0x4037fab8
4037d5a8:	c02000        	memw
4037d5ab:	a8e2      	l32i.n	a10, a2, 56
4037d5ad:	98f2      	l32i.n	a9, a2, 60
4037d5af:	8821      	l32i.n	a8, a1, 8
4037d5b1:	973a02        	bltu	a10, a9, 0x4037d5b7
4037d5b4:	164406        	beqz	a4, 0x4037d61c
4037d5b7:	bd03      	mov.n	a11, a3
4037d5b9:	cd05      	mov.n	a12, a5
4037d5bb:	ad02      	mov.n	a10, a2
4037d5bd:	c02000        	memw
4037d5c0:	78e2      	l32i.n	a7, a2, 56
4037d5c2:	25b8ff        	call8	0x4037d144
4037d5c5:	322212        	l32i	a3, a2, 72
4037d5c8:	16c303        	beqz	a3, 0x4037d608
4037d5cb:	161700        	beqz	a7, 0x4037d5d0
4037d5ce:	dc44      	bnez.n	a4, 0x4037d5e6
4037d5d0:	bd05      	mov.n	a11, a5
4037d5d2:	ad02      	mov.n	a10, a2
4037d5d4:	101120        	or	a1, a1, a1
4037d5d7:	e5beff        	call8	0x4037d1c4
4037d5da:	168a00        	beqz	a10, 0x4037d5e6
4037d5dd:	a0eb03        	rsr.prid	a10
4037d5e0:	a0ad04        	extui	a10, a10, 13, 1
4037d5e3:	25a1fa        	call8	0x40377ff4
4037d5e6:	60a620        	or	a10, a6, a6
4037d5e9:	256102        	call8	0x4037fbfc
4037d5ec:	0c12      	movi.n	a2, 1
4037d5ee:	1df0      	retw.n
4037d5f0:	4822      	l32i.n	a4, a2, 8
4037d5f2:	1644f9        	beqz	a4, 0x4037d58a
4037d5f5:	654801        	call8	0x4037ea7c
4037d5f8:	a7148e        	beq	a4, a10, 0x4037d58a
4037d5fb:	d13cde        	l32r	a13, 0x40374eec
4037d5fe:	c137de        	l32r	a12, 0x40374edc
4037d601:	b2a340        	movi	a11, 0x340
4037d604:	06cdff        	j	0x4037d53c
4037d607:	00c020        	or	a12, a0, a0
4037d60a:	00          	.byte	00
4037d60b:	3892      	l32i.n	a3, a2, 36
4037d60d:	1693fc        	beqz	a3, 0x4037d5da
4037d610:	a2c224        	addi	a10, a2, 36
4037d613:	a52501        	call8	0x4037e86c
4037d616:	06f0ff        	j	0x4037d5da
4037d619:	000000        	ill
4037d61c:	922103        	l32i	a9, a1, 12
4037d61f:	56a900        	bnez	a9, 0x4037d62d
4037d622:	60a620        	or	a10, a6, a6
4037d625:	655d02        	call8	0x4037fbfc
4037d628:	0c02      	movi.n	a2, 0
4037d62a:	06f0ff        	j	0x4037d5ee
4037d62d:	cc48      	bnez.n	a8, 0x4037d635
4037d62f:	a2c118        	addi	a10, a1, 24
4037d632:	653501        	call8	0x4037e988
4037d635:	ad06      	mov.n	a10, a6
4037d637:	655c02        	call8	0x4037fbfc
4037d63a:	7cfb      	movi.n	a11, -1
4037d63c:	ad06      	mov.n	a10, a6
4037d63e:	a54702        	call8	0x4037fab8
4037d641:	7cfb      	movi.n	a11, -1
4037d643:	60a620        	or	a10, a6, a6
4037d646:	254702        	call8	0x4037fab8
4037d649:	c02000        	memw
4037d64c:	820244        	l8ui	a8, a2, 68
4037d64f:	008823        	sext	a8, a8, 7
4037d652:	660807        	bnei	a8, -1, 0x4037d65d
4037d655:	0c08      	movi.n	a8, 0
4037d657:	c02000        	memw
4037d65a:	824244        	s8i	a8, a2, 68
4037d65d:	c02000        	memw
4037d660:	820245        	l8ui	a8, a2, 69
4037d663:	008823        	sext	a8, a8, 7
4037d666:	660807        	bnei	a8, -1, 0x4037d671
4037d669:	0c08      	movi.n	a8, 0
4037d66b:	c02000        	memw
4037d66e:	824245        	s8i	a8, a2, 69
4037d671:	ad06      	mov.n	a10, a6
4037d673:	a55802        	call8	0x4037fbfc
4037d676:	cbb1      	addi.n	a11, a1, 12
4037d678:	a2c118        	addi	a10, a1, 24
4037d67b:	a53201        	call8	0x4037e9a4
4037d67e:	566a03        	bnez	a10, 0x4037d6b8
4037d681:	c02000        	memw
4037d684:	98e2      	l32i.n	a9, a2, 56
4037d686:	88f2      	l32i.n	a8, a2, 60
4037d688:	87190e        	beq	a9, a8, 0x4037d69a
4037d68b:	ad02      	mov.n	a10, a2
4037d68d:	65beff        	call8	0x4037d274
4037d690:	ad06      	mov.n	a10, a6
4037d692:	a55602        	call8	0x4037fbfc
4037d695:	8d07      	mov.n	a8, a7
4037d697:	c6c0ff        	j	0x4037d59e
4037d69a:	b831      	l32i.n	a11, a1, 12
4037d69c:	a2c210        	addi	a10, a2, 16
4037d69f:	251801        	call8	0x4037e820
4037d6a2:	ad02      	mov.n	a10, a2
4037d6a4:	e5bcff        	call8	0x4037d274
4037d6a7:	ad06      	mov.n	a10, a6
4037d6a9:	255502        	call8	0x4037fbfc
4037d6ac:	a0eb03        	rsr.prid	a10
4037d6af:	a0ad04        	extui	a10, a10, 13, 1
4037d6b2:	2594fa        	call8	0x40377ff4
4037d6b5:	06f7ff        	j	0x4037d695
4037d6b8:	ad02      	mov.n	a10, a2
4037d6ba:	a5bbff        	call8	0x4037d274
4037d6bd:	46d8ff        	j	0x4037d622
4037d6c0:	364100        	entry	a1, 32
4037d6c3:	c2a000        	movi	a12, 0
4037d6c6:	20e074        	extui	a14, a2, 0, 8
4037d6c9:	30d320        	or	a13, a3, a3
4037d6cc:	bd0c      	mov.n	a11, a12
4037d6ce:	a2a001        	movi	a10, 1
4037d6d1:	a5cdff        	call8	0x4037d3ac
4037d6d4:	2d0a      	mov.n	a2, a10
4037d6d6:	9c6a      	beqz.n	a10, 0x4037d6f0
4037d6d8:	81badd        	l32r	a8, 0x40374dc0
4037d6db:	0c0b      	movi.n	a11, 0
4037d6dd:	b92a      	s32i.n	a11, a10, 8
4037d6df:	b90a      	s32i.n	a11, a10, 0
4037d6e1:	b93a      	s32i.n	a11, a10, 12
4037d6e3:	826a13        	s32i	a8, a10, 76
4037d6e6:	b26a14        	s32i	a11, a10, 80
4037d6e9:	dd0b      	mov.n	a13, a11
4037d6eb:	cd0b      	mov.n	a12, a11
4037d6ed:	e5e3ff        	call8	0x4037d52c
4037d6f0:	1df0      	retw.n
4037d6f2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037d6f5:	410056        	l32r	a4, 0x40352ef8
4037d6f8:	e200d1        	l8ui	a14, a0, 209
4037d6fb:	fd          	.byte	0xfd
4037d6fc:	dd          	.byte	0xdd
4037d6fd:	c1fddd        	l32r	a12, 0x40374ef4
4037d700:	a1e6dd        	l32r	a10, 0x40374e98
4037d703:	b2a295        	movi	a11, 0x295
4037d706:	a52505        	call8	0x40382960
4037d709:	4822      	l32i.n	a4, a2, 8
4037d70b:	253701        	call8	0x4037ea7c
4037d70e:	32a000        	movi	a3, 0
4037d711:	a79413        	bne	a4, a10, 0x4037d728
4037d714:	b832      	l32i.n	a11, a2, 12
4037d716:	0c13      	movi.n	a3, 1
4037d718:	0bbb      	addi.n	a11, a11, -1
4037d71a:	b932      	s32i.n	a11, a2, 12
4037d71c:	cc8b      	bnez.n	a11, 0x4037d728
4037d71e:	dd0b      	mov.n	a13, a11
4037d720:	cd0b      	mov.n	a12, a11
4037d722:	20a220        	or	a10, a2, a2
4037d725:	65e0ff        	call8	0x4037d52c
4037d728:	2d03      	mov.n	a2, a3
4037d72a:	1df0      	retw.n
4037d72c:	364100        	entry	a1, 32
4037d72f:	20c074        	extui	a12, a2, 0, 8
4037d732:	b2a000        	movi	a11, 0
4037d735:	a2a001        	movi	a10, 1
4037d738:	65d1ff        	call8	0x4037d450
4037d73b:	a02a20        	or	a2, a10, a10
4037d73e:	9c6a      	beqz.n	a10, 0x4037d758
4037d740:	81a0dd        	l32r	a8, 0x40374dc0
4037d743:	0c0b      	movi.n	a11, 0
4037d745:	b92a      	s32i.n	a11, a10, 8
4037d747:	b90a      	s32i.n	a11, a10, 0
4037d749:	b93a      	s32i.n	a11, a10, 12
4037d74b:	826a13        	s32i	a8, a10, 76
4037d74e:	b26a14        	s32i	a11, a10, 80
4037d751:	dd0b      	mov.n	a13, a11
4037d753:	cd0b      	mov.n	a12, a11
4037d755:	65ddff        	call8	0x4037d52c
4037d758:	1df0      	retw.n
4037d75a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037d75d:	61006d        	l32r	a6, 0x40358b60
4037d760:	02ccd2        	addi	a0, a12, -46
4037d763:	d1d0dd        	l32r	a13, 0x40374ea4
4037d766:	c1e4dd        	l32r	a12, 0x40374ef8
4037d769:	b2a41f        	movi	a11, 0x41f
4037d76c:	a1cbdd        	l32r	a10, 0x40374e98
4037d76f:	251f05        	call8	0x40382960
4037d772:	dc23      	bnez.n	a3, 0x4037d788
4037d774:	222210        	l32i	a2, a2, 64
4037d777:	8cd2      	beqz.n	a2, 0x4037d788
4037d779:	d1d9dd        	l32r	a13, 0x40374ee0
4037d77c:	c1dfdd        	l32r	a12, 0x40374ef8
4037d77f:	b2a420        	movi	a11, 0x420
4037d782:	86f9ff        	j	0x4037d76c
4037d785:	000000        	ill
4037d788:	662510        	bnei	a5, 2, 0x4037d79c
4037d78b:	28f6      	l32i.n	a2, a6, 60
4037d78d:	26120b        	beqi	a2, 1, 0x4037d79c
4037d790:	d1d5dd        	l32r	a13, 0x40374ee4
4037d793:	c1d9dd        	l32r	a12, 0x40374ef8
4037d796:	b2a421        	movi	a11, 0x421
4037d799:	c6f3ff        	j	0x4037d76c
4037d79c:	206300        	rsil	a2, 3
4037d79f:	72c64c        	addi	a7, a6, 76
4037d7a2:	7cfb      	movi.n	a11, -1
4037d7a4:	ad07      	mov.n	a10, a7
4037d7a6:	2931      	s32i.n	a2, a1, 12
4037d7a8:	e53002        	call8	0x4037fab8
4037d7ab:	c02000        	memw
4037d7ae:	98e6      	l32i.n	a9, a6, 56
4037d7b0:	28f6      	l32i.n	a2, a6, 60
4037d7b2:	27390c        	bltu	a9, a2, 0x4037d7c2
4037d7b5:	0c02      	movi.n	a2, 0
4037d7b7:	92c5fe        	addi	a9, a5, -2
4037d7ba:	0c1a      	movi.n	a10, 1
4037d7bc:	90a293        	movnez	a10, a2, a9
4037d7bf:	271a33        	beq	a10, a2, 0x4037d7f6
4037d7c2:	c02000        	memw
4037d7c5:	220645        	l8ui	a2, a6, 69
4037d7c8:	cd05      	mov.n	a12, a5
4037d7ca:	bd03      	mov.n	a11, a3
4037d7cc:	ad06      	mov.n	a10, a6
4037d7ce:	202074        	extui	a2, a2, 0, 8
4037d7d1:	2597ff        	call8	0x4037d144
4037d7d4:	008223        	sext	a8, a2, 7
4037d7d7:	660855        	bnei	a8, -1, 0x4037d830
4037d7da:	222612        	l32i	a2, a6, 72
4037d7dd:	ac82      	beqz.n	a2, 0x4037d809
4037d7df:	bd05      	mov.n	a11, a5
4037d7e1:	ad06      	mov.n	a10, a6
4037d7e3:	259eff        	call8	0x4037d1c4
4037d7e6:	8c04      	beqz.n	a4, 0x4037d7ea
4037d7e8:	cc4a      	bnez.n	a10, 0x4037d7f0
4037d7ea:	0c12      	movi.n	a2, 1
4037d7ec:	860100        	j	0x4037d7f6
4037d7ef:	0022a0        	addx4	a2, a2, a0
4037d7f2:	012264        	l32r	a0, 0x4035687c
4037d7f5:	0070a7        	ee.stf.64.xp	f7, f10, a0, a0
4037d7f8:	20          	.byte	0x20
4037d7f9:	254002        	call8	0x4037fbfc
4037d7fc:	a831      	l32i.n	a10, a1, 12
4037d7fe:	81cbdc        	l32r	a8, 0x40374b2c
4037d801:	e00800        	callx8	a8
4037d804:	1df0      	retw.n
4037d806:	000000        	ill
4037d809:	c02000        	memw
4037d80c:	522609        	l32i	a5, a6, 36
4037d80f:	1675fd        	beqz	a5, 0x4037d7ea
4037d812:	a2c624        	addi	a10, a6, 36
4037d815:	205220        	or	a5, a2, a2
4037d818:	62a001        	movi	a6, 1
4037d81b:	405693        	movnez	a5, a6, a4
4037d81e:	505074        	extui	a5, a5, 0, 8
4037d821:	a50401        	call8	0x4037e86c
4037d824:	1625fc        	beqz	a5, 0x4037d7ea
4037d827:	a02693        	movnez	a2, a6, a10
4037d82a:	20a074        	extui	a10, a2, 0, 8
4037d82d:	c6edff        	j	0x4037d7e8
4037d830:	1b22      	addi.n	a2, a2, 1
4037d832:	202074        	extui	a2, a2, 0, 8
4037d835:	c02000        	memw
4037d838:	224645        	s8i	a2, a6, 69
4037d83b:	c6eaff        	j	0x4037d7ea
4037d83e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037d841:	41004d        	l32r	a4, 0x40350c44
4037d844:	02dc02        	addmi	a0, a12, 0x200
4037d847:	d197dd        	l32r	a13, 0x40374ea4
4037d84a:	c1acdd        	l32r	a12, 0x40374efc
4037d84d:	b2a4c1        	movi	a11, 0x4c1
4037d850:	a192dd        	l32r	a10, 0x40374e98
4037d853:	101120        	or	a1, a1, a1
4037d856:	a51005        	call8	0x40382960
4037d859:	222210        	l32i	a2, a2, 64
4037d85c:	8ca2      	beqz.n	a2, 0x4037d86a
4037d85e:	d1a8dd        	l32r	a13, 0x40374f00
4037d861:	c1a6dd        	l32r	a12, 0x40374efc
4037d864:	b2a4c5        	movi	a11, 0x4c5
4037d867:	46f9ff        	j	0x4037d850
4037d86a:	2804      	l32i.n	a2, a4, 0
4037d86c:	dc02      	bnez.n	a2, 0x4037d880
4037d86e:	2824      	l32i.n	a2, a4, 8
4037d870:	8cc2      	beqz.n	a2, 0x4037d880
4037d872:	d1a4dd        	l32r	a13, 0x40374f04
4037d875:	c1a1dd        	l32r	a12, 0x40374efc
4037d878:	b2a4ca        	movi	a11, 0x4ca
4037d87b:	46f4ff        	j	0x4037d850
4037d87e:	000060        	neg	a0, a0
4037d881:	630052        	lsi	f6, a0, 0x148
4037d884:	c4          	.byte	0xc4
4037d885:	4c7c      	movi.n	a12, 71
4037d887:	fbad      	addi.n	a10, a13, 15
4037d889:	05e522        	call0	0x403a06dc
4037d88c:	02c020        	addi	a0, a0, 32
4037d88f:	0098e4        	extui	a9, a0, 8, 15
4037d892:	78f4      	l32i.n	a7, a4, 60
4037d894:	0c02      	movi.n	a2, 0
4037d896:	77b95c        	bgeu	a9, a7, 0x4037d8f6
4037d899:	c02000        	memw
4037d89c:	820445        	l8ui	a8, a4, 69
4037d89f:	1b99      	addi.n	a9, a9, 1
4037d8a1:	808074        	extui	a8, a8, 0, 8
4037d8a4:	c02000        	memw
4037d8a7:	99e4      	s32i.n	a9, a4, 56
4037d8a9:	007823        	sext	a7, a8, 7
4037d8ac:	660756        	bnei	a7, -1, 0x4037d906
4037d8af:	722412        	l32i	a7, a4, 72
4037d8b2:	271713        	beq	a7, a2, 0x4037d8c9
4037d8b5:	bd02      	mov.n	a11, a2
4037d8b7:	ad04      	mov.n	a10, a4
4037d8b9:	a590ff        	call8	0x4037d1c4
4037d8bc:	271302        	beq	a3, a2, 0x4037d8c2
4037d8bf:	279a2d        	bne	a10, a2, 0x4037d8f0
4037d8c2:	0c12      	movi.n	a2, 1
4037d8c4:	860b00        	j	0x4037d8f6
4037d8c7:	0000c0        	sub	a0, a0, a0
4037d8ca:	200022        	orb	b0, b0, b2
4037d8cd:	240916        	ee.ld.qacc_l.h.32.ip	a2, 36
4037d8d0:	f2fea2        	s32ri	a15, a14, 0x288
4037d8d3:	c4          	.byte	0xc4
4037d8d4:	24          	.byte	0x24
4037d8d5:	702720        	or	a2, a7, a7
4037d8d8:	42a001        	movi	a4, 1
4037d8db:	302493        	movnez	a2, a4, a3
4037d8de:	202074        	extui	a2, a2, 0, 8
4037d8e1:	a5f800        	call8	0x4037e86c
4037d8e4:	16a2fd        	beqz	a2, 0x4037d8c2
4037d8e7:	a04783        	moveqz	a4, a7, a10
4037d8ea:	40a074        	extui	a10, a4, 0, 8
4037d8ed:	161afd        	beqz	a10, 0x4037d8c2
4037d8f0:	22a001        	movi	a2, 1
4037d8f3:	226300        	s32i	a2, a3, 0
4037d8f6:	50a520        	or	a10, a5, a5
4037d8f9:	253002        	call8	0x4037fbfc
4037d8fc:	ad06      	mov.n	a10, a6
4037d8fe:	818bdc        	l32r	a8, 0x40374b2c
4037d901:	e00800        	callx8	a8
4037d904:	1df0      	retw.n
4037d906:	1b88      	addi.n	a8, a8, 1
4037d908:	808074        	extui	a8, a8, 0, 8
4037d90b:	c02000        	memw
4037d90e:	824445        	s8i	a8, a4, 69
4037d911:	46ebff        	j	0x4037d8c2
4037d914:	368100        	entry	a1, 64
4037d917:	4931      	s32i.n	a4, a1, 12
4037d919:	ccd2      	bnez.n	a2, 0x4037d92a
4037d91b:	d17bdd        	l32r	a13, 0x40374f08
4037d91e:	c17bdd        	l32r	a12, 0x40374f0c
4037d921:	b2a566        	movi	a11, 0x566
4037d924:	a15ddd        	l32r	a10, 0x40374e98
4037d927:	a50305        	call8	0x40382960
4037d92a:	dc23      	bnez.n	a3, 0x4037d940
4037d92c:	422210        	l32i	a4, a2, 64
4037d92f:	8cd4      	beqz.n	a4, 0x4037d940
4037d931:	d177dd        	l32r	a13, 0x40374f10
4037d934:	c176dd        	l32r	a12, 0x40374f0c
4037d937:	b2a56a        	movi	a11, 0x56a
4037d93a:	86f9ff        	j	0x4037d924
4037d93d:	000000        	ill
4037d940:	e54901        	call8	0x4037ede0
4037d943:	a06a20        	or	a6, a10, a10
4037d946:	560a01        	bnez	a10, 0x4037d95a
4037d949:	422103        	l32i	a4, a1, 12
4037d94c:	8cc4      	beqz.n	a4, 0x4037d95c
4037d94e:	d166dd        	l32r	a13, 0x40374ee8
4037d951:	c16edd        	l32r	a12, 0x40374f0c
4037d954:	b2a56f        	movi	a11, 0x56f
4037d957:	46f2ff        	j	0x4037d924
4037d95a:	0c06      	movi.n	a6, 0
4037d95c:	42c24c        	addi	a4, a2, 76
4037d95f:	462300        	j	0x4037d9f0
4037d962:	522103        	l32i	a5, a1, 12
4037d965:	56c500        	bnez	a5, 0x4037d975
4037d968:	40a420        	or	a10, a4, a4
4037d96b:	252902        	call8	0x4037fbfc
4037d96e:	0c02      	movi.n	a2, 0
4037d970:	462f00        	j	0x4037da31
4037d973:	00          	.byte	00
4037d974:	00cc46        	ee.ldf.64.xp	f12, f4, a0, a12
4037d977:	a2c118        	addi	a10, a1, 24
4037d97a:	e50001        	call8	0x4037e988
4037d97d:	ad04      	mov.n	a10, a4
4037d97f:	e52702        	call8	0x4037fbfc
4037d982:	7cfb      	movi.n	a11, -1
4037d984:	ad04      	mov.n	a10, a4
4037d986:	251302        	call8	0x4037fab8
4037d989:	7cfb      	movi.n	a11, -1
4037d98b:	40a420        	or	a10, a4, a4
4037d98e:	a51202        	call8	0x4037fab8
4037d991:	c02000        	memw
4037d994:	520244        	l8ui	a5, a2, 68
4037d997:	005523        	sext	a5, a5, 7
4037d99a:	660507        	bnei	a5, -1, 0x4037d9a5
4037d99d:	0c05      	movi.n	a5, 0
4037d99f:	c02000        	memw
4037d9a2:	524244        	s8i	a5, a2, 68
4037d9a5:	c02000        	memw
4037d9a8:	520245        	l8ui	a5, a2, 69
4037d9ab:	005523        	sext	a5, a5, 7
4037d9ae:	660508        	bnei	a5, -1, 0x4037d9ba
4037d9b1:	52a000        	movi	a5, 0
4037d9b4:	c02000        	memw
4037d9b7:	524245        	s8i	a5, a2, 69
4037d9ba:	40a420        	or	a10, a4, a4
4037d9bd:	e52302        	call8	0x4037fbfc
4037d9c0:	cbb1      	addi.n	a11, a1, 12
4037d9c2:	a2c118        	addi	a10, a1, 24
4037d9c5:	e5fd00        	call8	0x4037e9a4
4037d9c8:	568a07        	bnez	a10, 0x4037da44
4037d9cb:	ad02      	mov.n	a10, a2
4037d9cd:	2575ff        	call8	0x4037d120
4037d9d0:	160a06        	beqz	a10, 0x4037da34
4037d9d3:	b831      	l32i.n	a11, a1, 12
4037d9d5:	a2c224        	addi	a10, a2, 36
4037d9d8:	65e400        	call8	0x4037e820
4037d9db:	ad02      	mov.n	a10, a2
4037d9dd:	6589ff        	call8	0x4037d274
4037d9e0:	ad04      	mov.n	a10, a4
4037d9e2:	a52102        	call8	0x4037fbfc
4037d9e5:	a0eb03        	rsr.prid	a10
4037d9e8:	a0ad04        	extui	a10, a10, 13, 1
4037d9eb:	a560fa        	call8	0x40377ff4
4037d9ee:	0c16      	movi.n	a6, 1
4037d9f0:	b2afff        	movi	a11, -1
4037d9f3:	40a420        	or	a10, a4, a4
4037d9f6:	250c02        	call8	0x4037fab8
4037d9f9:	c02000        	memw
4037d9fc:	58e2      	l32i.n	a5, a2, 56
4037d9fe:	1605f6        	beqz	a5, 0x4037d962
4037da01:	bd03      	mov.n	a11, a3
4037da03:	ad02      	mov.n	a10, a2
4037da05:	52c5ff        	addi	a5, a5, -1
4037da08:	6584ff        	call8	0x4037d250
4037da0b:	c02000        	memw
4037da0e:	59e2      	s32i.n	a5, a2, 56
4037da10:	c02000        	memw
4037da13:	3842      	l32i.n	a3, a2, 16
4037da15:	8cf3      	beqz.n	a3, 0x4037da28
4037da17:	a2c210        	addi	a10, a2, 16
4037da1a:	25e500        	call8	0x4037e86c
4037da1d:	8c7a      	beqz.n	a10, 0x4037da28
4037da1f:	a0eb03        	rsr.prid	a10
4037da22:	a0ad04        	extui	a10, a10, 13, 1
4037da25:	e55cfa        	call8	0x40377ff4
4037da28:	40a420        	or	a10, a4, a4
4037da2b:	251d02        	call8	0x4037fbfc
4037da2e:	22a001        	movi	a2, 1
4037da31:	900000        	retw
4037da34:	20a220        	or	a10, a2, a2
4037da37:	e583ff        	call8	0x4037d274
4037da3a:	40a420        	or	a10, a4, a4
4037da3d:	e51b02        	call8	0x4037fbfc
4037da40:	86eaff        	j	0x4037d9ee
4037da43:	0020a2        	muluh	a2, a0, a0
4037da46:	20e582        	mull	a14, a5, a2
4037da49:	ff          	.byte	0xff
4037da4a:	ad04      	mov.n	a10, a4
4037da4c:	e51a02        	call8	0x4037fbfc
4037da4f:	ad02      	mov.n	a10, a2
4037da51:	e56cff        	call8	0x4037d120
4037da54:	166af9        	beqz	a10, 0x4037d9ee
4037da57:	c6c4ff        	j	0x4037d96e
4037da5a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037da5d:	810039        	l32r	a8, 0x4034be60
4037da60:	314d02        	l32r	a3, 0x4033e394
4037da63:	56e200        	bnez	a2, 0x4037da75
4037da66:	d128dd        	l32r	a13, 0x40374f08
4037da69:	c12add        	l32r	a12, 0x40374f14
4037da6c:	b2a609        	movi	a11, 0x609
4037da6f:	a10add        	l32r	a10, 0x40374e98
4037da72:	e5ee04        	call8	0x40382960
4037da75:	222210        	l32i	a2, a2, 64
4037da78:	8cd2      	beqz.n	a2, 0x4037da89
4037da7a:	d121dd        	l32r	a13, 0x40374f00
4037da7d:	c125dd        	l32r	a12, 0x40374f14
4037da80:	b2a60d        	movi	a11, 0x60d
4037da83:	06faff        	j	0x4037da6f
4037da86:	000000        	ill
4037da89:	653501        	call8	0x4037ede0
4037da8c:	a05a20        	or	a5, a10, a10
4037da8f:	563a01        	bnez	a10, 0x4037daa6
4037da92:	322103        	l32i	a3, a1, 12
4037da95:	2d0a      	mov.n	a2, a10
4037da97:	8cd3      	beqz.n	a3, 0x4037daa8
4037da99:	d113dd        	l32r	a13, 0x40374ee8
4037da9c:	c11edd        	l32r	a12, 0x40374f14
4037da9f:	b2a612        	movi	a11, 0x612
4037daa2:	46f2ff        	j	0x4037da6f
4037daa5:	005d02        	andb	b5, b13, b0
4037daa8:	32c44c        	addi	a3, a4, 76
4037daab:	062900        	j	0x4037db53
4037daae:	622103        	l32i	a6, a1, 12
4037dab1:	56c600        	bnez	a6, 0x4037dac1
4037dab4:	30a320        	or	a10, a3, a3
4037dab7:	651402        	call8	0x4037fbfc
4037daba:	0c02      	movi.n	a2, 0
4037dabc:	463500        	j	0x4037db95
4037dabf:	00          	.byte	00
4037dac0:	00cc45        	extui	a12, a0, 28, 5
4037dac3:	a2c118        	addi	a10, a1, 24
4037dac6:	25ec00        	call8	0x4037e988
4037dac9:	ad03      	mov.n	a10, a3
4037dacb:	251302        	call8	0x4037fbfc
4037dace:	7cfb      	movi.n	a11, -1
4037dad0:	ad03      	mov.n	a10, a3
4037dad2:	65fe01        	call8	0x4037fab8
4037dad5:	7cfb      	movi.n	a11, -1
4037dad7:	30a320        	or	a10, a3, a3
4037dada:	e5fd01        	call8	0x4037fab8
4037dadd:	c02000        	memw
4037dae0:	520444        	l8ui	a5, a4, 68
4037dae3:	005523        	sext	a5, a5, 7
4037dae6:	660507        	bnei	a5, -1, 0x4037daf1
4037dae9:	0c05      	movi.n	a5, 0
4037daeb:	c02000        	memw
4037daee:	524444        	s8i	a5, a4, 68
4037daf1:	c02000        	memw
4037daf4:	520445        	l8ui	a5, a4, 69
4037daf7:	005523        	sext	a5, a5, 7
4037dafa:	660508        	bnei	a5, -1, 0x4037db06
4037dafd:	52a000        	movi	a5, 0
4037db00:	c02000        	memw
4037db03:	524445        	s8i	a5, a4, 69
4037db06:	ad03      	mov.n	a10, a3
4037db08:	250f02        	call8	0x4037fbfc
4037db0b:	cbb1      	addi.n	a11, a1, 12
4037db0d:	a2c118        	addi	a10, a1, 24
4037db10:	25e900        	call8	0x4037e9a4
4037db13:	562a09        	bnez	a10, 0x4037dba9
4037db16:	ad04      	mov.n	a10, a4
4037db18:	6560ff        	call8	0x4037d120
4037db1b:	16ba07        	beqz	a10, 0x4037db9a
4037db1e:	5804      	l32i.n	a5, a4, 0
4037db20:	dc15      	bnez.n	a5, 0x4037db35
4037db22:	7cfb      	movi.n	a11, -1
4037db24:	ad03      	mov.n	a10, a3
4037db26:	25f901        	call8	0x4037fab8
4037db29:	a824      	l32i.n	a10, a4, 8
4037db2b:	255f01        	call8	0x4037f11c
4037db2e:	2d0a      	mov.n	a2, a10
4037db30:	ad03      	mov.n	a10, a3
4037db32:	a50c02        	call8	0x4037fbfc
4037db35:	b831      	l32i.n	a11, a1, 12
4037db37:	a2c424        	addi	a10, a4, 36
4037db3a:	65ce00        	call8	0x4037e820
4037db3d:	ad04      	mov.n	a10, a4
4037db3f:	6573ff        	call8	0x4037d274
4037db42:	ad03      	mov.n	a10, a3
4037db44:	650b02        	call8	0x4037fbfc
4037db47:	a0eb03        	rsr.prid	a10
4037db4a:	a0ad04        	extui	a10, a10, 13, 1
4037db4d:	654afa        	call8	0x40377ff4
4037db50:	52a001        	movi	a5, 1
4037db53:	b2afff        	movi	a11, -1
4037db56:	ad03      	mov.n	a10, a3
4037db58:	e5f501        	call8	0x4037fab8
4037db5b:	c02000        	memw
4037db5e:	88e4      	l32i.n	a8, a4, 56
4037db60:	16a8f4        	beqz	a8, 0x4037daae
4037db63:	0b88      	addi.n	a8, a8, -1
4037db65:	2804      	l32i.n	a2, a4, 0
4037db67:	c02000        	memw
4037db6a:	89e4      	s32i.n	a8, a4, 56
4037db6c:	564200        	bnez	a2, 0x4037db74
4037db6f:	e57e01        	call8	0x4037f35c
4037db72:	a924      	s32i.n	a10, a4, 8
4037db74:	c02000        	memw
4037db77:	222404        	l32i	a2, a4, 16
4037db7a:	160201        	beqz	a2, 0x4037db8e
4037db7d:	a2c410        	addi	a10, a4, 16
4037db80:	a5ce00        	call8	0x4037e86c
4037db83:	8c7a      	beqz.n	a10, 0x4037db8e
4037db85:	a0eb03        	rsr.prid	a10
4037db88:	a0ad04        	extui	a10, a10, 13, 1
4037db8b:	a546fa        	call8	0x40377ff4
4037db8e:	ad03      	mov.n	a10, a3
4037db90:	a50602        	call8	0x4037fbfc
4037db93:	0c12      	movi.n	a2, 1
4037db95:	1df0      	retw.n
4037db97:	000000        	ill
4037db9a:	40a420        	or	a10, a4, a4
4037db9d:	656dff        	call8	0x4037d274
4037dba0:	30a320        	or	a10, a3, a3
4037dba3:	a50502        	call8	0x4037fbfc
4037dba6:	86e9ff        	j	0x4037db50
4037dba9:	40a420        	or	a10, a4, a4
4037dbac:	656cff        	call8	0x4037d274
4037dbaf:	30a320        	or	a10, a3, a3
4037dbb2:	a50402        	call8	0x4037fbfc
4037dbb5:	40a420        	or	a10, a4, a4
4037dbb8:	6556ff        	call8	0x4037d120
4037dbbb:	161af9        	beqz	a10, 0x4037db50
4037dbbe:	1632fd        	beqz	a2, 0x4037db95
4037dbc1:	7cfb      	movi.n	a11, -1
4037dbc3:	ad03      	mov.n	a10, a3
4037dbc5:	25ef01        	call8	0x4037fab8
4037dbc8:	c02000        	memw
4037dbcb:	b894      	l32i.n	a11, a4, 36
4037dbcd:	8c7b      	beqz.n	a11, 0x4037dbd8
4037dbcf:	28c4      	l32i.n	a2, a4, 48
4037dbd1:	1c9b      	movi.n	a11, 25
4037dbd3:	2802      	l32i.n	a2, a2, 0
4037dbd5:	20bbc0        	sub	a11, a11, a2
4037dbd8:	a824      	l32i.n	a10, a4, 8
4037dbda:	656d01        	call8	0x4037f2b0
4037dbdd:	c6b4ff        	j	0x4037dab4
4037dbe0:	364100        	entry	a1, 32
4037dbe3:	56e200        	bnez	a2, 0x4037dbf5
4037dbe6:	d1c2dc        	l32r	a13, 0x40374ef0
4037dbe9:	c1cbdc        	l32r	a12, 0x40374f18
4037dbec:	a1abdc        	l32r	a10, 0x40374e98
4037dbef:	b2a2cd        	movi	a11, 0x2cd
4037dbf2:	e5d604        	call8	0x40382960
4037dbf5:	4822      	l32i.n	a4, a2, 8
4037dbf7:	65e800        	call8	0x4037ea7c
4037dbfa:	a7940c        	bne	a4, a10, 0x4037dc0a
4037dbfd:	8832      	l32i.n	a8, a2, 12
4037dbff:	0c1a      	movi.n	a10, 1
4037dc01:	1b88      	addi.n	a8, a8, 1
4037dc03:	8932      	s32i.n	a8, a2, 12
4037dc05:	2d0a      	mov.n	a2, a10
4037dc07:	1df0      	retw.n
4037dc09:	0030b3        	movgez	a3, a0, a0
4037dc0c:	2020a2        	muluh	a2, a0, a2
4037dc0f:	20a5e4        	extui	a10, a2, 5, 15
4037dc12:	ff          	.byte	0xff
4037dc13:	16eafe        	beqz	a10, 0x4037dc05
4037dc16:	822203        	l32i	a8, a2, 12
4037dc19:	1b88      	addi.n	a8, a8, 1
4037dc1b:	8932      	s32i.n	a8, a2, 12
4037dc1d:	06f9ff        	j	0x4037dc05
4037dc20:	368100        	entry	a1, 64
4037dc23:	4931      	s32i.n	a4, a1, 12
4037dc25:	ccd2      	bnez.n	a2, 0x4037dc36
4037dc27:	d1b8dc        	l32r	a13, 0x40374f08
4037dc2a:	c1bcdc        	l32r	a12, 0x40374f1c
4037dc2d:	b2a6ea        	movi	a11, 0x6ea
4037dc30:	a19adc        	l32r	a10, 0x40374e98
4037dc33:	e5d204        	call8	0x40382960
4037dc36:	dc23      	bnez.n	a3, 0x4037dc4c
4037dc38:	422210        	l32i	a4, a2, 64
4037dc3b:	8cd4      	beqz.n	a4, 0x4037dc4c
4037dc3d:	d1b4dc        	l32r	a13, 0x40374f10
4037dc40:	c1b7dc        	l32r	a12, 0x40374f1c
4037dc43:	b2a6ee        	movi	a11, 0x6ee
4037dc46:	86f9ff        	j	0x4037dc30
4037dc49:	000000        	ill
4037dc4c:	251901        	call8	0x4037ede0
4037dc4f:	a06a20        	or	a6, a10, a10
4037dc52:	560a01        	bnez	a10, 0x4037dc66
4037dc55:	422103        	l32i	a4, a1, 12
4037dc58:	8cc4      	beqz.n	a4, 0x4037dc68
4037dc5a:	d1a3dc        	l32r	a13, 0x40374ee8
4037dc5d:	c1afdc        	l32r	a12, 0x40374f1c
4037dc60:	b2a6f3        	movi	a11, 0x6f3
4037dc63:	46f2ff        	j	0x4037dc30
4037dc66:	0c06      	movi.n	a6, 0
4037dc68:	42c24c        	addi	a4, a2, 76
4037dc6b:	462300        	j	0x4037dcfc
4037dc6e:	522103        	l32i	a5, a1, 12
4037dc71:	56c500        	bnez	a5, 0x4037dc81
4037dc74:	40a420        	or	a10, a4, a4
4037dc77:	65f801        	call8	0x4037fbfc
4037dc7a:	0c02      	movi.n	a2, 0
4037dc7c:	462e00        	j	0x4037dd39
4037dc7f:	00          	.byte	00
4037dc80:	00cc46        	ee.ldf.64.xp	f12, f4, a0, a12
4037dc83:	a2c118        	addi	a10, a1, 24
4037dc86:	25d000        	call8	0x4037e988
4037dc89:	ad04      	mov.n	a10, a4
4037dc8b:	25f701        	call8	0x4037fbfc
4037dc8e:	7cfb      	movi.n	a11, -1
4037dc90:	ad04      	mov.n	a10, a4
4037dc92:	65e201        	call8	0x4037fab8
4037dc95:	7cfb      	movi.n	a11, -1
4037dc97:	40a420        	or	a10, a4, a4
4037dc9a:	e5e101        	call8	0x4037fab8
4037dc9d:	c02000        	memw
4037dca0:	520244        	l8ui	a5, a2, 68
4037dca3:	005523        	sext	a5, a5, 7
4037dca6:	660507        	bnei	a5, -1, 0x4037dcb1
4037dca9:	0c05      	movi.n	a5, 0
4037dcab:	c02000        	memw
4037dcae:	524244        	s8i	a5, a2, 68
4037dcb1:	c02000        	memw
4037dcb4:	520245        	l8ui	a5, a2, 69
4037dcb7:	005523        	sext	a5, a5, 7
4037dcba:	660508        	bnei	a5, -1, 0x4037dcc6
4037dcbd:	52a000        	movi	a5, 0
4037dcc0:	c02000        	memw
4037dcc3:	524245        	s8i	a5, a2, 69
4037dcc6:	40a420        	or	a10, a4, a4
4037dcc9:	25f301        	call8	0x4037fbfc
4037dccc:	cbb1      	addi.n	a11, a1, 12
4037dcce:	a2c118        	addi	a10, a1, 24
4037dcd1:	25cd00        	call8	0x4037e9a4
4037dcd4:	564a07        	bnez	a10, 0x4037dd4c
4037dcd7:	ad02      	mov.n	a10, a2
4037dcd9:	6544ff        	call8	0x4037d120
4037dcdc:	16ca05        	beqz	a10, 0x4037dd3c
4037dcdf:	b831      	l32i.n	a11, a1, 12
4037dce1:	a2c224        	addi	a10, a2, 36
4037dce4:	a5b300        	call8	0x4037e820
4037dce7:	ad02      	mov.n	a10, a2
4037dce9:	a558ff        	call8	0x4037d274
4037dcec:	ad04      	mov.n	a10, a4
4037dcee:	e5f001        	call8	0x4037fbfc
4037dcf1:	a0eb03        	rsr.prid	a10
4037dcf4:	a0ad04        	extui	a10, a10, 13, 1
4037dcf7:	e52ffa        	call8	0x40377ff4
4037dcfa:	0c16      	movi.n	a6, 1
4037dcfc:	b2afff        	movi	a11, -1
4037dcff:	40a420        	or	a10, a4, a4
4037dd02:	65db01        	call8	0x4037fab8
4037dd05:	c02000        	memw
4037dd08:	58e2      	l32i.n	a5, a2, 56
4037dd0a:	1605f6        	beqz	a5, 0x4037dc6e
4037dd0d:	5832      	l32i.n	a5, a2, 12
4037dd0f:	bd03      	mov.n	a11, a3
4037dd11:	ad02      	mov.n	a10, a2
4037dd13:	e553ff        	call8	0x4037d250
4037dd16:	c02000        	memw
4037dd19:	3892      	l32i.n	a3, a2, 36
4037dd1b:	5932      	s32i.n	a5, a2, 12
4037dd1d:	8cf3      	beqz.n	a3, 0x4037dd30
4037dd1f:	a2c224        	addi	a10, a2, 36
4037dd22:	a5b400        	call8	0x4037e86c
4037dd25:	8c7a      	beqz.n	a10, 0x4037dd30
4037dd27:	a0eb03        	rsr.prid	a10
4037dd2a:	a0ad04        	extui	a10, a10, 13, 1
4037dd2d:	652cfa        	call8	0x40377ff4
4037dd30:	40a420        	or	a10, a4, a4
4037dd33:	a5ec01        	call8	0x4037fbfc
4037dd36:	22a001        	movi	a2, 1
4037dd39:	900000        	retw
4037dd3c:	20a220        	or	a10, a2, a2
4037dd3f:	6553ff        	call8	0x4037d274
4037dd42:	40a420        	or	a10, a4, a4
4037dd45:	65eb01        	call8	0x4037fbfc
4037dd48:	86ebff        	j	0x4037dcfa
4037dd4b:	0020a2        	muluh	a2, a0, a0
4037dd4e:	20          	.byte	0x20
4037dd4f:	6552ff        	call8	0x4037d274
4037dd52:	ad04      	mov.n	a10, a4
4037dd54:	65ea01        	call8	0x4037fbfc
4037dd57:	ad02      	mov.n	a10, a2
4037dd59:	653cff        	call8	0x4037d120
4037dd5c:	16aaf9        	beqz	a10, 0x4037dcfa
4037dd5f:	c6c5ff        	j	0x4037dc7a
4037dd62:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037dd65:	61009d        	l32r	a6, 0x40365168
4037dd68:	03ccd2        	ssip	f0, a12, 0x348
4037dd6b:	d14edc        	l32r	a13, 0x40374ea4
4037dd6e:	c16cdc        	l32r	a12, 0x40374f20
4037dd71:	b2a790        	movi	a11, 0x790
4037dd74:	a149dc        	l32r	a10, 0x40374e98
4037dd77:	a5be04        	call8	0x40382960
4037dd7a:	dc23      	bnez.n	a3, 0x4037dd90
4037dd7c:	322210        	l32i	a3, a2, 64
4037dd7f:	8cd3      	beqz.n	a3, 0x4037dd90
4037dd81:	d168dc        	l32r	a13, 0x40374f24
4037dd84:	c167dc        	l32r	a12, 0x40374f20
4037dd87:	b2a791        	movi	a11, 0x791
4037dd8a:	86f9ff        	j	0x4037dd74
4037dd8d:	000000        	ill
4037dd90:	706300        	rsil	a7, 3
4037dd93:	62c24c        	addi	a6, a2, 76
4037dd96:	7cfb      	movi.n	a11, -1
4037dd98:	ad06      	mov.n	a10, a6
4037dd9a:	9931      	s32i.n	a9, a1, 12
4037dd9c:	a5d101        	call8	0x4037fab8
4037dd9f:	c02000        	memw
4037dda2:	88e2      	l32i.n	a8, a2, 56
4037dda4:	0c03      	movi.n	a3, 0
4037dda6:	9831      	l32i.n	a9, a1, 12
4037dda8:	37182b        	beq	a8, a3, 0x4037ddd7
4037ddab:	bd09      	mov.n	a11, a9
4037ddad:	ad02      	mov.n	a10, a2
4037ddaf:	c02000        	memw
4037ddb2:	520244        	l8ui	a5, a2, 68
4037ddb5:	8931      	s32i.n	a8, a1, 12
4037ddb7:	a549ff        	call8	0x4037d250
4037ddba:	8831      	l32i.n	a8, a1, 12
4037ddbc:	505074        	extui	a5, a5, 0, 8
4037ddbf:	0b88      	addi.n	a8, a8, -1
4037ddc1:	c02000        	memw
4037ddc4:	89e2      	s32i.n	a8, a2, 56
4037ddc6:	008523        	sext	a8, a5, 7
4037ddc9:	66083d        	bnei	a8, -1, 0x4037de0a
4037ddcc:	c02000        	memw
4037ddcf:	5842      	l32i.n	a5, a2, 16
4037ddd1:	379517        	bne	a5, a3, 0x4037ddec
4037ddd4:	32a001        	movi	a3, 1
4037ddd7:	60a620        	or	a10, a6, a6
4037ddda:	25e201        	call8	0x4037fbfc
4037dddd:	70a720        	or	a10, a7, a7
4037dde0:	8153db        	l32r	a8, 0x40374b2c
4037dde3:	e00800        	callx8	a8
4037dde6:	2d03      	mov.n	a2, a3
4037dde8:	1df0      	retw.n
4037ddea:	0000a2        	muluh	a0, a0, a0
4037dded:	c21052        	l16ui	a12, a0, 164
4037ddf0:	a00130        	xor	a0, a1, a10
4037ddf3:	23          	.byte	0x23
4037ddf4:	204025        	extui	a4, a2, 16, 3
4037ddf7:	93          	.byte	0x93
4037ddf8:	25a700        	call8	0x4037e86c
4037ddfb:	1652fd        	beqz	a2, 0x4037ddd4
4037ddfe:	a03593        	movnez	a3, a5, a10
4037de01:	16f3fc        	beqz	a3, 0x4037ddd4
4037de04:	526400        	s32i	a5, a4, 0
4037de07:	46f2ff        	j	0x4037ddd4
4037de0a:	1b55      	addi.n	a5, a5, 1
4037de0c:	505074        	extui	a5, a5, 0, 8
4037de0f:	c02000        	memw
4037de12:	524244        	s8i	a5, a2, 68
4037de15:	c6eeff        	j	0x4037ddd4
4037de18:	364100        	entry	a1, 32
4037de1b:	56e200        	bnez	a2, 0x4037de2d
4037de1e:	d142dc        	l32r	a13, 0x40374f28
4037de21:	c142dc        	l32r	a12, 0x40374f2c
4037de24:	b143dc        	l32r	a11, 0x40374f30
4037de27:	a11cdc        	l32r	a10, 0x40374e98
4037de2a:	65b304        	call8	0x40382960
4037de2d:	32c24c        	addi	a3, a2, 76
4037de30:	7cfb      	movi.n	a11, -1
4037de32:	30a320        	or	a10, a3, a3
4037de35:	25c801        	call8	0x4037fab8
4037de38:	ad03      	mov.n	a10, a3
4037de3a:	c02000        	memw
4037de3d:	28e2      	l32i.n	a2, a2, 56
4037de3f:	e5db01        	call8	0x4037fbfc
4037de42:	1df0      	retw.n
4037de44:	364100        	entry	a1, 32
4037de47:	ad02      	mov.n	a10, a2
4037de49:	dc02      	bnez.n	a2, 0x4037de5d
4037de4b:	d116dc        	l32r	a13, 0x40374ea4
4037de4e:	c139dc        	l32r	a12, 0x40374f34
4037de51:	b139dc        	l32r	a11, 0x40374f38
4037de54:	a111dc        	l32r	a10, 0x40374e98
4037de57:	101120        	or	a1, a1, a1
4037de5a:	65b004        	call8	0x40382960
4037de5d:	820246        	l8ui	a8, a2, 70
4037de60:	cc18      	bnez.n	a8, 0x4037de65
4037de62:	e5c204        	call8	0x40382a90
4037de65:	1df0      	retw.n
4037de67:	00          	.byte	00
4037de68:	366100        	entry	a1, 48
4037de6b:	8d03      	mov.n	a8, a3
4037de6d:	38c1      	l32i.n	a3, a1, 48
4037de6f:	cd04      	mov.n	a12, a4
4037de71:	a8d3      	l32i.n	a10, a3, 52
4037de73:	b2a0a5        	movi	a11, 165
4037de76:	8931      	s32i.n	a8, a1, 12
4037de78:	4921      	s32i.n	a4, a1, 8
4037de7a:	8189d9        	l32r	a8, 0x403744a0
4037de7d:	e00800        	callx8	a8
4037de80:	d821      	l32i.n	a13, a1, 8
4037de82:	48d3      	l32i.n	a4, a3, 52
4037de84:	0b9d      	addi.n	a9, a13, -1
4037de86:	9a44      	add.n	a4, a4, a9
4037de88:	7c09      	movi.n	a9, -16
4037de8a:	904410        	and	a4, a4, a9
4037de8d:	8831      	l32i.n	a8, a1, 12
4037de8f:	426313        	s32i	a4, a3, 76
4037de92:	162809        	beqz	a8, 0x4037df28
4037de95:	0c09      	movi.n	a9, 0
4037de97:	1c0a      	movi.n	a10, 16
4037de99:	768a0d        	loop	a10, 0x4037deaa
4037de9c:	9ab8      	add.n	a11, a8, a9
4037de9e:	b20b00        	l8ui	a11, a11, 0
4037dea1:	9ac3      	add.n	a12, a3, a9
4037dea3:	b24c38        	s8i	a11, a12, 56
4037dea6:	8c0b      	beqz.n	a11, 0x4037deaa
4037dea8:	1b99      	addi.n	a9, a9, 1
4037deaa:	0c08      	movi.n	a8, 0
4037deac:	824347        	s8i	a8, a3, 71
4037deaf:	1c88      	movi.n	a8, 24
4037deb1:	808663        	minu	a8, a6, a8
4037deb4:	68e1      	l32i.n	a6, a1, 56
4037deb6:	89c3      	s32i.n	a8, a3, 48
4037deb8:	626312        	s32i	a6, a3, 72
4037debb:	0c06      	movi.n	a6, 0
4037debd:	826314        	s32i	a8, a3, 80
4037dec0:	626315        	s32i	a6, a3, 84
4037dec3:	8ba3      	addi.n	a10, a3, 8
4037dec5:	8931      	s32i.n	a8, a1, 12
4037dec7:	d921      	s32i.n	a13, a1, 8
4037dec9:	a5a401        	call8	0x4037f914
4037decc:	a2c31c        	addi	a10, a3, 28
4037decf:	65a401        	call8	0x4037f914
4037ded2:	8831      	l32i.n	a8, a1, 12
4037ded4:	1c99      	movi.n	a9, 25
4037ded6:	8089c0        	sub	a8, a9, a8
4037ded9:	d821      	l32i.n	a13, a1, 8
4037dedb:	c8d3      	l32i.n	a12, a3, 52
4037dedd:	b8d1      	l32i.n	a11, a1, 52
4037dedf:	8973      	s32i.n	a8, a3, 28
4037dee1:	4ba3      	addi.n	a10, a3, 4
4037dee3:	3953      	s32i.n	a3, a3, 20
4037dee5:	39a3      	s32i.n	a3, a3, 40
4037dee7:	e5e101        	call8	0x4037fd04
4037deea:	a2a150        	movi	a10, 0x150
4037deed:	0c4c      	movi.n	a12, 4
4037deef:	bd06      	mov.n	a11, a6
4037def1:	626316        	s32i	a6, a3, 88
4037def4:	626317        	s32i	a6, a3, 92
4037def7:	aaa3      	add.n	a10, a3, a10
4037def9:	8169d9        	l32r	a8, 0x403744a0
4037defc:	e00800        	callx8	a8
4037deff:	82a154        	movi	a8, 0x154
4037df02:	8a83      	add.n	a8, a3, a8
4037df04:	624800        	s8i	a6, a8, 0
4037df07:	a2c360        	addi	a10, a3, 96
4037df0a:	25fcfb        	call8	0x40379ecc
4037df0d:	82d301        	addmi	a8, a3, 0x100
4037df10:	624856        	s8i	a6, a8, 86
4037df13:	dd06      	mov.n	a13, a6
4037df15:	cd05      	mov.n	a12, a5
4037df17:	bd02      	mov.n	a11, a2
4037df19:	ad04      	mov.n	a10, a4
4037df1b:	25ad01        	call8	0x4037f9ec
4037df1e:	a903      	s32i.n	a10, a3, 0
4037df20:	671701        	beq	a7, a6, 0x4037df25
4037df23:	3907      	s32i.n	a3, a7, 0
4037df25:	1df0      	retw.n
4037df27:	008243        	min	a8, a2, a0
4037df2a:	3806      	l32i.n	a3, a6, 0
4037df2c:	e0          	.byte	0xe0
4037df2d:	ff000036 	ee.vmulas.s8.qacc.ld.ip.qup	q4, a15, 0x100, q4, q0, q0, q0
4037df31:	410091        	l32r	a4, 0x40362334
4037df34:	02dcc0        	addmi	a0, a12, 0xffffc000
4037df37:	20          	.byte	0x20
4037df38:	008809        	l32e	a0, a8, -32
4037df3b:	c02000        	memw
4037df3e:	a808      	l32i.n	a10, a8, 0
4037df40:	8100dc        	l32r	a8, 0x40374f40
4037df43:	cc9a      	bnez.n	a10, 0x4037df50
4037df45:	7cf9      	movi.n	a9, -1
4037df47:	c02000        	memw
4037df4a:	9908      	s32i.n	a9, a8, 0
4037df4c:	1df0      	retw.n
4037df4e:	0000c0        	sub	a0, a0, a0
4037df51:	20          	.byte	0x20
4037df52:	009809        	l32e	a0, a8, -28
4037df55:	9839      	l32i.n	a9, a9, 12
4037df57:	9839      	l32i.n	a9, a9, 12
4037df59:	9829      	l32i.n	a9, a9, 8
4037df5b:	06faff        	j	0x4037df47
4037df5e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037df61:	410056        	l32r	a4, 0x40353764
4037df64:	e200d1        	l8ui	a14, a0, 209
4037df67:	f7dbc1        	bbs	a11, a15, 0x4037df2c
4037df6a:	f7dbb1        	bbs	a11, a15, 0x4037df1f
4037df6d:	f8db      	l32i.n	a15, a11, 52
4037df6f:	a1f8db        	l32r	a10, 0x40374f50
4037df72:	e59e04        	call8	0x40382960
4037df75:	822217        	l32i	a8, a2, 92
4037df78:	168800        	beqz	a8, 0x4037df84
4037df7b:	b22216        	l32i	a11, a2, 88
4037df7e:	a2a000        	movi	a10, 0
4037df81:	e00800        	callx8	a8
4037df84:	900000        	retw
4037df87:	003641        	srli	a3, a0, 6
4037df8a:	00a2c2        	quou	a10, a2, a0
4037df8d:	6081f4        	extui	a8, a6, 1, 16
4037df90:	dbe0      	addi.n	a14, a0, 13
4037df92:	0800      	l32i.n	a0, a0, 0
4037df94:	a2c204        	addi	a10, a2, 4
4037df97:	25d601        	call8	0x4037fcf8
4037df9a:	82d201        	addmi	a8, a2, 0x100
4037df9d:	820855        	l8ui	a8, a8, 85
4037dfa0:	56c800        	bnez	a8, 0x4037dfb0
4037dfa3:	a8d2      	l32i.n	a10, a2, 52
4037dfa5:	a5ae04        	call8	0x40382a90
4037dfa8:	ad02      	mov.n	a10, a2
4037dfaa:	65ae04        	call8	0x40382a90
4037dfad:	1df0      	retw.n
4037dfaf:	002618        	lsxp	f2, a6, a0
4037dfb2:	f4          	.byte	0xf4
4037dfb3:	2628f6        	beqi	a8, 2, 0x4037dfad
4037dfb6:	d1e7db        	l32r	a13, 0x40374f54
4037dfb9:	c1e7db        	l32r	a12, 0x40374f58
4037dfbc:	b1e8db        	l32r	a11, 0x40374f5c
4037dfbf:	a1e4db        	l32r	a10, 0x40374f50
4037dfc2:	e59904        	call8	0x40382960
4037dfc5:	000000        	ill
4037dfc8:	364100        	entry	a1, 32
4037dfcb:	0c02      	movi.n	a2, 0
4037dfcd:	40eb03        	rsr.prid	a4
4037dfd0:	404d04        	extui	a4, a4, 13, 1
4037dfd3:	0c15      	movi.n	a5, 1
4037dfd5:	6d02      	mov.n	a6, a2
4037dfd7:	406583        	moveqz	a6, a5, a4
4037dfda:	e06611        	slli	a6, a6, 2
4037dfdd:	31e5db        	l32r	a3, 0x40374f74
4037dfe0:	c02000        	memw
4037dfe3:	7803      	l32i.n	a7, a3, 0
4037dfe5:	bc07      	beqz.n	a7, 0x4037e019
4037dfe7:	a1dfdb        	l32r	a10, 0x40374f64
4037dfea:	b2afff        	movi	a11, -1
4037dfed:	a5ac01        	call8	0x4037fab8
4037dff0:	91dedb        	l32r	a9, 0x40374f68
4037dff3:	7d02      	mov.n	a7, a2
4037dff5:	c02000        	memw
4037dff8:	a809      	l32i.n	a10, a9, 0
4037dffa:	9c3a      	beqz.n	a10, 0x4037e011
4037dffc:	b196da        	l32r	a11, 0x40374a54
4037dfff:	e0c411        	slli	a12, a4, 2
4037e002:	a839      	l32i.n	a10, a9, 12
4037e004:	d1dbdb        	l32r	a13, 0x40374f70
4037e007:	cacb      	add.n	a12, a11, a12
4037e009:	6abb      	add.n	a11, a11, a6
4037e00b:	d79a16        	bne	a10, a13, 0x4037e025
4037e00e:	207220        	or	a7, a2, a2
4037e011:	a1d4db        	l32r	a10, 0x40374f64
4037e014:	65be01        	call8	0x4037fbfc
4037e017:	fcb7      	bnez.n	a7, 0x4037e056
4037e019:	81d8db        	l32r	a8, 0x40374f7c
4037e01c:	e00800        	callx8	a8
4037e01f:	86eaff        	j	0x4037dfcd
4037e022:	000000        	ill
4037e025:	783a      	l32i.n	a7, a10, 12
4037e027:	c02000        	memw
4037e02a:	980c      	l32i.n	a9, a12, 0
4037e02c:	971721        	beq	a7, a9, 0x4037e051
4037e02f:	c02000        	memw
4037e032:	980b      	l32i.n	a9, a11, 0
4037e034:	971719        	beq	a7, a9, 0x4037e051
4037e037:	922712        	l32i	a9, a7, 72
4037e03a:	8d02      	mov.n	a8, a2
4037e03c:	90e4c0        	sub	a14, a4, a9
4037e03f:	e08583        	moveqz	a8, a5, a14
4037e042:	80e074        	extui	a14, a8, 0, 8
4037e045:	dcce      	bnez.n	a14, 0x4037e065
4037e047:	f1c9db        	l32r	a15, 0x40374f6c
4037e04a:	fa99      	add.n	a9, a9, a15
4037e04c:	90e583        	moveqz	a14, a5, a9
4037e04f:	dc2e      	bnez.n	a14, 0x4037e065
4037e051:	a81a      	l32i.n	a10, a10, 4
4037e053:	06edff        	j	0x4037e00b
4037e056:	70a720        	or	a10, a7, a7
4037e059:	65f0ff        	call8	0x4037df60
4037e05c:	70a720        	or	a10, a7, a7
4037e05f:	a5f2ff        	call8	0x4037df88
4037e062:	c6ddff        	j	0x4037dfdd
4037e065:	259101        	call8	0x4037f978
4037e068:	a1c4db        	l32r	a10, 0x40374f78
4037e06b:	c02000        	memw
4037e06e:	922a00        	l32i	a9, a10, 0
4037e071:	92c9ff        	addi	a9, a9, -1
4037e074:	c02000        	memw
4037e077:	926a00        	s32i	a9, a10, 0
4037e07a:	c02000        	memw
4037e07d:	9803      	l32i.n	a9, a3, 0
4037e07f:	0b99      	addi.n	a9, a9, -1
4037e081:	c02000        	memw
4037e084:	9903      	s32i.n	a9, a3, 0
4037e086:	c6e1ff        	j	0x4037e011
4037e089:	000000        	ill
4037e08c:	364100        	entry	a1, 32
4037e08f:	8171da        	l32r	a8, 0x40374a54
4037e092:	41bbdb        	l32r	a4, 0x40374f80
4037e095:	e02211        	slli	a2, a2, 2
4037e098:	2a28      	add.n	a2, a8, a2
4037e09a:	c02000        	memw
4037e09d:	4804      	l32i.n	a4, a4, 0
4037e09f:	c02000        	memw
4037e0a2:	9802      	l32i.n	a9, a2, 0
4037e0a4:	81b1db        	l32r	a8, 0x40374f68
4037e0a7:	9869      	l32i.n	a9, a9, 24
4037e0a9:	871927        	beq	a9, a8, 0x4037e0d4
4037e0ac:	c02000        	memw
4037e0af:	8802      	l32i.n	a8, a2, 0
4037e0b1:	c02000        	memw
4037e0b4:	a802      	l32i.n	a10, a2, 0
4037e0b6:	82d801        	addmi	a8, a8, 0x100
4037e0b9:	0c09      	movi.n	a9, 0
4037e0bb:	924856        	s8i	a9, a8, 86
4037e0be:	a2ca08        	addi	a10, a10, 8
4037e0c1:	658b01        	call8	0x4037f978
4037e0c4:	660310        	bnei	a3, -1, 0x4037e0d8
4037e0c7:	c02000        	memw
4037e0ca:	b802      	l32i.n	a11, a2, 0
4037e0cc:	a1aedb        	l32r	a10, 0x40374f84
4037e0cf:	8bbb      	addi.n	a11, a11, 8
4037e0d1:	e58401        	call8	0x4037f920
4037e0d4:	1df0      	retw.n
4037e0d6:	0000c0        	sub	a0, a0, a0
4037e0d9:	200082        	mull	a0, a0, a2
4037e0dc:	220030        	l8ui	a2, a0, 48
4037e0df:	34          	.byte	0x34
4037e0e0:	80          	.byte	0x80
4037e0e1:	326802        	s32i	a3, a8, 8
4037e0e4:	47b314        	bgeu	a3, a4, 0x4037e0fc
4037e0e7:	31a8db        	l32r	a3, 0x40374f88
4037e0ea:	c02000        	memw
4037e0ed:	a803      	l32i.n	a10, a3, 0
4037e0ef:	c02000        	memw
4037e0f2:	b802      	l32i.n	a11, a2, 0
4037e0f4:	8bbb      	addi.n	a11, a11, 8
4037e0f6:	e58401        	call8	0x4037f944
4037e0f9:	c6f5ff        	j	0x4037e0d4
4037e0fc:	4190db        	l32r	a4, 0x40374f3c
4037e0ff:	c02000        	memw
4037e102:	a22400        	l32i	a10, a4, 0
4037e105:	c02000        	memw
4037e108:	b22200        	l32i	a11, a2, 0
4037e10b:	b2cb08        	addi	a11, a11, 8
4037e10e:	658301        	call8	0x4037f944
4037e111:	218bdb        	l32r	a2, 0x40374f40
4037e114:	c02000        	memw
4037e117:	4802      	l32i.n	a4, a2, 0
4037e119:	47b3b7        	bgeu	a3, a4, 0x4037e0d4
4037e11c:	c02000        	memw
4037e11f:	3902      	s32i.n	a3, a2, 0
4037e121:	c6ebff        	j	0x4037e0d4
4037e124:	364100        	entry	a1, 32
4037e127:	810ada        	l32r	a8, 0x40374950
4037e12a:	ad02      	mov.n	a10, a2
4037e12c:	871218        	beq	a2, a8, 0x4037e148
4037e12f:	8149da        	l32r	a8, 0x40374a54
4037e132:	e09211        	slli	a9, a2, 2
4037e135:	9a88      	add.n	a8, a8, a9
4037e137:	c02000        	memw
4037e13a:	8808      	l32i.n	a8, a8, 0
4037e13c:	88c8      	l32i.n	a8, a8, 48
4037e13e:	37b833        	bgeu	a8, a3, 0x4037e175
4037e141:	65b401        	call8	0x4037fc88
4037e144:	460b00        	j	0x4037e175
4037e147:	00          	.byte	00
4037e148:	80eb03        	rsr.prid	a8
4037e14b:	808d04        	extui	a8, a8, 13, 1
4037e14e:	8cb8      	beqz.n	a8, 0x4037e15d
4037e150:	8141da        	l32r	a8, 0x40374a54
4037e153:	c02000        	memw
4037e156:	8808      	l32i.n	a8, a8, 0
4037e158:	88c8      	l32i.n	a8, a8, 48
4037e15a:	37381a        	bltu	a8, a3, 0x4037e178
4037e15d:	80eb03        	rsr.prid	a8
4037e160:	808d04        	extui	a8, a8, 13, 1
4037e163:	26180e        	beqi	a8, 1, 0x4037e175
4037e166:	813bda        	l32r	a8, 0x40374a54
4037e169:	0c1a      	movi.n	a10, 1
4037e16b:	c02000        	memw
4037e16e:	8818      	l32i.n	a8, a8, 4
4037e170:	88c8      	l32i.n	a8, a8, 48
4037e172:	3738cb        	bltu	a8, a3, 0x4037e141
4037e175:	1df0      	retw.n
4037e177:	000c0a        	add.s	f0, f12, f0
4037e17a:	c6f0ff        	j	0x4037e141
4037e17d:	000000        	ill
4037e180:	366100        	entry	a1, 48
4037e183:	5178db        	l32r	a5, 0x40374f64
4037e186:	7cfb      	movi.n	a11, -1
4037e188:	ad05      	mov.n	a10, a5
4037e18a:	e59201        	call8	0x4037fab8
4037e18d:	a17adb        	l32r	a10, 0x40374f78
4037e190:	61f0d9        	l32r	a6, 0x40374950
4037e193:	c02000        	memw
4037e196:	480a      	l32i.n	a4, a10, 0
4037e198:	1b44      	addi.n	a4, a4, 1
4037e19a:	c02000        	memw
4037e19d:	490a      	s32i.n	a4, a10, 0
4037e19f:	412dda        	l32r	a4, 0x40374a54
4037e1a2:	67932b        	bne	a3, a6, 0x4037e1d1
4037e1a5:	c02000        	memw
4037e1a8:	6804      	l32i.n	a6, a4, 0
4037e1aa:	0c03      	movi.n	a3, 0
4037e1ac:	c02000        	memw
4037e1af:	7814      	l32i.n	a7, a4, 4
4037e1b1:	37161c        	beq	a6, a3, 0x4037e1d1
4037e1b4:	0c13      	movi.n	a3, 1
4037e1b6:	9c77      	beqz.n	a7, 0x4037e1d1
4037e1b8:	88c6      	l32i.n	a8, a6, 48
4037e1ba:	68c2      	l32i.n	a6, a2, 48
4037e1bc:	78c7      	l32i.n	a7, a7, 48
4037e1be:	67b804        	bgeu	a8, a6, 0x4037e1c6
4037e1c1:	0c03      	movi.n	a3, 0
4037e1c3:	77380a        	bltu	a8, a7, 0x4037e1d1
4037e1c6:	0c13      	movi.n	a3, 1
4037e1c8:	673705        	bltu	a7, a6, 0x4037e1d1
4037e1cb:	30eb03        	rsr.prid	a3
4037e1ce:	303d04        	extui	a3, a3, 13, 1
4037e1d1:	e06311        	slli	a6, a3, 2
4037e1d4:	6a94      	add.n	a9, a4, a6
4037e1d6:	c02000        	memw
4037e1d9:	8809      	l32i.n	a8, a9, 0
4037e1db:	56180d        	bnez	a8, 0x4037e2b0
4037e1de:	c02000        	memw
4037e1e1:	2909      	s32i.n	a2, a9, 0
4037e1e3:	c02000        	memw
4037e1e6:	980a      	l32i.n	a9, a10, 0
4037e1e8:	661955        	bnei	a9, 1, 0x4037e241
4037e1eb:	9168db        	l32r	a9, 0x40374f8c
4037e1ee:	1c97      	movi.n	a7, 25
4037e1f0:	90a920        	or	a10, a9, a9
4037e1f3:	8931      	s32i.n	a8, a1, 12
4037e1f5:	9921      	s32i.n	a9, a1, 8
4037e1f7:	657001        	call8	0x4037f8fc
4037e1fa:	8831      	l32i.n	a8, a1, 12
4037e1fc:	9821      	l32i.n	a9, a1, 8
4037e1fe:	1b88      	addi.n	a8, a8, 1
4037e200:	92c914        	addi	a9, a9, 20
4037e203:	7798e9        	bne	a8, a7, 0x4037e1f0
4037e206:	a162db        	l32r	a10, 0x40374f90
4037e209:	256f01        	call8	0x4037f8fc
4037e20c:	a162db        	l32r	a10, 0x40374f94
4037e20f:	e56e01        	call8	0x4037f8fc
4037e212:	a161db        	l32r	a10, 0x40374f98
4037e215:	656e01        	call8	0x4037f8fc
4037e218:	a161db        	l32r	a10, 0x40374f9c
4037e21b:	256e01        	call8	0x4037f8fc
4037e21e:	a152db        	l32r	a10, 0x40374f68
4037e221:	a56d01        	call8	0x4037f8fc
4037e224:	a158db        	l32r	a10, 0x40374f84
4037e227:	656d01        	call8	0x4037f8fc
4037e22a:	8144db        	l32r	a8, 0x40374f3c
4037e22d:	9158db        	l32r	a9, 0x40374f90
4037e230:	c02000        	memw
4037e233:	9908      	s32i.n	a9, a8, 0
4037e235:	8154db        	l32r	a8, 0x40374f88
4037e238:	9157db        	l32r	a9, 0x40374f94
4037e23b:	c02000        	memw
4037e23e:	926800        	s32i	a9, a8, 0
4037e241:	9158db        	l32r	a9, 0x40374fa4
4037e244:	8809      	l32i.n	a8, a9, 0
4037e246:	1b88      	addi.n	a8, a8, 1
4037e248:	8909      	s32i.n	a8, a9, 0
4037e24a:	9157db        	l32r	a9, 0x40374fa8
4037e24d:	88c2      	l32i.n	a8, a2, 48
4037e24f:	c02000        	memw
4037e252:	a809      	l32i.n	a10, a9, 0
4037e254:	87ba04        	bgeu	a10, a8, 0x4037e25c
4037e257:	c02000        	memw
4037e25a:	8909      	s32i.n	a8, a9, 0
4037e25c:	e0a811        	slli	a10, a8, 2
4037e25f:	8aaa      	add.n	a10, a10, a8
4037e261:	814adb        	l32r	a8, 0x40374f8c
4037e264:	e0aa11        	slli	a10, a10, 2
4037e267:	aaa8      	add.n	a10, a8, a10
4037e269:	8bb2      	addi.n	a11, a2, 8
4037e26b:	656b01        	call8	0x4037f920
4037e26e:	ad05      	mov.n	a10, a5
4037e270:	a59801        	call8	0x4037fbfc
4037e273:	714bdb        	l32r	a7, 0x40374fa0
4037e276:	c02000        	memw
4037e279:	7807      	l32i.n	a7, a7, 0
4037e27b:	acf7      	beqz.n	a7, 0x4037e2ae
4037e27d:	7cfb      	movi.n	a11, -1
4037e27f:	50a520        	or	a10, a5, a5
4037e282:	6a44      	add.n	a4, a4, a6
4037e284:	258301        	call8	0x4037fab8
4037e287:	c02000        	memw
4037e28a:	4804      	l32i.n	a4, a4, 0
4037e28c:	167400        	beqz	a4, 0x4037e297
4037e28f:	68c4      	l32i.n	a6, a4, 48
4037e291:	42220c        	l32i	a4, a2, 48
4037e294:	47b611        	bgeu	a6, a4, 0x4037e2a9
4037e297:	40eb03        	rsr.prid	a4
4037e29a:	404d04        	extui	a4, a4, 13, 1
4037e29d:	47933d        	bne	a3, a4, 0x4037e2de
4037e2a0:	a0eb03        	rsr.prid	a10
4037e2a3:	a0ad04        	extui	a10, a10, 13, 1
4037e2a6:	e5d4f9        	call8	0x40377ff4
4037e2a9:	ad05      	mov.n	a10, a5
4037e2ab:	259501        	call8	0x4037fbfc
4037e2ae:	1df0      	retw.n
4037e2b0:	813cdb        	l32r	a8, 0x40374fa0
4037e2b3:	c02000        	memw
4037e2b6:	8808      	l32i.n	a8, a8, 0
4037e2b8:	5658f8        	bnez	a8, 0x4037e241
4037e2bb:	c02000        	memw
4037e2be:	8809      	l32i.n	a8, a9, 0
4037e2c0:	8cd8      	beqz.n	a8, 0x4037e2d1
4037e2c2:	c02000        	memw
4037e2c5:	8809      	l32i.n	a8, a9, 0
4037e2c7:	98c2      	l32i.n	a9, a2, 48
4037e2c9:	88c8      	l32i.n	a8, a8, 48
4037e2cb:	87b902        	bgeu	a9, a8, 0x4037e2d1
4037e2ce:	c6dbff        	j	0x4037e241
4037e2d1:	6a84      	add.n	a8, a4, a6
4037e2d3:	c02000        	memw
4037e2d6:	2908      	s32i.n	a2, a8, 0
4037e2d8:	46d9ff        	j	0x4037e241
4037e2db:	000000        	ill
4037e2de:	b8c2      	l32i.n	a11, a2, 48
4037e2e0:	ad03      	mov.n	a10, a3
4037e2e2:	25e4ff        	call8	0x4037e124
4037e2e5:	06f0ff        	j	0x4037e2a9
4037e2e8:	36a100        	entry	a1, 80
4037e2eb:	226107        	s32i	a2, a1, 28
4037e2ee:	222114        	l32i	a2, a1, 80
4037e2f1:	20a220        	or	a10, a2, a2
4037e2f4:	a5a701        	call8	0x4037fd70
4037e2f7:	ccda      	bnez.n	a10, 0x4037e308
4037e2f9:	d12cdb        	l32r	a13, 0x40374fac
4037e2fc:	c12ddb        	l32r	a12, 0x40374fb0
4037e2ff:	b2a2a4        	movi	a11, 0x2a4
4037e302:	a113db        	l32r	a10, 0x40374f50
4037e305:	a56504        	call8	0x40382960
4037e308:	ad07      	mov.n	a10, a7
4037e30a:	25ad01        	call8	0x4037fddc
4037e30d:	ccda      	bnez.n	a10, 0x4037e31e
4037e30f:	d129db        	l32r	a13, 0x40374fb4
4037e312:	c127db        	l32r	a12, 0x40374fb0
4037e315:	b2a2a5        	movi	a11, 0x2a5
4037e318:	86f9ff        	j	0x4037e302
4037e31b:	000000        	ill
4037e31e:	822115        	l32i	a8, a1, 84
4037e321:	b62813        	bltui	a8, 2, 0x4037e338
4037e324:	9112db        	l32r	a9, 0x40374f6c
4037e327:	9a98      	add.n	a9, a8, a9
4037e329:	8cb9      	beqz.n	a9, 0x4037e338
4037e32b:	d123db        	l32r	a13, 0x40374fb8
4037e32e:	c120db        	l32r	a12, 0x40374fb0
4037e331:	b2a2a6        	movi	a11, 0x2a6
4037e334:	86f2ff        	j	0x4037e302
4037e337:	0092a1        	sll	a9, a2
4037e33a:	58c0      	l32i.n	a5, a0, 48
4037e33c:	20          	.byte	0x20
4037e33d:	00          	.byte	00
4037e33e:	99b1      	s32i.n	a9, a1, 44
4037e340:	c02000        	memw
4037e343:	a8b1      	l32i.n	a10, a1, 44
4037e345:	971a0b        	beq	a10, a9, 0x4037e354
4037e348:	d11ddb        	l32r	a13, 0x40374fbc
4037e34b:	c119db        	l32r	a12, 0x40374fb0
4037e34e:	b2a2ae        	movi	a11, 0x2ae
4037e351:	46ebff        	j	0x4037e302
4037e354:	c02000        	memw
4037e357:	92210b        	l32i	a9, a1, 44
4037e35a:	162203        	beqz	a2, 0x4037e390
4037e35d:	acf7      	beqz.n	a7, 0x4037e390
4037e35f:	79d2      	s32i.n	a7, a2, 52
4037e361:	82d201        	addmi	a8, a2, 0x100
4037e364:	0c29      	movi.n	a9, 2
4037e366:	924855        	s8i	a9, a8, 85
4037e369:	822115        	l32i	a8, a1, 84
4037e36c:	a871      	l32i.n	a10, a1, 28
4037e36e:	8921      	s32i.n	a8, a1, 8
4037e370:	0c08      	movi.n	a8, 0
4037e372:	bd03      	mov.n	a11, a3
4037e374:	8911      	s32i.n	a8, a1, 4
4037e376:	2901      	s32i.n	a2, a1, 0
4037e378:	f2c128        	addi	a15, a1, 40
4037e37b:	ed06      	mov.n	a14, a6
4037e37d:	dd05      	mov.n	a13, a5
4037e37f:	cd04      	mov.n	a12, a4
4037e381:	65aeff        	call8	0x4037de68
4037e384:	b22115        	l32i	a11, a1, 84
4037e387:	ad02      	mov.n	a10, a2
4037e389:	65dfff        	call8	0x4037e180
4037e38c:	28a1      	l32i.n	a2, a1, 40
4037e38e:	1df0      	retw.n
4037e390:	0c02      	movi.n	a2, 0
4037e392:	29a1      	s32i.n	a2, a1, 40
4037e394:	06fdff        	j	0x4037e38c
4037e397:	003681        	src	a3, a6, a0
4037e39a:	00          	.byte	00
4037e39b:	7971      	s32i.n	a7, a1, 28
4037e39d:	7d04      	mov.n	a7, a4
4037e39f:	4165d8        	l32r	a4, 0x40374534
4037e3a2:	ad07      	mov.n	a10, a7
4037e3a4:	bd04      	mov.n	a11, a4
4037e3a6:	2961      	s32i.n	a2, a1, 24
4037e3a8:	650bfa        	call8	0x40378460
4037e3ab:	8d0a      	mov.n	a8, a10
4037e3ad:	7cf2      	movi.n	a2, -1
4037e3af:	16fa03        	beqz	a10, 0x4037e3f2
4037e3b2:	bd04      	mov.n	a11, a4
4037e3b4:	a2a158        	movi	a10, 0x158
4037e3b7:	8951      	s32i.n	a8, a1, 20
4037e3b9:	650afa        	call8	0x40378460
4037e3bc:	4d0a      	mov.n	a4, a10
4037e3be:	8851      	l32i.n	a8, a1, 20
4037e3c0:	bc0a      	beqz.n	a10, 0x4037e3f4
4037e3c2:	89da      	s32i.n	a8, a10, 52
4037e3c4:	22da01        	addmi	a2, a10, 0x100
4037e3c7:	0c08      	movi.n	a8, 0
4037e3c9:	824255        	s8i	a8, a2, 85
4037e3cc:	222110        	l32i	a2, a1, 64
4037e3cf:	a901      	s32i.n	a10, a1, 0
4037e3d1:	2921      	s32i.n	a2, a1, 8
4037e3d3:	f871      	l32i.n	a15, a1, 28
4037e3d5:	0c02      	movi.n	a2, 0
4037e3d7:	a861      	l32i.n	a10, a1, 24
4037e3d9:	2911      	s32i.n	a2, a1, 4
4037e3db:	ed06      	mov.n	a14, a6
4037e3dd:	dd05      	mov.n	a13, a5
4037e3df:	70c720        	or	a12, a7, a7
4037e3e2:	30b320        	or	a11, a3, a3
4037e3e5:	25a8ff        	call8	0x4037de68
4037e3e8:	b22110        	l32i	a11, a1, 64
4037e3eb:	ad04      	mov.n	a10, a4
4037e3ed:	25d9ff        	call8	0x4037e180
4037e3f0:	0c12      	movi.n	a2, 1
4037e3f2:	1df0      	retw.n
4037e3f4:	ad08      	mov.n	a10, a8
4037e3f6:	a56904        	call8	0x40382a90
4037e3f9:	46fdff        	j	0x4037e3f2
4037e3fc:	364100        	entry	a1, 32
4037e3ff:	a06300        	rsil	a10, 3
4037e402:	80eb03        	rsr.prid	a8
4037e405:	808d04        	extui	a8, a8, 13, 1
4037e408:	e09811        	slli	a9, a8, 2
4037e40b:	81edda        	l32r	a8, 0x40374fc0
4037e40e:	9a88      	add.n	a8, a8, a9
4037e410:	c02000        	memw
4037e413:	9808      	l32i.n	a9, a8, 0
4037e415:	1b99      	addi.n	a9, a9, 1
4037e417:	c02000        	memw
4037e41a:	9908      	s32i.n	a9, a8, 0
4037e41c:	81c4d9        	l32r	a8, 0x40374b2c
4037e41f:	e00800        	callx8	a8
4037e422:	1df0      	retw.n
4037e424:	364100        	entry	a1, 32
4037e427:	21d6da        	l32r	a2, 0x40374f80
4037e42a:	c02000        	memw
4037e42d:	2802      	l32i.n	a2, a2, 0
4037e42f:	1df0      	retw.n
4037e431:	000000        	ill
4037e434:	364100        	entry	a1, 32
4037e437:	a06300        	rsil	a10, 3
4037e43a:	21d1da        	l32r	a2, 0x40374f80
4037e43d:	c02000        	memw
4037e440:	2802      	l32i.n	a2, a2, 0
4037e442:	81bad9        	l32r	a8, 0x40374b2c
4037e445:	e00800        	callx8	a8
4037e448:	1df0      	retw.n
4037e44a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037e44d:	4100b6        	l32r	a4, 0x4036bc50
4037e450:	220ed1        	l8ui	a2, a14, 209
4037e453:	dcda      	bnez.n	a10, 0x4037e474
4037e455:	c1dcda        	l32r	a12, 0x40374fc8
4037e458:	b1ddda        	l32r	a11, 0x40374fcc
4037e45b:	a1bdda        	l32r	a10, 0x40374f50
4037e45e:	255004        	call8	0x40382960
4037e461:	81dbda        	l32r	a8, 0x40374fd0
4037e464:	e02211        	slli	a2, a2, 2
4037e467:	2a28      	add.n	a2, a8, a2
4037e469:	2802      	l32i.n	a2, a2, 0
4037e46b:	ccd2      	bnez.n	a2, 0x4037e47c
4037e46d:	d1d9da        	l32r	a13, 0x40374fd4
4037e470:	c1d6da        	l32r	a12, 0x40374fc8
4037e473:	b1d9da        	l32r	a11, 0x40374fd8
4037e476:	46f8ff        	j	0x4037e45b
4037e479:	000000        	ill
4037e47c:	1df0      	retw.n
4037e47e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037e481:	4100e5        	l32r	a4, 0x40377884 (0xf31421ff)
4037e484:	600156        	ee.ldf.64.xp	f0, f5, a6, a1
4037e487:	ea04      	add.n	a0, a4, a14
4037e489:	20eb03        	rsr.prid	a2
4037e48c:	202d04        	extui	a2, a2, 13, 1
4037e48f:	e03211        	slli	a3, a2, 2
4037e492:	21cbda        	l32r	a2, 0x40374fc0
4037e495:	3a22      	add.n	a2, a2, a3
4037e497:	c02000        	memw
4037e49a:	2802      	l32i.n	a2, a2, 0
4037e49c:	560216        	bnez	a2, 0x4037e600
4037e49f:	a1b1da        	l32r	a10, 0x40374f64
4037e4a2:	7cfb      	movi.n	a11, -1
4037e4a4:	256101        	call8	0x4037fab8
4037e4a7:	21b6da        	l32r	a2, 0x40374f80
4037e4aa:	c02000        	memw
4037e4ad:	3802      	l32i.n	a3, a2, 0
4037e4af:	1b33      	addi.n	a3, a3, 1
4037e4b1:	c02000        	memw
4037e4b4:	3902      	s32i.n	a3, a2, 0
4037e4b6:	56b305        	bnez	a3, 0x4037e515
4037e4b9:	21a0da        	l32r	a2, 0x40374f3c
4037e4bc:	c02000        	memw
4037e4bf:	4802      	l32i.n	a4, a2, 0
4037e4c1:	c02000        	memw
4037e4c4:	4804      	l32i.n	a4, a4, 0
4037e4c6:	16f401        	beqz	a4, 0x4037e4e9
4037e4c9:	d1c4da        	l32r	a13, 0x40374fdc
4037e4cc:	c1c5da        	l32r	a12, 0x40374fe0
4037e4cf:	b1c5da        	l32r	a11, 0x40374fe4
4037e4d2:	a19fda        	l32r	a10, 0x40374f50
4037e4d5:	a54804        	call8	0x40382960
4037e4d8:	a5b3f9        	call8	0x40378014
4037e4db:	20eb03        	rsr.prid	a2
4037e4de:	202d04        	extui	a2, a2, 13, 1
4037e4e1:	1642fa        	beqz	a2, 0x4037e489
4037e4e4:	0c12      	movi.n	a2, 1
4037e4e6:	062100        	j	0x4037e56e
4037e4e9:	41a7da        	l32r	a4, 0x40374f88
4037e4ec:	c02000        	memw
4037e4ef:	522200        	l32i	a5, a2, 0
4037e4f2:	c02000        	memw
4037e4f5:	722400        	l32i	a7, a4, 0
4037e4f8:	c02000        	memw
4037e4fb:	726200        	s32i	a7, a2, 0
4037e4fe:	c02000        	memw
4037e501:	5904      	s32i.n	a5, a4, 0
4037e503:	41b9da        	l32r	a4, 0x40374fe8
4037e506:	c02000        	memw
4037e509:	2804      	l32i.n	a2, a4, 0
4037e50b:	1b22      	addi.n	a2, a2, 1
4037e50d:	c02000        	memw
4037e510:	2904      	s32i.n	a2, a4, 0
4037e512:	e5a1ff        	call8	0x4037df30
4037e515:	518ada        	l32r	a5, 0x40374f40
4037e518:	414fd9        	l32r	a4, 0x40374a54
4037e51b:	c02000        	memw
4037e51e:	2805      	l32i.n	a2, a5, 0
4037e520:	27b34e        	bgeu	a3, a2, 0x4037e572
4037e523:	0c02      	movi.n	a2, 0
4037e525:	30eb03        	rsr.prid	a3
4037e528:	303d04        	extui	a3, a3, 13, 1
4037e52b:	e03311        	slli	a3, a3, 2
4037e52e:	3a44      	add.n	a4, a4, a3
4037e530:	c02000        	memw
4037e533:	3804      	l32i.n	a3, a4, 0
4037e535:	48c3      	l32i.n	a4, a3, 48
4037e537:	e03411        	slli	a3, a4, 2
4037e53a:	4a33      	add.n	a3, a3, a4
4037e53c:	4194da        	l32r	a4, 0x40374f8c
4037e53f:	e03311        	slli	a3, a3, 2
4037e542:	303480        	add	a3, a4, a3
4037e545:	c02000        	memw
4037e548:	3803      	l32i.n	a3, a3, 0
4037e54a:	b62302        	bltui	a3, 2, 0x4037e550
4037e54d:	22a001        	movi	a2, 1
4037e550:	a185da        	l32r	a10, 0x40374f64
4037e553:	a56a01        	call8	0x4037fbfc
4037e556:	30eb03        	rsr.prid	a3
4037e559:	303d04        	extui	a3, a3, 13, 1
4037e55c:	e04311        	slli	a4, a3, 2
4037e55f:	31a4da        	l32r	a3, 0x40374ff0
4037e562:	403380        	add	a3, a3, a4
4037e565:	c02000        	memw
4037e568:	322300        	l32i	a3, a3, 0
4037e56b:	5653f7        	bnez	a3, 0x4037e4e4
4037e56e:	900000        	retw
4037e571:	000c02        	andb	b0, b12, b0
4037e574:	6172da        	l32r	a6, 0x40374f3c
4037e577:	c02000        	memw
4037e57a:	8806      	l32i.n	a8, a6, 0
4037e57c:	c02000        	memw
4037e57f:	8808      	l32i.n	a8, a8, 0
4037e581:	cc88      	bnez.n	a8, 0x4037e58d
4037e583:	7cf3      	movi.n	a3, -1
4037e585:	c02000        	memw
4037e588:	3905      	s32i.n	a3, a5, 0
4037e58a:	c6e5ff        	j	0x4037e525
4037e58d:	616bda        	l32r	a6, 0x40374f3c
4037e590:	c02000        	memw
4037e593:	8806      	l32i.n	a8, a6, 0
4037e595:	8838      	l32i.n	a8, a8, 12
4037e597:	6838      	l32i.n	a6, a8, 12
4037e599:	9826      	l32i.n	a9, a6, 8
4037e59b:	97b307        	bgeu	a3, a9, 0x4037e5a6
4037e59e:	c02000        	memw
4037e5a1:	9905      	s32i.n	a9, a5, 0
4037e5a3:	86dfff        	j	0x4037e525
4037e5a6:	72c608        	addi	a7, a6, 8
4037e5a9:	70a720        	or	a10, a7, a7
4037e5ac:	a53c01        	call8	0x4037f978
4037e5af:	98b6      	l32i.n	a9, a6, 44
4037e5b1:	8c49      	beqz.n	a9, 0x4037e5b9
4037e5b3:	a2c61c        	addi	a10, a6, 28
4037e5b6:	253c01        	call8	0x4037f978
4037e5b9:	a17bda        	l32r	a10, 0x40374fa8
4037e5bc:	98c6      	l32i.n	a9, a6, 48
4037e5be:	c02000        	memw
4037e5c1:	c80a      	l32i.n	a12, a10, 0
4037e5c3:	97bc05        	bgeu	a12, a9, 0x4037e5cc
4037e5c6:	c02000        	memw
4037e5c9:	926a00        	s32i	a9, a10, 0
4037e5cc:	e0a911        	slli	a10, a9, 2
4037e5cf:	90aa80        	add	a10, a10, a9
4037e5d2:	816eda        	l32r	a8, 0x40374f8c
4037e5d5:	e0aa11        	slli	a10, a10, 2
4037e5d8:	70b720        	or	a11, a7, a7
4037e5db:	a0a880        	add	a10, a8, a10
4037e5de:	253401        	call8	0x4037f920
4037e5e1:	90eb03        	rsr.prid	a9
4037e5e4:	909d04        	extui	a9, a9, 13, 1
4037e5e7:	e09911        	slli	a9, a9, 2
4037e5ea:	9a94      	add.n	a9, a4, a9
4037e5ec:	c02000        	memw
4037e5ef:	a809      	l32i.n	a10, a9, 0
4037e5f1:	98c6      	l32i.n	a9, a6, 48
4037e5f3:	88ca      	l32i.n	a8, a10, 48
4037e5f5:	87b902        	bgeu	a9, a8, 0x4037e5fb
4037e5f8:	06deff        	j	0x4037e574
4037e5fb:	0c12      	movi.n	a2, 1
4037e5fd:	c6dcff        	j	0x4037e574
4037e600:	317bda        	l32r	a3, 0x40374fec
4037e603:	c02000        	memw
4037e606:	2803      	l32i.n	a2, a3, 0
4037e608:	1b22      	addi.n	a2, a2, 1
4037e60a:	c02000        	memw
4037e60d:	2903      	s32i.n	a2, a3, 0
4037e60f:	0c02      	movi.n	a2, 0
4037e611:	46d0ff        	j	0x4037e556
4037e614:	366100        	entry	a1, 48
4037e617:	a153da        	l32r	a10, 0x40374f64
4037e61a:	b2afff        	movi	a11, -1
4037e61d:	a54901        	call8	0x4037fab8
4037e620:	20eb03        	rsr.prid	a2
4037e623:	202d04        	extui	a2, a2, 13, 1
4037e626:	e03211        	slli	a3, a2, 2
4037e629:	2165da        	l32r	a2, 0x40374fc0
4037e62c:	302280        	add	a2, a2, a3
4037e62f:	c02000        	memw
4037e632:	4802      	l32i.n	a4, a2, 0
4037e634:	216fda        	l32r	a2, 0x40374ff0
4037e637:	9c94      	beqz.n	a4, 0x4037e654
4037e639:	30eb03        	rsr.prid	a3
4037e63c:	303d04        	extui	a3, a3, 13, 1
4037e63f:	e03311        	slli	a3, a3, 2
4037e642:	3a22      	add.n	a2, a2, a3
4037e644:	0c13      	movi.n	a3, 1
4037e646:	c02000        	memw
4037e649:	3902      	s32i.n	a3, a2, 0
4037e64b:	a146da        	l32r	a10, 0x40374f64
4037e64e:	e55a01        	call8	0x4037fbfc
4037e651:	1df0      	retw.n
4037e653:	00          	.byte	00
4037e654:	30eb03        	rsr.prid	a3
4037e657:	303d04        	extui	a3, a3, 13, 1
4037e65a:	e03311        	slli	a3, a3, 2
4037e65d:	302280        	add	a2, a2, a3
4037e660:	c02000        	memw
4037e663:	426200        	s32i	a4, a2, 0
4037e666:	20eb03        	rsr.prid	a2
4037e669:	202d04        	extui	a2, a2, 13, 1
4037e66c:	3162da        	l32r	a3, 0x40374ff4
4037e66f:	e02211        	slli	a2, a2, 2
4037e672:	2a23      	add.n	a2, a3, a2
4037e674:	0c13      	movi.n	a3, 1
4037e676:	c02000        	memw
4037e679:	3902      	s32i.n	a3, a2, 0
4037e67b:	20eb03        	rsr.prid	a2
4037e67e:	202d04        	extui	a2, a2, 13, 1
4037e681:	31f4d8        	l32r	a3, 0x40374a54
4037e684:	e02211        	slli	a2, a2, 2
4037e687:	2a23      	add.n	a2, a3, a2
4037e689:	c02000        	memw
4037e68c:	7802      	l32i.n	a7, a2, 0
4037e68e:	20eb03        	rsr.prid	a2
4037e691:	202d04        	extui	a2, a2, 13, 1
4037e694:	e02211        	slli	a2, a2, 2
4037e697:	2a23      	add.n	a2, a3, a2
4037e699:	c02000        	memw
4037e69c:	6802      	l32i.n	a6, a2, 0
4037e69e:	2807      	l32i.n	a2, a7, 0
4037e6a0:	68d6      	l32i.n	a6, a6, 52
4037e6a2:	273625        	bltu	a6, a2, 0x4037e6cb
4037e6a5:	20eb03        	rsr.prid	a2
4037e6a8:	202d04        	extui	a2, a2, 13, 1
4037e6ab:	e02211        	slli	a2, a2, 2
4037e6ae:	2a23      	add.n	a2, a3, a2
4037e6b0:	c02000        	memw
4037e6b3:	a802      	l32i.n	a10, a2, 0
4037e6b5:	20eb03        	rsr.prid	a2
4037e6b8:	202d04        	extui	a2, a2, 13, 1
4037e6bb:	e02211        	slli	a2, a2, 2
4037e6be:	2a23      	add.n	a2, a3, a2
4037e6c0:	c02000        	memw
4037e6c3:	b802      	l32i.n	a11, a2, 0
4037e6c5:	b2cb38        	addi	a11, a11, 56
4037e6c8:	a55c01        	call8	0x4037fc94
4037e6cb:	20eb03        	rsr.prid	a2
4037e6ce:	202d04        	extui	a2, a2, 13, 1
4037e6d1:	e02211        	slli	a2, a2, 2
4037e6d4:	2a23      	add.n	a2, a3, a2
4037e6d6:	c02000        	memw
4037e6d9:	2802      	l32i.n	a2, a2, 0
4037e6db:	b147da        	l32r	a11, 0x40374ff8
4037e6de:	a8d2      	l32i.n	a10, a2, 52
4037e6e0:	1c4c      	movi.n	a12, 20
4037e6e2:	8149da        	l32r	a8, 0x40375008
4037e6e5:	e00800        	callx8	a8
4037e6e8:	ac4a      	beqz.n	a10, 0x4037e710
4037e6ea:	20eb03        	rsr.prid	a2
4037e6ed:	202d04        	extui	a2, a2, 13, 1
4037e6f0:	e02211        	slli	a2, a2, 2
4037e6f3:	2a23      	add.n	a2, a3, a2
4037e6f5:	c02000        	memw
4037e6f8:	a802      	l32i.n	a10, a2, 0
4037e6fa:	20eb03        	rsr.prid	a2
4037e6fd:	202d04        	extui	a2, a2, 13, 1
4037e700:	e02211        	slli	a2, a2, 2
4037e703:	2a23      	add.n	a2, a3, a2
4037e705:	c02000        	memw
4037e708:	b802      	l32i.n	a11, a2, 0
4037e70a:	b2cb38        	addi	a11, a11, 56
4037e70d:	655801        	call8	0x4037fc94
4037e710:	60eb03        	rsr.prid	a6
4037e713:	606d04        	extui	a6, a6, 13, 1
4037e716:	5124da        	l32r	a5, 0x40374fa8
4037e719:	811cda        	l32r	a8, 0x40374f8c
4037e71c:	c02000        	memw
4037e71f:	7805      	l32i.n	a7, a5, 0
4037e721:	0c0a      	movi.n	a10, 0
4037e723:	e02711        	slli	a2, a7, 2
4037e726:	7a22      	add.n	a2, a2, a7
4037e728:	e02211        	slli	a2, a2, 2
4037e72b:	e0d611        	slli	a13, a6, 2
4037e72e:	8a22      	add.n	a2, a2, a8
4037e730:	0c15      	movi.n	a5, 1
4037e732:	8d0a      	mov.n	a8, a10
4037e734:	da43      	add.n	a4, a3, a13
4037e736:	962700        	bltz	a7, 0x4037e73c
4037e739:	579814        	bne	a8, a5, 0x4037e751
4037e73c:	661802        	bnei	a8, 1, 0x4037e742
4037e73f:	462b00        	j	0x4037e7f0
4037e742:	d12eda        	l32r	a13, 0x40374ffc
4037e745:	c12eda        	l32r	a12, 0x40375000
4037e748:	b12fda        	l32r	a11, 0x40375004
4037e74b:	a101da        	l32r	a10, 0x40374f50
4037e74e:	252104        	call8	0x40382960
4037e751:	e08711        	slli	a8, a7, 2
4037e754:	b10eda        	l32r	a11, 0x40374f8c
4037e757:	7a88      	add.n	a8, a8, a7
4037e759:	e08811        	slli	a8, a8, 2
4037e75c:	8a8b      	add.n	a8, a11, a8
4037e75e:	c02000        	memw
4037e761:	b808      	l32i.n	a11, a8, 0
4037e763:	0c08      	movi.n	a8, 0
4037e765:	871b61        	beq	a11, a8, 0x4037e7ca
4037e768:	879a07        	bne	a10, a8, 0x4037e773
4037e76b:	810fda        	l32r	a8, 0x40374fa8
4037e76e:	c02000        	memw
4037e771:	7908      	s32i.n	a7, a8, 0
4037e773:	a832      	l32i.n	a10, a2, 12
4037e775:	8b82      	addi.n	a8, a2, 8
4037e777:	a912      	s32i.n	a10, a2, 4
4037e779:	879a05        	bne	a10, a8, 0x4037e782
4037e77c:	a22801        	l32i	a10, a8, 4
4037e77f:	a26201        	s32i	a10, a2, 4
4037e782:	a812      	l32i.n	a10, a2, 4
4037e784:	f1fad9        	l32r	a15, 0x40374f6c
4037e787:	e83a      	l32i.n	a14, a10, 12
4037e789:	e0be20        	or	a11, a14, a14
4037e78c:	8c96      	beqz.n	a6, 0x4037e799
4037e78e:	c02000        	memw
4037e791:	a803      	l32i.n	a10, a3, 0
4037e793:	b71a3b        	beq	a10, a11, 0x4037e7d2
4037e796:	261607        	beqi	a6, 1, 0x4037e7a1
4037e799:	c02000        	memw
4037e79c:	a813      	l32i.n	a10, a3, 4
4037e79e:	a71b30        	beq	a11, a10, 0x4037e7d2
4037e7a1:	a22b12        	l32i	a10, a11, 72
4037e7a4:	a71605        	beq	a6, a10, 0x4037e7ad
4037e7a7:	f0aa80        	add	a10, a10, a15
4037e7aa:	564a02        	bnez	a10, 0x4037e7d2
4037e7ad:	c02000        	memw
4037e7b0:	b26400        	s32i	a11, a4, 0
4037e7b3:	b2cb08        	addi	a11, a11, 8
4037e7b6:	8912      	s32i.n	a8, a2, 4
4037e7b8:	ad0b      	mov.n	a10, a11
4037e7ba:	b931      	s32i.n	a11, a1, 12
4037e7bc:	a51b01        	call8	0x4037f978
4037e7bf:	b831      	l32i.n	a11, a1, 12
4037e7c1:	ad02      	mov.n	a10, a2
4037e7c3:	e51501        	call8	0x4037f920
4037e7c6:	ad05      	mov.n	a10, a5
4037e7c8:	0c18      	movi.n	a8, 1
4037e7ca:	0b77      	addi.n	a7, a7, -1
4037e7cc:	22c2ec        	addi	a2, a2, -20
4037e7cf:	c6d8ff        	j	0x4037e736
4037e7d2:	a812      	l32i.n	a10, a2, 4
4037e7d4:	a81a      	l32i.n	a10, a10, 4
4037e7d6:	a912      	s32i.n	a10, a2, 4
4037e7d8:	879a04        	bne	a10, a8, 0x4037e7e0
4037e7db:	a818      	l32i.n	a10, a8, 4
4037e7dd:	a26201        	s32i	a10, a2, 4
4037e7e0:	a812      	l32i.n	a10, a2, 4
4037e7e2:	b83a      	l32i.n	a11, a10, 12
4037e7e4:	b79ea4        	bne	a14, a11, 0x4037e78c
4037e7e7:	ad05      	mov.n	a10, a5
4037e7e9:	0c08      	movi.n	a8, 0
4037e7eb:	c6f6ff        	j	0x4037e7ca
4037e7ee:	000020        	or	a0, a0, a0
4037e7f1:	eb03      	addi.n	a0, a3, 14
4037e7f3:	202d04        	extui	a2, a2, 13, 1
4037e7f6:	51ffd9        	l32r	a5, 0x40374ff4
4037e7f9:	e02211        	slli	a2, a2, 2
4037e7fc:	204580        	add	a4, a5, a2
4037e7ff:	22a000        	movi	a2, 0
4037e802:	c02000        	memw
4037e805:	226400        	s32i	a2, a4, 0
4037e808:	20eb03        	rsr.prid	a2
4037e80b:	202d04        	extui	a2, a2, 13, 1
4037e80e:	e02211        	slli	a2, a2, 2
4037e811:	2a33      	add.n	a3, a3, a2
4037e813:	c02000        	memw
4037e816:	2803      	l32i.n	a2, a3, 0
4037e818:	a8d2      	l32i.n	a10, a2, 52
4037e81a:	254c01        	call8	0x4037fcdc
4037e81d:	868aff        	j	0x4037e64b
4037e820:	364100        	entry	a1, 32
4037e823:	56e200        	bnez	a2, 0x4037e835
4037e826:	d1f9d9        	l32r	a13, 0x4037500c
4037e829:	c1f9d9        	l32r	a12, 0x40375010
4037e82c:	b1fad9        	l32r	a11, 0x40375014
4037e82f:	a1c8d9        	l32r	a10, 0x40374f50
4037e832:	e51204        	call8	0x40382960
4037e835:	41cbd9        	l32r	a4, 0x40374f64
4037e838:	7cfb      	movi.n	a11, -1
4037e83a:	ad04      	mov.n	a10, a4
4037e83c:	a52701        	call8	0x4037fab8
4037e83f:	80eb03        	rsr.prid	a8
4037e842:	808d04        	extui	a8, a8, 13, 1
4037e845:	e09811        	slli	a9, a8, 2
4037e848:	8183d8        	l32r	a8, 0x40374a54
4037e84b:	ad02      	mov.n	a10, a2
4037e84d:	9a88      	add.n	a8, a8, a9
4037e84f:	c02000        	memw
4037e852:	b808      	l32i.n	a11, a8, 0
4037e854:	b2cb1c        	addi	a11, a11, 28
4037e857:	e50e01        	call8	0x4037f944
4037e85a:	a0eb03        	rsr.prid	a10
4037e85d:	a0ad04        	extui	a10, a10, 13, 1
4037e860:	bd03      	mov.n	a11, a3
4037e862:	a582ff        	call8	0x4037e08c
4037e865:	ad04      	mov.n	a10, a4
4037e867:	653901        	call8	0x4037fbfc
4037e86a:	1df0      	retw.n
4037e86c:	364100        	entry	a1, 32
4037e86f:	41bdd9        	l32r	a4, 0x40374f64
4037e872:	b2afff        	movi	a11, -1
4037e875:	40a420        	or	a10, a4, a4
4037e878:	e52301        	call8	0x4037fab8
4037e87b:	c02000        	memw
4037e87e:	322200        	l32i	a3, a2, 0
4037e881:	16730c        	beqz	a3, 0x4037e94c
4037e884:	2832      	l32i.n	a2, a2, 12
4037e886:	3832      	l32i.n	a3, a2, 12
4037e888:	ccd3      	bnez.n	a3, 0x4037e899
4037e88a:	d1e3d9        	l32r	a13, 0x40375018
4037e88d:	c1e3d9        	l32r	a12, 0x4037501c
4037e890:	b1e4d9        	l32r	a11, 0x40375020
4037e893:	a1afd9        	l32r	a10, 0x40374f50
4037e896:	a50c04        	call8	0x40382960
4037e899:	52c31c        	addi	a5, a3, 28
4037e89c:	ad05      	mov.n	a10, a5
4037e89e:	a50d01        	call8	0x4037f978
4037e8a1:	a22312        	l32i	a10, a3, 72
4037e8a4:	812bd8        	l32r	a8, 0x40374950
4037e8a7:	21c6d9        	l32r	a2, 0x40374fc0
4037e8aa:	871a02        	beq	a10, a8, 0x4037e8b0
4037e8ad:	c62900        	j	0x4037e958
4037e8b0:	a0eb03        	rsr.prid	a10
4037e8b3:	a0ad04        	extui	a10, a10, 13, 1
4037e8b6:	c02000        	memw
4037e8b9:	8802      	l32i.n	a8, a2, 0
4037e8bb:	8c78      	beqz.n	a8, 0x4037e8c6
4037e8bd:	c02000        	memw
4037e8c0:	222201        	l32i	a2, a2, 4
4037e8c3:	56e209        	bnez	a2, 0x4037e965
4037e8c6:	8b53      	addi.n	a5, a3, 8
4037e8c8:	ad05      	mov.n	a10, a5
4037e8ca:	e50a01        	call8	0x4037f978
4037e8cd:	21b6d9        	l32r	a2, 0x40374fa8
4037e8d0:	a8c3      	l32i.n	a10, a3, 48
4037e8d2:	c02000        	memw
4037e8d5:	8802      	l32i.n	a8, a2, 0
4037e8d7:	a7b805        	bgeu	a8, a10, 0x4037e8e0
4037e8da:	c02000        	memw
4037e8dd:	a26200        	s32i	a10, a2, 0
4037e8e0:	e02a11        	slli	a2, a10, 2
4037e8e3:	aa22      	add.n	a2, a2, a10
4037e8e5:	a1a9d9        	l32r	a10, 0x40374f8c
4037e8e8:	e02211        	slli	a2, a2, 2
4037e8eb:	bd05      	mov.n	a11, a5
4037e8ed:	aaa2      	add.n	a10, a2, a10
4037e8ef:	250301        	call8	0x4037f920
4037e8f2:	a22312        	l32i	a10, a3, 72
4037e8f5:	20eb03        	rsr.prid	a2
4037e8f8:	202d04        	extui	a2, a2, 13, 1
4037e8fb:	0c19      	movi.n	a9, 1
4037e8fd:	a022c0        	sub	a2, a2, a10
4037e900:	0c05      	movi.n	a5, 0
4037e902:	205983        	moveqz	a5, a9, a2
4037e905:	502074        	extui	a2, a5, 0, 8
4037e908:	cc92      	bnez.n	a2, 0x4037e915
4037e90a:	8198d9        	l32r	a8, 0x40374f6c
4037e90d:	8a8a      	add.n	a8, a10, a8
4037e90f:	802983        	moveqz	a2, a9, a8
4037e912:	16f205        	beqz	a2, 0x4037e975
4037e915:	20eb03        	rsr.prid	a2
4037e918:	202d04        	extui	a2, a2, 13, 1
4037e91b:	e08211        	slli	a8, a2, 2
4037e91e:	214dd8        	l32r	a2, 0x40374a54
4037e921:	58c3      	l32i.n	a5, a3, 48
4037e923:	8a22      	add.n	a2, a2, a8
4037e925:	c02000        	memw
4037e928:	2802      	l32i.n	a2, a2, 0
4037e92a:	28c2      	l32i.n	a2, a2, 48
4037e92c:	273545        	bltu	a5, a2, 0x4037e975
4037e92f:	30eb03        	rsr.prid	a3
4037e932:	303d04        	extui	a3, a3, 13, 1
4037e935:	e02311        	slli	a2, a3, 2
4037e938:	31aed9        	l32r	a3, 0x40374ff0
4037e93b:	2a33      	add.n	a3, a3, a2
4037e93d:	0c12      	movi.n	a2, 1
4037e93f:	c02000        	memw
4037e942:	2903      	s32i.n	a2, a3, 0
4037e944:	ad04      	mov.n	a10, a4
4037e946:	652b01        	call8	0x4037fbfc
4037e949:	060200        	j	0x4037e955
4037e94c:	40a420        	or	a10, a4, a4
4037e94f:	e52a01        	call8	0x4037fbfc
4037e952:	302320        	or	a2, a3, a3
4037e955:	900000        	retw
4037e958:	e08a11        	slli	a8, a10, 2
4037e95b:	8a22      	add.n	a2, a2, a8
4037e95d:	c02000        	memw
4037e960:	2802      	l32i.n	a2, a2, 0
4037e962:	46d7ff        	j	0x4037e8c3
4037e965:	e02a11        	slli	a2, a10, 2
4037e968:	aaa2      	add.n	a10, a2, a10
4037e96a:	e0aa11        	slli	a10, a10, 2
4037e96d:	bd05      	mov.n	a11, a5
4037e96f:	218ad9        	l32r	a2, 0x40374f98
4037e972:	c6ddff        	j	0x4037e8ed
4037e975:	50eb03        	rsr.prid	a5
4037e978:	505d04        	extui	a5, a5, 13, 1
4037e97b:	0c02      	movi.n	a2, 0
4037e97d:	571ac3        	beq	a10, a5, 0x4037e944
4037e980:	b8c3      	l32i.n	a11, a3, 48
4037e982:	257aff        	call8	0x4037e124
4037e985:	c6eeff        	j	0x4037e944
4037e988:	364100        	entry	a1, 32
4037e98b:	8197d9        	l32r	a8, 0x40374fe8
4037e98e:	c02000        	memw
4037e991:	8808      	l32i.n	a8, a8, 0
4037e993:	8902      	s32i.n	a8, a2, 0
4037e995:	817ad9        	l32r	a8, 0x40374f80
4037e998:	c02000        	memw
4037e99b:	8808      	l32i.n	a8, a8, 0
4037e99d:	8912      	s32i.n	a8, a2, 4
4037e99f:	1df0      	retw.n
4037e9a1:	000000        	ill
4037e9a4:	364100        	entry	a1, 32
4037e9a7:	5d02      	mov.n	a5, a2
4037e9a9:	ccd2      	bnez.n	a2, 0x4037e9ba
4037e9ab:	d19ed9        	l32r	a13, 0x40375024
4037e9ae:	c19ed9        	l32r	a12, 0x40375028
4037e9b1:	b19ed9        	l32r	a11, 0x4037502c
4037e9b4:	a167d9        	l32r	a10, 0x40374f50
4037e9b7:	a5fa03        	call8	0x40382960
4037e9ba:	cca3      	bnez.n	a3, 0x4037e9c8
4037e9bc:	d19dd9        	l32r	a13, 0x40375030
4037e9bf:	c19ad9        	l32r	a12, 0x40375028
4037e9c2:	b19cd9        	l32r	a11, 0x40375034
4037e9c5:	c6faff        	j	0x4037e9b4
4037e9c8:	4167d9        	l32r	a4, 0x40374f64
4037e9cb:	b2afff        	movi	a11, -1
4037e9ce:	40a420        	or	a10, a4, a4
4037e9d1:	650e01        	call8	0x4037fab8
4037e9d4:	216bd9        	l32r	a2, 0x40374f80
4037e9d7:	c02000        	memw
4037e9da:	a22200        	l32i	a10, a2, 0
4037e9dd:	80eb03        	rsr.prid	a8
4037e9e0:	808d04        	extui	a8, a8, 13, 1
4037e9e3:	211cd8        	l32r	a2, 0x40374a54
4037e9e6:	e08811        	slli	a8, a8, 2
4037e9e9:	8a82      	add.n	a8, a2, a8
4037e9eb:	c02000        	memw
4037e9ee:	8808      	l32i.n	a8, a8, 0
4037e9f0:	82d801        	addmi	a8, a8, 0x100
4037e9f3:	820856        	l8ui	a8, a8, 86
4037e9f6:	9cb8      	beqz.n	a8, 0x4037ea15
4037e9f8:	30eb03        	rsr.prid	a3
4037e9fb:	303d04        	extui	a3, a3, 13, 1
4037e9fe:	e03311        	slli	a3, a3, 2
4037ea01:	3a22      	add.n	a2, a2, a3
4037ea03:	c02000        	memw
4037ea06:	2802      	l32i.n	a2, a2, 0
4037ea08:	0c03      	movi.n	a3, 0
4037ea0a:	22d201        	addmi	a2, a2, 0x100
4037ea0d:	324256        	s8i	a3, a2, 86
4037ea10:	0c12      	movi.n	a2, 1
4037ea12:	460e00        	j	0x4037ea4f
4037ea15:	9803      	l32i.n	a9, a3, 0
4037ea17:	2d08      	mov.n	a2, a8
4037ea19:	260932        	beqi	a9, -1, 0x4037ea4f
4037ea1c:	8173d9        	l32r	a8, 0x40374fe8
4037ea1f:	b815      	l32i.n	a11, a5, 4
4037ea21:	c02000        	memw
4037ea24:	c808      	l32i.n	a12, a8, 0
4037ea26:	8805      	l32i.n	a8, a5, 0
4037ea28:	c088c0        	sub	a8, a8, a12
4037ea2b:	0c1c      	movi.n	a12, 1
4037ea2d:	802c93        	movnez	a2, a12, a8
4037ea30:	165200        	beqz	a2, 0x4037ea39
4037ea33:	c02c20        	or	a2, a12, a12
4037ea36:	b7ba15        	bgeu	a10, a11, 0x4037ea4f
4037ea39:	b02ac0        	sub	a2, a10, a11
4037ea3c:	97b216        	bgeu	a2, a9, 0x4037ea56
4037ea3f:	a099c0        	sub	a9, a9, a10
4037ea42:	b09980        	add	a9, a9, a11
4037ea45:	926300        	s32i	a9, a3, 0
4037ea48:	ad05      	mov.n	a10, a5
4037ea4a:	e5f3ff        	call8	0x4037e988
4037ea4d:	0c02      	movi.n	a2, 0
4037ea4f:	ad04      	mov.n	a10, a4
4037ea51:	a51a01        	call8	0x4037fbfc
4037ea54:	1df0      	retw.n
4037ea56:	0c02      	movi.n	a2, 0
4037ea58:	2903      	s32i.n	a2, a3, 0
4037ea5a:	86ecff        	j	0x4037ea10
4037ea5d:	000000        	ill
4037ea60:	364100        	entry	a1, 32
4037ea63:	80eb03        	rsr.prid	a8
4037ea66:	808d04        	extui	a8, a8, 13, 1
4037ea69:	e09811        	slli	a9, a8, 2
4037ea6c:	8161d9        	l32r	a8, 0x40374ff0
4037ea6f:	9a88      	add.n	a8, a8, a9
4037ea71:	0c19      	movi.n	a9, 1
4037ea73:	c02000        	memw
4037ea76:	9908      	s32i.n	a9, a8, 0
4037ea78:	1df0      	retw.n
4037ea7a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037ea7d:	4100a0        	l32r	a4, 0x40366a80
4037ea80:	630080        	lsi	f6, a0, 0x200
4037ea83:	eb03      	addi.n	a0, a3, 14
4037ea85:	808d04        	extui	a8, a8, 13, 1
4037ea88:	e09811        	slli	a9, a8, 2
4037ea8b:	81f2d7        	l32r	a8, 0x40374a54
4037ea8e:	9a88      	add.n	a8, a8, a9
4037ea90:	c02000        	memw
4037ea93:	222800        	l32i	a2, a8, 0
4037ea96:	8125d8        	l32r	a8, 0x40374b2c
4037ea99:	e00800        	callx8	a8
4037ea9c:	1df0      	retw.n
4037ea9e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037eaa1:	410031        	l32r	a4, 0x4034aea4
4037eaa4:	30d9b2        	mulsh	a13, a9, a3
4037eaa7:	afff30a3 	ee.fft.ams.s16.st.incp	q3, q6, a10, a15, q0, q7, q6, 0
4037eaab:	20a500        	any8	b2, b0:b1:b2:b3:b4:b5:b6:b7
4037eaae:	01cc32        	l32r	a0, 0x4034b5e0
4037eab1:	a5fcff        	call8	0x4037ea7c
4037eab4:	2d0a      	mov.n	a2, a10
4037eab6:	30a320        	or	a10, a3, a3
4037eab9:	22220c        	l32i	a2, a2, 48
4037eabc:	e51301        	call8	0x4037fbfc
4037eabf:	900000        	retw
4037eac2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037eac5:	41001c        	l32r	a4, 0x40345ac8
4037eac8:	8437b4        	ee.vst.l.64.ip	q6, a8, 0x1b8
4037eacb:	0ed15bd9 	ee.fft.ams.s16.ld.r32.decp	q1, a0, q2, q6, q3, q5, q3, 0
4037eacf:	c15bd9        	l32r	a12, 0x4037503c
4037ead2:	a11fd9        	l32r	a10, 0x40374f50
4037ead5:	b2a6ee        	movi	a11, 0x6ee
4037ead8:	65e803        	call8	0x40382960
4037eadb:	5122d9        	l32r	a5, 0x40374f64
4037eade:	b2afff        	movi	a11, -1
4037eae1:	ad05      	mov.n	a10, a5
4037eae3:	65fd00        	call8	0x4037fab8
4037eae6:	cc32      	bnez.n	a2, 0x4037eaed
4037eae8:	25f9ff        	call8	0x4037ea7c
4037eaeb:	2d0a      	mov.n	a2, a10
4037eaed:	422214        	l32i	a4, a2, 80
4037eaf0:	479302        	bne	a3, a4, 0x4037eaf6
4037eaf3:	863100        	j	0x4037ebbd
4037eaf6:	91d7d7        	l32r	a9, 0x40374a54
4037eaf9:	373402        	bltu	a4, a3, 0x4037eaff
4037eafc:	063100        	j	0x4037ebc4
4037eaff:	40eb03        	rsr.prid	a4
4037eb02:	404d04        	extui	a4, a4, 13, 1
4037eb05:	e04411        	slli	a4, a4, 2
4037eb08:	4a49      	add.n	a4, a9, a4
4037eb0a:	c02000        	memw
4037eb0d:	6804      	l32i.n	a6, a4, 0
4037eb0f:	0c04      	movi.n	a4, 0
4037eb11:	271647        	beq	a6, a2, 0x4037eb5c
4037eb14:	a22212        	l32i	a10, a2, 72
4037eb17:	60eb03        	rsr.prid	a6
4037eb1a:	606d04        	extui	a6, a6, 13, 1
4037eb1d:	8113d9        	l32r	a8, 0x40374f6c
4037eb20:	0c1b      	movi.n	a11, 1
4037eb22:	8a8a      	add.n	a8, a10, a8
4037eb24:	804b83        	moveqz	a4, a11, a8
4037eb27:	404074        	extui	a4, a4, 0, 8
4037eb2a:	cc64      	bnez.n	a4, 0x4037eb34
4037eb2c:	a066c0        	sub	a6, a6, a10
4037eb2f:	604b83        	moveqz	a4, a11, a6
4037eb32:	9c64      	beqz.n	a4, 0x4037eb4c
4037eb34:	40eb03        	rsr.prid	a4
4037eb37:	404d04        	extui	a4, a4, 13, 1
4037eb3a:	e04411        	slli	a4, a4, 2
4037eb3d:	4a99      	add.n	a9, a9, a4
4037eb3f:	c02000        	memw
4037eb42:	4809      	l32i.n	a4, a9, 0
4037eb44:	68c4      	l32i.n	a6, a4, 48
4037eb46:	42a001        	movi	a4, 1
4037eb49:	67b30f        	bgeu	a3, a6, 0x4037eb5c
4037eb4c:	60eb03        	rsr.prid	a6
4037eb4f:	606d04        	extui	a6, a6, 13, 1
4037eb52:	0c04      	movi.n	a4, 0
4037eb54:	671a04        	beq	a10, a6, 0x4037eb5c
4037eb57:	bd03      	mov.n	a11, a3
4037eb59:	a55cff        	call8	0x4037e124
4037eb5c:	68c2      	l32i.n	a6, a2, 48
4037eb5e:	822214        	l32i	a8, a2, 80
4037eb61:	679801        	bne	a8, a6, 0x4037eb66
4037eb64:	39c2      	s32i.n	a3, a2, 48
4037eb66:	8872      	l32i.n	a8, a2, 28
4037eb68:	326214        	s32i	a3, a2, 80
4037eb6b:	966800        	bltz	a8, 0x4037eb75
4037eb6e:	1c98      	movi.n	a8, 25
4037eb70:	3038c0        	sub	a3, a8, a3
4037eb73:	3972      	s32i.n	a3, a2, 28
4037eb75:	e03611        	slli	a3, a6, 2
4037eb78:	6a33      	add.n	a3, a3, a6
4037eb7a:	6104d9        	l32r	a6, 0x40374f8c
4037eb7d:	e03311        	slli	a3, a3, 2
4037eb80:	8862      	l32i.n	a8, a2, 24
4037eb82:	6a33      	add.n	a3, a3, a6
4037eb84:	37982a        	bne	a8, a3, 0x4037ebb2
4037eb87:	8b32      	addi.n	a3, a2, 8
4037eb89:	ad03      	mov.n	a10, a3
4037eb8b:	e5de00        	call8	0x4037f978
4037eb8e:	8106d9        	l32r	a8, 0x40374fa8
4037eb91:	28c2      	l32i.n	a2, a2, 48
4037eb93:	c02000        	memw
4037eb96:	9808      	l32i.n	a9, a8, 0
4037eb98:	27b904        	bgeu	a9, a2, 0x4037eba0
4037eb9b:	c02000        	memw
4037eb9e:	2908      	s32i.n	a2, a8, 0
4037eba0:	e0a211        	slli	a10, a2, 2
4037eba3:	20aa80        	add	a10, a10, a2
4037eba6:	e0aa11        	slli	a10, a10, 2
4037eba9:	30b320        	or	a11, a3, a3
4037ebac:	a0a680        	add	a10, a6, a10
4037ebaf:	25d700        	call8	0x4037f920
4037ebb2:	8c74      	beqz.n	a4, 0x4037ebbd
4037ebb4:	a0eb03        	rsr.prid	a10
4037ebb7:	a0ad04        	extui	a10, a10, 13, 1
4037ebba:	a543f9        	call8	0x40377ff4
4037ebbd:	ad05      	mov.n	a10, a5
4037ebbf:	e50301        	call8	0x4037fbfc
4037ebc2:	1df0      	retw.n
4037ebc4:	40eb03        	rsr.prid	a4
4037ebc7:	404d04        	extui	a4, a4, 13, 1
4037ebca:	e04411        	slli	a4, a4, 2
4037ebcd:	4a49      	add.n	a4, a9, a4
4037ebcf:	c02000        	memw
4037ebd2:	6804      	l32i.n	a6, a4, 0
4037ebd4:	0c14      	movi.n	a4, 1
4037ebd6:	279602        	bne	a6, a2, 0x4037ebdc
4037ebd9:	c6dfff        	j	0x4037eb5c
4037ebdc:	40eb03        	rsr.prid	a4
4037ebdf:	404d04        	extui	a4, a4, 13, 1
4037ebe2:	e04411        	slli	a4, a4, 2
4037ebe5:	4a49      	add.n	a4, a9, a4
4037ebe7:	c02000        	memw
4037ebea:	6804      	l32i.n	a6, a4, 0
4037ebec:	0c04      	movi.n	a4, 0
4037ebee:	279602        	bne	a6, a2, 0x4037ebf4
4037ebf1:	c6d9ff        	j	0x4037eb5c
4037ebf4:	40eb03        	rsr.prid	a4
4037ebf7:	404d04        	extui	a4, a4, 13, 1
4037ebfa:	e04411        	slli	a4, a4, 2
4037ebfd:	4a99      	add.n	a9, a9, a4
4037ebff:	c02000        	memw
4037ec02:	4809      	l32i.n	a4, a9, 0
4037ec04:	68c4      	l32i.n	a6, a4, 48
4037ec06:	0c14      	movi.n	a4, 1
4037ec08:	673302        	bltu	a3, a6, 0x4037ec0e
4037ec0b:	46d3ff        	j	0x4037eb5c
4037ec0e:	a22212        	l32i	a10, a2, 72
4037ec11:	c6cdff        	j	0x4037eb4c
4037ec14:	364100        	entry	a1, 32
4037ec17:	31d3d8        	l32r	a3, 0x40374f64
4037ec1a:	b2afff        	movi	a11, -1
4037ec1d:	30a320        	or	a10, a3, a3
4037ec20:	65e900        	call8	0x4037fab8
4037ec23:	cc32      	bnez.n	a2, 0x4037ec2a
4037ec25:	65e5ff        	call8	0x4037ea7c
4037ec28:	2d0a      	mov.n	a2, a10
4037ec2a:	42c208        	addi	a4, a2, 8
4037ec2d:	40a420        	or	a10, a4, a4
4037ec30:	65d400        	call8	0x4037f978
4037ec33:	58b2      	l32i.n	a5, a2, 44
4037ec35:	8c45      	beqz.n	a5, 0x4037ec3d
4037ec37:	a2c21c        	addi	a10, a2, 28
4037ec3a:	e5d300        	call8	0x4037f978
4037ec3d:	51d1d8        	l32r	a5, 0x40374f84
4037ec40:	bd04      	mov.n	a11, a4
4037ec42:	ad05      	mov.n	a10, a5
4037ec44:	a5cd00        	call8	0x4037f920
4037ec47:	80eb03        	rsr.prid	a8
4037ec4a:	808d04        	extui	a8, a8, 13, 1
4037ec4d:	4181d7        	l32r	a4, 0x40374a54
4037ec50:	e08811        	slli	a8, a8, 2
4037ec53:	8a84      	add.n	a8, a4, a8
4037ec55:	c02000        	memw
4037ec58:	7808      	l32i.n	a7, a8, 0
4037ec5a:	82d201        	addmi	a8, a2, 0x100
4037ec5d:	c02000        	memw
4037ec60:	620854        	l8ui	a6, a8, 84
4037ec63:	606074        	extui	a6, a6, 0, 8
4037ec66:	661607        	bnei	a6, 1, 0x4037ec71
4037ec69:	0c06      	movi.n	a6, 0
4037ec6b:	c02000        	memw
4037ec6e:	624854        	s8i	a6, a8, 84
4037ec71:	ad03      	mov.n	a10, a3
4037ec73:	a5f800        	call8	0x4037fbfc
4037ec76:	61cad8        	l32r	a6, 0x40374fa0
4037ec79:	c02000        	memw
4037ec7c:	8806      	l32i.n	a8, a6, 0
4037ec7e:	8cd8      	beqz.n	a8, 0x4037ec8f
4037ec80:	7cfb      	movi.n	a11, -1
4037ec82:	ad03      	mov.n	a10, a3
4037ec84:	25e300        	call8	0x4037fab8
4037ec87:	a52aff        	call8	0x4037df30
4037ec8a:	ad03      	mov.n	a10, a3
4037ec8c:	e5f600        	call8	0x4037fbfc
4037ec8f:	771202        	beq	a2, a7, 0x4037ec95
4037ec92:	c61f00        	j	0x4037ed15
4037ec95:	c02000        	memw
4037ec98:	6806      	l32i.n	a6, a6, 0
4037ec9a:	16e603        	beqz	a6, 0x4037ecdc
4037ec9d:	7cfb      	movi.n	a11, -1
4037ec9f:	30a320        	or	a10, a3, a3
4037eca2:	65e100        	call8	0x4037fab8
4037eca5:	20eb03        	rsr.prid	a2
4037eca8:	202d04        	extui	a2, a2, 13, 1
4037ecab:	e04211        	slli	a4, a2, 2
4037ecae:	21c4d8        	l32r	a2, 0x40374fc0
4037ecb1:	ad03      	mov.n	a10, a3
4037ecb3:	4a22      	add.n	a2, a2, a4
4037ecb5:	c02000        	memw
4037ecb8:	222200        	l32i	a2, a2, 0
4037ecbb:	25f400        	call8	0x4037fbfc
4037ecbe:	8cd2      	beqz.n	a2, 0x4037eccf
4037ecc0:	d1e0d8        	l32r	a13, 0x40375040
4037ecc3:	c1e0d8        	l32r	a12, 0x40375044
4037ecc6:	a1a2d8        	l32r	a10, 0x40374f50
4037ecc9:	b2a7f2        	movi	a11, 0x7f2
4037eccc:	25c903        	call8	0x40382960
4037eccf:	a0eb03        	rsr.prid	a10
4037ecd2:	a0ad04        	extui	a10, a10, 13, 1
4037ecd5:	e531f9        	call8	0x40377ff4
4037ecd8:	1df0      	retw.n
4037ecda:	000021        	srai	a0, a0, 0
4037ecdd:	a7d8c0        	bbs	a8, a10, 0x4037eca1
4037ece0:	200058        	ssxp	f0, a0, a2
4037ece3:	05c020        	call0	0x4039f8e4
4037ece6:	002802        	andb	b2, b8, b0
4037ece9:	27951f        	bne	a5, a2, 0x4037ed0c
4037ecec:	7cfb      	movi.n	a11, -1
4037ecee:	ad03      	mov.n	a10, a3
4037ecf0:	65dc00        	call8	0x4037fab8
4037ecf3:	20eb03        	rsr.prid	a2
4037ecf6:	202d04        	extui	a2, a2, 13, 1
4037ecf9:	e02211        	slli	a2, a2, 2
4037ecfc:	2a44      	add.n	a4, a4, a2
4037ecfe:	c02000        	memw
4037ed01:	6904      	s32i.n	a6, a4, 0
4037ed03:	ad03      	mov.n	a10, a3
4037ed05:	65ef00        	call8	0x4037fbfc
4037ed08:	06f3ff        	j	0x4037ecd8
4037ed0b:	006590        	addx2	a6, a5, a0
4037ed0e:	ff          	.byte	0xff
4037ed0f:	46f1ff        	j	0x4037ecd8
4037ed12:	000000        	ill
4037ed15:	c02000        	memw
4037ed18:	222600        	l32i	a2, a6, 0
4037ed1b:	1692fb        	beqz	a2, 0x4037ecd8
4037ed1e:	b2afff        	movi	a11, -1
4037ed21:	30a320        	or	a10, a3, a3
4037ed24:	25d900        	call8	0x4037fab8
4037ed27:	a520ff        	call8	0x4037df30
4037ed2a:	46f5ff        	j	0x4037ed03
4037ed2d:	000000        	ill
4037ed30:	364100        	entry	a1, 32
4037ed33:	a5d4ff        	call8	0x4037ea7c
4037ed36:	22ca60        	addi	a2, a10, 96
4037ed39:	cc3a      	bnez.n	a10, 0x4037ed40
4037ed3b:	2161d7        	l32r	a2, 0x40374ac0
4037ed3e:	2802      	l32i.n	a2, a2, 0
4037ed40:	1df0      	retw.n
4037ed42:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037ed45:	410056        	l32r	a4, 0x40354548
4037ed48:	620125        	l8ui	a6, a1, 37
4037ed4b:	d3          	.byte	0xd3
4037ed4c:	ff2d0a56 	ee.vmulas.u16.qacc.ld.ip.qup	q5, a15, 0x1d0, q4, q4, q0, q2
4037ed50:	ea00      	add.n	a0, a0, a14
4037ed52:	d17cd8        	l32r	a13, 0x40374f44
4037ed55:	c1bcd8        	l32r	a12, 0x40375048
4037ed58:	b1bdd8        	l32r	a11, 0x4037504c
4037ed5b:	a17dd8        	l32r	a10, 0x40374f50
4037ed5e:	25c003        	call8	0x40382960
4037ed61:	22c238        	addi	a2, a2, 56
4037ed64:	1df0      	retw.n
4037ed66:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037ed69:	4100e6        	l32r	a4, 0x4037856c (0xb2f0c6a1)
4037ed6c:	13          	.byte	0x13
4037ed6d:	22617d        	s32i	a2, a1, 0x1f4
4037ed70:	d8b2      	l32i.n	a13, a2, 44
4037ed72:	afff60a6 	ee.fft.ams.s16.st.incp	q6, q4, a10, a15, q0, q7, q6, 1
4037ed76:	2025d4        	extui	a2, a2, 5, 14
4037ed79:	00cc32        	orbc	b12, b12, b0
4037ed7c:	e5cfff        	call8	0x4037ea7c
4037ed7f:	2d0a      	mov.n	a2, a10
4037ed81:	e03311        	slli	a3, a3, 2
4037ed84:	3a22      	add.n	a2, a2, a3
4037ed86:	426216        	s32i	a4, a2, 88
4037ed89:	526217        	s32i	a5, a2, 92
4037ed8c:	ad06      	mov.n	a10, a6
4037ed8e:	e5e600        	call8	0x4037fbfc
4037ed91:	1df0      	retw.n
4037ed93:	003641        	srli	a3, a0, 6
4037ed96:	00ad02        	andb	b10, b13, b0
4037ed99:	0c02      	movi.n	a2, 0
4037ed9b:	e6130f        	bgei	a3, 1, 0x4037edae
4037ed9e:	279a02        	bne	a10, a2, 0x4037eda4
4037eda1:	a5cdff        	call8	0x4037ea7c
4037eda4:	32c314        	addi	a3, a3, 20
4037eda7:	e03311        	slli	a3, a3, 2
4037edaa:	3a3a      	add.n	a3, a10, a3
4037edac:	2823      	l32i.n	a2, a3, 8
4037edae:	1df0      	retw.n
4037edb0:	364100        	entry	a1, 32
4037edb3:	ad02      	mov.n	a10, a2
4037edb5:	cc42      	bnez.n	a2, 0x4037edbd
4037edb7:	101120        	or	a1, a1, a1
4037edba:	25ccff        	call8	0x4037ea7c
4037edbd:	222a12        	l32i	a2, a10, 72
4037edc0:	1df0      	retw.n
4037edc2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037edc5:	41008d        	l32r	a4, 0x403621c8
4037edc8:	020c02        	l8ui	a0, a12, 2
4037edcb:	e6280d        	bgei	a8, 2, 0x4037eddc
4037edce:	2121d7        	l32r	a2, 0x40374a54
4037edd1:	e08811        	slli	a8, a8, 2
4037edd4:	8a82      	add.n	a8, a2, a8
4037edd6:	c02000        	memw
4037edd9:	222800        	l32i	a2, a8, 0
4037eddc:	1df0      	retw.n
4037edde:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037ede1:	4100a0        	l32r	a4, 0x40366de4
4037ede4:	630021        	lsi	f6, a0, 132
4037ede7:	6ed8c020 	ee.vmulas.s8.accx.ld.ip.qup	q0, a6, 128, q3, q3, q4, q0
4037edeb:	008802        	andb	b8, b8, b0
4037edee:	0c12      	movi.n	a2, 1
4037edf0:	9cc8      	beqz.n	a8, 0x4037ee10
4037edf2:	20eb03        	rsr.prid	a2
4037edf5:	202d04        	extui	a2, a2, 13, 1
4037edf8:	e08211        	slli	a8, a2, 2
4037edfb:	2171d8        	l32r	a2, 0x40374fc0
4037edfe:	0c29      	movi.n	a9, 2
4037ee00:	8a22      	add.n	a2, a2, a8
4037ee02:	c02000        	memw
4037ee05:	2802      	l32i.n	a2, a2, 0
4037ee07:	82a000        	movi	a8, 0
4037ee0a:	208983        	moveqz	a8, a9, a2
4037ee0d:	802820        	or	a2, a8, a8
4037ee10:	8147d7        	l32r	a8, 0x40374b2c
4037ee13:	e00800        	callx8	a8
4037ee16:	1df0      	retw.n
4037ee18:	364100        	entry	a1, 32
4037ee1b:	a152d8        	l32r	a10, 0x40374f64
4037ee1e:	b2afff        	movi	a11, -1
4037ee21:	65c900        	call8	0x4037fab8
4037ee24:	70eb03        	rsr.prid	a7
4037ee27:	707d04        	extui	a7, a7, 13, 1
4037ee2a:	410ad7        	l32r	a4, 0x40374a54
4037ee2d:	e03711        	slli	a3, a7, 2
4037ee30:	303480        	add	a3, a4, a3
4037ee33:	c02000        	memw
4037ee36:	5803      	l32i.n	a5, a3, 0
4037ee38:	564200        	bnez	a2, 0x4037ee40
4037ee3b:	25c4ff        	call8	0x4037ea7c
4037ee3e:	2d0a      	mov.n	a2, a10
4037ee40:	42c208        	addi	a4, a2, 8
4037ee43:	40a420        	or	a10, a4, a4
4037ee46:	25b300        	call8	0x4037f978
4037ee49:	38b2      	l32i.n	a3, a2, 44
4037ee4b:	165300        	beqz	a3, 0x4037ee54
4037ee4e:	a2c21c        	addi	a10, a2, 28
4037ee51:	65b200        	call8	0x4037f978
4037ee54:	8154d8        	l32r	a8, 0x40374fa4
4037ee57:	3808      	l32i.n	a3, a8, 0
4037ee59:	1b33      	addi.n	a3, a3, 1
4037ee5b:	3908      	s32i.n	a3, a8, 0
4037ee5d:	0c13      	movi.n	a3, 1
4037ee5f:	0c08      	movi.n	a8, 0
4037ee61:	708383        	moveqz	a8, a3, a7
4037ee64:	7d08      	mov.n	a7, a8
4037ee66:	e06811        	slli	a6, a8, 2
4037ee69:	571214        	beq	a2, a5, 0x4037ee81
4037ee6c:	81fad6        	l32r	a8, 0x40374a54
4037ee6f:	609880        	add	a9, a8, a6
4037ee72:	c02000        	memw
4037ee75:	922900        	l32i	a9, a9, 0
4037ee78:	271905        	beq	a9, a2, 0x4037ee81
4037ee7b:	922212        	l32i	a9, a2, 72
4037ee7e:	779962        	bne	a9, a7, 0x4037eee4
4037ee81:	a139d8        	l32r	a10, 0x40374f68
4037ee84:	bd04      	mov.n	a11, a4
4037ee86:	a5a900        	call8	0x4037f920
4037ee89:	913ad8        	l32r	a9, 0x40374f74
4037ee8c:	c02000        	memw
4037ee8f:	3809      	l32i.n	a3, a9, 0
4037ee91:	1b33      	addi.n	a3, a3, 1
4037ee93:	c02000        	memw
4037ee96:	3909      	s32i.n	a3, a9, 0
4037ee98:	31efd6        	l32r	a3, 0x40374a54
4037ee9b:	6a43      	add.n	a4, a3, a6
4037ee9d:	c02000        	memw
4037eea0:	4804      	l32i.n	a4, a4, 0
4037eea2:	0c03      	movi.n	a3, 0
4037eea4:	279404        	bne	a4, a2, 0x4037eeac
4037eea7:	ad07      	mov.n	a10, a7
4037eea9:	e5dd00        	call8	0x4037fc88
4037eeac:	a12ed8        	l32r	a10, 0x40374f64
4037eeaf:	e5d400        	call8	0x4037fbfc
4037eeb2:	66130b        	bnei	a3, 1, 0x4037eec1
4037eeb5:	20a220        	or	a10, a2, a2
4037eeb8:	650aff        	call8	0x4037df60
4037eebb:	20a220        	or	a10, a2, a2
4037eebe:	a50cff        	call8	0x4037df88
4037eec1:	3137d8        	l32r	a3, 0x40374fa0
4037eec4:	c02000        	memw
4037eec7:	322300        	l32i	a3, a3, 0
4037eeca:	579237        	bne	a2, a5, 0x4037ef05
4037eecd:	164303        	beqz	a3, 0x4037ef05
4037eed0:	e5f0ff        	call8	0x4037ede0
4037eed3:	ec5a      	bnez.n	a10, 0x4037eefc
4037eed5:	d15ed8        	l32r	a13, 0x40375050
4037eed8:	c15fd8        	l32r	a12, 0x40375054
4037eedb:	a11dd8        	l32r	a10, 0x40374f50
4037eede:	b2a59a        	movi	a11, 0x59a
4037eee1:	e5a703        	call8	0x40382960
4037eee4:	7125d8        	l32r	a7, 0x40374f78
4037eee7:	c02000        	memw
4037eeea:	422700        	l32i	a4, a7, 0
4037eeed:	42c4ff        	addi	a4, a4, -1
4037eef0:	c02000        	memw
4037eef3:	426700        	s32i	a4, a7, 0
4037eef6:	a503ff        	call8	0x4037df30
4037eef9:	c6ebff        	j	0x4037eeac
4037eefc:	a0eb03        	rsr.prid	a10
4037eeff:	a0ad04        	extui	a10, a10, 13, 1
4037ef02:	250ff9        	call8	0x40377ff4
4037ef05:	1df0      	retw.n
4037ef07:	003641        	srli	a3, a0, 6
4037ef0a:	001602        	andb	b1, b6, b0
4037ef0d:	03          	.byte	0x3
4037ef0e:	25edff        	call8	0x4037ede0
4037ef11:	56ea00        	bnez	a10, 0x4037ef23
4037ef14:	d14fd8        	l32r	a13, 0x40375050
4037ef17:	c150d8        	l32r	a12, 0x40375058
4037ef1a:	a10dd8        	l32r	a10, 0x40374f50
4037ef1d:	b2a61d        	movi	a11, 0x61d
4037ef20:	e5a303        	call8	0x40382960
4037ef23:	3110d8        	l32r	a3, 0x40374f64
4037ef26:	b2afff        	movi	a11, -1
4037ef29:	ad03      	mov.n	a10, a3
4037ef2b:	e5b800        	call8	0x4037fab8
4037ef2e:	a0eb03        	rsr.prid	a10
4037ef31:	a0ad04        	extui	a10, a10, 13, 1
4037ef34:	20b220        	or	a11, a2, a2
4037ef37:	6515ff        	call8	0x4037e08c
4037ef3a:	ad03      	mov.n	a10, a3
4037ef3c:	e5cb00        	call8	0x4037fbfc
4037ef3f:	a0eb03        	rsr.prid	a10
4037ef42:	a0ad04        	extui	a10, a10, 13, 1
4037ef45:	e50af9        	call8	0x40377ff4
4037ef48:	1df0      	retw.n
4037ef4a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037ef4d:	410025        	l32r	a4, 0x40348350
4037ef50:	e9ff      	s32i.n	a14, a15, 60
4037ef52:	662a0e        	bnei	a10, 2, 0x4037ef64
4037ef55:	d141d8        	l32r	a13, 0x4037505c
4037ef58:	c142d8        	l32r	a12, 0x40375060
4037ef5b:	b142d8        	l32r	a11, 0x40375064
4037ef5e:	a1fcd7        	l32r	a10, 0x40374f50
4037ef61:	e59f03        	call8	0x40382960
4037ef64:	3100d8        	l32r	a3, 0x40374f64
4037ef67:	b2afff        	movi	a11, -1
4037ef6a:	30a320        	or	a10, a3, a3
4037ef6d:	a5b400        	call8	0x4037fab8
4037ef70:	20eb03        	rsr.prid	a2
4037ef73:	202d04        	extui	a2, a2, 13, 1
4037ef76:	4112d8        	l32r	a4, 0x40374fc0
4037ef79:	e02211        	slli	a2, a2, 2
4037ef7c:	2a24      	add.n	a2, a4, a2
4037ef7e:	c02000        	memw
4037ef81:	5802      	l32i.n	a5, a2, 0
4037ef83:	0b55      	addi.n	a5, a5, -1
4037ef85:	c02000        	memw
4037ef88:	5902      	s32i.n	a5, a2, 0
4037ef8a:	20eb03        	rsr.prid	a2
4037ef8d:	202d04        	extui	a2, a2, 13, 1
4037ef90:	e02211        	slli	a2, a2, 2
4037ef93:	2a44      	add.n	a4, a4, a2
4037ef95:	c02000        	memw
4037ef98:	2804      	l32i.n	a2, a4, 0
4037ef9a:	8ca2      	beqz.n	a2, 0x4037efa8
4037ef9c:	22a000        	movi	a2, 0
4037ef9f:	30a320        	or	a10, a3, a3
4037efa2:	a5c500        	call8	0x4037fbfc
4037efa5:	900000        	retw
4037efa8:	41f4d7        	l32r	a4, 0x40374f78
4037efab:	c02000        	memw
4037efae:	4804      	l32i.n	a4, a4, 0
4037efb0:	1684fe        	beqz	a4, 0x4037ef9c
4037efb3:	41f9d7        	l32r	a4, 0x40374f98
4037efb6:	462500        	j	0x4037f04f
4037efb9:	50eb03        	rsr.prid	a5
4037efbc:	505d04        	extui	a5, a5, 13, 1
4037efbf:	e02511        	slli	a2, a5, 2
4037efc2:	5a22      	add.n	a2, a2, a5
4037efc4:	e02211        	slli	a2, a2, 2
4037efc7:	2a24      	add.n	a2, a4, a2
4037efc9:	2832      	l32i.n	a2, a2, 12
4037efcb:	2832      	l32i.n	a2, a2, 12
4037efcd:	a2c21c        	addi	a10, a2, 28
4037efd0:	659a00        	call8	0x4037f978
4037efd3:	8b62      	addi.n	a6, a2, 8
4037efd5:	ad06      	mov.n	a10, a6
4037efd7:	259a00        	call8	0x4037f978
4037efda:	51f3d7        	l32r	a5, 0x40374fa8
4037efdd:	a8c2      	l32i.n	a10, a2, 48
4037efdf:	c02000        	memw
4037efe2:	8805      	l32i.n	a8, a5, 0
4037efe4:	a7b804        	bgeu	a8, a10, 0x4037efec
4037efe7:	c02000        	memw
4037efea:	a905      	s32i.n	a10, a5, 0
4037efec:	e05a11        	slli	a5, a10, 2
4037efef:	aa55      	add.n	a5, a5, a10
4037eff1:	a1e6d7        	l32r	a10, 0x40374f8c
4037eff4:	e05511        	slli	a5, a5, 2
4037eff7:	bd06      	mov.n	a11, a6
4037eff9:	5aaa      	add.n	a10, a10, a5
4037effb:	659200        	call8	0x4037f920
4037effe:	922212        	l32i	a9, a2, 72
4037f001:	80eb03        	rsr.prid	a8
4037f004:	808d04        	extui	a8, a8, 13, 1
4037f007:	0c15      	movi.n	a5, 1
4037f009:	9088c0        	sub	a8, a8, a9
4037f00c:	0c06      	movi.n	a6, 0
4037f00e:	806583        	moveqz	a6, a5, a8
4037f011:	608074        	extui	a8, a6, 0, 8
4037f014:	cc88      	bnez.n	a8, 0x4037f020
4037f016:	61d5d7        	l32r	a6, 0x40374f6c
4037f019:	6a99      	add.n	a9, a9, a6
4037f01b:	908583        	moveqz	a8, a5, a9
4037f01e:	acd8      	beqz.n	a8, 0x4037f04f
4037f020:	50eb03        	rsr.prid	a5
4037f023:	505d04        	extui	a5, a5, 13, 1
4037f026:	e06511        	slli	a6, a5, 2
4037f029:	518ad6        	l32r	a5, 0x40374a54
4037f02c:	6a55      	add.n	a5, a5, a6
4037f02e:	c02000        	memw
4037f031:	5805      	l32i.n	a5, a5, 0
4037f033:	68c2      	l32i.n	a6, a2, 48
4037f035:	58c5      	l32i.n	a5, a5, 48
4037f037:	573614        	bltu	a6, a5, 0x4037f04f
4037f03a:	50eb03        	rsr.prid	a5
4037f03d:	505d04        	extui	a5, a5, 13, 1
4037f040:	e06511        	slli	a6, a5, 2
4037f043:	51ebd7        	l32r	a5, 0x40374ff0
4037f046:	6a55      	add.n	a5, a5, a6
4037f048:	0c16      	movi.n	a6, 1
4037f04a:	c02000        	memw
4037f04d:	6905      	s32i.n	a6, a5, 0
4037f04f:	50eb03        	rsr.prid	a5
4037f052:	505d04        	extui	a5, a5, 13, 1
4037f055:	e08511        	slli	a8, a5, 2
4037f058:	5a88      	add.n	a8, a8, a5
4037f05a:	e08811        	slli	a8, a8, 2
4037f05d:	8a84      	add.n	a8, a4, a8
4037f05f:	c02000        	memw
4037f062:	5808      	l32i.n	a5, a8, 0
4037f064:	5615f5        	bnez	a5, 0x4037efb9
4037f067:	8c12      	beqz.n	a2, 0x4037f06c
4037f069:	65ecfe        	call8	0x4037df30
4037f06c:	51e0d7        	l32r	a5, 0x40374fec
4037f06f:	c02000        	memw
4037f072:	2805      	l32i.n	a2, a5, 0
4037f074:	61dfd7        	l32r	a6, 0x40374ff0
4037f077:	ec12      	bnez.n	a2, 0x4037f09c
4037f079:	40eb03        	rsr.prid	a4
4037f07c:	404d04        	extui	a4, a4, 13, 1
4037f07f:	e04411        	slli	a4, a4, 2
4037f082:	4a46      	add.n	a4, a6, a4
4037f084:	c02000        	memw
4037f087:	2804      	l32i.n	a2, a4, 0
4037f089:	16f2f0        	beqz	a2, 0x4037ef9c
4037f08c:	a0eb03        	rsr.prid	a10
4037f08f:	a0ad04        	extui	a10, a10, 13, 1
4037f092:	22a001        	movi	a2, 1
4037f095:	e5f5f8        	call8	0x40377ff4
4037f098:	c6c0ff        	j	0x4037ef9f
4037f09b:	00          	.byte	00
4037f09c:	21a9d7        	l32r	a2, 0x40374f40
4037f09f:	81b8d7        	l32r	a8, 0x40374f80
4037f0a2:	c02000        	memw
4037f0a5:	9802      	l32i.n	a9, a2, 0
4037f0a7:	c02000        	memw
4037f0aa:	4808      	l32i.n	a4, a8, 0
4037f0ac:	47b90d        	bgeu	a9, a4, 0x4037f0bd
4037f0af:	d1eed7        	l32r	a13, 0x40375068
4037f0b2:	c1ebd7        	l32r	a12, 0x40375060
4037f0b5:	b1edd7        	l32r	a11, 0x4037506c
4037f0b8:	86a8ff        	j	0x4037ef5e
4037f0bb:	0000c0        	sub	a0, a0, a0
4037f0be:	200048        	ssx	f0, a0, a2
4037f0c1:	02c020        	addi	a0, a0, 32
4037f0c4:	002808        	lsx	f2, a8, a0
4037f0c7:	2024c0        	sub	a2, a4, a2
4037f0ca:	c02000        	memw
4037f0cd:	4805      	l32i.n	a4, a5, 0
4037f0cf:	27b405        	bgeu	a4, a2, 0x4037f0d8
4037f0d2:	c02000        	memw
4037f0d5:	222500        	l32i	a2, a5, 0
4037f0d8:	b62238        	bltui	a2, 2, 0x4037f114
4037f0db:	c02000        	memw
4037f0de:	4808      	l32i.n	a4, a8, 0
4037f0e0:	0b44      	addi.n	a4, a4, -1
4037f0e2:	2a44      	add.n	a4, a4, a2
4037f0e4:	c02000        	memw
4037f0e7:	4908      	s32i.n	a4, a8, 0
4037f0e9:	6539ff        	call8	0x4037e480
4037f0ec:	40eb03        	rsr.prid	a4
4037f0ef:	404d04        	extui	a4, a4, 13, 1
4037f0f2:	e04411        	slli	a4, a4, 2
4037f0f5:	4a46      	add.n	a4, a6, a4
4037f0f7:	c02000        	memw
4037f0fa:	6804      	l32i.n	a6, a4, 0
4037f0fc:	a06620        	or	a6, a6, a10
4037f0ff:	c02000        	memw
4037f102:	6904      	s32i.n	a6, a4, 0
4037f104:	c02000        	memw
4037f107:	4805      	l32i.n	a4, a5, 0
4037f109:	2024c0        	sub	a2, a4, a2
4037f10c:	c02000        	memw
4037f10f:	2905      	s32i.n	a2, a5, 0
4037f111:	86d6ff        	j	0x4037f06f
4037f114:	0c12      	movi.n	a2, 1
4037f116:	c6f3ff        	j	0x4037f0e9
4037f119:	000000        	ill
4037f11c:	364100        	entry	a1, 32
4037f11f:	4191d7        	l32r	a4, 0x40374f64
4037f122:	7cfb      	movi.n	a11, -1
4037f124:	40a420        	or	a10, a4, a4
4037f127:	0c05      	movi.n	a5, 0
4037f129:	e59800        	call8	0x4037fab8
4037f12c:	579202        	bne	a2, a5, 0x4037f132
4037f12f:	862300        	j	0x4037f1c1
4037f132:	a8c2      	l32i.n	a10, a2, 48
4037f134:	90eb03        	rsr.prid	a9
4037f137:	909d04        	extui	a9, a9, 13, 1
4037f13a:	3146d6        	l32r	a3, 0x40374a54
4037f13d:	e09911        	slli	a9, a9, 2
4037f140:	9a93      	add.n	a9, a3, a9
4037f142:	c02000        	memw
4037f145:	6809      	l32i.n	a6, a9, 0
4037f147:	68c6      	l32i.n	a6, a6, 48
4037f149:	673a02        	bltu	a10, a6, 0x4037f14f
4037f14c:	062500        	j	0x4037f1e4
4037f14f:	5872      	l32i.n	a5, a2, 28
4037f151:	968501        	bltz	a5, 0x4037f16d
4037f154:	50eb03        	rsr.prid	a5
4037f157:	505d04        	extui	a5, a5, 13, 1
4037f15a:	e05511        	slli	a5, a5, 2
4037f15d:	5a53      	add.n	a5, a3, a5
4037f15f:	c02000        	memw
4037f162:	5805      	l32i.n	a5, a5, 0
4037f164:	68c5      	l32i.n	a6, a5, 48
4037f166:	1c95      	movi.n	a5, 25
4037f168:	6055c0        	sub	a5, a5, a6
4037f16b:	5972      	s32i.n	a5, a2, 28
4037f16d:	e08a11        	slli	a8, a10, 2
4037f170:	a08880        	add	a8, a8, a10
4037f173:	5186d7        	l32r	a5, 0x40374f8c
4037f176:	e08811        	slli	a8, a8, 2
4037f179:	622206        	l32i	a6, a2, 24
4037f17c:	508880        	add	a8, a8, a5
4037f17f:	879649        	bne	a6, a8, 0x4037f1cc
4037f182:	8b62      	addi.n	a6, a2, 8
4037f184:	ad06      	mov.n	a10, a6
4037f186:	257f00        	call8	0x4037f978
4037f189:	80eb03        	rsr.prid	a8
4037f18c:	808d04        	extui	a8, a8, 13, 1
4037f18f:	e08811        	slli	a8, a8, 2
4037f192:	8a33      	add.n	a3, a3, a8
4037f194:	c02000        	memw
4037f197:	3803      	l32i.n	a3, a3, 0
4037f199:	38c3      	l32i.n	a3, a3, 48
4037f19b:	39c2      	s32i.n	a3, a2, 48
4037f19d:	2182d7        	l32r	a2, 0x40374fa8
4037f1a0:	c02000        	memw
4037f1a3:	8802      	l32i.n	a8, a2, 0
4037f1a5:	37b804        	bgeu	a8, a3, 0x4037f1ad
4037f1a8:	c02000        	memw
4037f1ab:	3902      	s32i.n	a3, a2, 0
4037f1ad:	e0a311        	slli	a10, a3, 2
4037f1b0:	30aa80        	add	a10, a10, a3
4037f1b3:	e0aa11        	slli	a10, a10, 2
4037f1b6:	60b620        	or	a11, a6, a6
4037f1b9:	a0a580        	add	a10, a5, a10
4037f1bc:	257600        	call8	0x4037f920
4037f1bf:	0c15      	movi.n	a5, 1
4037f1c1:	ad04      	mov.n	a10, a4
4037f1c3:	a5a300        	call8	0x4037fbfc
4037f1c6:	2d05      	mov.n	a2, a5
4037f1c8:	1df0      	retw.n
4037f1ca:	00          	.byte	00
4037f1cb:	00          	.byte	00
4037f1cc:	50eb03        	rsr.prid	a5
4037f1cf:	505d04        	extui	a5, a5, 13, 1
4037f1d2:	e05511        	slli	a5, a5, 2
4037f1d5:	5a33      	add.n	a3, a3, a5
4037f1d7:	c02000        	memw
4037f1da:	3803      	l32i.n	a3, a3, 0
4037f1dc:	38c3      	l32i.n	a3, a3, 48
4037f1de:	39c2      	s32i.n	a3, a2, 48
4037f1e0:	c6f6ff        	j	0x4037f1bf
4037f1e3:	00          	.byte	00
4037f1e4:	80eb03        	rsr.prid	a8
4037f1e7:	808d04        	extui	a8, a8, 13, 1
4037f1ea:	e08811        	slli	a8, a8, 2
4037f1ed:	8a33      	add.n	a3, a3, a8
4037f1ef:	c02000        	memw
4037f1f2:	8803      	l32i.n	a8, a3, 0
4037f1f4:	622214        	l32i	a6, a2, 80
4037f1f7:	28c8      	l32i.n	a2, a8, 48
4037f1f9:	0c13      	movi.n	a3, 1
4037f1fb:	273601        	bltu	a6, a2, 0x4037f200
4037f1fe:	3d05      	mov.n	a3, a5
4037f200:	5d03      	mov.n	a5, a3
4037f202:	c6eeff        	j	0x4037f1c1
4037f205:	000000        	ill
4037f208:	364100        	entry	a1, 32
4037f20b:	4156d7        	l32r	a4, 0x40374f64
4037f20e:	b2afff        	movi	a11, -1
4037f211:	40a420        	or	a10, a4, a4
4037f214:	258a00        	call8	0x4037fab8
4037f217:	56b200        	bnez	a2, 0x4037f226
4037f21a:	22a000        	movi	a2, 0
4037f21d:	40a420        	or	a10, a4, a4
4037f220:	a59d00        	call8	0x4037fbfc
4037f223:	900000        	retw
4037f226:	30eb03        	rsr.prid	a3
4037f229:	303d04        	extui	a3, a3, 13, 1
4037f22c:	e08311        	slli	a8, a3, 2
4037f22f:	3109d6        	l32r	a3, 0x40374a54
4037f232:	8a33      	add.n	a3, a3, a8
4037f234:	c02000        	memw
4037f237:	322300        	l32i	a3, a3, 0
4037f23a:	27130e        	beq	a3, a2, 0x4037f24c
4037f23d:	d18cd7        	l32r	a13, 0x40375070
4037f240:	c18dd7        	l32r	a12, 0x40375074
4037f243:	b18dd7        	l32r	a11, 0x40375078
4037f246:	a142d7        	l32r	a10, 0x40374f50
4037f249:	657103        	call8	0x40382960
4037f24c:	822315        	l32i	a8, a3, 84
4037f24f:	ccb8      	bnez.n	a8, 0x4037f25e
4037f251:	d18ad7        	l32r	a13, 0x4037507c
4037f254:	c188d7        	l32r	a12, 0x40375074
4037f257:	b18ad7        	l32r	a11, 0x40375080
4037f25a:	06faff        	j	0x4037f246
4037f25d:	00          	.byte	00
4037f25e:	82c8ff        	addi	a8, a8, -1
4037f261:	92230c        	l32i	a9, a3, 48
4037f264:	222314        	l32i	a2, a3, 80
4037f267:	826315        	s32i	a8, a3, 84
4037f26a:	2719ac        	beq	a9, a2, 0x4037f21a
4037f26d:	5698fa        	bnez	a8, 0x4037f21a
4037f270:	22c308        	addi	a2, a3, 8
4037f273:	ad02      	mov.n	a10, a2
4037f275:	257000        	call8	0x4037f978
4037f278:	a22314        	l32i	a10, a3, 80
4037f27b:	1c98      	movi.n	a8, 25
4037f27d:	a088c0        	sub	a8, a8, a10
4037f280:	8973      	s32i.n	a8, a3, 28
4037f282:	a9c3      	s32i.n	a10, a3, 48
4037f284:	3149d7        	l32r	a3, 0x40374fa8
4037f287:	c02000        	memw
4037f28a:	8803      	l32i.n	a8, a3, 0
4037f28c:	a7b804        	bgeu	a8, a10, 0x4037f294
4037f28f:	c02000        	memw
4037f292:	a903      	s32i.n	a10, a3, 0
4037f294:	e03a11        	slli	a3, a10, 2
4037f297:	20b220        	or	a11, a2, a2
4037f29a:	a0a380        	add	a10, a3, a10
4037f29d:	213bd7        	l32r	a2, 0x40374f8c
4037f2a0:	e0aa11        	slli	a10, a10, 2
4037f2a3:	a0a280        	add	a10, a2, a10
4037f2a6:	a56700        	call8	0x4037f920
4037f2a9:	0c12      	movi.n	a2, 1
4037f2ab:	86dbff        	j	0x4037f21d
4037f2ae:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037f2b1:	410041        	l32r	a4, 0x4034f6b4
4037f2b4:	2cd7      	movi.n	a7, 45
4037f2b6:	b2afff        	movi	a11, -1
4037f2b9:	40a420        	or	a10, a4, a4
4037f2bc:	a57f00        	call8	0x4037fab8
4037f2bf:	16f208        	beqz	a2, 0x4037f352
4037f2c2:	522215        	l32i	a5, a2, 84
4037f2c5:	ccd5      	bnez.n	a5, 0x4037f2d6
4037f2c7:	d16dd7        	l32r	a13, 0x4037507c
4037f2ca:	c16ed7        	l32r	a12, 0x40375084
4037f2cd:	b16ed7        	l32r	a11, 0x40375088
4037f2d0:	a120d7        	l32r	a10, 0x40374f50
4037f2d3:	e56803        	call8	0x40382960
4037f2d6:	822214        	l32i	a8, a2, 80
4037f2d9:	98c2      	l32i.n	a9, a2, 48
4037f2db:	803373        	maxu	a3, a3, a8
4037f2de:	661570        	bnei	a5, 1, 0x4037f352
4037f2e1:	37196d        	beq	a9, a3, 0x4037f352
4037f2e4:	80eb03        	rsr.prid	a8
4037f2e7:	808d04        	extui	a8, a8, 13, 1
4037f2ea:	e0a811        	slli	a10, a8, 2
4037f2ed:	81d9d5        	l32r	a8, 0x40374a54
4037f2f0:	aa88      	add.n	a8, a8, a10
4037f2f2:	c02000        	memw
4037f2f5:	5808      	l32i.n	a5, a8, 0
4037f2f7:	27950b        	bne	a5, a2, 0x4037f306
4037f2fa:	d164d7        	l32r	a13, 0x4037508c
4037f2fd:	c161d7        	l32r	a12, 0x40375084
4037f300:	b164d7        	l32r	a11, 0x40375090
4037f303:	46f2ff        	j	0x4037f2d0
4037f306:	5872      	l32i.n	a5, a2, 28
4037f308:	39c2      	s32i.n	a3, a2, 48
4037f30a:	966500        	bltz	a5, 0x4037f314
4037f30d:	1c98      	movi.n	a8, 25
4037f30f:	3038c0        	sub	a3, a8, a3
4037f312:	3972      	s32i.n	a3, a2, 28
4037f314:	e08911        	slli	a8, a9, 2
4037f317:	9a88      	add.n	a8, a8, a9
4037f319:	311cd7        	l32r	a3, 0x40374f8c
4037f31c:	e08811        	slli	a8, a8, 2
4037f31f:	5862      	l32i.n	a5, a2, 24
4037f321:	3a88      	add.n	a8, a8, a3
4037f323:	87952b        	bne	a5, a8, 0x4037f352
4037f326:	8b52      	addi.n	a5, a2, 8
4037f328:	ad05      	mov.n	a10, a5
4037f32a:	e56400        	call8	0x4037f978
4037f32d:	811ed7        	l32r	a8, 0x40374fa8
4037f330:	28c2      	l32i.n	a2, a2, 48
4037f332:	c02000        	memw
4037f335:	9808      	l32i.n	a9, a8, 0
4037f337:	27b905        	bgeu	a9, a2, 0x4037f340
4037f33a:	c02000        	memw
4037f33d:	226800        	s32i	a2, a8, 0
4037f340:	e0a211        	slli	a10, a2, 2
4037f343:	20aa80        	add	a10, a10, a2
4037f346:	e0aa11        	slli	a10, a10, 2
4037f349:	50b520        	or	a11, a5, a5
4037f34c:	a0a380        	add	a10, a3, a10
4037f34f:	255d00        	call8	0x4037f920
4037f352:	ad04      	mov.n	a10, a4
4037f354:	658a00        	call8	0x4037fbfc
4037f357:	1df0      	retw.n
4037f359:	000000        	ill
4037f35c:	364100        	entry	a1, 32
4037f35f:	3101d7        	l32r	a3, 0x40374f64
4037f362:	b2afff        	movi	a11, -1
4037f365:	30a320        	or	a10, a3, a3
4037f368:	e57400        	call8	0x4037fab8
4037f36b:	90eb03        	rsr.prid	a9
4037f36e:	909d04        	extui	a9, a9, 13, 1
4037f371:	81b8d5        	l32r	a8, 0x40374a54
4037f374:	e09911        	slli	a9, a9, 2
4037f377:	9a98      	add.n	a9, a8, a9
4037f379:	c02000        	memw
4037f37c:	2809      	l32i.n	a2, a9, 0
4037f37e:	9c62      	beqz.n	a2, 0x4037f398
4037f380:	90eb03        	rsr.prid	a9
4037f383:	909d04        	extui	a9, a9, 13, 1
4037f386:	e09911        	slli	a9, a9, 2
4037f389:	9a98      	add.n	a9, a8, a9
4037f38b:	c02000        	memw
4037f38e:	a809      	l32i.n	a10, a9, 0
4037f390:	922a15        	l32i	a9, a10, 84
4037f393:	1b99      	addi.n	a9, a9, 1
4037f395:	926a15        	s32i	a9, a10, 84
4037f398:	90eb03        	rsr.prid	a9
4037f39b:	909d04        	extui	a9, a9, 13, 1
4037f39e:	e09911        	slli	a9, a9, 2
4037f3a1:	9a88      	add.n	a8, a8, a9
4037f3a3:	ad03      	mov.n	a10, a3
4037f3a5:	c02000        	memw
4037f3a8:	2808      	l32i.n	a2, a8, 0
4037f3aa:	258500        	call8	0x4037fbfc
4037f3ad:	1df0      	retw.n
4037f3af:	003641        	srli	a3, a0, 6
4037f3b2:	0016e2        	remu	a1, a6, a0
4037f3b5:	00d137        	ee.stf.64.xp	f13, f3, a0, a1
4037f3b8:	d7c137        	bnall	a1, a13, 0x4037f3f3
4037f3bb:	d7b138        	bgeu	a1, a13, 0x4037f3f7
4037f3be:	d7a1e4        	bge	a1, a13, 0x4037f3a6
4037f3c1:	d6e559        	bgez	a5, 0x4037f963
4037f3c4:	03          	.byte	0x3
4037f3c5:	61e7d6        	l32r	a6, 0x40374f64
4037f3c8:	7cfb      	movi.n	a11, -1
4037f3ca:	ad06      	mov.n	a10, a6
4037f3cc:	a56e00        	call8	0x4037fab8
4037f3cf:	80eb03        	rsr.prid	a8
4037f3d2:	808d04        	extui	a8, a8, 13, 1
4037f3d5:	519fd5        	l32r	a5, 0x40374a54
4037f3d8:	e08811        	slli	a8, a8, 2
4037f3db:	8a85      	add.n	a8, a5, a8
4037f3dd:	c02000        	memw
4037f3e0:	2808      	l32i.n	a2, a8, 0
4037f3e2:	c02000        	memw
4037f3e5:	222254        	l32i	a2, a2, 0x150
4037f3e8:	fc02      	bnez.n	a2, 0x4037f41c
4037f3ea:	80eb03        	rsr.prid	a8
4037f3ed:	808d04        	extui	a8, a8, 13, 1
4037f3f0:	e08811        	slli	a8, a8, 2
4037f3f3:	8a85      	add.n	a8, a5, a8
4037f3f5:	c02000        	memw
4037f3f8:	2808      	l32i.n	a2, a8, 0
4037f3fa:	0c18      	movi.n	a8, 1
4037f3fc:	22d201        	addmi	a2, a2, 0x100
4037f3ff:	c02000        	memw
4037f402:	824254        	s8i	a8, a2, 84
4037f405:	9c34      	beqz.n	a4, 0x4037f41c
4037f407:	a0eb03        	rsr.prid	a10
4037f40a:	a0ad04        	extui	a10, a10, 13, 1
4037f40d:	40b420        	or	a11, a4, a4
4037f410:	a5c7fe        	call8	0x4037e08c
4037f413:	a0eb03        	rsr.prid	a10
4037f416:	a0ad04        	extui	a10, a10, 13, 1
4037f419:	a5bdf8        	call8	0x40377ff4
4037f41c:	ad06      	mov.n	a10, a6
4037f41e:	e57d00        	call8	0x4037fbfc
4037f421:	7cfb      	movi.n	a11, -1
4037f423:	ad06      	mov.n	a10, a6
4037f425:	256900        	call8	0x4037fab8
4037f428:	80eb03        	rsr.prid	a8
4037f42b:	808d04        	extui	a8, a8, 13, 1
4037f42e:	e08811        	slli	a8, a8, 2
4037f431:	8a85      	add.n	a8, a5, a8
4037f433:	c02000        	memw
4037f436:	2808      	l32i.n	a2, a8, 0
4037f438:	c02000        	memw
4037f43b:	222254        	l32i	a2, a2, 0x150
4037f43e:	9c92      	beqz.n	a2, 0x4037f45b
4037f440:	16c303        	beqz	a3, 0x4037f480
4037f443:	80eb03        	rsr.prid	a8
4037f446:	808d04        	extui	a8, a8, 13, 1
4037f449:	e08811        	slli	a8, a8, 2
4037f44c:	8a85      	add.n	a8, a5, a8
4037f44e:	c02000        	memw
4037f451:	3808      	l32i.n	a3, a8, 0
4037f453:	0c04      	movi.n	a4, 0
4037f455:	c02000        	memw
4037f458:	426354        	s32i	a4, a3, 0x150
4037f45b:	30eb03        	rsr.prid	a3
4037f45e:	303d04        	extui	a3, a3, 13, 1
4037f461:	e03311        	slli	a3, a3, 2
4037f464:	3a55      	add.n	a5, a5, a3
4037f466:	c02000        	memw
4037f469:	3805      	l32i.n	a3, a5, 0
4037f46b:	0c04      	movi.n	a4, 0
4037f46d:	32d301        	addmi	a3, a3, 0x100
4037f470:	c02000        	memw
4037f473:	424354        	s8i	a4, a3, 84
4037f476:	60a620        	or	a10, a6, a6
4037f479:	257800        	call8	0x4037fbfc
4037f47c:	1df0      	retw.n
4037f47e:	000080        	add	a0, a0, a0
4037f481:	eb03      	addi.n	a0, a3, 14
4037f483:	808d04        	extui	a8, a8, 13, 1
4037f486:	e08811        	slli	a8, a8, 2
4037f489:	8a85      	add.n	a8, a5, a8
4037f48b:	c02000        	memw
4037f48e:	3808      	l32i.n	a3, a8, 0
4037f490:	0b42      	addi.n	a4, a2, -1
4037f492:	c6efff        	j	0x4037f455
4037f495:	000000        	ill
4037f498:	364100        	entry	a1, 32
4037f49b:	56e200        	bnez	a2, 0x4037f4ad
4037f49e:	d100d7        	l32r	a13, 0x403750a0
4037f4a1:	c100d7        	l32r	a12, 0x403750a4
4037f4a4:	b101d7        	l32r	a11, 0x403750a8
4037f4a7:	a1aad6        	l32r	a10, 0x40374f50
4037f4aa:	654b03        	call8	0x40382960
4037f4ad:	8cb3      	beqz.n	a3, 0x4037f4bc
4037f4af:	d1ffd6        	l32r	a13, 0x403750ac
4037f4b2:	c1fcd6        	l32r	a12, 0x403750a4
4037f4b5:	b1fed6        	l32r	a11, 0x403750b0
4037f4b8:	c6faff        	j	0x4037f4a7
4037f4bb:	0031aa        	floor.s	a3, f1, 0
4037f4be:	d6b2af        	bgez	a2, 0x4037efbd
4037f4c1:	ff30a320 	ee.vmulas.s8.accx.ld.ip.qup	q0, a15, 0, q4, q7, q2, q3
4037f4c5:	255f00        	call8	0x4037fab8
4037f4c8:	52d201        	addmi	a5, a2, 0x100
4037f4cb:	92a002        	movi	a9, 2
4037f4ce:	c02000        	memw
4037f4d1:	820554        	l8ui	a8, a5, 84
4037f4d4:	c02000        	memw
4037f4d7:	924554        	s8i	a9, a5, 84
4037f4da:	c02000        	memw
4037f4dd:	922254        	l32i	a9, a2, 0x150
4037f4e0:	808074        	extui	a8, a8, 0, 8
4037f4e3:	1b99      	addi.n	a9, a9, 1
4037f4e5:	c02000        	memw
4037f4e8:	926254        	s32i	a9, a2, 0x150
4037f4eb:	261802        	beqi	a8, 1, 0x4037f4f1
4037f4ee:	c62500        	j	0x4037f589
4037f4f1:	58b2      	l32i.n	a5, a2, 44
4037f4f3:	8ca5      	beqz.n	a5, 0x4037f501
4037f4f5:	d1efd6        	l32r	a13, 0x403750b4
4037f4f8:	c1ebd6        	l32r	a12, 0x403750a4
4037f4fb:	b1efd6        	l32r	a11, 0x403750b8
4037f4fe:	46e9ff        	j	0x4037f4a7
4037f501:	80eb03        	rsr.prid	a8
4037f504:	808d04        	extui	a8, a8, 13, 1
4037f507:	e09811        	slli	a9, a8, 2
4037f50a:	81add6        	l32r	a8, 0x40374fc0
4037f50d:	9a88      	add.n	a8, a8, a9
4037f50f:	c02000        	memw
4037f512:	5808      	l32i.n	a5, a8, 0
4037f514:	568507        	bnez	a5, 0x4037f590
4037f517:	8b52      	addi.n	a5, a2, 8
4037f519:	ad05      	mov.n	a10, a5
4037f51b:	e54500        	call8	0x4037f978
4037f51e:	81a2d6        	l32r	a8, 0x40374fa8
4037f521:	a8c2      	l32i.n	a10, a2, 48
4037f523:	c02000        	memw
4037f526:	9808      	l32i.n	a9, a8, 0
4037f528:	a7b904        	bgeu	a9, a10, 0x4037f530
4037f52b:	c02000        	memw
4037f52e:	a908      	s32i.n	a10, a8, 0
4037f530:	e08a11        	slli	a8, a10, 2
4037f533:	a08880        	add	a8, a8, a10
4037f536:	a195d6        	l32r	a10, 0x40374f8c
4037f539:	e08811        	slli	a8, a8, 2
4037f53c:	50b520        	or	a11, a5, a5
4037f53f:	80aa80        	add	a10, a10, a8
4037f542:	e53d00        	call8	0x4037f920
4037f545:	a22212        	l32i	a10, a2, 72
4037f548:	90eb03        	rsr.prid	a9
4037f54b:	909d04        	extui	a9, a9, 13, 1
4037f54e:	8187d6        	l32r	a8, 0x40374f6c
4037f551:	0c1b      	movi.n	a11, 1
4037f553:	8a8a      	add.n	a8, a10, a8
4037f555:	0c05      	movi.n	a5, 0
4037f557:	805b83        	moveqz	a5, a11, a8
4037f55a:	508074        	extui	a8, a5, 0, 8
4037f55d:	568800        	bnez	a8, 0x4037f569
4037f560:	a099c0        	sub	a9, a9, a10
4037f563:	908b83        	moveqz	a8, a11, a9
4037f566:	16e803        	beqz	a8, 0x4037f5a8
4037f569:	80eb03        	rsr.prid	a8
4037f56c:	808d04        	extui	a8, a8, 13, 1
4037f56f:	e09811        	slli	a9, a8, 2
4037f572:	8138d5        	l32r	a8, 0x40374a54
4037f575:	58c2      	l32i.n	a5, a2, 48
4037f577:	9a88      	add.n	a8, a8, a9
4037f579:	c02000        	memw
4037f57c:	8808      	l32i.n	a8, a8, 0
4037f57e:	88c8      	l32i.n	a8, a8, 48
4037f580:	57b824        	bgeu	a8, a5, 0x4037f5a8
4037f583:	8c24      	beqz.n	a4, 0x4037f589
4037f585:	0c12      	movi.n	a2, 1
4037f587:	2904      	s32i.n	a2, a4, 0
4037f589:	ad03      	mov.n	a10, a3
4037f58b:	256700        	call8	0x4037fbfc
4037f58e:	1df0      	retw.n
4037f590:	a0eb03        	rsr.prid	a10
4037f593:	a0ad04        	extui	a10, a10, 13, 1
4037f596:	e08a11        	slli	a8, a10, 2
4037f599:	aa88      	add.n	a8, a8, a10
4037f59b:	e08811        	slli	a8, a8, 2
4037f59e:	b2c21c        	addi	a11, a2, 28
4037f5a1:	a17dd6        	l32r	a10, 0x40374f98
4037f5a4:	c6e5ff        	j	0x4037f53f
4037f5a7:	00          	.byte	00
4037f5a8:	40eb03        	rsr.prid	a4
4037f5ab:	404d04        	extui	a4, a4, 13, 1
4037f5ae:	471ad7        	beq	a10, a4, 0x4037f589
4037f5b1:	b8c2      	l32i.n	a11, a2, 48
4037f5b3:	25b7fe        	call8	0x4037e124
4037f5b6:	c6f3ff        	j	0x4037f589
4037f5b9:	000000        	ill
4037f5bc:	364100        	entry	a1, 32
4037f5bf:	e08211        	slli	a8, a2, 2
4037f5c2:	2a28      	add.n	a2, a8, a2
4037f5c4:	8172d6        	l32r	a8, 0x40374f8c
4037f5c7:	e02211        	slli	a2, a2, 2
4037f5ca:	2a28      	add.n	a2, a8, a2
4037f5cc:	1df0      	retw.n
4037f5ce:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037f5d1:	4100e0        	l32r	a4, 0x403775d4 (0xf421d10e)
4037f5d4:	82112a        	l16ui	a8, a1, 84
4037f5d7:	2881      	l32i.n	a2, a1, 32
4037f5d9:	70d6e0        	subx4	a13, a6, a7
4037f5dc:	22112a        	l16ui	a2, a1, 84
4037f5df:	281d      	l32i.n	a2, a13, 4
4037f5e1:	f00000        	callx12	a0
4037f5e4:	364100        	entry	a1, 32
4037f5e7:	2155d6        	l32r	a2, 0x40374f3c
4037f5ea:	c02000        	memw
4037f5ed:	2802      	l32i.n	a2, a2, 0
4037f5ef:	1df0      	retw.n
4037f5f1:	000000        	ill
4037f5f4:	364100        	entry	a1, 32
4037f5f7:	2164d6        	l32r	a2, 0x40374f88
4037f5fa:	c02000        	memw
4037f5fd:	2802      	l32i.n	a2, a2, 0
4037f5ff:	1df0      	retw.n
4037f601:	000000        	ill
4037f604:	364100        	entry	a1, 32
4037f607:	2158d6        	l32r	a2, 0x40374f68
4037f60a:	1df0      	retw.n
4037f60c:	364100        	entry	a1, 32
4037f60f:	215dd6        	l32r	a2, 0x40374f84
4037f612:	1df0      	retw.n
4037f614:	364100        	entry	a1, 32
4037f617:	42a018        	movi	a4, 24
4037f61a:	37b40d        	bgeu	a4, a3, 0x4037f62b
4037f61d:	d186d6        	l32r	a13, 0x40375038
4037f620:	c1a7d6        	l32r	a12, 0x403750bc
4037f623:	a1a7d6        	l32r	a10, 0x403750c0
4037f626:	5cbb      	movi.n	a11, 91
4037f628:	653303        	call8	0x40382960
4037f62b:	514ed6        	l32r	a5, 0x40374f64
4037f62e:	b2afff        	movi	a11, -1
4037f631:	50a520        	or	a10, a5, a5
4037f634:	254800        	call8	0x4037fab8
4037f637:	6544ff        	call8	0x4037ea7c
4037f63a:	98ca      	l32i.n	a9, a10, 48
4037f63c:	822a14        	l32i	a8, a10, 80
4037f63f:	9902      	s32i.n	a9, a2, 0
4037f641:	8912      	s32i.n	a8, a2, 4
4037f643:	4d0a      	mov.n	a4, a10
4037f645:	37b851        	bgeu	a8, a3, 0x4037f69a
4037f648:	326a14        	s32i	a3, a10, 80
4037f64b:	37b94b        	bgeu	a9, a3, 0x4037f69a
4037f64e:	287a      	l32i.n	a2, a10, 28
4037f650:	39ca      	s32i.n	a3, a10, 48
4037f652:	966200        	bltz	a2, 0x4037f65c
4037f655:	1c98      	movi.n	a8, 25
4037f657:	3038c0        	sub	a3, a8, a3
4037f65a:	397a      	s32i.n	a3, a10, 28
4037f65c:	e08911        	slli	a8, a9, 2
4037f65f:	9a88      	add.n	a8, a8, a9
4037f661:	314ad6        	l32r	a3, 0x40374f8c
4037f664:	e08811        	slli	a8, a8, 2
4037f667:	2864      	l32i.n	a2, a4, 24
4037f669:	3a88      	add.n	a8, a8, a3
4037f66b:	87922b        	bne	a2, a8, 0x4037f69a
4037f66e:	8b24      	addi.n	a2, a4, 8
4037f670:	ad02      	mov.n	a10, a2
4037f672:	653000        	call8	0x4037f978
4037f675:	814cd6        	l32r	a8, 0x40374fa8
4037f678:	48c4      	l32i.n	a4, a4, 48
4037f67a:	c02000        	memw
4037f67d:	9808      	l32i.n	a9, a8, 0
4037f67f:	47b905        	bgeu	a9, a4, 0x4037f688
4037f682:	c02000        	memw
4037f685:	426800        	s32i	a4, a8, 0
4037f688:	e0a411        	slli	a10, a4, 2
4037f68b:	40aa80        	add	a10, a10, a4
4037f68e:	e0aa11        	slli	a10, a10, 2
4037f691:	20b220        	or	a11, a2, a2
4037f694:	a0a380        	add	a10, a3, a10
4037f697:	a52800        	call8	0x4037f920
4037f69a:	ad05      	mov.n	a10, a5
4037f69c:	e55500        	call8	0x4037fbfc
4037f69f:	1df0      	retw.n
4037f6a1:	000000        	ill
4037f6a4:	364100        	entry	a1, 32
4037f6a7:	412fd6        	l32r	a4, 0x40374f64
4037f6aa:	7cfb      	movi.n	a11, -1
4037f6ac:	ad04      	mov.n	a10, a4
4037f6ae:	a54000        	call8	0x4037fab8
4037f6b1:	a53cff        	call8	0x4037ea7c
4037f6b4:	722a14        	l32i	a7, a10, 80
4037f6b7:	5812      	l32i.n	a5, a2, 4
4037f6b9:	3d0a      	mov.n	a3, a10
4037f6bb:	771566        	beq	a5, a7, 0x4037f725
4037f6be:	68ca      	l32i.n	a6, a10, 48
4037f6c0:	526a14        	s32i	a5, a10, 80
4037f6c3:	67975e        	bne	a7, a6, 0x4037f725
4037f6c6:	722a15        	l32i	a7, a10, 84
4037f6c9:	161700        	beqz	a7, 0x4037f6ce
4037f6cc:	5802      	l32i.n	a5, a2, 0
4037f6ce:	2873      	l32i.n	a2, a3, 28
4037f6d0:	59c3      	s32i.n	a5, a3, 48
4037f6d2:	967200        	bltz	a2, 0x4037f6dd
4037f6d5:	1c92      	movi.n	a2, 25
4037f6d7:	5022c0        	sub	a2, a2, a5
4037f6da:	226307        	s32i	a2, a3, 28
4037f6dd:	e08611        	slli	a8, a6, 2
4037f6e0:	6a88      	add.n	a8, a8, a6
4037f6e2:	212ad6        	l32r	a2, 0x40374f8c
4037f6e5:	e08811        	slli	a8, a8, 2
4037f6e8:	7863      	l32i.n	a7, a3, 24
4037f6ea:	2a88      	add.n	a8, a8, a2
4037f6ec:	879729        	bne	a7, a8, 0x4037f719
4037f6ef:	8b73      	addi.n	a7, a3, 8
4037f6f1:	ad07      	mov.n	a10, a7
4037f6f3:	652800        	call8	0x4037f978
4037f6f6:	812cd6        	l32r	a8, 0x40374fa8
4037f6f9:	38c3      	l32i.n	a3, a3, 48
4037f6fb:	c02000        	memw
4037f6fe:	9808      	l32i.n	a9, a8, 0
4037f700:	37b904        	bgeu	a9, a3, 0x4037f708
4037f703:	c02000        	memw
4037f706:	3908      	s32i.n	a3, a8, 0
4037f708:	e0a311        	slli	a10, a3, 2
4037f70b:	3aaa      	add.n	a10, a10, a3
4037f70d:	e0aa11        	slli	a10, a10, 2
4037f710:	70b720        	or	a11, a7, a7
4037f713:	a0a280        	add	a10, a2, a10
4037f716:	a52000        	call8	0x4037f920
4037f719:	67b508        	bgeu	a5, a6, 0x4037f725
4037f71c:	a0eb03        	rsr.prid	a10
4037f71f:	a0ad04        	extui	a10, a10, 13, 1
4037f722:	258df8        	call8	0x40377ff4
4037f725:	ad04      	mov.n	a10, a4
4037f727:	654d00        	call8	0x4037fbfc
4037f72a:	1df0      	retw.n
4037f72c:	368100        	entry	a1, 64
4037f72f:	4128d6        	l32r	a4, 0x40374fd0
4037f732:	0c03      	movi.n	a3, 0
4037f734:	0c02      	movi.n	a2, 0
4037f736:	c2c11c        	addi	a12, a1, 28
4037f739:	b2c118        	addi	a11, a1, 24
4037f73c:	a2c114        	addi	a10, a1, 20
4037f73f:	2951      	s32i.n	a2, a1, 20
4037f741:	226106        	s32i	a2, a1, 24
4037f744:	256a00        	call8	0x4037fde8
4037f747:	8851      	l32i.n	a8, a1, 20
4037f749:	f861      	l32i.n	a15, a1, 24
4037f74b:	c871      	l32i.n	a12, a1, 28
4037f74d:	b15dd6        	l32r	a11, 0x403750c4
4037f750:	a15ed6        	l32r	a10, 0x403750c8
4037f753:	3911      	s32i.n	a3, a1, 4
4037f755:	8901      	s32i.n	a8, a1, 0
4037f757:	ed02      	mov.n	a14, a2
4037f759:	dd02      	mov.n	a13, a2
4037f75b:	e5b8fe        	call8	0x4037e2e8
4037f75e:	a904      	s32i.n	a10, a4, 0
4037f760:	4b44      	addi.n	a4, a4, 4
4037f762:	66132a        	bnei	a3, 1, 0x4037f790
4037f765:	271a25        	beq	a10, a2, 0x4037f78e
4037f768:	252500        	call8	0x4037f9bc
4037f76b:	661a26        	bnei	a10, 1, 0x4037f795
4037f76e:	406300        	rsil	a4, 3
4037f771:	41f3d5        	l32r	a4, 0x40374f40
4037f774:	7cf8      	movi.n	a8, -1
4037f776:	c02000        	memw
4037f779:	8904      	s32i.n	a8, a4, 0
4037f77b:	4109d6        	l32r	a4, 0x40374fa0
4037f77e:	c02000        	memw
4037f781:	3904      	s32i.n	a3, a4, 0
4037f783:	31ffd5        	l32r	a3, 0x40374f80
4037f786:	c02000        	memw
4037f789:	2903      	s32i.n	a2, a3, 0
4037f78b:	a52300        	call8	0x4037f9c4
4037f78e:	1df0      	retw.n
4037f790:	0c13      	movi.n	a3, 1
4037f792:	86e7ff        	j	0x4037f734
4037f795:	660af5        	bnei	a10, -1, 0x4037f78e
4037f798:	d14dd6        	l32r	a13, 0x403750cc
4037f79b:	c14dd6        	l32r	a12, 0x403750d0
4037f79e:	b14dd6        	l32r	a11, 0x403750d4
4037f7a1:	a1ebd5        	l32r	a10, 0x40374f50
4037f7a4:	a51b03        	call8	0x40382960
4037f7a7:	003641        	srli	a3, a0, 6
4037f7aa:	0020a2        	muluh	a2, a0, a0
4037f7ad:	20          	.byte	0x20
4037f7ae:	255c00        	call8	0x4037fd70
4037f7b1:	42a001        	movi	a4, 1
4037f7b4:	9ca3      	beqz.n	a3, 0x4037f7d2
4037f7b6:	40aa30        	xor	a10, a10, a4
4037f7b9:	a0a074        	extui	a10, a10, 0, 8
4037f7bc:	dc2a      	bnez.n	a10, 0x4037f7d2
4037f7be:	2903      	s32i.n	a2, a3, 0
4037f7c0:	ad02      	mov.n	a10, a2
4037f7c2:	a51e00        	call8	0x4037f9ac
4037f7c5:	a913      	s32i.n	a10, a3, 4
4037f7c7:	ad02      	mov.n	a10, a2
4037f7c9:	a51e00        	call8	0x4037f9b4
4037f7cc:	a923      	s32i.n	a10, a3, 8
4037f7ce:	2d04      	mov.n	a2, a4
4037f7d0:	1df0      	retw.n
4037f7d2:	0c02      	movi.n	a2, 0
4037f7d4:	06feff        	j	0x4037f7d0
4037f7d7:	003681        	src	a3, a6, a0
4037f7da:	00a5e0        	subx4	a10, a5, a0
4037f7dd:	ffa94125 	ee.vmulas.s8.accx.ld.ip.qup	q2, a15, 0x190, q6, q4, q4, q1
4037f7e1:	e1ffa9        	l32r	a14, 0x40369fe0
4037f7e4:	51e5e1        	l32r	a5, 0x40377f78 (0x2490020)
4037f7e7:	ffa96125 	ee.vmulas.s8.accx.ld.ip.qup	q2, a15, 0x190, q6, q4, q6, q1
4037f7eb:	e2ffa9        	s32ri	a14, a15, 0x2a4
4037f7ee:	714d02        	l32r	a7, 0x40340124
4037f7f1:	16b207        	beqz	a2, 0x4037f870
4037f7f4:	ad02      	mov.n	a10, a2
4037f7f6:	a55700        	call8	0x4037fd70
4037f7f9:	567a05        	bnez	a10, 0x4037f854
4037f7fc:	0c02      	movi.n	a2, 0
4037f7fe:	060300        	j	0x4037f80e
4037f801:	2833      	l32i.n	a2, a3, 12
4037f803:	162206        	beqz	a2, 0x4037f869
4037f806:	ad02      	mov.n	a10, a2
4037f808:	655600        	call8	0x4037fd70
4037f80b:	16dafe        	beqz	a10, 0x4037f7fc
4037f80e:	1df0      	retw.n
4037f810:	283a      	l32i.n	a2, a10, 12
4037f812:	8baa      	addi.n	a10, a10, 8
4037f814:	a79202        	bne	a2, a10, 0x4037f81a
4037f817:	862000        	j	0x4037f89d
4037f81a:	2832      	l32i.n	a2, a2, 12
4037f81c:	16d207        	beqz	a2, 0x4037f89d
4037f81f:	c6f8ff        	j	0x4037f806
4037f822:	000040        	ssr	a0
4037f825:	aac0      	add.n	a12, a0, a10
4037f827:	3d06      	mov.n	a3, a6
4037f829:	a03283        	moveqz	a3, a2, a10
4037f82c:	462200        	j	0x4037f8b9
4037f82f:	00          	.byte	00
4037f830:	283a      	l32i.n	a2, a10, 12
4037f832:	8baa      	addi.n	a10, a10, 8
4037f834:	a79202        	bne	a2, a10, 0x4037f83a
4037f837:	862500        	j	0x4037f8d1
4037f83a:	2832      	l32i.n	a2, a2, 12
4037f83c:	161209        	beqz	a2, 0x4037f8d1
4037f83f:	c6f0ff        	j	0x4037f806
4037f842:	283a      	l32i.n	a2, a10, 12
4037f844:	8baa      	addi.n	a10, a10, 8
4037f846:	a79202        	bne	a2, a10, 0x4037f84c
4037f849:	c62800        	j	0x4037f8f0
4037f84c:	2832      	l32i.n	a2, a2, 12
4037f84e:	16e209        	beqz	a2, 0x4037f8f0
4037f851:	46ecff        	j	0x4037f806
4037f854:	20a220        	or	a10, a2, a2
4037f857:	e51400        	call8	0x4037f9a4
4037f85a:	284a      	l32i.n	a2, a10, 16
4037f85c:	ad04      	mov.n	a10, a4
4037f85e:	651400        	call8	0x4037f9a4
4037f861:	381a      	l32i.n	a3, a10, 4
4037f863:	22c208        	addi	a2, a2, 8
4037f866:	279397        	bne	a3, a2, 0x4037f801
4037f869:	ad04      	mov.n	a10, a4
4037f86b:	a51300        	call8	0x4037f9a4
4037f86e:	484a      	l32i.n	a4, a10, 16
4037f870:	0c03      	movi.n	a3, 0
4037f872:	0c17      	movi.n	a7, 1
4037f874:	5d03      	mov.n	a5, a3
4037f876:	405793        	movnez	a5, a7, a4
4037f879:	1c96      	movi.n	a6, 25
4037f87b:	308320        	or	a8, a3, a3
4037f87e:	505074        	extui	a5, a5, 0, 8
4037f881:	0b66      	addi.n	a6, a6, -1
4037f883:	ad06      	mov.n	a10, a6
4037f885:	8931      	s32i.n	a8, a1, 12
4037f887:	65d3ff        	call8	0x4037f5bc
4037f88a:	8831      	l32i.n	a8, a1, 12
4037f88c:	779302        	bne	a3, a7, 0x4037f892
4037f88f:	46dfff        	j	0x4037f810
4037f892:	16a5f7        	beqz	a5, 0x4037f810
4037f895:	40aac0        	sub	a10, a10, a4
4037f898:	3d08      	mov.n	a3, a8
4037f89a:	a03783        	moveqz	a3, a7, a10
4037f89d:	5606fe        	bnez	a6, 0x4037f881
4037f8a0:	ad06      	mov.n	a10, a6
4037f8a2:	0c12      	movi.n	a2, 1
4037f8a4:	a5d2ff        	call8	0x4037f5d0
4037f8a7:	271302        	beq	a3, a2, 0x4037f8ad
4037f8aa:	5665f7        	bnez	a5, 0x4037f824
4037f8ad:	283a      	l32i.n	a2, a10, 12
4037f8af:	8baa      	addi.n	a10, a10, 8
4037f8b1:	a71204        	beq	a2, a10, 0x4037f8b9
4037f8b4:	2832      	l32i.n	a2, a2, 12
4037f8b6:	56c2f4        	bnez	a2, 0x4037f806
4037f8b9:	0c1a      	movi.n	a10, 1
4037f8bb:	0c12      	movi.n	a2, 1
4037f8bd:	25d1ff        	call8	0x4037f5d0
4037f8c0:	279302        	bne	a3, a2, 0x4037f8c6
4037f8c3:	46daff        	j	0x4037f830
4037f8c6:	1665f6        	beqz	a5, 0x4037f830
4037f8c9:	40aac0        	sub	a10, a10, a4
4037f8cc:	0c03      	movi.n	a3, 0
4037f8ce:	a03283        	moveqz	a3, a2, a10
4037f8d1:	82c110        	addi	a8, a1, 16
4037f8d4:	0c17      	movi.n	a7, 1
4037f8d6:	0c09      	movi.n	a9, 0
4037f8d8:	0c46      	movi.n	a6, 4
4037f8da:	a808      	l32i.n	a10, a8, 0
4037f8dc:	779302        	bne	a3, a7, 0x4037f8e2
4037f8df:	c6d7ff        	j	0x4037f842
4037f8e2:	16c5f5        	beqz	a5, 0x4037f842
4037f8e5:	403ac0        	sub	a3, a10, a4
4037f8e8:	2d09      	mov.n	a2, a9
4037f8ea:	302783        	moveqz	a2, a7, a3
4037f8ed:	203220        	or	a3, a2, a2
4037f8f0:	4b88      	addi.n	a8, a8, 4
4037f8f2:	0b66      	addi.n	a6, a6, -1
4037f8f4:	5626fe        	bnez	a6, 0x4037f8da
4037f8f7:	46c0ff        	j	0x4037f7fc
4037f8fa:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037f8fd:	41008b        	l32r	a4, 0x40362500
4037f900:	82          	.byte	0x82
4037f901:	8912      	s32i.n	a8, a2, 4
4037f903:	7cf9      	movi.n	a9, -1
4037f905:	8932      	s32i.n	a8, a2, 12
4037f907:	8942      	s32i.n	a8, a2, 16
4037f909:	0c08      	movi.n	a8, 0
4037f90b:	9922      	s32i.n	a9, a2, 8
4037f90d:	c02000        	memw
4037f910:	8902      	s32i.n	a8, a2, 0
4037f912:	1df0      	retw.n
4037f914:	364100        	entry	a1, 32
4037f917:	0c08      	movi.n	a8, 0
4037f919:	8942      	s32i.n	a8, a2, 16
4037f91b:	1df0      	retw.n
4037f91d:	000000        	ill
4037f920:	364100        	entry	a1, 32
4037f923:	8812      	l32i.n	a8, a2, 4
4037f925:	9828      	l32i.n	a9, a8, 8
4037f927:	8913      	s32i.n	a8, a3, 4
4037f929:	9923      	s32i.n	a9, a3, 8
4037f92b:	9828      	l32i.n	a9, a8, 8
4037f92d:	3919      	s32i.n	a3, a9, 4
4037f92f:	3928      	s32i.n	a3, a8, 8
4037f931:	2943      	s32i.n	a2, a3, 16
4037f933:	c02000        	memw
4037f936:	3802      	l32i.n	a3, a2, 0
4037f938:	1b33      	addi.n	a3, a3, 1
4037f93a:	c02000        	memw
4037f93d:	3902      	s32i.n	a3, a2, 0
4037f93f:	1df0      	retw.n
4037f941:	000000        	ill
4037f944:	364100        	entry	a1, 32
4037f947:	9803      	l32i.n	a9, a3, 0
4037f949:	8b82      	addi.n	a8, a2, 8
4037f94b:	66091d        	bnei	a9, -1, 0x4037f96c
4037f94e:	8842      	l32i.n	a8, a2, 16
4037f950:	9818      	l32i.n	a9, a8, 4
4037f952:	9913      	s32i.n	a9, a3, 4
4037f954:	3929      	s32i.n	a3, a9, 8
4037f956:	8923      	s32i.n	a8, a3, 8
4037f958:	3918      	s32i.n	a3, a8, 4
4037f95a:	2943      	s32i.n	a2, a3, 16
4037f95c:	c02000        	memw
4037f95f:	3802      	l32i.n	a3, a2, 0
4037f961:	1b33      	addi.n	a3, a3, 1
4037f963:	c02000        	memw
4037f966:	3902      	s32i.n	a3, a2, 0
4037f968:	1df0      	retw.n
4037f96a:	8d0a      	mov.n	a8, a10
4037f96c:	a818      	l32i.n	a10, a8, 4
4037f96e:	b80a      	l32i.n	a11, a10, 0
4037f970:	b7b9f6        	bgeu	a9, a11, 0x4037f96a
4037f973:	46f6ff        	j	0x4037f950
4037f976:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037f979:	4100a8        	l32r	a4, 0x4036997c
4037f97c:	129822        	l16si	a1, a8, 68
4037f97f:	8842      	l32i.n	a8, a2, 16
4037f981:	992a      	s32i.n	a9, a10, 8
4037f983:	a919      	s32i.n	a10, a9, 4
4037f985:	a818      	l32i.n	a10, a8, 4
4037f987:	279a01        	bne	a10, a2, 0x4037f98c
4037f98a:	9918      	s32i.n	a9, a8, 4
4037f98c:	0c09      	movi.n	a9, 0
4037f98e:	9942      	s32i.n	a9, a2, 16
4037f990:	c02000        	memw
4037f993:	2808      	l32i.n	a2, a8, 0
4037f995:	0b22      	addi.n	a2, a2, -1
4037f997:	c02000        	memw
4037f99a:	2908      	s32i.n	a2, a8, 0
4037f99c:	c02000        	memw
4037f99f:	2808      	l32i.n	a2, a8, 0
4037f9a1:	1df0      	retw.n
4037f9a3:	003641        	srli	a3, a0, 6
4037f9a6:	008b22        	orb	b8, b11, b0
4037f9a9:	1df0      	retw.n
4037f9ab:	003641        	srli	a3, a0, 6
4037f9ae:	002802        	andb	b2, b8, b0
4037f9b1:	1df0      	retw.n
4037f9b3:	003641        	srli	a3, a0, 6
4037f9b6:	002222        	orb	b2, b2, b0
4037f9b9:	13          	.byte	0x13
4037f9ba:	1df0      	retw.n
4037f9bc:	364100        	entry	a1, 32
4037f9bf:	0c12      	movi.n	a2, 1
4037f9c1:	1df0      	retw.n
4037f9c3:	003641        	srli	a3, a0, 6
4037f9c6:	002063        	minu	a2, a0, a0
4037f9c9:	00          	.byte	00
4037f9ca:	655efd        	call8	0x4037cfb0
4037f9cd:	a567fd        	call8	0x4037d048
4037f9d0:	80eb03        	rsr.prid	a8
4037f9d3:	808d04        	extui	a8, a8, 13, 1
4037f9d6:	e09811        	slli	a9, a8, 2
4037f9d9:	811fd5        	l32r	a8, 0x40374e58
4037f9dc:	22a001        	movi	a2, 1
4037f9df:	9a88      	add.n	a8, a8, a9
4037f9e1:	c02000        	memw
4037f9e4:	2908      	s32i.n	a2, a8, 0
4037f9e6:	453ffd        	call0	0x4037cddc
4037f9e9:	1df0      	retw.n
4037f9eb:	003641        	srli	a3, a0, 6
4037f9ee:	0071bb        	movgez.s	f7, f1, a0
4037f9f1:	d5c1b9        	call4	0x40339610
4037f9f4:	d562af        	call4	0x4032f024
4037f9f7:	f0          	.byte	0xf0
4037f9f8:	70ccc0        	sub	a12, a12, a7
4037f9fb:	c2cc0f        	addi	a12, a12, 15
4037f9fe:	60cc10        	and	a12, a12, a6
4037fa01:	c0a2c0        	sub	a10, a2, a12
4037fa04:	52ae04        	movi	a5, 0xfffffe04
4037fa07:	505a80        	add	a5, a10, a5
4037fa0a:	605510        	and	a5, a5, a6
4037fa0d:	6d05      	mov.n	a6, a5
4037fa0f:	0c08      	movi.n	a8, 0
4037fa11:	67b260        	bgeu	a2, a6, 0x4037fa75
4037fa14:	3915      	s32i.n	a3, a5, 4
4037fa16:	32a0c0        	movi	a3, 192
4037fa19:	3a35      	add.n	a3, a5, a3
4037fa1b:	3945      	s32i.n	a3, a5, 16
4037fa1d:	310cd4        	l32r	a3, 0x40374a50
4037fa20:	4995      	s32i.n	a4, a5, 36
4037fa22:	3905      	s32i.n	a3, a5, 0
4037fa24:	31afd5        	l32r	a3, 0x403750e0
4037fa27:	42aec4        	movi	a4, 0xfffffec4
4037fa2a:	4aaa      	add.n	a10, a10, a4
4037fa2c:	3925      	s32i.n	a3, a5, 8
4037fa2e:	7c03      	movi.n	a3, -16
4037fa30:	308a10        	and	a8, a10, a3
4037fa33:	0c06      	movi.n	a6, 0
4037fa35:	bd07      	mov.n	a11, a7
4037fa37:	ad08      	mov.n	a10, a8
4037fa39:	6935      	s32i.n	a6, a5, 12
4037fa3b:	8197d2        	l32r	a8, 0x40374498
4037fa3e:	e00800        	callx8	a8
4037fa41:	8d0a      	mov.n	a8, a10
4037fa43:	91a8d5        	l32r	a9, 0x403750e4
4037fa46:	a1a8d5        	l32r	a10, 0x403750e8
4037fa49:	4a22      	add.n	a2, a2, a4
4037fa4b:	70aac0        	sub	a10, a10, a7
4037fa4e:	7b79      	addi.n	a7, a9, 7
4037fa50:	909060        	neg	a9, a9
4037fa53:	909710        	and	a9, a7, a9
4037fa56:	90aac0        	sub	a10, a10, a9
4037fa59:	8aaa      	add.n	a10, a10, a8
4037fa5b:	4845      	l32i.n	a4, a5, 16
4037fa5d:	a2651c        	s32i	a10, a5, 112
4037fa60:	302210        	and	a2, a2, a3
4037fa63:	47b216        	bgeu	a2, a4, 0x4037fa7d
4037fa66:	d1a1d5        	l32r	a13, 0x403750ec
4037fa69:	c1a1d5        	l32r	a12, 0x403750f0
4037fa6c:	a1a2d5        	l32r	a10, 0x403750f4
4037fa6f:	b2a0f9        	movi	a11, 249
4037fa72:	e5ee02        	call8	0x40382960
4037fa75:	824600        	s8i	a8, a6, 0
4037fa78:	1b66      	addi.n	a6, a6, 1
4037fa7a:	c6e4ff        	j	0x4037fa11
4037fa7d:	42c21b        	addi	a4, a2, 27
4037fa80:	303410        	and	a3, a4, a3
4037fa83:	6902      	s32i.n	a6, a2, 0
4037fa85:	6912      	s32i.n	a6, a2, 4
4037fa87:	3922      	s32i.n	a3, a2, 8
4037fa89:	2d05      	mov.n	a2, a5
4037fa8b:	1df0      	retw.n
4037fa8d:	000000        	ill
4037fa90:	364100        	entry	a1, 32
4037fa93:	a06300        	rsil	a10, 3
4037fa96:	20eb03        	rsr.prid	a2
4037fa99:	202d04        	extui	a2, a2, 13, 1
4037fa9c:	e08211        	slli	a8, a2, 2
4037fa9f:	21e9d3        	l32r	a2, 0x40374a44
4037faa2:	0c19      	movi.n	a9, 1
4037faa4:	8a22      	add.n	a2, a2, a8
4037faa6:	2802      	l32i.n	a2, a2, 0
4037faa8:	0c08      	movi.n	a8, 0
4037faaa:	208993        	movnez	a8, a9, a2
4037faad:	2d08      	mov.n	a2, a8
4037faaf:	811fd4        	l32r	a8, 0x40374b2c
4037fab2:	e00800        	callx8	a8
4037fab5:	1df0      	retw.n
4037fab7:	003681        	src	a3, a6, a0
4037faba:	00          	.byte	00
4037fabb:	9d03      	mov.n	a9, a3
4037fabd:	606300        	rsil	a6, 3
4037fac0:	ccc2      	bnez.n	a2, 0x4037fad0
4037fac2:	d18dd5        	l32r	a13, 0x403750f8
4037fac5:	c18dd5        	l32r	a12, 0x403750fc
4037fac8:	a18ed5        	l32r	a10, 0x40375100
4037facb:	4cbb      	movi.n	a11, 75
4037facd:	25e902        	call8	0x40382960
4037fad0:	506300        	rsil	a5, 3
4037fad3:	260302        	beqi	a3, -1, 0x4037fad9
4037fad6:	d0ea03        	rsr.ccount	a13
4037fad9:	70eb03        	rsr.prid	a7
4037fadc:	418ad5        	l32r	a4, 0x40375104
4037fadf:	e18ad5        	l32r	a14, 0x40375108
4037fae2:	f1a0d2        	l32r	a15, 0x40374564
4037fae5:	31b6d4        	l32r	a3, 0x40374dc0
4037fae8:	404730        	xor	a4, a7, a4
4037faeb:	eae2      	add.n	a14, a2, a14
4037faed:	e7bf24        	bgeu	a15, a14, 0x4037fb15
4037faf0:	660910        	bnei	a9, -1, 0x4037fb04
4037faf3:	8d07      	mov.n	a8, a7
4037faf5:	300c13        	wsr.scompare1	a3
4037faf8:	82e200        	s32c1i	a8, a2, 0
4037fafb:	8971      	s32i.n	a8, a1, 28
4037fafd:	8714f2        	beq	a4, a8, 0x4037faf3
4037fb00:	461c00        	j	0x4037fb75
4037fb03:	008d07        	ee.stf.64.xp	f8, f0, a0, a13
4037fb06:	300c13        	wsr.scompare1	a3
4037fb09:	82e200        	s32c1i	a8, a2, 0
4037fb0c:	8971      	s32i.n	a8, a1, 28
4037fb0e:	871447        	beq	a4, a8, 0x4037fb59
4037fb11:	061800        	j	0x4037fb75
4037fb14:	006609        	l32e	a0, a6, -40
4037fb17:	18c2      	l32i.n	a1, a2, 48
4037fb19:	c11cbd        	l32r	a12, 0x4036ef8c
4037fb1c:	03          	.byte	0x3
4037fb1d:	ad02      	mov.n	a10, a2
4037fb1f:	726107        	s32i	a7, a1, 28
4037fb22:	8180d5        	l32r	a8, 0x40375124
4037fb25:	e00800        	callx8	a8
4037fb28:	8871      	l32i.n	a8, a1, 28
4037fb2a:	8714ea        	beq	a4, a8, 0x4037fb18
4037fb2d:	061100        	j	0x4037fb75
4037fb30:	00c2c1        	mul16u	a12, a2, a0
4037fb33:	1cbd      	movi.n	a13, 27
4037fb35:	03          	.byte	0x3
4037fb36:	ad02      	mov.n	a10, a2
4037fb38:	9911      	s32i.n	a9, a1, 4
4037fb3a:	d931      	s32i.n	a13, a1, 12
4037fb3c:	e921      	s32i.n	a14, a1, 8
4037fb3e:	f26100        	s32i	a15, a1, 0
4037fb41:	7971      	s32i.n	a7, a1, 28
4037fb43:	8178d5        	l32r	a8, 0x40375124
4037fb46:	e00800        	callx8	a8
4037fb49:	8871      	l32i.n	a8, a1, 28
4037fb4b:	9811      	l32i.n	a9, a1, 4
4037fb4d:	d22103        	l32i	a13, a1, 12
4037fb50:	e22102        	l32i	a14, a1, 8
4037fb53:	f22100        	l32i	a15, a1, 0
4037fb56:	87941b        	bne	a4, a8, 0x4037fb75
4037fb59:	80ea03        	rsr.ccount	a8
4037fb5c:	d088c0        	sub	a8, a8, a13
4037fb5f:	87b98a        	bgeu	a9, a8, 0x4037faed
4037fb62:	50e613        	wsr.ps	a5
4037fb65:	102000        	rsync
4037fb68:	ad06      	mov.n	a10, a6
4037fb6a:	81f0d3        	l32r	a8, 0x40374b2c
4037fb6d:	e00800        	callx8	a8
4037fb70:	0c02      	movi.n	a2, 0
4037fb72:	c62000        	j	0x4037fbf9
4037fb75:	3165d5        	l32r	a3, 0x4037510c
4037fb78:	0c19      	movi.n	a9, 1
4037fb7a:	3a38      	add.n	a3, a8, a3
4037fb7c:	0c04      	movi.n	a4, 0
4037fb7e:	304993        	movnez	a4, a9, a3
4037fb81:	403074        	extui	a3, a4, 0, 8
4037fb84:	871710        	beq	a7, a8, 0x4037fb98
4037fb87:	8cd3      	beqz.n	a3, 0x4037fb98
4037fb89:	d161d5        	l32r	a13, 0x40375110
4037fb8c:	c15cd5        	l32r	a12, 0x403750fc
4037fb8f:	a15cd5        	l32r	a10, 0x40375100
4037fb92:	b2a07a        	movi	a11, 122
4037fb95:	a5dc02        	call8	0x40382960
4037fb98:	4812      	l32i.n	a4, a2, 4
4037fb9a:	0c18      	movi.n	a8, 1
4037fb9c:	72a000        	movi	a7, 0
4037fb9f:	407883        	moveqz	a7, a8, a4
4037fba2:	37970e        	bne	a7, a3, 0x4037fbb4
4037fba5:	d15bd5        	l32r	a13, 0x40375114
4037fba8:	c155d5        	l32r	a12, 0x403750fc
4037fbab:	a155d5        	l32r	a10, 0x40375100
4037fbae:	b2a07b        	movi	a11, 123
4037fbb1:	e5da02        	call8	0x40382960
4037fbb4:	32a0fe        	movi	a3, 254
4037fbb7:	47b30e        	bgeu	a3, a4, 0x4037fbc9
4037fbba:	d157d5        	l32r	a13, 0x40375118
4037fbbd:	c14fd5        	l32r	a12, 0x403750fc
4037fbc0:	a150d5        	l32r	a10, 0x40375100
4037fbc3:	b2a07c        	movi	a11, 124
4037fbc6:	a5d902        	call8	0x40382960
4037fbc9:	1b44      	addi.n	a4, a4, 1
4037fbcb:	4912      	s32i.n	a4, a2, 4
4037fbcd:	50e613        	wsr.ps	a5
4037fbd0:	102000        	rsync
4037fbd3:	40eb03        	rsr.prid	a4
4037fbd6:	404d04        	extui	a4, a4, 13, 1
4037fbd9:	3150d5        	l32r	a3, 0x4037511c
4037fbdc:	e04411        	slli	a4, a4, 2
4037fbdf:	4a33      	add.n	a3, a3, a4
4037fbe1:	2803      	l32i.n	a2, a3, 0
4037fbe3:	1b22      	addi.n	a2, a2, 1
4037fbe5:	2903      	s32i.n	a2, a3, 0
4037fbe7:	66120c        	bnei	a2, 1, 0x4037fbf7
4037fbea:	314dd5        	l32r	a3, 0x40375120
4037fbed:	4a43      	add.n	a4, a3, a4
4037fbef:	6904      	s32i.n	a6, a4, 0
4037fbf1:	060100        	j	0x4037fbf9
4037fbf4:	000000        	ill
4037fbf7:	2d08      	mov.n	a2, a8
4037fbf9:	1df0      	retw.n
4037fbfb:	003641        	srli	a3, a0, 6
4037fbfe:	0056e2        	remu	a5, a6, a0
4037fc01:	00          	.byte	00
4037fc02:	d13dd5        	l32r	a13, 0x403750f8
4037fc05:	c148d5        	l32r	a12, 0x40375128
4037fc08:	a13ed5        	l32r	a10, 0x40375100
4037fc0b:	b2a09a        	movi	a11, 154
4037fc0e:	25d502        	call8	0x40382960
4037fc11:	a06300        	rsil	a10, 3
4037fc14:	90eb03        	rsr.prid	a9
4037fc17:	8802      	l32i.n	a8, a2, 0
4037fc19:	871911        	beq	a9, a8, 0x4037fc2e
4037fc1c:	d144d5        	l32r	a13, 0x4037512c
4037fc1f:	c142d5        	l32r	a12, 0x40375128
4037fc22:	a137d5        	l32r	a10, 0x40375100
4037fc25:	b2a09e        	movi	a11, 158
4037fc28:	101120        	or	a1, a1, a1
4037fc2b:	65d302        	call8	0x40382960
4037fc2e:	8812      	l32i.n	a8, a2, 4
4037fc30:	0b88      	addi.n	a8, a8, -1
4037fc32:	8912      	s32i.n	a8, a2, 4
4037fc34:	cc98      	bnez.n	a8, 0x4037fc41
4037fc36:	8162d4        	l32r	a8, 0x40374dc0
4037fc39:	8902      	s32i.n	a8, a2, 0
4037fc3b:	c60500        	j	0x4037fc56
4037fc3e:	000000        	ill
4037fc41:	22a0ff        	movi	a2, 255
4037fc44:	87b20e        	bgeu	a2, a8, 0x4037fc56
4037fc47:	d13ad5        	l32r	a13, 0x40375130
4037fc4a:	c137d5        	l32r	a12, 0x40375128
4037fc4d:	a12cd5        	l32r	a10, 0x40375100
4037fc50:	b2a0a4        	movi	a11, 164
4037fc53:	e5d002        	call8	0x40382960
4037fc56:	a0e613        	wsr.ps	a10
4037fc59:	102000        	rsync
4037fc5c:	90eb03        	rsr.prid	a9
4037fc5f:	909d04        	extui	a9, a9, 13, 1
4037fc62:	212ed5        	l32r	a2, 0x4037511c
4037fc65:	e09911        	slli	a9, a9, 2
4037fc68:	902280        	add	a2, a2, a9
4037fc6b:	822200        	l32i	a8, a2, 0
4037fc6e:	a61813        	blti	a8, 1, 0x4037fc85
4037fc71:	82c8ff        	addi	a8, a8, -1
4037fc74:	8902      	s32i.n	a8, a2, 0
4037fc76:	ccb8      	bnez.n	a8, 0x4037fc85
4037fc78:	212ad5        	l32r	a2, 0x40375120
4037fc7b:	9a92      	add.n	a9, a2, a9
4037fc7d:	a809      	l32i.n	a10, a9, 0
4037fc7f:	81abd3        	l32r	a8, 0x40374b2c
4037fc82:	e00800        	callx8	a8
4037fc85:	1df0      	retw.n
4037fc87:	003641        	srli	a3, a0, 6
4037fc8a:	00ad02        	andb	b10, b13, b0
4037fc8d:	6536f8        	call8	0x40377ff4
4037fc90:	1df0      	retw.n
4037fc92:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037fc95:	010121        	l32r	a0, 0x4034809c
4037fc98:	4ad2      	add.n	a13, a2, a4
4037fc9a:	4cbc      	movi.n	a12, 75
4037fc9c:	c02000        	memw
4037fc9f:	2802      	l32i.n	a2, a2, 0
4037fca1:	0c0b      	movi.n	a11, 0
4037fca3:	c02000        	memw
4037fca6:	226117        	s32i	a2, a1, 92
4037fca9:	2122d5        	l32r	a2, 0x40375134
4037fcac:	a2c111        	addi	a10, a1, 17
4037fcaf:	2911      	s32i.n	a2, a1, 4
4037fcb1:	2121d5        	l32r	a2, 0x40375138
4037fcb4:	3921      	s32i.n	a3, a1, 8
4037fcb6:	2931      	s32i.n	a2, a1, 12
4037fcb8:	81fad1        	l32r	a8, 0x403744a0
4037fcbb:	e00800        	callx8	a8
4037fcbe:	4b21      	addi.n	a2, a1, 4
4037fcc0:	32c110        	addi	a3, a1, 16
4037fcc3:	a2c111        	addi	a10, a1, 17
4037fcc6:	b802      	l32i.n	a11, a2, 0
4037fcc8:	4b22      	addi.n	a2, a2, 4
4037fcca:	811cd5        	l32r	a8, 0x4037513c
4037fccd:	e00800        	callx8	a8
4037fcd0:	3792f2        	bne	a2, a3, 0x4037fcc6
4037fcd3:	a2c111        	addi	a10, a1, 17
4037fcd6:	a504fd        	call8	0x4037cd20
4037fcd9:	000000        	ill
4037fcdc:	364100        	entry	a1, 32
4037fcdf:	b2c21f        	addi	a11, a2, 31
4037fce2:	82afe0        	movi	a8, -32
4037fce5:	d1f9d1        	l32r	a13, 0x403744cc
4037fce8:	c2a020        	movi	a12, 32
4037fceb:	80bb10        	and	a11, a11, a8
4037fcee:	a2a001        	movi	a10, 1
4037fcf1:	e5a5f8        	call8	0x40378750
4037fcf4:	1df0      	retw.n
4037fcf6:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037fcf9:	4100a8        	l32r	a4, 0x40369cfc
4037fcfc:	02a52c        	movi	a0, 0x52c
4037fcff:	fd          	.byte	0xfd
4037fd00:	1df0      	retw.n
4037fd02:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037fd05:	41000b        	l32r	a4, 0x40342908
4037fd08:	555a54        	call4	0x403d42b0
4037fd0b:	7c08      	movi.n	a8, -16
4037fd0d:	805510        	and	a5, a5, a8
4037fd10:	42aec4        	movi	a4, 0xfffffec4
4037fd13:	4a55      	add.n	a5, a5, a4
4037fd15:	805510        	and	a5, a5, a8
4037fd18:	5902      	s32i.n	a5, a2, 0
4037fd1a:	1df0      	retw.n
4037fd1c:	364100        	entry	a1, 32
4037fd1f:	8108d5        	l32r	a8, 0x40375140
4037fd22:	0c19      	movi.n	a9, 1
4037fd24:	c02000        	memw
4037fd27:	924800        	s8i	a9, a8, 0
4037fd2a:	0c12      	movi.n	a2, 1
4037fd2c:	1df0      	retw.n
4037fd2e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037fd31:	610081        	l32r	a6, 0x40360134
4037fd34:	0ad5      	add.n	a13, a5, a0
4037fd36:	e00800        	callx8	a8
4037fd39:	8109d5        	l32r	a8, 0x40375160
4037fd3c:	e00800        	callx8	a8
4037fd3f:	8109d5        	l32r	a8, 0x40375164
4037fd42:	e00800        	callx8	a8
4037fd45:	d2a000        	movi	a13, 0
4037fd48:	c1ffd4        	l32r	a12, 0x40375144
4037fd4b:	b1ffd4        	l32r	a11, 0x40375148
4037fd4e:	a1ffd4        	l32r	a10, 0x4037514c
4037fd51:	d26100        	s32i	a13, a1, 0
4037fd54:	fd0d      	mov.n	a15, a13
4037fd56:	0c1e      	movi.n	a14, 1
4037fd58:	e563fe        	call8	0x4037e398
4037fd5b:	261a0d        	beqi	a10, 1, 0x4037fd6c
4037fd5e:	d1fcd4        	l32r	a13, 0x40375150
4037fd61:	c1fcd4        	l32r	a12, 0x40375154
4037fd64:	a1fdd4        	l32r	a10, 0x40375158
4037fd67:	5c1b      	movi.n	a11, 81
4037fd69:	65bf02        	call8	0x40382960
4037fd6c:	1df0      	retw.n
4037fd6e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037fd71:	410091        	l32r	a4, 0x40364174
4037fd74:	ef          	.byte	0xef
4037fd75:	d1a1ea        	l32r	a13, 0x4037a7fc (0x3fc98161)
4037fd78:	d1c1ec        	l32r	a13, 0x4037b07c (0xc290ce8)
4037fd7b:	d19a92        	l32r	a13, 0x403647e4
4037fd7e:	aaa2      	add.n	a10, a2, a10
4037fd80:	82a001        	movi	a8, 1
4037fd83:	97bc02        	bgeu	a12, a9, 0x4037fd89
4037fd86:	82a000        	movi	a8, 0
4037fd89:	b1e7d1        	l32r	a11, 0x40374528
4037fd8c:	809074        	extui	a9, a8, 0, 8
4037fd8f:	bab2      	add.n	a11, a2, a11
4037fd91:	0c18      	movi.n	a8, 1
4037fd93:	b7bc01        	bgeu	a12, a11, 0x4037fd98
4037fd96:	0c08      	movi.n	a8, 0
4037fd98:	c1e3d1        	l32r	a12, 0x40374524
4037fd9b:	b2a001        	movi	a11, 1
4037fd9e:	a7bc02        	bgeu	a12, a10, 0x4037fda4
4037fda1:	b2a000        	movi	a11, 0
4037fda4:	b08820        	or	a8, a8, a11
4037fda7:	808074        	extui	a8, a8, 0, 8
4037fdaa:	562800        	bnez	a8, 0x4037fdb0
4037fdad:	165902        	beqz	a9, 0x4037fdd6
4037fdb0:	b11cd2        	l32r	a11, 0x40374620
4037fdb3:	82a001        	movi	a8, 1
4037fdb6:	a7bb02        	bgeu	a11, a10, 0x4037fdbc
4037fdb9:	82a000        	movi	a8, 0
4037fdbc:	808920        	or	a8, a9, a8
4037fdbf:	91d2d4        	l32r	a9, 0x40375108
4037fdc2:	a1e8d1        	l32r	a10, 0x40374564
4037fdc5:	9a22      	add.n	a2, a2, a9
4037fdc7:	92a001        	movi	a9, 1
4037fdca:	27ba02        	bgeu	a10, a2, 0x4037fdd0
4037fdcd:	92a000        	movi	a9, 0
4037fdd0:	908820        	or	a8, a8, a9
4037fdd3:	808074        	extui	a8, a8, 0, 8
4037fdd6:	802004        	extui	a2, a8, 0, 1
4037fdd9:	1df0      	retw.n
4037fddb:	003641        	srli	a3, a0, 6
4037fdde:	00ad02        	andb	b10, b13, b0
4037fde1:	e5f8ff        	call8	0x4037fd70
4037fde4:	2d0a      	mov.n	a2, a10
4037fde6:	1df0      	retw.n
4037fde8:	364100        	entry	a1, 32
4037fdeb:	61d2d1        	l32r	a6, 0x40374534
4037fdee:	a2a400        	movi	a10, 0x400
4037fdf1:	60b620        	or	a11, a6, a6
4037fdf4:	a566f8        	call8	0x40378460
4037fdf7:	5d0a      	mov.n	a5, a10
4037fdf9:	bd06      	mov.n	a11, a6
4037fdfb:	a2a158        	movi	a10, 0x158
4037fdfe:	2566f8        	call8	0x40378460
4037fe01:	ccda      	bnez.n	a10, 0x4037fe12
4037fe03:	d1d9d4        	l32r	a13, 0x40375168
4037fe06:	c1d9d4        	l32r	a12, 0x4037516c
4037fe09:	b2a0c2        	movi	a11, 194
4037fe0c:	a1d3d4        	l32r	a10, 0x40375158
4037fe0f:	25b502        	call8	0x40382960
4037fe12:	cca5      	bnez.n	a5, 0x4037fe20
4037fe14:	d1d7d4        	l32r	a13, 0x40375170
4037fe17:	c1d5d4        	l32r	a12, 0x4037516c
4037fe1a:	b2a0c3        	movi	a11, 195
4037fe1d:	c6faff        	j	0x4037fe0c
4037fe20:	a902      	s32i.n	a10, a2, 0
4037fe22:	5903      	s32i.n	a5, a3, 0
4037fe24:	52a400        	movi	a5, 0x400
4037fe27:	5904      	s32i.n	a5, a4, 0
4037fe29:	1df0      	retw.n
4037fe2b:	00          	.byte	00
4037fe2c:	366100        	entry	a1, 48
4037fe2f:	750000        	call12	0x4037fe34
4037fe32:	1df0      	retw.n
4037fe34:	366100        	entry	a1, 48
4037fe37:	cd00      	mov.n	a12, a0
4037fe39:	366100        	entry	a1, 48
4037fe3c:	cd00      	mov.n	a12, a0
4037fe3e:	366100        	entry	a1, 48
4037fe41:	cd00      	mov.n	a12, a0
4037fe43:	362100        	entry	a1, 16
4037fe46:	8d08      	mov.n	a8, a8
4037fe48:	1df0      	retw.n
4037fe4a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037fe4d:	4100e5        	l32r	a4, 0x40379250 (0xc5004013)
4037fe50:	fd          	.byte	0xfd
4037fe51:	ff          	.byte	0xff
4037fe52:	52c1f0        	addi	a5, a1, -16
4037fe55:	6815      	l32i.n	a6, a5, 4
4037fe57:	62c6f0        	addi	a6, a6, -16
4037fe5a:	8d00      	mov.n	a8, a0
4037fe5c:	860100        	j	0x4037fe66
4037fe5f:	8805      	l32i.n	a8, a5, 0
4037fe61:	5d06      	mov.n	a5, a6
4037fe63:	62c7f0        	addi	a6, a7, -16
4037fe66:	7816      	l32i.n	a7, a6, 4
4037fe68:	77b2f3        	bgeu	a2, a7, 0x4037fe5f
4037fe6b:	42c1f0        	addi	a4, a1, -16
4037fe6e:	6805      	l32i.n	a6, a5, 0
4037fe70:	7815      	l32i.n	a7, a5, 4
4037fe72:	6904      	s32i.n	a6, a4, 0
4037fe74:	7914      	s32i.n	a7, a4, 4
4037fe76:	6825      	l32i.n	a6, a5, 8
4037fe78:	7835      	l32i.n	a7, a5, 12
4037fe7a:	6924      	s32i.n	a6, a4, 8
4037fe7c:	7934      	s32i.n	a7, a4, 12
4037fe7e:	808e15        	extui	a8, a8, 30, 2
4037fe81:	e03311        	slli	a3, a3, 2
4037fe84:	004240        	ssai	2
4037fe87:	300881        	src	a0, a8, a3
4037fe8a:	1df0      	retw.n
4037fe8c:	364100        	entry	a1, 32
4037fe8f:	002000        	isync
4037fe92:	1df0      	retw.n
4037fe94:	364100        	entry	a1, 32
4037fe97:	0c18      	movi.n	a8, 1
4037fe99:	bd05      	mov.n	a11, a5
4037fe9b:	cd08      	mov.n	a12, a8
4037fe9d:	8cb5      	beqz.n	a5, 0x4037feac
4037fe9f:	0b55      	addi.n	a5, a5, -1
4037fea1:	92a000        	movi	a9, 0
4037fea4:	509893        	movnez	a9, a8, a5
4037fea7:	90c074        	extui	a12, a9, 0, 8
4037feaa:	bd08      	mov.n	a11, a8
4037feac:	3cf8      	movi.n	a8, 63
4037feae:	0c0a      	movi.n	a10, 0
4037feb0:	52a001        	movi	a5, 1
4037feb3:	0c79      	movi.n	a9, 7
4037feb5:	76890d        	loop	a9, 0x4037fec6
4037feb8:	001a40        	ssl	a10
4037febb:	00d5a1        	sll	a13, a5
4037febe:	d71404        	beq	a4, a13, 0x4037fec6
4037fec1:	f08811        	slli	a8, a8, 1
4037fec4:	1baa      	addi.n	a10, a10, 1
4037fec6:	808054        	extui	a8, a8, 0, 6
4037fec9:	8c4c      	beqz.n	a12, 0x4037fed1
4037fecb:	5157d1        	l32r	a5, 0x40374428
4037fece:	508820        	or	a8, a8, a5
4037fed1:	8c4b      	beqz.n	a11, 0x4037fed9
4037fed3:	517ed1        	l32r	a5, 0x403744cc
4037fed6:	508820        	or	a8, a8, a5
4037fed9:	8c72      	beqz.n	a2, 0x4037fee4
4037fedb:	309113        	wsr.dbreaka1	a3
4037fede:	80a113        	wsr.dbreakc1	a8
4037fee1:	1df0      	retw.n
4037fee3:	003090        	addx2	a3, a0, a0
4037fee6:	1380a0        	lsip	f1, a0, 0x280
4037fee9:	13c6fc        	ssip	f1, a6, 0x3f0
4037feec:	ff000000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 0, q4, q0, q0, q0
4037fef0:	364100        	entry	a1, 32
4037fef3:	9c52      	beqz.n	a2, 0x4037ff0c
4037fef5:	308113        	wsr.ibreaka1	a3
4037fef8:	306003        	rsr.ibreakenable	a3
4037fefb:	0c18      	movi.n	a8, 1
4037fefd:	001240        	ssl	a2
4037ff00:	0088a1        	sll	a8, a8
4037ff03:	308820        	or	a8, a8, a3
4037ff06:	806013        	wsr.ibreakenable	a8
4037ff09:	1df0      	retw.n
4037ff0b:	003080        	add	a3, a0, a0
4037ff0e:	1346f9        	ssi	f1, a6, 0x3e4
4037ff11:	ff000036 	ee.vmulas.s8.qacc.ld.ip.qup	q4, a15, 0x100, q4, q0, q0, q0
4037ff15:	410020        	l32r	a4, 0x40347f18
4037ff18:	e7131d        	beq	a3, a14, 0x4037ff39
4037ff1b:	f03641        	srli	a3, a15, 6
4037ff1e:	009802        	andb	b9, b8, b0
4037ff21:	a14cd1        	l32r	a10, 0x40374454
4037ff24:	c02000        	memw
4037ff27:	8819      	l32i.n	a8, a9, 4
4037ff29:	a08820        	or	a8, a8, a10
4037ff2c:	c02000        	memw
4037ff2f:	8919      	s32i.n	a8, a9, 4
4037ff31:	1df0      	retw.n
4037ff33:	00          	.byte	00
4037ff34:	366100        	entry	a1, 48
4037ff37:	8802      	l32i.n	a8, a2, 0
4037ff39:	c02000        	memw
4037ff3c:	98b8      	l32i.n	a9, a8, 44
4037ff3e:	166907        	beqz	a9, 0x4037ffb8
4037ff41:	c02000        	memw
4037ff44:	98b8      	l32i.n	a9, a8, 44
4037ff46:	c02000        	memw
4037ff49:	9931      	s32i.n	a9, a1, 12
4037ff4b:	c02000        	memw
4037ff4e:	9831      	l32i.n	a9, a1, 12
4037ff50:	576928        	bbci	a9, 5, 0x4037ff7c
4037ff53:	92a001        	movi	a9, 1
4037ff56:	9903      	s32i.n	a9, a3, 0
4037ff58:	3803      	l32i.n	a3, a3, 0
4037ff5a:	b64302        	bltui	a3, 4, 0x4037ff60
4037ff5d:	665354        	bnei	a3, 5, 0x4037ffb5
4037ff60:	c02000        	memw
4037ff63:	38a8      	l32i.n	a3, a8, 40
4037ff65:	92aa57        	movi	a9, 0xfffffa57
4037ff68:	903310        	and	a3, a3, a9
4037ff6b:	c02000        	memw
4037ff6e:	39a8      	s32i.n	a3, a8, 40
4037ff70:	32a5a8        	movi	a3, 0x5a8
4037ff73:	c02000        	memw
4037ff76:	3998      	s32i.n	a3, a8, 36
4037ff78:	060f00        	j	0x4037ffb8
4037ff7b:	00c020        	or	a12, a0, a0
4037ff7e:	009831        	srai	a9, a0, 24
4037ff81:	a76904        	bbci	a9, 10, 0x4037ff89
4037ff84:	0c29      	movi.n	a9, 2
4037ff86:	06f3ff        	j	0x4037ff56
4037ff89:	c02000        	memw
4037ff8c:	9831      	l32i.n	a9, a1, 12
4037ff8e:	876906        	bbci	a9, 8, 0x4037ff98
4037ff91:	0c39      	movi.n	a9, 3
4037ff93:	c6efff        	j	0x4037ff56
4037ff96:	0000c0        	sub	a0, a0, a0
4037ff99:	20          	.byte	0x20
4037ff9a:	009831        	srai	a9, a0, 24
4037ff9d:	376904        	bbci	a9, 3, 0x4037ffa5
4037ffa0:	0c49      	movi.n	a9, 4
4037ffa2:	06ecff        	j	0x4037ff56
4037ffa5:	c02000        	memw
4037ffa8:	9831      	l32i.n	a9, a1, 12
4037ffaa:	909704        	extui	a9, a9, 7, 1
4037ffad:	1659fa        	beqz	a9, 0x4037ff56
4037ffb0:	0c59      	movi.n	a9, 5
4037ffb2:	06e8ff        	j	0x4037ff56
4037ffb5:	2643b7        	beqi	a3, 4, 0x4037ff70
4037ffb8:	1df0      	retw.n
4037ffba:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4037ffbd:	610088        	l32r	a6, 0x40361fc0
4037ffc0:	02c020        	addi	a0, a0, 32
4037ffc3:	00          	.byte	00
4037ffc4:	98b8      	l32i.n	a9, a8, 44
4037ffc6:	166907        	beqz	a9, 0x40380040
4037ffc9:	c02000        	memw
4037ffcc:	98b8      	l32i.n	a9, a8, 44
4037ffce:	c02000        	memw
4037ffd1:	9931      	s32i.n	a9, a1, 12
4037ffd3:	c02000        	memw
4037ffd6:	9831      	l32i.n	a9, a1, 12
4037ffd8:	576928        	bbci	a9, 5, 0x40380004
4037ffdb:	92a001        	movi	a9, 1
4037ffde:	9903      	s32i.n	a9, a3, 0
4037ffe0:	3803      	l32i.n	a3, a3, 0
4037ffe2:	b64302        	bltui	a3, 4, 0x4037ffe8
4037ffe5:	665354        	bnei	a3, 5, 0x4038003d
4037ffe8:	c02000        	memw
4037ffeb:	38a8      	l32i.n	a3, a8, 40
4037ffed:	92ae57        	movi	a9, 0xfffffe57
4037fff0:	903310        	and	a3, a3, a9
4037fff3:	c02000        	memw
4037fff6:	39a8      	s32i.n	a3, a8, 40
4037fff8:	32a1a8        	movi	a3, 0x1a8
4037fffb:	c02000        	memw
4037fffe:	3998      	s32i.n	a3, a8, 36
40380000:	060f00        	j	0x40380040
40380003:	00c020        	or	a12, a0, a0
40380006:	009831        	srai	a9, a0, 24
40380009:	a76904        	bbci	a9, 10, 0x40380011
4038000c:	0c29      	movi.n	a9, 2
4038000e:	06f3ff        	j	0x4037ffde
40380011:	c02000        	memw
40380014:	9831      	l32i.n	a9, a1, 12
40380016:	876906        	bbci	a9, 8, 0x40380020
40380019:	0c39      	movi.n	a9, 3
4038001b:	c6efff        	j	0x4037ffde
4038001e:	0000c0        	sub	a0, a0, a0
40380021:	20          	.byte	0x20
40380022:	009831        	srai	a9, a0, 24
40380025:	376904        	bbci	a9, 3, 0x4038002d
40380028:	0c49      	movi.n	a9, 4
4038002a:	06ecff        	j	0x4037ffde
4038002d:	c02000        	memw
40380030:	9831      	l32i.n	a9, a1, 12
40380032:	909704        	extui	a9, a9, 7, 1
40380035:	1659fa        	beqz	a9, 0x4037ffde
40380038:	0c59      	movi.n	a9, 5
4038003a:	06e8ff        	j	0x4037ffde
4038003d:	2643b7        	beqi	a3, 4, 0x4037fff8
40380040:	1df0      	retw.n
40380042:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40380045:	610088        	l32r	a6, 0x40362048
40380048:	02c020        	addi	a0, a0, 32
4038004b:	00          	.byte	00
4038004c:	88b8      	l32i.n	a8, a8, 44
4038004e:	c02000        	memw
40380051:	8931      	s32i.n	a8, a1, 12
40380053:	c02000        	memw
40380056:	8831      	l32i.n	a8, a1, 12
40380058:	176805        	bbci	a8, 1, 0x40380061
4038005b:	0c78      	movi.n	a8, 7
4038005d:	8903      	s32i.n	a8, a3, 0
4038005f:	1df0      	retw.n
40380061:	c02000        	memw
40380064:	8831      	l32i.n	a8, a1, 12
40380066:	776806        	bbci	a8, 7, 0x40380070
40380069:	0c58      	movi.n	a8, 5
4038006b:	86fbff        	j	0x4038005d
4038006e:	0000c0        	sub	a0, a0, a0
40380071:	20          	.byte	0x20
40380072:	008831        	srai	a8, a0, 24
40380075:	808004        	extui	a8, a8, 0, 1
40380078:	1618fe        	beqz	a8, 0x4038005d
4038007b:	0c68      	movi.n	a8, 6
4038007d:	06f7ff        	j	0x4038005d
40380080:	364100        	entry	a1, 32
40380083:	9802      	l32i.n	a9, a2, 0
40380085:	7cda      	movi.n	a10, -3
40380087:	c02000        	memw
4038008a:	88a9      	l32i.n	a8, a9, 40
4038008c:	a08810        	and	a8, a8, a10
4038008f:	c02000        	memw
40380092:	89a9      	s32i.n	a8, a9, 40
40380094:	1df0      	retw.n
40380096:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40380099:	410088        	l32r	a4, 0x4036209c
4038009c:	02c020        	addi	a0, a0, 32
4038009f:	00          	.byte	00
403800a0:	8828      	l32i.n	a8, a8, 8
403800a2:	808854        	extui	a8, a8, 8, 6
403800a5:	8903      	s32i.n	a8, a3, 0
403800a7:	1df0      	retw.n
403800a9:	000000        	ill
403800ac:	364100        	entry	a1, 32
403800af:	8802      	l32i.n	a8, a2, 0
403800b1:	c02000        	memw
403800b4:	8828      	l32i.n	a8, a8, 8
403800b6:	809255        	extui	a9, a8, 18, 6
403800b9:	2c08      	movi.n	a8, 32
403800bb:	9088c0        	sub	a8, a8, a9
403800be:	8903      	s32i.n	a8, a3, 0
403800c0:	1df0      	retw.n
403800c2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403800c5:	410088        	l32r	a4, 0x403620c8
403800c8:	02c020        	addi	a0, a0, 32
403800cb:	00          	.byte	00
403800cc:	88b8      	l32i.n	a8, a8, 44
403800ce:	8903      	s32i.n	a8, a3, 0
403800d0:	1df0      	retw.n
403800d2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403800d5:	4100a8        	l32r	a4, 0x4036a0d8
403800d8:	12e083        	s32c1i	a1, a0, 0x20c
403800db:	113a88        	l32r	a1, 0x403621c4
403800de:	e03a11        	slli	a3, a10, 2
403800e1:	aa33      	add.n	a3, a3, a10
403800e3:	9802      	l32i.n	a9, a2, 0
403800e5:	e08811        	slli	a8, a8, 2
403800e8:	b03311        	slli	a3, a3, 5
403800eb:	3a88      	add.n	a8, a8, a3
403800ed:	8a89      	add.n	a8, a9, a8
403800ef:	c02000        	memw
403800f2:	9818      	l32i.n	a9, a8, 4
403800f4:	2120d4        	l32r	a2, 0x40375174
403800f7:	4040d4        	extui	a4, a4, 0, 14
403800fa:	209910        	and	a9, a9, a2
403800fd:	409920        	or	a9, a9, a4
40380100:	c02000        	memw
40380103:	9918      	s32i.n	a9, a8, 4
40380105:	1df0      	retw.n
40380107:	003641        	srli	a3, a0, 6
4038010a:	00a812        	andbc	b10, b8, b0
4038010d:	e08311        	slli	a8, a3, 2
40380110:	3a88      	add.n	a8, a8, a3
40380112:	e03a11        	slli	a3, a10, 2
40380115:	aa33      	add.n	a3, a3, a10
40380117:	9802      	l32i.n	a9, a2, 0
40380119:	e08811        	slli	a8, a8, 2
4038011c:	b03311        	slli	a3, a3, 5
4038011f:	3a88      	add.n	a8, a8, a3
40380121:	8a89      	add.n	a8, a9, a8
40380123:	c02000        	memw
40380126:	9838      	l32i.n	a9, a8, 12
40380128:	21edd0        	l32r	a2, 0x403744dc
4038012b:	404004        	extui	a4, a4, 0, 1
4038012e:	204401        	slli	a4, a4, 30
40380131:	209910        	and	a9, a9, a2
40380134:	409920        	or	a9, a9, a4
40380137:	c02000        	memw
4038013a:	9938      	s32i.n	a9, a8, 12
4038013c:	1df0      	retw.n
4038013e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40380141:	4100a8        	l32r	a4, 0x4036a144
40380144:	12e083        	s32c1i	a1, a0, 0x20c
40380147:	113a88        	l32r	a1, 0x40362230
4038014a:	e03a11        	slli	a3, a10, 2
4038014d:	aa33      	add.n	a3, a3, a10
4038014f:	9802      	l32i.n	a9, a2, 0
40380151:	e08811        	slli	a8, a8, 2
40380154:	b03311        	slli	a3, a3, 5
40380157:	3a88      	add.n	a8, a8, a3
40380159:	8a89      	add.n	a8, a9, a8
4038015b:	c02000        	memw
4038015e:	9838      	l32i.n	a9, a8, 12
40380160:	2106d4        	l32r	a2, 0x40375178
40380163:	404094        	extui	a4, a4, 0, 10
40380166:	c04401        	slli	a4, a4, 20
40380169:	209910        	and	a9, a9, a2
4038016c:	409920        	or	a9, a9, a4
4038016f:	c02000        	memw
40380172:	9938      	s32i.n	a9, a8, 12
40380174:	1df0      	retw.n
40380176:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40380179:	4100a8        	l32r	a4, 0x4036a17c
4038017c:	12e083        	s32c1i	a1, a0, 0x20c
4038017f:	113a88        	l32r	a1, 0x40362268
40380182:	e03a11        	slli	a3, a10, 2
40380185:	aa33      	add.n	a3, a3, a10
40380187:	9802      	l32i.n	a9, a2, 0
40380189:	e08811        	slli	a8, a8, 2
4038018c:	b03311        	slli	a3, a3, 5
4038018f:	3a88      	add.n	a8, a8, a3
40380191:	8a89      	add.n	a8, a9, a8
40380193:	c02000        	memw
40380196:	9838      	l32i.n	a9, a8, 12
40380198:	21f9d3        	l32r	a2, 0x4037517c
4038019b:	404094        	extui	a4, a4, 0, 10
4038019e:	604411        	slli	a4, a4, 10
403801a1:	209910        	and	a9, a9, a2
403801a4:	409920        	or	a9, a9, a4
403801a7:	c02000        	memw
403801aa:	9938      	s32i.n	a9, a8, 12
403801ac:	1df0      	retw.n
403801ae:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403801b1:	4100a8        	l32r	a4, 0x4036a1b4
403801b4:	12e083        	s32c1i	a1, a0, 0x20c
403801b7:	113a88        	l32r	a1, 0x403622a0
403801ba:	e03a11        	slli	a3, a10, 2
403801bd:	aa33      	add.n	a3, a3, a10
403801bf:	9802      	l32i.n	a9, a2, 0
403801c1:	b03311        	slli	a3, a3, 5
403801c4:	e08811        	slli	a8, a8, 2
403801c7:	3a88      	add.n	a8, a8, a3
403801c9:	8a89      	add.n	a8, a9, a8
403801cb:	c02000        	memw
403801ce:	3808      	l32i.n	a3, a8, 0
403801d0:	1c02      	movi.n	a2, 16
403801d2:	203320        	or	a3, a3, a2
403801d5:	c02000        	memw
403801d8:	3908      	s32i.n	a3, a8, 0
403801da:	1df0      	retw.n
403801dc:	364100        	entry	a1, 32
403801df:	a812      	l32i.n	a10, a2, 4
403801e1:	e08311        	slli	a8, a3, 2
403801e4:	3a88      	add.n	a8, a8, a3
403801e6:	e03a11        	slli	a3, a10, 2
403801e9:	aa33      	add.n	a3, a3, a10
403801eb:	9802      	l32i.n	a9, a2, 0
403801ed:	b03311        	slli	a3, a3, 5
403801f0:	e08811        	slli	a8, a8, 2
403801f3:	3a88      	add.n	a8, a8, a3
403801f5:	8a89      	add.n	a8, a9, a8
403801f7:	c02000        	memw
403801fa:	3848      	l32i.n	a3, a8, 16
403801fc:	3034e4        	extui	a3, a3, 4, 15
403801ff:	3904      	s32i.n	a3, a4, 0
40380201:	1df0      	retw.n
40380203:	003641        	srli	a3, a0, 6
40380206:	00a812        	andbc	b10, b8, b0
40380209:	e08311        	slli	a8, a3, 2
4038020c:	3a88      	add.n	a8, a8, a3
4038020e:	e03a11        	slli	a3, a10, 2
40380211:	aa33      	add.n	a3, a3, a10
40380213:	9802      	l32i.n	a9, a2, 0
40380215:	e08811        	slli	a8, a8, 2
40380218:	b03311        	slli	a3, a3, 5
4038021b:	3a88      	add.n	a8, a8, a3
4038021d:	8a89      	add.n	a8, a9, a8
4038021f:	c02000        	memw
40380222:	9838      	l32i.n	a9, a8, 12
40380224:	22ac00        	movi	a2, 0xfffffc00
40380227:	404094        	extui	a4, a4, 0, 10
4038022a:	209910        	and	a9, a9, a2
4038022d:	409920        	or	a9, a9, a4
40380230:	c02000        	memw
40380233:	9938      	s32i.n	a9, a8, 12
40380235:	1df0      	retw.n
40380237:	003681        	src	a3, a6, a0
4038023a:	0081ea        	utrunc.s	a8, f1, 0
4038023d:	d10c09        	l32r	a13, 0x40342670
40380240:	8901      	s32i.n	a8, a1, 0
40380242:	81cfd3        	l32r	a8, 0x40375180
40380245:	9a31      	add.n	a3, a1, a9
40380247:	8911      	s32i.n	a8, a1, 4
40380249:	1ca8      	movi.n	a8, 26
4038024b:	8921      	s32i.n	a8, a1, 8
4038024d:	1c48      	movi.n	a8, 20
4038024f:	8931      	s32i.n	a8, a1, 12
40380251:	0cc8      	movi.n	a8, 12
40380253:	8941      	s32i.n	a8, a1, 16
40380255:	0c38      	movi.n	a8, 3
40380257:	8951      	s32i.n	a8, a1, 20
40380259:	0c28      	movi.n	a8, 2
4038025b:	001840        	ssl	a8
4038025e:	0022a1        	sll	a2, a2
40380261:	9971      	s32i.n	a9, a1, 28
40380263:	c1c8d3        	l32r	a12, 0x40375184
40380266:	2a93      	add.n	a9, a3, a2
40380268:	8961      	s32i.n	a8, a1, 24
4038026a:	a809      	l32i.n	a10, a9, 0
4038026c:	c02000        	memw
4038026f:	b80c      	l32i.n	a11, a12, 0
40380271:	7cf9      	movi.n	a9, -1
40380273:	a0a930        	xor	a10, a9, a10
40380276:	b0aa10        	and	a10, a10, a11
40380279:	8b31      	addi.n	a3, a1, 8
4038027b:	c02000        	memw
4038027e:	a90c      	s32i.n	a10, a12, 0
40380280:	2ab3      	add.n	a11, a3, a2
40380282:	b80b      	l32i.n	a11, a11, 0
40380284:	c02000        	memw
40380287:	d80c      	l32i.n	a13, a12, 0
40380289:	2c1a      	movi.n	a10, 33
4038028b:	001b40        	ssl	a11
4038028e:	00aaa1        	sll	a10, a10
40380291:	d0aa20        	or	a10, a10, a13
40380294:	32c110        	addi	a3, a1, 16
40380297:	c02000        	memw
4038029a:	a90c      	s32i.n	a10, a12, 0
4038029c:	b18ed1        	l32r	a11, 0x403748d4
4038029f:	2aa3      	add.n	a10, a3, a2
403802a1:	a80a      	l32i.n	a10, a10, 0
403802a3:	c02000        	memw
403802a6:	c80b      	l32i.n	a12, a11, 0
403802a8:	a09930        	xor	a9, a9, a10
403802ab:	c09910        	and	a9, a9, a12
403802ae:	32c118        	addi	a3, a1, 24
403802b1:	c02000        	memw
403802b4:	990b      	s32i.n	a9, a11, 0
403802b6:	2a23      	add.n	a2, a3, a2
403802b8:	2802      	l32i.n	a2, a2, 0
403802ba:	c02000        	memw
403802bd:	980b      	l32i.n	a9, a11, 0
403802bf:	001240        	ssl	a2
403802c2:	0088a1        	sll	a8, a8
403802c5:	908820        	or	a8, a8, a9
403802c8:	c02000        	memw
403802cb:	890b      	s32i.n	a8, a11, 0
403802cd:	1df0      	retw.n
403802cf:	00          	.byte	00
403802d0:	366100        	entry	a1, 48
403802d3:	81c4d1        	l32r	a8, 0x403749e4
403802d6:	e02211        	slli	a2, a2, 2
403802d9:	8901      	s32i.n	a8, a1, 0
403802db:	81a9d3        	l32r	a8, 0x40375180
403802de:	3d01      	mov.n	a3, a1
403802e0:	8911      	s32i.n	a8, a1, 4
403802e2:	0cc8      	movi.n	a8, 12
403802e4:	8921      	s32i.n	a8, a1, 8
403802e6:	0c38      	movi.n	a8, 3
403802e8:	8931      	s32i.n	a8, a1, 12
403802ea:	a1a6d3        	l32r	a10, 0x40375184
403802ed:	2a83      	add.n	a8, a3, a2
403802ef:	9808      	l32i.n	a9, a8, 0
403802f1:	c02000        	memw
403802f4:	b80a      	l32i.n	a11, a10, 0
403802f6:	7cf8      	movi.n	a8, -1
403802f8:	909830        	xor	a9, a8, a9
403802fb:	b09910        	and	a9, a9, a11
403802fe:	8b31      	addi.n	a3, a1, 8
40380300:	c02000        	memw
40380303:	990a      	s32i.n	a9, a10, 0
40380305:	2a23      	add.n	a2, a3, a2
40380307:	9173d1        	l32r	a9, 0x403748d4
4038030a:	2802      	l32i.n	a2, a2, 0
4038030c:	c02000        	memw
4038030f:	a809      	l32i.n	a10, a9, 0
40380311:	208830        	xor	a8, a8, a2
40380314:	a08810        	and	a8, a8, a10
40380317:	c02000        	memw
4038031a:	8909      	s32i.n	a8, a9, 0
4038031c:	1df0      	retw.n
4038031e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40380321:	410091        	l32r	a4, 0x40364724
40380324:	99d3      	s32i.n	a9, a3, 52
40380326:	0c9a      	movi.n	a10, 9
40380328:	c02000        	memw
4038032b:	8809      	l32i.n	a8, a9, 0
4038032d:	a08820        	or	a8, a8, a10
40380330:	c02000        	memw
40380333:	8909      	s32i.n	a8, a9, 0
40380335:	8195d3        	l32r	a8, 0x4037518c
40380338:	0c09      	movi.n	a9, 0
4038033a:	c02000        	memw
4038033d:	9908      	s32i.n	a9, a8, 0
4038033f:	1df0      	retw.n
40380341:	000000        	ill
40380344:	364100        	entry	a1, 32
40380347:	9190d3        	l32r	a9, 0x40375188
4038034a:	7cea      	movi.n	a10, -2
4038034c:	c02000        	memw
4038034f:	8809      	l32i.n	a8, a9, 0
40380351:	a08810        	and	a8, a8, a10
40380354:	c02000        	memw
40380357:	8909      	s32i.n	a8, a9, 0
40380359:	1df0      	retw.n
4038035b:	003641        	srli	a3, a0, 6
4038035e:	00          	.byte	00
4038035f:	818cd3        	l32r	a8, 0x40375190
40380362:	409541        	srli	a9, a4, 5
40380365:	c02000        	memw
40380368:	9908      	s32i.n	a9, a8, 0
4038036a:	818ad3        	l32r	a8, 0x40375194
4038036d:	a18ad3        	l32r	a10, 0x40375198
40380370:	c02000        	memw
40380373:	2908      	s32i.n	a2, a8, 0
40380375:	202054        	extui	a2, a2, 0, 6
40380378:	aaa2      	add.n	a10, a2, a10
4038037a:	cd04      	mov.n	a12, a4
4038037c:	bd03      	mov.n	a11, a3
4038037e:	8146d0        	l32r	a8, 0x40374498
40380381:	e00800        	callx8	a8
40380384:	2186d3        	l32r	a2, 0x4037519c
40380387:	0c18      	movi.n	a8, 1
40380389:	c02000        	memw
4038038c:	8902      	s32i.n	a8, a2, 0
4038038e:	1df0      	retw.n
40380390:	364100        	entry	a1, 32
40380393:	8183d3        	l32r	a8, 0x403751a0
40380396:	c02000        	memw
40380399:	9808      	l32i.n	a9, a8, 0
4038039b:	2619f7        	beqi	a9, 1, 0x40380396
4038039e:	9181d3        	l32r	a9, 0x403751a4
403803a1:	0c1a      	movi.n	a10, 1
403803a3:	c02000        	memw
403803a6:	a909      	s32i.n	a10, a9, 0
403803a8:	c02000        	memw
403803ab:	9808      	l32i.n	a9, a8, 0
403803ad:	6639f7        	bnei	a9, 3, 0x403803a8
403803b0:	1df0      	retw.n
403803b2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403803b5:	410081        	l32r	a4, 0x403607b8
403803b8:	7cd3      	movi.n	a3, -3
403803ba:	0c19      	movi.n	a9, 1
403803bc:	c02000        	memw
403803bf:	9908      	s32i.n	a9, a8, 0
403803c1:	1df0      	retw.n
403803c3:	003641        	srli	a3, a0, 6
403803c6:	003022        	orb	b3, b0, b0
403803c9:	e20c18        	l8ui	a14, a12, 24
403803cc:	0c03      	movi.n	a3, 0
403803ce:	203883        	moveqz	a3, a8, a2
403803d1:	2d03      	mov.n	a2, a3
403803d3:	1df0      	retw.n
403803d5:	000000        	ill
403803d8:	368100        	entry	a1, 64
403803db:	405320        	or	a5, a3, a4
403803de:	505014        	extui	a5, a5, 0, 2
403803e1:	ccf5      	bnez.n	a5, 0x403803f4
403803e3:	b2a098        	movi	a11, 152
403803e6:	cd04      	mov.n	a12, a4
403803e8:	bab2      	add.n	a11, a2, a11
403803ea:	ad03      	mov.n	a10, a3
403803ec:	812bd0        	l32r	a8, 0x40374498
403803ef:	e00800        	callx8	a8
403803f2:	1df0      	retw.n
403803f4:	3b64      	addi.n	a6, a4, 3
403803f6:	606241        	srli	a6, a6, 2
403803f9:	0c05      	movi.n	a5, 0
403803fb:	0c49      	movi.n	a9, 4
403803fd:	5716f1        	beq	a6, a5, 0x403803f2
40380400:	82c524        	addi	a8, a5, 36
40380403:	e08811        	slli	a8, a8, 2
40380406:	8a82      	add.n	a8, a2, a8
40380408:	907463        	minu	a7, a4, a9
4038040b:	c02000        	memw
4038040e:	8828      	l32i.n	a8, a8, 8
40380410:	ad03      	mov.n	a10, a3
40380412:	cd07      	mov.n	a12, a7
40380414:	b2c11c        	addi	a11, a1, 28
40380417:	9931      	s32i.n	a9, a1, 12
40380419:	8971      	s32i.n	a8, a1, 28
4038041b:	811fd0        	l32r	a8, 0x40374498
4038041e:	e00800        	callx8	a8
40380421:	7a33      	add.n	a3, a3, a7
40380423:	7044c0        	sub	a4, a4, a7
40380426:	1b55      	addi.n	a5, a5, 1
40380428:	9831      	l32i.n	a9, a1, 12
4038042a:	c6f3ff        	j	0x403803fd
4038042d:	000000        	ill
40380430:	364100        	entry	a1, 32
40380433:	8812      	l32i.n	a8, a2, 4
40380435:	0c0a      	movi.n	a10, 0
40380437:	c02000        	memw
4038043a:	a948      	s32i.n	a10, a8, 16
4038043c:	c02000        	memw
4038043f:	a928      	s32i.n	a10, a8, 8
40380441:	c02000        	memw
40380444:	b2283a        	l32i	a11, a8, 232
40380447:	0c19      	movi.n	a9, 1
40380449:	90bb20        	or	a11, a11, a9
4038044c:	c02000        	memw
4038044f:	b2683a        	s32i	a11, a8, 232
40380452:	c02000        	memw
40380455:	b2283a        	l32i	a11, a8, 232
40380458:	0c2c      	movi.n	a12, 2
4038045a:	c0bb20        	or	a11, a11, a12
4038045d:	c02000        	memw
40380460:	b2683a        	s32i	a11, a8, 232
40380463:	c02000        	memw
40380466:	b2283a        	l32i	a11, a8, 232
40380469:	0c4c      	movi.n	a12, 4
4038046b:	c0bb20        	or	a11, a11, a12
4038046e:	c02000        	memw
40380471:	b2683a        	s32i	a11, a8, 232
40380474:	c02000        	memw
40380477:	a9c8      	s32i.n	a10, a8, 48
40380479:	c02000        	memw
4038047c:	b8c8      	l32i.n	a11, a8, 48
4038047e:	c13cd1        	l32r	a12, 0x40374970
40380481:	d1bfd1        	l32r	a13, 0x40374b80
40380484:	c0bb20        	or	a11, a11, a12
40380487:	c02000        	memw
4038048a:	b9c8      	s32i.n	a11, a8, 48
4038048c:	c02000        	memw
4038048f:	b8c8      	l32i.n	a11, a8, 48
40380491:	ed0a      	mov.n	a14, a10
40380493:	d0bb20        	or	a11, a11, a13
40380496:	c02000        	memw
40380499:	b9c8      	s32i.n	a11, a8, 48
4038049b:	c02000        	memw
4038049e:	b8c8      	l32i.n	a11, a8, 48
403804a0:	d1f0d1        	l32r	a13, 0x40374c60
403804a3:	7cef      	movi.n	a15, -2
403804a5:	d0bb10        	and	a11, a11, a13
403804a8:	c02000        	memw
403804ab:	b9c8      	s32i.n	a11, a8, 48
403804ad:	c02000        	memw
403804b0:	d888      	l32i.n	a13, a8, 32
403804b2:	b822      	l32i.n	a11, a2, 8
403804b4:	f0dd10        	and	a13, a13, a15
403804b7:	b0e993        	movnez	a14, a9, a11
403804ba:	e0dd20        	or	a13, a13, a14
403804bd:	c02000        	memw
403804c0:	d988      	s32i.n	a13, a8, 32
403804c2:	c02000        	memw
403804c5:	d888      	l32i.n	a13, a8, 32
403804c7:	0bbb      	addi.n	a11, a11, -1
403804c9:	3d0a      	mov.n	a3, a10
403804cb:	b03993        	movnez	a3, a9, a11
403804ce:	7cde      	movi.n	a14, -3
403804d0:	001940        	ssl	a9
403804d3:	00b3a1        	sll	a11, a3
403804d6:	e0dd10        	and	a13, a13, a14
403804d9:	b0bd20        	or	a11, a13, a11
403804dc:	c02000        	memw
403804df:	b988      	s32i.n	a11, a8, 32
403804e1:	c02000        	memw
403804e4:	b842      	l32i.n	a11, a2, 16
403804e6:	f131d3        	l32r	a15, 0x403751ac
403804e9:	c02000        	memw
403804ec:	b938      	s32i.n	a11, a8, 12
403804ee:	b2020e        	l8ui	a11, a2, 14
403804f1:	c02000        	memw
403804f4:	d858      	l32i.n	a13, a8, 20
403804f6:	0beb      	addi.n	a14, a11, -1
403804f8:	e0e044        	extui	a14, a14, 0, 5
403804fb:	a0ee01        	slli	a14, a14, 22
403804fe:	f0dd10        	and	a13, a13, a15
40380501:	e0dd20        	or	a13, a13, a14
40380504:	c02000        	memw
40380507:	d958      	s32i.n	a13, a8, 20
40380509:	c02000        	memw
4038050c:	d848      	l32i.n	a13, a8, 16
4038050e:	3d0a      	mov.n	a3, a10
40380510:	b03993        	movnez	a3, a9, a11
40380513:	e2afbf        	movi	a14, -65
40380516:	e0dd10        	and	a13, a13, a14
40380519:	a0b311        	slli	a11, a3, 6
4038051c:	b0bd20        	or	a11, a13, a11
4038051f:	c02000        	memw
40380522:	b948      	s32i.n	a11, a8, 16
40380524:	b2020d        	l8ui	a11, a2, 13
40380527:	c02000        	memw
4038052a:	d848      	l32i.n	a13, a8, 16
4038052c:	b09a83        	moveqz	a9, a10, a11
4038052f:	22af7f        	movi	a2, -129
40380532:	20dd10        	and	a13, a13, a2
40380535:	909911        	slli	a9, a9, 7
40380538:	909d20        	or	a9, a13, a9
4038053b:	c02000        	memw
4038053e:	9948      	s32i.n	a9, a8, 16
40380540:	c02000        	memw
40380543:	9858      	l32i.n	a9, a8, 20
40380545:	211ad3        	l32r	a2, 0x403751b0
40380548:	0bbb      	addi.n	a11, a11, -1
4038054a:	b0b044        	extui	a11, a11, 0, 5
4038054d:	209910        	and	a9, a9, a2
40380550:	f0bb01        	slli	a11, a11, 17
40380553:	b0b920        	or	a11, a9, a11
40380556:	c02000        	memw
40380559:	b958      	s32i.n	a11, a8, 20
4038055b:	c02000        	memw
4038055e:	2828      	l32i.n	a2, a8, 8
40380560:	c0c220        	or	a12, a2, a12
40380563:	c02000        	memw
40380566:	c928      	s32i.n	a12, a8, 8
40380568:	2d0a      	mov.n	a2, a10
4038056a:	1df0      	retw.n
4038056c:	368100        	entry	a1, 64
4038056f:	8812      	l32i.n	a8, a2, 4
40380571:	7c79      	movi.n	a9, -9
40380573:	c02000        	memw
40380576:	b828      	l32i.n	a11, a8, 8
40380578:	60a0f4        	extui	a10, a6, 0, 16
4038057b:	606f05        	extui	a6, a6, 31, 1
4038057e:	90bb10        	and	a11, a11, a9
40380581:	d06611        	slli	a6, a6, 3
40380584:	606b20        	or	a6, a11, a6
40380587:	c02000        	memw
4038058a:	6928      	s32i.n	a6, a8, 8
4038058c:	c02000        	memw
4038058f:	6828      	l32i.n	a6, a8, 8
40380591:	91d8cf        	l32r	a9, 0x403744f4
40380594:	c1d1cf        	l32r	a12, 0x403744d8
40380597:	906620        	or	a6, a6, a9
4038059a:	c02000        	memw
4038059d:	6928      	s32i.n	a6, a8, 8
4038059f:	c02000        	memw
403805a2:	6828      	l32i.n	a6, a8, 8
403805a4:	9177d1        	l32r	a9, 0x40374b80
403805a7:	906620        	or	a6, a6, a9
403805aa:	c02000        	memw
403805ad:	6928      	s32i.n	a6, a8, 8
403805af:	62a0ff        	movi	a6, 255
403805b2:	91c6cf        	l32r	a9, 0x403744cc
403805b5:	373602        	bltu	a6, a3, 0x403805bb
403805b8:	465e00        	j	0x40380735
403805bb:	c02000        	memw
403805be:	6848      	l32i.n	a6, a8, 16
403805c0:	303074        	extui	a3, a3, 0, 8
403805c3:	906620        	or	a6, a6, a9
403805c6:	c02000        	memw
403805c9:	6948      	s32i.n	a6, a8, 16
403805cb:	0c06      	movi.n	a6, 0
403805cd:	c02000        	memw
403805d0:	6931      	s32i.n	a6, a1, 12
403805d2:	c02000        	memw
403805d5:	9831      	l32i.n	a9, a1, 12
403805d7:	61f7d2        	l32r	a6, 0x403751b4
403805da:	c09910        	and	a9, a9, a12
403805dd:	303920        	or	a3, a9, a3
403805e0:	c02000        	memw
403805e3:	3931      	s32i.n	a3, a1, 12
403805e5:	c02000        	memw
403805e8:	3831      	l32i.n	a3, a1, 12
403805ea:	603320        	or	a3, a3, a6
403805ed:	c02000        	memw
403805f0:	3931      	s32i.n	a3, a1, 12
403805f2:	c02000        	memw
403805f5:	3831      	l32i.n	a3, a1, 12
403805f7:	c02000        	memw
403805fa:	3968      	s32i.n	a3, a8, 24
403805fc:	c02000        	memw
403805ff:	3858      	l32i.n	a3, a8, 20
40380601:	91cbd0        	l32r	a9, 0x40374930
40380604:	0b64      	addi.n	a6, a4, -1
40380606:	506601        	slli	a6, a6, 27
40380609:	903310        	and	a3, a3, a9
4038060c:	603320        	or	a3, a3, a6
4038060f:	0c0b      	movi.n	a11, 0
40380611:	c02000        	memw
40380614:	3958      	s32i.n	a3, a8, 20
40380616:	6d0b      	mov.n	a6, a11
40380618:	0c13      	movi.n	a3, 1
4038061a:	406393        	movnez	a6, a3, a4
4038061d:	91afcf        	l32r	a9, 0x403744dc
40380620:	4d06      	mov.n	a4, a6
40380622:	c02000        	memw
40380625:	6848      	l32i.n	a6, a8, 16
40380627:	204401        	slli	a4, a4, 30
4038062a:	906610        	and	a6, a6, a9
4038062d:	404620        	or	a4, a6, a4
40380630:	c02000        	memw
40380633:	4948      	s32i.n	a4, a8, 16
40380635:	92020c        	l8ui	a9, a2, 12
40380638:	41accf        	l32r	a4, 0x403744e8
4038063b:	c02000        	memw
4038063e:	2848      	l32i.n	a2, a8, 16
40380640:	5a59      	add.n	a5, a9, a5
40380642:	503b83        	moveqz	a3, a11, a5
40380645:	402210        	and	a2, a2, a4
40380648:	303301        	slli	a3, a3, 29
4038064b:	303220        	or	a3, a2, a3
4038064e:	c02000        	memw
40380651:	3948      	s32i.n	a3, a8, 16
40380653:	c02000        	memw
40380656:	2858      	l32i.n	a2, a8, 20
40380658:	32af00        	movi	a3, 0xffffff00
4038065b:	c02000        	memw
4038065e:	2971      	s32i.n	a2, a1, 28
40380660:	c02000        	memw
40380663:	2871      	l32i.n	a2, a1, 28
40380665:	0b55      	addi.n	a5, a5, -1
40380667:	302210        	and	a2, a2, a3
4038066a:	505074        	extui	a5, a5, 0, 8
4038066d:	505220        	or	a5, a2, a5
40380670:	c02000        	memw
40380673:	5971      	s32i.n	a5, a1, 28
40380675:	c02000        	memw
40380678:	2871      	l32i.n	a2, a1, 28
4038067a:	319dcf        	l32r	a3, 0x403744f0
4038067d:	c02000        	memw
40380680:	2958      	s32i.n	a2, a8, 20
40380682:	c02000        	memw
40380685:	2848      	l32i.n	a2, a8, 16
40380687:	302210        	and	a2, a2, a3
4038068a:	c02000        	memw
4038068d:	2948      	s32i.n	a2, a8, 16
4038068f:	c02000        	memw
40380692:	2848      	l32i.n	a2, a8, 16
40380694:	3196cf        	l32r	a3, 0x403744ec
40380697:	302210        	and	a2, a2, a3
4038069a:	c02000        	memw
4038069d:	2948      	s32i.n	a2, a8, 16
4038069f:	c02000        	memw
403806a2:	2828      	l32i.n	a2, a8, 8
403806a4:	31c5d2        	l32r	a3, 0x403751b8
403806a7:	c02000        	memw
403806aa:	2951      	s32i.n	a2, a1, 20
403806ac:	c02000        	memw
403806af:	2848      	l32i.n	a2, a8, 16
403806b1:	c02000        	memw
403806b4:	2961      	s32i.n	a2, a1, 24
403806b6:	c02000        	memw
403806b9:	2851      	l32i.n	a2, a1, 20
403806bb:	302210        	and	a2, a2, a3
403806be:	c02000        	memw
403806c1:	2951      	s32i.n	a2, a1, 20
403806c3:	c02000        	memw
403806c6:	2861      	l32i.n	a2, a1, 24
403806c8:	31bdd2        	l32r	a3, 0x403751bc
403806cb:	302210        	and	a2, a2, a3
403806ce:	c02000        	memw
403806d1:	2961      	s32i.n	a2, a1, 24
403806d3:	662a02        	bnei	a10, 2, 0x403806d9
403806d6:	863600        	j	0x403807b4
403806d9:	b62a40        	bltui	a10, 2, 0x4038071d
403806dc:	664a02        	bnei	a10, 4, 0x403806e2
403806df:	462600        	j	0x4038077c
403806e2:	f64a02        	bgeui	a10, 4, 0x403806e8
403806e5:	c62700        	j	0x40380788
403806e8:	265a02        	beqi	a10, 5, 0x403806ee
403806eb:	463400        	j	0x403807c0
403806ee:	c02000        	memw
403806f1:	2851      	l32i.n	a2, a1, 20
403806f3:	3162cf        	l32r	a3, 0x4037447c
403806f6:	302220        	or	a2, a2, a3
403806f9:	c02000        	memw
403806fc:	2951      	s32i.n	a2, a1, 20
403806fe:	c02000        	memw
40380701:	2851      	l32i.n	a2, a1, 20
40380703:	4c03      	movi.n	a3, 64
40380705:	302220        	or	a2, a2, a3
40380708:	c02000        	memw
4038070b:	2951      	s32i.n	a2, a1, 20
4038070d:	c02000        	memw
40380710:	2861      	l32i.n	a2, a1, 24
40380712:	3151cf        	l32r	a3, 0x40374458
40380715:	302220        	or	a2, a2, a3
40380718:	c02000        	memw
4038071b:	2961      	s32i.n	a2, a1, 24
4038071d:	c02000        	memw
40380720:	2851      	l32i.n	a2, a1, 20
40380722:	c02000        	memw
40380725:	2928      	s32i.n	a2, a8, 8
40380727:	c02000        	memw
4038072a:	2861      	l32i.n	a2, a1, 24
4038072c:	c02000        	memw
4038072f:	2948      	s32i.n	a2, a8, 16
40380731:	0c02      	movi.n	a2, 0
40380733:	1df0      	retw.n
40380735:	c02000        	memw
40380738:	6848      	l32i.n	a6, a8, 16
4038073a:	3030f4        	extui	a3, a3, 0, 16
4038073d:	906620        	or	a6, a6, a9
40380740:	c02000        	memw
40380743:	6948      	s32i.n	a6, a8, 16
40380745:	0c06      	movi.n	a6, 0
40380747:	c02000        	memw
4038074a:	6941      	s32i.n	a6, a1, 16
4038074c:	c02000        	memw
4038074f:	6841      	l32i.n	a6, a1, 16
40380751:	c06610        	and	a6, a6, a12
40380754:	303620        	or	a3, a6, a3
40380757:	c02000        	memw
4038075a:	3941      	s32i.n	a3, a1, 16
4038075c:	c02000        	memw
4038075f:	3841      	l32i.n	a3, a1, 16
40380761:	615bcf        	l32r	a6, 0x403744d0
40380764:	603310        	and	a3, a3, a6
40380767:	615bcf        	l32r	a6, 0x403744d4
4038076a:	603320        	or	a3, a3, a6
4038076d:	c02000        	memw
40380770:	3941      	s32i.n	a3, a1, 16
40380772:	c02000        	memw
40380775:	3841      	l32i.n	a3, a1, 16
40380777:	069fff        	j	0x403805f7
4038077a:	0000c0        	sub	a0, a0, a0
4038077d:	20          	.byte	0x20
4038077e:	00          	.byte	00
4038077f:	2851      	l32i.n	a2, a1, 20
40380781:	313ecf        	l32r	a3, 0x4037447c
40380784:	46dfff        	j	0x40380705
40380787:	00c020        	or	a12, a0, a0
4038078a:	00          	.byte	00
4038078b:	2851      	l32i.n	a2, a1, 20
4038078d:	3160cf        	l32r	a3, 0x40374510
40380790:	302220        	or	a2, a2, a3
40380793:	c02000        	memw
40380796:	2951      	s32i.n	a2, a1, 20
40380798:	c02000        	memw
4038079b:	2851      	l32i.n	a2, a1, 20
4038079d:	2c03      	movi.n	a3, 32
4038079f:	302220        	or	a2, a2, a3
403807a2:	c02000        	memw
403807a5:	2951      	s32i.n	a2, a1, 20
403807a7:	c02000        	memw
403807aa:	2861      	l32i.n	a2, a1, 24
403807ac:	3182cf        	l32r	a3, 0x403745b4
403807af:	86d8ff        	j	0x40380715
403807b2:	0000c0        	sub	a0, a0, a0
403807b5:	20          	.byte	0x20
403807b6:	00          	.byte	00
403807b7:	2851      	l32i.n	a2, a1, 20
403807b9:	3155cf        	l32r	a3, 0x40374510
403807bc:	c6f7ff        	j	0x4038079f
403807bf:	00a510        	and	a10, a5, a0
403807c2:	020036        	l8ui	a0, a0, 54
403807c5:	810058        	l32r	a8, 0x403567c8
403807c8:	434812        	ssi	f4, a8, 72
403807cb:	e22205        	l32i	a14, a2, 20
403807ce:	b2130a        	l16ui	a11, a3, 20
403807d1:	620316        	l8ui	a6, a3, 22
403807d4:	176502        	bbci	a5, 1, 0x403807da
403807d7:	e22306        	l32i	a14, a3, 24
403807da:	5802      	l32i.n	a5, a2, 0
403807dc:	c20303        	l8ui	a12, a3, 3
403807df:	58f5      	l32i.n	a5, a5, 60
403807e1:	dd06      	mov.n	a13, a6
403807e3:	ad02      	mov.n	a10, a2
403807e5:	e00500        	callx8	a5
403807e8:	720303        	l8ui	a7, a3, 3
403807eb:	522301        	l32i	a5, a3, 4
403807ee:	0c08      	movi.n	a8, 0
403807f0:	26c708        	beqi	a7, 32, 0x403807fc
403807f3:	82afff        	movi	a8, -1
403807f6:	000740        	ssr	a7
403807f9:	808091        	srl	a8, a8
403807fc:	707060        	neg	a7, a7
403807ff:	001740        	ssl	a7
40380802:	0055a1        	sll	a5, a5
40380805:	805520        	or	a5, a5, a8
40380808:	c02000        	memw
4038080b:	5914      	s32i.n	a5, a4, 4
4038080d:	520302        	l8ui	a5, a3, 2
40380810:	569504        	bnez	a5, 0x4038085d
40380813:	0c18      	movi.n	a8, 1
40380815:	c02000        	memw
40380818:	7844      	l32i.n	a7, a4, 16
4038081a:	608583        	moveqz	a8, a5, a6
4038081d:	9132cf        	l32r	a9, 0x403744e8
40380820:	808004        	extui	a8, a8, 0, 1
40380823:	907710        	and	a7, a7, a9
40380826:	308801        	slli	a8, a8, 29
40380829:	808720        	or	a8, a7, a8
4038082c:	c02000        	memw
4038082f:	8944      	s32i.n	a8, a4, 16
40380831:	c02000        	memw
40380834:	7854      	l32i.n	a7, a4, 20
40380836:	0b66      	addi.n	a6, a6, -1
40380838:	c02000        	memw
4038083b:	7961      	s32i.n	a7, a1, 24
4038083d:	c02000        	memw
40380840:	7861      	l32i.n	a7, a1, 24
40380842:	82af00        	movi	a8, 0xffffff00
40380845:	606074        	extui	a6, a6, 0, 8
40380848:	807710        	and	a7, a7, a8
4038084b:	606720        	or	a6, a7, a6
4038084e:	c02000        	memw
40380851:	6961      	s32i.n	a6, a1, 24
40380853:	c02000        	memw
40380856:	6861      	l32i.n	a6, a1, 24
40380858:	c02000        	memw
4038085b:	6954      	s32i.n	a6, a4, 20
4038085d:	620301        	l8ui	a6, a3, 1
40380860:	0c07      	movi.n	a7, 0
40380862:	d08611        	slli	a8, a6, 3
40380865:	0c19      	movi.n	a9, 1
40380867:	809783        	moveqz	a9, a7, a8
4038086a:	a120cf        	l32r	a10, 0x403744ec
4038086d:	c02000        	memw
40380870:	7844      	l32i.n	a7, a4, 16
40380872:	509901        	slli	a9, a9, 27
40380875:	a07710        	and	a7, a7, a10
40380878:	907720        	or	a7, a7, a9
4038087b:	c02000        	memw
4038087e:	7944      	s32i.n	a7, a4, 16
40380880:	9c98      	beqz.n	a8, 0x4038089d
40380882:	914fd2        	l32r	a9, 0x403751c0
40380885:	0b88      	addi.n	a8, a8, -1
40380887:	c02000        	memw
4038088a:	7874      	l32i.n	a7, a4, 28
4038088c:	908810        	and	a8, a8, a9
4038088f:	914dd2        	l32r	a9, 0x403751c4
40380892:	907710        	and	a7, a7, a9
40380895:	808720        	or	a8, a7, a8
40380898:	c02000        	memw
4038089b:	8974      	s32i.n	a8, a4, 28
4038089d:	3b86      	addi.n	a8, a6, 3
4038089f:	0c07      	movi.n	a7, 0
403808a1:	e823      	l32i.n	a14, a3, 8
403808a3:	808241        	srli	a8, a8, 2
403808a6:	dd07      	mov.n	a13, a7
403808a8:	87a702        	bge	a7, a8, 0x403808ae
403808ab:	461f00        	j	0x4038092c
403808ae:	c02000        	memw
403808b1:	6844      	l32i.n	a6, a4, 16
403808b3:	d05511        	slli	a5, a5, 3
403808b6:	0c18      	movi.n	a8, 1
403808b8:	710ecf        	l32r	a7, 0x403744f0
403808bb:	508d83        	moveqz	a8, a13, a5
403808be:	408801        	slli	a8, a8, 28
403808c1:	706610        	and	a6, a6, a7
403808c4:	806620        	or	a6, a6, a8
403808c7:	c02000        	memw
403808ca:	6944      	s32i.n	a6, a4, 16
403808cc:	9c95      	beqz.n	a5, 0x403808e9
403808ce:	713cd2        	l32r	a7, 0x403751c0
403808d1:	0b55      	addi.n	a5, a5, -1
403808d3:	c02000        	memw
403808d6:	6874      	l32i.n	a6, a4, 28
403808d8:	705510        	and	a5, a5, a7
403808db:	713ad2        	l32r	a7, 0x403751c4
403808de:	706610        	and	a6, a6, a7
403808e1:	505620        	or	a5, a6, a5
403808e4:	c02000        	memw
403808e7:	5974      	s32i.n	a5, a4, 28
403808e9:	c02000        	memw
403808ec:	5804      	l32i.n	a5, a4, 0
403808ee:	6136d2        	l32r	a6, 0x403751c8
403808f1:	605520        	or	a5, a5, a6
403808f4:	c02000        	memw
403808f7:	5904      	s32i.n	a5, a4, 0
403808f9:	c02000        	memw
403808fc:	5804      	l32i.n	a5, a4, 0
403808fe:	77f5f7        	bbsi	a5, 23, 0x403808f9
40380901:	c02000        	memw
40380904:	5804      	l32i.n	a5, a4, 0
40380906:	6123cf        	l32r	a6, 0x40374594
40380909:	ad02      	mov.n	a10, a2
4038090b:	605520        	or	a5, a5, a6
4038090e:	c02000        	memw
40380911:	5904      	s32i.n	a5, a4, 0
40380913:	522200        	l32i	a5, a2, 0
40380916:	522510        	l32i	a5, a5, 64
40380919:	e00500        	callx8	a5
4038091c:	c20302        	l8ui	a12, a3, 2
4038091f:	8c5c      	beqz.n	a12, 0x40380928
40380921:	b833      	l32i.n	a11, a3, 12
40380923:	ad04      	mov.n	a10, a4
40380925:	25abff        	call8	0x403803d8
40380928:	0c02      	movi.n	a2, 0
4038092a:	1df0      	retw.n
4038092c:	0c49      	movi.n	a9, 4
4038092e:	909663        	minu	a9, a6, a9
40380931:	bd0e      	mov.n	a11, a14
40380933:	cd09      	mov.n	a12, a9
40380935:	a2c11c        	addi	a10, a1, 28
40380938:	d971      	s32i.n	a13, a1, 28
4038093a:	8931      	s32i.n	a8, a1, 12
4038093c:	9921      	s32i.n	a9, a1, 8
4038093e:	d901      	s32i.n	a13, a1, 0
40380940:	e911      	s32i.n	a14, a1, 4
40380942:	81d5ce        	l32r	a8, 0x40374498
40380945:	e00800        	callx8	a8
40380948:	a2c724        	addi	a10, a7, 36
4038094b:	9821      	l32i.n	a9, a1, 8
4038094d:	b871      	l32i.n	a11, a1, 28
4038094f:	e0aa11        	slli	a10, a10, 2
40380952:	e811      	l32i.n	a14, a1, 4
40380954:	aaa4      	add.n	a10, a4, a10
40380956:	c02000        	memw
40380959:	b92a      	s32i.n	a11, a10, 8
4038095b:	9066c0        	sub	a6, a6, a9
4038095e:	9aee      	add.n	a14, a14, a9
40380960:	1b77      	addi.n	a7, a7, 1
40380962:	d801      	l32i.n	a13, a1, 0
40380964:	8831      	l32i.n	a8, a1, 12
40380966:	86cfff        	j	0x403808a8
40380969:	000000        	ill
4038096c:	364100        	entry	a1, 32
4038096f:	6812      	l32i.n	a6, a2, 4
40380971:	ad02      	mov.n	a10, a2
40380973:	c02000        	memw
40380976:	9846      	l32i.n	a9, a6, 16
40380978:	82a000        	movi	a8, 0
4038097b:	e7790b        	bbci	a9, 30, 0x4038098a
4038097e:	c02000        	memw
40380981:	822605        	l32i	a8, a6, 20
40380984:	808b45        	extui	a8, a8, 27, 5
40380987:	82c801        	addi	a8, a8, 1
4038098a:	7c89      	movi.n	a9, -8
4038098c:	908810        	and	a8, a8, a9
4038098f:	0c09      	movi.n	a9, 0
40380991:	26c807        	beqi	a8, 32, 0x4038099c
40380994:	7cf9      	movi.n	a9, -1
40380996:	000840        	ssr	a8
40380999:	909091        	srl	a9, a9
4038099c:	808060        	neg	a8, a8
4038099f:	001840        	ssl	a8
403809a2:	0084a1        	sll	a8, a4
403809a5:	908820        	or	a8, a8, a9
403809a8:	c02000        	memw
403809ab:	8916      	s32i.n	a8, a6, 4
403809ad:	0c09      	movi.n	a9, 0
403809af:	d08511        	slli	a8, a5, 3
403809b2:	0c1b      	movi.n	a11, 1
403809b4:	80b983        	moveqz	a11, a9, a8
403809b7:	41cece        	l32r	a4, 0x403744f0
403809ba:	c02000        	memw
403809bd:	9846      	l32i.n	a9, a6, 16
403809bf:	40bb01        	slli	a11, a11, 28
403809c2:	409910        	and	a9, a9, a4
403809c5:	b09920        	or	a9, a9, a11
403809c8:	c02000        	memw
403809cb:	9946      	s32i.n	a9, a6, 16
403809cd:	9cb8      	beqz.n	a8, 0x403809ec
403809cf:	41fcd1        	l32r	a4, 0x403751c0
403809d2:	0b88      	addi.n	a8, a8, -1
403809d4:	c02000        	memw
403809d7:	922607        	l32i	a9, a6, 28
403809da:	408810        	and	a8, a8, a4
403809dd:	41f9d1        	l32r	a4, 0x403751c4
403809e0:	409910        	and	a9, a9, a4
403809e3:	808920        	or	a8, a9, a8
403809e6:	c02000        	memw
403809e9:	826607        	s32i	a8, a6, 28
403809ec:	c02000        	memw
403809ef:	4806      	l32i.n	a4, a6, 0
403809f1:	81f5d1        	l32r	a8, 0x403751c8
403809f4:	804420        	or	a4, a4, a8
403809f7:	c02000        	memw
403809fa:	4906      	s32i.n	a4, a6, 0
403809fc:	c02000        	memw
403809ff:	422600        	l32i	a4, a6, 0
40380a02:	77f4f6        	bbsi	a4, 23, 0x403809fc
40380a05:	c02000        	memw
40380a08:	422600        	l32i	a4, a6, 0
40380a0b:	81e2ce        	l32r	a8, 0x40374594
40380a0e:	804420        	or	a4, a4, a8
40380a11:	c02000        	memw
40380a14:	426600        	s32i	a4, a6, 0
40380a17:	480a      	l32i.n	a4, a10, 0
40380a19:	422410        	l32i	a4, a4, 64
40380a1c:	e00400        	callx8	a4
40380a1f:	8c75      	beqz.n	a5, 0x40380a2a
40380a21:	cd05      	mov.n	a12, a5
40380a23:	bd03      	mov.n	a11, a3
40380a25:	ad06      	mov.n	a10, a6
40380a27:	259bff        	call8	0x403803d8
40380a2a:	0c02      	movi.n	a2, 0
40380a2c:	1df0      	retw.n
40380a2e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40380a31:	410098        	l32r	a4, 0x40366a34
40380a34:	12c020        	addi	a1, a0, 32
40380a37:	008809        	l32e	a0, a8, -32
40380a3a:	87f8f7        	bbsi	a8, 24, 0x40380a35
40380a3d:	1df0      	retw.n
40380a3f:	003641        	srli	a3, a0, 6
40380a42:	000c12        	andbc	b0, b12, b0
40380a45:	1df0      	retw.n
40380a47:	003641        	srli	a3, a0, 6
40380a4a:	000c12        	andbc	b0, b12, b0
40380a4d:	1df0      	retw.n
40380a4f:	003641        	srli	a3, a0, 6
40380a52:	002812        	andbc	b2, b8, b0
40380a55:	c02000        	memw
40380a58:	8802      	l32i.n	a8, a2, 0
40380a5a:	0c12      	movi.n	a2, 1
40380a5c:	808805        	extui	a8, a8, 24, 1
40380a5f:	202830        	xor	a2, a8, a2
40380a62:	1df0      	retw.n
40380a64:	366100        	entry	a1, 48
40380a67:	3b74      	addi.n	a7, a4, 3
40380a69:	707241        	srli	a7, a7, 2
40380a6c:	0c06      	movi.n	a6, 0
40380a6e:	772602        	blt	a6, a7, 0x40380a74
40380a71:	1df0      	retw.n
40380a73:	000c05        	extui	a0, a0, 28, 1
40380a76:	5931      	s32i.n	a5, a1, 12
40380a78:	0c45      	movi.n	a5, 4
40380a7a:	505463        	minu	a5, a4, a5
40380a7d:	bd03      	mov.n	a11, a3
40380a7f:	cd05      	mov.n	a12, a5
40380a81:	cba1      	addi.n	a10, a1, 12
40380a83:	8185ce        	l32r	a8, 0x40374498
40380a86:	e00800        	callx8	a8
40380a89:	82c614        	addi	a8, a6, 20
40380a8c:	9831      	l32i.n	a9, a1, 12
40380a8e:	e08811        	slli	a8, a8, 2
40380a91:	8a82      	add.n	a8, a2, a8
40380a93:	c02000        	memw
40380a96:	9928      	s32i.n	a9, a8, 8
40380a98:	5044c0        	sub	a4, a4, a5
40380a9b:	5a33      	add.n	a3, a3, a5
40380a9d:	1b66      	addi.n	a6, a6, 1
40380a9f:	c6f2ff        	j	0x40380a6e
40380aa2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40380aa5:	810040        	l32r	a8, 0x40350aa8
40380aa8:	53          	.byte	0x53
40380aa9:	205050        	pitlb	a2, a0
40380aac:	14ccd5        	ee.vldbc.8.ip	q3, a1, 76
40380aaf:	cd04      	mov.n	a12, a4
40380ab1:	b2c258        	addi	a11, a2, 88
40380ab4:	ad03      	mov.n	a10, a3
40380ab6:	8178ce        	l32r	a8, 0x40374498
40380ab9:	e00800        	callx8	a8
40380abc:	1df0      	retw.n
40380abe:	3b64      	addi.n	a6, a4, 3
40380ac0:	606241        	srli	a6, a6, 2
40380ac3:	0c05      	movi.n	a5, 0
40380ac5:	0c49      	movi.n	a9, 4
40380ac7:	5716f1        	beq	a6, a5, 0x40380abc
40380aca:	82c514        	addi	a8, a5, 20
40380acd:	e08811        	slli	a8, a8, 2
40380ad0:	8a82      	add.n	a8, a2, a8
40380ad2:	907463        	minu	a7, a4, a9
40380ad5:	c02000        	memw
40380ad8:	8828      	l32i.n	a8, a8, 8
40380ada:	ad03      	mov.n	a10, a3
40380adc:	cd07      	mov.n	a12, a7
40380ade:	b2c11c        	addi	a11, a1, 28
40380ae1:	9931      	s32i.n	a9, a1, 12
40380ae3:	826107        	s32i	a8, a1, 28
40380ae6:	816cce        	l32r	a8, 0x40374498
40380ae9:	e00800        	callx8	a8
40380aec:	7a33      	add.n	a3, a3, a7
40380aee:	7044c0        	sub	a4, a4, a7
40380af1:	1b55      	addi.n	a5, a5, 1
40380af3:	9831      	l32i.n	a9, a1, 12
40380af5:	86f3ff        	j	0x40380ac7
40380af8:	366100        	entry	a1, 48
40380afb:	8812      	l32i.n	a8, a2, 4
40380afd:	7c7c      	movi.n	a12, -9
40380aff:	c02000        	memw
40380b02:	a828      	l32i.n	a10, a8, 8
40380b04:	6090f4        	extui	a9, a6, 0, 16
40380b07:	606f05        	extui	a6, a6, 31, 1
40380b0a:	d06611        	slli	a6, a6, 3
40380b0d:	c0aa10        	and	a10, a10, a12
40380b10:	60aa20        	or	a10, a10, a6
40380b13:	c02000        	memw
40380b16:	a928      	s32i.n	a10, a8, 8
40380b18:	c02000        	memw
40380b1b:	6828      	l32i.n	a6, a8, 8
40380b1d:	a175ce        	l32r	a10, 0x403744f4
40380b20:	c2a0ff        	movi	a12, 255
40380b23:	a06620        	or	a6, a6, a10
40380b26:	c02000        	memw
40380b29:	6928      	s32i.n	a6, a8, 8
40380b2b:	c02000        	memw
40380b2e:	6828      	l32i.n	a6, a8, 8
40380b30:	a114d0        	l32r	a10, 0x40374b80
40380b33:	b169ce        	l32r	a11, 0x403744d8
40380b36:	a06620        	or	a6, a6, a10
40380b39:	c02000        	memw
40380b3c:	6928      	s32i.n	a6, a8, 8
40380b3e:	30a0f4        	extui	a10, a3, 0, 16
40380b41:	6162ce        	l32r	a6, 0x403744cc
40380b44:	373c02        	bltu	a12, a3, 0x40380b4a
40380b47:	465900        	j	0x40380cb0
40380b4a:	c02000        	memw
40380b4d:	3868      	l32i.n	a3, a8, 24
40380b4f:	603320        	or	a3, a3, a6
40380b52:	c02000        	memw
40380b55:	3968      	s32i.n	a3, a8, 24
40380b57:	0c03      	movi.n	a3, 0
40380b59:	c02000        	memw
40380b5c:	3911      	s32i.n	a3, a1, 4
40380b5e:	c02000        	memw
40380b61:	6811      	l32i.n	a6, a1, 4
40380b63:	b06610        	and	a6, a6, a11
40380b66:	a06620        	or	a6, a6, a10
40380b69:	c02000        	memw
40380b6c:	6911      	s32i.n	a6, a1, 4
40380b6e:	c02000        	memw
40380b71:	3811      	l32i.n	a3, a1, 4
40380b73:	6190d1        	l32r	a6, 0x403751b4
40380b76:	603320        	or	a3, a3, a6
40380b79:	c02000        	memw
40380b7c:	3911      	s32i.n	a3, a1, 4
40380b7e:	c02000        	memw
40380b81:	3811      	l32i.n	a3, a1, 4
40380b83:	0c0b      	movi.n	a11, 0
40380b85:	c02000        	memw
40380b88:	3988      	s32i.n	a3, a8, 32
40380b8a:	0c16      	movi.n	a6, 1
40380b8c:	c2c4e0        	addi	a12, a4, -32
40380b8f:	3d0b      	mov.n	a3, a11
40380b91:	c02000        	memw
40380b94:	a8f8      	l32i.n	a10, a8, 60
40380b96:	c03683        	moveqz	a3, a6, a12
40380b99:	001640        	ssl	a6
40380b9c:	00c3a1        	sll	a12, a3
40380b9f:	7cd3      	movi.n	a3, -3
40380ba1:	30aa10        	and	a10, a10, a3
40380ba4:	c0aa20        	or	a10, a10, a12
40380ba7:	c02000        	memw
40380baa:	a9f8      	s32i.n	a10, a8, 60
40380bac:	c02000        	memw
40380baf:	a878      	l32i.n	a10, a8, 28
40380bb1:	c14bce        	l32r	a12, 0x403744e0
40380bb4:	0b34      	addi.n	a3, a4, -1
40380bb6:	603301        	slli	a3, a3, 26
40380bb9:	c0aa10        	and	a10, a10, a12
40380bbc:	30aa20        	or	a10, a10, a3
40380bbf:	3d0b      	mov.n	a3, a11
40380bc1:	c02000        	memw
40380bc4:	a978      	s32i.n	a10, a8, 28
40380bc6:	403693        	movnez	a3, a6, a4
40380bc9:	c02000        	memw
40380bcc:	a868      	l32i.n	a10, a8, 24
40380bce:	204301        	slli	a4, a3, 30
40380bd1:	3142ce        	l32r	a3, 0x403744dc
40380bd4:	30aa10        	and	a10, a10, a3
40380bd7:	404a20        	or	a4, a10, a4
40380bda:	c02000        	memw
40380bdd:	4968      	s32i.n	a4, a8, 24
40380bdf:	a2020c        	l8ui	a10, a2, 12
40380be2:	3141ce        	l32r	a3, 0x403744e8
40380be5:	c02000        	memw
40380be8:	2868      	l32i.n	a2, a8, 24
40380bea:	5a5a      	add.n	a5, a10, a5
40380bec:	50b693        	movnez	a11, a6, a5
40380bef:	302210        	and	a2, a2, a3
40380bf2:	30bb01        	slli	a11, a11, 29
40380bf5:	b0b220        	or	a11, a2, a11
40380bf8:	c02000        	memw
40380bfb:	b968      	s32i.n	a11, a8, 24
40380bfd:	c02000        	memw
40380c00:	2878      	l32i.n	a2, a8, 28
40380c02:	32afc0        	movi	a3, -64
40380c05:	0b55      	addi.n	a5, a5, -1
40380c07:	302210        	and	a2, a2, a3
40380c0a:	505054        	extui	a5, a5, 0, 6
40380c0d:	505220        	or	a5, a2, a5
40380c10:	c02000        	memw
40380c13:	5978      	s32i.n	a5, a8, 28
40380c15:	c02000        	memw
40380c18:	2868      	l32i.n	a2, a8, 24
40380c1a:	3135ce        	l32r	a3, 0x403744f0
40380c1d:	42ac00        	movi	a4, 0xfffffc00
40380c20:	302210        	and	a2, a2, a3
40380c23:	c02000        	memw
40380c26:	2968      	s32i.n	a2, a8, 24
40380c28:	c02000        	memw
40380c2b:	38a8      	l32i.n	a3, a8, 40
40380c2d:	212fce        	l32r	a2, 0x403744ec
40380c30:	403310        	and	a3, a3, a4
40380c33:	c02000        	memw
40380c36:	39a8      	s32i.n	a3, a8, 40
40380c38:	c02000        	memw
40380c3b:	3868      	l32i.n	a3, a8, 24
40380c3d:	203310        	and	a3, a3, a2
40380c40:	c02000        	memw
40380c43:	3968      	s32i.n	a3, a8, 24
40380c45:	c02000        	memw
40380c48:	2898      	l32i.n	a2, a8, 36
40380c4a:	3160d1        	l32r	a3, 0x403751cc
40380c4d:	402210        	and	a2, a2, a4
40380c50:	c02000        	memw
40380c53:	2998      	s32i.n	a2, a8, 36
40380c55:	c02000        	memw
40380c58:	2828      	l32i.n	a2, a8, 8
40380c5a:	c02000        	memw
40380c5d:	2931      	s32i.n	a2, a1, 12
40380c5f:	c02000        	memw
40380c62:	2831      	l32i.n	a2, a1, 12
40380c64:	302210        	and	a2, a2, a3
40380c67:	c02000        	memw
40380c6a:	2931      	s32i.n	a2, a1, 12
40380c6c:	c02000        	memw
40380c6f:	222838        	l32i	a2, a8, 224
40380c72:	7ce3      	movi.n	a3, -2
40380c74:	302210        	and	a2, a2, a3
40380c77:	c02000        	memw
40380c7a:	226838        	s32i	a2, a8, 224
40380c7d:	c02000        	memw
40380c80:	2831      	l32i.n	a2, a1, 12
40380c82:	31f5cd        	l32r	a3, 0x40374458
40380c85:	302220        	or	a2, a2, a3
40380c88:	c02000        	memw
40380c8b:	2931      	s32i.n	a2, a1, 12
40380c8d:	663902        	bnei	a9, 3, 0x40380c93
40380c90:	062900        	j	0x40380d38
40380c93:	f6495d        	bgeui	a9, 4, 0x40380cf4
40380c96:	679902        	bne	a9, a6, 0x40380c9c
40380c99:	062000        	j	0x40380d1d
40380c9c:	b62902        	bltui	a9, 2, 0x40380ca2
40380c9f:	462800        	j	0x40380d44
40380ca2:	c02000        	memw
40380ca5:	2831      	l32i.n	a2, a1, 12
40380ca7:	312dcf        	l32r	a3, 0x4037495c
40380caa:	302210        	and	a2, a2, a3
40380cad:	c61900        	j	0x40380d18
40380cb0:	c02000        	memw
40380cb3:	3868      	l32i.n	a3, a8, 24
40380cb5:	603320        	or	a3, a3, a6
40380cb8:	c02000        	memw
40380cbb:	3968      	s32i.n	a3, a8, 24
40380cbd:	0c03      	movi.n	a3, 0
40380cbf:	c02000        	memw
40380cc2:	3921      	s32i.n	a3, a1, 8
40380cc4:	c02000        	memw
40380cc7:	6821      	l32i.n	a6, a1, 8
40380cc9:	3101ce        	l32r	a3, 0x403744d0
40380ccc:	b06610        	and	a6, a6, a11
40380ccf:	a06620        	or	a6, a6, a10
40380cd2:	c02000        	memw
40380cd5:	6921      	s32i.n	a6, a1, 8
40380cd7:	c02000        	memw
40380cda:	6821      	l32i.n	a6, a1, 8
40380cdc:	306610        	and	a6, a6, a3
40380cdf:	31fdcd        	l32r	a3, 0x403744d4
40380ce2:	306620        	or	a6, a6, a3
40380ce5:	c02000        	memw
40380ce8:	6921      	s32i.n	a6, a1, 8
40380cea:	c02000        	memw
40380ced:	3821      	l32i.n	a3, a1, 8
40380cef:	06a4ff        	j	0x40380b83
40380cf2:	000026        	ee.ldf.64.xp	f0, f2, a0, a0
40380cf5:	5915      	s32i.n	a5, a5, 4
40380cf7:	b65931        	bltui	a9, 5, 0x40380d2c
40380cfa:	4c03      	movi.n	a3, 64
40380cfc:	26b94f        	beqi	a9, 16, 0x40380d4f
40380cff:	1c12      	movi.n	a2, 17
40380d01:	279902        	bne	a9, a2, 0x40380d07
40380d04:	062100        	j	0x40380d8c
40380d07:	101120        	or	a1, a1, a1
40380d0a:	25bc01        	call8	0x403828cc
40380d0d:	c02000        	memw
40380d10:	2831      	l32i.n	a2, a1, 12
40380d12:	3120ce        	l32r	a3, 0x40374594
40380d15:	302220        	or	a2, a2, a3
40380d18:	c02000        	memw
40380d1b:	2931      	s32i.n	a2, a1, 12
40380d1d:	c02000        	memw
40380d20:	2831      	l32i.n	a2, a1, 12
40380d22:	c02000        	memw
40380d25:	2928      	s32i.n	a2, a8, 8
40380d27:	0c02      	movi.n	a2, 0
40380d29:	1df0      	retw.n
40380d2b:	00c020        	or	a12, a0, a0
40380d2e:	002831        	srai	a2, a0, 24
40380d31:	310fcf        	l32r	a3, 0x40374970
40380d34:	46f7ff        	j	0x40380d15
40380d37:	00c020        	or	a12, a0, a0
40380d3a:	002831        	srai	a2, a0, 24
40380d3d:	3122d1        	l32r	a3, 0x403751c8
40380d40:	46f4ff        	j	0x40380d15
40380d43:	00c020        	or	a12, a0, a0
40380d46:	002831        	srai	a2, a0, 24
40380d49:	31f1cd        	l32r	a3, 0x40374510
40380d4c:	46f1ff        	j	0x40380d15
40380d4f:	c02000        	memw
40380d52:	2831      	l32i.n	a2, a1, 12
40380d54:	302220        	or	a2, a2, a3
40380d57:	c02000        	memw
40380d5a:	2931      	s32i.n	a2, a1, 12
40380d5c:	c02000        	memw
40380d5f:	2831      	l32i.n	a2, a1, 12
40380d61:	32a200        	movi	a3, 0x200
40380d64:	302220        	or	a2, a2, a3
40380d67:	c02000        	memw
40380d6a:	2931      	s32i.n	a2, a1, 12
40380d6c:	c02000        	memw
40380d6f:	2831      	l32i.n	a2, a1, 12
40380d71:	2c03      	movi.n	a3, 32
40380d73:	302220        	or	a2, a2, a3
40380d76:	c02000        	memw
40380d79:	2931      	s32i.n	a2, a1, 12
40380d7b:	c02000        	memw
40380d7e:	2831      	l32i.n	a2, a1, 12
40380d80:	909220        	or	a9, a2, a9
40380d83:	c02000        	memw
40380d86:	9931      	s32i.n	a9, a1, 12
40380d88:	46e4ff        	j	0x40380d1d
40380d8b:	00c020        	or	a12, a0, a0
40380d8e:	002831        	srai	a2, a0, 24
40380d91:	302220        	or	a2, a2, a3
40380d94:	c02000        	memw
40380d97:	2931      	s32i.n	a2, a1, 12
40380d99:	c02000        	memw
40380d9c:	2831      	l32i.n	a2, a1, 12
40380d9e:	32a200        	movi	a3, 0x200
40380da1:	302220        	or	a2, a2, a3
40380da4:	c02000        	memw
40380da7:	2931      	s32i.n	a2, a1, 12
40380da9:	c02000        	memw
40380dac:	2831      	l32i.n	a2, a1, 12
40380dae:	2c03      	movi.n	a3, 32
40380db0:	302220        	or	a2, a2, a3
40380db3:	c02000        	memw
40380db6:	2931      	s32i.n	a2, a1, 12
40380db8:	c02000        	memw
40380dbb:	2831      	l32i.n	a2, a1, 12
40380dbd:	1c03      	movi.n	a3, 16
40380dbf:	302220        	or	a2, a2, a3
40380dc2:	c02000        	memw
40380dc5:	2931      	s32i.n	a2, a1, 12
40380dc7:	c02000        	memw
40380dca:	222838        	l32i	a2, a8, 224
40380dcd:	606220        	or	a6, a2, a6
40380dd0:	c02000        	memw
40380dd3:	626838        	s32i	a6, a8, 224
40380dd6:	c6d0ff        	j	0x40380d1d
40380dd9:	000000        	ill
40380ddc:	364100        	entry	a1, 32
40380ddf:	8843      	l32i.n	a8, a3, 16
40380de1:	4812      	l32i.n	a4, a2, 4
40380de3:	e852      	l32i.n	a14, a2, 20
40380de5:	b2130a        	l16ui	a11, a3, 20
40380de8:	520316        	l8ui	a5, a3, 22
40380deb:	176801        	bbci	a8, 1, 0x40380df0
40380dee:	e863      	l32i.n	a14, a3, 24
40380df0:	8802      	l32i.n	a8, a2, 0
40380df2:	c20303        	l8ui	a12, a3, 3
40380df5:	88f8      	l32i.n	a8, a8, 60
40380df7:	dd05      	mov.n	a13, a5
40380df9:	ad02      	mov.n	a10, a2
40380dfb:	e00800        	callx8	a8
40380dfe:	8813      	l32i.n	a8, a3, 4
40380e00:	c02000        	memw
40380e03:	8914      	s32i.n	a8, a4, 4
40380e05:	920302        	l8ui	a9, a3, 2
40380e08:	fc49      	bnez.n	a9, 0x40380e40
40380e0a:	0c18      	movi.n	a8, 1
40380e0c:	508983        	moveqz	a8, a9, a5
40380e0f:	a1b6cd        	l32r	a10, 0x403744e8
40380e12:	c02000        	memw
40380e15:	9864      	l32i.n	a9, a4, 24
40380e17:	808004        	extui	a8, a8, 0, 1
40380e1a:	a09910        	and	a9, a9, a10
40380e1d:	308801        	slli	a8, a8, 29
40380e20:	808920        	or	a8, a9, a8
40380e23:	c02000        	memw
40380e26:	8964      	s32i.n	a8, a4, 24
40380e28:	c02000        	memw
40380e2b:	8874      	l32i.n	a8, a4, 28
40380e2d:	0b55      	addi.n	a5, a5, -1
40380e2f:	92afc0        	movi	a9, -64
40380e32:	505054        	extui	a5, a5, 0, 6
40380e35:	908810        	and	a8, a8, a9
40380e38:	505820        	or	a5, a8, a5
40380e3b:	c02000        	memw
40380e3e:	5974      	s32i.n	a5, a4, 28
40380e40:	c20301        	l8ui	a12, a3, 1
40380e43:	0c05      	movi.n	a5, 0
40380e45:	c02000        	memw
40380e48:	8864      	l32i.n	a8, a4, 24
40380e4a:	d09c11        	slli	a9, a12, 3
40380e4d:	0c1a      	movi.n	a10, 1
40380e4f:	b1a7cd        	l32r	a11, 0x403744ec
40380e52:	90a583        	moveqz	a10, a5, a9
40380e55:	50aa01        	slli	a10, a10, 27
40380e58:	b08810        	and	a8, a8, a11
40380e5b:	a08820        	or	a8, a8, a10
40380e5e:	c02000        	memw
40380e61:	8964      	s32i.n	a8, a4, 24
40380e63:	8d05      	mov.n	a8, a5
40380e65:	571904        	beq	a9, a5, 0x40380e6d
40380e68:	0b59      	addi.n	a5, a9, -1
40380e6a:	508094        	extui	a8, a5, 0, 10
40380e6d:	c02000        	memw
40380e70:	5894      	l32i.n	a5, a4, 36
40380e72:	92ac00        	movi	a9, 0xfffffc00
40380e75:	905510        	and	a5, a5, a9
40380e78:	805520        	or	a5, a5, a8
40380e7b:	c02000        	memw
40380e7e:	5994      	s32i.n	a5, a4, 36
40380e80:	b823      	l32i.n	a11, a3, 8
40380e82:	40a420        	or	a10, a4, a4
40380e85:	e5bdff        	call8	0x40380a64
40380e88:	820302        	l8ui	a8, a3, 2
40380e8b:	c02000        	memw
40380e8e:	5864      	l32i.n	a5, a4, 24
40380e90:	d08811        	slli	a8, a8, 3
40380e93:	0c09      	movi.n	a9, 0
40380e95:	0c1a      	movi.n	a10, 1
40380e97:	b196cd        	l32r	a11, 0x403744f0
40380e9a:	80a983        	moveqz	a10, a9, a8
40380e9d:	40aa01        	slli	a10, a10, 28
40380ea0:	b05510        	and	a5, a5, a11
40380ea3:	a05520        	or	a5, a5, a10
40380ea6:	c02000        	memw
40380ea9:	5964      	s32i.n	a5, a4, 24
40380eab:	971805        	beq	a8, a9, 0x40380eb4
40380eae:	82c8ff        	addi	a8, a8, -1
40380eb1:	809094        	extui	a9, a8, 0, 10
40380eb4:	c02000        	memw
40380eb7:	52240a        	l32i	a5, a4, 40
40380eba:	82ac00        	movi	a8, 0xfffffc00
40380ebd:	805510        	and	a5, a5, a8
40380ec0:	908520        	or	a8, a5, a9
40380ec3:	c02000        	memw
40380ec6:	82640a        	s32i	a8, a4, 40
40380ec9:	c02000        	memw
40380ecc:	522400        	l32i	a5, a4, 0
40380ecf:	8189cd        	l32r	a8, 0x403744f4
40380ed2:	ad02      	mov.n	a10, a2
40380ed4:	805520        	or	a5, a5, a8
40380ed7:	c02000        	memw
40380eda:	5904      	s32i.n	a5, a4, 0
40380edc:	5802      	l32i.n	a5, a2, 0
40380ede:	522510        	l32i	a5, a5, 64
40380ee1:	e00500        	callx8	a5
40380ee4:	c20302        	l8ui	a12, a3, 2
40380ee7:	8c5c      	beqz.n	a12, 0x40380ef0
40380ee9:	b833      	l32i.n	a11, a3, 12
40380eeb:	ad04      	mov.n	a10, a4
40380eed:	65bbff        	call8	0x40380aa4
40380ef0:	0c02      	movi.n	a2, 0
40380ef2:	1df0      	retw.n
40380ef4:	364100        	entry	a1, 32
40380ef7:	6812      	l32i.n	a6, a2, 4
40380ef9:	ad02      	mov.n	a10, a2
40380efb:	c02000        	memw
40380efe:	8866      	l32i.n	a8, a6, 24
40380f00:	e77805        	bbci	a8, 30, 0x40380f09
40380f03:	c02000        	memw
40380f06:	822607        	l32i	a8, a6, 28
40380f09:	c02000        	memw
40380f0c:	4916      	s32i.n	a4, a6, 4
40380f0e:	0c08      	movi.n	a8, 0
40380f10:	c02000        	memw
40380f13:	9866      	l32i.n	a9, a6, 24
40380f15:	d0d511        	slli	a13, a5, 3
40380f18:	0c1b      	movi.n	a11, 1
40380f1a:	c175cd        	l32r	a12, 0x403744f0
40380f1d:	d0b883        	moveqz	a11, a8, a13
40380f20:	40bb01        	slli	a11, a11, 28
40380f23:	c09910        	and	a9, a9, a12
40380f26:	b09920        	or	a9, a9, a11
40380f29:	c02000        	memw
40380f2c:	9966      	s32i.n	a9, a6, 24
40380f2e:	9d08      	mov.n	a9, a8
40380f30:	871d05        	beq	a13, a8, 0x40380f39
40380f33:	82cdff        	addi	a8, a13, -1
40380f36:	809094        	extui	a9, a8, 0, 10
40380f39:	c02000        	memw
40380f3c:	82260a        	l32i	a8, a6, 40
40380f3f:	b2ac00        	movi	a11, 0xfffffc00
40380f42:	b08810        	and	a8, a8, a11
40380f45:	908820        	or	a8, a8, a9
40380f48:	c02000        	memw
40380f4b:	82660a        	s32i	a8, a6, 40
40380f4e:	c02000        	memw
40380f51:	822600        	l32i	a8, a6, 0
40380f54:	9168cd        	l32r	a9, 0x403744f4
40380f57:	908820        	or	a8, a8, a9
40380f5a:	c02000        	memw
40380f5d:	8906      	s32i.n	a8, a6, 0
40380f5f:	880a      	l32i.n	a8, a10, 0
40380f61:	822810        	l32i	a8, a8, 64
40380f64:	e00800        	callx8	a8
40380f67:	8c75      	beqz.n	a5, 0x40380f72
40380f69:	cd05      	mov.n	a12, a5
40380f6b:	bd03      	mov.n	a11, a3
40380f6d:	ad06      	mov.n	a10, a6
40380f6f:	65b3ff        	call8	0x40380aa4
40380f72:	0c02      	movi.n	a2, 0
40380f74:	1df0      	retw.n
40380f76:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40380f79:	410098        	l32r	a4, 0x40366f7c
40380f7c:	12b173        	l32ai	a1, a1, 0x1cc
40380f7f:	cec02000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a12, 0, q3, q0, q2, q0
40380f83:	8809      	l32i.n	a8, a9, 0
40380f85:	ad02      	mov.n	a10, a2
40380f87:	b08820        	or	a8, a8, a11
40380f8a:	c02000        	memw
40380f8d:	8909      	s32i.n	a8, a9, 0
40380f8f:	8862      	l32i.n	a8, a2, 24
40380f91:	07e807        	bbsi	a8, 0, 0x40380f9c
40380f94:	8802      	l32i.n	a8, a2, 0
40380f96:	822810        	l32i	a8, a8, 64
40380f99:	e00800        	callx8	a8
40380f9c:	1df0      	retw.n
40380f9e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40380fa1:	410088        	l32r	a4, 0x40362fa4
40380fa4:	12          	.byte	0x12
40380fa5:	7cdb      	movi.n	a11, -3
40380fa7:	c02000        	memw
40380faa:	98f8      	l32i.n	a9, a8, 60
40380fac:	ad02      	mov.n	a10, a2
40380fae:	b09910        	and	a9, a9, a11
40380fb1:	c02000        	memw
40380fb4:	99f8      	s32i.n	a9, a8, 60
40380fb6:	c02000        	memw
40380fb9:	9878      	l32i.n	a9, a8, 28
40380fbb:	b149cd        	l32r	a11, 0x403744e0
40380fbe:	b09910        	and	a9, a9, a11
40380fc1:	b183d0        	l32r	a11, 0x403751d0
40380fc4:	b09920        	or	a9, a9, a11
40380fc7:	c02000        	memw
40380fca:	9978      	s32i.n	a9, a8, 28
40380fcc:	c02000        	memw
40380fcf:	9868      	l32i.n	a9, a8, 24
40380fd1:	b115cd        	l32r	a11, 0x40374428
40380fd4:	b09920        	or	a9, a9, a11
40380fd7:	c02000        	memw
40380fda:	9968      	s32i.n	a9, a8, 24
40380fdc:	9162cd        	l32r	a9, 0x40374564
40380fdf:	903310        	and	a3, a3, a9
40380fe2:	c02000        	memw
40380fe5:	3918      	s32i.n	a3, a8, 4
40380fe7:	0c03      	movi.n	a3, 0
40380fe9:	c02000        	memw
40380fec:	3928      	s32i.n	a3, a8, 8
40380fee:	c02000        	memw
40380ff1:	9808      	l32i.n	a9, a8, 0
40380ff3:	3168cd        	l32r	a3, 0x40374594
40380ff6:	309920        	or	a9, a9, a3
40380ff9:	c02000        	memw
40380ffc:	9908      	s32i.n	a9, a8, 0
40380ffe:	3862      	l32i.n	a3, a2, 24
40381000:	07e308        	bbsi	a3, 0, 0x4038100c
40381003:	322200        	l32i	a3, a2, 0
40381006:	322310        	l32i	a3, a3, 64
40381009:	e00300        	callx8	a3
4038100c:	1df0      	retw.n
4038100e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40381011:	410088        	l32r	a4, 0x40363014
40381014:	12          	.byte	0x12
40381015:	7cdb      	movi.n	a11, -3
40381017:	c02000        	memw
4038101a:	98f8      	l32i.n	a9, a8, 60
4038101c:	ad02      	mov.n	a10, a2
4038101e:	b09910        	and	a9, a9, a11
40381021:	c02000        	memw
40381024:	99f8      	s32i.n	a9, a8, 60
40381026:	c02000        	memw
40381029:	9878      	l32i.n	a9, a8, 28
4038102b:	b12dcd        	l32r	a11, 0x403744e0
4038102e:	b09910        	and	a9, a9, a11
40381031:	b167d0        	l32r	a11, 0x403751d0
40381034:	b09920        	or	a9, a9, a11
40381037:	c02000        	memw
4038103a:	9978      	s32i.n	a9, a8, 28
4038103c:	c02000        	memw
4038103f:	9868      	l32i.n	a9, a8, 24
40381041:	b1f9cc        	l32r	a11, 0x40374428
40381044:	b09920        	or	a9, a9, a11
40381047:	c02000        	memw
4038104a:	9968      	s32i.n	a9, a8, 24
4038104c:	9146cd        	l32r	a9, 0x40374564
4038104f:	903310        	and	a3, a3, a9
40381052:	c02000        	memw
40381055:	3918      	s32i.n	a3, a8, 4
40381057:	c02000        	memw
4038105a:	9808      	l32i.n	a9, a8, 0
4038105c:	315bd0        	l32r	a3, 0x403751c8
4038105f:	309920        	or	a9, a9, a3
40381062:	c02000        	memw
40381065:	9908      	s32i.n	a9, a8, 0
40381067:	3862      	l32i.n	a3, a2, 24
40381069:	07e307        	bbsi	a3, 0, 0x40381074
4038106c:	3802      	l32i.n	a3, a2, 0
4038106e:	322310        	l32i	a3, a3, 64
40381071:	e00300        	callx8	a3
40381074:	1df0      	retw.n
40381076:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40381079:	410068        	l32r	a4, 0x4035b07c
4038107c:	12          	.byte	0x12
4038107d:	7cd9      	movi.n	a9, -3
4038107f:	c02000        	memw
40381082:	88f6      	l32i.n	a8, a6, 60
40381084:	ad06      	mov.n	a10, a6
40381086:	908810        	and	a8, a8, a9
40381089:	c02000        	memw
4038108c:	89f6      	s32i.n	a8, a6, 60
4038108e:	c02000        	memw
40381091:	8876      	l32i.n	a8, a6, 28
40381093:	9113cd        	l32r	a9, 0x403744e0
40381096:	cd05      	mov.n	a12, a5
40381098:	908810        	and	a8, a8, a9
4038109b:	914dd0        	l32r	a9, 0x403751d0
4038109e:	bd03      	mov.n	a11, a3
403810a0:	908820        	or	a8, a8, a9
403810a3:	c02000        	memw
403810a6:	8976      	s32i.n	a8, a6, 28
403810a8:	c02000        	memw
403810ab:	8866      	l32i.n	a8, a6, 24
403810ad:	91decc        	l32r	a9, 0x40374428
403810b0:	908820        	or	a8, a8, a9
403810b3:	c02000        	memw
403810b6:	8966      	s32i.n	a8, a6, 24
403810b8:	812bcd        	l32r	a8, 0x40374564
403810bb:	804410        	and	a4, a4, a8
403810be:	808501        	slli	a8, a5, 24
403810c1:	804420        	or	a4, a4, a8
403810c4:	c02000        	memw
403810c7:	4916      	s32i.n	a4, a6, 4
403810c9:	c02000        	memw
403810cc:	4866      	l32i.n	a4, a6, 24
403810ce:	8106cd        	l32r	a8, 0x403744e8
403810d1:	804410        	and	a4, a4, a8
403810d4:	c02000        	memw
403810d7:	4966      	s32i.n	a4, a6, 24
403810d9:	a598ff        	call8	0x40380a64
403810dc:	813ed0        	l32r	a8, 0x403751d4
403810df:	c02000        	memw
403810e2:	4806      	l32i.n	a4, a6, 0
403810e4:	ad02      	mov.n	a10, a2
403810e6:	804420        	or	a4, a4, a8
403810e9:	c02000        	memw
403810ec:	4906      	s32i.n	a4, a6, 0
403810ee:	4802      	l32i.n	a4, a2, 0
403810f0:	422410        	l32i	a4, a4, 64
403810f3:	e00400        	callx8	a4
403810f6:	1df0      	retw.n
403810f8:	364100        	entry	a1, 32
403810fb:	8812      	l32i.n	a8, a2, 4
403810fd:	303074        	extui	a3, a3, 0, 8
40381100:	c02000        	memw
40381103:	9808      	l32i.n	a9, a8, 0
40381105:	20a220        	or	a10, a2, a2
40381108:	b1a9ce        	l32r	a11, 0x40374bac
4038110b:	cc13      	bnez.n	a3, 0x40381110
4038110d:	b1c6cc        	l32r	a11, 0x40374428
40381110:	b09920        	or	a9, a9, a11
40381113:	c02000        	memw
40381116:	9908      	s32i.n	a9, a8, 0
40381118:	880a      	l32i.n	a8, a10, 0
4038111a:	0c02      	movi.n	a2, 0
4038111c:	822810        	l32i	a8, a8, 64
4038111f:	e00800        	callx8	a8
40381122:	1df0      	retw.n
40381124:	364100        	entry	a1, 32
40381127:	0c8c      	movi.n	a12, 8
40381129:	bd03      	mov.n	a11, a3
4038112b:	a2c21c        	addi	a10, a2, 28
4038112e:	81dacc        	l32r	a8, 0x40374498
40381131:	e00800        	callx8	a8
40381134:	657901        	call8	0x403828cc
40381137:	00          	.byte	00
40381138:	366100        	entry	a1, 48
4038113b:	81e2cc        	l32r	a8, 0x403744c4
4038113e:	a2ac03        	movi	a10, 0xfffffc03
40381141:	c02000        	memw
40381144:	922826        	l32i	a9, a8, 152
40381147:	0c1b      	movi.n	a11, 1
40381149:	c02000        	memw
4038114c:	9931      	s32i.n	a9, a1, 12
4038114e:	c02000        	memw
40381151:	9831      	l32i.n	a9, a1, 12
40381153:	a09910        	and	a9, a9, a10
40381156:	1c4a      	movi.n	a10, 20
40381158:	a09920        	or	a9, a9, a10
4038115b:	c02000        	memw
4038115e:	9931      	s32i.n	a9, a1, 12
40381160:	c02000        	memw
40381163:	9831      	l32i.n	a9, a1, 12
40381165:	c02000        	memw
40381168:	926826        	s32i	a9, a8, 152
4038116b:	c02000        	memw
4038116e:	a22826        	l32i	a10, a8, 152
40381171:	b0aa20        	or	a10, a10, a11
40381174:	c02000        	memw
40381177:	a26826        	s32i	a10, a8, 152
4038117a:	c02000        	memw
4038117d:	922828        	l32i	a9, a8, 160
40381180:	b09920        	or	a9, a9, a11
40381183:	c02000        	memw
40381186:	926828        	s32i	a9, a8, 160
40381189:	1df0      	retw.n
4038118b:	00          	.byte	00
4038118c:	366100        	entry	a1, 48
4038118f:	81cdcc        	l32r	a8, 0x403744c4
40381192:	a2ac03        	movi	a10, 0xfffffc03
40381195:	c02000        	memw
40381198:	922826        	l32i	a9, a8, 152
4038119b:	7ceb      	movi.n	a11, -2
4038119d:	c02000        	memw
403811a0:	9931      	s32i.n	a9, a1, 12
403811a2:	c02000        	memw
403811a5:	9831      	l32i.n	a9, a1, 12
403811a7:	a09910        	and	a9, a9, a10
403811aa:	1c4a      	movi.n	a10, 20
403811ac:	a09920        	or	a9, a9, a10
403811af:	c02000        	memw
403811b2:	9931      	s32i.n	a9, a1, 12
403811b4:	c02000        	memw
403811b7:	9831      	l32i.n	a9, a1, 12
403811b9:	c02000        	memw
403811bc:	926826        	s32i	a9, a8, 152
403811bf:	c02000        	memw
403811c2:	a22826        	l32i	a10, a8, 152
403811c5:	b0aa10        	and	a10, a10, a11
403811c8:	c02000        	memw
403811cb:	a26826        	s32i	a10, a8, 152
403811ce:	c02000        	memw
403811d1:	922828        	l32i	a9, a8, 160
403811d4:	b09910        	and	a9, a9, a11
403811d7:	c02000        	memw
403811da:	926828        	s32i	a9, a8, 160
403811dd:	1df0      	retw.n
403811df:	003641        	srli	a3, a0, 6
403811e2:	003222        	orb	b3, b2, b0
403811e5:	01a2a0        	l32r	a0, 0x40369470
403811e8:	00c020        	or	a12, a0, a0
403811eb:	00a263        	minu	a10, a2, a0
403811ee:	06c020        	j	0x403894f2
403811f1:	00a923        	sext	a10, a9, 7
403811f4:	c02000        	memw
403811f7:	b8d3      	l32i.n	a11, a3, 52
403811f9:	9822      	l32i.n	a9, a2, 8
403811fb:	0c18      	movi.n	a8, 1
403811fd:	cd0a      	mov.n	a12, a10
403811ff:	7ced      	movi.n	a13, -2
40381201:	90c893        	movnez	a12, a8, a9
40381204:	d0bb10        	and	a11, a11, a13
40381207:	c0bb20        	or	a11, a11, a12
4038120a:	c02000        	memw
4038120d:	b9d3      	s32i.n	a11, a3, 52
4038120f:	c02000        	memw
40381212:	b8d3      	l32i.n	a11, a3, 52
40381214:	0b99      	addi.n	a9, a9, -1
40381216:	4d0a      	mov.n	a4, a10
40381218:	904893        	movnez	a4, a8, a9
4038121b:	7cdc      	movi.n	a12, -3
4038121d:	001840        	ssl	a8
40381220:	0094a1        	sll	a9, a4
40381223:	c0bb10        	and	a11, a11, a12
40381226:	909b20        	or	a9, a11, a9
40381229:	c02000        	memw
4038122c:	99d3      	s32i.n	a9, a3, 52
4038122e:	c02000        	memw
40381231:	9842      	l32i.n	a9, a2, 16
40381233:	d2ac1f        	movi	a13, 0xfffffc1f
40381236:	c02000        	memw
40381239:	9953      	s32i.n	a9, a3, 20
4038123b:	92020e        	l8ui	a9, a2, 14
4038123e:	c02000        	memw
40381241:	b843      	l32i.n	a11, a3, 16
40381243:	0bc9      	addi.n	a12, a9, -1
40381245:	c0c044        	extui	a12, a12, 0, 5
40381248:	b0cc11        	slli	a12, a12, 5
4038124b:	d0bb10        	and	a11, a11, a13
4038124e:	c0bb20        	or	a11, a11, a12
40381251:	c02000        	memw
40381254:	b943      	s32i.n	a11, a3, 16
40381256:	c02000        	memw
40381259:	b863      	l32i.n	a11, a3, 24
4038125b:	4d0a      	mov.n	a4, a10
4038125d:	904893        	movnez	a4, a8, a9
40381260:	c2afbf        	movi	a12, -65
40381263:	c0bb10        	and	a11, a11, a12
40381266:	a09411        	slli	a9, a4, 6
40381269:	909b20        	or	a9, a11, a9
4038126c:	c02000        	memw
4038126f:	9963      	s32i.n	a9, a3, 24
40381271:	92020d        	l8ui	a9, a2, 13
40381274:	b2af7f        	movi	a11, -129
40381277:	908a83        	moveqz	a8, a10, a9
4038127a:	c02000        	memw
4038127d:	a863      	l32i.n	a10, a3, 24
4038127f:	908811        	slli	a8, a8, 7
40381282:	b0aa10        	and	a10, a10, a11
40381285:	808a20        	or	a8, a10, a8
40381288:	c02000        	memw
4038128b:	8963      	s32i.n	a8, a3, 24
4038128d:	c02000        	memw
40381290:	8843      	l32i.n	a8, a3, 16
40381292:	6c0a      	movi.n	a10, -32
40381294:	0b99      	addi.n	a9, a9, -1
40381296:	a08810        	and	a8, a8, a10
40381299:	909044        	extui	a9, a9, 0, 5
4038129c:	909820        	or	a9, a8, a9
4038129f:	c02000        	memw
403812a2:	9943      	s32i.n	a9, a3, 16
403812a4:	8862      	l32i.n	a8, a2, 24
403812a6:	ad02      	mov.n	a10, a2
403812a8:	076830        	bbci	a8, 0, 0x403812dc
403812ab:	e5e8ff        	call8	0x40381138
403812ae:	8862      	l32i.n	a8, a2, 24
403812b0:	2185cc        	l32r	a2, 0x403744c4
403812b3:	17682e        	bbci	a8, 1, 0x403812e5
403812b6:	c02000        	memw
403812b9:	88d2      	l32i.n	a8, a2, 52
403812bb:	9166cc        	l32r	a9, 0x40374454
403812be:	908820        	or	a8, a8, a9
403812c1:	c02000        	memw
403812c4:	89d2      	s32i.n	a8, a2, 52
403812c6:	c02000        	memw
403812c9:	22232a        	l32i	a2, a3, 168
403812cc:	6c38      	movi.n	a8, -29
403812ce:	802210        	and	a2, a2, a8
403812d1:	c02000        	memw
403812d4:	22632a        	s32i	a2, a3, 168
403812d7:	0c02      	movi.n	a2, 0
403812d9:	1df0      	retw.n
403812db:	00e5ea        	utrunc.s	a14, f5, 0
403812de:	ff          	.byte	0xff
403812df:	c6f2ff        	j	0x403812ae
403812e2:	000000        	ill
403812e5:	c02000        	memw
403812e8:	88d2      	l32i.n	a8, a2, 52
403812ea:	9147ce        	l32r	a9, 0x40374c08
403812ed:	908810        	and	a8, a8, a9
403812f0:	46f3ff        	j	0x403812c1
403812f3:	003641        	srli	a3, a0, 6
403812f6:	009812        	andbc	b9, b8, b0
403812f9:	c02000        	memw
403812fc:	8809      	l32i.n	a8, a9, 0
403812fe:	5678ff        	bnez	a8, 0x403812f9
40381301:	1df0      	retw.n
40381303:	003641        	srli	a3, a0, 6
40381306:	008812        	andbc	b8, b8, b0
40381309:	0c1a      	movi.n	a10, 1
4038130b:	c02000        	memw
4038130e:	222815        	l32i	a2, a8, 84
40381311:	c02000        	memw
40381314:	822829        	l32i	a8, a8, 164
40381317:	202024        	extui	a2, a2, 0, 3
4038131a:	808004        	extui	a8, a8, 0, 1
4038131d:	0c09      	movi.n	a9, 0
4038131f:	209a83        	moveqz	a9, a10, a2
40381322:	001a40        	ssl	a10
40381325:	0088a1        	sll	a8, a8
40381328:	802920        	or	a2, a9, a8
4038132b:	1df0      	retw.n
4038132d:	000000        	ill
40381330:	364100        	entry	a1, 32
40381333:	9812      	l32i.n	a9, a2, 4
40381335:	0c1a      	movi.n	a10, 1
40381337:	c02000        	memw
4038133a:	822927        	l32i	a8, a9, 156
4038133d:	a08820        	or	a8, a8, a10
40381340:	c02000        	memw
40381343:	826927        	s32i	a8, a9, 156
40381346:	1df0      	retw.n
40381348:	364100        	entry	a1, 32
4038134b:	9812      	l32i.n	a9, a2, 4
4038134d:	0c2a      	movi.n	a10, 2
4038134f:	c02000        	memw
40381352:	822927        	l32i	a8, a9, 156
40381355:	a08820        	or	a8, a8, a10
40381358:	c02000        	memw
4038135b:	826927        	s32i	a8, a9, 156
4038135e:	1df0      	retw.n
40381360:	364100        	entry	a1, 32
40381363:	a16ccd        	l32r	a10, 0x40374914
40381366:	819ccf        	l32r	a8, 0x403751d8
40381369:	c02000        	memw
4038136c:	980a      	l32i.n	a9, a10, 0
4038136e:	b10fce        	l32r	a11, 0x40374bac
40381371:	8902      	s32i.n	a8, a2, 0
40381373:	b09920        	or	a9, a9, a11
40381376:	c02000        	memw
40381379:	990a      	s32i.n	a9, a10, 0
4038137b:	a1fdcc        	l32r	a10, 0x40374770
4038137e:	b15acc        	l32r	a11, 0x403744e8
40381381:	c02000        	memw
40381384:	980a      	l32i.n	a9, a10, 0
40381386:	b09910        	and	a9, a9, a11
40381389:	c02000        	memw
4038138c:	990a      	s32i.n	a9, a10, 0
4038138e:	c02000        	memw
40381391:	9808      	l32i.n	a9, a8, 0
40381393:	a14ecc        	l32r	a10, 0x403744cc
40381396:	a09920        	or	a9, a9, a10
40381399:	c02000        	memw
4038139c:	9908      	s32i.n	a9, a8, 0
4038139e:	1df0      	retw.n
403813a0:	366100        	entry	a1, 48
403813a3:	9802      	l32i.n	a9, a2, 0
403813a5:	e08311        	slli	a8, a3, 2
403813a8:	8a89      	add.n	a8, a9, a8
403813aa:	c02000        	memw
403813ad:	222801        	l32i	a2, a8, 4
403813b0:	a11ecc        	l32r	a10, 0x40374428
403813b3:	a02220        	or	a2, a2, a10
403813b6:	c02000        	memw
403813b9:	226801        	s32i	a2, a8, 4
403813bc:	c02000        	memw
403813bf:	2818      	l32i.n	a2, a8, 4
403813c1:	d772f7        	bbci	a2, 29, 0x403813bc
403813c4:	d08311        	slli	a8, a3, 3
403813c7:	8a89      	add.n	a8, a9, a8
403813c9:	8b33      	addi.n	a3, a3, 8
403813cb:	d03311        	slli	a3, a3, 3
403813ce:	c02000        	memw
403813d1:	222811        	l32i	a2, a8, 68
403813d4:	b182cf        	l32r	a11, 0x403751dc
403813d7:	3a99      	add.n	a9, a9, a3
403813d9:	c02000        	memw
403813dc:	3809      	l32i.n	a3, a9, 0
403813de:	c02000        	memw
403813e1:	a22811        	l32i	a10, a8, 68
403813e4:	b03310        	and	a3, a3, a11
403813e7:	a79201        	bne	a2, a10, 0x403813ec
403813ea:	1df0      	retw.n
403813ec:	2d0a      	mov.n	a2, a10
403813ee:	c6f9ff        	j	0x403813d9
403813f1:	000000        	ill
403813f4:	364100        	entry	a1, 32
403813f7:	408c35        	extui	a8, a4, 28, 4
403813fa:	c05511        	slli	a5, a5, 4
403813fd:	a802      	l32i.n	a10, a2, 0
403813ff:	505820        	or	a5, a8, a5
40381402:	1c88      	movi.n	a8, 24
40381404:	3088c0        	sub	a8, a8, a3
40381407:	0c1c      	movi.n	a12, 1
40381409:	c02000        	memw
4038140c:	b80a      	l32i.n	a11, a10, 0
4038140e:	001840        	ssl	a8
40381411:	008ca1        	sll	a8, a12
40381414:	7cf9      	movi.n	a9, -1
40381416:	809930        	xor	a9, a9, a8
40381419:	b09910        	and	a9, a9, a11
4038141c:	c02000        	memw
4038141f:	990a      	s32i.n	a9, a10, 0
40381421:	2b93      	addi.n	a9, a3, 2
40381423:	d16ecf        	l32r	a13, 0x403751dc
40381426:	d09911        	slli	a9, a9, 3
40381429:	9a9a      	add.n	a9, a10, a9
4038142b:	c02000        	memw
4038142e:	b839      	l32i.n	a11, a9, 12
40381430:	d05510        	and	a5, a5, a13
40381433:	d193ce        	l32r	a13, 0x40374e80
40381436:	32c314        	addi	a3, a3, 20
40381439:	d0bb10        	and	a11, a11, a13
4038143c:	50bb20        	or	a11, a11, a5
4038143f:	c02000        	memw
40381442:	b939      	s32i.n	a11, a9, 12
40381444:	c04411        	slli	a4, a4, 4
40381447:	e03311        	slli	a3, a3, 2
4038144a:	c02000        	memw
4038144d:	4949      	s32i.n	a4, a9, 16
4038144f:	3a3a      	add.n	a3, a10, a3
40381451:	c02000        	memw
40381454:	c903      	s32i.n	a12, a3, 0
40381456:	c02000        	memw
40381459:	380a      	l32i.n	a3, a10, 0
4038145b:	308820        	or	a8, a8, a3
4038145e:	c02000        	memw
40381461:	890a      	s32i.n	a8, a10, 0
40381463:	1df0      	retw.n
40381465:	000000        	ill
40381468:	364100        	entry	a1, 32
4038146b:	9802      	l32i.n	a9, a2, 0
4038146d:	1c88      	movi.n	a8, 24
4038146f:	3088c0        	sub	a8, a8, a3
40381472:	0c1b      	movi.n	a11, 1
40381474:	c02000        	memw
40381477:	c809      	l32i.n	a12, a9, 0
40381479:	001840        	ssl	a8
4038147c:	008ba1        	sll	a8, a11
4038147f:	7cfa      	movi.n	a10, -1
40381481:	80aa30        	xor	a10, a10, a8
40381484:	c0aa10        	and	a10, a10, a12
40381487:	c116cc        	l32r	a12, 0x403744e0
4038148a:	c02000        	memw
4038148d:	a909      	s32i.n	a10, a9, 0
4038148f:	c04411        	slli	a4, a4, 4
40381492:	47bc0e        	bgeu	a12, a4, 0x403814a4
40381495:	d152cf        	l32r	a13, 0x403751e0
40381498:	c153cf        	l32r	a12, 0x403751e4
4038149b:	a153cf        	l32r	a10, 0x403751e8
4038149e:	b2a07c        	movi	a11, 124
403814a1:	e54b01        	call8	0x40382960
403814a4:	cba3      	addi.n	a10, a3, 12
403814a6:	e0aa11        	slli	a10, a10, 2
403814a9:	aaa9      	add.n	a10, a9, a10
403814ab:	c0c410        	and	a12, a4, a12
403814ae:	d14dcd        	l32r	a13, 0x403749e4
403814b1:	c02000        	memw
403814b4:	481a      	l32i.n	a4, a10, 4
403814b6:	32c314        	addi	a3, a3, 20
403814b9:	d04410        	and	a4, a4, a13
403814bc:	c04420        	or	a4, a4, a12
403814bf:	e03311        	slli	a3, a3, 2
403814c2:	c02000        	memw
403814c5:	491a      	s32i.n	a4, a10, 4
403814c7:	3a39      	add.n	a3, a9, a3
403814c9:	c02000        	memw
403814cc:	b903      	s32i.n	a11, a3, 0
403814ce:	c02000        	memw
403814d1:	3809      	l32i.n	a3, a9, 0
403814d3:	308820        	or	a8, a8, a3
403814d6:	c02000        	memw
403814d9:	8909      	s32i.n	a8, a9, 0
403814db:	1df0      	retw.n
403814dd:	000000        	ill
403814e0:	364100        	entry	a1, 32
403814e3:	30b320        	or	a11, a3, a3
403814e6:	20a220        	or	a10, a2, a2
403814e9:	65ebff        	call8	0x403813a0
403814ec:	408c35        	extui	a8, a4, 28, 4
403814ef:	c04411        	slli	a4, a4, 4
403814f2:	c05511        	slli	a5, a5, 4
403814f5:	a0a480        	add	a10, a4, a10
403814f8:	505820        	or	a5, a8, a5
403814fb:	0c18      	movi.n	a8, 1
403814fd:	473a01        	bltu	a10, a4, 0x40381502
40381500:	0c08      	movi.n	a8, 0
40381502:	2802      	l32i.n	a2, a2, 0
40381504:	ba55      	add.n	a5, a5, a11
40381506:	5a58      	add.n	a5, a8, a5
40381508:	d09311        	slli	a9, a3, 3
4038150b:	8134cf        	l32r	a8, 0x403751dc
4038150e:	9a92      	add.n	a9, a2, a9
40381510:	805510        	and	a5, a5, a8
40381513:	415bce        	l32r	a4, 0x40374e80
40381516:	c02000        	memw
40381519:	8839      	l32i.n	a8, a9, 12
4038151b:	32c314        	addi	a3, a3, 20
4038151e:	408810        	and	a8, a8, a4
40381521:	505820        	or	a5, a8, a5
40381524:	c02000        	memw
40381527:	5939      	s32i.n	a5, a9, 12
40381529:	e03311        	slli	a3, a3, 2
4038152c:	3a32      	add.n	a3, a2, a3
4038152e:	c02000        	memw
40381531:	a949      	s32i.n	a10, a9, 16
40381533:	0c12      	movi.n	a2, 1
40381535:	c02000        	memw
40381538:	2933      	s32i.n	a2, a3, 12
4038153a:	1df0      	retw.n
4038153c:	364100        	entry	a1, 32
4038153f:	8c34      	beqz.n	a4, 0x40381546
40381541:	26141d        	beqi	a4, 1, 0x40381562
40381544:	1df0      	retw.n
40381546:	8802      	l32i.n	a8, a2, 0
40381548:	cb33      	addi.n	a3, a3, 12
4038154a:	e03311        	slli	a3, a3, 2
4038154d:	3a38      	add.n	a3, a8, a3
4038154f:	c02000        	memw
40381552:	8813      	l32i.n	a8, a3, 4
40381554:	21e2cb        	l32r	a2, 0x403744dc
40381557:	208810        	and	a8, a8, a2
4038155a:	c02000        	memw
4038155d:	8913      	s32i.n	a8, a3, 4
4038155f:	46f8ff        	j	0x40381544
40381562:	8802      	l32i.n	a8, a2, 0
40381564:	cb33      	addi.n	a3, a3, 12
40381566:	e03311        	slli	a3, a3, 2
40381569:	3a38      	add.n	a3, a8, a3
4038156b:	c02000        	memw
4038156e:	8813      	l32i.n	a8, a3, 4
40381570:	21aecb        	l32r	a2, 0x40374428
40381573:	208820        	or	a8, a8, a2
40381576:	06f8ff        	j	0x4038155a
40381579:	000000        	ill
4038157c:	364100        	entry	a1, 32
4038157f:	8802      	l32i.n	a8, a2, 0
40381581:	cb33      	addi.n	a3, a3, 12
40381583:	e03311        	slli	a3, a3, 2
40381586:	3a38      	add.n	a3, a8, a3
40381588:	c02000        	memw
4038158b:	8813      	l32i.n	a8, a3, 4
4038158d:	91f0cc        	l32r	a9, 0x40374950
40381590:	104401        	slli	a4, a4, 31
40381593:	908810        	and	a8, a8, a9
40381596:	408820        	or	a8, a8, a4
40381599:	c02000        	memw
4038159c:	8913      	s32i.n	a8, a3, 4
4038159e:	1df0      	retw.n
403815a0:	364100        	entry	a1, 32
403815a3:	9802      	l32i.n	a9, a2, 0
403815a5:	0c18      	movi.n	a8, 1
403815a7:	c02000        	memw
403815aa:	a22919        	l32i	a10, a9, 100
403815ad:	001340        	ssl	a3
403815b0:	0038a1        	sll	a3, a8
403815b3:	a03320        	or	a3, a3, a10
403815b6:	c02000        	memw
403815b9:	326919        	s32i	a3, a9, 100
403815bc:	1df0      	retw.n
403815be:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403815c1:	410098        	l32r	a4, 0x403675c4
403815c4:	021ce8        	l16ui	a0, a12, 0x1d0
403815c7:	c02000        	memw
403815ca:	a809      	l32i.n	a10, a9, 0
403815cc:	3038c0        	sub	a3, a8, a3
403815cf:	0c18      	movi.n	a8, 1
403815d1:	001340        	ssl	a3
403815d4:	0088a1        	sll	a8, a8
403815d7:	a08820        	or	a8, a8, a10
403815da:	c02000        	memw
403815dd:	8909      	s32i.n	a8, a9, 0
403815df:	1df0      	retw.n
403815e1:	000000        	ill
403815e4:	364100        	entry	a1, 32
403815e7:	1cc8      	movi.n	a8, 28
403815e9:	f03311        	slli	a3, a3, 1
403815ec:	9802      	l32i.n	a9, a2, 0
403815ee:	4048c0        	sub	a4, a8, a4
403815f1:	3044c0        	sub	a4, a4, a3
403815f4:	0c13      	movi.n	a3, 1
403815f6:	001440        	ssl	a4
403815f9:	0033a1        	sll	a3, a3
403815fc:	505074        	extui	a5, a5, 0, 8
403815ff:	c02000        	memw
40381602:	4809      	l32i.n	a4, a9, 0
40381604:	8c85      	beqz.n	a5, 0x40381610
40381606:	403320        	or	a3, a3, a4
40381609:	c02000        	memw
4038160c:	3909      	s32i.n	a3, a9, 0
4038160e:	1df0      	retw.n
40381610:	7cf8      	movi.n	a8, -1
40381612:	303830        	xor	a3, a8, a3
40381615:	403310        	and	a3, a3, a4
40381618:	46fbff        	j	0x40381609
4038161b:	00          	.byte	00
4038161c:	366100        	entry	a1, 48
4038161f:	0c8c      	movi.n	a12, 8
40381621:	b2a000        	movi	a11, 0
40381624:	ad02      	mov.n	a10, a2
40381626:	819ecb        	l32r	a8, 0x403744a0
40381629:	e00800        	callx8	a8
4038162c:	505074        	extui	a5, a5, 0, 8
4038162f:	81efce        	l32r	a8, 0x403751ec
40381632:	261308        	beqi	a3, 1, 0x4038163e
40381635:	81eece        	l32r	a8, 0x403751f0
40381638:	262302        	beqi	a3, 2, 0x4038163e
4038163b:	81c6cc        	l32r	a8, 0x40374954
4038163e:	8912      	s32i.n	a8, a2, 4
40381640:	3902      	s32i.n	a3, a2, 0
40381642:	8812      	l32i.n	a8, a2, 4
40381644:	91c3cc        	l32r	a9, 0x40374950
40381647:	21ebce        	l32r	a2, 0x403751f4
4038164a:	505004        	extui	a5, a5, 0, 1
4038164d:	56f311        	bnez	a3, 0x40381770
40381650:	c02000        	memw
40381653:	22682c        	s32i	a2, a8, 176
40381656:	c02000        	memw
40381659:	222826        	l32i	a2, a8, 152
4038165c:	41e7ce        	l32r	a4, 0x403751f8
4038165f:	902210        	and	a2, a2, a9
40381662:	c02000        	memw
40381665:	226826        	s32i	a2, a8, 152
40381668:	c02000        	memw
4038166b:	222826        	l32i	a2, a8, 152
4038166e:	d05511        	slli	a5, a5, 3
40381671:	402210        	and	a2, a2, a4
40381674:	c02000        	memw
40381677:	226826        	s32i	a2, a8, 152
4038167a:	c02000        	memw
4038167d:	222826        	l32i	a2, a8, 152
40381680:	41dfce        	l32r	a4, 0x403751fc
40381683:	402210        	and	a2, a2, a4
40381686:	c02000        	memw
40381689:	226826        	s32i	a2, a8, 152
4038168c:	c02000        	memw
4038168f:	222826        	l32i	a2, a8, 152
40381692:	41dbce        	l32r	a4, 0x40375200
40381695:	402210        	and	a2, a2, a4
40381698:	c02000        	memw
4038169b:	226826        	s32i	a2, a8, 152
4038169e:	c02000        	memw
403816a1:	222826        	l32i	a2, a8, 152
403816a4:	41d8ce        	l32r	a4, 0x40375204
403816a7:	402210        	and	a2, a2, a4
403816aa:	c02000        	memw
403816ad:	226826        	s32i	a2, a8, 152
403816b0:	c02000        	memw
403816b3:	222826        	l32i	a2, a8, 152
403816b6:	42af00        	movi	a4, 0xffffff00
403816b9:	c02000        	memw
403816bc:	2921      	s32i.n	a2, a1, 8
403816be:	c02000        	memw
403816c1:	2821      	l32i.n	a2, a1, 8
403816c3:	402210        	and	a2, a2, a4
403816c6:	c02000        	memw
403816c9:	2921      	s32i.n	a2, a1, 8
403816cb:	c02000        	memw
403816ce:	2821      	l32i.n	a2, a1, 8
403816d0:	42aeff        	movi	a4, 0xfffffeff
403816d3:	c02000        	memw
403816d6:	226826        	s32i	a2, a8, 152
403816d9:	c02000        	memw
403816dc:	222826        	l32i	a2, a8, 152
403816df:	402210        	and	a2, a2, a4
403816e2:	c02000        	memw
403816e5:	226826        	s32i	a2, a8, 152
403816e8:	c02000        	memw
403816eb:	222813        	l32i	a2, a8, 76
403816ee:	0c84      	movi.n	a4, 8
403816f0:	402220        	or	a2, a2, a4
403816f3:	c02000        	memw
403816f6:	226813        	s32i	a2, a8, 76
403816f9:	c02000        	memw
403816fc:	222810        	l32i	a2, a8, 64
403816ff:	7c74      	movi.n	a4, -9
40381701:	402210        	and	a2, a2, a4
40381704:	505220        	or	a5, a2, a5
40381707:	c02000        	memw
4038170a:	526810        	s32i	a5, a8, 64
4038170d:	c02000        	memw
40381710:	222826        	l32i	a2, a8, 152
40381713:	42a400        	movi	a4, 0x400
40381716:	402220        	or	a2, a2, a4
40381719:	c02000        	memw
4038171c:	226826        	s32i	a2, a8, 152
4038171f:	c02000        	memw
40381722:	222826        	l32i	a2, a8, 152
40381725:	414bcb        	l32r	a4, 0x40374454
40381728:	402220        	or	a2, a2, a4
4038172b:	c02000        	memw
4038172e:	226826        	s32i	a2, a8, 152
40381731:	c02000        	memw
40381734:	222826        	l32i	a2, a8, 152
40381737:	42a200        	movi	a4, 0x200
4038173a:	402220        	or	a2, a2, a4
4038173d:	c02000        	memw
40381740:	226826        	s32i	a2, a8, 152
40381743:	c02000        	memw
40381746:	222826        	l32i	a2, a8, 152
40381749:	41afce        	l32r	a4, 0x40375208
4038174c:	402220        	or	a2, a2, a4
4038174f:	c02000        	memw
40381752:	226826        	s32i	a2, a8, 152
40381755:	c02000        	memw
40381758:	222826        	l32i	a2, a8, 152
4038175b:	4170cc        	l32r	a4, 0x4037491c
4038175e:	402220        	or	a2, a2, a4
40381761:	c02000        	memw
40381764:	226826        	s32i	a2, a8, 152
40381767:	c02000        	memw
4038176a:	32682c        	s32i	a3, a8, 176
4038176d:	1df0      	retw.n
4038176f:	00c020        	or	a12, a0, a0
40381772:	00          	.byte	00
40381773:	226819        	s32i	a2, a8, 100
40381776:	c02000        	memw
40381779:	222812        	l32i	a2, a8, 72
4038177c:	31a4ce        	l32r	a3, 0x4037520c
4038177f:	902210        	and	a2, a2, a9
40381782:	c02000        	memw
40381785:	226812        	s32i	a2, a8, 72
40381788:	c02000        	memw
4038178b:	222812        	l32i	a2, a8, 72
4038178e:	e05511        	slli	a5, a5, 2
40381791:	302210        	and	a2, a2, a3
40381794:	c02000        	memw
40381797:	226812        	s32i	a2, a8, 72
4038179a:	c02000        	memw
4038179d:	222812        	l32i	a2, a8, 72
403817a0:	3171cc        	l32r	a3, 0x40374964
403817a3:	0c49      	movi.n	a9, 4
403817a5:	302210        	and	a2, a2, a3
403817a8:	c02000        	memw
403817ab:	226812        	s32i	a2, a8, 72
403817ae:	c02000        	memw
403817b1:	222812        	l32i	a2, a8, 72
403817b4:	3197ce        	l32r	a3, 0x40375210
403817b7:	004411        	slli	a4, a4, 16
403817ba:	302210        	and	a2, a2, a3
403817bd:	c02000        	memw
403817c0:	226812        	s32i	a2, a8, 72
403817c3:	c02000        	memw
403817c6:	222812        	l32i	a2, a8, 72
403817c9:	3192ce        	l32r	a3, 0x40375214
403817cc:	302210        	and	a2, a2, a3
403817cf:	c02000        	memw
403817d2:	226812        	s32i	a2, a8, 72
403817d5:	c02000        	memw
403817d8:	a2281c        	l32i	a10, a8, 112
403817db:	7cb3      	movi.n	a3, -5
403817dd:	30aa10        	and	a10, a10, a3
403817e0:	50aa20        	or	a10, a10, a5
403817e3:	c02000        	memw
403817e6:	a2681c        	s32i	a10, a8, 112
403817e9:	c02000        	memw
403817ec:	22281f        	l32i	a2, a8, 124
403817ef:	902220        	or	a2, a2, a9
403817f2:	c02000        	memw
403817f5:	22681f        	s32i	a2, a8, 124
403817f8:	c02000        	memw
403817fb:	92281c        	l32i	a9, a8, 112
403817fe:	309910        	and	a9, a9, a3
40381801:	505920        	or	a5, a9, a5
40381804:	c02000        	memw
40381807:	52681c        	s32i	a5, a8, 112
4038180a:	c02000        	memw
4038180d:	222812        	l32i	a2, a8, 72
40381810:	3182ce        	l32r	a3, 0x40375218
40381813:	302220        	or	a2, a2, a3
40381816:	c02000        	memw
40381819:	226812        	s32i	a2, a8, 72
4038181c:	c02000        	memw
4038181f:	222812        	l32i	a2, a8, 72
40381822:	317ece        	l32r	a3, 0x4037521c
40381825:	302220        	or	a2, a2, a3
40381828:	c02000        	memw
4038182b:	226812        	s32i	a2, a8, 72
4038182e:	c02000        	memw
40381831:	222813        	l32i	a2, a8, 76
40381834:	c02000        	memw
40381837:	2931      	s32i.n	a2, a1, 12
40381839:	c02000        	memw
4038183c:	2831      	l32i.n	a2, a1, 12
4038183e:	2020f4        	extui	a2, a2, 0, 16
40381841:	402220        	or	a2, a2, a4
40381844:	c02000        	memw
40381847:	2931      	s32i.n	a2, a1, 12
40381849:	c02000        	memw
4038184c:	2831      	l32i.n	a2, a1, 12
4038184e:	c02000        	memw
40381851:	226813        	s32i	a2, a8, 76
40381854:	0c02      	movi.n	a2, 0
40381856:	c02000        	memw
40381859:	226819        	s32i	a2, a8, 100
4038185c:	46c3ff        	j	0x4038176d
4038185f:	003641        	srli	a3, a0, 6
40381862:	008812        	andbc	b8, b8, b0
40381865:	2802      	l32i.n	a2, a2, 0
40381867:	56a209        	bnez	a2, 0x40381905
4038186a:	505024        	extui	a5, a5, 0, 3
4038186d:	26132f        	beqi	a3, 1, 0x403818a0
40381870:	168300        	beqz	a3, 0x4038187c
40381873:	26234a        	beqi	a3, 2, 0x403818c1
40381876:	26336a        	beqi	a3, 3, 0x403818e4
40381879:	250501        	call8	0x403828cc
4038187c:	c02000        	memw
4038187f:	322826        	l32i	a3, a8, 152
40381882:	215dce        	l32r	a2, 0x403751f8
40381885:	405501        	slli	a5, a5, 28
40381888:	203310        	and	a3, a3, a2
4038188b:	505320        	or	a5, a3, a5
4038188e:	c02000        	memw
40381891:	526826        	s32i	a5, a8, 152
40381894:	404141        	srli	a4, a4, 1
40381897:	c02000        	memw
4038189a:	426827        	s32i	a4, a8, 156
4038189d:	1df0      	retw.n
4038189f:	00c020        	or	a12, a0, a0
403818a2:	00          	.byte	00
403818a3:	322826        	l32i	a3, a8, 152
403818a6:	2155ce        	l32r	a2, 0x403751fc
403818a9:	705501        	slli	a5, a5, 25
403818ac:	203310        	and	a3, a3, a2
403818af:	505320        	or	a5, a3, a5
403818b2:	c02000        	memw
403818b5:	526826        	s32i	a5, a8, 152
403818b8:	c02000        	memw
403818bb:	426828        	s32i	a4, a8, 160
403818be:	c6f6ff        	j	0x4038189d
403818c1:	c02000        	memw
403818c4:	322826        	l32i	a3, a8, 152
403818c7:	214ece        	l32r	a2, 0x40375200
403818ca:	a05501        	slli	a5, a5, 22
403818cd:	203310        	and	a3, a3, a2
403818d0:	505320        	or	a5, a3, a5
403818d3:	c02000        	memw
403818d6:	526826        	s32i	a5, a8, 152
403818d9:	c02000        	memw
403818dc:	426829        	s32i	a4, a8, 164
403818df:	86eeff        	j	0x4038189d
403818e2:	0000c0        	sub	a0, a0, a0
403818e5:	200032        	orbc	b0, b0, b2
403818e8:	2826      	l32i.n	a2, a6, 8
403818ea:	2146ce        	l32r	a2, 0x40375204
403818ed:	d05501        	slli	a5, a5, 19
403818f0:	203310        	and	a3, a3, a2
403818f3:	505320        	or	a5, a3, a5
403818f6:	c02000        	memw
403818f9:	526826        	s32i	a5, a8, 152
403818fc:	c02000        	memw
403818ff:	42682a        	s32i	a4, a8, 168
40381902:	c6e5ff        	j	0x4038189d
40381905:	26134f        	beqi	a3, 1, 0x40381958
40381908:	ac83      	beqz.n	a3, 0x40381934
4038190a:	26236e        	beqi	a3, 2, 0x4038197c
4038190d:	66338c        	bnei	a3, 3, 0x4038189d
40381910:	c02000        	memw
40381913:	322812        	l32i	a3, a8, 72
40381916:	213fce        	l32r	a2, 0x40375214
40381919:	505014        	extui	a5, a5, 0, 2
4038191c:	905501        	slli	a5, a5, 23
4038191f:	203310        	and	a3, a3, a2
40381922:	505320        	or	a5, a3, a5
40381925:	c02000        	memw
40381928:	526812        	s32i	a5, a8, 72
4038192b:	c02000        	memw
4038192e:	426817        	s32i	a4, a8, 92
40381931:	06daff        	j	0x4038189d
40381934:	c02000        	memw
40381937:	322812        	l32i	a3, a8, 72
4038193a:	2134ce        	l32r	a2, 0x4037520c
4038193d:	505014        	extui	a5, a5, 0, 2
40381940:	305501        	slli	a5, a5, 29
40381943:	203310        	and	a3, a3, a2
40381946:	505320        	or	a5, a3, a5
40381949:	c02000        	memw
4038194c:	526812        	s32i	a5, a8, 72
4038194f:	c02000        	memw
40381952:	426814        	s32i	a4, a8, 80
40381955:	06d1ff        	j	0x4038189d
40381958:	c02000        	memw
4038195b:	322812        	l32i	a3, a8, 72
4038195e:	2101cc        	l32r	a2, 0x40374964
40381961:	505014        	extui	a5, a5, 0, 2
40381964:	505501        	slli	a5, a5, 27
40381967:	203310        	and	a3, a3, a2
4038196a:	505320        	or	a5, a3, a5
4038196d:	c02000        	memw
40381970:	526812        	s32i	a5, a8, 72
40381973:	c02000        	memw
40381976:	426815        	s32i	a4, a8, 84
40381979:	06c8ff        	j	0x4038189d
4038197c:	c02000        	memw
4038197f:	322812        	l32i	a3, a8, 72
40381982:	2123ce        	l32r	a2, 0x40375210
40381985:	505014        	extui	a5, a5, 0, 2
40381988:	705501        	slli	a5, a5, 25
4038198b:	203310        	and	a3, a3, a2
4038198e:	505320        	or	a5, a3, a5
40381991:	c02000        	memw
40381994:	526812        	s32i	a5, a8, 72
40381997:	c02000        	memw
4038199a:	426816        	s32i	a4, a8, 88
4038199d:	06bfff        	j	0x4038189d
403819a0:	364100        	entry	a1, 32
403819a3:	8812      	l32i.n	a8, a2, 4
403819a5:	2802      	l32i.n	a2, a2, 0
403819a7:	9113ce        	l32r	a9, 0x403751f4
403819aa:	cc62      	bnez.n	a2, 0x403819b4
403819ac:	c02000        	memw
403819af:	92682c        	s32i	a9, a8, 176
403819b2:	1df0      	retw.n
403819b4:	c02000        	memw
403819b7:	926819        	s32i	a9, a8, 100
403819ba:	06fdff        	j	0x403819b2
403819bd:	000000        	ill
403819c0:	364100        	entry	a1, 32
403819c3:	8812      	l32i.n	a8, a2, 4
403819c5:	2802      	l32i.n	a2, a2, 0
403819c7:	a1c1ca        	l32r	a10, 0x403744cc
403819ca:	dce2      	bnez.n	a2, 0x403819ec
403819cc:	c02000        	memw
403819cf:	92282b        	l32i	a9, a8, 172
403819d2:	a09920        	or	a9, a9, a10
403819d5:	c02000        	memw
403819d8:	92682b        	s32i	a9, a8, 172
403819db:	c02000        	memw
403819de:	922826        	l32i	a9, a8, 152
403819e1:	a09920        	or	a9, a9, a10
403819e4:	c02000        	memw
403819e7:	926826        	s32i	a9, a8, 152
403819ea:	1df0      	retw.n
403819ec:	0c12      	movi.n	a2, 1
403819ee:	c02000        	memw
403819f1:	226818        	s32i	a2, a8, 96
403819f4:	c02000        	memw
403819f7:	922812        	l32i	a9, a8, 72
403819fa:	a09920        	or	a9, a9, a10
403819fd:	c02000        	memw
40381a00:	926812        	s32i	a9, a8, 72
40381a03:	c6f8ff        	j	0x403819ea
40381a06:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40381a09:	410088        	l32r	a4, 0x40363a0c
40381a0c:	122802        	l32i	a1, a8, 8
40381a0f:	a1d0cb        	l32r	a10, 0x40374950
40381a12:	ccf2      	bnez.n	a2, 0x40381a25
40381a14:	c02000        	memw
40381a17:	922826        	l32i	a9, a8, 152
40381a1a:	a09910        	and	a9, a9, a10
40381a1d:	c02000        	memw
40381a20:	926826        	s32i	a9, a8, 152
40381a23:	1df0      	retw.n
40381a25:	c02000        	memw
40381a28:	922812        	l32i	a9, a8, 72
40381a2b:	a09910        	and	a9, a9, a10
40381a2e:	c02000        	memw
40381a31:	926812        	s32i	a9, a8, 72
40381a34:	c6faff        	j	0x40381a23
40381a37:	003641        	srli	a3, a0, 6
40381a3a:	008812        	andbc	b8, b8, b0
40381a3d:	2802      	l32i.n	a2, a2, 0
40381a3f:	ec32      	bnez.n	a2, 0x40381a66
40381a41:	c02000        	memw
40381a44:	92282b        	l32i	a9, a8, 172
40381a47:	21a1ca        	l32r	a2, 0x403744cc
40381a4a:	209920        	or	a9, a9, a2
40381a4d:	c02000        	memw
40381a50:	92682b        	s32i	a9, a8, 172
40381a53:	c02000        	memw
40381a56:	922813        	l32i	a9, a8, 76
40381a59:	0c82      	movi.n	a2, 8
40381a5b:	209920        	or	a9, a9, a2
40381a5e:	c02000        	memw
40381a61:	926813        	s32i	a9, a8, 76
40381a64:	1df0      	retw.n
40381a66:	0c12      	movi.n	a2, 1
40381a68:	c02000        	memw
40381a6b:	226818        	s32i	a2, a8, 96
40381a6e:	c02000        	memw
40381a71:	92281f        	l32i	a9, a8, 124
40381a74:	0c42      	movi.n	a2, 4
40381a76:	209920        	or	a9, a9, a2
40381a79:	c02000        	memw
40381a7c:	92681f        	s32i	a9, a8, 124
40381a7f:	46f8ff        	j	0x40381a64
40381a82:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40381a85:	410088        	l32r	a4, 0x40363a88
40381a88:	122802        	l32i	a1, a8, 8
40381a8b:	dc22      	bnez.n	a2, 0x40381aa1
40381a8d:	c02000        	memw
40381a90:	92282b        	l32i	a9, a8, 172
40381a93:	218eca        	l32r	a2, 0x403744cc
40381a96:	209920        	or	a9, a9, a2
40381a99:	c02000        	memw
40381a9c:	92682b        	s32i	a9, a8, 172
40381a9f:	1df0      	retw.n
40381aa1:	0c12      	movi.n	a2, 1
40381aa3:	c02000        	memw
40381aa6:	226818        	s32i	a2, a8, 96
40381aa9:	86fcff        	j	0x40381a9f
40381aac:	364100        	entry	a1, 32
40381aaf:	9812      	l32i.n	a9, a2, 4
40381ab1:	2802      	l32i.n	a2, a2, 0
40381ab3:	303004        	extui	a3, a3, 0, 1
40381ab6:	dca2      	bnez.n	a2, 0x40381ad4
40381ab8:	c02000        	memw
40381abb:	822926        	l32i	a8, a9, 152
40381abe:	216acc        	l32r	a2, 0x40374c68
40381ac1:	403311        	slli	a3, a3, 12
40381ac4:	208810        	and	a8, a8, a2
40381ac7:	303820        	or	a3, a8, a3
40381aca:	c02000        	memw
40381acd:	326926        	s32i	a3, a9, 152
40381ad0:	1df0      	retw.n
40381ad2:	0000c0        	sub	a0, a0, a0
40381ad5:	200082        	mull	a0, a0, a2
40381ad8:	2912      	s32i.n	a2, a2, 4
40381ada:	21c7cb        	l32r	a2, 0x403749f8
40381add:	203311        	slli	a3, a3, 14
40381ae0:	208810        	and	a8, a8, a2
40381ae3:	303820        	or	a3, a8, a3
40381ae6:	c02000        	memw
40381ae9:	326912        	s32i	a3, a9, 72
40381aec:	06f8ff        	j	0x40381ad0
40381aef:	003641        	srli	a3, a0, 6
40381af2:	009802        	andb	b9, b8, b0
40381af5:	8812      	l32i.n	a8, a2, 4
40381af7:	cc69      	bnez.n	a9, 0x40381b01
40381af9:	c02000        	memw
40381afc:	92682c        	s32i	a9, a8, 176
40381aff:	1df0      	retw.n
40381b01:	0c02      	movi.n	a2, 0
40381b03:	c02000        	memw
40381b06:	226819        	s32i	a2, a8, 100
40381b09:	86fcff        	j	0x40381aff
40381b0c:	364100        	entry	a1, 32
40381b0f:	8812      	l32i.n	a8, a2, 4
40381b11:	2802      	l32i.n	a2, a2, 0
40381b13:	cc92      	bnez.n	a2, 0x40381b20
40381b15:	c02000        	memw
40381b18:	222826        	l32i	a2, a8, 152
40381b1b:	202f05        	extui	a2, a2, 31, 1
40381b1e:	1df0      	retw.n
40381b20:	c02000        	memw
40381b23:	222812        	l32i	a2, a8, 72
40381b26:	46fcff        	j	0x40381b1b
40381b29:	000000        	ill
40381b2c:	364100        	entry	a1, 32
40381b2f:	0c42      	movi.n	a2, 4
40381b31:	1df0      	retw.n
40381b33:	003641        	srli	a3, a0, 6
40381b36:	000c08        	lsx	f0, a12, a0
40381b39:	871209        	beq	a2, a8, 0x40381b46
40381b3c:	22c2f8        	addi	a2, a2, -8
40381b3f:	2812      	l32i.n	a2, a2, 4
40381b41:	7cc8      	movi.n	a8, -4
40381b43:	208810        	and	a8, a8, a2
40381b46:	2d08      	mov.n	a2, a8
40381b48:	1df0      	retw.n
40381b4a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40381b4d:	41008d        	l32r	a4, 0x40364f50
40381b50:	02          	.byte	0x2
40381b51:	8cb2      	beqz.n	a2, 0x40381b60
40381b53:	2842      	l32i.n	a2, a2, 16
40381b55:	0c18      	movi.n	a8, 1
40381b57:	202854        	extui	a2, a2, 8, 6
40381b5a:	001240        	ssl	a2
40381b5d:	0088a1        	sll	a8, a8
40381b60:	2d08      	mov.n	a2, a8
40381b62:	1df0      	retw.n
40381b64:	364100        	entry	a1, 32
40381b67:	16f32d        	beqz	a3, 0x40381e4a
40381b6a:	82c3f8        	addi	a8, a3, -8
40381b6d:	b22801        	l32i	a11, a8, 4
40381b70:	80c820        	or	a12, a8, a8
40381b73:	b09004        	extui	a9, a11, 0, 1
40381b76:	16e900        	beqz	a9, 0x40381b88
40381b79:	d1a9cd        	l32r	a13, 0x40375220
40381b7c:	c1aacd        	l32r	a12, 0x40375224
40381b7f:	b2a3c4        	movi	a11, 0x3c4
40381b82:	a1a9cd        	l32r	a10, 0x40375228
40381b85:	a5dd00        	call8	0x40382960
40381b88:	7cc4      	movi.n	a4, -4
40381b8a:	40bb10        	and	a11, a11, a4
40381b8d:	4a33      	add.n	a3, a3, a4
40381b8f:	3a3b      	add.n	a3, a11, a3
40381b91:	b813      	l32i.n	a11, a3, 4
40381b93:	0c2a      	movi.n	a10, 2
40381b95:	a0bb20        	or	a11, a11, a10
40381b98:	b913      	s32i.n	a11, a3, 4
40381b9a:	b818      	l32i.n	a11, a8, 4
40381b9c:	8903      	s32i.n	a8, a3, 0
40381b9e:	0c13      	movi.n	a3, 1
40381ba0:	b03320        	or	a3, a3, a11
40381ba3:	3918      	s32i.n	a3, a8, 4
40381ba5:	a78302        	bany	a3, a10, 0x40381bab
40381ba8:	863e00        	j	0x40381ca6
40381bab:	8808      	l32i.n	a8, a8, 0
40381bad:	ccb8      	bnez.n	a8, 0x40381bbc
40381baf:	d19fcd        	l32r	a13, 0x4037522c
40381bb2:	c19fcd        	l32r	a12, 0x40375230
40381bb5:	b2a157        	movi	a11, 0x157
40381bb8:	86f1ff        	j	0x40381b82
40381bbb:	00a818        	lsxp	f10, a8, a0
40381bbe:	07ea0b        	bbsi	a10, 0, 0x40381bcd
40381bc1:	d19ccd        	l32r	a13, 0x40375234
40381bc4:	c19bcd        	l32r	a12, 0x40375230
40381bc7:	b2a158        	movi	a11, 0x158
40381bca:	06edff        	j	0x40381b82
40381bcd:	3842      	l32i.n	a3, a2, 16
40381bcf:	40aa10        	and	a10, a10, a4
40381bd2:	30b775        	extui	a11, a3, 23, 8
40381bd5:	b7ba1c        	bgeu	a10, a11, 0x40381bf5
40381bd8:	303e54        	extui	a3, a3, 14, 6
40381bdb:	30bbd2        	quos	a11, a11, a3
40381bde:	b0aad2        	quos	a10, a10, a11
40381be1:	3d09      	mov.n	a3, a9
40381be3:	b838      	l32i.n	a11, a8, 12
40381be5:	d828      	l32i.n	a13, a8, 8
40381be7:	fcbb      	bnez.n	a11, 0x40381c26
40381be9:	d193cd        	l32r	a13, 0x40375238
40381bec:	c194cd        	l32r	a12, 0x4037523c
40381bef:	b2a0cd        	movi	a11, 205
40381bf2:	06e3ff        	j	0x40381b82
40381bf5:	4d09      	mov.n	a4, a9
40381bf7:	8c6a      	beqz.n	a10, 0x40381c01
40381bf9:	40fa40        	nsau	a4, a10
40381bfc:	2c0b      	movi.n	a11, 32
40381bfe:	404bc0        	sub	a4, a11, a4
40381c01:	30b425        	extui	a11, a3, 20, 3
40381c04:	0be4      	addi.n	a14, a4, -1
40381c06:	b0eec0        	sub	a14, a14, a11
40381c09:	0c1d      	movi.n	a13, 1
40381c0b:	000e40        	ssr	a14
40381c0e:	a0a091        	srl	a10, a10
40381c11:	001b40        	ssl	a11
40381c14:	00dda1        	sll	a13, a13
40381c17:	303524        	extui	a3, a3, 5, 3
40381c1a:	d0aa30        	xor	a10, a10, a13
40381c1d:	3034c0        	sub	a3, a4, a3
40381c20:	c6efff        	j	0x40381be3
40381c23:	000000        	ill
40381c26:	ccad      	bnez.n	a13, 0x40381c34
40381c28:	d186cd        	l32r	a13, 0x40375240
40381c2b:	c184cd        	l32r	a12, 0x4037523c
40381c2e:	b2a0ce        	movi	a11, 206
40381c31:	46d3ff        	j	0x40381b82
40381c34:	b93d      	s32i.n	a11, a13, 12
40381c36:	d92b      	s32i.n	a13, a11, 8
40381c38:	b842      	l32i.n	a11, a2, 16
40381c3a:	e882      	l32i.n	a14, a2, 32
40381c3c:	b0be54        	extui	a11, a11, 14, 6
40381c3f:	30bb82        	mull	a11, a11, a3
40381c42:	aabb      	add.n	a11, a11, a10
40381c44:	e0bb11        	slli	a11, a11, 2
40381c47:	babe      	add.n	a11, a14, a11
40381c49:	480b      	l32i.n	a4, a11, 0
40381c4b:	479832        	bne	a8, a4, 0x40381c81
40381c4e:	d90b      	s32i.n	a13, a11, 0
40381c50:	279d2d        	bne	a13, a2, 0x40381c81
40381c53:	b872      	l32i.n	a11, a2, 28
40381c55:	e0e311        	slli	a14, a3, 2
40381c58:	eaeb      	add.n	a14, a11, a14
40381c5a:	0c1d      	movi.n	a13, 1
40381c5c:	480e      	l32i.n	a4, a14, 0
40381c5e:	001a40        	ssl	a10
40381c61:	00ada1        	sll	a10, a13
40381c64:	7cfb      	movi.n	a11, -1
40381c66:	a0ab30        	xor	a10, a11, a10
40381c69:	40aa10        	and	a10, a10, a4
40381c6c:	a90e      	s32i.n	a10, a14, 0
40381c6e:	ccfa      	bnez.n	a10, 0x40381c81
40381c70:	001340        	ssl	a3
40381c73:	003da1        	sll	a3, a13
40381c76:	30bb30        	xor	a11, a11, a3
40381c79:	3862      	l32i.n	a3, a2, 24
40381c7b:	b0b310        	and	a11, a3, a11
40381c7e:	b26206        	s32i	a11, a2, 24
40381c81:	4818      	l32i.n	a4, a8, 4
40381c83:	7cc3      	movi.n	a3, -4
40381c85:	37840b        	bany	a4, a3, 0x40381c94
40381c88:	d16fcd        	l32r	a13, 0x40375244
40381c8b:	c16fcd        	l32r	a12, 0x40375248
40381c8e:	b2a144        	movi	a11, 0x144
40381c91:	46bbff        	j	0x40381b82
40381c94:	a81c      	l32i.n	a10, a12, 4
40381c96:	a0a310        	and	a10, a3, a10
40381c99:	4aaa      	add.n	a10, a10, a4
40381c9b:	4baa      	addi.n	a10, a10, 4
40381c9d:	a918      	s32i.n	a10, a8, 4
40381c9f:	30aa10        	and	a10, a10, a3
40381ca2:	aaa8      	add.n	a10, a8, a10
40381ca4:	891a      	s32i.n	a8, a10, 4
40381ca6:	3818      	l32i.n	a3, a8, 4
40381ca8:	7cc4      	movi.n	a4, -4
40381caa:	8bc8      	addi.n	a12, a8, 8
40381cac:	303410        	and	a3, a4, a3
40381caf:	cae3      	add.n	a14, a3, a12
40381cb1:	4aee      	add.n	a14, a14, a4
40381cb3:	ccae      	bnez.n	a14, 0x40381cc1
40381cb5:	d165cd        	l32r	a13, 0x4037524c
40381cb8:	c166cd        	l32r	a12, 0x40375250
40381cbb:	b2a164        	movi	a11, 0x164
40381cbe:	06b0ff        	j	0x40381b82
40381cc1:	a81e      	l32i.n	a10, a14, 4
40381cc3:	07ea02        	bbsi	a10, 0, 0x40381cc9
40381cc6:	862700        	j	0x40381d68
40381cc9:	ccd3      	bnez.n	a3, 0x40381cda
40381ccb:	d162cd        	l32r	a13, 0x40375254
40381cce:	c160cd        	l32r	a12, 0x40375250
40381cd1:	b2a168        	movi	a11, 0x168
40381cd4:	86aaff        	j	0x40381b82
40381cd7:	000000        	ill
40381cda:	3842      	l32i.n	a3, a2, 16
40381cdc:	40aa10        	and	a10, a10, a4
40381cdf:	30d775        	extui	a13, a3, 23, 8
40381ce2:	d73a02        	bltu	a10, a13, 0x40381ce8
40381ce5:	062d00        	j	0x40381d9d
40381ce8:	303e54        	extui	a3, a3, 14, 6
40381ceb:	30ddd2        	quos	a13, a13, a3
40381cee:	d0aad2        	quos	a10, a10, a13
40381cf1:	bd09      	mov.n	a11, a9
40381cf3:	d83e      	l32i.n	a13, a14, 12
40381cf5:	382e      	l32i.n	a3, a14, 8
40381cf7:	16edee        	beqz	a13, 0x40381be9
40381cfa:	16a3f2        	beqz	a3, 0x40381c28
40381cfd:	d933      	s32i.n	a13, a3, 12
40381cff:	392d      	s32i.n	a3, a13, 8
40381d01:	d842      	l32i.n	a13, a2, 16
40381d03:	f882      	l32i.n	a15, a2, 32
40381d05:	d0de54        	extui	a13, a13, 14, 6
40381d08:	b0dd82        	mull	a13, a13, a11
40381d0b:	aadd      	add.n	a13, a13, a10
40381d0d:	e0dd11        	slli	a13, a13, 2
40381d10:	dadf      	add.n	a13, a15, a13
40381d12:	480d      	l32i.n	a4, a13, 0
40381d14:	479e32        	bne	a14, a4, 0x40381d4a
40381d17:	390d      	s32i.n	a3, a13, 0
40381d19:	27932d        	bne	a3, a2, 0x40381d4a
40381d1c:	3872      	l32i.n	a3, a2, 28
40381d1e:	e0fb11        	slli	a15, a11, 2
40381d21:	faf3      	add.n	a15, a3, a15
40381d23:	0c1d      	movi.n	a13, 1
40381d25:	480f      	l32i.n	a4, a15, 0
40381d27:	001a40        	ssl	a10
40381d2a:	00ada1        	sll	a10, a13
40381d2d:	7cf3      	movi.n	a3, -1
40381d2f:	a0a330        	xor	a10, a3, a10
40381d32:	40aa10        	and	a10, a10, a4
40381d35:	a90f      	s32i.n	a10, a15, 0
40381d37:	ccfa      	bnez.n	a10, 0x40381d4a
40381d39:	001b40        	ssl	a11
40381d3c:	00bda1        	sll	a11, a13
40381d3f:	b03330        	xor	a3, a3, a11
40381d42:	b862      	l32i.n	a11, a2, 24
40381d44:	303b10        	and	a3, a11, a3
40381d47:	326206        	s32i	a3, a2, 24
40381d4a:	3818      	l32i.n	a3, a8, 4
40381d4c:	7ccd      	movi.n	a13, -4
40381d4e:	d78302        	bany	a3, a13, 0x40381d54
40381d51:	c6ccff        	j	0x40381c88
40381d54:	b81e      	l32i.n	a11, a14, 4
40381d56:	4b33      	addi.n	a3, a3, 4
40381d58:	b0bd10        	and	a11, a13, a11
40381d5b:	3aab      	add.n	a10, a11, a3
40381d5d:	a918      	s32i.n	a10, a8, 4
40381d5f:	d0aa10        	and	a10, a10, a13
40381d62:	aaac      	add.n	a10, a12, a10
40381d64:	daaa      	add.n	a10, a10, a13
40381d66:	890a      	s32i.n	a8, a10, 0
40381d68:	3818      	l32i.n	a3, a8, 4
40381d6a:	7ccb      	movi.n	a11, -4
40381d6c:	30bb10        	and	a11, a11, a3
40381d6f:	3842      	l32i.n	a3, a2, 16
40381d71:	30d775        	extui	a13, a3, 23, 8
40381d74:	30ae54        	extui	a10, a3, 14, 6
40381d77:	d7bb53        	bgeu	a11, a13, 0x40381dce
40381d7a:	a0ddd2        	quos	a13, a13, a10
40381d7d:	d0bbd2        	quos	a11, a11, a13
40381d80:	a0a982        	mull	a10, a9, a10
40381d83:	d882      	l32i.n	a13, a2, 32
40381d85:	baaa      	add.n	a10, a10, a11
40381d87:	e0aa11        	slli	a10, a10, 2
40381d8a:	aaad      	add.n	a10, a13, a10
40381d8c:	380a      	l32i.n	a3, a10, 0
40381d8e:	568306        	bnez	a3, 0x40381dfa
40381d91:	d131cd        	l32r	a13, 0x40375258
40381d94:	c132cd        	l32r	a12, 0x4037525c
40381d97:	b2a0e9        	movi	a11, 233
40381d9a:	0679ff        	j	0x40381b82
40381d9d:	bd09      	mov.n	a11, a9
40381d9f:	8c6a      	beqz.n	a10, 0x40381da9
40381da1:	40fa40        	nsau	a4, a10
40381da4:	2c0b      	movi.n	a11, 32
40381da6:	40bbc0        	sub	a11, a11, a4
40381da9:	304425        	extui	a4, a3, 20, 3
40381dac:	0bfb      	addi.n	a15, a11, -1
40381dae:	40ffc0        	sub	a15, a15, a4
40381db1:	0c1d      	movi.n	a13, 1
40381db3:	000f40        	ssr	a15
40381db6:	a0a091        	srl	a10, a10
40381db9:	001440        	ssl	a4
40381dbc:	00dda1        	sll	a13, a13
40381dbf:	303524        	extui	a3, a3, 5, 3
40381dc2:	d0aa30        	xor	a10, a10, a13
40381dc5:	30bbc0        	sub	a11, a11, a3
40381dc8:	c6c9ff        	j	0x40381cf3
40381dcb:	000000        	ill
40381dce:	8c6b      	beqz.n	a11, 0x40381dd8
40381dd0:	40fb40        	nsau	a4, a11
40381dd3:	2c09      	movi.n	a9, 32
40381dd5:	4099c0        	sub	a9, a9, a4
40381dd8:	30f425        	extui	a15, a3, 20, 3
40381ddb:	0be9      	addi.n	a14, a9, -1
40381ddd:	f0eec0        	sub	a14, a14, a15
40381de0:	0c1d      	movi.n	a13, 1
40381de2:	000e40        	ssr	a14
40381de5:	b0b091        	srl	a11, a11
40381de8:	001f40        	ssl	a15
40381deb:	00dda1        	sll	a13, a13
40381dee:	303524        	extui	a3, a3, 5, 3
40381df1:	d0bb30        	xor	a11, a11, a13
40381df4:	3099c0        	sub	a9, a9, a3
40381df7:	46e1ff        	j	0x40381d80
40381dfa:	3928      	s32i.n	a3, a8, 8
40381dfc:	2938      	s32i.n	a2, a8, 12
40381dfe:	8933      	s32i.n	a8, a3, 12
40381e00:	7cc4      	movi.n	a4, -4
40381e02:	3b3c      	addi.n	a3, a12, 3
40381e04:	403310        	and	a3, a3, a4
40381e07:	371c0b        	beq	a12, a3, 0x40381e16
40381e0a:	d115cd        	l32r	a13, 0x40375260
40381e0d:	c113cd        	l32r	a12, 0x4037525c
40381e10:	b2a0ef        	movi	a11, 239
40381e13:	c65aff        	j	0x40381b82
40381e16:	a842      	l32i.n	a10, a2, 16
40381e18:	0c13      	movi.n	a3, 1
40381e1a:	a0ae54        	extui	a10, a10, 14, 6
40381e1d:	90aa82        	mull	a10, a10, a9
40381e20:	001940        	ssl	a9
40381e23:	0043a1        	sll	a4, a3
40381e26:	baaa      	add.n	a10, a10, a11
40381e28:	e0aa11        	slli	a10, a10, 2
40381e2b:	aaad      	add.n	a10, a13, a10
40381e2d:	890a      	s32i.n	a8, a10, 0
40381e2f:	8862      	l32i.n	a8, a2, 24
40381e31:	e09911        	slli	a9, a9, 2
40381e34:	408820        	or	a8, a8, a4
40381e37:	8962      	s32i.n	a8, a2, 24
40381e39:	2872      	l32i.n	a2, a2, 28
40381e3b:	001b40        	ssl	a11
40381e3e:	00b3a1        	sll	a11, a3
40381e41:	9a92      	add.n	a9, a2, a9
40381e43:	3809      	l32i.n	a3, a9, 0
40381e45:	b0b320        	or	a11, a3, a11
40381e48:	b909      	s32i.n	a11, a9, 0
40381e4a:	1df0      	retw.n
40381e4c:	364100        	entry	a1, 32
40381e4f:	8d02      	mov.n	a8, a2
40381e51:	8c02      	beqz.n	a2, 0x40381e55
40381e53:	8852      	l32i.n	a8, a2, 20
40381e55:	8a22      	add.n	a2, a2, a8
40381e57:	1df0      	retw.n
40381e59:	000000        	ill
40381e5c:	364100        	entry	a1, 32
40381e5f:	16a32d        	beqz	a3, 0x4038213d
40381e62:	32c303        	addi	a3, a3, 3
40381e65:	b2affc        	movi	a11, -4
40381e68:	ad02      	mov.n	a10, a2
40381e6a:	b03310        	and	a3, a3, a11
40381e6d:	e5cdff        	call8	0x40381b4c
40381e70:	a73302        	bltu	a3, a10, 0x40381e76
40381e73:	86b200        	j	0x40382141
40381e76:	a842      	l32i.n	a10, a2, 16
40381e78:	0ccb      	movi.n	a11, 12
40381e7a:	b0b373        	maxu	a11, a3, a11
40381e7d:	a08775        	extui	a8, a10, 23, 8
40381e80:	87bb02        	bgeu	a11, a8, 0x40381e86
40381e83:	861f00        	j	0x40381f05
40381e86:	40fb40        	nsau	a4, a11
40381e89:	1cf3      	movi.n	a3, 31
40381e8b:	4033c0        	sub	a3, a3, a4
40381e8e:	a0c425        	extui	a12, a10, 20, 3
40381e91:	c043c0        	sub	a4, a3, a12
40381e94:	0c13      	movi.n	a3, 1
40381e96:	001440        	ssl	a4
40381e99:	0033a1        	sll	a3, a3
40381e9c:	0b33      	addi.n	a3, a3, -1
40381e9e:	ba33      	add.n	a3, a3, a11
40381ea0:	87b366        	bgeu	a3, a8, 0x40381f0a
40381ea3:	a04e54        	extui	a4, a10, 14, 6
40381ea6:	4088d2        	quos	a8, a8, a4
40381ea9:	8033d2        	quos	a3, a3, a8
40381eac:	0c09      	movi.n	a9, 0
40381eae:	a04044        	extui	a4, a10, 0, 5
40381eb1:	472902        	blt	a9, a4, 0x40381eb7
40381eb4:	46a200        	j	0x40382141
40381eb7:	c872      	l32i.n	a12, a2, 28
40381eb9:	e04911        	slli	a4, a9, 2
40381ebc:	4a4c      	add.n	a4, a12, a4
40381ebe:	7cfd      	movi.n	a13, -1
40381ec0:	8804      	l32i.n	a8, a4, 0
40381ec2:	001340        	ssl	a3
40381ec5:	003da1        	sll	a3, a13
40381ec8:	808310        	and	a8, a3, a8
40381ecb:	569806        	bnez	a8, 0x40381f38
40381ece:	1b39      	addi.n	a3, a9, 1
40381ed0:	9862      	l32i.n	a9, a2, 24
40381ed2:	001340        	ssl	a3
40381ed5:	003da1        	sll	a3, a13
40381ed8:	903310        	and	a3, a3, a9
40381edb:	16e325        	beqz	a3, 0x4038213d
40381ede:	309060        	neg	a9, a3
40381ee1:	303910        	and	a3, a9, a3
40381ee4:	30f340        	nsau	a3, a3
40381ee7:	1cf9      	movi.n	a9, 31
40381ee9:	3099c0        	sub	a9, a9, a3
40381eec:	e03911        	slli	a3, a9, 2
40381eef:	3a3c      	add.n	a3, a12, a3
40381ef1:	8803      	l32i.n	a8, a3, 0
40381ef3:	561804        	bnez	a8, 0x40381f38
40381ef6:	d1dbcc        	l32r	a13, 0x40375264
40381ef9:	c1dbcc        	l32r	a12, 0x40375268
40381efc:	b2a0c0        	movi	a11, 192
40381eff:	a1cacc        	l32r	a10, 0x40375228
40381f02:	e5a500        	call8	0x40382960
40381f05:	3d0b      	mov.n	a3, a11
40381f07:	06e6ff        	j	0x40381ea3
40381f0a:	0c09      	movi.n	a9, 0
40381f0c:	971308        	beq	a3, a9, 0x40381f18
40381f0f:	40f340        	nsau	a4, a3
40381f12:	92a020        	movi	a9, 32
40381f15:	4099c0        	sub	a9, a9, a4
40381f18:	0b89      	addi.n	a8, a9, -1
40381f1a:	c088c0        	sub	a8, a8, a12
40381f1d:	000840        	ssr	a8
40381f20:	303091        	srl	a3, a3
40381f23:	0c18      	movi.n	a8, 1
40381f25:	001c40        	ssl	a12
40381f28:	00c8a1        	sll	a12, a8
40381f2b:	a04524        	extui	a4, a10, 5, 3
40381f2e:	c03330        	xor	a3, a3, a12
40381f31:	4099c0        	sub	a9, a9, a4
40381f34:	86ddff        	j	0x40381eae
40381f37:	008030        	xor	a8, a0, a0
40381f3a:	608083        	moveqz	a8, a0, a6
40381f3d:	10          	.byte	0x10
40381f3e:	80f840        	nsau	a8, a8
40381f41:	1cf3      	movi.n	a3, 31
40381f43:	8083c0        	sub	a8, a3, a8
40381f46:	a03e54        	extui	a3, a10, 14, 6
40381f49:	903382        	mull	a3, a3, a9
40381f4c:	d882      	l32i.n	a13, a2, 32
40381f4e:	8a33      	add.n	a3, a3, a8
40381f50:	e03311        	slli	a3, a3, 2
40381f53:	3a3d      	add.n	a3, a13, a3
40381f55:	3803      	l32i.n	a3, a3, 0
40381f57:	16231e        	beqz	a3, 0x4038213d
40381f5a:	5813      	l32i.n	a5, a3, 4
40381f5c:	7cc4      	movi.n	a4, -4
40381f5e:	504410        	and	a4, a4, a5
40381f61:	b7b40b        	bgeu	a4, a11, 0x40381f70
40381f64:	d1c2cc        	l32r	a13, 0x4037526c
40381f67:	c1c2cc        	l32r	a12, 0x40375270
40381f6a:	b2a1b9        	movi	a11, 0x1b9
40381f6d:	86e3ff        	j	0x40381eff
40381f70:	5833      	l32i.n	a5, a3, 12
40381f72:	4823      	l32i.n	a4, a3, 8
40381f74:	cca5      	bnez.n	a5, 0x40381f82
40381f76:	d1b0cc        	l32r	a13, 0x40375238
40381f79:	c1b0cc        	l32r	a12, 0x4037523c
40381f7c:	b2a0cd        	movi	a11, 205
40381f7f:	06dfff        	j	0x40381eff
40381f82:	cca4      	bnez.n	a4, 0x40381f90
40381f84:	d1afcc        	l32r	a13, 0x40375240
40381f87:	c1adcc        	l32r	a12, 0x4037523c
40381f8a:	b2a0ce        	movi	a11, 206
40381f8d:	86dbff        	j	0x40381eff
40381f90:	5934      	s32i.n	a5, a4, 12
40381f92:	4925      	s32i.n	a4, a5, 8
40381f94:	a842      	l32i.n	a10, a2, 16
40381f96:	a0ae54        	extui	a10, a10, 14, 6
40381f99:	90aa82        	mull	a10, a10, a9
40381f9c:	8aaa      	add.n	a10, a10, a8
40381f9e:	e0aa11        	slli	a10, a10, 2
40381fa1:	aaad      	add.n	a10, a13, a10
40381fa3:	580a      	l32i.n	a5, a10, 0
40381fa5:	57932f        	bne	a3, a5, 0x40381fd8
40381fa8:	490a      	s32i.n	a4, a10, 0
40381faa:	27942a        	bne	a4, a2, 0x40381fd8
40381fad:	e0a911        	slli	a10, a9, 2
40381fb0:	aaac      	add.n	a10, a12, a10
40381fb2:	0c15      	movi.n	a5, 1
40381fb4:	e80a      	l32i.n	a14, a10, 0
40381fb6:	001840        	ssl	a8
40381fb9:	0085a1        	sll	a8, a5
40381fbc:	7cf4      	movi.n	a4, -1
40381fbe:	808430        	xor	a8, a4, a8
40381fc1:	e08810        	and	a8, a8, a14
40381fc4:	890a      	s32i.n	a8, a10, 0
40381fc6:	cce8      	bnez.n	a8, 0x40381fd8
40381fc8:	001940        	ssl	a9
40381fcb:	0095a1        	sll	a9, a5
40381fce:	904430        	xor	a4, a4, a9
40381fd1:	9862      	l32i.n	a9, a2, 24
40381fd3:	404910        	and	a4, a9, a4
40381fd6:	4962      	s32i.n	a4, a2, 24
40381fd8:	8813      	l32i.n	a8, a3, 4
40381fda:	07e80b        	bbsi	a8, 0, 0x40381fe9
40381fdd:	d1a5cc        	l32r	a13, 0x40375274
40381fe0:	c1a6cc        	l32r	a12, 0x40375278
40381fe3:	b2a173        	movi	a11, 0x173
40381fe6:	46c5ff        	j	0x40381eff
40381fe9:	7cc9      	movi.n	a9, -4
40381feb:	908810        	and	a8, a8, a9
40381fee:	42cb10        	addi	a4, a11, 16
40381ff1:	8be3      	addi.n	a14, a3, 8
40381ff3:	47b802        	bgeu	a8, a4, 0x40381ff9
40381ff6:	864900        	j	0x40382120
40381ff9:	9aab      	add.n	a10, a11, a9
40381ffb:	eaaa      	add.n	a10, a10, a14
40381ffd:	b0f9c0        	sub	a15, a9, a11
40382000:	8a5f      	add.n	a5, a15, a8
40382002:	bbfa      	addi.n	a15, a10, 11
40382004:	8b4a      	addi.n	a4, a10, 8
40382006:	90ff10        	and	a15, a15, a9
40382009:	f7140b        	beq	a4, a15, 0x40382018
4038200c:	d19ccc        	l32r	a13, 0x4037527c
4038200f:	c19ccc        	l32r	a12, 0x40375280
40382012:	b2a11d        	movi	a11, 0x11d
40382015:	86b9ff        	j	0x40381eff
40382018:	4bfb      	addi.n	a15, a11, 4
4038201a:	5aff      	add.n	a15, a15, a5
4038201c:	f7180c        	beq	a8, a15, 0x4038202c
4038201f:	d199cc        	l32r	a13, 0x40375284 (0x3c0898d2)
40382022:	c197cc        	l32r	a12, 0x40375280
40382025:	b2a120        	movi	a11, 0x120
40382028:	c6b4ff        	j	0x40381eff
4038202b:	00f81a        	sub.s	f15, f8, f0
4038202e:	f0f014        	extui	a15, a15, 0, 2
40382031:	50ff20        	or	a15, a15, a5
40382034:	f91a      	s32i.n	a15, a10, 4
40382036:	0cb5      	movi.n	a5, 11
40382038:	90ff10        	and	a15, a15, a9
4038203b:	f7350b        	bltu	a5, a15, 0x4038204a
4038203e:	d192cc        	l32r	a13, 0x40375288 (0x3c089912)
40382041:	c18fcc        	l32r	a12, 0x40375280
40382044:	b2a122        	movi	a11, 0x122
40382047:	06adff        	j	0x40381eff
4038204a:	8813      	l32i.n	a8, a3, 4
4038204c:	0c25      	movi.n	a5, 2
4038204e:	808014        	extui	a8, a8, 0, 2
40382051:	b0b820        	or	a11, a8, a11
40382054:	b913      	s32i.n	a11, a3, 4
40382056:	881a      	l32i.n	a8, a10, 4
40382058:	808910        	and	a8, a9, a8
4038205b:	4a88      	add.n	a8, a8, a4
4038205d:	82c8fc        	addi	a8, a8, -4
40382060:	4818      	l32i.n	a4, a8, 4
40382062:	a908      	s32i.n	a10, a8, 0
40382064:	504420        	or	a4, a4, a5
40382067:	4918      	s32i.n	a4, a8, 4
40382069:	481a      	l32i.n	a4, a10, 4
4038206b:	0c15      	movi.n	a5, 1
4038206d:	505420        	or	a5, a4, a5
40382070:	591a      	s32i.n	a5, a10, 4
40382072:	8813      	l32i.n	a8, a3, 4
40382074:	0c35      	movi.n	a5, 3
40382076:	808910        	and	a8, a9, a8
40382079:	8a8e      	add.n	a8, a14, a8
4038207b:	82c8fc        	addi	a8, a8, -4
4038207e:	3908      	s32i.n	a3, a8, 0
40382080:	505420        	or	a5, a4, a5
40382083:	591a      	s32i.n	a5, a10, 4
40382085:	b842      	l32i.n	a11, a2, 16
40382087:	909410        	and	a9, a4, a9
4038208a:	b04775        	extui	a4, a11, 23, 8
4038208d:	47b927        	bgeu	a9, a4, 0x403820b8
40382090:	b05e54        	extui	a5, a11, 14, 6
40382093:	5044d2        	quos	a4, a4, a5
40382096:	4099d2        	quos	a9, a9, a4
40382099:	0c08      	movi.n	a8, 0
4038209b:	b0be54        	extui	a11, a11, 14, 6
4038209e:	80bb82        	mull	a11, a11, a8
403820a1:	9abb      	add.n	a11, a11, a9
403820a3:	e0bb11        	slli	a11, a11, 2
403820a6:	babd      	add.n	a11, a13, a11
403820a8:	480b      	l32i.n	a4, a11, 0
403820aa:	fca4      	bnez.n	a4, 0x403820e8
403820ac:	d16bcc        	l32r	a13, 0x40375258
403820af:	c16bcc        	l32r	a12, 0x4037525c
403820b2:	b2a0e9        	movi	a11, 233
403820b5:	8691ff        	j	0x40381eff
403820b8:	0c08      	movi.n	a8, 0
403820ba:	871907        	beq	a9, a8, 0x403820c5
403820bd:	40f940        	nsau	a4, a9
403820c0:	2c08      	movi.n	a8, 32
403820c2:	4088c0        	sub	a8, a8, a4
403820c5:	b0f425        	extui	a15, a11, 20, 3
403820c8:	0b58      	addi.n	a5, a8, -1
403820ca:	f055c0        	sub	a5, a5, a15
403820cd:	0c14      	movi.n	a4, 1
403820cf:	001f40        	ssl	a15
403820d2:	0044a1        	sll	a4, a4
403820d5:	000540        	ssr	a5
403820d8:	909091        	srl	a9, a9
403820db:	409930        	xor	a9, a9, a4
403820de:	b04524        	extui	a4, a11, 5, 3
403820e1:	4088c0        	sub	a8, a8, a4
403820e4:	c6ecff        	j	0x4038209b
403820e7:	00492a        	mul.s	f4, f9, f0
403820ea:	293a      	s32i.n	a2, a10, 12
403820ec:	a934      	s32i.n	a10, a4, 12
403820ee:	b842      	l32i.n	a11, a2, 16
403820f0:	0c14      	movi.n	a4, 1
403820f2:	b0be54        	extui	a11, a11, 14, 6
403820f5:	80bb82        	mull	a11, a11, a8
403820f8:	5862      	l32i.n	a5, a2, 24
403820fa:	9abb      	add.n	a11, a11, a9
403820fc:	e0bb11        	slli	a11, a11, 2
403820ff:	badd      	add.n	a13, a13, a11
40382101:	a90d      	s32i.n	a10, a13, 0
40382103:	001840        	ssl	a8
40382106:	00a4a1        	sll	a10, a4
40382109:	a05520        	or	a5, a5, a10
4038210c:	e08811        	slli	a8, a8, 2
4038210f:	5962      	s32i.n	a5, a2, 24
40382111:	8acc      	add.n	a12, a12, a8
40382113:	001940        	ssl	a9
40382116:	0094a1        	sll	a9, a4
40382119:	480c      	l32i.n	a4, a12, 0
4038211b:	909420        	or	a9, a4, a9
4038211e:	990c      	s32i.n	a9, a12, 0
40382120:	4813      	l32i.n	a4, a3, 4
40382122:	7cc2      	movi.n	a2, -4
40382124:	402210        	and	a2, a2, a4
40382127:	2a2e      	add.n	a2, a14, a2
40382129:	4802      	l32i.n	a4, a2, 0
4038212b:	7cd5      	movi.n	a5, -3
4038212d:	504410        	and	a4, a4, a5
40382130:	4902      	s32i.n	a4, a2, 0
40382132:	2813      	l32i.n	a2, a3, 4
40382134:	7ce4      	movi.n	a4, -2
40382136:	402210        	and	a2, a2, a4
40382139:	2913      	s32i.n	a2, a3, 4
4038213b:	3d0e      	mov.n	a3, a14
4038213d:	2d03      	mov.n	a2, a3
4038213f:	1df0      	retw.n
40382141:	0c03      	movi.n	a3, 0
40382143:	86fdff        	j	0x4038213d
40382146:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40382149:	410016        	l32r	a4, 0x4034794c
4038214c:	f30056        	lsi	f15, a0, 0x158
4038214f:	c4          	.byte	0xc4
40382150:	0030b3        	movgez	a3, a0, a0
40382153:	20ad02        	andb	b10, b13, b2
40382156:	e5a0ff        	call8	0x40381b64
40382159:	0c05      	movi.n	a5, 0
4038215b:	460300        	j	0x4038216c
4038215e:	56e300        	bnez	a3, 0x40382170
40382161:	40b420        	or	a11, a4, a4
40382164:	20a220        	or	a10, a2, a2
40382167:	65cfff        	call8	0x40381e5c
4038216a:	5d0a      	mov.n	a5, a10
4038216c:	2d05      	mov.n	a2, a5
4038216e:	1df0      	retw.n
40382170:	1654fe        	beqz	a4, 0x40382159
40382173:	3bb4      	addi.n	a11, a4, 3
40382175:	7cc7      	movi.n	a7, -4
40382177:	ad02      	mov.n	a10, a2
40382179:	705b10        	and	a5, a11, a7
4038217c:	e59cff        	call8	0x40381b4c
4038217f:	a7b5d6        	bgeu	a5, a10, 0x40382159
40382182:	d2c3f8        	addi	a13, a3, -8
40382185:	681d      	l32i.n	a6, a13, 4
40382187:	0ccb      	movi.n	a11, 12
40382189:	609004        	extui	a9, a6, 0, 1
4038218c:	b0b573        	maxu	a11, a5, a11
4038218f:	8cd9      	beqz.n	a9, 0x403821a0
40382191:	d123cc        	l32r	a13, 0x40375220
40382194:	c13ecc        	l32r	a12, 0x4037528c (0x3c089ae0)
40382197:	b2a3f7        	movi	a11, 0x3f7
4038219a:	a123cc        	l32r	a10, 0x40375228
4038219d:	257c00        	call8	0x40382960
403821a0:	706610        	and	a6, a6, a7
403821a3:	a2c3fc        	addi	a10, a3, -4
403821a6:	b73602        	bltu	a6, a11, 0x403821ac
403821a9:	c64c00        	j	0x403822e0
403821ac:	aae6      	add.n	a14, a6, a10
403821ae:	c81e      	l32i.n	a12, a14, 4
403821b0:	4b56      	addi.n	a5, a6, 4
403821b2:	708c10        	and	a8, a12, a7
403821b5:	805580        	add	a5, a5, a8
403821b8:	b73502        	bltu	a5, a11, 0x403821be
403821bb:	07ec23        	bbsi	a12, 0, 0x403821e2
403821be:	bd04      	mov.n	a11, a4
403821c0:	ad02      	mov.n	a10, a2
403821c2:	a5c9ff        	call8	0x40381e5c
403821c5:	5d0a      	mov.n	a5, a10
403821c7:	161afa        	beqz	a10, 0x4038216c
403821ca:	bd03      	mov.n	a11, a3
403821cc:	60c463        	minu	a12, a4, a6
403821cf:	81b2c8        	l32r	a8, 0x40374498
403821d2:	e00800        	callx8	a8
403821d5:	bd03      	mov.n	a11, a3
403821d7:	ad02      	mov.n	a10, a2
403821d9:	a598ff        	call8	0x40381b64
403821dc:	06e3ff        	j	0x4038216c
403821df:	000000        	ill
403821e2:	ccae      	bnez.n	a14, 0x403821f0
403821e4:	d11acc        	l32r	a13, 0x4037524c
403821e7:	c11acc        	l32r	a12, 0x40375250
403821ea:	b2a164        	movi	a11, 0x164
403821ed:	46eaff        	j	0x4038219a
403821f0:	cca6      	bnez.n	a6, 0x403821fe
403821f2:	d118cc        	l32r	a13, 0x40375254
403821f5:	c116cc        	l32r	a12, 0x40375250
403821f8:	b2a168        	movi	a11, 0x168
403821fb:	c6e6ff        	j	0x4038219a
403821fe:	5842      	l32i.n	a5, a2, 16
40382200:	504775        	extui	a4, a5, 23, 8
40382203:	47b81b        	bgeu	a8, a4, 0x40382222
40382206:	505e54        	extui	a5, a5, 14, 6
40382209:	5044d2        	quos	a4, a4, a5
4038220c:	4088d2        	quos	a8, a8, a4
4038220f:	583e      	l32i.n	a5, a14, 12
40382211:	482e      	l32i.n	a4, a14, 8
40382213:	fc75      	bnez.n	a5, 0x4038224e
40382215:	d108cc        	l32r	a13, 0x40375238
40382218:	c109cc        	l32r	a12, 0x4037523c
4038221b:	b2a0cd        	movi	a11, 205
4038221e:	06deff        	j	0x4038219a
40382221:	00          	.byte	00
40382222:	8c68      	beqz.n	a8, 0x4038222c
40382224:	40f840        	nsau	a4, a8
40382227:	2c09      	movi.n	a9, 32
40382229:	4099c0        	sub	a9, a9, a4
4038222c:	507425        	extui	a7, a5, 20, 3
4038222f:	0b69      	addi.n	a6, a9, -1
40382231:	7066c0        	sub	a6, a6, a7
40382234:	0c14      	movi.n	a4, 1
40382236:	000640        	ssr	a6
40382239:	808091        	srl	a8, a8
4038223c:	001740        	ssl	a7
4038223f:	0044a1        	sll	a4, a4
40382242:	505524        	extui	a5, a5, 5, 3
40382245:	408830        	xor	a8, a8, a4
40382248:	5099c0        	sub	a9, a9, a5
4038224b:	06f0ff        	j	0x4038220f
4038224e:	cca4      	bnez.n	a4, 0x4038225c
40382250:	d1fccb        	l32r	a13, 0x40375240
40382253:	c1facb        	l32r	a12, 0x4037523c
40382256:	b2a0ce        	movi	a11, 206
40382259:	46cfff        	j	0x4038219a
4038225c:	5934      	s32i.n	a5, a4, 12
4038225e:	4925      	s32i.n	a4, a5, 8
40382260:	5842      	l32i.n	a5, a2, 16
40382262:	6882      	l32i.n	a6, a2, 32
40382264:	505e54        	extui	a5, a5, 14, 6
40382267:	905582        	mull	a5, a5, a9
4038226a:	8a55      	add.n	a5, a5, a8
4038226c:	e05511        	slli	a5, a5, 2
4038226f:	5a56      	add.n	a5, a6, a5
40382271:	6805      	l32i.n	a6, a5, 0
40382273:	e79632        	bne	a6, a14, 0x403822a9
40382276:	4905      	s32i.n	a4, a5, 0
40382278:	27942d        	bne	a4, a2, 0x403822a9
4038227b:	4872      	l32i.n	a4, a2, 28
4038227d:	e06911        	slli	a6, a9, 2
40382280:	6a64      	add.n	a6, a4, a6
40382282:	0c15      	movi.n	a5, 1
40382284:	7806      	l32i.n	a7, a6, 0
40382286:	001840        	ssl	a8
40382289:	0085a1        	sll	a8, a5
4038228c:	7cf4      	movi.n	a4, -1
4038228e:	808430        	xor	a8, a4, a8
40382291:	708810        	and	a8, a8, a7
40382294:	8906      	s32i.n	a8, a6, 0
40382296:	ccf8      	bnez.n	a8, 0x403822a9
40382298:	001940        	ssl	a9
4038229b:	0095a1        	sll	a9, a5
4038229e:	904430        	xor	a4, a4, a9
403822a1:	9862      	l32i.n	a9, a2, 24
403822a3:	404910        	and	a4, a9, a4
403822a6:	426206        	s32i	a4, a2, 24
403822a9:	481d      	l32i.n	a4, a13, 4
403822ab:	7cc5      	movi.n	a5, -4
403822ad:	57840b        	bany	a4, a5, 0x403822bc
403822b0:	d1e5cb        	l32r	a13, 0x40375244
403822b3:	c1e5cb        	l32r	a12, 0x40375248
403822b6:	b2a144        	movi	a11, 0x144
403822b9:	46b7ff        	j	0x4038219a
403822bc:	981e      	l32i.n	a9, a14, 4
403822be:	4b44      	addi.n	a4, a4, 4
403822c0:	909510        	and	a9, a5, a9
403822c3:	4a89      	add.n	a8, a9, a4
403822c5:	891d      	s32i.n	a8, a13, 4
403822c7:	508810        	and	a8, a8, a5
403822ca:	aa88      	add.n	a8, a8, a10
403822cc:	4818      	l32i.n	a4, a8, 4
403822ce:	7cd5      	movi.n	a5, -3
403822d0:	504410        	and	a4, a4, a5
403822d3:	4918      	s32i.n	a4, a8, 4
403822d5:	481d      	l32i.n	a4, a13, 4
403822d7:	7ce5      	movi.n	a5, -2
403822d9:	d908      	s32i.n	a13, a8, 0
403822db:	504410        	and	a4, a4, a5
403822de:	491d      	s32i.n	a4, a13, 4
403822e0:	581d      	l32i.n	a5, a13, 4
403822e2:	508004        	extui	a8, a5, 0, 1
403822e5:	8cb8      	beqz.n	a8, 0x403822f4
403822e7:	d1eacb        	l32r	a13, 0x40375290 (0x3c089aa2)
403822ea:	c1eacb        	l32r	a12, 0x40375294 (0x3c089ad0)
403822ed:	b2a180        	movi	a11, 0x180
403822f0:	86a9ff        	j	0x4038219a
403822f3:	00          	.byte	00
403822f4:	7cc9      	movi.n	a9, -4
403822f6:	905510        	and	a5, a5, a9
403822f9:	42cb10        	addi	a4, a11, 16
403822fc:	47b502        	bgeu	a5, a4, 0x40382302
403822ff:	467500        	j	0x403824d8
40382302:	aaab      	add.n	a10, a11, a10
40382304:	bb4a      	addi.n	a4, a10, 11
40382306:	9a55      	add.n	a5, a5, a9
40382308:	8bca      	addi.n	a12, a10, 8
4038230a:	904410        	and	a4, a4, a9
4038230d:	b055c0        	sub	a5, a5, a11
40382310:	471c0c        	beq	a12, a4, 0x40382320
40382313:	d1dacb        	l32r	a13, 0x4037527c
40382316:	c1dacb        	l32r	a12, 0x40375280
40382319:	b2a11d        	movi	a11, 0x11d
4038231c:	869eff        	j	0x4038219a
4038231f:	00e81a        	sub.s	f14, f8, f0
40382322:	0cb4      	movi.n	a4, 11
40382324:	e0e014        	extui	a14, a14, 0, 2
40382327:	505e20        	or	a5, a14, a5
4038232a:	591a      	s32i.n	a5, a10, 4
4038232c:	905510        	and	a5, a5, a9
4038232f:	57340b        	bltu	a4, a5, 0x4038233e
40382332:	d1d5cb        	l32r	a13, 0x40375288 (0x3c089912)
40382335:	c1d2cb        	l32r	a12, 0x40375280
40382338:	b2a122        	movi	a11, 0x122
4038233b:	c696ff        	j	0x4038219a
4038233e:	481d      	l32i.n	a4, a13, 4
40382340:	0c26      	movi.n	a6, 2
40382342:	404014        	extui	a4, a4, 0, 2
40382345:	b0b420        	or	a11, a4, a11
40382348:	b91d      	s32i.n	a11, a13, 4
4038234a:	581a      	l32i.n	a5, a10, 4
4038234c:	505910        	and	a5, a9, a5
4038234f:	ca55      	add.n	a5, a5, a12
40382351:	52c5fc        	addi	a5, a5, -4
40382354:	4815      	l32i.n	a4, a5, 4
40382356:	a905      	s32i.n	a10, a5, 0
40382358:	604420        	or	a4, a4, a6
4038235b:	4915      	s32i.n	a4, a5, 4
4038235d:	481a      	l32i.n	a4, a10, 4
4038235f:	7cd5      	movi.n	a5, -3
40382361:	505410        	and	a5, a4, a5
40382364:	0c16      	movi.n	a6, 1
40382366:	904410        	and	a4, a4, a9
40382369:	605520        	or	a5, a5, a6
4038236c:	cad4      	add.n	a13, a4, a12
4038236e:	591a      	s32i.n	a5, a10, 4
40382370:	d2cdfc        	addi	a13, a13, -4
40382373:	16dde6        	beqz	a13, 0x403821e4
40382376:	581d      	l32i.n	a5, a13, 4
40382378:	07e502        	bbsi	a5, 0, 0x4038237e
4038237b:	c62300        	j	0x4038240e
4038237e:	1604e7        	beqz	a4, 0x403821f2
40382381:	909510        	and	a9, a5, a9
40382384:	5842      	l32i.n	a5, a2, 16
40382386:	504775        	extui	a4, a5, 23, 8
40382389:	473902        	bltu	a9, a4, 0x4038238f
4038238c:	062d00        	j	0x40382444
4038238f:	505e54        	extui	a5, a5, 14, 6
40382392:	5044d2        	quos	a4, a4, a5
40382395:	4099d2        	quos	a9, a9, a4
40382398:	bd08      	mov.n	a11, a8
4038239a:	583d      	l32i.n	a5, a13, 12
4038239c:	482d      	l32i.n	a4, a13, 8
4038239e:	1635e7        	beqz	a5, 0x40382215
403823a1:	16b4ea        	beqz	a4, 0x40382250
403823a4:	5934      	s32i.n	a5, a4, 12
403823a6:	4925      	s32i.n	a4, a5, 8
403823a8:	5842      	l32i.n	a5, a2, 16
403823aa:	6882      	l32i.n	a6, a2, 32
403823ac:	505e54        	extui	a5, a5, 14, 6
403823af:	b05582        	mull	a5, a5, a11
403823b2:	9a55      	add.n	a5, a5, a9
403823b4:	e05511        	slli	a5, a5, 2
403823b7:	5a56      	add.n	a5, a6, a5
403823b9:	6805      	l32i.n	a6, a5, 0
403823bb:	679d31        	bne	a13, a6, 0x403823f0
403823be:	4905      	s32i.n	a4, a5, 0
403823c0:	27942c        	bne	a4, a2, 0x403823f0
403823c3:	5872      	l32i.n	a5, a2, 28
403823c5:	e04b11        	slli	a4, a11, 2
403823c8:	4a45      	add.n	a4, a5, a4
403823ca:	0c16      	movi.n	a6, 1
403823cc:	7804      	l32i.n	a7, a4, 0
403823ce:	001940        	ssl	a9
403823d1:	0096a1        	sll	a9, a6
403823d4:	7cf5      	movi.n	a5, -1
403823d6:	909530        	xor	a9, a5, a9
403823d9:	709910        	and	a9, a9, a7
403823dc:	9904      	s32i.n	a9, a4, 0
403823de:	cce9      	bnez.n	a9, 0x403823f0
403823e0:	4862      	l32i.n	a4, a2, 24
403823e2:	001b40        	ssl	a11
403823e5:	00b6a1        	sll	a11, a6
403823e8:	b0b530        	xor	a11, a5, a11
403823eb:	b0b410        	and	a11, a4, a11
403823ee:	b962      	s32i.n	a11, a2, 24
403823f0:	481a      	l32i.n	a4, a10, 4
403823f2:	7cc6      	movi.n	a6, -4
403823f4:	678402        	bany	a4, a6, 0x403823fa
403823f7:	46adff        	j	0x403822b0
403823fa:	981d      	l32i.n	a9, a13, 4
403823fc:	4b44      	addi.n	a4, a4, 4
403823fe:	909610        	and	a9, a6, a9
40382401:	4a59      	add.n	a5, a9, a4
40382403:	591a      	s32i.n	a5, a10, 4
40382405:	605510        	and	a5, a5, a6
40382408:	5acc      	add.n	a12, a12, a5
4038240a:	6acc      	add.n	a12, a12, a6
4038240c:	a90c      	s32i.n	a10, a12, 0
4038240e:	481a      	l32i.n	a4, a10, 4
40382410:	5842      	l32i.n	a5, a2, 16
40382412:	7ccb      	movi.n	a11, -4
40382414:	40bb10        	and	a11, a11, a4
40382417:	504775        	extui	a4, a5, 23, 8
4038241a:	509e54        	extui	a9, a5, 14, 6
4038241d:	47bb51        	bgeu	a11, a4, 0x40382472
40382420:	9044d2        	quos	a4, a4, a9
40382423:	40bbd2        	quos	a11, a11, a4
40382426:	909882        	mull	a9, a8, a9
40382429:	c882      	l32i.n	a12, a2, 32
4038242b:	ba99      	add.n	a9, a9, a11
4038242d:	e09911        	slli	a9, a9, 2
40382430:	9a9c      	add.n	a9, a12, a9
40382432:	4809      	l32i.n	a4, a9, 0
40382434:	566406        	bnez	a4, 0x4038249e
40382437:	d188cb        	l32r	a13, 0x40375258
4038243a:	c188cb        	l32r	a12, 0x4037525c
4038243d:	b2a0e9        	movi	a11, 233
40382440:	8655ff        	j	0x4038219a
40382443:	00bd08        	lsx	f11, a13, a0
40382446:	8c69      	beqz.n	a9, 0x40382450
40382448:	40f940        	nsau	a4, a9
4038244b:	2c0b      	movi.n	a11, 32
4038244d:	40bbc0        	sub	a11, a11, a4
40382450:	50e425        	extui	a14, a5, 20, 3
40382453:	0b6b      	addi.n	a6, a11, -1
40382455:	e066c0        	sub	a6, a6, a14
40382458:	0c14      	movi.n	a4, 1
4038245a:	000640        	ssr	a6
4038245d:	909091        	srl	a9, a9
40382460:	001e40        	ssl	a14
40382463:	0044a1        	sll	a4, a4
40382466:	505524        	extui	a5, a5, 5, 3
40382469:	409930        	xor	a9, a9, a4
4038246c:	50bbc0        	sub	a11, a11, a5
4038246f:	c6c9ff        	j	0x4038239a
40382472:	8c6b      	beqz.n	a11, 0x4038247c
40382474:	40fb40        	nsau	a4, a11
40382477:	2c08      	movi.n	a8, 32
40382479:	4088c0        	sub	a8, a8, a4
4038247c:	50c425        	extui	a12, a5, 20, 3
4038247f:	0b68      	addi.n	a6, a8, -1
40382481:	c066c0        	sub	a6, a6, a12
40382484:	0c14      	movi.n	a4, 1
40382486:	000640        	ssr	a6
40382489:	b0b091        	srl	a11, a11
4038248c:	001c40        	ssl	a12
4038248f:	0044a1        	sll	a4, a4
40382492:	505524        	extui	a5, a5, 5, 3
40382495:	40bb30        	xor	a11, a11, a4
40382498:	5088c0        	sub	a8, a8, a5
4038249b:	c6e1ff        	j	0x40382426
4038249e:	492a      	s32i.n	a4, a10, 8
403824a0:	293a      	s32i.n	a2, a10, 12
403824a2:	a934      	s32i.n	a10, a4, 12
403824a4:	5842      	l32i.n	a5, a2, 16
403824a6:	0c14      	movi.n	a4, 1
403824a8:	505e54        	extui	a5, a5, 14, 6
403824ab:	805582        	mull	a5, a5, a8
403824ae:	001840        	ssl	a8
403824b1:	0064a1        	sll	a6, a4
403824b4:	ba55      	add.n	a5, a5, a11
403824b6:	e05511        	slli	a5, a5, 2
403824b9:	5a5c      	add.n	a5, a12, a5
403824bb:	a905      	s32i.n	a10, a5, 0
403824bd:	5862      	l32i.n	a5, a2, 24
403824bf:	e08811        	slli	a8, a8, 2
403824c2:	605520        	or	a5, a5, a6
403824c5:	5962      	s32i.n	a5, a2, 24
403824c7:	2872      	l32i.n	a2, a2, 28
403824c9:	001b40        	ssl	a11
403824cc:	00b4a1        	sll	a11, a4
403824cf:	8a82      	add.n	a8, a2, a8
403824d1:	4808      	l32i.n	a4, a8, 0
403824d3:	b0b420        	or	a11, a4, a11
403824d6:	b908      	s32i.n	a11, a8, 0
403824d8:	5d03      	mov.n	a5, a3
403824da:	8623ff        	j	0x4038216c
403824dd:	000000        	ill
403824e0:	364100        	entry	a1, 32
403824e3:	8c12      	beqz.n	a2, 0x403824e8
403824e5:	222205        	l32i	a2, a2, 20
403824e8:	1df0      	retw.n
403824ea:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403824ed:	4100a8        	l32r	a4, 0x4036c4f0
403824f0:	42a595        	movi	a4, 0x595
403824f3:	ff8bc3a7 	ee.fft.ams.s16.st.incp	q4, q6, a15, a11, q3, q6, q1, 1
403824f7:	3c06      	movi.n	a6, 48
403824f9:	2832      	l32i.n	a2, a2, 12
403824fb:	2aaa      	add.n	a10, a10, a2
403824fd:	a73c0e        	bltu	a12, a10, 0x4038250f
40382500:	a166cb        	l32r	a10, 0x40375298 (0x3c0893fa)
40382503:	b2a060        	movi	a11, 96
40382506:	81e5c7        	l32r	a8, 0x4037449c
40382509:	e00800        	callx8	a8
4038250c:	e53b00        	call8	0x403828cc
4038250f:	1df0      	retw.n
40382511:	000000        	ill
40382514:	364100        	entry	a1, 32
40382517:	92a001        	movi	a9, 1
4038251a:	82a000        	movi	a8, 0
4038251d:	208983        	moveqz	a8, a9, a2
40382520:	808074        	extui	a8, a8, 0, 8
40382523:	561803        	bnez	a8, 0x40382558
40382526:	308983        	moveqz	a8, a9, a3
40382529:	ecb8      	bnez.n	a8, 0x40382558
4038252b:	b2c3f8        	addi	a11, a3, -8
4038252e:	ad02      	mov.n	a10, a2
40382530:	a5fbff        	call8	0x403824ec
40382533:	ad02      	mov.n	a10, a2
40382535:	250300        	call8	0x40382568
40382538:	ad03      	mov.n	a10, a3
4038253a:	a55fff        	call8	0x40381b34
4038253d:	8812      	l32i.n	a8, a2, 4
4038253f:	aaa8      	add.n	a10, a8, a10
40382541:	a912      	s32i.n	a10, a2, 4
40382543:	a55eff        	call8	0x40381b2c
40382546:	8812      	l32i.n	a8, a2, 4
40382548:	bd03      	mov.n	a11, a3
4038254a:	aaa8      	add.n	a10, a8, a10
4038254c:	a912      	s32i.n	a10, a2, 4
4038254e:	a842      	l32i.n	a10, a2, 16
40382550:	2561ff        	call8	0x40381b64
40382553:	ad02      	mov.n	a10, a2
40382555:	250200        	call8	0x40382578
40382558:	1df0      	retw.n
4038255a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4038255d:	4100ad        	l32r	a4, 0x4036d960
40382560:	03          	.byte	0x3
40382561:	255dff        	call8	0x40381b34
40382564:	2d0a      	mov.n	a2, a10
40382566:	1df0      	retw.n
40382568:	364100        	entry	a1, 32
4038256b:	a802      	l32i.n	a10, a2, 0
4038256d:	8c3a      	beqz.n	a10, 0x40382574
4038256f:	7cfb      	movi.n	a11, -1
40382571:	6554fd        	call8	0x4037fab8
40382574:	1df0      	retw.n
40382576:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40382579:	4100a8        	l32r	a4, 0x4036c57c
4038257c:	02          	.byte	0x2
4038257d:	8c1a      	beqz.n	a10, 0x40382582
4038257f:	e567fd        	call8	0x4037fbfc
40382582:	1df0      	retw.n
40382584:	364100        	entry	a1, 32
40382587:	0c19      	movi.n	a9, 1
40382589:	82a000        	movi	a8, 0
4038258c:	308983        	moveqz	a8, a9, a3
4038258f:	808074        	extui	a8, a8, 0, 8
40382592:	56e803        	bnez	a8, 0x403825d4
40382595:	208983        	moveqz	a8, a9, a2
40382598:	568803        	bnez	a8, 0x403825d4
4038259b:	20a220        	or	a10, a2, a2
4038259e:	a5fcff        	call8	0x40382568
403825a1:	a842      	l32i.n	a10, a2, 16
403825a3:	bd03      	mov.n	a11, a3
403825a5:	658bff        	call8	0x40381e5c
403825a8:	3d0a      	mov.n	a3, a10
403825aa:	9caa      	beqz.n	a10, 0x403825c8
403825ac:	6558ff        	call8	0x40381b34
403825af:	8812      	l32i.n	a8, a2, 4
403825b1:	a0a8c0        	sub	a10, a8, a10
403825b4:	a26201        	s32i	a10, a2, 4
403825b7:	6557ff        	call8	0x40381b2c
403825ba:	8812      	l32i.n	a8, a2, 4
403825bc:	a0a8c0        	sub	a10, a8, a10
403825bf:	8822      	l32i.n	a8, a2, 8
403825c1:	a912      	s32i.n	a10, a2, 4
403825c3:	87ba01        	bgeu	a10, a8, 0x403825c8
403825c6:	a922      	s32i.n	a10, a2, 8
403825c8:	20a220        	or	a10, a2, a2
403825cb:	e5faff        	call8	0x40382578
403825ce:	302320        	or	a2, a3, a3
403825d1:	900000        	retw
403825d4:	0c03      	movi.n	a3, 0
403825d6:	06fdff        	j	0x403825ce
403825d9:	000000        	ill
403825dc:	364100        	entry	a1, 32
403825df:	56e200        	bnez	a2, 0x403825f1
403825e2:	d12ecb        	l32r	a13, 0x4037529c (0x3c089458)
403825e5:	c12ecb        	l32r	a12, 0x403752a0 (0x3c089465)
403825e8:	a12fcb        	l32r	a10, 0x403752a4 (0x3c08944b)
403825eb:	b2a0da        	movi	a11, 218
403825ee:	253700        	call8	0x40382960
403825f1:	dc03      	bnez.n	a3, 0x40382605
403825f3:	40b420        	or	a11, a4, a4
403825f6:	20a220        	or	a10, a2, a2
403825f9:	a5f8ff        	call8	0x40382584
403825fc:	3d0a      	mov.n	a3, a10
403825fe:	2d03      	mov.n	a2, a3
40382600:	1df0      	retw.n
40382602:	000000        	ill
40382605:	b2c3f8        	addi	a11, a3, -8
40382608:	20a220        	or	a10, a2, a2
4038260b:	25eeff        	call8	0x403824ec
4038260e:	20a220        	or	a10, a2, a2
40382611:	65f5ff        	call8	0x40382568
40382614:	30a320        	or	a10, a3, a3
40382617:	e551ff        	call8	0x40381b34
4038261a:	5d0a      	mov.n	a5, a10
4038261c:	a842      	l32i.n	a10, a2, 16
4038261e:	bd03      	mov.n	a11, a3
40382620:	cd04      	mov.n	a12, a4
40382622:	65b2ff        	call8	0x40382148
40382625:	3d0a      	mov.n	a3, a10
40382627:	9c7a      	beqz.n	a10, 0x40382642
40382629:	a812      	l32i.n	a10, a2, 4
4038262b:	5aaa      	add.n	a10, a10, a5
4038262d:	a912      	s32i.n	a10, a2, 4
4038262f:	ad03      	mov.n	a10, a3
40382631:	2550ff        	call8	0x40381b34
40382634:	8812      	l32i.n	a8, a2, 4
40382636:	4822      	l32i.n	a4, a2, 8
40382638:	a0a8c0        	sub	a10, a8, a10
4038263b:	a912      	s32i.n	a10, a2, 4
4038263d:	47ba01        	bgeu	a10, a4, 0x40382642
40382640:	a922      	s32i.n	a10, a2, 8
40382642:	ad02      	mov.n	a10, a2
40382644:	25f3ff        	call8	0x40382578
40382647:	c6ecff        	j	0x403825fe
4038264a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4038264d:	410039        	l32r	a4, 0x40350a50
40382650:	021df0        	l16ui	a0, a13, 0x1e0
40382653:	003641        	srli	a3, a0, 6
40382656:	0016b3        	movgez	a1, a6, a0
40382659:	0220a2        	l32i	a0, a0, 0x288
4038265c:	20a5f0        	subx8	a10, a5, a2
4038265f:	ff0c1bad 	ee.fft.cmul.s16.st.xp	q4, q1, q3, a15, a12, 0, 3, 2
40382663:	03          	.byte	0x3
40382664:	e51200        	call8	0x40382794
40382667:	ccda      	bnez.n	a10, 0x40382678
40382669:	d10fcb        	l32r	a13, 0x403752a8 (0x3c089c14)
4038266c:	c110cb        	l32r	a12, 0x403752ac (0x3c089c7e)
4038266f:	a110cb        	l32r	a10, 0x403752b0 (0x3c089c36)
40382672:	b2a103        	movi	a11, 0x103
40382675:	a52e00        	call8	0x40382960
40382678:	a0ba20        	or	a11, a10, a10
4038267b:	20a220        	or	a10, a2, a2
4038267e:	65e9ff        	call8	0x40382514
40382681:	ad02      	mov.n	a10, a2
40382683:	65efff        	call8	0x40382578
40382686:	1df0      	retw.n
40382688:	364100        	entry	a1, 32
4038268b:	b2a001        	movi	a11, 1
4038268e:	30a320        	or	a10, a3, a3
40382691:	251000        	call8	0x40382794
40382694:	56ea00        	bnez	a10, 0x403826a6
40382697:	d104cb        	l32r	a13, 0x403752a8 (0x3c089c14)
4038269a:	c106cb        	l32r	a12, 0x403752b4 (0x3c089c4d)
4038269d:	a104cb        	l32r	a10, 0x403752b0 (0x3c089c36)
403826a0:	b2a16b        	movi	a11, 0x16b
403826a3:	e52b00        	call8	0x40382960
403826a6:	a0ba20        	or	a11, a10, a10
403826a9:	20a220        	or	a10, a2, a2
403826ac:	e5eaff        	call8	0x4038255c
403826af:	82a00c        	movi	a8, 12
403826b2:	0c02      	movi.n	a2, 0
403826b4:	a7b802        	bgeu	a8, a10, 0x403826ba
403826b7:	22caf4        	addi	a2, a10, -12
403826ba:	1df0      	retw.n
403826bc:	364100        	entry	a1, 32
403826bf:	82c3ff        	addi	a8, a3, -1
403826c2:	7c29      	movi.n	a9, -14
403826c4:	4d02      	mov.n	a4, a2
403826c6:	0c02      	movi.n	a2, 0
403826c8:	87391b        	bltu	a9, a8, 0x403826e7
403826cb:	ad04      	mov.n	a10, a4
403826cd:	a5e9ff        	call8	0x40382568
403826d0:	cbb3      	addi.n	a11, a3, 12
403826d2:	ad04      	mov.n	a10, a4
403826d4:	e5eaff        	call8	0x40382584
403826d7:	2d0a      	mov.n	a2, a10
403826d9:	8c5a      	beqz.n	a10, 0x403826e2
403826db:	bd03      	mov.n	a11, a3
403826dd:	a50700        	call8	0x40382758
403826e0:	2d0a      	mov.n	a2, a10
403826e2:	ad04      	mov.n	a10, a4
403826e4:	25e9ff        	call8	0x40382578
403826e7:	1df0      	retw.n
403826e9:	000000        	ill
403826ec:	364100        	entry	a1, 32
403826ef:	205220        	or	a5, a2, a2
403826f2:	22aff3        	movi	a2, -13
403826f5:	30a320        	or	a10, a3, a3
403826f8:	473218        	bltu	a2, a4, 0x40382714
403826fb:	cc93      	bnez.n	a3, 0x40382708
403826fd:	bd04      	mov.n	a11, a4
403826ff:	ad05      	mov.n	a10, a5
40382701:	a5fbff        	call8	0x403826bc
40382704:	2d0a      	mov.n	a2, a10
40382706:	1df0      	retw.n
40382708:	56e400        	bnez	a4, 0x4038271a
4038270b:	30b320        	or	a11, a3, a3
4038270e:	50a520        	or	a10, a5, a5
40382711:	25f4ff        	call8	0x40382654
40382714:	0c02      	movi.n	a2, 0
40382716:	06fbff        	j	0x40382706
40382719:	00b2a0        	addx4	a11, a2, a0
4038271c:	016507        	l32r	a0, 0x403444b0
4038271f:	00a02a        	mul.s	f10, f0, f0
40382722:	20ccda        	ufloat.s	f12, a12, 2
40382725:	d1e0ca        	l32r	a13, 0x403752a8 (0x3c089c14)
40382728:	c1e4ca        	l32r	a12, 0x403752b8 (0x3c089c6b)
4038272b:	a1e1ca        	l32r	a10, 0x403752b0 (0x3c089c36)
4038272e:	b2a127        	movi	a11, 0x127
40382731:	e52200        	call8	0x40382960
40382734:	50a520        	or	a10, a5, a5
40382737:	25e3ff        	call8	0x40382568
4038273a:	bd02      	mov.n	a11, a2
4038273c:	cbc4      	addi.n	a12, a4, 12
4038273e:	ad05      	mov.n	a10, a5
40382740:	a5e9ff        	call8	0x403825dc
40382743:	2d0a      	mov.n	a2, a10
40382745:	8c5a      	beqz.n	a10, 0x4038274e
40382747:	bd04      	mov.n	a11, a4
40382749:	e50000        	call8	0x40382758
4038274c:	2d0a      	mov.n	a2, a10
4038274e:	ad05      	mov.n	a10, a5
40382750:	65e2ff        	call8	0x40382578
40382753:	c6ebff        	j	0x40382706
40382756:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40382759:	61009d        	l32r	a6, 0x40369b5c
4038275c:	02          	.byte	0x2
4038275d:	8b22      	addi.n	a2, a2, 8
4038275f:	3a82      	add.n	a8, a2, a3
40382761:	3919      	s32i.n	a3, a9, 4
40382763:	31d6ca        	l32r	a3, 0x403752bc (0xabba1234)
40382766:	3909      	s32i.n	a3, a9, 0
40382768:	91d6ca        	l32r	a9, 0x403752c0 (0xbaad5678)
4038276b:	803014        	extui	a3, a8, 0, 2
4038276e:	9931      	s32i.n	a9, a1, 12
40382770:	cc43      	bnez.n	a3, 0x40382778
40382772:	9908      	s32i.n	a9, a8, 0
40382774:	1df0      	retw.n
40382776:	00          	.byte	00
40382777:	009201        	slli	a9, a2, 32
4038277a:	0c32      	movi.n	a2, 3
4038277c:	010d92        	l32r	a0, 0x40366fb0
4038277f:	4800      	l32i.n	a4, a0, 0
40382781:	324801        	s8i	a3, a8, 1
40382784:	92010e        	l8ui	a9, a1, 14
40382787:	32010f        	l8ui	a3, a1, 15
4038278a:	924802        	s8i	a9, a8, 2
4038278d:	324803        	s8i	a3, a8, 3
40382790:	06f8ff        	j	0x40382774
40382793:	00          	.byte	00
40382794:	366100        	entry	a1, 48
40382797:	b2c2f8        	addi	a11, a2, -8
4038279a:	d80b      	l32i.n	a13, a11, 0
4038279c:	c1c8ca        	l32r	a12, 0x403752bc (0xabba1234)
4038279f:	c71d15        	beq	a13, a12, 0x403827b8
403827a2:	cc63      	bnez.n	a3, 0x403827ac
403827a4:	0c0b      	movi.n	a11, 0
403827a6:	2d0b      	mov.n	a2, a11
403827a8:	1df0      	retw.n
403827aa:	0000a1        	sll	a0, a0
403827ad:	c6ca81        	j	0x40362edc
403827b0:	3bc7      	addi.n	a12, a7, 3
403827b2:	e00800        	callx8	a8
403827b5:	c6faff        	j	0x403827a4
403827b8:	881b      	l32i.n	a8, a11, 4
403827ba:	8a82      	add.n	a8, a2, a8
403827bc:	809014        	extui	a9, a8, 0, 2
403827bf:	dc59      	bnez.n	a9, 0x403827d8
403827c1:	9808      	l32i.n	a9, a8, 0
403827c3:	9931      	s32i.n	a9, a1, 12
403827c5:	d831      	l32i.n	a13, a1, 12
403827c7:	c1beca        	l32r	a12, 0x403752c0 (0xbaad5678)
403827ca:	c71dd8        	beq	a13, a12, 0x403827a6
403827cd:	1633fd        	beqz	a3, 0x403827a4
403827d0:	bd08      	mov.n	a11, a8
403827d2:	a1bdca        	l32r	a10, 0x403752c8 (0x3c089bda)
403827d5:	86f5ff        	j	0x403827af
403827d8:	a20800        	l8ui	a10, a8, 0
403827db:	920801        	l8ui	a9, a8, 1
403827de:	a2410c        	s8i	a10, a1, 12
403827e1:	92410d        	s8i	a9, a1, 13
403827e4:	a20802        	l8ui	a10, a8, 2
403827e7:	920803        	l8ui	a9, a8, 3
403827ea:	a2410e        	s8i	a10, a1, 14
403827ed:	92410f        	s8i	a9, a1, 15
403827f0:	46f4ff        	j	0x403827c5
403827f3:	003641        	srli	a3, a0, 6
403827f6:	0020ea        	utrunc.s	a2, f0, 0
403827f9:	038139        	lsip	f0, a1, 228
403827fc:	c8e0      	l32i.n	a12, a0, 56
403827fe:	0800      	l32i.n	a0, a0, 0
40382800:	b08a11        	slli	a8, a10, 5
40382803:	a088c0        	sub	a8, a8, a10
40382806:	e08811        	slli	a8, a8, 2
40382809:	aa88      	add.n	a8, a8, a10
4038280b:	d08811        	slli	a8, a8, 3
4038280e:	8022c2        	quou	a2, a2, a8
40382811:	1df0      	retw.n
40382813:	003641        	srli	a3, a0, 6
40382816:	00          	.byte	00
40382817:	21adca        	l32r	a2, 0x403752cc (0x3fca2d04)
4038281a:	822200        	l32i	a8, a2, 0
4038281d:	567800        	bnez	a8, 0x40382828
40382820:	a2a001        	movi	a10, 1
40382823:	a5f0fa        	call8	0x4037d72c
40382826:	a902      	s32i.n	a10, a2, 0
40382828:	655bfc        	call8	0x4037ede0
4038282b:	261a06        	beqi	a10, 1, 0x40382835
4038282e:	a802      	l32i.n	a10, a2, 0
40382830:	7cfb      	movi.n	a11, -1
40382832:	a522fb        	call8	0x4037da5c
40382835:	1df0      	retw.n
40382837:	003641        	srli	a3, a0, 6
4038283a:	0031a4        	extui	a3, a0, 1, 11
4038283d:	ca22      	add.n	a2, a2, a12
4038283f:	230056        	lsi	f2, a0, 0x158
40382842:	7200a2        	l8ui	a7, a0, 162
40382845:	a00165        	extui	a0, a10, 17, 7
40382848:	eefaa903 	ee.vmulas.s16.accx.ld.ip.qup	q7, a14, 160, q3, q7, q2, q1
4038284c:	2559fc        	call8	0x4037ede0
4038284f:	22a001        	movi	a2, 1
40382852:	271a12        	beq	a10, a2, 0x40382868
40382855:	a22300        	l32i	a10, a3, 0
40382858:	b2a00a        	movi	a11, 10
4038285b:	2520fb        	call8	0x4037da5c
4038285e:	0baa      	addi.n	a10, a10, -1
40382860:	0c03      	movi.n	a3, 0
40382862:	a02393        	movnez	a2, a3, a10
40382865:	202074        	extui	a2, a2, 0, 8
40382868:	1df0      	retw.n
4038286a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4038286d:	410025        	l32r	a4, 0x4034bc70
40382870:	57fc26        	bbsi	a12, 21, 0x4038289a
40382873:	1a0f      	add.n	a0, a15, a1
40382875:	8195ca        	l32r	a8, 0x403752cc (0x3fca2d04)
40382878:	d2a000        	movi	a13, 0
4038287b:	a22800        	l32i	a10, a8, 0
4038287e:	cd0d      	mov.n	a12, a13
40382880:	bd0d      	mov.n	a11, a13
40382882:	a5cafa        	call8	0x4037d52c
40382885:	1df0      	retw.n
40382887:	003641        	srli	a3, a0, 6
4038288a:	006555        	extui	a6, a0, 21, 6
4038288d:	fc66      	bnez.n	a6, 0x403828c7
4038288f:	1a0b      	add.n	a0, a11, a1
40382891:	25f6ff        	call8	0x403827f4
40382894:	a02a20        	or	a2, a10, a10
40382897:	900000        	retw
4038289a:	000000        	ill
4038289d:	218cca        	l32r	a2, 0x403752d0 (0x3fca2d00)
403828a0:	822200        	l32i	a8, a2, 0
403828a3:	56d800        	bnez	a8, 0x403828b4
403828a6:	80eb03        	rsr.prid	a8
403828a9:	808d04        	extui	a8, a8, 13, 1
403828ac:	564800        	bnez	a8, 0x403828b4
403828af:	65f4ff        	call8	0x403827f4
403828b2:	a902      	s32i.n	a10, a2, 0
403828b4:	a51dfd        	call8	0x4037fa90
403828b7:	16aa00        	beqz	a10, 0x403828c5
403828ba:	a5b7fb        	call8	0x4037e434
403828bd:	222200        	l32i	a2, a2, 0
403828c0:	2aaa      	add.n	a10, a10, a2
403828c2:	86f3ff        	j	0x40382894
403828c5:	e5b5fb        	call8	0x4037e424
403828c8:	46fcff        	j	0x403828bd
403828cb:	003601        	slli	a3, a6, 32
403828ce:	01213c        	l32r	a0, 0x40351954
403828d1:	c742c1        	ball	a2, a12, 0x40382896
403828d4:	21c020        	l32r	a2, 0x4034abd4
403828d7:	002802        	andb	b2, b8, b0
403828da:	0c9c      	movi.n	a12, 9
403828dc:	0c0b      	movi.n	a11, 0
403828de:	40a420        	or	a10, a4, a4
403828e1:	c02000        	memw
403828e4:	226117        	s32i	a2, a1, 92
403828e7:	81eec6        	l32r	a8, 0x403744a0
403828ea:	e00800        	callx8	a8
403828ed:	eb31      	addi.n	a3, a1, 14
403828ef:	0c02      	movi.n	a2, 0
403828f1:	3c2c      	movi.n	a12, 50
403828f3:	0c0b      	movi.n	a11, 0
403828f5:	a2c12a        	addi	a10, a1, 42
403828f8:	225300        	s16i	a2, a3, 0
403828fb:	81e9c6        	l32r	a8, 0x403744a0
403828fe:	e00800        	callx8	a8
40382901:	2174ca        	l32r	a2, 0x403752d4 (0x403828cc)
40382904:	e0a011        	slli	a10, a0, 2
40382907:	202e15        	extui	a2, a2, 30, 2
4038290a:	202201        	slli	a2, a2, 30
4038290d:	a0a241        	srli	a10, a10, 2
40382910:	20aa20        	or	a10, a10, a2
40382913:	1c0c      	movi.n	a12, 16
40382915:	40b420        	or	a11, a4, a4
40382918:	a2cafd        	addi	a10, a10, -3
4038291b:	8171ca        	l32r	a8, 0x403752e0 (0x400014c4)
4038291e:	e00800        	callx8	a8
40382921:	a0eb03        	rsr.prid	a10
40382924:	a0ad04        	extui	a10, a10, 13, 1
40382927:	0cac      	movi.n	a12, 10
40382929:	bd03      	mov.n	a11, a3
4038292b:	816dca        	l32r	a8, 0x403752e0 (0x400014c4)
4038292e:	e00800        	callx8	a8
40382931:	2169ca        	l32r	a2, 0x403752d8 (0x3fc980e7)
40382934:	3971      	s32i.n	a3, a1, 28
40382936:	2941      	s32i.n	a2, a1, 16
40382938:	2169ca        	l32r	a2, 0x403752dc (0x3fc98103)
4038293b:	4951      	s32i.n	a4, a1, 20
4038293d:	2961      	s32i.n	a2, a1, 24
4038293f:	32a000        	movi	a3, 0
40382942:	22c110        	addi	a2, a1, 16
40382945:	b22200        	l32i	a11, a2, 0
40382948:	a2c12a        	addi	a10, a1, 42
4038294b:	32c301        	addi	a3, a3, 1
4038294e:	81fbc9        	l32r	a8, 0x4037513c
40382951:	e00800        	callx8	a8
40382954:	22c204        	addi	a2, a2, 4
40382957:	6643ea        	bnei	a3, 4, 0x40382945
4038295a:	a2c12a        	addi	a10, a1, 42
4038295d:	253cfa        	call8	0x4037cd20
40382960:	366102        	entry	a1, 0x130
40382963:	6117c7        	l32r	a6, 0x403745c0
40382966:	0cbc      	movi.n	a12, 11
40382968:	c02000        	memw
4038296b:	6806      	l32i.n	a6, a6, 0
4038296d:	b2a000        	movi	a11, 0
40382970:	a2c139        	addi	a10, a1, 57
40382973:	c02000        	memw
40382976:	626143        	s32i	a6, a1, 0x10c
40382979:	81c9c6        	l32r	a8, 0x403744a0
4038297c:	e00800        	callx8	a8
4038297f:	62a110        	movi	a6, 0x110
40382982:	b2aeff        	movi	a11, 0xfffffeff
40382985:	1a66      	add.n	a6, a6, a1
40382987:	0cac      	movi.n	a12, 10
40382989:	bab6      	add.n	a11, a6, a11
4038298b:	30a320        	or	a10, a3, a3
4038298e:	8154ca        	l32r	a8, 0x403752e0 (0x400014c4)
40382991:	e00800        	callx8	a8
40382994:	a5cef4        	call8	0x40377680
40382997:	565a05        	bnez	a10, 0x403829f0
4038299a:	3154ca        	l32r	a3, 0x403752ec (0x3bffffff)
4038299d:	27b308        	bgeu	a3, a2, 0x403829a9
403829a0:	6154ca        	l32r	a6, 0x403752f0 (0x3cffffff)
403829a3:	272602        	blt	a6, a2, 0x403829a9
403829a6:	214fca        	l32r	a2, 0x403752e4 (0x3fc9810d)
403829a9:	47b334        	bgeu	a3, a4, 0x403829e1
403829ac:	3151ca        	l32r	a3, 0x403752f0 (0x3cffffff)
403829af:	47232e        	blt	a3, a4, 0x403829e1
403829b2:	4150ca        	l32r	a4, 0x403752f4 (0x403829b2)
403829b5:	e0a011        	slli	a10, a0, 2
403829b8:	404e15        	extui	a4, a4, 30, 2
403829bb:	204401        	slli	a4, a4, 30
403829be:	a0a241        	srli	a10, a10, 2
403829c1:	3c03      	movi.n	a3, 48
403829c3:	40aa20        	or	a10, a10, a4
403829c6:	324139        	s8i	a3, a1, 57
403829c9:	c2a010        	movi	a12, 16
403829cc:	32a078        	movi	a3, 120
403829cf:	b2c13b        	addi	a11, a1, 59
403829d2:	a2cafd        	addi	a10, a10, -3
403829d5:	32413a        	s8i	a3, a1, 58
403829d8:	42c139        	addi	a4, a1, 57
403829db:	8141ca        	l32r	a8, 0x403752e0 (0x400014c4)
403829de:	e00800        	callx8	a8
403829e1:	3142ca        	l32r	a3, 0x403752ec (0x3bffffff)
403829e4:	57b308        	bgeu	a3, a5, 0x403829f0
403829e7:	3142ca        	l32r	a3, 0x403752f0 (0x3cffffff)
403829ea:	572302        	blt	a3, a5, 0x403829f0
403829ed:	513dca        	l32r	a5, 0x403752e4 (0x3fc9810d)
403829f0:	3142ca        	l32r	a3, 0x403752f8 (0x3fc98121)
403829f3:	3951      	s32i.n	a3, a1, 20
403829f5:	cc14      	bnez.n	a4, 0x403829fa
403829f7:	413cca        	l32r	a4, 0x403752e8 (0x3fc9811f)
403829fa:	2981      	s32i.n	a2, a1, 32
403829fc:	2141ca        	l32r	a2, 0x40375300 (0x3fc98131)
403829ff:	313fca        	l32r	a3, 0x403752fc (0x3fc9812f)
40382a02:	2991      	s32i.n	a2, a1, 36
40382a04:	fb21      	addi.n	a2, a1, 15
40382a06:	29a1      	s32i.n	a2, a1, 40
40382a08:	213fca        	l32r	a2, 0x40375304 (0x3fc98133)
40382a0b:	4961      	s32i.n	a4, a1, 24
40382a0d:	29b1      	s32i.n	a2, a1, 44
40382a0f:	213eca        	l32r	a2, 0x40375308 (0x3fc98093)
40382a12:	3971      	s32i.n	a3, a1, 28
40382a14:	22610d        	s32i	a2, a1, 52
40382a17:	52610c        	s32i	a5, a1, 48
40382a1a:	42c114        	addi	a4, a1, 20
40382a1d:	72c138        	addi	a7, a1, 56
40382a20:	22a000        	movi	a2, 0
40382a23:	32a0c7        	movi	a3, 199
40382a26:	6804      	l32i.n	a6, a4, 0
40382a28:	ad06      	mov.n	a10, a6
40382a2a:	8138ca        	l32r	a8, 0x4037530c (0x40001248)
40382a2d:	e00800        	callx8	a8
40382a30:	a05363        	minu	a5, a3, a10
40382a33:	bd06      	mov.n	a11, a6
40382a35:	62c144        	addi	a6, a1, 68
40382a38:	2aa6      	add.n	a10, a6, a2
40382a3a:	cd05      	mov.n	a12, a5
40382a3c:	5033c0        	sub	a3, a3, a5
40382a3f:	8196c6        	l32r	a8, 0x40374498
40382a42:	e00800        	callx8	a8
40382a45:	5a22      	add.n	a2, a2, a5
40382a47:	164300        	beqz	a3, 0x40382a4f
40382a4a:	4b44      	addi.n	a4, a4, 4
40382a4c:	7794d6        	bne	a4, a7, 0x40382a26
40382a4f:	62a110        	movi	a6, 0x110
40382a52:	32c110        	addi	a3, a1, 16
40382a55:	a2af34        	movi	a10, -204
40382a58:	1a66      	add.n	a6, a6, a1
40382a5a:	2a83      	add.n	a8, a3, a2
40382a5c:	a0a680        	add	a10, a6, a10
40382a5f:	22a000        	movi	a2, 0
40382a62:	224834        	s8i	a2, a8, 52
40382a65:	a52bfa        	call8	0x4037cd20
40382a68:	364100        	entry	a1, 32
40382a6b:	1df0      	retw.n
40382a6d:	000000        	ill
40382a70:	364100        	entry	a1, 32
40382a73:	ad02      	mov.n	a10, a2
40382a75:	a5a0f5        	call8	0x40378480
40382a78:	2d0a      	mov.n	a2, a10
40382a7a:	1df0      	retw.n
40382a7c:	364100        	entry	a1, 32
40382a7f:	30b320        	or	a11, a3, a3
40382a82:	20a220        	or	a10, a2, a2
40382a85:	65c0f5        	call8	0x4037868c
40382a88:	a02a20        	or	a2, a10, a10
40382a8b:	1df0      	retw.n
40382a8d:	000000        	ill
40382a90:	364100        	entry	a1, 32
40382a93:	ad02      	mov.n	a10, a2
40382a95:	25abf5        	call8	0x40378548
40382a98:	1df0      	retw.n
40382a9a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40382a9d:	4100ad        	l32r	a4, 0x4036dea0
40382aa0:	03          	.byte	0x3
40382aa1:	e59df5        	call8	0x40378480
40382aa4:	2d0a      	mov.n	a2, a10
40382aa6:	1df0      	retw.n
40382aa8:	364100        	entry	a1, 32
40382aab:	ad03      	mov.n	a10, a3
40382aad:	a5a9f5        	call8	0x40378548
40382ab0:	1df0      	retw.n
40382ab2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40382ab5:	410040        	l32r	a4, 0x40352ab8
40382ab8:	b4          	.byte	0xb4
40382ab9:	2030a3        	movltz	a3, a0, a2
40382abc:	20          	.byte	0x20
40382abd:	e5bcf5        	call8	0x4037868c
40382ac0:	a02a20        	or	a2, a10, a10
40382ac3:	1df0      	retw.n
40382ac5:	000000        	ill
40382ac8:	364100        	entry	a1, 32
40382acb:	405382        	mull	a5, a3, a4
40382ace:	4033a2        	muluh	a3, a3, a4
40382ad1:	22a000        	movi	a2, 0
40382ad4:	561301        	bnez	a3, 0x40382ae9
40382ad7:	50a520        	or	a10, a5, a5
40382ada:	659af5        	call8	0x40378480
40382add:	2d0a      	mov.n	a2, a10
40382adf:	8c6a      	beqz.n	a10, 0x40382ae9
40382ae1:	bd05      	mov.n	a11, a5
40382ae3:	810bca        	l32r	a8, 0x40375310 (0x40001260)
40382ae6:	e00800        	callx8	a8
40382ae9:	1df0      	retw.n
40382aeb:	003641        	srli	a3, a0, 6
40382aee:	002524        	extui	a2, a0, 5, 3
40382af1:	fc20      	bnez.n	a0, 0x40382b27
40382af3:	b22030        	l32i	a11, a0, 192
40382af6:	c3          	.byte	0xc3
40382af7:	20          	.byte	0x20
40382af8:	e5fcff        	call8	0x40382ac8
40382afb:	a02a20        	or	a2, a10, a10
40382afe:	1df0      	retw.n
40382b00:	364100        	entry	a1, 32
40382b03:	1df0      	retw.n
40382b05:	000000        	ill
40382b08:	368100        	entry	a1, 64
40382b0b:	0c0b      	movi.n	a11, 0
40382b0d:	1ccc      	movi.n	a12, 28
40382b0f:	4ba1      	addi.n	a10, a1, 4
40382b11:	b901      	s32i.n	a11, a1, 0
40382b13:	8163c6        	l32r	a8, 0x403744a0
40382b16:	e00800        	callx8	a8
40382b19:	0c18      	movi.n	a8, 1
40382b1b:	824106        	s8i	a8, a1, 6
40382b1e:	0c58      	movi.n	a8, 5
40382b20:	82510c        	s16i	a8, a1, 24
40382b23:	8802      	l32i.n	a8, a2, 0
40382b25:	4d01      	mov.n	a4, a1
40382b27:	8818      	l32i.n	a8, a8, 4
40382b29:	4941      	s32i.n	a4, a1, 16
40382b2b:	4bb1      	addi.n	a11, a1, 4
40382b2d:	ad02      	mov.n	a10, a2
40382b2f:	e00800        	callx8	a8
40382b32:	cc3a      	bnez.n	a10, 0x40382b39
40382b34:	2801      	l32i.n	a2, a1, 0
40382b36:	224300        	s8i	a2, a3, 0
40382b39:	2d0a      	mov.n	a2, a10
40382b3b:	1df0      	retw.n
40382b3d:	000000        	ill
40382b40:	368100        	entry	a1, 64
40382b43:	1ccc      	movi.n	a12, 28
40382b45:	0c0b      	movi.n	a11, 0
40382b47:	a2c104        	addi	a10, a1, 4
40382b4a:	8155c6        	l32r	a8, 0x403744a0
40382b4d:	e00800        	callx8	a8
40382b50:	82a0c7        	movi	a8, 199
40382b53:	82510c        	s16i	a8, a1, 24
40382b56:	8802      	l32i.n	a8, a2, 0
40382b58:	4bb1      	addi.n	a11, a1, 4
40382b5a:	8818      	l32i.n	a8, a8, 4
40382b5c:	ad02      	mov.n	a10, a2
40382b5e:	e00800        	callx8	a8
40382b61:	1df0      	retw.n
40382b63:	003681        	src	a3, a6, a0
40382b66:	00          	.byte	00
40382b67:	1ccc      	movi.n	a12, 28
40382b69:	0c0b      	movi.n	a11, 0
40382b6b:	a2c104        	addi	a10, a1, 4
40382b6e:	814cc6        	l32r	a8, 0x403744a0
40382b71:	e00800        	callx8	a8
40382b74:	0c49      	movi.n	a9, 4
40382b76:	303074        	extui	a3, a3, 0, 8
40382b79:	0c68      	movi.n	a8, 6
40382b7b:	308993        	movnez	a8, a9, a3
40382b7e:	3802      	l32i.n	a3, a2, 0
40382b80:	82510c        	s16i	a8, a1, 24
40382b83:	3813      	l32i.n	a3, a3, 4
40382b85:	9ab1      	add.n	a11, a1, a9
40382b87:	ad02      	mov.n	a10, a2
40382b89:	e00300        	callx8	a3
40382b8c:	0c02      	movi.n	a2, 0
40382b8e:	1df0      	retw.n
40382b90:	364100        	entry	a1, 32
40382b93:	814cc6        	l32r	a8, 0x403744c4
40382b96:	922201        	l32i	a9, a2, 4
40382b99:	30a320        	or	a10, a3, a3
40382b9c:	40b420        	or	a11, a4, a4
40382b9f:	879902        	bne	a9, a8, 0x40382ba5
40382ba2:	e5def3        	call8	0x40376990
40382ba5:	0c02      	movi.n	a2, 0
40382ba7:	1df0      	retw.n
40382ba9:	000000        	ill
40382bac:	368100        	entry	a1, 64
40382baf:	0c04      	movi.n	a4, 0
40382bb1:	bd04      	mov.n	a11, a4
40382bb3:	1ccc      	movi.n	a12, 28
40382bb5:	4ba1      	addi.n	a10, a1, 4
40382bb7:	4901      	s32i.n	a4, a1, 0
40382bb9:	8139c6        	l32r	a8, 0x403744a0
40382bbc:	e00800        	callx8	a8
40382bbf:	0c38      	movi.n	a8, 3
40382bc1:	824106        	s8i	a8, a1, 6
40382bc4:	82a09f        	movi	a8, 159
40382bc7:	82510c        	s16i	a8, a1, 24
40382bca:	8802      	l32i.n	a8, a2, 0
40382bcc:	4a51      	add.n	a5, a1, a4
40382bce:	8818      	l32i.n	a8, a8, 4
40382bd0:	4bb1      	addi.n	a11, a1, 4
40382bd2:	ad02      	mov.n	a10, a2
40382bd4:	5941      	s32i.n	a5, a1, 16
40382bd6:	e00800        	callx8	a8
40382bd9:	8801      	l32i.n	a8, a1, 0
40382bdb:	b1cec9        	l32r	a11, 0x40375314 (0xff000001)
40382bde:	0c12      	movi.n	a2, 1
40382be0:	bab8      	add.n	a11, a8, a11
40382be2:	b04283        	moveqz	a4, a2, a11
40382be5:	40b074        	extui	a11, a4, 0, 8
40382be8:	cc3b      	bnez.n	a11, 0x40382bef
40382bea:	802b93        	movnez	a2, a11, a8
40382bed:	9cb2      	beqz.n	a2, 0x40382c0c
40382bef:	2125c6        	l32r	a2, 0x40374484
40382bf2:	3802      	l32i.n	a3, a2, 0
40382bf4:	22a108        	movi	a2, 0x108
40382bf7:	8cf3      	beqz.n	a3, 0x40382c0a
40382bf9:	e5c8ff        	call8	0x40382888
40382bfc:	bd0a      	mov.n	a11, a10
40382bfe:	c1c6c9        	l32r	a12, 0x40375318 (0x3fc98277)
40382c01:	a1c6c9        	l32r	a10, 0x4037531c (0x3fc98732)
40382c04:	8126c6        	l32r	a8, 0x4037449c
40382c07:	e00800        	callx8	a8
40382c0a:	1df0      	retw.n
40382c0c:	a2af00        	movi	a10, 0xffffff00
40382c0f:	8090f5        	extui	a9, a8, 16, 16
40382c12:	a0a810        	and	a10, a8, a10
40382c15:	413ac6        	l32r	a4, 0x40374500
40382c18:	a09920        	or	a9, a9, a10
40382c1b:	008811        	slli	a8, a8, 16
40382c1e:	9090f4        	extui	a9, a9, 0, 16
40382c21:	408810        	and	a8, a8, a4
40382c24:	808920        	or	a8, a9, a8
40382c27:	8903      	s32i.n	a8, a3, 0
40382c29:	46f7ff        	j	0x40382c0a
40382c2c:	368100        	entry	a1, 64
40382c2f:	814dc6        	l32r	a8, 0x40374564
40382c32:	37b80e        	bgeu	a8, a3, 0x40382c44
40382c35:	d1bac9        	l32r	a13, 0x40375320 (0x3fc981c6)
40382c38:	c1bbc9        	l32r	a12, 0x40375324 (0x3fc9825e)
40382c3b:	a1bbc9        	l32r	a10, 0x40375328 (0x3fc981fa)
40382c3e:	b2a095        	movi	a11, 149
40382c41:	e5d1ff        	call8	0x40382960
40382c44:	1ccc      	movi.n	a12, 28
40382c46:	0c0b      	movi.n	a11, 0
40382c48:	4ba1      	addi.n	a10, a1, 4
40382c4a:	8115c6        	l32r	a8, 0x403744a0
40382c4d:	e00800        	callx8	a8
40382c50:	3921      	s32i.n	a3, a1, 8
40382c52:	2c03      	movi.n	a3, 32
40382c54:	32510c        	s16i	a3, a1, 24
40382c57:	3802      	l32i.n	a3, a2, 0
40382c59:	1c88      	movi.n	a8, 24
40382c5b:	3813      	l32i.n	a3, a3, 4
40382c5d:	824107        	s8i	a8, a1, 7
40382c60:	4bb1      	addi.n	a11, a1, 4
40382c62:	20a220        	or	a10, a2, a2
40382c65:	e00300        	callx8	a3
40382c68:	1df0      	retw.n
40382c6a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40382c6d:	810081        	l32r	a8, 0x40363070
40382c70:	3d          	.byte	0x3d
40382c71:	c637b8        	j	0x40370d54
40382c74:	0ed1aac9 	ee.vmulas.u8.accx.ld.xp.qup	q3, a0, a1, q3, q3, q2, q2
40382c78:	c1adc9        	l32r	a12, 0x4037532c (0x3fc98246)
40382c7b:	a1abc9        	l32r	a10, 0x40375328 (0x3fc981fa)
40382c7e:	b2a0a1        	movi	a11, 161
40382c81:	e5cdff        	call8	0x40382960
40382c84:	1ccc      	movi.n	a12, 28
40382c86:	0c0b      	movi.n	a11, 0
40382c88:	4ba1      	addi.n	a10, a1, 4
40382c8a:	8105c6        	l32r	a8, 0x403744a0
40382c8d:	e00800        	callx8	a8
40382c90:	3921      	s32i.n	a3, a1, 8
40382c92:	32a0d8        	movi	a3, 216
40382c95:	32510c        	s16i	a3, a1, 24
40382c98:	3802      	l32i.n	a3, a2, 0
40382c9a:	1c88      	movi.n	a8, 24
40382c9c:	3813      	l32i.n	a3, a3, 4
40382c9e:	824107        	s8i	a8, a1, 7
40382ca1:	4bb1      	addi.n	a11, a1, 4
40382ca3:	ad02      	mov.n	a10, a2
40382ca5:	e00300        	callx8	a3
40382ca8:	1df0      	retw.n
40382caa:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40382cad:	810091        	l32r	a8, 0x403670b0
40382cb0:	39c6      	s32i.n	a3, a6, 48
40382cb2:	508480        	add	a8, a4, a5
40382cb5:	87b90e        	bgeu	a9, a8, 0x40382cc7
40382cb8:	d19ec9        	l32r	a13, 0x40375330 (0x3fc9820f)
40382cbb:	c19ec9        	l32r	a12, 0x40375334 (0x3fc9822d)
40382cbe:	a19ac9        	l32r	a10, 0x40375328 (0x3fc981fa)
40382cc1:	b2a0ad        	movi	a11, 173
40382cc4:	a5c9ff        	call8	0x40382960
40382cc7:	c2a01c        	movi	a12, 28
40382cca:	b2a000        	movi	a11, 0
40382ccd:	4ba1      	addi.n	a10, a1, 4
40382ccf:	81f4c5        	l32r	a8, 0x403744a0
40382cd2:	e00800        	callx8	a8
40382cd5:	4921      	s32i.n	a4, a1, 8
40382cd7:	0c24      	movi.n	a4, 2
40382cd9:	42510c        	s16i	a4, a1, 24
40382cdc:	4802      	l32i.n	a4, a2, 0
40382cde:	524105        	s8i	a5, a1, 5
40382ce1:	4814      	l32i.n	a4, a4, 4
40382ce3:	1c85      	movi.n	a5, 24
40382ce5:	524107        	s8i	a5, a1, 7
40382ce8:	3931      	s32i.n	a3, a1, 12
40382cea:	4bb1      	addi.n	a11, a1, 4
40382cec:	ad02      	mov.n	a10, a2
40382cee:	e00400        	callx8	a4
40382cf1:	1df0      	retw.n
40382cf3:	003641        	srli	a3, a0, 6
40382cf6:	009873        	maxu	a9, a8, a0
40382cf9:	ad02      	mov.n	a10, a2
40382cfb:	bd03      	mov.n	a11, a3
40382cfd:	818ec9        	l32r	a8, 0x40375338 (0x3fc97064)
40382d00:	8c19      	beqz.n	a9, 0x40382d05
40382d02:	818ec9        	l32r	a8, 0x4037533c (0x3fc98280)
40382d05:	890a      	s32i.n	a8, a10, 0
40382d07:	818ec9        	l32r	a8, 0x40375340 (0x4202d6dc)
40382d0a:	e00800        	callx8	a8
40382d0d:	2d0a      	mov.n	a2, a10
40382d0f:	1df0      	retw.n
40382d11:	000000        	ill
40382d14:	364100        	entry	a1, 32
40382d17:	2892      	l32i.n	a2, a2, 36
40382d19:	076213        	bbci	a2, 0, 0x40382d30
40382d1c:	402004        	extui	a2, a4, 0, 1
40382d1f:	076325        	bbci	a3, 0, 0x40382d48
40382d22:	0b33      	addi.n	a3, a3, -1
40382d24:	8c62      	beqz.n	a2, 0x40382d2e
40382d26:	1b44      	addi.n	a4, a4, 1
40382d28:	060100        	j	0x40382d30
40382d2b:	000000        	ill
40382d2e:	2b44      	addi.n	a4, a4, 2
40382d30:	6023c2        	quou	a2, a3, a6
40382d33:	1b22      	addi.n	a2, a2, 1
40382d35:	602282        	mull	a2, a2, a6
40382d38:	3905      	s32i.n	a3, a5, 0
40382d3a:	3022c0        	sub	a2, a2, a3
40382d3d:	4c03      	movi.n	a3, 64
40382d3f:	304463        	minu	a4, a4, a3
40382d42:	402263        	minu	a2, a2, a4
40382d45:	1df0      	retw.n
40382d47:	001642        	xorb	b1, b6, b0
40382d4a:	fe          	.byte	0xfe
40382d4b:	c6f5ff        	j	0x40382d26
40382d4e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40382d51:	410028        	l32r	a4, 0x4034cd54
40382d54:	920762        	l8ui	a9, a7, 98
40382d57:	114080        	l32r	a1, 0x40362e58
40382d5a:	04          	.byte	0x4
40382d5b:	076315        	bbci	a3, 0, 0x40382d74
40382d5e:	0b33      	addi.n	a3, a3, -1
40382d60:	8c48      	beqz.n	a8, 0x40382d68
40382d62:	1b44      	addi.n	a4, a4, 1
40382d64:	860000        	j	0x40382d6a
40382d67:	002b44        	extui	a2, a0, 11, 5
40382d6a:	4c02      	movi.n	a2, 64
40382d6c:	3905      	s32i.n	a3, a5, 0
40382d6e:	202463        	minu	a2, a4, a2
40382d71:	1df0      	retw.n
40382d73:	00          	.byte	00
40382d74:	1628ff        	beqz	a8, 0x40382d6a
40382d77:	c6f9ff        	j	0x40382d62
40382d7a:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40382d7d:	410030        	l32r	a4, 0x4034ed80
40382d80:	90f582        	mull	a15, a5, a9
40382d83:	a06822        	orb	b6, b8, b10
40382d86:	a10587        	l32r	a10, 0x4036499c
40382d89:	990d      	s32i.n	a9, a13, 0
40382d8b:	81dec5        	l32r	a8, 0x40374504
40382d8e:	803310        	and	a3, a3, a8
40382d91:	32d3c0        	addmi	a3, a3, 0xffffc000
40382d94:	0c08      	movi.n	a8, 0
40382d96:	302883        	moveqz	a2, a8, a3
40382d99:	1df0      	retw.n
40382d9b:	003641        	srli	a3, a0, 6
40382d9e:	000c42        	xorb	b0, b12, b0
40382da1:	1df0      	retw.n
40382da3:	003641        	srli	a3, a0, 6
40382da6:	00b862        	saltu	a11, a8, a0
40382da9:	0c1a      	movi.n	a10, 1
40382dab:	b080f4        	extui	a8, a11, 0, 16
40382dae:	0c02      	movi.n	a2, 0
40382db0:	802a83        	moveqz	a2, a10, a8
40382db3:	209074        	extui	a9, a2, 0, 8
40382db6:	cca9      	bnez.n	a9, 0x40382dc4
40382db8:	2163c9        	l32r	a2, 0x40375344 (0xffff0001)
40382dbb:	2a28      	add.n	a2, a8, a2
40382dbd:	209a83        	moveqz	a9, a10, a2
40382dc0:	2d09      	mov.n	a2, a9
40382dc2:	8c79      	beqz.n	a9, 0x40382dcd
40382dc4:	0c02      	movi.n	a2, 0
40382dc6:	2903      	s32i.n	a2, a3, 0
40382dc8:	21eac5        	l32r	a2, 0x40374570
40382dcb:	1df0      	retw.n
40382dcd:	001b40        	ssl	a11
40382dd0:	00aaa1        	sll	a10, a10
40382dd3:	a903      	s32i.n	a10, a3, 0
40382dd5:	86fcff        	j	0x40382dcb
40382dd8:	366100        	entry	a1, 48
40382ddb:	cbb1      	addi.n	a11, a1, 12
40382ddd:	ad02      	mov.n	a10, a2
40382ddf:	a56500        	call8	0x40383438
40382de2:	ccaa      	bnez.n	a10, 0x40382df0
40382de4:	8831      	l32i.n	a8, a1, 12
40382de6:	0c49      	movi.n	a9, 4
40382de8:	f08811        	slli	a8, a8, 1
40382deb:	908810        	and	a8, a8, a9
40382dee:	8903      	s32i.n	a8, a3, 0
40382df0:	2d0a      	mov.n	a2, a10
40382df2:	1df0      	retw.n
40382df4:	364100        	entry	a1, 32
40382df7:	3090f5        	extui	a9, a3, 16, 16
40382dfa:	82a0c8        	movi	a8, 200
40382dfd:	22a105        	movi	a2, 0x105
40382e00:	87990d        	bne	a9, a8, 0x40382e11
40382e03:	8151c9        	l32r	a8, 0x40375348 (0xdf00)
40382e06:	803310        	and	a3, a3, a8
40382e09:	32d3c0        	addmi	a3, a3, 0xffffc000
40382e0c:	0c08      	movi.n	a8, 0
40382e0e:	302883        	moveqz	a2, a8, a3
40382e11:	1df0      	retw.n
40382e13:	003641        	srli	a3, a0, 6
40382e16:	008862        	saltu	a8, a8, a0
40382e19:	91bac5        	l32r	a9, 0x40374504
40382e1c:	b1b6c7        	l32r	a11, 0x40374cf4
40382e1f:	909810        	and	a9, a8, a9
40382e22:	ad02      	mov.n	a10, a2
40382e24:	b71908        	beq	a9, a11, 0x40382e30
40382e27:	808074        	extui	a8, a8, 0, 8
40382e2a:	92a015        	movi	a9, 21
40382e2d:	87390f        	bltu	a9, a8, 0x40382e40
40382e30:	c147c9        	l32r	a12, 0x4037534c (0x40383408)
40382e33:	b147c9        	l32r	a11, 0x40375350 (0x40382fe0)
40382e36:	d2a200        	movi	a13, 0x200
40382e39:	a59400        	call8	0x40383784
40382e3c:	2d0a      	mov.n	a2, a10
40382e3e:	1df0      	retw.n
40382e40:	0c2d      	movi.n	a13, 2
40382e42:	c144c9        	l32r	a12, 0x40375354 (0x40383438)
40382e45:	b144c9        	l32r	a11, 0x40375358 (0x4038348c)
40382e48:	46fbff        	j	0x40382e39
40382e4b:	003641        	srli	a3, a0, 6
40382e4e:	002202        	andb	b2, b2, b0
40382e51:	181c      	l32i.n	a1, a12, 4
40382e53:	890c      	s32i.n	a8, a12, 0
40382e55:	0827      	l32i.n	a0, a7, 8
40382e57:	b902      	s32i.n	a11, a2, 0
40382e59:	82a002        	movi	a8, 2
40382e5c:	0c42      	movi.n	a2, 4
40382e5e:	202820        	or	a2, a8, a2
40382e61:	1df0      	retw.n
40382e63:	003641        	srli	a3, a0, 6
40382e66:	008862        	saltu	a8, a8, a0
40382e69:	0c0a      	movi.n	a10, 0
40382e6b:	8090f4        	extui	a9, a8, 0, 16
40382e6e:	0c12      	movi.n	a2, 1
40382e70:	90a283        	moveqz	a10, a2, a9
40382e73:	a0a074        	extui	a10, a10, 0, 8
40382e76:	cc8a      	bnez.n	a10, 0x40382e82
40382e78:	b133c9        	l32r	a11, 0x40375344 (0xffff0001)
40382e7b:	ba99      	add.n	a9, a9, a11
40382e7d:	90a283        	moveqz	a10, a2, a9
40382e80:	8c9a      	beqz.n	a10, 0x40382e8d
40382e82:	0c02      	movi.n	a2, 0
40382e84:	2903      	s32i.n	a2, a3, 0
40382e86:	21bac5        	l32r	a2, 0x40374570
40382e89:	1df0      	retw.n
40382e8b:	000080        	add	a0, a0, a0
40382e8e:	80          	.byte	0x80
40382e8f:	741c92        	ee.vldbc.32.ip	q2, a7, 112
40382e92:	87b202        	bgeu	a2, a8, 0x40382e98
40382e95:	82c8fa        	addi	a8, a8, -6
40382e98:	0c19      	movi.n	a9, 1
40382e9a:	001840        	ssl	a8
40382e9d:	0089a1        	sll	a8, a9
40382ea0:	8903      	s32i.n	a8, a3, 0
40382ea2:	0c02      	movi.n	a2, 0
40382ea4:	46f8ff        	j	0x40382e89
40382ea7:	003641        	srli	a3, a0, 6
40382eaa:	00e842        	xorb	b14, b8, b0
40382ead:	303004        	extui	a3, a3, 0, 1
40382eb0:	e090f4        	extui	a9, a14, 0, 16
40382eb3:	662902        	bnei	a9, 2, 0x40382eb9
40382eb6:	062d00        	j	0x40382f6e
40382eb9:	f6391f        	bgeui	a9, 3, 0x40382edc
40382ebc:	16290d        	beqz	a9, 0x40382f92
40382ebf:	a1aec5        	l32r	a10, 0x40374578
40382ec2:	661976        	bnei	a9, 1, 0x40382f3c
40382ec5:	9872      	l32i.n	a9, a2, 28
40382ec7:	17e902        	bbsi	a9, 1, 0x40382ecd
40382eca:	862f00        	j	0x40382f8c
40382ecd:	9123c9        	l32r	a9, 0x4037535c (0x3fc97038)
40382ed0:	9809      	l32i.n	a9, a9, 0
40382ed2:	0ccb      	movi.n	a11, 12
40382ed4:	d20904        	l8ui	a13, a9, 4
40382ed7:	0cb9      	movi.n	a9, 11
40382ed9:	061300        	j	0x40382f29
40382edc:	264936        	beqi	a9, 4, 0x40382f16
40382edf:	b64963        	bltui	a9, 4, 0x40382f46
40382ee2:	a1a5c5        	l32r	a10, 0x40374578
40382ee5:	665953        	bnei	a9, 5, 0x40382f3c
40382ee8:	9872      	l32i.n	a9, a2, 28
40382eea:	176922        	bbci	a9, 1, 0x40382f10
40382eed:	911bc9        	l32r	a9, 0x4037535c (0x3fc97038)
40382ef0:	9809      	l32i.n	a9, a9, 0
40382ef2:	b2a0eb        	movi	a11, 235
40382ef5:	d20901        	l8ui	a13, a9, 1
40382ef8:	92a0ec        	movi	a9, 236
40382efb:	30b993        	movnez	a11, a9, a3
40382efe:	1c8c      	movi.n	a12, 24
40382f00:	2c09      	movi.n	a9, 32
40382f02:	30c993        	movnez	a12, a9, a3
40382f05:	3171c5        	l32r	a3, 0x403744cc
40382f08:	30ee20        	or	a14, a14, a3
40382f0b:	060900        	j	0x40382f33
40382f0e:	000091        	srl	a0, a0
40382f11:	14          	.byte	0x14
40382f12:	c946      	s32i.n	a12, a6, 16
40382f14:	f6ff98        	bgeui	a15, 0x100, 0x40382eb0
40382f17:	721769        	l16ui	a7, a7, 210
40382f1a:	24          	.byte	0x24
40382f1b:	9110c9        	l32r	a9, 0x4037535c (0x3fc97038)
40382f1e:	9809      	l32i.n	a9, a9, 0
40382f20:	b2a06c        	movi	a11, 108
40382f23:	d20902        	l8ui	a13, a9, 2
40382f26:	92a06b        	movi	a9, 107
40382f29:	30b983        	moveqz	a11, a9, a3
40382f2c:	2c0c      	movi.n	a12, 32
40382f2e:	1c89      	movi.n	a9, 24
40382f30:	30c983        	moveqz	a12, a9, a3
40382f33:	a802      	l32i.n	a10, a2, 0
40382f35:	380a      	l32i.n	a3, a10, 0
40382f37:	38f3      	l32i.n	a3, a3, 60
40382f39:	e00300        	callx8	a3
40382f3c:	2d0a      	mov.n	a2, a10
40382f3e:	1df0      	retw.n
40382f40:	9108c9        	l32r	a9, 0x40375360 (0x3fc9703c)
40382f43:	c6f5ff        	j	0x40382f1e
40382f46:	9872      	l32i.n	a9, a2, 28
40382f48:	17691c        	bbci	a9, 1, 0x40382f68
40382f4b:	9104c9        	l32r	a9, 0x4037535c (0x3fc97038)
40382f4e:	9809      	l32i.n	a9, a9, 0
40382f50:	b2a0bc        	movi	a11, 188
40382f53:	d20900        	l8ui	a13, a9, 0
40382f56:	92a0bb        	movi	a9, 187
40382f59:	30b983        	moveqz	a11, a9, a3
40382f5c:	2c0c      	movi.n	a12, 32
40382f5e:	1c89      	movi.n	a9, 24
40382f60:	30c983        	moveqz	a12, a9, a3
40382f63:	86e7ff        	j	0x40382f05
40382f66:	000091        	srl	a0, a0
40382f69:	fe          	.byte	0xfe
40382f6a:	c8c6      	l32i.n	a12, a6, 48
40382f6c:	f7ffa8        	bbsi	a15, 31, 0x40382f18
40382f6f:	72a709        	movi	a7, 0x709
40382f72:	1091fa        	abs.s	f9, f1
40382f75:	c898      	l32i.n	a12, a8, 36
40382f77:	093c      	s32i.n	a0, a12, 12
40382f79:	cbd2      	addi.n	a13, a2, 12
40382f7b:	0903      	s32i.n	a0, a3, 0
40382f7d:	3cb9      	movi.n	a9, 59
40382f7f:	86e9ff        	j	0x40382f29
40382f82:	000091        	srl	a0, a0
40382f85:	f7c8c6        	bnall	a8, a15, 0x40382f4f
40382f88:	faff      	add.n	a15, a15, a15
40382f8a:	000091        	srl	a0, a0
40382f8d:	f5c846        	call12	0x403c9c1c
40382f90:	cfff9872 	ee.vmulas.u8.qacc.ld.ip.qup	q5, a12, 240, q7, q7, q1, q0
40382f94:	176910        	bbci	a9, 1, 0x40382fa8
40382f97:	91f1c8        	l32r	a9, 0x4037535c (0x3fc97038)
40382f9a:	9809      	l32i.n	a9, a9, 0
40382f9c:	1c3b      	movi.n	a11, 19
40382f9e:	d20905        	l8ui	a13, a9, 5
40382fa1:	0c39      	movi.n	a9, 3
40382fa3:	86e0ff        	j	0x40382f29
40382fa6:	000091        	srl	a0, a0
40382fa9:	ee          	.byte	0xee
40382faa:	c8c6      	l32i.n	a12, a6, 48
40382fac:	faff      	add.n	a15, a15, a15
40382fae:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40382fb1:	a1001c        	l32r	a10, 0x40349fb4
40382fb4:	cc0c      	bnez.n	a12, 0x40382fb8
40382fb6:	0ba2      	addi.n	a10, a2, -1
40382fb8:	c11459        	l32r	a12, 0x40359408
40382fbb:	318139        	l32r	a3, 0x403515c0
40382fbe:	c5e008        	call0	0x4038bdcc
40382fc1:	00a802        	andb	b10, b8, b0
40382fc4:	404341        	srli	a4, a4, 3
40382fc7:	424115        	s8i	a4, a1, 21
40382fca:	480a      	l32i.n	a4, a10, 0
40382fcc:	cb61      	addi.n	a6, a1, 12
40382fce:	4814      	l32i.n	a4, a4, 4
40382fd0:	626107        	s32i	a6, a1, 28
40382fd3:	325114        	s16i	a3, a1, 40
40382fd6:	b2c114        	addi	a11, a1, 20
40382fd9:	e00400        	callx8	a4
40382fdc:	2d0a      	mov.n	a2, a10
40382fde:	1df0      	retw.n
40382fe0:	364100        	entry	a1, 32
40382fe3:	30d320        	or	a13, a3, a3
40382fe6:	c2a010        	movi	a12, 16
40382fe9:	b2a001        	movi	a11, 1
40382fec:	ad02      	mov.n	a10, a2
40382fee:	25fcff        	call8	0x40382fb0
40382ff1:	2d0a      	mov.n	a2, a10
40382ff3:	1df0      	retw.n
40382ff5:	000000        	ill
40382ff8:	360101        	entry	a1, 128
40382ffb:	7d02      	mov.n	a7, a2
40382ffd:	2170c5        	l32r	a2, 0x403745c0
40383000:	0c0b      	movi.n	a11, 0
40383002:	c02000        	memw
40383005:	2802      	l32i.n	a2, a2, 0
40383007:	ad07      	mov.n	a10, a7
40383009:	c02000        	memw
4038300c:	226117        	s32i	a2, a1, 92
4038300f:	2817      	l32i.n	a2, a7, 4
40383011:	622213        	l32i	a6, a2, 76
40383014:	22221e        	l32i	a2, a2, 120
40383017:	6931      	s32i.n	a6, a1, 12
40383019:	e00200        	callx8	a2
4038301c:	62a106        	movi	a6, 0x106
4038301f:	a02a20        	or	a2, a10, a10
40383022:	671a02        	beq	a10, a6, 0x40383028
40383025:	c62100        	j	0x403830b0
40383028:	e585ff        	call8	0x40382888
4038302b:	b1cec8        	l32r	a11, 0x40375364 (0x3fc985a8)
4038302e:	c1cec8        	l32r	a12, 0x40375368 (0x3fc983db)
40383031:	dd0a      	mov.n	a13, a10
40383033:	ed0b      	mov.n	a14, a11
40383035:	0c1a      	movi.n	a10, 1
40383037:	8158c5        	l32r	a8, 0x40374598
4038303a:	e00800        	callx8	a8
4038303d:	3160c5        	l32r	a3, 0x403745c0
40383040:	c02000        	memw
40383043:	422117        	l32i	a4, a1, 92
40383046:	c02000        	memw
40383049:	3803      	l32i.n	a3, a3, 0
4038304b:	37146a        	beq	a4, a3, 0x403830b9
4038304e:	2573f4        	call8	0x40377780
40383051:	4c0c      	movi.n	a12, 64
40383053:	b2a0ff        	movi	a11, 255
40383056:	a2c11c        	addi	a10, a1, 28
40383059:	8111c5        	l32r	a8, 0x403744a0
4038305c:	e00800        	callx8	a8
4038305f:	a807      	l32i.n	a10, a7, 0
40383061:	e831      	l32i.n	a14, a1, 12
40383063:	280a      	l32i.n	a2, a10, 0
40383065:	cd05      	mov.n	a12, a5
40383067:	28d2      	l32i.n	a2, a2, 52
40383069:	bd04      	mov.n	a11, a4
4038306b:	d2c118        	addi	a13, a1, 24
4038306e:	e00200        	callx8	a2
40383071:	c861      	l32i.n	a12, a1, 24
40383073:	dd0a      	mov.n	a13, a10
40383075:	aa2c      	add.n	a2, a12, a10
40383077:	a807      	l32i.n	a10, a7, 0
40383079:	5a64      	add.n	a6, a4, a5
4038307b:	206663        	minu	a6, a6, a2
4038307e:	280a      	l32i.n	a2, a10, 0
40383080:	c094c0        	sub	a9, a4, a12
40383083:	28b2      	l32i.n	a2, a2, 44
40383085:	4086c0        	sub	a8, a6, a4
40383088:	b2c11c        	addi	a11, a1, 28
4038308b:	9911      	s32i.n	a9, a1, 4
4038308d:	8921      	s32i.n	a8, a1, 8
4038308f:	e00200        	callx8	a2
40383092:	9811      	l32i.n	a9, a1, 4
40383094:	82c11c        	addi	a8, a1, 28
40383097:	c821      	l32i.n	a12, a1, 8
40383099:	9ab8      	add.n	a11, a8, a9
4038309b:	2d0a      	mov.n	a2, a10
4038309d:	ad03      	mov.n	a10, a3
4038309f:	81fec4        	l32r	a8, 0x40374498
403830a2:	e00800        	callx8	a8
403830a5:	8821      	l32i.n	a8, a1, 8
403830a7:	6044c0        	sub	a4, a4, a6
403830aa:	4a55      	add.n	a5, a5, a4
403830ac:	8a33      	add.n	a3, a3, a8
403830ae:	4d06      	mov.n	a4, a6
403830b0:	5692f8        	bnez	a2, 0x4038303d
403830b3:	56a5f9        	bnez	a5, 0x40383051
403830b6:	c6e0ff        	j	0x4038303d
403830b9:	1df0      	retw.n
403830bb:	003601        	slli	a3, a6, 32
403830be:	016d02        	l32r	a0, 0x40343a74
403830c1:	213fc5        	l32r	a2, 0x403745c0
403830c4:	0c0a      	movi.n	a10, 0
403830c6:	c02000        	memw
403830c9:	2802      	l32i.n	a2, a2, 0
403830cb:	c02000        	memw
403830ce:	226117        	s32i	a2, a1, 92
403830d1:	2816      	l32i.n	a2, a6, 4
403830d3:	222213        	l32i	a2, a2, 76
403830d6:	226103        	s32i	a2, a1, 12
403830d9:	92a000        	movi	a9, 0
403830dc:	22a001        	movi	a2, 1
403830df:	509293        	movnez	a9, a2, a5
403830e2:	909074        	extui	a9, a9, 0, 8
403830e5:	cc0a      	bnez.n	a10, 0x403830e9
403830e7:	dc49      	bnez.n	a9, 0x403830ff
403830e9:	3135c5        	l32r	a3, 0x403745c0
403830ec:	c02000        	memw
403830ef:	422117        	l32i	a4, a1, 92
403830f2:	c02000        	memw
403830f5:	3803      	l32i.n	a3, a3, 0
403830f7:	2d0a      	mov.n	a2, a10
403830f9:	371477        	beq	a4, a3, 0x40383174
403830fc:	2568f4        	call8	0x40377780
403830ff:	4c0c      	movi.n	a12, 64
40383101:	b2a0ff        	movi	a11, 255
40383104:	a2c11c        	addi	a10, a1, 28
40383107:	9911      	s32i.n	a9, a1, 4
40383109:	81e5c4        	l32r	a8, 0x403744a0
4038310c:	e00800        	callx8	a8
4038310f:	a806      	l32i.n	a10, a6, 0
40383111:	e831      	l32i.n	a14, a1, 12
40383113:	280a      	l32i.n	a2, a10, 0
40383115:	d2c118        	addi	a13, a1, 24
40383118:	28a2      	l32i.n	a2, a2, 40
4038311a:	cd05      	mov.n	a12, a5
4038311c:	40b420        	or	a11, a4, a4
4038311f:	e00200        	callx8	a2
40383122:	dd0a      	mov.n	a13, a10
40383124:	a861      	l32i.n	a10, a1, 24
40383126:	5a24      	add.n	a2, a4, a5
40383128:	da7a      	add.n	a7, a10, a13
4038312a:	702263        	minu	a2, a2, a7
4038312d:	82c11c        	addi	a8, a1, 28
40383130:	4072c0        	sub	a7, a2, a4
40383133:	a0a4c0        	sub	a10, a4, a10
40383136:	cd07      	mov.n	a12, a7
40383138:	bd03      	mov.n	a11, a3
4038313a:	a0a880        	add	a10, a8, a10
4038313d:	d26102        	s32i	a13, a1, 8
40383140:	81d6c4        	l32r	a8, 0x40374498
40383143:	e00800        	callx8	a8
40383146:	a816      	l32i.n	a10, a6, 4
40383148:	0c0b      	movi.n	a11, 0
4038314a:	c8ba      	l32i.n	a12, a10, 44
4038314c:	ad06      	mov.n	a10, a6
4038314e:	e00c00        	callx8	a12
40383151:	9811      	l32i.n	a9, a1, 4
40383153:	d821      	l32i.n	a13, a1, 8
40383155:	56caf8        	bnez	a10, 0x403830e5
40383158:	8816      	l32i.n	a8, a6, 4
4038315a:	c861      	l32i.n	a12, a1, 24
4038315c:	822812        	l32i	a8, a8, 72
4038315f:	2044c0        	sub	a4, a4, a2
40383162:	b2c11c        	addi	a11, a1, 28
40383165:	ad06      	mov.n	a10, a6
40383167:	4a55      	add.n	a5, a5, a4
40383169:	e00800        	callx8	a8
4038316c:	7a33      	add.n	a3, a3, a7
4038316e:	4d02      	mov.n	a4, a2
40383170:	46d9ff        	j	0x403830d9
40383173:	001df0        	subx8	a1, a13, a0
40383176:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40383179:	610048        	l32r	a6, 0x4035517c
4038317c:	22          	.byte	0x22
4038317d:	8864      	l32i.n	a8, a4, 24
4038317f:	0c04      	movi.n	a4, 0
40383181:	471834        	beq	a8, a4, 0x403831b9
40383184:	0c1b      	movi.n	a11, 1
40383186:	a832      	l32i.n	a10, a2, 12
40383188:	30b483        	moveqz	a11, a4, a3
4038318b:	c2c108        	addi	a12, a1, 8
4038318e:	e00800        	callx8	a8
40383191:	479a13        	bne	a10, a4, 0x403831a8
40383194:	3821      	l32i.n	a3, a1, 8
40383196:	47530a        	bbc	a3, a4, 0x403831a4
40383199:	3822      	l32i.n	a3, a2, 8
4038319b:	a832      	l32i.n	a10, a2, 12
4038319d:	3873      	l32i.n	a3, a3, 28
4038319f:	cbb1      	addi.n	a11, a1, 12
403831a1:	e00300        	callx8	a3
403831a4:	2d0a      	mov.n	a2, a10
403831a6:	1df0      	retw.n
403831a8:	22a107        	movi	a2, 0x107
403831ab:	271a02        	beq	a10, a2, 0x403831b1
403831ae:	e571ff        	call8	0x403828cc
403831b1:	ad04      	mov.n	a10, a4
403831b3:	46fbff        	j	0x403831a4
403831b6:	000000        	ill
403831b9:	ad08      	mov.n	a10, a8
403831bb:	46f9ff        	j	0x403831a4
403831be:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403831c1:	a10091        	l32r	a10, 0x403675c4
403831c4:	f7c481        	bnall	a4, a15, 0x40383149
403831c7:	f6c48b        	bgeui	a4, 32, 0x40383156
403831ca:	411ccc        	l32r	a4, 0x4037623c (0xffab6209)
403831cd:	0c0b      	movi.n	a11, 0
403831cf:	a2c114        	addi	a10, a1, 20
403831d2:	9914      	s32i.n	a9, a4, 4
403831d4:	8904      	s32i.n	a8, a4, 0
403831d6:	81b2c4        	l32r	a8, 0x403744a0
403831d9:	e00800        	callx8	a8
403831dc:	0c88      	movi.n	a8, 8
403831de:	824116        	s8i	a8, a1, 22
403831e1:	4cb8      	movi.n	a8, 75
403831e3:	825114        	s16i	a8, a1, 40
403831e6:	a802      	l32i.n	a10, a2, 0
403831e8:	2c08      	movi.n	a8, 32
403831ea:	82412a        	s8i	a8, a1, 42
403831ed:	280a      	l32i.n	a2, a10, 0
403831ef:	b2c114        	addi	a11, a1, 20
403831f2:	2812      	l32i.n	a2, a2, 4
403831f4:	4981      	s32i.n	a4, a1, 32
403831f6:	e00200        	callx8	a2
403831f9:	2d0a      	mov.n	a2, a10
403831fb:	a804      	l32i.n	a10, a4, 0
403831fd:	b814      	l32i.n	a11, a4, 4
403831ff:	0b8a      	addi.n	a8, a10, -1
40383201:	0c19      	movi.n	a9, 1
40383203:	a73801        	bltu	a8, a10, 0x40383208
40383206:	0c09      	movi.n	a9, 0
40383208:	b0c060        	neg	a12, a11
4038320b:	979c2d        	bne	a12, a9, 0x4038323c
4038320e:	92affd        	movi	a9, -3
40383211:	87b927        	bgeu	a9, a8, 0x4038323c
40383214:	219cc4        	l32r	a2, 0x40374484
40383217:	222200        	l32i	a2, a2, 0
4038321a:	160201        	beqz	a2, 0x4038322e
4038321d:	a566ff        	call8	0x40382888
40383220:	bd0a      	mov.n	a11, a10
40383222:	c150c8        	l32r	a12, 0x40375364 (0x3fc985a8)
40383225:	a151c8        	l32r	a10, 0x4037536c (0x3fc98413)
40383228:	819dc4        	l32r	a8, 0x4037449c
4038322b:	e00800        	callx8	a8
4038322e:	8804      	l32i.n	a8, a4, 0
40383230:	9814      	l32i.n	a9, a4, 4
40383232:	8903      	s32i.n	a8, a3, 0
40383234:	9913      	s32i.n	a9, a3, 4
40383236:	22a106        	movi	a2, 0x106
40383239:	1df0      	retw.n
4038323b:	00          	.byte	00
4038323c:	814dc8        	l32r	a8, 0x40375370 (0x400021cc)
4038323f:	e00800        	callx8	a8
40383242:	a903      	s32i.n	a10, a3, 0
40383244:	b913      	s32i.n	a11, a3, 4
40383246:	c6fbff        	j	0x40383239
40383249:	000000        	ill
4038324c:	368100        	entry	a1, 64
4038324f:	0c0b      	movi.n	a11, 0
40383251:	1ccc      	movi.n	a12, 28
40383253:	a2c104        	addi	a10, a1, 4
40383256:	8192c4        	l32r	a8, 0x403744a0
40383259:	e00800        	callx8	a8
4038325c:	a802      	l32i.n	a10, a2, 0
4038325e:	82a066        	movi	a8, 102
40383261:	82510c        	s16i	a8, a1, 24
40383264:	880a      	l32i.n	a8, a10, 0
40383266:	4bb1      	addi.n	a11, a1, 4
40383268:	822801        	l32i	a8, a8, 4
4038326b:	e00800        	callx8	a8
4038326e:	ecba      	bnez.n	a10, 0x4038329d
40383270:	bd0a      	mov.n	a11, a10
40383272:	1ccc      	movi.n	a12, 28
40383274:	4ba1      	addi.n	a10, a1, 4
40383276:	818ac4        	l32r	a8, 0x403744a0
40383279:	e00800        	callx8	a8
4038327c:	a802      	l32i.n	a10, a2, 0
4038327e:	82a099        	movi	a8, 153
40383281:	82510c        	s16i	a8, a1, 24
40383284:	880a      	l32i.n	a8, a10, 0
40383286:	4bb1      	addi.n	a11, a1, 4
40383288:	8818      	l32i.n	a8, a8, 4
4038328a:	e00800        	callx8	a8
4038328d:	ccca      	bnez.n	a10, 0x4038329d
4038328f:	8812      	l32i.n	a8, a2, 4
40383291:	ad02      	mov.n	a10, a2
40383293:	9818      	l32i.n	a9, a8, 4
40383295:	822815        	l32i	a8, a8, 84
40383298:	b809      	l32i.n	a11, a9, 0
4038329a:	e00800        	callx8	a8
4038329d:	2d0a      	mov.n	a2, a10
4038329f:	1df0      	retw.n
403832a1:	000000        	ill
403832a4:	364100        	entry	a1, 32
403832a7:	61c7c4        	l32r	a6, 0x403745c4
403832aa:	622600        	l32i	a6, a6, 0
403832ad:	271608        	beq	a6, a2, 0x403832b9
403832b0:	a2a106        	movi	a10, 0x106
403832b3:	2d0a      	mov.n	a2, a10
403832b5:	1df0      	retw.n
403832b7:	000061        	xsr.lbeg	a0
403832ba:	2ec8bd05 	ee.vmulas.s16.accx.ld.ip.qup	q3, a2, 0x180, q3, q1, q3, q5
403832be:	7856      	l32i.n	a7, a6, 20
403832c0:	ad04      	mov.n	a10, a4
403832c2:	e00700        	callx8	a7
403832c5:	167afe        	beqz	a10, 0x403832b0
403832c8:	7806      	l32i.n	a7, a6, 0
403832ca:	e00700        	callx8	a7
403832cd:	cc85      	bnez.n	a5, 0x403832d9
403832cf:	2816      	l32i.n	a2, a6, 4
403832d1:	e00200        	callx8	a2
403832d4:	ad05      	mov.n	a10, a5
403832d6:	46f6ff        	j	0x403832b3
403832d9:	407054        	extui	a7, a4, 0, 6
403832dc:	cc57      	bnez.n	a7, 0x403832e5
403832de:	3cf8      	movi.n	a8, 63
403832e0:	4c07      	movi.n	a7, 64
403832e2:	57380e        	bltu	a8, a5, 0x403832f4
403832e5:	407044        	extui	a7, a4, 0, 5
403832e8:	cc67      	bnez.n	a7, 0x403832f2
403832ea:	1cf8      	movi.n	a8, 31
403832ec:	72a020        	movi	a7, 32
403832ef:	573801        	bltu	a8, a5, 0x403832f4
403832f2:	1c07      	movi.n	a7, 16
403832f4:	8826      	l32i.n	a8, a6, 8
403832f6:	bd03      	mov.n	a11, a3
403832f8:	ad04      	mov.n	a10, a4
403832fa:	70c720        	or	a12, a7, a7
403832fd:	e00800        	callx8	a8
40383300:	8812      	l32i.n	a8, a2, 4
40383302:	0c0b      	movi.n	a11, 0
40383304:	88b8      	l32i.n	a8, a8, 44
40383306:	20a220        	or	a10, a2, a2
40383309:	e00800        	callx8	a8
4038330c:	563afa        	bnez	a10, 0x403832b3
4038330f:	8836      	l32i.n	a8, a6, 12
40383311:	e00800        	callx8	a8
40383314:	8812      	l32i.n	a8, a2, 4
40383316:	dd05      	mov.n	a13, a5
40383318:	822811        	l32i	a8, a8, 68
4038331b:	cd04      	mov.n	a12, a4
4038331d:	bd03      	mov.n	a11, a3
4038331f:	ad02      	mov.n	a10, a2
40383321:	e00800        	callx8	a8
40383324:	56baf8        	bnez	a10, 0x403832b3
40383327:	8812      	l32i.n	a8, a2, 4
40383329:	ad02      	mov.n	a10, a2
4038332b:	9818      	l32i.n	a9, a8, 4
4038332d:	822815        	l32i	a8, a8, 84
40383330:	b849      	l32i.n	a11, a9, 16
40383332:	e00800        	callx8	a8
40383335:	56aaf7        	bnez	a10, 0x403832b3
40383338:	8846      	l32i.n	a8, a6, 16
4038333a:	7055c0        	sub	a5, a5, a7
4038333d:	e00800        	callx8	a8
40383340:	7a33      	add.n	a3, a3, a7
40383342:	7a44      	add.n	a4, a4, a7
40383344:	46e1ff        	j	0x403832cd
40383347:	00          	.byte	00
40383348:	366100        	entry	a1, 48
4038334b:	20a220        	or	a10, a2, a2
4038334e:	56e300        	bnez	a3, 0x40383360
40383351:	d109c8        	l32r	a13, 0x40375378 (0x3fc9845a)
40383354:	c10ac8        	l32r	a12, 0x4037537c (0x3fc984f9)
40383357:	a10ac8        	l32r	a10, 0x40375380 (0x3fc9848c)
4038335a:	b2a183        	movi	a11, 0x183
4038335d:	2560ff        	call8	0x40382960
40383360:	822201        	l32i	a8, a2, 4
40383363:	cbc1      	addi.n	a12, a1, 12
40383365:	822819        	l32i	a8, a8, 100
40383368:	0c1b      	movi.n	a11, 1
4038336a:	e00800        	callx8	a8
4038336d:	ccba      	bnez.n	a10, 0x4038337c
4038336f:	8831      	l32i.n	a8, a1, 12
40383371:	0c19      	movi.n	a9, 1
40383373:	808104        	extui	a8, a8, 1, 1
40383376:	908830        	xor	a8, a8, a9
40383379:	824300        	s8i	a8, a3, 0
4038337c:	2d0a      	mov.n	a2, a10
4038337e:	1df0      	retw.n
40383380:	366100        	entry	a1, 48
40383383:	82120d        	l16ui	a8, a2, 26
40383386:	26c820        	beqi	a8, 32, 0x403833aa
40383389:	213ec4        	l32r	a2, 0x40374484
4038338c:	822200        	l32i	a8, a2, 0
4038338f:	22a106        	movi	a2, 0x106
40383392:	161801        	beqz	a8, 0x403833a7
40383395:	254fff        	call8	0x40382888
40383398:	a0ba20        	or	a11, a10, a10
4038339b:	c1f2c7        	l32r	a12, 0x40375364 (0x3fc985a8)
4038339e:	a1f9c7        	l32r	a10, 0x40375384 (0x3fc984a5)
403833a1:	813ec4        	l32r	a8, 0x4037449c
403833a4:	e00800        	callx8	a8
403833a7:	900000        	retw
403833aa:	0c08      	movi.n	a8, 0
403833ac:	825107        	s16i	a8, a1, 14
403833af:	82a080        	movi	a8, 128
403833b2:	91f5c7        	l32r	a9, 0x40375388 (0xff000000)
403833b5:	8921      	s32i.n	a8, a1, 8
403833b7:	a802      	l32i.n	a10, a2, 0
403833b9:	8831      	l32i.n	a8, a1, 12
403833bb:	280a      	l32i.n	a2, a10, 0
403833bd:	908810        	and	a8, a8, a9
403833c0:	91f3c7        	l32r	a9, 0x4037538c (0x7a7535)
403833c3:	222215        	l32i	a2, a2, 84
403833c6:	908820        	or	a8, a8, a9
403833c9:	8931      	s32i.n	a8, a1, 12
403833cb:	8bb1      	addi.n	a11, a1, 8
403833cd:	e00200        	callx8	a2
403833d0:	2d0a      	mov.n	a2, a10
403833d2:	46f4ff        	j	0x403833a7
403833d5:	000000        	ill
403833d8:	368100        	entry	a1, 64
403833db:	0c0b      	movi.n	a11, 0
403833dd:	1ccc      	movi.n	a12, 28
403833df:	4ba1      	addi.n	a10, a1, 4
403833e1:	b901      	s32i.n	a11, a1, 0
403833e3:	812fc4        	l32r	a8, 0x403744a0
403833e6:	e00800        	callx8	a8
403833e9:	a802      	l32i.n	a10, a2, 0
403833eb:	0c18      	movi.n	a8, 1
403833ed:	824106        	s8i	a8, a1, 6
403833f0:	880a      	l32i.n	a8, a10, 0
403833f2:	5d01      	mov.n	a5, a1
403833f4:	8818      	l32i.n	a8, a8, 4
403833f6:	5941      	s32i.n	a5, a1, 16
403833f8:	32510c        	s16i	a3, a1, 24
403833fb:	4bb1      	addi.n	a11, a1, 4
403833fd:	e00800        	callx8	a8
40383400:	8801      	l32i.n	a8, a1, 0
40383402:	2d0a      	mov.n	a2, a10
40383404:	8904      	s32i.n	a8, a4, 0
40383406:	1df0      	retw.n
40383408:	366100        	entry	a1, 48
4038340b:	c2c10c        	addi	a12, a1, 12
4038340e:	b2a035        	movi	a11, 53
40383411:	20a220        	or	a10, a2, a2
40383414:	25fcff        	call8	0x403833d8
40383417:	dc9a      	bnez.n	a10, 0x40383434
40383419:	8bc1      	addi.n	a12, a1, 8
4038341b:	0c5b      	movi.n	a11, 5
4038341d:	ad02      	mov.n	a10, a2
4038341f:	a5fbff        	call8	0x403833d8
40383422:	ccea      	bnez.n	a10, 0x40383434
40383424:	8831      	l32i.n	a8, a1, 12
40383426:	220108        	l8ui	a2, a1, 8
40383429:	808811        	slli	a8, a8, 8
4038342c:	8080f4        	extui	a8, a8, 0, 16
4038342f:	208820        	or	a8, a8, a2
40383432:	8903      	s32i.n	a8, a3, 0
40383434:	2d0a      	mov.n	a2, a10
40383436:	1df0      	retw.n
40383438:	364100        	entry	a1, 32
4038343b:	cd03      	mov.n	a12, a3
4038343d:	3c5b      	movi.n	a11, 53
4038343f:	ad02      	mov.n	a10, a2
40383441:	65f9ff        	call8	0x403833d8
40383444:	2d0a      	mov.n	a2, a10
40383446:	1df0      	retw.n
40383448:	366100        	entry	a1, 48
4038344b:	cbb1      	addi.n	a11, a1, 12
4038344d:	ad02      	mov.n	a10, a2
4038344f:	a5feff        	call8	0x40383438
40383452:	ccaa      	bnez.n	a10, 0x40383460
40383454:	8831      	l32i.n	a8, a1, 12
40383456:	0c49      	movi.n	a9, 4
40383458:	f08811        	slli	a8, a8, 1
4038345b:	908810        	and	a8, a8, a9
4038345e:	8903      	s32i.n	a8, a3, 0
40383460:	2d0a      	mov.n	a2, a10
40383462:	1df0      	retw.n
40383464:	364100        	entry	a1, 32
40383467:	cd03      	mov.n	a12, a3
40383469:	0c5b      	movi.n	a11, 5
4038346b:	ad02      	mov.n	a10, a2
4038346d:	a5f6ff        	call8	0x403833d8
40383470:	2d0a      	mov.n	a2, a10
40383472:	1df0      	retw.n
40383474:	364100        	entry	a1, 32
40383477:	30d320        	or	a13, a3, a3
4038347a:	c2a008        	movi	a12, 8
4038347d:	b2a001        	movi	a11, 1
40383480:	ad02      	mov.n	a10, a2
40383482:	e5b2ff        	call8	0x40382fb0
40383485:	2d0a      	mov.n	a2, a10
40383487:	1df0      	retw.n
40383489:	000000        	ill
4038348c:	364100        	entry	a1, 32
4038348f:	30d320        	or	a13, a3, a3
40383492:	c2a008        	movi	a12, 8
40383495:	b2a031        	movi	a11, 49
40383498:	ad02      	mov.n	a10, a2
4038349a:	65b1ff        	call8	0x40382fb0
4038349d:	2d0a      	mov.n	a2, a10
4038349f:	1df0      	retw.n
403834a1:	000000        	ill
403834a4:	364100        	entry	a1, 32
403834a7:	c1a9c7        	l32r	a12, 0x4037534c (0x40383408)
403834aa:	b1a9c7        	l32r	a11, 0x40375350 (0x40382fe0)
403834ad:	d2a200        	movi	a13, 0x200
403834b0:	20a220        	or	a10, a2, a2
403834b3:	252d00        	call8	0x40383784
403834b6:	a02a20        	or	a2, a10, a10
403834b9:	900000        	retw
403834bc:	364100        	entry	a1, 32
403834bf:	0c02      	movi.n	a2, 0
403834c1:	1df0      	retw.n
403834c3:	003641        	srli	a3, a0, 6
403834c6:	003812        	andbc	b3, b8, b0
403834c9:	0c0b      	movi.n	a11, 0
403834cb:	38b3      	l32i.n	a3, a3, 44
403834cd:	ad02      	mov.n	a10, a2
403834cf:	e00300        	callx8	a3
403834d2:	ccca      	bnez.n	a10, 0x403834e2
403834d4:	3812      	l32i.n	a3, a2, 4
403834d6:	ad02      	mov.n	a10, a2
403834d8:	8813      	l32i.n	a8, a3, 4
403834da:	322315        	l32i	a3, a3, 84
403834dd:	b808      	l32i.n	a11, a8, 0
403834df:	e00300        	callx8	a3
403834e2:	0c13      	movi.n	a3, 1
403834e4:	0c08      	movi.n	a8, 0
403834e6:	a08383        	moveqz	a8, a3, a10
403834e9:	808074        	extui	a8, a8, 0, 8
403834ec:	cc88      	bnez.n	a8, 0x403834f8
403834ee:	92aefa        	movi	a9, 0xfffffefa
403834f1:	9a9a      	add.n	a9, a10, a9
403834f3:	908383        	moveqz	a8, a3, a9
403834f6:	acf8      	beqz.n	a8, 0x40383529
403834f8:	a802      	l32i.n	a10, a2, 0
403834fa:	380a      	l32i.n	a3, a10, 0
403834fc:	3833      	l32i.n	a3, a3, 12
403834fe:	e00300        	callx8	a3
40383501:	8872      	l32i.n	a8, a2, 28
40383503:	0c13      	movi.n	a3, 1
40383505:	308820        	or	a8, a8, a3
40383508:	8972      	s32i.n	a8, a2, 28
4038350a:	8812      	l32i.n	a8, a2, 4
4038350c:	ad02      	mov.n	a10, a2
4038350e:	9818      	l32i.n	a9, a8, 4
40383510:	822815        	l32i	a8, a8, 84
40383513:	b819      	l32i.n	a11, a9, 4
40383515:	e00800        	callx8	a8
40383518:	82a106        	movi	a8, 0x106
4038351b:	879a0a        	bne	a10, a8, 0x40383529
4038351e:	8812      	l32i.n	a8, a2, 4
40383520:	bd03      	mov.n	a11, a3
40383522:	88b8      	l32i.n	a8, a8, 44
40383524:	ad02      	mov.n	a10, a2
40383526:	e00800        	callx8	a8
40383529:	2d0a      	mov.n	a2, a10
4038352b:	1df0      	retw.n
4038352d:	000000        	ill
40383530:	364100        	entry	a1, 32
40383533:	4812      	l32i.n	a4, a2, 4
40383535:	0c0b      	movi.n	a11, 0
40383537:	48b4      	l32i.n	a4, a4, 44
40383539:	ad02      	mov.n	a10, a2
4038353b:	e00400        	callx8	a4
4038353e:	ccca      	bnez.n	a10, 0x4038354e
40383540:	4812      	l32i.n	a4, a2, 4
40383542:	ad02      	mov.n	a10, a2
40383544:	8814      	l32i.n	a8, a4, 4
40383546:	422415        	l32i	a4, a4, 84
40383549:	b808      	l32i.n	a11, a8, 0
4038354b:	e00400        	callx8	a4
4038354e:	0c14      	movi.n	a4, 1
40383550:	0c08      	movi.n	a8, 0
40383552:	a08483        	moveqz	a8, a4, a10
40383555:	808074        	extui	a8, a8, 0, 8
40383558:	cc98      	bnez.n	a8, 0x40383565
4038355a:	92aefa        	movi	a9, 0xfffffefa
4038355d:	909a80        	add	a9, a10, a9
40383560:	908483        	moveqz	a8, a4, a9
40383563:	bc28      	beqz.n	a8, 0x40383599
40383565:	a802      	l32i.n	a10, a2, 0
40383567:	bd03      	mov.n	a11, a3
40383569:	480a      	l32i.n	a4, a10, 0
4038356b:	422404        	l32i	a4, a4, 16
4038356e:	e00400        	callx8	a4
40383571:	3872      	l32i.n	a3, a2, 28
40383573:	0c14      	movi.n	a4, 1
40383575:	403320        	or	a3, a3, a4
40383578:	3972      	s32i.n	a3, a2, 28
4038357a:	3812      	l32i.n	a3, a2, 4
4038357c:	ad02      	mov.n	a10, a2
4038357e:	8813      	l32i.n	a8, a3, 4
40383580:	322315        	l32i	a3, a3, 84
40383583:	b838      	l32i.n	a11, a8, 12
40383585:	e00300        	callx8	a3
40383588:	32a106        	movi	a3, 0x106
4038358b:	379a0a        	bne	a10, a3, 0x40383599
4038358e:	3812      	l32i.n	a3, a2, 4
40383590:	bd04      	mov.n	a11, a4
40383592:	38b3      	l32i.n	a3, a3, 44
40383594:	ad02      	mov.n	a10, a2
40383596:	e00300        	callx8	a3
40383599:	2d0a      	mov.n	a2, a10
4038359b:	1df0      	retw.n
4038359d:	000000        	ill
403835a0:	364100        	entry	a1, 32
403835a3:	4812      	l32i.n	a4, a2, 4
403835a5:	0c0b      	movi.n	a11, 0
403835a7:	48b4      	l32i.n	a4, a4, 44
403835a9:	ad02      	mov.n	a10, a2
403835ab:	e00400        	callx8	a4
403835ae:	ccca      	bnez.n	a10, 0x403835be
403835b0:	4812      	l32i.n	a4, a2, 4
403835b2:	ad02      	mov.n	a10, a2
403835b4:	8814      	l32i.n	a8, a4, 4
403835b6:	422415        	l32i	a4, a4, 84
403835b9:	b808      	l32i.n	a11, a8, 0
403835bb:	e00400        	callx8	a4
403835be:	0c14      	movi.n	a4, 1
403835c0:	0c08      	movi.n	a8, 0
403835c2:	a08483        	moveqz	a8, a4, a10
403835c5:	808074        	extui	a8, a8, 0, 8
403835c8:	cc98      	bnez.n	a8, 0x403835d5
403835ca:	92aefa        	movi	a9, 0xfffffefa
403835cd:	909a80        	add	a9, a10, a9
403835d0:	908483        	moveqz	a8, a4, a9
403835d3:	bc28      	beqz.n	a8, 0x40383609
403835d5:	a802      	l32i.n	a10, a2, 0
403835d7:	bd03      	mov.n	a11, a3
403835d9:	480a      	l32i.n	a4, a10, 0
403835db:	422405        	l32i	a4, a4, 20
403835de:	e00400        	callx8	a4
403835e1:	3872      	l32i.n	a3, a2, 28
403835e3:	0c14      	movi.n	a4, 1
403835e5:	403320        	or	a3, a3, a4
403835e8:	3972      	s32i.n	a3, a2, 28
403835ea:	3812      	l32i.n	a3, a2, 4
403835ec:	ad02      	mov.n	a10, a2
403835ee:	8813      	l32i.n	a8, a3, 4
403835f0:	322315        	l32i	a3, a3, 84
403835f3:	b828      	l32i.n	a11, a8, 8
403835f5:	e00300        	callx8	a3
403835f8:	32a106        	movi	a3, 0x106
403835fb:	379a0a        	bne	a10, a3, 0x40383609
403835fe:	3812      	l32i.n	a3, a2, 4
40383600:	bd04      	mov.n	a11, a4
40383602:	38b3      	l32i.n	a3, a3, 44
40383604:	ad02      	mov.n	a10, a2
40383606:	e00300        	callx8	a3
40383609:	2d0a      	mov.n	a2, a10
4038360b:	1df0      	retw.n
4038360d:	000000        	ill
40383610:	364100        	entry	a1, 32
40383613:	8812      	l32i.n	a8, a2, 4
40383615:	ad02      	mov.n	a10, a2
40383617:	9818      	l32i.n	a9, a8, 4
40383619:	822815        	l32i	a8, a8, 84
4038361c:	b22900        	l32i	a11, a9, 0
4038361f:	e00800        	callx8	a8
40383622:	0c1b      	movi.n	a11, 1
40383624:	0c08      	movi.n	a8, 0
40383626:	a08b83        	moveqz	a8, a11, a10
40383629:	808074        	extui	a8, a8, 0, 8
4038362c:	cc98      	bnez.n	a8, 0x40383639
4038362e:	92aefa        	movi	a9, 0xfffffefa
40383631:	909a80        	add	a9, a10, a9
40383634:	908b83        	moveqz	a8, a11, a9
40383637:	bc68      	beqz.n	a8, 0x40383671
40383639:	a802      	l32i.n	a10, a2, 0
4038363b:	dd05      	mov.n	a13, a5
4038363d:	880a      	l32i.n	a8, a10, 0
4038363f:	cd04      	mov.n	a12, a4
40383641:	8888      	l32i.n	a8, a8, 32
40383643:	30b320        	or	a11, a3, a3
40383646:	e00800        	callx8	a8
40383649:	3872      	l32i.n	a3, a2, 28
4038364b:	0c14      	movi.n	a4, 1
4038364d:	403320        	or	a3, a3, a4
40383650:	3972      	s32i.n	a3, a2, 28
40383652:	3812      	l32i.n	a3, a2, 4
40383654:	ad02      	mov.n	a10, a2
40383656:	5813      	l32i.n	a5, a3, 4
40383658:	322315        	l32i	a3, a3, 84
4038365b:	b845      	l32i.n	a11, a5, 16
4038365d:	e00300        	callx8	a3
40383660:	32a106        	movi	a3, 0x106
40383663:	379a0a        	bne	a10, a3, 0x40383671
40383666:	3812      	l32i.n	a3, a2, 4
40383668:	bd04      	mov.n	a11, a4
4038366a:	38b3      	l32i.n	a3, a3, 44
4038366c:	ad02      	mov.n	a10, a2
4038366e:	e00300        	callx8	a3
40383671:	2d0a      	mov.n	a2, a10
40383673:	1df0      	retw.n
40383675:	000000        	ill
40383678:	366100        	entry	a1, 48
4038367b:	8812      	l32i.n	a8, a2, 4
4038367d:	ad02      	mov.n	a10, a2
4038367f:	9818      	l32i.n	a9, a8, 4
40383681:	822815        	l32i	a8, a8, 84
40383684:	b809      	l32i.n	a11, a9, 0
40383686:	303074        	extui	a3, a3, 0, 8
40383689:	e00800        	callx8	a8
4038368c:	0c19      	movi.n	a9, 1
4038368e:	0c08      	movi.n	a8, 0
40383690:	a08983        	moveqz	a8, a9, a10
40383693:	808074        	extui	a8, a8, 0, 8
40383696:	cc88      	bnez.n	a8, 0x403836a2
40383698:	b2aefa        	movi	a11, 0xfffffefa
4038369b:	baaa      	add.n	a10, a10, a11
4038369d:	a08983        	moveqz	a8, a9, a10
403836a0:	8c98      	beqz.n	a8, 0x403836ad
403836a2:	a802      	l32i.n	a10, a2, 0
403836a4:	bd03      	mov.n	a11, a3
403836a6:	880a      	l32i.n	a8, a10, 0
403836a8:	8878      	l32i.n	a8, a8, 28
403836aa:	e00800        	callx8	a8
403836ad:	8812      	l32i.n	a8, a2, 4
403836af:	ad02      	mov.n	a10, a2
403836b1:	88a8      	l32i.n	a8, a8, 40
403836b3:	fbb1      	addi.n	a11, a1, 15
403836b5:	e00800        	callx8	a8
403836b8:	2d0a      	mov.n	a2, a10
403836ba:	ccaa      	bnez.n	a10, 0x403836c8
403836bc:	82010f        	l8ui	a8, a1, 15
403836bf:	3038c0        	sub	a3, a8, a3
403836c2:	82a105        	movi	a8, 0x105
403836c5:	302893        	movnez	a2, a8, a3
403836c8:	1df0      	retw.n
403836ca:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403836cd:	4100a8        	l32r	a4, 0x4036d6d0
403836d0:	02bd04        	l32ai	a0, a13, 16
403836d3:	880a      	l32i.n	a8, a10, 0
403836d5:	8868      	l32i.n	a8, a8, 24
403836d7:	e00800        	callx8	a8
403836da:	2d0a      	mov.n	a2, a10
403836dc:	1df0      	retw.n
403836de:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403836e1:	61001b        	l32r	a6, 0x4034a2e4
403836e4:	430c05        	lsi	f4, a12, 20
403836e7:	405393        	movnez	a5, a3, a4
403836ea:	1b45      	addi.n	a4, a5, 1
403836ec:	0c15      	movi.n	a5, 1
403836ee:	a802      	l32i.n	a10, a2, 0
403836f0:	680a      	l32i.n	a6, a10, 0
403836f2:	62260e        	l32i	a6, a6, 56
403836f5:	e00600        	callx8	a6
403836f8:	bc1a      	beqz.n	a10, 0x4038372d
403836fa:	6812      	l32i.n	a6, a2, 4
403836fc:	cbc1      	addi.n	a12, a1, 12
403836fe:	622619        	l32i	a6, a6, 100
40383701:	bd05      	mov.n	a11, a5
40383703:	ad02      	mov.n	a10, a2
40383705:	e00600        	callx8	a6
40383708:	dcda      	bnez.n	a10, 0x40383729
4038370a:	a831      	l32i.n	a10, a1, 12
4038370c:	a06074        	extui	a6, a10, 0, 8
4038370f:	a0a004        	extui	a10, a10, 0, 1
40383712:	ecba      	bnez.n	a10, 0x40383741
40383714:	3872      	l32i.n	a3, a2, 28
40383716:	07630f        	bbci	a3, 0, 0x40383729
40383719:	7ce4      	movi.n	a4, -2
4038371b:	403310        	and	a3, a3, a4
4038371e:	3972      	s32i.n	a3, a2, 28
40383720:	606104        	extui	a6, a6, 1, 1
40383723:	22a106        	movi	a2, 0x106
40383726:	60a293        	movnez	a10, a2, a6
40383729:	2d0a      	mov.n	a2, a10
4038372b:	1df0      	retw.n
4038372d:	2614bd        	beqi	a4, 1, 0x403836ee
40383730:	6822      	l32i.n	a6, a2, 8
40383732:	a832      	l32i.n	a10, a2, 12
40383734:	6836      	l32i.n	a6, a6, 12
40383736:	50b520        	or	a11, a5, a5
40383739:	e00600        	callx8	a6
4038373c:	0b44      	addi.n	a4, a4, -1
4038373e:	06ebff        	j	0x403836ee
40383741:	8822      	l32i.n	a8, a2, 8
40383743:	1c46      	movi.n	a6, 20
40383745:	606463        	minu	a6, a4, a6
40383748:	8838      	l32i.n	a8, a8, 12
4038374a:	a832      	l32i.n	a10, a2, 12
4038374c:	bd06      	mov.n	a11, a6
4038374e:	e00800        	callx8	a8
40383751:	260399        	beqi	a3, -1, 0x403836ee
40383754:	6044c0        	sub	a4, a4, a6
40383757:	5634f9        	bnez	a4, 0x403836ee
4038375a:	a2a107        	movi	a10, 0x107
4038375d:	06f2ff        	j	0x40383729
40383760:	364100        	entry	a1, 32
40383763:	82120d        	l16ui	a8, a2, 26
40383766:	0c19      	movi.n	a9, 1
40383768:	82c8e0        	addi	a8, a8, -32
4038376b:	0c02      	movi.n	a2, 0
4038376d:	802983        	moveqz	a2, a9, a8
40383770:	8d02      	mov.n	a8, a2
40383772:	0c42      	movi.n	a2, 4
40383774:	202820        	or	a2, a8, a2
40383777:	1df0      	retw.n
40383779:	000000        	ill
4038377c:	364100        	entry	a1, 32
4038377f:	22a106        	movi	a2, 0x106
40383782:	1df0      	retw.n
40383784:	366100        	entry	a1, 48
40383787:	8842      	l32i.n	a8, a2, 16
40383789:	6d02      	mov.n	a6, a2
4038378b:	82c8fc        	addi	a8, a8, -4
4038378e:	0c02      	movi.n	a2, 0
40383790:	f62834        	bgeui	a8, 2, 0x403837c8
40383793:	cbb1      	addi.n	a11, a1, 12
40383795:	ad06      	mov.n	a10, a6
40383797:	e00400        	callx8	a4
4038379a:	2d0a      	mov.n	a2, a10
4038379c:	ec8a      	bnez.n	a10, 0x403837c8
4038379e:	8831      	l32i.n	a8, a1, 12
403837a0:	505820        	or	a5, a8, a5
403837a3:	571821        	beq	a8, a5, 0x403837c8
403837a6:	8816      	l32i.n	a8, a6, 4
403837a8:	bd0a      	mov.n	a11, a10
403837aa:	88b8      	l32i.n	a8, a8, 44
403837ac:	60a620        	or	a10, a6, a6
403837af:	e00800        	callx8	a8
403837b2:	bd05      	mov.n	a11, a5
403837b4:	ad06      	mov.n	a10, a6
403837b6:	e00300        	callx8	a3
403837b9:	2d0a      	mov.n	a2, a10
403837bb:	3816      	l32i.n	a3, a6, 4
403837bd:	8c9a      	beqz.n	a10, 0x403837ca
403837bf:	38b3      	l32i.n	a3, a3, 44
403837c1:	0c1b      	movi.n	a11, 1
403837c3:	ad06      	mov.n	a10, a6
403837c5:	e00300        	callx8	a3
403837c8:	1df0      	retw.n
403837ca:	8813      	l32i.n	a8, a3, 4
403837cc:	222315        	l32i	a2, a3, 84
403837cf:	b22800        	l32i	a11, a8, 0
403837d2:	60a620        	or	a10, a6, a6
403837d5:	e00200        	callx8	a2
403837d8:	32a106        	movi	a3, 0x106
403837db:	2d0a      	mov.n	a2, a10
403837dd:	379a27        	bne	a10, a3, 0x40383808
403837e0:	2816      	l32i.n	a2, a6, 4
403837e2:	0c1b      	movi.n	a11, 1
403837e4:	22220b        	l32i	a2, a2, 44
403837e7:	60a620        	or	a10, a6, a6
403837ea:	e00200        	callx8	a2
403837ed:	cbb1      	addi.n	a11, a1, 12
403837ef:	ad06      	mov.n	a10, a6
403837f1:	e00400        	callx8	a4
403837f4:	2d0a      	mov.n	a2, a10
403837f6:	56eafc        	bnez	a10, 0x403837c8
403837f9:	6831      	l32i.n	a6, a1, 12
403837fb:	32a108        	movi	a3, 0x108
403837fe:	5056c0        	sub	a5, a6, a5
40383801:	502393        	movnez	a2, a3, a5
40383804:	06f0ff        	j	0x403837c8
40383807:	0056ca        	float.s	f5, a6, 0
4038380a:	fb86      	addi.n	a8, a6, 15
4038380c:	f7ff00        	bbsi	a15, 31, 0x40383810
4038380f:	003641        	srli	a3, a0, 6
40383812:	003090        	addx2	a3, a0, a0
40383815:	f582a0        	call12	0x40324044
40383818:	9d          	.byte	0x9d
40383819:	22a105        	movi	a2, 0x105
4038381c:	87990d        	bne	a9, a8, 0x4038382d
4038381f:	81dcc6        	l32r	a8, 0x40375390 (0xcf00)
40383822:	803310        	and	a3, a3, a8
40383825:	32d3c0        	addmi	a3, a3, 0xffffc000
40383828:	0c08      	movi.n	a8, 0
4038382a:	302883        	moveqz	a2, a8, a3
4038382d:	1df0      	retw.n
4038382f:	003641        	srli	a3, a0, 6
40383832:	00          	.byte	00
40383833:	c1d8c6        	l32r	a12, 0x40375394 (0x40383464)
40383836:	b1d8c6        	l32r	a11, 0x40375398 (0x40383474)
40383839:	4c0d      	movi.n	a13, 64
4038383b:	ad02      	mov.n	a10, a2
4038383d:	65f4ff        	call8	0x40383784
40383840:	2d0a      	mov.n	a2, a10
40383842:	1df0      	retw.n
40383844:	366100        	entry	a1, 48
40383847:	cbb1      	addi.n	a11, a1, 12
40383849:	ad02      	mov.n	a10, a2
4038384b:	a5c1ff        	call8	0x40383464
4038384e:	ccaa      	bnez.n	a10, 0x4038385c
40383850:	8831      	l32i.n	a8, a1, 12
40383852:	0c49      	movi.n	a9, 4
40383854:	808441        	srli	a8, a8, 4
40383857:	908810        	and	a8, a8, a9
4038385a:	8903      	s32i.n	a8, a3, 0
4038385c:	2d0a      	mov.n	a2, a10
4038385e:	1df0      	retw.n
40383860:	364100        	entry	a1, 32
40383863:	0c42      	movi.n	a2, 4
40383865:	1df0      	retw.n
40383867:	003641        	srli	a3, a0, 6
4038386a:	003030        	xor	a3, a0, a0
4038386d:	f592a0        	call12	0x4032419c
40383870:	c2          	.byte	0xc2
40383871:	82a105        	movi	a8, 0x105
40383874:	979308        	bne	a3, a9, 0x40383880
40383877:	9842      	l32i.n	a9, a2, 16
40383879:	0cfa      	movi.n	a10, 15
4038387b:	973a01        	bltu	a10, a9, 0x40383880
4038387e:	0c08      	movi.n	a8, 0
40383880:	2d08      	mov.n	a2, a8
40383882:	1df0      	retw.n
40383884:	364100        	entry	a1, 32
40383887:	0c02      	movi.n	a2, 0
40383889:	1df0      	retw.n
4038388b:	003641        	srli	a3, a0, 6
4038388e:	00b862        	saltu	a11, a8, a0
40383891:	0c1a      	movi.n	a10, 1
40383893:	b080f4        	extui	a8, a11, 0, 16
40383896:	0c02      	movi.n	a2, 0
40383898:	802a83        	moveqz	a2, a10, a8
4038389b:	209074        	extui	a9, a2, 0, 8
4038389e:	cca9      	bnez.n	a9, 0x403838ac
403838a0:	21a9c6        	l32r	a2, 0x40375344 (0xffff0001)
403838a3:	2a28      	add.n	a2, a8, a2
403838a5:	209a83        	moveqz	a9, a10, a2
403838a8:	2d09      	mov.n	a2, a9
403838aa:	8c79      	beqz.n	a9, 0x403838b5
403838ac:	0c02      	movi.n	a2, 0
403838ae:	2903      	s32i.n	a2, a3, 0
403838b0:	2130c3        	l32r	a2, 0x40374570
403838b3:	1df0      	retw.n
403838b5:	001b40        	ssl	a11
403838b8:	00aaa1        	sll	a10, a10
403838bb:	a903      	s32i.n	a10, a3, 0
403838bd:	86fcff        	j	0x403838b3
403838c0:	368100        	entry	a1, 64
403838c3:	4812      	l32i.n	a4, a2, 4
403838c5:	ad02      	mov.n	a10, a2
403838c7:	8814      	l32i.n	a8, a4, 4
403838c9:	422415        	l32i	a4, a4, 84
403838cc:	b808      	l32i.n	a11, a8, 0
403838ce:	303074        	extui	a3, a3, 0, 8
403838d1:	e00400        	callx8	a4
403838d4:	4d0a      	mov.n	a4, a10
403838d6:	1ccc      	movi.n	a12, 28
403838d8:	0c0b      	movi.n	a11, 0
403838da:	4ba1      	addi.n	a10, a1, 4
403838dc:	81f1c2        	l32r	a8, 0x403744a0
403838df:	e00800        	callx8	a8
403838e2:	0c19      	movi.n	a9, 1
403838e4:	0c08      	movi.n	a8, 0
403838e6:	408983        	moveqz	a8, a9, a4
403838e9:	808074        	extui	a8, a8, 0, 8
403838ec:	cc88      	bnez.n	a8, 0x403838f8
403838ee:	a2aefa        	movi	a10, 0xfffffefa
403838f1:	aa44      	add.n	a4, a4, a10
403838f3:	408983        	moveqz	a8, a9, a4
403838f6:	9c48      	beqz.n	a8, 0x4038390e
403838f8:	41a9c6        	l32r	a4, 0x4037539c (0xf906)
403838fb:	8c13      	beqz.n	a3, 0x40383900
403838fd:	41a8c6        	l32r	a4, 0x403753a0 (0xfb04)
40383900:	a802      	l32i.n	a10, a2, 0
40383902:	42510c        	s16i	a4, a1, 24
40383905:	480a      	l32i.n	a4, a10, 0
40383907:	4bb1      	addi.n	a11, a1, 4
40383909:	4814      	l32i.n	a4, a4, 4
4038390b:	e00400        	callx8	a4
4038390e:	4812      	l32i.n	a4, a2, 4
40383910:	ad02      	mov.n	a10, a2
40383912:	48a4      	l32i.n	a4, a4, 40
40383914:	3bb1      	addi.n	a11, a1, 3
40383916:	e00400        	callx8	a4
40383919:	2d0a      	mov.n	a2, a10
4038391b:	ccaa      	bnez.n	a10, 0x40383929
4038391d:	420103        	l8ui	a4, a1, 3
40383920:	3034c0        	sub	a3, a4, a3
40383923:	42a105        	movi	a4, 0x105
40383926:	302493        	movnez	a2, a4, a3
40383929:	1df0      	retw.n
4038392b:	003681        	src	a3, a6, a0
4038392e:	003812        	andbc	b3, b8, b0
40383931:	0c0b      	movi.n	a11, 0
40383933:	38b3      	l32i.n	a3, a3, 44
40383935:	ad02      	mov.n	a10, a2
40383937:	e00300        	callx8	a3
4038393a:	3d0a      	mov.n	a3, a10
4038393c:	ccea      	bnez.n	a10, 0x4038394e
4038393e:	3812      	l32i.n	a3, a2, 4
40383940:	ad02      	mov.n	a10, a2
40383942:	4813      	l32i.n	a4, a3, 4
40383944:	322315        	l32i	a3, a3, 84
40383947:	b804      	l32i.n	a11, a4, 0
40383949:	e00300        	callx8	a3
4038394c:	3d0a      	mov.n	a3, a10
4038394e:	0c14      	movi.n	a4, 1
40383950:	0c08      	movi.n	a8, 0
40383952:	308483        	moveqz	a8, a4, a3
40383955:	808074        	extui	a8, a8, 0, 8
40383958:	cc98      	bnez.n	a8, 0x40383965
4038395a:	92aefa        	movi	a9, 0xfffffefa
4038395d:	9a93      	add.n	a9, a3, a9
4038395f:	908483        	moveqz	a8, a4, a9
40383962:	166804        	beqz	a8, 0x403839ac
40383965:	1ccc      	movi.n	a12, 28
40383967:	0c0b      	movi.n	a11, 0
40383969:	4ba1      	addi.n	a10, a1, 4
4038396b:	81cdc2        	l32r	a8, 0x403744a0
4038396e:	e00800        	callx8	a8
40383971:	a802      	l32i.n	a10, a2, 0
40383973:	318cc6        	l32r	a3, 0x403753a4 (0xffff9f60)
40383976:	4bb1      	addi.n	a11, a1, 4
40383978:	32510c        	s16i	a3, a1, 24
4038397b:	380a      	l32i.n	a3, a10, 0
4038397d:	0c14      	movi.n	a4, 1
4038397f:	3813      	l32i.n	a3, a3, 4
40383981:	e00300        	callx8	a3
40383984:	3872      	l32i.n	a3, a2, 28
40383986:	ad02      	mov.n	a10, a2
40383988:	403320        	or	a3, a3, a4
4038398b:	3972      	s32i.n	a3, a2, 28
4038398d:	3812      	l32i.n	a3, a2, 4
4038398f:	8813      	l32i.n	a8, a3, 4
40383991:	322315        	l32i	a3, a3, 84
40383994:	b818      	l32i.n	a11, a8, 4
40383996:	e00300        	callx8	a3
40383999:	82a106        	movi	a8, 0x106
4038399c:	3d0a      	mov.n	a3, a10
4038399e:	879a0a        	bne	a10, a8, 0x403839ac
403839a1:	8812      	l32i.n	a8, a2, 4
403839a3:	bd04      	mov.n	a11, a4
403839a5:	88b8      	l32i.n	a8, a8, 44
403839a7:	ad02      	mov.n	a10, a2
403839a9:	e00800        	callx8	a8
403839ac:	2d03      	mov.n	a2, a3
403839ae:	1df0      	retw.n
403839b0:	368100        	entry	a1, 64
403839b3:	4812      	l32i.n	a4, a2, 4
403839b5:	0c0b      	movi.n	a11, 0
403839b7:	48b4      	l32i.n	a4, a4, 44
403839b9:	ad02      	mov.n	a10, a2
403839bb:	e00400        	callx8	a4
403839be:	ccca      	bnez.n	a10, 0x403839ce
403839c0:	4812      	l32i.n	a4, a2, 4
403839c2:	ad02      	mov.n	a10, a2
403839c4:	8814      	l32i.n	a8, a4, 4
403839c6:	422415        	l32i	a4, a4, 84
403839c9:	b808      	l32i.n	a11, a8, 0
403839cb:	e00400        	callx8	a4
403839ce:	0c14      	movi.n	a4, 1
403839d0:	0c08      	movi.n	a8, 0
403839d2:	a08483        	moveqz	a8, a4, a10
403839d5:	808074        	extui	a8, a8, 0, 8
403839d8:	cca8      	bnez.n	a8, 0x403839e6
403839da:	92aefa        	movi	a9, 0xfffffefa
403839dd:	909a80        	add	a9, a10, a9
403839e0:	908483        	moveqz	a8, a4, a9
403839e3:	16e804        	beqz	a8, 0x40383a35
403839e6:	1ccc      	movi.n	a12, 28
403839e8:	0c0b      	movi.n	a11, 0
403839ea:	4ba1      	addi.n	a10, a1, 4
403839ec:	81adc2        	l32r	a8, 0x403744a0
403839ef:	e00800        	callx8	a8
403839f2:	2c04      	movi.n	a4, 32
403839f4:	3921      	s32i.n	a3, a1, 8
403839f6:	a802      	l32i.n	a10, a2, 0
403839f8:	316cc6        	l32r	a3, 0x403753a8 (0xffffde21)
403839fb:	424107        	s8i	a4, a1, 7
403839fe:	32510c        	s16i	a3, a1, 24
40383a01:	380a      	l32i.n	a3, a10, 0
40383a03:	4bb1      	addi.n	a11, a1, 4
40383a05:	322301        	l32i	a3, a3, 4
40383a08:	42a001        	movi	a4, 1
40383a0b:	e00300        	callx8	a3
40383a0e:	3872      	l32i.n	a3, a2, 28
40383a10:	ad02      	mov.n	a10, a2
40383a12:	403320        	or	a3, a3, a4
40383a15:	3972      	s32i.n	a3, a2, 28
40383a17:	3812      	l32i.n	a3, a2, 4
40383a19:	8813      	l32i.n	a8, a3, 4
40383a1b:	322315        	l32i	a3, a3, 84
40383a1e:	b22803        	l32i	a11, a8, 12
40383a21:	e00300        	callx8	a3
40383a24:	32a106        	movi	a3, 0x106
40383a27:	379a0a        	bne	a10, a3, 0x40383a35
40383a2a:	3812      	l32i.n	a3, a2, 4
40383a2c:	bd04      	mov.n	a11, a4
40383a2e:	38b3      	l32i.n	a3, a3, 44
40383a30:	ad02      	mov.n	a10, a2
40383a32:	e00300        	callx8	a3
40383a35:	2d0a      	mov.n	a2, a10
40383a37:	1df0      	retw.n
40383a39:	000000        	ill
40383a3c:	368100        	entry	a1, 64
40383a3f:	4812      	l32i.n	a4, a2, 4
40383a41:	0c0b      	movi.n	a11, 0
40383a43:	48b4      	l32i.n	a4, a4, 44
40383a45:	ad02      	mov.n	a10, a2
40383a47:	e00400        	callx8	a4
40383a4a:	ccca      	bnez.n	a10, 0x40383a5a
40383a4c:	4812      	l32i.n	a4, a2, 4
40383a4e:	ad02      	mov.n	a10, a2
40383a50:	8814      	l32i.n	a8, a4, 4
40383a52:	422415        	l32i	a4, a4, 84
40383a55:	b808      	l32i.n	a11, a8, 0
40383a57:	e00400        	callx8	a4
40383a5a:	0c14      	movi.n	a4, 1
40383a5c:	0c08      	movi.n	a8, 0
40383a5e:	a08483        	moveqz	a8, a4, a10
40383a61:	808074        	extui	a8, a8, 0, 8
40383a64:	cca8      	bnez.n	a8, 0x40383a72
40383a66:	92aefa        	movi	a9, 0xfffffefa
40383a69:	909a80        	add	a9, a10, a9
40383a6c:	908483        	moveqz	a8, a4, a9
40383a6f:	16e804        	beqz	a8, 0x40383ac1
40383a72:	1ccc      	movi.n	a12, 28
40383a74:	0c0b      	movi.n	a11, 0
40383a76:	4ba1      	addi.n	a10, a1, 4
40383a78:	818ac2        	l32r	a8, 0x403744a0
40383a7b:	e00800        	callx8	a8
40383a7e:	2c04      	movi.n	a4, 32
40383a80:	3921      	s32i.n	a3, a1, 8
40383a82:	a802      	l32i.n	a10, a2, 0
40383a84:	314ac6        	l32r	a3, 0x403753ac (0x23dc)
40383a87:	424107        	s8i	a4, a1, 7
40383a8a:	32510c        	s16i	a3, a1, 24
40383a8d:	380a      	l32i.n	a3, a10, 0
40383a8f:	4bb1      	addi.n	a11, a1, 4
40383a91:	322301        	l32i	a3, a3, 4
40383a94:	42a001        	movi	a4, 1
40383a97:	e00300        	callx8	a3
40383a9a:	3872      	l32i.n	a3, a2, 28
40383a9c:	ad02      	mov.n	a10, a2
40383a9e:	403320        	or	a3, a3, a4
40383aa1:	3972      	s32i.n	a3, a2, 28
40383aa3:	3812      	l32i.n	a3, a2, 4
40383aa5:	8813      	l32i.n	a8, a3, 4
40383aa7:	322315        	l32i	a3, a3, 84
40383aaa:	b22802        	l32i	a11, a8, 8
40383aad:	e00300        	callx8	a3
40383ab0:	32a106        	movi	a3, 0x106
40383ab3:	379a0a        	bne	a10, a3, 0x40383ac1
40383ab6:	3812      	l32i.n	a3, a2, 4
40383ab8:	bd04      	mov.n	a11, a4
40383aba:	38b3      	l32i.n	a3, a3, 44
40383abc:	ad02      	mov.n	a10, a2
40383abe:	e00300        	callx8	a3
40383ac1:	2d0a      	mov.n	a2, a10
40383ac3:	1df0      	retw.n
40383ac5:	000000        	ill
40383ac8:	368100        	entry	a1, 64
40383acb:	8812      	l32i.n	a8, a2, 4
40383acd:	ad02      	mov.n	a10, a2
40383acf:	9818      	l32i.n	a9, a8, 4
40383ad1:	822815        	l32i	a8, a8, 84
40383ad4:	b809      	l32i.n	a11, a9, 0
40383ad6:	e00800        	callx8	a8
40383ad9:	0c1b      	movi.n	a11, 1
40383adb:	0c08      	movi.n	a8, 0
40383add:	a08b83        	moveqz	a8, a11, a10
40383ae0:	808074        	extui	a8, a8, 0, 8
40383ae3:	cc98      	bnez.n	a8, 0x40383af0
40383ae5:	92aefa        	movi	a9, 0xfffffefa
40383ae8:	9a9a      	add.n	a9, a10, a9
40383aea:	908b83        	moveqz	a8, a11, a9
40383aed:	160805        	beqz	a8, 0x40383b41
40383af0:	1ccc      	movi.n	a12, 28
40383af2:	0c0b      	movi.n	a11, 0
40383af4:	4ba1      	addi.n	a10, a1, 4
40383af6:	816ac2        	l32r	a8, 0x403744a0
40383af9:	e00800        	callx8	a8
40383afc:	a802      	l32i.n	a10, a2, 0
40383afe:	524105        	s8i	a5, a1, 5
40383b01:	3931      	s32i.n	a3, a1, 12
40383b03:	2c05      	movi.n	a5, 32
40383b05:	312ac6        	l32r	a3, 0x403753b0 (0xffffed12)
40383b08:	524107        	s8i	a5, a1, 7
40383b0b:	32510c        	s16i	a3, a1, 24
40383b0e:	380a      	l32i.n	a3, a10, 0
40383b10:	4921      	s32i.n	a4, a1, 8
40383b12:	3813      	l32i.n	a3, a3, 4
40383b14:	4bb1      	addi.n	a11, a1, 4
40383b16:	e00300        	callx8	a3
40383b19:	3872      	l32i.n	a3, a2, 28
40383b1b:	0c14      	movi.n	a4, 1
40383b1d:	403320        	or	a3, a3, a4
40383b20:	3972      	s32i.n	a3, a2, 28
40383b22:	3812      	l32i.n	a3, a2, 4
40383b24:	ad02      	mov.n	a10, a2
40383b26:	5813      	l32i.n	a5, a3, 4
40383b28:	322315        	l32i	a3, a3, 84
40383b2b:	b845      	l32i.n	a11, a5, 16
40383b2d:	e00300        	callx8	a3
40383b30:	32a106        	movi	a3, 0x106
40383b33:	379a0a        	bne	a10, a3, 0x40383b41
40383b36:	3812      	l32i.n	a3, a2, 4
40383b38:	bd04      	mov.n	a11, a4
40383b3a:	38b3      	l32i.n	a3, a3, 44
40383b3c:	ad02      	mov.n	a10, a2
40383b3e:	e00300        	callx8	a3
40383b41:	2d0a      	mov.n	a2, a10
40383b43:	1df0      	retw.n
40383b45:	000000        	ill
40383b48:	364100        	entry	a1, 32
40383b4b:	e842      	l32i.n	a14, a2, 16
40383b4d:	e080f4        	extui	a8, a14, 0, 16
40383b50:	26b810        	beqi	a8, 16, 0x40383b64
40383b53:	1c19      	movi.n	a9, 17
40383b55:	a188c2        	l32r	a10, 0x40374578
40383b58:	b118c6        	l32r	a11, 0x403753b8 (0x11ee)
40383b5b:	2c8d      	movi.n	a13, 40
40383b5d:	971808        	beq	a8, a9, 0x40383b69
40383b60:	2d0a      	mov.n	a2, a10
40383b62:	1df0      	retw.n
40383b64:	b114c6        	l32r	a11, 0x403753b4 (0x13ec)
40383b67:	1c4d      	movi.n	a13, 20
40383b69:	a802      	l32i.n	a10, a2, 0
40383b6b:	2c0c      	movi.n	a12, 32
40383b6d:	280a      	l32i.n	a2, a10, 0
40383b6f:	28f2      	l32i.n	a2, a2, 60
40383b71:	e00200        	callx8	a2
40383b74:	06faff        	j	0x40383b60
40383b77:	003601        	slli	a3, a6, 32
40383b7a:	016d02        	l32r	a0, 0x40344530
40383b7d:	2190c2        	l32r	a2, 0x403745c0
40383b80:	0c0a      	movi.n	a10, 0
40383b82:	c02000        	memw
40383b85:	2802      	l32i.n	a2, a2, 0
40383b87:	c02000        	memw
40383b8a:	226117        	s32i	a2, a1, 92
40383b8d:	2816      	l32i.n	a2, a6, 4
40383b8f:	222213        	l32i	a2, a2, 76
40383b92:	226103        	s32i	a2, a1, 12
40383b95:	92a000        	movi	a9, 0
40383b98:	22a001        	movi	a2, 1
40383b9b:	509293        	movnez	a9, a2, a5
40383b9e:	909074        	extui	a9, a9, 0, 8
40383ba1:	cc0a      	bnez.n	a10, 0x40383ba5
40383ba3:	dc49      	bnez.n	a9, 0x40383bbb
40383ba5:	3186c2        	l32r	a3, 0x403745c0
40383ba8:	c02000        	memw
40383bab:	422117        	l32i	a4, a1, 92
40383bae:	c02000        	memw
40383bb1:	3803      	l32i.n	a3, a3, 0
40383bb3:	2d0a      	mov.n	a2, a10
40383bb5:	371477        	beq	a4, a3, 0x40383c30
40383bb8:	65bcf3        	call8	0x40377780
40383bbb:	4c0c      	movi.n	a12, 64
40383bbd:	b2a0ff        	movi	a11, 255
40383bc0:	a2c11c        	addi	a10, a1, 28
40383bc3:	9911      	s32i.n	a9, a1, 4
40383bc5:	8136c2        	l32r	a8, 0x403744a0
40383bc8:	e00800        	callx8	a8
40383bcb:	a806      	l32i.n	a10, a6, 0
40383bcd:	e831      	l32i.n	a14, a1, 12
40383bcf:	280a      	l32i.n	a2, a10, 0
40383bd1:	d2c118        	addi	a13, a1, 24
40383bd4:	28a2      	l32i.n	a2, a2, 40
40383bd6:	cd05      	mov.n	a12, a5
40383bd8:	40b420        	or	a11, a4, a4
40383bdb:	e00200        	callx8	a2
40383bde:	dd0a      	mov.n	a13, a10
40383be0:	a861      	l32i.n	a10, a1, 24
40383be2:	5a24      	add.n	a2, a4, a5
40383be4:	da7a      	add.n	a7, a10, a13
40383be6:	702263        	minu	a2, a2, a7
40383be9:	82c11c        	addi	a8, a1, 28
40383bec:	4072c0        	sub	a7, a2, a4
40383bef:	a0a4c0        	sub	a10, a4, a10
40383bf2:	cd07      	mov.n	a12, a7
40383bf4:	bd03      	mov.n	a11, a3
40383bf6:	a0a880        	add	a10, a8, a10
40383bf9:	d26102        	s32i	a13, a1, 8
40383bfc:	8127c2        	l32r	a8, 0x40374498
40383bff:	e00800        	callx8	a8
40383c02:	a816      	l32i.n	a10, a6, 4
40383c04:	0c0b      	movi.n	a11, 0
40383c06:	c8ba      	l32i.n	a12, a10, 44
40383c08:	ad06      	mov.n	a10, a6
40383c0a:	e00c00        	callx8	a12
40383c0d:	9811      	l32i.n	a9, a1, 4
40383c0f:	d821      	l32i.n	a13, a1, 8
40383c11:	56caf8        	bnez	a10, 0x40383ba1
40383c14:	8816      	l32i.n	a8, a6, 4
40383c16:	c861      	l32i.n	a12, a1, 24
40383c18:	822812        	l32i	a8, a8, 72
40383c1b:	2044c0        	sub	a4, a4, a2
40383c1e:	b2c11c        	addi	a11, a1, 28
40383c21:	ad06      	mov.n	a10, a6
40383c23:	4a55      	add.n	a5, a5, a4
40383c25:	e00800        	callx8	a8
40383c28:	7a33      	add.n	a3, a3, a7
40383c2a:	4d02      	mov.n	a4, a2
40383c2c:	46d9ff        	j	0x40383b95
40383c2f:	001df0        	subx8	a1, a13, a0
40383c32:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40383c35:	410022        	l32r	a4, 0x4034c438
40383c38:	c2f0b6        	s32ri	a12, a0, 0x2d8
40383c3b:	220ed1        	l8ui	a2, a14, 209
40383c3e:	dfc5c1e0 	ee.ldf.64.ip	f12, f12, a13, 56
40383c42:	c5a1e0        	call0	0x40364660
40383c45:	c5b2a0        	call0	0x40324774
40383c48:	5d          	.byte	0x5d
40383c49:	65d1fe        	call8	0x40382960
40383c4c:	92a001        	movi	a9, 1
40383c4f:	82a002        	movi	a8, 2
40383c52:	208983        	moveqz	a8, a9, a2
40383c55:	2d08      	mov.n	a2, a8
40383c57:	8903      	s32i.n	a8, a3, 0
40383c59:	1df0      	retw.n
40383c5b:	0036a1        	sll	a3, a6
40383c5e:	00          	.byte	00
40383c5f:	8150c2        	l32r	a8, 0x403745a0
40383c62:	914fc2        	l32r	a9, 0x403745a0
40383c65:	a842      	l32i.n	a10, a2, 16
40383c67:	8b41      	addi.n	a4, a1, 8
40383c69:	4bb1      	addi.n	a11, a1, 4
40383c6b:	8904      	s32i.n	a8, a4, 0
40383c6d:	9914      	s32i.n	a9, a4, 4
40383c6f:	65fcff        	call8	0x40383c34
40383c72:	1ccc      	movi.n	a12, 28
40383c74:	b2a000        	movi	a11, 0
40383c77:	a2c114        	addi	a10, a1, 20
40383c7a:	8109c2        	l32r	a8, 0x403744a0
40383c7d:	e00800        	callx8	a8
40383c80:	820104        	l8ui	a8, a1, 4
40383c83:	a802      	l32i.n	a10, a2, 0
40383c85:	f09811        	slli	a9, a8, 1
40383c88:	9a98      	add.n	a9, a8, a9
40383c8a:	924116        	s8i	a9, a1, 22
40383c8d:	e08811        	slli	a8, a8, 2
40383c90:	2c09      	movi.n	a9, 32
40383c92:	82412a        	s8i	a8, a1, 42
40383c95:	924117        	s8i	a9, a1, 23
40383c98:	880a      	l32i.n	a8, a10, 0
40383c9a:	51cbc5        	l32r	a5, 0x403753c8 (0x609f)
40383c9d:	8818      	l32i.n	a8, a8, 4
40383c9f:	4981      	s32i.n	a4, a1, 32
40383ca1:	525114        	s16i	a5, a1, 40
40383ca4:	b2c114        	addi	a11, a1, 20
40383ca7:	e00800        	callx8	a8
40383caa:	2842      	l32i.n	a2, a2, 16
40383cac:	1c18      	movi.n	a8, 17
40383cae:	879230        	bne	a2, a8, 0x40383ce2
40383cb1:	2804      	l32i.n	a2, a4, 0
40383cb3:	9814      	l32i.n	a9, a4, 4
40383cb5:	208841        	srli	a8, a2, 8
40383cb8:	80a901        	slli	a10, a9, 24
40383cbb:	808a20        	or	a8, a10, a8
40383cbe:	a111c2        	l32r	a10, 0x40374504
40383cc1:	a08810        	and	a8, a8, a10
40383cc4:	00a911        	slli	a10, a9, 16
40383cc7:	2090f5        	extui	a9, a2, 16, 16
40383cca:	909a20        	or	a9, a10, a9
40383ccd:	a10cc2        	l32r	a10, 0x40374500
40383cd0:	202074        	extui	a2, a2, 0, 8
40383cd3:	a09910        	and	a9, a9, a10
40383cd6:	908820        	or	a8, a8, a9
40383cd9:	208820        	or	a8, a8, a2
40383cdc:	0c02      	movi.n	a2, 0
40383cde:	8904      	s32i.n	a8, a4, 0
40383ce0:	2914      	s32i.n	a2, a4, 4
40383ce2:	a804      	l32i.n	a10, a4, 0
40383ce4:	0c12      	movi.n	a2, 1
40383ce6:	81bbc5        	l32r	a8, 0x403753d4 (0x400021d8)
40383ce9:	e00800        	callx8	a8
40383cec:	818ac5        	l32r	a8, 0x40375314 (0xff000001)
40383cef:	0c04      	movi.n	a4, 0
40383cf1:	8a8a      	add.n	a8, a10, a8
40383cf3:	804283        	moveqz	a4, a2, a8
40383cf6:	408074        	extui	a8, a4, 0, 8
40383cf9:	cc38      	bnez.n	a8, 0x40383d00
40383cfb:	a02893        	movnez	a2, a8, a10
40383cfe:	9ce2      	beqz.n	a2, 0x40383d20
40383d00:	21e1c1        	l32r	a2, 0x40374484
40383d03:	322200        	l32i	a3, a2, 0
40383d06:	22a108        	movi	a2, 0x108
40383d09:	161301        	beqz	a3, 0x40383d1e
40383d0c:	a5b7fe        	call8	0x40382888
40383d0f:	a0ba20        	or	a11, a10, a10
40383d12:	c1aec5        	l32r	a12, 0x403753cc (0x3fc98838)
40383d15:	a1aec5        	l32r	a10, 0x403753d0 (0x3fc98732)
40383d18:	81e1c1        	l32r	a8, 0x4037449c
40383d1b:	e00800        	callx8	a8
40383d1e:	1df0      	retw.n
40383d20:	a0a841        	srli	a10, a10, 8
40383d23:	a903      	s32i.n	a10, a3, 0
40383d25:	46fdff        	j	0x40383d1e
40383d28:	36a100        	entry	a1, 80
40383d2b:	a842      	l32i.n	a10, a2, 16
40383d2d:	0c05      	movi.n	a5, 0
40383d2f:	b2c110        	addi	a11, a1, 16
40383d32:	5931      	s32i.n	a5, a1, 12
40383d34:	e5efff        	call8	0x40383c34
40383d37:	bd05      	mov.n	a11, a5
40383d39:	1ccc      	movi.n	a12, 28
40383d3b:	a2c114        	addi	a10, a1, 20
40383d3e:	81d8c1        	l32r	a8, 0x403744a0
40383d41:	e00800        	callx8	a8
40383d44:	820110        	l8ui	a8, a1, 16
40383d47:	2c05      	movi.n	a5, 32
40383d49:	824116        	s8i	a8, a1, 22
40383d4c:	a802      	l32i.n	a10, a2, 0
40383d4e:	e08811        	slli	a8, a8, 2
40383d51:	524117        	s8i	a5, a1, 23
40383d54:	82412a        	s8i	a8, a1, 42
40383d57:	280a      	l32i.n	a2, a10, 0
40383d59:	cb31      	addi.n	a3, a1, 12
40383d5b:	52aa05        	movi	a5, 0xfffffa05
40383d5e:	222201        	l32i	a2, a2, 4
40383d61:	326108        	s32i	a3, a1, 32
40383d64:	525114        	s16i	a5, a1, 40
40383d67:	b2c114        	addi	a11, a1, 20
40383d6a:	e00200        	callx8	a2
40383d6d:	cc3a      	bnez.n	a10, 0x40383d74
40383d6f:	220300        	l8ui	a2, a3, 0
40383d72:	2904      	s32i.n	a2, a4, 0
40383d74:	2d0a      	mov.n	a2, a10
40383d76:	1df0      	retw.n
40383d78:	36a100        	entry	a1, 80
40383d7b:	a842      	l32i.n	a10, a2, 16
40383d7d:	0c05      	movi.n	a5, 0
40383d7f:	b2c110        	addi	a11, a1, 16
40383d82:	5931      	s32i.n	a5, a1, 12
40383d84:	e5eaff        	call8	0x40383c34
40383d87:	bd05      	mov.n	a11, a5
40383d89:	1ccc      	movi.n	a12, 28
40383d8b:	a2c114        	addi	a10, a1, 20
40383d8e:	81c4c1        	l32r	a8, 0x403744a0
40383d91:	e00800        	callx8	a8
40383d94:	820110        	l8ui	a8, a1, 16
40383d97:	2c05      	movi.n	a5, 32
40383d99:	824116        	s8i	a8, a1, 22
40383d9c:	524117        	s8i	a5, a1, 23
40383d9f:	e08811        	slli	a8, a8, 2
40383da2:	518dc5        	l32r	a5, 0x403753d8 (0xffff8e71)
40383da5:	a802      	l32i.n	a10, a2, 0
40383da7:	82412a        	s8i	a8, a1, 42
40383daa:	525114        	s16i	a5, a1, 40
40383dad:	580a      	l32i.n	a5, a10, 0
40383daf:	cb41      	addi.n	a4, a1, 12
40383db1:	5815      	l32i.n	a5, a5, 4
40383db3:	426108        	s32i	a4, a1, 32
40383db6:	b2c114        	addi	a11, a1, 20
40383db9:	e00500        	callx8	a5
40383dbc:	dcca      	bnez.n	a10, 0x40383ddc
40383dbe:	420400        	l8ui	a4, a4, 0
40383dc1:	261408        	beqi	a4, 1, 0x40383dcd
40383dc4:	262418        	beqi	a4, 2, 0x40383de0
40383dc7:	a903      	s32i.n	a10, a3, 0
40383dc9:	060100        	j	0x40383dd1
40383dcc:	001c04        	extui	a1, a0, 12, 1
40383dcf:	4903      	s32i.n	a4, a3, 0
40383dd1:	4803      	l32i.n	a4, a3, 0
40383dd3:	2842      	l32i.n	a2, a2, 16
40383dd5:	271403        	beq	a4, a2, 0x40383ddc
40383dd8:	0c02      	movi.n	a2, 0
40383dda:	2903      	s32i.n	a2, a3, 0
40383ddc:	2d0a      	mov.n	a2, a10
40383dde:	1df0      	retw.n
40383de0:	1c14      	movi.n	a4, 17
40383de2:	46faff        	j	0x40383dcf
40383de5:	000000        	ill
40383de8:	366100        	entry	a1, 48
40383deb:	20a220        	or	a10, a2, a2
40383dee:	56e300        	bnez	a3, 0x40383e00
40383df1:	d17ac5        	l32r	a13, 0x403753dc (0x3fc9874b)
40383df4:	c17bc5        	l32r	a12, 0x403753e0 (0x3fc98765)
40383df7:	a173c5        	l32r	a10, 0x403753c4 (0x3fc98718)
40383dfa:	b2a09e        	movi	a11, 158
40383dfd:	25b6fe        	call8	0x40382960
40383e00:	822201        	l32i	a8, a2, 4
40383e03:	cbc1      	addi.n	a12, a1, 12
40383e05:	822819        	l32i	a8, a8, 100
40383e08:	0c1b      	movi.n	a11, 1
40383e0a:	e00800        	callx8	a8
40383e0d:	ccba      	bnez.n	a10, 0x40383e1c
40383e0f:	8831      	l32i.n	a8, a1, 12
40383e11:	0c19      	movi.n	a9, 1
40383e13:	808104        	extui	a8, a8, 1, 1
40383e16:	908830        	xor	a8, a8, a9
40383e19:	824300        	s8i	a8, a3, 0
40383e1c:	2d0a      	mov.n	a2, a10
40383e1e:	1df0      	retw.n
40383e20:	364100        	entry	a1, 32
40383e23:	3030f5        	extui	a3, a3, 16, 16
40383e26:	92a0c2        	movi	a9, 194
40383e29:	82a105        	movi	a8, 0x105
40383e2c:	979308        	bne	a3, a9, 0x40383e38
40383e2f:	9842      	l32i.n	a9, a2, 16
40383e31:	0cfa      	movi.n	a10, 15
40383e33:	97ba01        	bgeu	a10, a9, 0x40383e38
40383e36:	0c08      	movi.n	a8, 0
40383e38:	2d08      	mov.n	a2, a8
40383e3a:	1df0      	retw.n
40383e3c:	364100        	entry	a1, 32
40383e3f:	0c22      	movi.n	a2, 2
40383e41:	1df0      	retw.n
40383e43:	003641        	srli	a3, a0, 6
40383e46:	000c02        	andb	b0, b12, b0
40383e49:	1df0      	retw.n
40383e4b:	003641        	srli	a3, a0, 6
40383e4e:	003090        	addx2	a3, a0, a0
40383e51:	f582a0        	call12	0x40324680
40383e54:	cd          	.byte	0xcd
40383e55:	22a105        	movi	a2, 0x105
40383e58:	87990d        	bne	a9, a8, 0x40383e69
40383e5b:	81aac1        	l32r	a8, 0x40374504
40383e5e:	803310        	and	a3, a3, a8
40383e61:	32d3a0        	addmi	a3, a3, 0xffffa000
40383e64:	0c08      	movi.n	a8, 0
40383e66:	302883        	moveqz	a2, a8, a3
40383e69:	1df0      	retw.n
40383e6b:	003641        	srli	a3, a0, 6
40383e6e:	000c42        	xorb	b0, b12, b0
40383e71:	1df0      	retw.n
40383e73:	003601        	slli	a3, a6, 32
40383e76:	0161d2        	l32r	a0, 0x403787fc (0xa7c0cbd0)
40383e79:	c191c6        	l32r	a12, 0x403758c0 (0xadb18b22)
40383e7c:	c1c020        	l32r	a12, 0x4034c17c
40383e7f:	006806        	ee.ldf.64.xp	f6, f0, a0, a8
40383e82:	0c1b      	movi.n	a11, 1
40383e84:	c02000        	memw
40383e87:	626117        	s32i	a6, a1, 92
40383e8a:	6812      	l32i.n	a6, a2, 4
40383e8c:	822613        	l32i	a8, a6, 76
40383e8f:	8931      	s32i.n	a8, a1, 12
40383e91:	5a84      	add.n	a8, a4, a5
40383e93:	873901        	bltu	a9, a8, 0x40383e98
40383e96:	0c0b      	movi.n	a11, 0
40383e98:	62261e        	l32i	a6, a6, 120
40383e9b:	ad02      	mov.n	a10, a2
40383e9d:	e00600        	callx8	a6
40383ea0:	62a106        	movi	a6, 0x106
40383ea3:	7d0a      	mov.n	a7, a10
40383ea5:	671a02        	beq	a10, a6, 0x40383eab
40383ea8:	062400        	j	0x40383f3c
40383eab:	e59dfe        	call8	0x40382888
40383eae:	b14dc5        	l32r	a11, 0x403753e4 (0x3fc98948)
40383eb1:	c14dc5        	l32r	a12, 0x403753e8 (0x3fc983db)
40383eb4:	dd0a      	mov.n	a13, a10
40383eb6:	ed0b      	mov.n	a14, a11
40383eb8:	a2a001        	movi	a10, 1
40383ebb:	81b7c1        	l32r	a8, 0x40374598
40383ebe:	e00800        	callx8	a8
40383ec1:	31bfc1        	l32r	a3, 0x403745c0
40383ec4:	c02000        	memw
40383ec7:	422117        	l32i	a4, a1, 92
40383eca:	c02000        	memw
40383ecd:	3803      	l32i.n	a3, a3, 0
40383ecf:	2d07      	mov.n	a2, a7
40383ed1:	371470        	beq	a4, a3, 0x40383f45
40383ed4:	101120        	or	a1, a1, a1
40383ed7:	a58af3        	call8	0x40377780
40383eda:	4c0c      	movi.n	a12, 64
40383edc:	b2a0ff        	movi	a11, 255
40383edf:	a2c11c        	addi	a10, a1, 28
40383ee2:	816fc1        	l32r	a8, 0x403744a0
40383ee5:	e00800        	callx8	a8
40383ee8:	a802      	l32i.n	a10, a2, 0
40383eea:	e831      	l32i.n	a14, a1, 12
40383eec:	680a      	l32i.n	a6, a10, 0
40383eee:	cd05      	mov.n	a12, a5
40383ef0:	68d6      	l32i.n	a6, a6, 52
40383ef2:	bd04      	mov.n	a11, a4
40383ef4:	d2c118        	addi	a13, a1, 24
40383ef7:	e00600        	callx8	a6
40383efa:	c861      	l32i.n	a12, a1, 24
40383efc:	dd0a      	mov.n	a13, a10
40383efe:	aa6c      	add.n	a6, a12, a10
40383f00:	a802      	l32i.n	a10, a2, 0
40383f02:	5a84      	add.n	a8, a4, a5
40383f04:	980a      	l32i.n	a9, a10, 0
40383f06:	c0e4c0        	sub	a14, a4, a12
40383f09:	608863        	minu	a8, a8, a6
40383f0c:	98b9      	l32i.n	a9, a9, 44
40383f0e:	b2c11c        	addi	a11, a1, 28
40383f11:	8911      	s32i.n	a8, a1, 4
40383f13:	e26102        	s32i	a14, a1, 8
40383f16:	4068c0        	sub	a6, a8, a4
40383f19:	e00900        	callx8	a9
40383f1c:	e821      	l32i.n	a14, a1, 8
40383f1e:	92c11c        	addi	a9, a1, 28
40383f21:	7d0a      	mov.n	a7, a10
40383f23:	cd06      	mov.n	a12, a6
40383f25:	ad03      	mov.n	a10, a3
40383f27:	e0b980        	add	a11, a9, a14
40383f2a:	815bc1        	l32r	a8, 0x40374498
40383f2d:	e00800        	callx8	a8
40383f30:	8811      	l32i.n	a8, a1, 4
40383f32:	6a33      	add.n	a3, a3, a6
40383f34:	8044c0        	sub	a4, a4, a8
40383f37:	4a55      	add.n	a5, a5, a4
40383f39:	804820        	or	a4, a8, a8
40383f3c:	5617f8        	bnez	a7, 0x40383ec1
40383f3f:	5675f9        	bnez	a5, 0x40383eda
40383f42:	c6deff        	j	0x40383ec1
40383f45:	1df0      	retw.n
40383f47:	003681        	src	a3, a6, a0
40383f4a:	006812        	andbc	b6, b8, b0
40383f4d:	ad02      	mov.n	a10, a2
40383f4f:	8816      	l32i.n	a8, a6, 4
40383f51:	622615        	l32i	a6, a6, 84
40383f54:	b808      	l32i.n	a11, a8, 0
40383f56:	e00600        	callx8	a6
40383f59:	569a04        	bnez	a10, 0x40383fa6
40383f5c:	bd0a      	mov.n	a11, a10
40383f5e:	c2a01c        	movi	a12, 28
40383f61:	a2c104        	addi	a10, a1, 4
40383f64:	622200        	l32i	a6, a2, 0
40383f67:	814ec1        	l32r	a8, 0x403744a0
40383f6a:	e00800        	callx8	a8
40383f6d:	817dc1        	l32r	a8, 0x40374564
40383f70:	524105        	s8i	a5, a1, 5
40383f73:	2c09      	movi.n	a9, 32
40383f75:	473801        	bltu	a8, a4, 0x40383f7a
40383f78:	1c89      	movi.n	a9, 24
40383f7a:	3931      	s32i.n	a3, a1, 12
40383f7c:	924107        	s8i	a9, a1, 7
40383f7f:	4921      	s32i.n	a4, a1, 8
40383f81:	1c23      	movi.n	a3, 18
40383f83:	473801        	bltu	a8, a4, 0x40383f88
40383f86:	0c23      	movi.n	a3, 2
40383f88:	32510c        	s16i	a3, a1, 24
40383f8b:	3806      	l32i.n	a3, a6, 0
40383f8d:	4bb1      	addi.n	a11, a1, 4
40383f8f:	3813      	l32i.n	a3, a3, 4
40383f91:	ad06      	mov.n	a10, a6
40383f93:	e00300        	callx8	a3
40383f96:	ccca      	bnez.n	a10, 0x40383fa6
40383f98:	4812      	l32i.n	a4, a2, 4
40383f9a:	ad02      	mov.n	a10, a2
40383f9c:	5814      	l32i.n	a5, a4, 4
40383f9e:	322415        	l32i	a3, a4, 84
40383fa1:	b845      	l32i.n	a11, a5, 16
40383fa3:	e00300        	callx8	a3
40383fa6:	2d0a      	mov.n	a2, a10
40383fa8:	1df0      	retw.n
40383faa:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40383fad:	810048        	l32r	a8, 0x40355fb0
40383fb0:	12b2a0        	l32ai	a1, a2, 0x280
40383fb3:	004224        	extui	a4, a0, 2, 3
40383fb6:	0bad      	addi.n	a10, a13, -1
40383fb8:	02e004        	s32c1i	a0, a0, 16
40383fbb:	00560a        	add.s	f5, f6, f0
40383fbe:	064812        	j	0x403888e2
40383fc1:	ad02      	mov.n	a10, a2
40383fc3:	8814      	l32i.n	a8, a4, 4
40383fc5:	422415        	l32i	a4, a4, 84
40383fc8:	b808      	l32i.n	a11, a8, 0
40383fca:	e00400        	callx8	a4
40383fcd:	56fa04        	bnez	a10, 0x40384020
40383fd0:	bd0a      	mov.n	a11, a10
40383fd2:	c2a01c        	movi	a12, 28
40383fd5:	a2c104        	addi	a10, a1, 4
40383fd8:	4802      	l32i.n	a4, a2, 0
40383fda:	8131c1        	l32r	a8, 0x403744a0
40383fdd:	e00800        	callx8	a8
40383fe0:	9161c1        	l32r	a9, 0x40374564
40383fe3:	82a020        	movi	a8, 32
40383fe6:	373902        	bltu	a9, a3, 0x40383fec
40383fe9:	82a018        	movi	a8, 24
40383fec:	824107        	s8i	a8, a1, 7
40383fef:	3921      	s32i.n	a3, a1, 8
40383ff1:	2c18      	movi.n	a8, 33
40383ff3:	373901        	bltu	a9, a3, 0x40383ff8
40383ff6:	2c08      	movi.n	a8, 32
40383ff8:	82510c        	s16i	a8, a1, 24
40383ffb:	8804      	l32i.n	a8, a4, 0
40383ffd:	4bb1      	addi.n	a11, a1, 4
40383fff:	8818      	l32i.n	a8, a8, 4
40384001:	ad04      	mov.n	a10, a4
40384003:	e00800        	callx8	a8
40384006:	dc6a      	bnez.n	a10, 0x40384020
40384008:	a802      	l32i.n	a10, a2, 0
4038400a:	480a      	l32i.n	a4, a10, 0
4038400c:	822411        	l32i	a8, a4, 68
4038400f:	561801        	bnez	a8, 0x40384024
40384012:	3812      	l32i.n	a3, a2, 4
40384014:	ad02      	mov.n	a10, a2
40384016:	4813      	l32i.n	a4, a3, 4
40384018:	322315        	l32i	a3, a3, 84
4038401b:	b834      	l32i.n	a11, a4, 12
4038401d:	e00300        	callx8	a3
40384020:	2d0a      	mov.n	a2, a10
40384022:	1df0      	retw.n
40384024:	4812      	l32i.n	a4, a2, 4
40384026:	bd03      	mov.n	a11, a3
40384028:	c884      	l32i.n	a12, a4, 32
4038402a:	e00800        	callx8	a8
4038402d:	161afe        	beqz	a10, 0x40384012
40384030:	06fbff        	j	0x40384020
40384033:	003681        	src	a3, a6, a0
40384036:	004812        	andbc	b4, b8, b0
40384039:	b2a000        	movi	a11, 0
4038403c:	42240b        	l32i	a4, a4, 44
4038403f:	ad02      	mov.n	a10, a2
40384041:	e00400        	callx8	a4
40384044:	564a06        	bnez	a10, 0x403840ac
40384047:	4812      	l32i.n	a4, a2, 4
40384049:	ad02      	mov.n	a10, a2
4038404b:	8814      	l32i.n	a8, a4, 4
4038404d:	422415        	l32i	a4, a4, 84
40384050:	b808      	l32i.n	a11, a8, 0
40384052:	e00400        	callx8	a4
40384055:	563a05        	bnez	a10, 0x403840ac
40384058:	bd0a      	mov.n	a11, a10
4038405a:	1ccc      	movi.n	a12, 28
4038405c:	a2c104        	addi	a10, a1, 4
4038405f:	422200        	l32i	a4, a2, 0
40384062:	810fc1        	l32r	a8, 0x403744a0
40384065:	e00800        	callx8	a8
40384068:	913fc1        	l32r	a9, 0x40374564
4038406b:	82a020        	movi	a8, 32
4038406e:	373902        	bltu	a9, a3, 0x40384074
40384071:	82a018        	movi	a8, 24
40384074:	824107        	s8i	a8, a1, 7
40384077:	3921      	s32i.n	a3, a1, 8
40384079:	82a0dc        	movi	a8, 220
4038407c:	373902        	bltu	a9, a3, 0x40384082
4038407f:	82a0d8        	movi	a8, 216
40384082:	82510c        	s16i	a8, a1, 24
40384085:	8804      	l32i.n	a8, a4, 0
40384087:	4bb1      	addi.n	a11, a1, 4
40384089:	822801        	l32i	a8, a8, 4
4038408c:	40a420        	or	a10, a4, a4
4038408f:	e00800        	callx8	a8
40384092:	dc6a      	bnez.n	a10, 0x403840ac
40384094:	a802      	l32i.n	a10, a2, 0
40384096:	480a      	l32i.n	a4, a10, 0
40384098:	822411        	l32i	a8, a4, 68
4038409b:	561801        	bnez	a8, 0x403840b0
4038409e:	3812      	l32i.n	a3, a2, 4
403840a0:	ad02      	mov.n	a10, a2
403840a2:	4813      	l32i.n	a4, a3, 4
403840a4:	322315        	l32i	a3, a3, 84
403840a7:	b824      	l32i.n	a11, a4, 8
403840a9:	e00300        	callx8	a3
403840ac:	2d0a      	mov.n	a2, a10
403840ae:	1df0      	retw.n
403840b0:	4812      	l32i.n	a4, a2, 4
403840b2:	bd03      	mov.n	a11, a3
403840b4:	c894      	l32i.n	a12, a4, 36
403840b6:	e00800        	callx8	a8
403840b9:	161afe        	beqz	a10, 0x4038409e
403840bc:	06fbff        	j	0x403840ac
403840bf:	003641        	srli	a3, a0, 6
403840c2:	003020        	or	a3, a0, a0
403840c5:	f532a0        	call12	0x403243f4
403840c8:	ef3022c0 	ee.vmulas.u16.accx.ld.xp.qup	q0, a14, a0, q4, q6, q2, q2
403840cc:	0c08      	movi.n	a8, 0
403840ce:	32a105        	movi	a3, 0x105
403840d1:	203883        	moveqz	a3, a8, a2
403840d4:	2d03      	mov.n	a2, a3
403840d6:	1df0      	retw.n
403840d8:	364100        	entry	a1, 32
403840db:	220218        	l8ui	a2, a2, 24
403840de:	1c89      	movi.n	a9, 24
403840e0:	0c08      	movi.n	a8, 0
403840e2:	27b902        	bgeu	a9, a2, 0x403840e8
403840e5:	82a002        	movi	a8, 2
403840e8:	0c42      	movi.n	a2, 4
403840ea:	202820        	or	a2, a8, a2
403840ed:	1df0      	retw.n
403840ef:	003641        	srli	a3, a0, 6
403840f2:	00          	.byte	00
403840f3:	81bec4        	l32r	a8, 0x403753ec (0x5e4016)
403840f6:	0c09      	movi.n	a9, 0
403840f8:	8022c0        	sub	a2, a2, a8
403840fb:	82a105        	movi	a8, 0x105
403840fe:	208983        	moveqz	a8, a9, a2
40384101:	2d08      	mov.n	a2, a8
40384103:	1df0      	retw.n
40384105:	000000        	ill
40384108:	364100        	entry	a1, 32
4038410b:	81b9c4        	l32r	a8, 0x403753f0 (0x4203bad4)
4038410e:	e00800        	callx8	a8
40384111:	a0a014        	extui	a10, a10, 0, 2
40384114:	0c18      	movi.n	a8, 1
40384116:	0c02      	movi.n	a2, 0
40384118:	a02883        	moveqz	a2, a8, a10
4038411b:	202060        	neg	a2, a2
4038411e:	1df0      	retw.n
40384120:	364100        	entry	a1, 32
40384123:	81b3c4        	l32r	a8, 0x403753f0 (0x4203bad4)
40384126:	e00800        	callx8	a8
40384129:	a0a404        	extui	a10, a10, 4, 1
4038412c:	0b2a      	addi.n	a2, a10, -1
4038412e:	1df0      	retw.n
40384130:	364100        	entry	a1, 32
40384133:	81afc4        	l32r	a8, 0x403753f0 (0x4203bad4)
40384136:	e00800        	callx8	a8
40384139:	0c0d      	movi.n	a13, 0
4038413b:	2d0a      	mov.n	a2, a10
4038413d:	cd0d      	mov.n	a12, a13
4038413f:	bd0d      	mov.n	a11, a13
40384141:	5c0a      	movi.n	a10, 80
40384143:	e537f2        	call8	0x403764c0
40384146:	a2a010        	movi	a10, 16
40384149:	a0a220        	or	a10, a2, a10
4038414c:	a0a074        	extui	a10, a10, 0, 8
4038414f:	81a9c4        	l32r	a8, 0x403753f4 (0x4203baec)
40384152:	e00800        	callx8	a8
40384155:	21e3c0        	l32r	a2, 0x403744e4
40384158:	a802      	l32i.n	a10, a2, 0
4038415a:	81a7c4        	l32r	a8, 0x403753f8 (0x40000960)
4038415d:	e00800        	callx8	a8
40384160:	1df0      	retw.n
40384162:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40384165:	410081        	l32r	a4, 0x40364568
40384168:	a2c4e0        	addi	a10, a4, -32
4038416b:	0800      	l32i.n	a0, a0, 0
4038416d:	0c0d      	movi.n	a13, 0
4038416f:	2d0a      	mov.n	a2, a10
40384171:	cd0d      	mov.n	a12, a13
40384173:	bd0d      	mov.n	a11, a13
40384175:	5c0a      	movi.n	a10, 80
40384177:	a534f2        	call8	0x403764c0
4038417a:	a2a003        	movi	a10, 3
4038417d:	a0a220        	or	a10, a2, a10
40384180:	a0a074        	extui	a10, a10, 0, 8
40384183:	819cc4        	l32r	a8, 0x403753f4 (0x4203baec)
40384186:	e00800        	callx8	a8
40384189:	21d6c0        	l32r	a2, 0x403744e4
4038418c:	a802      	l32i.n	a10, a2, 0
4038418e:	819ac4        	l32r	a8, 0x403753f8 (0x40000960)
40384191:	e00800        	callx8	a8
40384194:	1df0      	retw.n
40384196:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40384199:	6100b2        	l32r	a6, 0x4037099c
4038419c:	a000b2        	mulsh	a0, a0, a10
4038419f:	6100b0        	l32r	a6, 0x403701a0
403841a2:	fb20      	addi.n	a2, a0, 15
403841a4:	ed0b      	mov.n	a14, a11
403841a6:	1c8d      	movi.n	a13, 24
403841a8:	cd0b      	mov.n	a12, a11
403841aa:	a2a0a3        	movi	a10, 163
403841ad:	6515f2        	call8	0x40376304
403841b0:	1c4a      	movi.n	a10, 20
403841b2:	810ac1        	l32r	a8, 0x403745dc
403841b5:	e00800        	callx8	a8
403841b8:	1df0      	retw.n
403841ba:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403841bd:	410081        	l32r	a4, 0x403645c0
403841c0:	8fc48022 	ee.vmulas.s8.accx.ld.ip.qup	q4, a8, 64, q7, q1, q0, q0
403841c4:	80f622        	orb	b15, b6, b8
403841c7:	0d          	.byte	0xd
403841c8:	b2a001        	movi	a11, 1
403841cb:	a2a004        	movi	a10, 4
403841ce:	2531f2        	call8	0x403764e0
403841d1:	0c02      	movi.n	a2, 0
403841d3:	271a02        	beq	a10, a2, 0x403841d9
403841d6:	22a105        	movi	a2, 0x105
403841d9:	1df0      	retw.n
403841db:	003641        	srli	a3, a0, 6
403841de:	00          	.byte	00
403841df:	8188c4        	l32r	a8, 0x40375400 (0xff37bfe9)
403841e2:	802280        	add	a2, a2, a8
403841e5:	f6220d        	bgeui	a2, 2, 0x403841f6
403841e8:	b2a001        	movi	a11, 1
403841eb:	a2a004        	movi	a10, 4
403841ee:	252ff2        	call8	0x403764e0
403841f1:	0c02      	movi.n	a2, 0
403841f3:	266a02        	beqi	a10, 6, 0x403841f9
403841f6:	22a105        	movi	a2, 0x105
403841f9:	1df0      	retw.n
403841fb:	003641        	srli	a3, a0, 6
403841fe:	00          	.byte	00
403841ff:	21b9c0        	l32r	a2, 0x403744e4
40384202:	3180c4        	l32r	a3, 0x40375404 (0x3fc98a08)
40384205:	2802      	l32i.n	a2, a2, 0
40384207:	5802      	l32i.n	a5, a2, 0
40384209:	0c02      	movi.n	a2, 0
4038420b:	420305        	l8ui	a4, a3, 5
4038420e:	820304        	l8ui	a8, a3, 4
40384211:	804411        	slli	a4, a4, 8
40384214:	804420        	or	a4, a4, a8
40384217:	820306        	l8ui	a8, a3, 6
4038421a:	008811        	slli	a8, a8, 16
4038421d:	404820        	or	a4, a8, a4
40384220:	820307        	l8ui	a8, a3, 7
40384223:	808801        	slli	a8, a8, 24
40384226:	408820        	or	a8, a8, a4
40384229:	560809        	bnez	a8, 0x403842bd
4038422c:	4177c4        	l32r	a4, 0x40375408 (0x3fca2a70)
4038422f:	3904      	s32i.n	a3, a4, 0
40384231:	56b20b        	bnez	a2, 0x403842f0
40384234:	820309        	l8ui	a8, a3, 9
40384237:	920308        	l8ui	a9, a3, 8
4038423a:	808811        	slli	a8, a8, 8
4038423d:	909820        	or	a9, a8, a9
40384240:	82030a        	l8ui	a8, a3, 10
40384243:	32030b        	l8ui	a3, a3, 11
40384246:	008811        	slli	a8, a8, 16
40384249:	908820        	or	a8, a8, a9
4038424c:	803301        	slli	a3, a3, 24
4038424f:	803320        	or	a3, a3, a8
40384252:	dd02      	mov.n	a13, a2
40384254:	cd02      	mov.n	a12, a2
40384256:	5c0b      	movi.n	a11, 80
40384258:	50a520        	or	a10, a5, a5
4038425b:	e00300        	callx8	a3
4038425e:	3d0a      	mov.n	a3, a10
40384260:	b63a02        	bltui	a10, 3, 0x40384266
40384263:	462300        	j	0x403842f4
40384266:	522400        	l32i	a5, a4, 0
40384269:	82050d        	l8ui	a8, a5, 13
4038426c:	22050c        	l8ui	a2, a5, 12
4038426f:	808811        	slli	a8, a8, 8
40384272:	208820        	or	a8, a8, a2
40384275:	22050e        	l8ui	a2, a5, 14
40384278:	002211        	slli	a2, a2, 16
4038427b:	808220        	or	a8, a2, a8
4038427e:	22050f        	l8ui	a2, a5, 15
40384281:	802201        	slli	a2, a2, 24
40384284:	802220        	or	a2, a2, a8
40384287:	e00200        	callx8	a2
4038428a:	4804      	l32i.n	a4, a4, 0
4038428c:	220411        	l8ui	a2, a4, 17
4038428f:	a20410        	l8ui	a10, a4, 16
40384292:	802211        	slli	a2, a2, 8
40384295:	a02220        	or	a2, a2, a10
40384298:	a20412        	l8ui	a10, a4, 18
4038429b:	00aa11        	slli	a10, a10, 16
4038429e:	202a20        	or	a2, a10, a2
403842a1:	a20413        	l8ui	a10, a4, 19
403842a4:	80aa01        	slli	a10, a10, 24
403842a7:	20aa20        	or	a10, a10, a2
403842aa:	e00a00        	callx8	a10
403842ad:	2d0a      	mov.n	a2, a10
403842af:	acea      	beqz.n	a10, 0x403842e1
403842b1:	2174c0        	l32r	a2, 0x40374484
403842b4:	2802      	l32i.n	a2, a2, 0
403842b6:	dc32      	bnez.n	a2, 0x403842cd
403842b8:	7cf2      	movi.n	a2, -1
403842ba:	860c00        	j	0x403842f0
403842bd:	ad05      	mov.n	a10, a5
403842bf:	e00800        	callx8	a8
403842c2:	2d0a      	mov.n	a2, a10
403842c4:	164af6        	beqz	a10, 0x4038422c
403842c7:	32c318        	addi	a3, a3, 24
403842ca:	46cfff        	j	0x4038420b
403842cd:	a55bfe        	call8	0x40382888
403842d0:	bd0a      	mov.n	a11, a10
403842d2:	c14ec4        	l32r	a12, 0x4037540c (0x3fc98950)
403842d5:	a14ec4        	l32r	a10, 0x40375410 (0x3fc9895a)
403842d8:	8171c0        	l32r	a8, 0x4037449c
403842db:	e00800        	callx8	a8
403842de:	86f5ff        	j	0x403842b8
403842e1:	0b33      	addi.n	a3, a3, -1
403842e3:	0c14      	movi.n	a4, 1
403842e5:	304a93        	movnez	a4, a10, a3
403842e8:	3d04      	mov.n	a3, a4
403842ea:	414ac4        	l32r	a4, 0x40375414 (0x3fca2a6c)
403842ed:	324400        	s8i	a3, a4, 0
403842f0:	1df0      	retw.n
403842f2:	000066        	ee.ldf.64.xp	f0, f6, a0, a0
403842f5:	4af8      	add.n	a15, a8, a4
403842f7:	2163c0        	l32r	a2, 0x40374484
403842fa:	2802      	l32i.n	a2, a2, 0
403842fc:	1682fb        	beqz	a2, 0x403842b8
403842ff:	a558fe        	call8	0x40382888
40384302:	bd0a      	mov.n	a11, a10
40384304:	c142c4        	l32r	a12, 0x4037540c (0x3fc98950)
40384307:	a144c4        	l32r	a10, 0x40375418 (0x3fc989a4)
4038430a:	86f2ff        	j	0x403842d8
4038430d:	000000        	ill
40384310:	364100        	entry	a1, 32
40384313:	5c08      	movi.n	a8, 80
40384315:	0c32      	movi.n	a2, 3
40384317:	37b801        	bgeu	a8, a3, 0x4038431c
4038431a:	0c02      	movi.n	a2, 0
4038431c:	1df0      	retw.n
4038431e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40384321:	410082        	l32r	a4, 0x40364b24
40384324:	a0          	.byte	0xa0
40384325:	670c32        	bnone	a12, a6, 0x4038435b
40384328:	37b801        	bgeu	a8, a3, 0x4038432d
4038432b:	0c12      	movi.n	a2, 1
4038432d:	1df0      	retw.n
4038432f:	003641        	srli	a3, a0, 6
40384332:	00          	.byte	00
40384333:	0c88      	movi.n	a8, 8
40384335:	0ca9      	movi.n	a9, 10
40384337:	824200        	s8i	a8, a2, 0
4038433a:	824201        	s8i	a8, a2, 1
4038433d:	924202        	s8i	a9, a2, 2
40384340:	824203        	s8i	a8, a2, 3
40384343:	824204        	s8i	a8, a2, 4
40384346:	1df0      	retw.n
40384348:	364100        	entry	a1, 32
4038434b:	82a067        	movi	a8, 103
4038434e:	0c32      	movi.n	a2, 3
40384350:	37b801        	bgeu	a8, a3, 0x40384355
40384353:	0c22      	movi.n	a2, 2
40384355:	1df0      	retw.n
40384357:	003641        	srli	a3, a0, 6
4038435a:	000c48        	ssx	f0, a12, a0
4038435d:	824200        	s8i	a8, a2, 0
40384360:	0c69      	movi.n	a9, 6
40384362:	0c88      	movi.n	a8, 8
40384364:	824201        	s8i	a8, a2, 1
40384367:	924202        	s8i	a9, a2, 2
4038436a:	824203        	s8i	a8, a2, 3
4038436d:	824204        	s8i	a8, a2, 4
40384370:	1df0      	retw.n
40384372:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40384375:	4100b2        	l32r	a4, 0x40370b78
40384378:	a0          	.byte	0xa0
40384379:	00          	.byte	00
4038437a:	ad0b      	mov.n	a10, a11
4038437c:	250a00        	call8	0x40384420
4038437f:	202074        	extui	a2, a2, 0, 8
40384382:	0c4b      	movi.n	a11, 4
40384384:	0c0a      	movi.n	a10, 0
40384386:	250d00        	call8	0x40384458
40384389:	8c52      	beqz.n	a2, 0x40384392
4038438b:	0c4b      	movi.n	a11, 4
4038438d:	0c1a      	movi.n	a10, 1
4038438f:	a50c00        	call8	0x40384458
40384392:	b2a004        	movi	a11, 4
40384395:	a2a000        	movi	a10, 0
40384398:	651000        	call8	0x403844a0
4038439b:	900000        	retw
4038439e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403843a1:	410025        	l32r	a4, 0x4034d7a4
403843a4:	1300a0        	lsi	f1, a0, 0x280
403843a7:	ba20      	add.n	a2, a0, a11
403843a9:	a2a000        	movi	a10, 0
403843ac:	250700        	call8	0x40384420
403843af:	202074        	extui	a2, a2, 0, 8
403843b2:	0c1b      	movi.n	a11, 1
403843b4:	0c0a      	movi.n	a10, 0
403843b6:	250a00        	call8	0x40384458
403843b9:	8c52      	beqz.n	a2, 0x403843c2
403843bb:	0c1b      	movi.n	a11, 1
403843bd:	ad0b      	mov.n	a10, a11
403843bf:	a50900        	call8	0x40384458
403843c2:	b2a001        	movi	a11, 1
403843c5:	a2a000        	movi	a10, 0
403843c8:	650d00        	call8	0x403844a0
403843cb:	900000        	retw
403843ce:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403843d1:	41000c        	l32r	a4, 0x403473d4
403843d4:	1a81      	add.n	a8, a1, a1
403843d6:	11c4e0        	l32r	a1, 0x4037c6e8 (0x400e2242)
403843d9:	0800      	l32i.n	a0, a0, 0
403843db:	202074        	extui	a2, a2, 0, 8
403843de:	a2a001        	movi	a10, 1
403843e1:	810fc4        	l32r	a8, 0x40375420 (0x400018fc)
403843e4:	e00800        	callx8	a8
403843e7:	163201        	beqz	a2, 0x403843fe
403843ea:	a2a000        	movi	a10, 0
403843ed:	65f8ff        	call8	0x40384374
403843f0:	810dc4        	l32r	a8, 0x40375424 (0x40001908)
403843f3:	e00800        	callx8	a8
403843f6:	810cc4        	l32r	a8, 0x40375428 (0x400018f0)
403843f9:	e00800        	callx8	a8
403843fc:	1df0      	retw.n
403843fe:	ad02      	mov.n	a10, a2
40384400:	e5f9ff        	call8	0x403843a0
40384403:	46faff        	j	0x403843f0
40384406:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40384409:	410025        	l32r	a4, 0x4034d80c
4038440c:	4cfe      	movi.n	a14, 79
4038440e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40384411:	41001d        	l32r	a4, 0x4034b814
40384414:	f00000        	callx12	a0
40384417:	003641        	srli	a3, a0, 6
4038441a:	000c02        	andb	b0, b12, b0
4038441d:	1df0      	retw.n
4038441f:	003641        	srli	a3, a0, 6
40384422:	002020        	or	a2, a0, a0
40384425:	74          	.byte	0x74
40384426:	26130b        	beqi	a3, 1, 0x40384435
40384429:	168300        	beqz	a3, 0x40384435
4038442c:	262305        	beqi	a3, 2, 0x40384435
4038442f:	263302        	beqi	a3, 3, 0x40384435
40384432:	a549fe        	call8	0x403828cc
40384435:	81fdc3        	l32r	a8, 0x4037542c (0x60003)
40384438:	92a0ec        	movi	a9, 236
4038443b:	2088c0        	sub	a8, a8, a2
4038443e:	408811        	slli	a8, a8, 12
40384441:	9a88      	add.n	a8, a8, a9
40384443:	c02000        	memw
40384446:	9808      	l32i.n	a9, a8, 0
40384448:	7cca      	movi.n	a10, -4
4038444a:	a09910        	and	a9, a9, a10
4038444d:	309920        	or	a9, a9, a3
40384450:	c02000        	memw
40384453:	9908      	s32i.n	a9, a8, 0
40384455:	1df0      	retw.n
40384457:	003641        	srli	a3, a0, 6
4038445a:	002020        	or	a2, a0, a0
4038445d:	74ccf3        	ee.vld.128.ip	q7, a7, 0xfffffcc0
40384460:	d1f4c3        	l32r	a13, 0x40375430 (0x3fc98a68)
40384463:	c1f4c3        	l32r	a12, 0x40375434 (0x3fc98aaa)
40384466:	a1f4c3        	l32r	a10, 0x40375438 (0x3fc98a96)
40384469:	5c2b      	movi.n	a11, 82
4038446b:	101120        	or	a1, a1, a1
4038446e:	254ffe        	call8	0x40382960
40384471:	81eec3        	l32r	a8, 0x4037542c (0x60003)
40384474:	2028c0        	sub	a2, a8, a2
40384477:	402211        	slli	a2, a2, 12
4038447a:	66130a        	bnei	a3, 1, 0x40384488
4038447d:	3113c0        	l32r	a3, 0x403744cc
40384480:	c02000        	memw
40384483:	3952      	s32i.n	a3, a2, 20
40384485:	1df0      	retw.n
40384487:	000b93        	movnez	a0, a11, a0
4038448a:	303141        	srli	a3, a3, 1
4038448d:	0b33      	addi.n	a3, a3, -1
4038448f:	008911        	slli	a8, a9, 16
40384492:	803311        	slli	a3, a3, 8
40384495:	908820        	or	a8, a8, a9
40384498:	803320        	or	a3, a3, a8
4038449b:	46f8ff        	j	0x40384480
4038449e:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
403844a1:	410081        	l32r	a4, 0x403648a4
403844a4:	e2c320        	addi	a14, a3, 32
403844a7:	207420        	or	a7, a4, a2
403844aa:	28c0      	l32i.n	a2, a0, 48
403844ac:	402211        	slli	a2, a2, 12
403844af:	66130a        	bnei	a3, 1, 0x403844bd
403844b2:	3106c0        	l32r	a3, 0x403744cc
403844b5:	c02000        	memw
403844b8:	326214        	s32i	a3, a2, 80
403844bb:	1df0      	retw.n
403844bd:	0b93      	addi.n	a9, a3, -1
403844bf:	303141        	srli	a3, a3, 1
403844c2:	0b33      	addi.n	a3, a3, -1
403844c4:	008911        	slli	a8, a9, 16
403844c7:	803311        	slli	a3, a3, 8
403844ca:	908820        	or	a8, a8, a9
403844cd:	803320        	or	a3, a3, a8
403844d0:	46f8ff        	j	0x403844b5
403844d3:	003641        	srli	a3, a0, 6
403844d6:	000c02        	andb	b0, b12, b0
403844d9:	1df0      	retw.n
403844db:	002048        	ssx	f2, a0, a0
403844de:	03          	.byte	0x3
403844df:	1b22      	addi.n	a2, a2, 1
403844e1:	000240        	ssr	a2
403844e4:	304903        	rsr.windowstart	a3
403844e7:	302091        	srl	a2, a3
403844ea:	0033a1        	sll	a3, a3
403844ed:	d6f30b        	bgez	a3, 0x403845b0
403844f0:	3030f5        	extui	a3, a3, 16, 16
403844f3:	302220        	or	a2, a2, a3
403844f6:	203060        	neg	a3, a2
403844f9:	203310        	and	a3, a3, a2
403844fc:	30f340        	nsau	a3, a3
403844ff:	001340        	ssl	a3
40384502:	202091        	srl	a2, a2
40384505:	204913        	wsr.windowstart	a2
40384508:	204803        	rsr.windowbase	a2
4038450b:	22c21f        	addi	a2, a2, 31
4038450e:	3032c0        	sub	a3, a2, a3
40384511:	304813        	wsr.windowbase	a3
40384514:	102000        	rsync
40384517:	204903        	rsr.windowstart	a2
4038451a:	16a207        	beqz	a2, 0x40384598
4038451d:	07e208        	bbsi	a2, 0, 0x40384529
40384520:	17e219        	bbsi	a2, 1, 0x4038453d
40384523:	27e23a        	bbsi	a2, 2, 0x40384561
40384526:	062300        	j	0x403845b6
40384529:	32c9f0        	addi	a3, a9, -16
4038452c:	4903      	s32i.n	a4, a3, 0
4038452e:	5913      	s32i.n	a5, a3, 4
40384530:	6923      	s32i.n	a6, a3, 8
40384532:	7933      	s32i.n	a7, a3, 12
40384534:	206141        	srli	a6, a2, 1
40384537:	108040        	rotw	1
4038453a:	06f7ff        	j	0x4038451a
4038453d:	32cdf0        	addi	a3, a13, -16
40384540:	4903      	s32i.n	a4, a3, 0
40384542:	5913      	s32i.n	a5, a3, 4
40384544:	6923      	s32i.n	a6, a3, 8
40384546:	7933      	s32i.n	a7, a3, 12
40384548:	32c5f4        	addi	a3, a5, -12
4038454b:	3803      	l32i.n	a3, a3, 0
4038454d:	32c3e0        	addi	a3, a3, -32
40384550:	8903      	s32i.n	a8, a3, 0
40384552:	9913      	s32i.n	a9, a3, 4
40384554:	a923      	s32i.n	a10, a3, 8
40384556:	b933      	s32i.n	a11, a3, 12
40384558:	20a241        	srli	a10, a2, 2
4038455b:	208040        	rotw	2
4038455e:	06eeff        	j	0x4038451a
40384561:	108040        	rotw	1
40384564:	d2cdf0        	addi	a13, a13, -16
40384567:	090d      	s32i.n	a0, a13, 0
40384569:	191d      	s32i.n	a1, a13, 4
4038456b:	292d      	s32i.n	a2, a13, 8
4038456d:	393d      	s32i.n	a3, a13, 12
4038456f:	32c1f4        	addi	a3, a1, -12
40384572:	3803      	l32i.n	a3, a3, 0
40384574:	d2cd10        	addi	a13, a13, 16
40384577:	32c3d0        	addi	a3, a3, -48
4038457a:	4903      	s32i.n	a4, a3, 0
4038457c:	5913      	s32i.n	a5, a3, 4
4038457e:	6923      	s32i.n	a6, a3, 8
40384580:	7933      	s32i.n	a7, a3, 12
40384582:	8943      	s32i.n	a8, a3, 16
40384584:	9953      	s32i.n	a9, a3, 20
40384586:	a963      	s32i.n	a10, a3, 24
40384588:	b973      	s32i.n	a11, a3, 28
4038458a:	f08040        	rotw	-1
4038458d:	20e341        	srli	a14, a2, 3
40384590:	308040        	rotw	3
40384593:	c6e0ff        	j	0x4038451a
40384596:	000010        	and	a0, a0, a0
40384599:	804020        	or	a4, a0, a8
4038459c:	4803      	l32i.n	a4, a3, 0
4038459e:	001240        	ssl	a2
403845a1:	0c12      	movi.n	a2, 1
403845a3:	0022a1        	sll	a2, a2
403845a6:	204913        	wsr.windowstart	a2
403845a9:	102000        	rsync
403845ac:	0c02      	movi.n	a2, 0
403845ae:	0df0      	ret.n
403845b0:	0c12      	movi.n	a2, 1
403845b2:	0df0      	ret.n
403845b4:	0000f0        	subx8	a0, a0, a0
403845b7:	22111b        	l16ui	a2, a1, 54
403845ba:	22          	.byte	0x22
403845bb:	304803        	rsr.windowbase	a3
403845be:	f7e20a        	bbsi	a2, 15, 0x403845cc
403845c1:	0b33      	addi.n	a3, a3, -1
403845c3:	f02211        	slli	a2, a2, 1
403845c6:	f762f7        	bbci	a2, 15, 0x403845c1
403845c9:	303034        	extui	a3, a3, 0, 4
403845cc:	001340        	ssl	a3
403845cf:	003211        	slli	a3, a2, 16
403845d2:	302281        	src	a2, a2, a3
403845d5:	2020f4        	extui	a2, a2, 0, 16
403845d8:	204913        	wsr.windowstart	a2
403845db:	300303        	rsr.sar	a3
403845de:	2c02      	movi.n	a2, 32
403845e0:	3032c0        	sub	a3, a2, a3
403845e3:	304813        	wsr.windowbase	a3
403845e6:	102000        	rsync
403845e9:	0c22      	movi.n	a2, 2
403845eb:	0df0      	ret.n
403845ed:	000000        	ill
403845f0:	362100        	entry	a1, 16
403845f3:	611cc2        	l32r	a6, 0x40374e64
403845f6:	50e603        	rsr.ps	a5
403845f9:	4d00      	mov.n	a4, a0
403845fb:	602510        	and	a2, a5, a6
403845fe:	3b22      	addi.n	a2, a2, 3
40384600:	20e613        	wsr.ps	a2
40384603:	102000        	rsync
40384606:	45edff        	call0	0x403844dc
40384609:	0d04      	mov.n	a0, a4
4038460b:	50e613        	wsr.ps	a5
4038460e:	102000        	rsync
40384611:	1df0      	retw.n
40384613:	003802        	andb	b3, b8, b0
40384616:	30e7f3        	wur.threadptr	a3
40384619:	3812      	l32i.n	a3, a2, 4
4038461b:	301013        	wsr.acclo	a3
4038461e:	3822      	l32i.n	a3, a2, 8
40384620:	301113        	wsr.acchi	a3
40384623:	3832      	l32i.n	a3, a2, 12
40384625:	300413        	wsr.br	a3
40384628:	3842      	l32i.n	a3, a2, 16
4038462a:	300c13        	wsr.scompare1	a3
4038462d:	3852      	l32i.n	a3, a2, 20
4038462f:	302013        	wsr.m0	a3
40384632:	3862      	l32i.n	a3, a2, 24
40384634:	302113        	wsr.m1	a3
40384637:	3872      	l32i.n	a3, a2, 28
40384639:	302213        	wsr.m2	a3
4038463c:	3882      	l32i.n	a3, a2, 32
4038463e:	302313        	wsr.m3	a3
40384641:	0df0      	ret.n
40384643:	00          	.byte	00
40384644:	703ee3        	rur.threadptr	a3
40384647:	3902      	s32i.n	a3, a2, 0
40384649:	301003        	rsr.acclo	a3
4038464c:	3912      	s32i.n	a3, a2, 4
4038464e:	301103        	rsr.acchi	a3
40384651:	3922      	s32i.n	a3, a2, 8
40384653:	300403        	rsr.br	a3
40384656:	3932      	s32i.n	a3, a2, 12
40384658:	300c03        	rsr.scompare1	a3
4038465b:	3942      	s32i.n	a3, a2, 16
4038465d:	302003        	rsr.m0	a3
40384660:	3952      	s32i.n	a3, a2, 20
40384662:	302103        	rsr.m1	a3
40384665:	3962      	s32i.n	a3, a2, 24
40384667:	302203        	rsr.m2	a3
4038466a:	3972      	s32i.n	a3, a2, 28
4038466c:	302303        	rsr.m3	a3
4038466f:	3982      	s32i.n	a3, a2, 32
40384671:	0df0      	ret.n
40384673:	003621        	srai	a3, a0, 6
40384676:	000c03        	rsr.scompare1	a0
40384679:	30e461        	xsr.intenable	a3
4038467c:	102000        	rsync
4038467f:	202320        	or	a2, a3, a2
40384682:	20e413        	wsr.intenable	a2
40384685:	102000        	rsync
40384688:	2d03      	mov.n	a2, a3
4038468a:	1df0      	retw.n
4038468c:	362100        	entry	a1, 16
4038468f:	0c04      	movi.n	a4, 0
40384691:	40e461        	xsr.intenable	a4
40384694:	102000        	rsync
40384697:	203420        	or	a3, a4, a2
4038469a:	203330        	xor	a3, a3, a2
4038469d:	30e413        	wsr.intenable	a3
403846a0:	102000        	rsync
403846a3:	2d04      	mov.n	a2, a4
403846a5:	1df0      	retw.n
	...
