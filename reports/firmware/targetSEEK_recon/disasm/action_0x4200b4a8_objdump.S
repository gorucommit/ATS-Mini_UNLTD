
reports/firmware/targetSEEK_recon/segments/seg3_0x42000020.bin:     file format binary


Disassembly of section .data:

4200b4a8 <.data+0xb488>:
4200b4a8:	36a101        	entry	a1, 208
4200b4ab:	31f8d2        	l32r	a3, 0x4200008c (0x3fca2abc)
4200b4ae:	c02000        	memw
4200b4b1:	222300        	l32i	a2, a3, 0
4200b4b4:	c02000        	memw
4200b4b7:	22612b        	s32i	a2, a1, 172
4200b4ba:	101120        	or	a1, a1, a1
4200b4bd:	e5f4f7        	call8	0x4200340c
4200b4c0:	161a20        	beqz	a10, 0x4200b6c5
4200b4c3:	3126d5        	l32r	a3, 0x4200095c (0x3c06069f)
4200b4c6:	a2c12c        	addi	a10, a1, 44
4200b4c9:	bd03      	mov.n	a11, a3
4200b4cb:	101120        	or	a1, a1, a1
4200b4ce:	e5a812        	call8	0x4201df5c
4200b4d1:	2112d5        	l32r	a2, 0x4200091c (0x3fca1e64)
4200b4d4:	b2c12c        	addi	a11, a1, 44
4200b4d7:	ad02      	mov.n	a10, a2
4200b4d9:	42af7c        	movi	a4, -132
4200b4dc:	101120        	or	a1, a1, a1
4200b4df:	255d08        	call8	0x42013ab0
4200b4e2:	a2c12c        	addi	a10, a1, 44
4200b4e5:	101120        	or	a1, a1, a1
4200b4e8:	a58d12        	call8	0x4201ddc4
4200b4eb:	bd03      	mov.n	a11, a3
4200b4ed:	a2c12c        	addi	a10, a1, 44
4200b4f0:	101120        	or	a1, a1, a1
4200b4f3:	a5a612        	call8	0x4201df5c
4200b4f6:	d10ad5        	l32r	a13, 0x42000920 (0x3c06129a)
4200b4f9:	0c1e      	movi.n	a14, 1
4200b4fb:	c2c12c        	addi	a12, a1, 44
4200b4fe:	bd02      	mov.n	a11, a2
4200b500:	a2c114        	addi	a10, a1, 20
4200b503:	101120        	or	a1, a1, a1
4200b506:	256208        	call8	0x42013b28
4200b509:	92a0b0        	movi	a9, 176
4200b50c:	109980        	add	a9, a9, a1
4200b50f:	40a980        	add	a10, a9, a4
4200b512:	101120        	or	a1, a1, a1
4200b515:	e58a12        	call8	0x4201ddc4
4200b518:	101120        	or	a1, a1, a1
4200b51b:	e54411        	call8	0x4201c968
4200b51e:	2d0a      	mov.n	a2, a10
4200b520:	101120        	or	a1, a1, a1
4200b523:	e54611        	call8	0x4201c990
4200b526:	3d0a      	mov.n	a3, a10
4200b528:	101120        	or	a1, a1, a1
4200b52b:	a54711        	call8	0x4201c9a4
4200b52e:	4d0a      	mov.n	a4, a10
4200b530:	101120        	or	a1, a1, a1
4200b533:	a53f11        	call8	0x4201c92c
4200b536:	5d0a      	mov.n	a5, a10
4200b538:	101120        	or	a1, a1, a1
4200b53b:	654011        	call8	0x4201c940
4200b53e:	b108d5        	l32r	a11, 0x42000960 (0x3c0606a8)
4200b541:	a901      	s32i.n	a10, a1, 0
4200b543:	cd02      	mov.n	a12, a2
4200b545:	fd05      	mov.n	a15, a5
4200b547:	ed04      	mov.n	a14, a4
4200b549:	30d320        	or	a13, a3, a3
4200b54c:	a2c12c        	addi	a10, a1, 44
4200b54f:	101120        	or	a1, a1, a1
4200b552:	25af3a        	call8	0x42046044
4200b555:	22a0b0        	movi	a2, 176
4200b558:	a2af64        	movi	a10, -156
4200b55b:	1a22      	add.n	a2, a2, a1
4200b55d:	b2c12c        	addi	a11, a1, 44
4200b560:	aaa2      	add.n	a10, a2, a10
4200b562:	101120        	or	a1, a1, a1
4200b565:	25eb11        	call8	0x4201d418
4200b568:	21d0d2        	l32r	a2, 0x420000a8 (0x3fc9bf83)
4200b56b:	320200        	l8ui	a3, a2, 0
4200b56e:	26334b        	beqi	a3, 3, 0x4200b5bd
4200b571:	4116d4        	l32r	a4, 0x420005cc (0x3fc9bacc)
4200b574:	21c9d2        	l32r	a2, 0x42000098 (0x3fc94784)
4200b577:	51fbd4        	l32r	a5, 0x42000964 (0x3c0606cf)
4200b57a:	0c03      	movi.n	a3, 0
4200b57c:	62af64        	movi	a6, -156
4200b57f:	101120        	or	a1, a1, a1
4200b582:	a5e8f7        	call8	0x4200340c
4200b585:	a72302        	blt	a3, a10, 0x4200b58b
4200b588:	864600        	j	0x4200b6a6
4200b58b:	729202        	l16si	a7, a2, 4
4200b58e:	f21200        	l16ui	a15, a2, 0
4200b591:	d21405        	l16ui	a13, a4, 10
4200b594:	1b33      	addi.n	a3, a3, 1
4200b596:	bd05      	mov.n	a11, a5
4200b598:	7901      	s32i.n	a7, a1, 0
4200b59a:	ed04      	mov.n	a14, a4
4200b59c:	30c320        	or	a12, a3, a3
4200b59f:	a2c12c        	addi	a10, a1, 44
4200b5a2:	101120        	or	a1, a1, a1
4200b5a5:	e5a93a        	call8	0x42046044
4200b5a8:	82a0b0        	movi	a8, 176
4200b5ab:	1a88      	add.n	a8, a8, a1
4200b5ad:	b2c12c        	addi	a11, a1, 44
4200b5b0:	6aa8      	add.n	a10, a8, a6
4200b5b2:	101120        	or	a1, a1, a1
4200b5b5:	25e611        	call8	0x4201d418
4200b5b8:	c63800        	j	0x4200b69f
4200b5bb:	000031        	srai	a0, a0, 16
4200b5be:	d4          	.byte	0xd4
4200b5bf:	d3          	.byte	0xd3
4200b5c0:	61b6d2        	l32r	a6, 0x42000098 (0x3fc94784)
4200b5c3:	422300        	l32i	a4, a3, 0
4200b5c6:	52a000        	movi	a5, 0
4200b5c9:	568407        	bnez	a4, 0x4200b645
4200b5cc:	51b3d2        	l32r	a5, 0x42000098 (0x3fc94784)
4200b5cf:	101120        	or	a1, a1, a1
4200b5d2:	a5e3f7        	call8	0x4200340c
4200b5d5:	a7a498        	bge	a4, a10, 0x4200b571
4200b5d8:	f03411        	slli	a3, a4, 1
4200b5db:	4a33      	add.n	a3, a3, a4
4200b5dd:	81fbd3        	l32r	a8, 0x420005cc (0x3fc9bacc)
4200b5e0:	21cfd3        	l32r	a2, 0x4200051c (0x3c061864)
4200b5e3:	9155d4        	l32r	a9, 0x42000738 (0xf28)
4200b5e6:	e03311        	slli	a3, a3, 2
4200b5e9:	71bad2        	l32r	a7, 0x420000d4 (0x10624dd3)
4200b5ec:	8a33      	add.n	a3, a3, a8
4200b5ee:	9a62      	add.n	a6, a2, a9
4200b5f0:	101120        	or	a1, a1, a1
4200b5f3:	a5eaf7        	call8	0x4200349c
4200b5f6:	b802      	l32i.n	a11, a2, 0
4200b5f8:	c21500        	l16ui	a12, a5, 0
4200b5fb:	ac6a      	beqz.n	a10, 0x4200b625
4200b5fd:	a29502        	l16si	a10, a5, 4
4200b600:	708ab2        	mulsh	a8, a10, a7
4200b603:	a0af31        	srai	a10, a10, 31
4200b606:	808621        	srai	a8, a8, 6
4200b609:	a088c0        	sub	a8, a8, a10
4200b60c:	808823        	sext	a8, a8, 15
4200b60f:	ca88      	add.n	a8, a8, a12
4200b611:	b79813        	bne	a8, a11, 0x4200b628
4200b614:	b812      	l32i.n	a11, a2, 4
4200b616:	0c8c      	movi.n	a12, 8
4200b618:	ad03      	mov.n	a10, a3
4200b61a:	81e7d2        	l32r	a8, 0x420001b8 (0x40001224)
4200b61d:	e00800        	callx8	a8
4200b620:	060100        	j	0x4200b628
4200b623:	0000c7        	ee.stf.64.xp	f0, f12, a0, a0
4200b626:	1beb      	addi.n	a14, a11, 1
4200b628:	8b22      	addi.n	a2, a2, 8
4200b62a:	2796c2        	bne	a6, a2, 0x4200b5f0
4200b62d:	1b44      	addi.n	a4, a4, 1
4200b62f:	6b55      	addi.n	a5, a5, 6
4200b631:	86e6ff        	j	0x4200b5cf
4200b634:	00c71b        	un.s	b12, f7, f0
4200b637:	551b77        	call4	0x420827ec
4200b63a:	22c218        	addi	a2, a2, 24
4200b63d:	860800        	j	0x4200b663
4200b640:	001b55        	extui	a1, a0, 27, 6
4200b643:	6b66      	addi.n	a6, a6, 6
4200b645:	101120        	or	a1, a1, a1
4200b648:	25dcf7        	call8	0x4200340c
4200b64b:	a72502        	blt	a5, a10, 0x4200b651
4200b64e:	c6c7ff        	j	0x4200b571
4200b651:	f03511        	slli	a3, a5, 1
4200b654:	21ded3        	l32r	a2, 0x420005cc (0x3fc9bacc)
4200b657:	5a33      	add.n	a3, a3, a5
4200b659:	e03311        	slli	a3, a3, 2
4200b65c:	2a33      	add.n	a3, a3, a2
4200b65e:	21add3        	l32r	a2, 0x42000514 (0x3fc9bfec)
4200b661:	0c07      	movi.n	a7, 0
4200b663:	47a7da        	bge	a7, a4, 0x4200b641
4200b666:	101120        	or	a1, a1, a1
4200b669:	25e3f7        	call8	0x4200349c
4200b66c:	b802      	l32i.n	a11, a2, 0
4200b66e:	c21600        	l16ui	a12, a6, 0
4200b671:	160afc        	beqz	a10, 0x4200b635
4200b674:	a29602        	l16si	a10, a6, 4
4200b677:	9197d2        	l32r	a9, 0x420000d4 (0x10624dd3)
4200b67a:	908ab2        	mulsh	a8, a10, a9
4200b67d:	a0af31        	srai	a10, a10, 31
4200b680:	808621        	srai	a8, a8, 6
4200b683:	a088c0        	sub	a8, a8, a10
4200b686:	808823        	sext	a8, a8, 15
4200b689:	ca88      	add.n	a8, a8, a12
4200b68b:	b798a9        	bne	a8, a11, 0x4200b638
4200b68e:	0c8c      	movi.n	a12, 8
4200b690:	b2c204        	addi	a11, a2, 4
4200b693:	30a320        	or	a10, a3, a3
4200b696:	81c8d2        	l32r	a8, 0x420001b8 (0x40001224)
4200b699:	e00800        	callx8	a8
4200b69c:	06e6ff        	j	0x4200b638
4200b69f:	cb44      	addi.n	a4, a4, 12
4200b6a1:	6b22      	addi.n	a2, a2, 6
4200b6a3:	06b6ff        	j	0x4200b57f
4200b6a6:	92a0b0        	movi	a9, 176
4200b6a9:	22af64        	movi	a2, -156
4200b6ac:	109980        	add	a9, a9, a1
4200b6af:	20a980        	add	a10, a9, a2
4200b6b2:	101120        	or	a1, a1, a1
4200b6b5:	254908        	call8	0x42013b48
4200b6b8:	32a0b0        	movi	a3, 176
4200b6bb:	1a33      	add.n	a3, a3, a1
4200b6bd:	2aa3      	add.n	a10, a3, a2
4200b6bf:	101120        	or	a1, a1, a1
4200b6c2:	e56fff        	call8	0x4200adc0
4200b6c5:	4171d2        	l32r	a4, 0x4200008c (0x3fca2abc)
4200b6c8:	c02000        	memw
4200b6cb:	32212b        	l32i	a3, a1, 172
4200b6ce:	c02000        	memw
4200b6d1:	2804      	l32i.n	a2, a4, 0
4200b6d3:	271339        	beq	a3, a2, 0x4200b710
4200b6d6:	816ed2        	l32r	a8, 0x42000090 (0x40377780)
4200b6d9:	e00800        	callx8	a8
4200b6dc:	82a0b0        	movi	a8, 176
4200b6df:	1a88      	add.n	a8, a8, a1
4200b6e1:	4aa8      	add.n	a10, a8, a4
4200b6e3:	101120        	or	a1, a1, a1
4200b6e6:	e56d12        	call8	0x4201ddc4
4200b6e9:	ad02      	mov.n	a10, a2
4200b6eb:	101120        	or	a1, a1, a1
4200b6ee:	255235        	call8	0x42040c10
4200b6f1:	92a0b0        	movi	a9, 176
4200b6f4:	1a99      	add.n	a9, a9, a1
4200b6f6:	4aa9      	add.n	a10, a9, a4
4200b6f8:	c6f9ff        	j	0x4200b6e3
4200b6fb:	0032a0        	addx4	a3, a2, a0
4200b6fe:	b01a33        	clamps	a1, a10, 18
4200b701:	a2af64        	movi	a10, -156
4200b704:	aaa3      	add.n	a10, a3, a10
4200b706:	101120        	or	a1, a1, a1
4200b709:	656bff        	call8	0x4200adc0
4200b70c:	46f6ff        	j	0x4200b6e9
4200b70f:	001df0        	subx8	a1, a13, a0
4200b712:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4200b715:	a10021        	l32r	a10, 0x41fd3b18
4200b718:	5d          	.byte	0x5d
4200b719:	d2          	.byte	0xd2
4200b71a:	3193d4        	l32r	a3, 0x42000968 (0x3c0606e5)
4200b71d:	c02000        	memw
4200b720:	222200        	l32i	a2, a2, 0
4200b723:	30b320        	or	a11, a3, a3
4200b726:	a2c11c        	addi	a10, a1, 28
4200b729:	c02000        	memw
4200b72c:	22610b        	s32i	a2, a1, 44
4200b72f:	101120        	or	a1, a1, a1
4200b732:	a58212        	call8	0x4201df5c
4200b735:	2179d4        	l32r	a2, 0x4200091c (0x3fca1e64)
4200b738:	b2c11c        	addi	a11, a1, 28
4200b73b:	20a220        	or	a10, a2, a2
4200b73e:	101120        	or	a1, a1, a1
4200b741:	e53608        	call8	0x42013ab0
4200b744:	a2c11c        	addi	a10, a1, 28
4200b747:	101120        	or	a1, a1, a1
4200b74a:	a56712        	call8	0x4201ddc4
4200b74d:	30b320        	or	a11, a3, a3
4200b750:	a2c11c        	addi	a10, a1, 28
4200b753:	101120        	or	a1, a1, a1
4200b756:	658012        	call8	0x4201df5c
4200b759:	d171d4        	l32r	a13, 0x42000920 (0x3c06129a)
4200b75c:	0c1e      	movi.n	a14, 1
4200b75e:	c2c11c        	addi	a12, a1, 28
4200b761:	bd02      	mov.n	a11, a2
4200b763:	a2c104        	addi	a10, a1, 4
4200b766:	101120        	or	a1, a1, a1
4200b769:	e53b08        	call8	0x42013b28
4200b76c:	a2c11c        	addi	a10, a1, 28
4200b76f:	101120        	or	a1, a1, a1
4200b772:	256512        	call8	0x4201ddc4
4200b775:	b17dd4        	l32r	a11, 0x4200096c (0x3c0606f3)
4200b778:	a2c104        	addi	a10, a1, 4
4200b77b:	101120        	or	a1, a1, a1
4200b77e:	        	call8	0x4201d418
