
/Users/beegee/Documents/ats mini/ats-mini-UNLTD/reports/firmware/targetSEEK_recon/segments/seg2_0x40374000.bin:     file format binary


Disassembly of section .data:

40374000 <.data>:
40374000:	00c549        	s32e	a0, a5, -16
40374003:	10d549        	s32e	a1, a5, -12
40374006:	20e549        	s32e	a2, a5, -8
40374009:	30f549        	s32e	a3, a5, -4
4037400c:	003400        	rfwo
	...
4037403f:	0000c5        	extui	a0, a0, 16, 13
40374042:	0910      	s32i.n	a0, a0, 4
40374044:	d50920        	call4	0x403940e4
40374047:	e50930        	call8	0x403a40e4
4037404a:	f50900        	call12	0x403740e8
4037404d:	350000        	call12	0x40374050
40374050:	004803        	rsr.windowbase	a0
40374053:	f08040        	rotw	-1
40374056:	20e603        	rsr.ps	a2
40374059:	203834        	extui	a3, a2, 8, 4
4037405c:	403330        	xor	a3, a3, a4
4037405f:	40d103        	rsr.excsave1	a4
40374062:	803311        	slli	a3, a3, 8
40374065:	302230        	xor	a2, a2, a3
40374068:	20e613        	wsr.ps	a2
4037406b:	102000        	rsync
4037406e:	f774ce        	bbci	a4, 31, 0x40374040
40374071:	f08040        	rotw	-1
40374074:	e77848        	bbci	a8, 30, 0x403740c0
40374077:	f08040        	rotw	-1
4037407a:	863000        	j	0x40374140
4037407d:	000000        	ill
40374080:	00c949        	s32e	a0, a9, -16
40374083:	00d109        	l32e	a0, a1, -12
40374086:	10d949        	s32e	a1, a9, -12
40374089:	20e949        	s32e	a2, a9, -8
4037408c:	30f949        	s32e	a3, a9, -4
4037408f:	408049        	s32e	a4, a0, -32
40374092:	509049        	s32e	a5, a0, -28
40374095:	60a049        	s32e	a6, a0, -24
40374098:	70b049        	s32e	a7, a0, -20
4037409b:	003400        	rfwo
	...
403740be:	000000        	ill
403740c1:	c909      	s32i.n	a12, a9, 0
403740c3:	10d909        	l32e	a1, a9, -12
403740c6:	20e909        	l32e	a2, a9, -8
403740c9:	70d109        	l32e	a7, a1, -12
403740cc:	30f909        	l32e	a3, a9, -4
403740cf:	408709        	l32e	a4, a7, -32
403740d2:	509709        	l32e	a5, a7, -28
403740d5:	60a709        	l32e	a6, a7, -24
403740d8:	70b709        	l32e	a7, a7, -20
403740db:	003500        	rfwu
	...
403740fe:	000000        	ill
40374101:	cd          	.byte	0xcd
40374102:	4900      	s32i.n	a4, a0, 0
40374104:	d10910        	l32r	a13, 0x40338128
40374107:	dd          	.byte	0xdd
40374108:	4920      	s32i.n	a4, a0, 8
4037410a:	ed          	.byte	0xed
4037410b:	4930      	s32i.n	a4, a0, 12
4037410d:	fd          	.byte	0xfd
4037410e:	4940      	s32i.n	a4, a0, 16
40374110:	40          	.byte	0x40
40374111:	4950      	s32i.n	a4, a0, 20
40374113:	50          	.byte	0x50
40374114:	4960      	s32i.n	a4, a0, 24
40374116:	60          	.byte	0x60
40374117:	4970      	s32i.n	a4, a0, 28
40374119:	704980        	add	a4, a9, a7
4037411c:	804990        	addx2	a4, a9, a8
4037411f:	9049a0        	addx4	a4, a9, a9
40374122:	a049b0        	addx8	a4, a9, a10
40374125:	b04900        	break	9, 11
40374128:	340000        	ee.ld.qacc_l.l.128.ip	a3, 0
	...
4037413f:	00          	.byte	00
40374140:	00cd09        	l32e	a0, a13, -16
40374143:	10dd09        	l32e	a1, a13, -12
40374146:	20ed09        	l32e	a2, a13, -8
40374149:	b0d109        	l32e	a11, a1, -12
4037414c:	30fd09        	l32e	a3, a13, -4
4037414f:	404b09        	l32e	a4, a11, -48
40374152:	505b09        	l32e	a5, a11, -44
40374155:	606b09        	l32e	a6, a11, -40
40374158:	707b09        	l32e	a7, a11, -36
4037415b:	808b09        	l32e	a8, a11, -32
4037415e:	909b09        	l32e	a9, a11, -28
40374161:	a0ab09        	l32e	a10, a11, -24
40374164:	b0bb09        	l32e	a11, a11, -20
40374167:	003500        	rfwu
	...
4037417e:	000000        	ill
40374181:	d21345        	l16ui	a13, a3, 138
40374184:	850500        	call0	0x403741e0
	...
403741bf:	0000d3        	movt	a0, a0, b0
403741c2:	13458c        	ssi	f1, a5, 0x230
403741c5:	050000        	call0	0x403741c8
	...
40374200:	00d413        	wsr.excsave4	a0
40374203:	858503        	call0	0x40377a5c
	...
4037423e:	000000        	ill
40374241:	d51345        	call4	0x403b9380
40374244:	9905      	s32i.n	a9, a5, 0
	...
4037427e:	000000        	ill
40374281:	d61345        	bgez	a3, 0x403746d6
40374284:	930500        	lsi	f9, a5, 0
	...
403742bf:	0000d7        	ee.stf.64.xp	f0, f13, a0, a0
403742c2:	13c591        	ssip	f1, a5, 0x244
403742c5:	050000        	call0	0x403742c8
	...
40374300:	00d113        	wsr.excsave1	a0
40374303:	452905        	call0	0x40379598
	...
4037433e:	000000        	ill
40374341:	d11345        	l32r	a13, 0x40345790
40374344:	270500        	bnone	a5, a2, 0x40374348
	...
403743bf:	004041        	srli	a4, a0, 0
403743c2:	000c20        	or	a0, a12, a0
403743c5:	00e813        	wsr.exccause	a0
403743c8:	45db05        	call0	0x4037a180
403743cb:	003200        	rfde
	...
403743fe:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
40374401:	810000        	l32r	a8, 0x40334404
40374404:	4847      	l32i.n	a4, a7, 16
40374406:	c93f      	s32i.n	a12, a15, 12
40374408:	10          	.byte	0x10
40374409:	270000        	bnone	a0, a2, 0x4037440d
4037440c:	98a1      	l32i.n	a9, a1, 40
4037440e:	c93f      	s32i.n	a12, a15, 12
40374410:	96a1c9        	bltz	a1, 0x403740ae
40374413:	3f9da1c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a13, q6, q3, q2, q1
40374417:	3f94a1c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a4, q6, q3, q2, q1
4037441b:	3f9ca1c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a12, q6, q3, q2, q1
4037441f:	3f5425ca 	ee.vmulas.u8.accx.ld.xp.qup	q4, a3, a4, q5, q2, q2, q5
40374423:	3f2c8100 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 192, q4, q5, q0, q1
40374427:	60          	.byte	0x60
40374428:	000000        	ill
4037442b:	402427        	ee.stf.64.xp	f2, f2, a4, a4
4037442e:	00          	.byte	00
4037442f:	40          	.byte	0x40
40374430:	d851      	l32i.n	a13, a1, 20
40374432:	c93f      	s32i.n	a12, a15, 12
40374434:	ffff3f00 	ee.vmulas.s16.accx.ld.ip.qup	q1, a15, 240, q7, q6, q3, q7
40374438:	0000c0        	sub	a0, a0, a0
4037443b:	ff9027ca 	ee.vmulas.u8.accx.ld.xp.qup	q4, a15, a0, q6, q2, q2, q7
4037443f:	3ff851c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a8, q7, q6, q5, q1
40374443:	3fa35008 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 0xfffffe30, q6, q4, q5, q0
40374447:	3c45      	movi.n	a5, 52
40374449:	56083c        	bnez	a8, 0x4037480d
4037444c:	cf50083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a12, 0xffffff00, q5, q2, q0, q0
40374450:	00          	.byte	00
40374451:	3800      	l32i.n	a3, a0, 0
40374453:	000008        	lsx	f0, a0, a0
40374456:	000000        	ill
40374459:	20          	.byte	0x20
4037445a:	000000        	ill
4037445d:	1800      	l32i.n	a1, a0, 0
4037445f:	00bc27        	ee.stf.64.xp	f11, f2, a0, a12
40374462:	ca3f      	add.n	a3, a15, a12
40374464:	20          	.byte	0x20
40374465:	52c93f        	addi	a5, a9, 63
40374468:	ffff0700 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q7, q6, q0, q7
4037446c:	00          	.byte	00
4037446d:	00          	.byte	00
4037446e:	f8ff      	l32i.n	a15, a15, 60
40374470:	3c52      	movi.n	a2, 53
40374472:	c93f      	s32i.n	a12, a15, 12
40374474:	30          	.byte	0x30
40374475:	52c93f        	addi	a5, a9, 63
40374478:	ec27      	bnez.n	a7, 0x4037449e
4037447a:	ca3f      	add.n	a3, a15, a12
4037447c:	008000        	any4	b0, b0:b1:b2:b3
4037447f:	00          	.byte	00
40374480:	006801        	slli	a6, a8, 32
40374483:	60cc54        	extui	a12, a6, 12, 6
40374486:	c93f      	s32i.n	a12, a15, 12
40374488:	f15a08        	l32r	a15, 0x403365f0
4037448b:	3cf5      	movi.n	a5, 63
4037448d:	5a08      	add.n	a0, a8, a5
4037448f:	3c14      	movi.n	a4, 49
40374491:	5b08      	addi.n	a0, a8, 5
40374493:	3c34      	movi.n	a4, 51
40374495:	5b08      	addi.n	a0, a8, 5
40374497:	3cf4      	movi.n	a4, 63
40374499:	110040        	l32r	a1, 0x4034449c
4037449c:	d00500        	callx4	a5
4037449f:	40e811        	slli	a14, a8, 12
403744a2:	004060        	neg	a4, a0
403744a5:	52c93f        	addi	a5, a9, 63
403744a8:	bc52      	beqz.n	a2, 0x403744e1
403744aa:	c93f      	s32i.n	a12, a15, 12
403744ac:	200006        	ee.ldf.64.xp	f0, f0, a2, a0
403744af:	3c48      	movi.n	a8, 52
403744b1:	28ca      	l32i.n	a2, a10, 48
403744b3:	3f2d6f08 	ee.vmulas.s16.accx.ld.ip.qup	q1, a3, 0xfffffed0, q4, q4, q6, q7
403744b7:	3cb3      	movi.n	a3, 59
403744b9:	6f083c63 	ee.vmulas.u8.accx.ld.ip.qup	q7, a6, 128, q4, q0, q3, q4
403744bd:	6f083c76 	ee.vmulas.u8.qacc.ld.ip.qup	q5, a6, 0x180, q4, q0, q3, q4
403744c1:	6f083c00 	ee.vmulas.s16.accx.ld.ip.qup	q1, a6, 128, q4, q0, q3, q4
403744c5:	200060        	neg	a0, a2
403744c8:	000020        	or	a0, a0, a0
403744cb:	000000        	ill
403744ce:	00          	.byte	00
403744cf:	80          	.byte	0x80
403744d0:	ffffff0f 	ee.vmulas.s16.accx.ld.ip.qup	q7, a15, -16, q7, q7, q7, q7
403744d4:	000000        	ill
403744d7:	70          	.byte	0x70
403744d8:	00          	.byte	00
403744d9:	00          	.byte	00
403744da:	ff          	.byte	0xff
403744db:	ff          	.byte	0xff
403744dc:	ffffffbf 	ee.vmulas.s8.qacc.ld.xp.qup	q7, a15, a15, q7, q7, q7, q7
403744e0:	ffffff03 	ee.vmulas.s16.accx.ld.ip.qup	q7, a15, 240, q7, q7, q7, q7
403744e4:	e4          	.byte	0xe4
403744e5:	ff          	.byte	0xff
403744e6:	ce          	.byte	0xce
403744e7:	3f          	.byte	0x3f
403744e8:	ffffffdf 	ee.fft.cmul.s16.ld.xp	q7, a15, a15, q7, q7, q7, 7
403744ec:	ff          	.byte	0xff
403744ed:	ff          	.byte	0xff
403744ee:	ff          	.byte	0xff
403744ef:	f7ffff        	bbsi	a15, 31, 0x403744f2
403744f2:	ffef0000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q7, q4, q0, q0
403744f6:	040085        	ee.vldbc.16.ip	q0, a0, 0
403744f9:	6f083c98 	ee.stf.128.xp	f1, f9, f0, f3, a6, a8
403744fd:	6f083c00 	ee.vmulas.s16.accx.ld.ip.qup	q1, a6, 128, q4, q0, q3, q4
40374501:	00          	.byte	00
40374502:	ff0000ff 	ee.vmulas.s16.accx.ld.ip	q6, a15, 0xffffff00, q4, q0
40374506:	000000        	ill
40374509:	50          	.byte	0x50
4037450a:	0c60      	movi.n	a0, 6
4037450c:	6028ca        	float.s	f2, a8, 6
4037450f:	3f004000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 0, q4, q0, q4, q0
40374513:	00          	.byte	00
40374514:	5c19      	movi.n	a9, 81
40374516:	004000        	break	0, 0
40374519:	000042        	xorb	b0, b0, b0
4037451c:	6819      	l32i.n	a6, a9, 4
4037451e:	004000        	break	0, 0
40374521:	8037c0        	sub	a3, a7, a8
40374524:	ff7f7500 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q5, q6, q7, q5
40374528:	000000        	ill
4037452b:	b0          	.byte	0xb0
4037452c:	ff1f0000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q4, q2, q0, q0
40374530:	0020f0        	subx8	a2, a0, a0
40374533:	9f040800 	ee.vmulas.s16.accx.ld.ip.qup	q1, a9, 64, q4, q0, q0, q0
40374537:	005074        	extui	a5, a0, 0, 8
4037453a:	083c      	l32i.n	a0, a12, 12
4037453c:	277508        	bbci	a5, 18, 0x40374548
4037453f:	3cbd      	movi.n	a13, 59
40374541:	74          	.byte	0x74
40374542:	083c      	l32i.n	a0, a12, 12
40374544:	000001        	slli	a0, a0, 32
40374547:	00602a        	mul.s	f6, f0, f0
4037454a:	ca3f      	add.n	a3, a15, a12
4037454c:	5c28      	movi.n	a8, 82
4037454e:	ca3f      	add.n	a3, a15, a12
40374550:	b01600        	movsp	a11, a6
40374553:	40          	.byte	0x40
40374554:	ffff0000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q7, q6, q0, q0
40374558:	ca74      	add.n	a7, a4, a12
4037455a:	083c      	l32i.n	a0, a12, 12
4037455c:	167508        	beqz	a5, 0x403745e7
4037455f:	3ce4      	movi.n	a4, 62
40374561:	74          	.byte	0x74
40374562:	083c      	l32i.n	a0, a12, 12
40374564:	ffffff00 	ee.vmulas.s16.accx.ld.ip.qup	q1, a15, 240, q7, q7, q7, q7
40374568:	642aca        	ee.vst.128.ip	q0, a6, 0xfffffaa0
4037456b:	3f686fc9 	ee.vmulas.u8.accx.ld.xp.qup	q3, a3, a8, q5, q4, q6, q7
4037456f:	3f056000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 80, q4, q0, q6, q0
40374573:	00          	.byte	00
40374574:	046000        	ee.ld.qacc_l.l.128.ip	a0, 0x600
40374577:	00          	.byte	00
40374578:	03          	.byte	0x3
40374579:	60          	.byte	0x60
4037457a:	000006        	ee.ldf.64.xp	f0, f0, a0, a0
4037457d:	60          	.byte	0x60
4037457e:	0000b2        	mulsh	a0, a0, a0
40374581:	76083c        	bf	b8, 0x403745c1
40374584:	3c75      	movi.n	a5, 55
40374586:	083c      	l32i.n	a0, a12, 12
40374588:	c0          	.byte	0xc0
40374589:	52c93f        	addi	a5, a9, 63
4037458c:	e4          	.byte	0xe4
4037458d:	ae05426e 	ee.vmulas.u8.accx.ld.ip.qup	q4, a10, -176, q0, q0, q4, q2
40374591:	75083c        	call12	0x403b0618
40374594:	000000        	ill
40374597:	01686d        	l32r	a0, 0x4034fb38
4037459a:	03423c        	ssi	f0, a2, 240
4037459d:	8902      	s32i.n	a8, a2, 0
4037459f:	420000        	l8ui	a4, a0, 0
403745a2:	00          	.byte	00
403745a3:	009275        	extui	a9, a0, 18, 8
403745a6:	083c      	l32i.n	a0, a12, 12
403745a8:	9b76      	addi.n	a7, a6, 9
403745aa:	083c      	l32i.n	a0, a12, 12
403745ac:	bd          	.byte	0xbd
403745ad:	75083c        	call12	0x403b0634
403745b0:	d0          	.byte	0xd0
403745b1:	230040        	lsi	f2, a0, 0x100
403745b4:	001000        	movsp	a0, a0
403745b7:	00cd75        	extui	a12, a0, 29, 8
403745ba:	083c      	l32i.n	a0, a12, 12
403745bc:	8b76      	addi.n	a7, a6, 8
403745be:	083c      	l32i.n	a0, a12, 12
403745c0:	bc2a      	beqz.n	a10, 0x403745f6
403745c2:	ca3f      	add.n	a3, a15, a12
403745c4:	682a      	l32i.n	a6, a10, 8
403745c6:	ca3f      	add.n	a3, a15, a12
403745c8:	e17508        	l32r	a14, 0x4033679c
403745cb:	3c24      	movi.n	a4, 50
403745cd:	76083c        	bf	b8, 0x4037460d
403745d0:	64          	.byte	0x64
403745d1:	76083c        	bf	b8, 0x40374611
403745d4:	717608        	l32r	a7, 0x403367ac
403745d7:	3c58      	movi.n	a8, 53
403745d9:	fb02      	addi.n	a0, a2, 15
403745db:	420006        	l8ui	a4, a0, 6
403745de:	00402a        	mul.s	f4, f0, f0
403745e1:	77083c        	bnone	a8, a7, 0x40374621
403745e4:	6d          	.byte	0x6d
403745e5:	77083c        	bnone	a8, a7, 0x40374625
403745e8:	557708        	call4	0x4037cd60
403745eb:	3c0f      	movi.n	a15, 48
403745ed:	270000        	bnone	a0, a2, 0x403745f1
403745f0:	3c88      	movi.n	a8, 56
403745f2:	024250        	s8i	a0, a2, 80
403745f5:	6fc93fd4 	ee.fft.ams.s16.ld.incp.uaup	q1, a6, q0, q3, q7, q3, q7, 0
403745f9:	160040        	beqz	a0, 0x403749fd
403745fc:	a818      	l32i.n	a10, a8, 4
403745fe:	0040c0        	sub	a4, a0, a0
40374601:	1800      	l32i.n	a1, a0, 0
40374603:	409c18        	lsxp	f9, a12, a4
40374606:	0040b4        	extui	a4, a0, 0, 12
40374609:	1800      	l32i.n	a1, a0, 0
4037460b:	40          	.byte	0x40
4037460c:	f86f      	l32i.n	a15, a15, 24
4037460e:	c93f      	s32i.n	a12, a15, 12
40374610:	1c70      	movi.n	a0, 23
40374612:	c93f      	s32i.n	a12, a15, 12
40374614:	742aca        	ee.vst.128.ip	q0, a7, 0xfffffaa0
40374617:	3f752aca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a5, q5, q6, q2, q2
4037461b:	3f7c2aca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a12, q5, q6, q2, q2
4037461f:	3fff7f07 	ee.vmulas.s16.accx.ld.ip.qup	q7, a3, 0x1f0, q7, q6, q7, q7
40374623:	00c877        	ee.stf.64.xp	f12, f7, a0, a8
40374626:	083c      	l32i.n	a0, a12, 12
40374628:	0a79      	add.n	a7, a9, a0
4037462a:	083c      	l32i.n	a0, a12, 12
4037462c:	ba77      	add.n	a7, a7, a11
4037462e:	083c      	l32i.n	a0, a12, 12
40374630:	e852      	l32i.n	a14, a2, 20
40374632:	c93f      	s32i.n	a12, a15, 12
40374634:	f07708        	lsx	f7, a7, a15
40374637:	3c05      	movi.n	a5, 48
40374639:	7808      	l32i.n	a7, a8, 0
4037463b:	3c58      	movi.n	a8, 53
4037463d:	743740        	ee.ld.qacc_l.l.128.ip	a7, 0xfffffb70
40374640:	167808        	beqz	a8, 0x403746cb
40374643:	3ca1      	movi.n	a1, 58
40374645:	77083c        	bnone	a8, a7, 0x40374685
40374648:	607808        	lsx	f7, a8, a6
4037464b:	3c74      	movi.n	a4, 55
4037464d:	8a02      	add.n	a0, a2, a8
4037464f:	4248ba        	s8i	a4, a8, 186
40374652:	03427a        	ssi	f0, a2, 0x1e8
40374655:	7808      	l32i.n	a7, a8, 0
40374657:	3cd9      	movi.n	a9, 61
40374659:	7808      	l32i.n	a7, a8, 0
4037465b:	3c92      	movi.n	a2, 57
4037465d:	7808      	l32i.n	a7, a8, 0
4037465f:	3c88      	movi.n	a8, 56
40374661:	8a02      	add.n	a0, a2, a8
40374663:	426040        	s32i	a4, a0, 0x100
40374666:	0c60      	movi.n	a0, 6
40374668:	e0b602        	andb	b11, b6, b14
4037466b:	42          	.byte	0x42
4037466c:	3b7c      	addi.n	a7, a12, 3
4037466e:	083c      	l32i.n	a0, a12, 12
40374670:	5e7c083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a5, -64, q1, q6, q0, q0
40374674:	ee7b083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a14, -80, q1, q6, q0, q0
40374678:	a82a      	l32i.n	a10, a10, 8
4037467a:	ca3f      	add.n	a3, a15, a12
4037467c:	bc70      	beqz.n	a0, 0x403746b7
4037467e:	c93f      	s32i.n	a12, a15, 12
40374680:	004037        	ee.stf.64.xp	f4, f3, a0, a0
40374683:	40d8e0        	subx4	a13, a8, a4
40374686:	0c60      	movi.n	a0, 6
40374688:	dce0      	bnez.n	a0, 0x403746aa
4037468a:	0c60      	movi.n	a0, 6
4037468c:	cf2aca3f 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a12, -96, q4, q5, q4, q2
40374690:	cd          	.byte	0xcd
40374691:	2aca      	add.n	a12, a10, a2
40374693:	3fcc2aca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a12, q7, q0, q2, q2
40374697:	3fe08208 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 0xfffffe00, q7, q5, q0, q2
4037469b:	3c20      	movi.n	a0, 50
4037469d:	070040        	bnone	a0, a0, 0x403746e1
403746a0:	c8ba      	l32i.n	a12, a10, 44
403746a2:	0342c0        	ssi	f0, a2, 0x300
403746a5:	060040        	j	0x403846a9
403746a8:	b8bd      	l32i.n	a11, a13, 44
403746aa:	024240        	s8i	a0, a2, 64
403746ad:	c10242        	l32r	a12, 0x40344eb8
403746b0:	f864      	l32i.n	a15, a4, 24
403746b2:	ca3f      	add.n	a3, a15, a12
403746b4:	d0          	.byte	0xd0
403746b5:	8ac9      	add.n	a12, a9, a8
403746b7:	3f000000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 0, q4, q0, q0, q0
403746bb:	50          	.byte	0x50
403746bc:	000000        	ill
403746bf:	50          	.byte	0x50
403746c0:	200006        	ee.ldf.64.xp	f0, f0, a2, a0
403746c3:	3c00      	movi.n	a0, 48
403746c5:	0000c4        	extui	a0, a0, 0, 13
403746c8:	68a9      	l32i.n	a6, a9, 40
403746ca:	093c      	s32i.n	a0, a12, 12
403746cc:	f57e08        	call12	0x4037cebc
403746cf:	3cff      	movi.n	a15, 63
403746d1:	7e083c5f 	ee.vmulas.u16.qacc.ld.ip.qup	q7, a7, -128, q0, q0, q3, q4
403746d5:	7f083c00 	ee.vmulas.s16.accx.ld.ip.qup	q1, a7, 128, q4, q0, q3, q4
403746d9:	00          	.byte	00
403746da:	0c60      	movi.n	a0, 6
403746dc:	8c77      	beqz.n	a7, 0x403746e7
403746de:	3740a8        	ball	a0, a3, 0x4037468a
403746e1:	2bca      	addi.n	a12, a10, 2
403746e3:	3f00c201 	ee.vmulas.s16.accx.ld.ip.qup	q2, a3, 0, q4, q1, q4, q2
403746e7:	00005a        	msub.s	f0, f0, f0
403746ea:	62027c        	l8ui	a6, a2, 124
403746ed:	050040        	call0	0x403b46f0
403746f0:	1c1a      	movi.n	a10, 17
403746f2:	00          	.byte	00
403746f3:	40281a        	sub.s	f2, f8, f4
403746f6:	00          	.byte	00
403746f7:	4070b6        	ee.ldf.64.xp	f7, f11, a4, a0
403746fa:	034214        	ssi	f0, a2, 80
403746fd:	1900      	s32i.n	a1, a0, 0
403746ff:	4000bb        	movgez.s	f0, f0, a4
40374702:	0342f4        	ssi	f0, a2, 0x3d0
40374705:	0b03      	addi.n	a0, a3, -1
40374707:	425019        	s16i	a4, a0, 50
4037470a:	004040        	ssai	0
4037470d:	be024270 	ee.vmulas.u8.qacc.ld.ip.qup	q0, a11, 32, q0, q0, q4, q2
40374711:	bf0242b0 	ee.vmulas.s16.accx.ld.xp.qup	q0, a11, a2, q4, q0, q4, q2
40374715:	010342        	l32r	a0, 0x40344f24
40374718:	9c06      	beqz.n	a6, 0x4037472c
4037471a:	004058        	ssxp	f4, a0, a0
4037471d:	0b03      	addi.n	a0, a3, -1
4037471f:	42ffff        	s32ri	a4, a15, 0x3fc
40374722:	fffd602b 	ee.vmulas.s8.accx.ld.ip.qup	q6, a15, 0xfffffed0, q7, q6, q6, q0
40374726:	ca3f      	add.n	a3, a15, a12
40374728:	250004        	call8	0x4037872c
4037472b:	00f4a0        	addx4	a15, a4, a0
4037472e:	374000        	ball	a0, a3, 0x40374732
40374731:	80          	.byte	0x80
40374732:	ffff1980 	ee.ldf.128.ip	f1, f3, f15, f1, a15, -16
40374736:	083c      	l32i.n	a0, a12, 12
40374738:	758008        	call12	0x4037cf40
4037473b:	3c66      	movi.n	a6, 54
4037473d:	80          	.byte	0x80
4037473e:	083c      	l32i.n	a0, a12, 12
40374740:	c880      	l32i.n	a12, a0, 32
40374742:	00          	.byte	00
40374743:	60e803        	rsr.exccause	a6
40374746:	000090        	addx2	a0, a0, a0
40374749:	80          	.byte	0x80
4037474a:	083c      	l32i.n	a0, a12, 12
4037474c:	9880      	l32i.n	a9, a0, 32
4037474e:	083c      	l32i.n	a0, a12, 12
40374750:	544100        	ee.ld.qacc_l.l.128.ip	a5, 0x410
40374753:	605841        	srli	a5, a6, 8
40374756:	00          	.byte	00
40374757:	605c41        	srli	a5, a6, 12
4037475a:	006060        	neg	a6, a0
4037475d:	410060        	l32r	a4, 0x4034c760
40374760:	644100        	ee.ld.qacc_l.l.128.ip	a6, 0x410
40374763:	606841        	srli	a6, a6, 8
40374766:	006018        	lsxp	f6, a0, a0
40374769:	60          	.byte	0x60
4037476a:	0260af        	s32i	a0, a0, 0x2bc
4037476d:	3f000020 	ee.vmulas.s8.accx.ld.ip.qup	q0, a3, 0, q4, q0, q0, q0
40374771:	00          	.byte	00
40374772:	0c60      	movi.n	a0, 6
40374774:	070000        	bnone	a0, a0, 0x40374778
40374777:	20          	.byte	0x20
40374778:	24000c        	ee.st.qacc_l.l.128.ip	a2, 0
4037477b:	604400        	break	4, 6
4037477e:	0c60      	movi.n	a0, 6
40374780:	04000c        	ee.st.qacc_l.l.128.ip	a0, 0
40374783:	604425        	extui	a4, a6, 20, 3
40374786:	00          	.byte	00
40374787:	406c18        	lsxp	f6, a12, a4
4037478a:	004084        	extui	a4, a0, 0, 9
4037478d:	1800      	l32i.n	a1, a0, 0
4037478f:	40f040        	nsau	a4, a0
40374792:	0c60      	movi.n	a0, 6
40374794:	fc40      	bnez.n	a0, 0x403747cc
40374796:	0c60      	movi.n	a0, 6
40374798:	000000        	ill
4037479b:	be          	.byte	0xbe
4037479c:	ffffff01 	ee.vmulas.s16.accx.ld.ip.qup	q3, a15, 240, q7, q7, q7, q7
403747a0:	00          	.byte	00
403747a1:	00          	.byte	00
403747a2:	c9bf      	s32i.n	a12, a15, 44
403747a4:	ffff0600 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q7, q6, q0, q6
403747a8:	000000        	ill
403747ab:	c0ffa0        	addx4	a15, a15, a12
403747ae:	0100f0        	l32r	a0, 0x403707b0
403747b1:	7f37c0e0 	ee.stf.64.ip	f3, f12, a7, 24
403747b5:	7f0700a0 	ee.fft.ams.s16.st.incp	q0, q0, a7, a7, q0, q4, q0, 0
403747b9:	c40242        	ee.st.accx.ip	a12, 0xfffffc10
403747bc:	ffffff3f 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a15, -16, q7, q7, q7, q7
403747c0:	a08008        	lsx	f8, a0, a10
403747c3:	3cae      	movi.n	a14, 58
403747c5:	85083c        	call0	0x403b0850
403747c8:	af80083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a10, 0xffffff00, q6, q0, q0, q0
403747cc:	b38008        	lsip	f11, a0, 32
403747cf:	3cc2      	movi.n	a2, 60
403747d1:	80          	.byte	0x80
403747d2:	083c      	l32i.n	a0, a12, 12
403747d4:	d08008        	lsx	f8, a0, a13
403747d7:	3cde      	movi.n	a14, 61
403747d9:	80          	.byte	0x80
403747da:	083c      	l32i.n	a0, a12, 12
403747dc:	c8c4      	l32i.n	a12, a4, 48
403747de:	024230        	s8i	a0, a2, 48
403747e1:	00          	.byte	00
403747e2:	0c60      	movi.n	a0, 6
403747e4:	34000c        	ee.st.qacc_l.l.128.ip	a3, 0
403747e7:	600453        	max	a0, a4, a6
403747ea:	c93f      	s32i.n	a12, a15, 12
403747ec:	e38008        	lsip	f14, a0, 32
403747ef:	3c29      	movi.n	a9, 50
403747f1:	81083c        	l32r	a8, 0x40343814
403747f4:	1981      	s32i.n	a1, a1, 32
403747f6:	083c      	l32i.n	a0, a12, 12
403747f8:	d82a      	l32i.n	a13, a10, 8
403747fa:	ca3f      	add.n	a3, a15, a12
403747fc:	e02aca        	float.s	f2, a10, 14
403747ff:	3f642bca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a4, q5, q4, q2, q3
40374803:	3f782bca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a8, q5, q6, q2, q3
40374807:	3f742bca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a4, q5, q6, q2, q3
4037480b:	3f9454c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a4, q6, q2, q5, q4
4037480f:	3fdc0d03 	ee.vmulas.s16.accx.ld.ip.qup	q7, a3, 192, q7, q2, q0, q5
40374813:	42          	.byte	0x42
40374814:	7cc2      	movi.n	a2, -4
40374816:	0342f8        	ssi	f0, a2, 0x3e0
40374819:	ca02      	add.n	a0, a2, a12
4037481b:	42bcdb        	l32ai	a4, a12, 0x36c
4037481e:	034200        	ssi	f0, a2, 0
40374821:	dc03      	bnez.n	a3, 0x40374835
40374823:	425817        	s16i	a4, a8, 46
40374826:	0442a4        	ee.vst.l.64.ip	q4, a0, 0x210
40374829:	2bca      	addi.n	a12, a10, 2
4037482b:	3f5cc702 	ee.vmulas.s16.accx.ld.ip.qup	q4, a3, 192, q5, q3, q4, q7
4037482f:	42d8cb        	addmi	a4, a8, 0xffffcb00
40374832:	0542fc        	call0	0x40370c54
40374835:	c802      	l32i.n	a12, a2, 0
40374837:	422853        	l32i	a4, a8, 0x14c
4037483a:	c93f      	s32i.n	a12, a15, 12
4037483c:	b9ff      	s32i.n	a11, a15, 60
4037483e:	ce          	.byte	0xce
4037483f:	3fb8ffce 	ee.vmulas.u8.qacc.ld.xp.qup	q5, a3, a8, q6, q7, q7, q7
40374843:	3fe80500 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 128, q7, q4, q0, q5
40374847:	40          	.byte	0x40
40374848:	000000        	ill
4037484b:	60          	.byte	0x60
4037484c:	000001        	slli	a0, a0, 32
4037484f:	6000e0        	subx4	a0, a0, a6
40374852:	026000        	s32i	a0, a0, 0
40374855:	b4          	.byte	0xb4
40374856:	c40400        	ee.ld.qacc_l.l.128.ip	a12, 64
40374859:	2d          	.byte	0x2d
4037485a:	310100        	l32r	a3, 0x40334860
4037485d:	f0          	.byte	0xf0
4037485e:	ff          	.byte	0xff
4037485f:	ffffff0f 	ee.vmulas.s16.accx.ld.ip.qup	q7, a15, -16, q7, q7, q7, q7
40374863:	ffff0ff0 	ee.vmulas.u8.qacc.ld.ip	q1, a15, 240, q7, q6
40374867:	ff007000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 0, q4, q0, q7, q0
4037486b:	600c08        	lsx	f0, a12, a6
4037486e:	000008        	lsx	f0, a0, a0
40374871:	2d          	.byte	0x2d
40374872:	ca3f      	add.n	a3, a15, a12
40374874:	0463ca        	ee.vst.128.ip	q0, a0, 0xfffffe30
40374877:	3fff7f06 	ee.vmulas.s16.accx.ld.ip.qup	q5, a3, 0x1f0, q7, q6, q7, q7
4037487b:	00          	.byte	00
4037487c:	6e91083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a6, -240, q2, q2, q0, q0
40374880:	14          	.byte	0x14
40374881:	93083c        	lsi	f9, a8, 240
40374884:	a991      	s32i.n	a10, a1, 36
40374886:	083c      	l32i.n	a0, a12, 12
40374888:	fc7f      	bnez.n	a15, 0x403748c3
4037488a:	37c0b5        	bnall	a0, a3, 0x40374843
4037488d:	91083c        	l32r	a9, 0x403438b0
40374890:	d991      	s32i.n	a13, a1, 36
40374892:	083c      	l32i.n	a0, a12, 12
40374894:	eb91      	addi.n	a9, a1, 14
40374896:	083c      	l32i.n	a0, a12, 12
40374898:	00          	.byte	00
40374899:	006f00        	rsil	a0, 15
4037489c:	2c93      	movi.n	a3, 41
4037489e:	083c      	l32i.n	a0, a12, 12
403748a0:	d0          	.byte	0xd0
403748a1:	54          	.byte	0x54
403748a2:	c93f      	s32i.n	a12, a15, 12
403748a4:	001400        	movsp	a0, a4
403748a7:	00          	.byte	00
403748a8:	fb92      	addi.n	a9, a2, 15
403748aa:	083c      	l32i.n	a0, a12, 12
403748ac:	b29208        	l16si	a11, a2, 16
403748af:	3c00      	movi.n	a0, 48
403748b1:	80          	.byte	0x80
403748b2:	c8bf      	l32i.n	a12, a15, 44
403748b4:	fb91      	addi.n	a9, a1, 15
403748b6:	083c      	l32i.n	a0, a12, 12
403748b8:	a3          	.byte	0xa3
403748b9:	92083c        	l8ui	a9, a8, 60
403748bc:	3992      	s32i.n	a3, a2, 36
403748be:	083c      	l32i.n	a0, a12, 12
403748c0:	ca92      	add.n	a9, a2, a12
403748c2:	083c      	l32i.n	a0, a12, 12
403748c4:	73          	.byte	0x73
403748c5:	92083c        	l8ui	a9, a8, 60
403748c8:	919208        	l32r	a9, 0x40336b10
403748cb:	3ce1      	movi.n	a1, 62
403748cd:	92083c        	l8ui	a9, a8, 60
403748d0:	809208        	lsx	f9, a2, a8
403748d3:	3c00      	movi.n	a0, 48
403748d5:	800060        	neg	a0, a8
403748d8:	0c20      	movi.n	a0, 2
403748da:	10          	.byte	0x10
403748db:	004042        	xorb	b4, b0, b0
403748de:	0f00401a 	ee.vmulas.s16.qacc.ld.ip.qup	q4, a0, 0xfffffe00, q4, q0, q4, q0
403748e2:	004014        	extui	a4, a0, 0, 2
403748e5:	2d          	.byte	0x2d
403748e6:	ca3f      	add.n	a3, a15, a12
403748e8:	7c50      	movi.n	a0, -11
403748ea:	03          	.byte	0x3
403748eb:	60f454        	extui	a15, a6, 4, 6
403748ee:	c93f      	s32i.n	a12, a15, 12
403748f0:	242dca        	ee.vst.128.ip	q0, a2, 0xfffffad0
403748f3:	3f182dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a8, q4, q2, q2, q5
403748f7:	3f1c2dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a12, q4, q2, q2, q5
403748fb:	3f541b00 	ee.vmulas.s16.accx.ld.ip.qup	q1, a3, 64, q5, q2, q1, q3
403748ff:	405404        	extui	a5, a4, 4, 1
40374902:	0342e3        	ssi	f0, a2, 0x38c
40374905:	a808      	l32i.n	a10, a8, 0
40374907:	3cf3      	movi.n	a3, 63
40374909:	a808      	l32i.n	a10, a8, 0
4037490b:	3cd6      	movi.n	a6, 61
4037490d:	a808      	l32i.n	a10, a8, 0
4037490f:	3c68      	movi.n	a8, 54
40374911:	040342        	ee.st.accx.ip	a0, 0xfffffc18
40374914:	1800      	l32i.n	a1, a0, 0
40374916:	0c60      	movi.n	a0, 6
40374918:	1c00      	movi.n	a0, 16
4037491a:	0c60      	movi.n	a0, 6
4037491c:	00          	.byte	00
4037491d:	e00000        	callx8	a0
40374920:	00          	.byte	00
40374921:	00          	.byte	00
40374922:	ff5f302d 	ee.vmulas.s8.accx.ld.ip.qup	q2, a15, -16, q5, q2, q3, q0
40374926:	ca3f      	add.n	a3, a15, a12
40374928:	0855      	l32i.n	a0, a5, 20
4037492a:	c93f      	s32i.n	a12, a15, 12
4037492c:	dc84      	bnez.n	a4, 0x40374948
4037492e:	00          	.byte	00
4037492f:	60          	.byte	0x60
40374930:	ffffff07 	ee.vmulas.s16.accx.ld.ip.qup	q7, a15, 0x1f0, q7, q7, q7, q7
40374934:	64          	.byte	0x64
40374935:	800060        	neg	a0, a8
40374938:	dca0      	bnez.n	a0, 0x40374956
4037493a:	083c      	l32i.n	a0, a12, 12
4037493c:	aca5      	beqz.n	a5, 0x4037496a
4037493e:	083c      	l32i.n	a0, a12, 12
40374940:	1880      	l32i.n	a1, a0, 32
40374942:	03          	.byte	0x3
40374943:	60d880        	add	a13, a8, a6
40374946:	0060e0        	subx4	a6, a0, a0
40374949:	800060        	neg	a0, a8
4037494c:	000040        	ssr	a0
4037494f:	00          	.byte	00
40374950:	ffffff7f 	ee.vmulas.u8.qacc.ld.ip.qup	q7, a15, -16, q7, q7, q7, q7
40374954:	008000        	any4	b0, b0:b1:b2:b3
40374957:	60          	.byte	0x60
40374958:	ff          	.byte	0xff
40374959:	7f          	.byte	0x7f
4037495a:	ffffffdf 	ee.fft.cmul.s16.ld.xp	q7, a15, a15, q7, q7, q7, 7
4037495e:	ffff0000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q7, q6, q0, q0
40374962:	00          	.byte	00
40374963:	18ff      	l32i.n	a1, a15, 60
40374965:	ffffe700 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q7, q7, q6, q7
40374969:	8800      	l32i.n	a8, a0, 0
4037496b:	60          	.byte	0x60
4037496c:	ff0300fe 	ee.vmulas.s16.accx.ld.ip	q4, a15, -208, q4, q0
40374970:	000010        	and	a0, a0, a0
40374973:	000000        	ill
40374976:	fe0128e0 	ee.src.q.ld.ip	q0, a15, 0x210, q0, q2
4037497a:	0f600000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0, q5, q4, q0, q0
4037497e:	020031        	l8ui	a0, a0, 49
40374981:	2d          	.byte	0x2d
40374982:	ca3f      	add.n	a3, a15, a12
40374984:	04          	.byte	0x4
40374985:	800060        	neg	a0, a8
40374988:	0880      	l32i.n	a0, a0, 32
4037498a:	00          	.byte	00
4037498b:	604c80        	add	a4, a12, a6
4037498e:	00          	.byte	00
4037498f:	602ce0        	subx4	a2, a12, a6
40374992:	0f6000e0 	ee.src.q.ld.ip	q0, a0, 0x100, q5, q0
40374996:	0f6000e0 	ee.src.q.ld.ip	q0, a0, 0x100, q5, q0
4037499a:	0f602c0a 	ee.vmulas.s16.accx.ld.ip.qup	q5, a0, 0xfffffe00, q5, q4, q2, q4
4037499e:	034214        	ssi	f0, a2, 80
403749a1:	d30342        	lsi	f13, a3, 0x108
403749a4:	68d3      	l32i.n	a6, a3, 52
403749a6:	0342e0        	ssi	f0, a2, 0x380
403749a9:	0b03      	addi.n	a0, a3, -1
403749ab:	422c07        	l32i	a4, a12, 28
403749ae:	00          	.byte	00
403749af:	40fc54        	extui	a15, a4, 12, 6
403749b2:	c93f      	s32i.n	a12, a15, 12
403749b4:	24          	.byte	0x24
403749b5:	e0          	.byte	0xe0
403749b6:	0f601ce0 	ee.src.q.ld.ip	q4, a0, 0x300, q5, q1
403749ba:	0f60210c 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 0xffffff00, q5, q4, q2, q1
403749be:	000024        	extui	a0, a0, 0, 3
403749c1:	120342        	l8ui	a1, a3, 66
403749c4:	b0          	.byte	0xb0
403749c5:	0a03      	add.n	a0, a3, a0
403749c7:	429009        	l16si	a4, a0, 18
403749ca:	034274        	ssi	f0, a2, 0x1d0
403749cd:	020342        	l8ui	a0, a3, 66
403749d0:	004000        	break	0, 0
403749d3:	609480        	add	a9, a4, a6
403749d6:	0060ba        	ceil.s	a6, f0, 0
403749d9:	a908      	s32i.n	a10, a8, 0
403749db:	3c67      	movi.n	a7, 54
403749dd:	aa08      	add.n	a0, a8, a10
403749df:	3c5a      	movi.n	a10, 53
403749e1:	aa08      	add.n	a0, a8, a10
403749e3:	3c00      	movi.n	a0, 48
403749e5:	00          	.byte	00
403749e6:	00          	.byte	00
403749e7:	fcff      	bnez.n	a15, 0x40374a2a
403749e9:	ff0100dc 	ee.fft.cmul.s16.ld.xp	q0, a15, a1, q0, q4, q0, 0
403749ed:	800060        	neg	a0, a8
403749f0:	04          	.byte	0x4
403749f1:	900060        	neg	a0, a9
403749f4:	544500        	ee.ld.qacc_l.l.128.ip	a5, 0x450
403749f7:	60          	.byte	0x60
403749f8:	ff          	.byte	0xff
403749f9:	bf          	.byte	0xbf
403749fa:	ffffff8f 	ee.ldf.128.xp	f15, f15, f15, f15, a15, a15
403749fe:	ffff1880 	ee.ldf.128.ip	f1, f1, f15, f1, a15, -16
40374a02:	37c058        	bnall	a0, a3, 0x40374a5e
40374a05:	55c93f        	call4	0x403b469c
40374a08:	485d      	l32i.n	a4, a13, 20
40374a0a:	004054        	extui	a4, a0, 0, 6
40374a0d:	5d00      	mov.n	a5, a0
40374a0f:	40          	.byte	0x40
40374a10:	60          	.byte	0x60
40374a11:	5d00      	mov.n	a5, a0
40374a13:	40          	.byte	0x40
40374a14:	6c5d      	movi.n	a13, -27
40374a16:	004009        	l32e	a0, a0, -48
40374a19:	71c93f        	l32r	a7, 0x40344940
40374a1c:	1471c9        	ee.vld.l.64.ip	q0, a1, -120
40374a1f:	3fbcab08 	ee.vmulas.s16.accx.ld.ip.qup	q1, a3, 0xfffffec0, q6, q7, q2, q3
40374a23:	3c70      	movi.n	a0, 55
40374a25:	59c9      	s32i.n	a5, a9, 48
40374a27:	3f402dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a0, q5, q0, q2, q5
40374a2b:	3f3c2dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a12, q4, q6, q2, q5
40374a2f:	3f482dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a8, q5, q0, q2, q5
40374a33:	3f502dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a0, q5, q2, q2, q5
40374a37:	3f542dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a4, q5, q2, q2, q5
40374a3b:	3f8859c9 	ee.vmulas.u8.accx.ld.xp.qup	q3, a3, a8, q6, q0, q5, q1
40374a3f:	3f7859c9 	ee.vmulas.u8.accx.ld.xp.qup	q3, a3, a8, q5, q6, q5, q1
40374a43:	3f6c2dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a12, q5, q4, q2, q5
40374a47:	3f240004 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 0x140, q4, q4, q0, q0
40374a4b:	007057        	ee.stf.64.xp	f7, f5, a0, a0
40374a4e:	c93f      	s32i.n	a12, a15, 12
40374a50:	54          	.byte	0x54
40374a51:	963740        	bltz	a7, 0x40374e58
40374a54:	4430ca        	ee.vst.128.ip	q0, a4, 0xfffffb00
40374a57:	3fd0ca08 	ee.vmulas.s16.accx.ld.ip.qup	q1, a3, 0xfffffe00, q7, q3, q4, q2
40374a5b:	3c00      	movi.n	a0, 48
40374a5d:	6ac9      	add.n	a12, a9, a6
40374a5f:	3fb0ca08 	ee.vmulas.s16.accx.ld.ip.qup	q1, a3, 0xfffffe00, q6, q7, q4, q2
40374a63:	3c21      	movi.n	a1, 50
40374a65:	00          	.byte	00
40374a66:	04          	.byte	0x4
40374a67:	00ff37        	ee.stf.64.xp	f15, f3, a0, a15
40374a6a:	060070        	j	0x40390a6e
40374a6d:	55c93f        	call4	0x403b4704
40374a70:	74          	.byte	0x74
40374a71:	9a37      	add.n	a3, a7, a9
40374a73:	40          	.byte	0x40
40374a74:	220004        	l8ui	a2, a0, 4
40374a77:	000000        	ill
40374a7a:	3800      	l32i.n	a3, a0, 0
40374a7c:	24          	.byte	0x24
40374a7d:	9b37      	addi.n	a3, a7, 9
40374a7f:	40          	.byte	0x40
40374a80:	230004        	lsi	f2, a0, 16
40374a83:	00          	.byte	00
40374a84:	0088c0        	sub	a8, a8, a0
40374a87:	2884      	l32i.n	a2, a4, 32
40374a89:	2d          	.byte	0x2d
40374a8a:	ca3f      	add.n	a3, a15, a12
40374a8c:	286a      	l32i.n	a2, a10, 24
40374a8e:	c93f      	s32i.n	a12, a15, 12
40374a90:	b5d808        	call12	0x4037d81c
40374a93:	3ce0      	movi.n	a0, 62
40374a95:	d908      	s32i.n	a13, a8, 0
40374a97:	3cdd      	movi.n	a13, 61
40374a99:	d808      	l32i.n	a13, a8, 0
40374a9b:	3ce5      	movi.n	a5, 62
40374a9d:	d808      	l32i.n	a13, a8, 0
40374a9f:	3cb8      	movi.n	a8, 59
40374aa1:	d908      	s32i.n	a13, a8, 0
40374aa3:	3ccd      	movi.n	a13, 60
40374aa5:	a7083c        	bnone	a8, a10, 0x40374ae5
40374aa8:	cbd9      	addi.n	a13, a9, 12
40374aaa:	083c      	l32i.n	a0, a12, 12
40374aac:	0fd9083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a0, -112, q7, q2, q0, q0
40374ab0:	f5d908        	call12	0x4037d850
40374ab3:	3c33      	movi.n	a3, 51
40374ab5:	c410bb        	ee.vst.h.64.ip	q6, a12, 128
40374ab8:	a030ca        	float.s	f3, a0, 10
40374abb:	3f4c30ca 	ee.vmulas.u8.accx.ld.xp.qup	q4, a3, a12, q5, q0, q3, q0
40374abf:	3fd0ffce 	ee.vmulas.u8.qacc.ld.xp.qup	q5, a3, a0, q7, q3, q7, q7
40374ac3:	3f104304 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 0x100, q4, q2, q4, q3
40374ac7:	42e431        	s32c1i	a4, a4, 196
40374aca:	ca3f      	add.n	a3, a15, a12
40374acc:	f4          	.byte	0xf4
40374acd:	0f034288 	ee.ldf.128.xp	f0, f5, f0, f4, a0, a3
40374ad1:	110342        	l32r	a1, 0x403452e0
40374ad4:	742500        	ee.ld.qacc_l.l.128.ip	a7, 0x250
40374ad7:	40          	.byte	0x40
40374ad8:	4cec      	movi.n	a12, 78
40374ada:	083c      	l32i.n	a0, a12, 12
40374adc:	92ec08        	s32c1i	a9, a12, 32
40374adf:	3c82      	movi.n	a2, 56
40374ae1:	ec08      	bnez.n	a8, 0x40374b05
40374ae3:	3cf4      	movi.n	a4, 63
40374ae5:	59ca      	s32i.n	a5, a10, 48
40374ae7:	3fe459ca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a4, q7, q4, q5, q1
40374aeb:	3fdc59ca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a12, q7, q2, q5, q1
40374aef:	3fd459ca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a4, q7, q2, q5, q1
40374af3:	3fec59ca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a12, q7, q4, q5, q1
40374af7:	3f98ba03 	ee.vmulas.s16.accx.ld.ip.qup	q7, a3, 128, q6, q3, q3, q2
40374afb:	421c6c        	l16ui	a4, a12, 216
40374afe:	c93f      	s32i.n	a12, a15, 12
40374b00:	f064ca        	float.s	f6, a4, 15
40374b03:	3fe864ca 	ee.vmulas.u8.accx.ld.xp.qup	q4, a3, a8, q7, q4, q6, q4
40374b07:	3fec64ca 	ee.vmulas.u8.accx.ld.xp.qup	q4, a3, a12, q7, q4, q6, q4
40374b0b:	3f3c000c 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, -64, q4, q6, q0, q0
40374b0f:	60          	.byte	0x60
40374b10:	3800      	l32i.n	a3, a0, 0
40374b12:	0c60      	movi.n	a0, 6
40374b14:	1c5a      	movi.n	a10, 21
40374b16:	ca3f      	add.n	a3, a15, a12
40374b18:	145aca        	ee.vst.128.ip	q0, a1, 0xfffffda0
40374b1b:	3f206cc9 	ee.vmulas.u8.accx.ld.xp.qup	q3, a3, a0, q4, q4, q6, q4
40374b1f:	3f105aca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a0, q4, q2, q5, q2
40374b23:	3f0c5aca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a12, q4, q0, q5, q2
40374b27:	3f00ab37 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a3, 0x100, q4, q1, q2, q3
40374b2b:	40          	.byte	0x40
40374b2c:	381c      	l32i.n	a3, a12, 4
40374b2e:	00          	.byte	00
40374b2f:	40          	.byte	0x40
40374b30:	286c      	l32i.n	a2, a12, 24
40374b32:	c93f      	s32i.n	a12, a15, 12
40374b34:	000000        	ill
40374b37:	104081        	src	a4, a0, a1
40374b3a:	00          	.byte	00
40374b3b:	60          	.byte	0x60
40374b3c:	ff          	.byte	0xff
40374b3d:	ff          	.byte	0xff
40374b3e:	fffee016 	ee.vmulas.s16.qacc.ld.ip.qup	q4, a15, 0x1e0, q7, q7, q6, q0
40374b42:	00          	.byte	00
40374b43:	40          	.byte	0x40
40374b44:	ff          	.byte	0xff
40374b45:	3fffffbc 	ee.vmulas.s8.qacc.ld.xp.qup	q1, a3, a15, q7, q7, q7, q7
40374b49:	60          	.byte	0x60
40374b4a:	0260c0        	s32i	a0, a0, 0x300
40374b4d:	60          	.byte	0x60
40374b4e:	02603a        	s32i	a0, a0, 232
40374b51:	90          	.byte	0x90
40374b52:	083c      	l32i.n	a0, a12, 12
40374b54:	929008        	l16si	a9, a0, 16
40374b57:	3c5f      	movi.n	a15, 53
40374b59:	90          	.byte	0x90
40374b5a:	083c      	l32i.n	a0, a12, 12
40374b5c:	60a808        	lsx	f10, a8, a6
40374b5f:	3c20      	movi.n	a0, 50
40374b61:	bb05      	addi.n	a0, a5, 11
40374b63:	42          	.byte	0x42
40374b64:	382d      	l32i.n	a3, a13, 8
40374b66:	ca3f      	add.n	a3, a15, a12
40374b68:	608000        	any4	b6, b0:b1:b2:b3
40374b6b:	60          	.byte	0x60
40374b6c:	00          	.byte	00
40374b6d:	00          	.byte	00
40374b6e:	0e          	.byte	0xe
40374b6f:	00          	.byte	00
40374b70:	ff          	.byte	0xff
40374b71:	ff          	.byte	0xff
40374b72:	f1ffff        	l32r	a15, 0x40374b70 (0xfff1ffff)
40374b75:	1f          	.byte	0x1f
40374b76:	ff          	.byte	0xff
40374b77:	ff          	.byte	0xff
40374b78:	ff          	.byte	0xff
40374b79:	e3          	.byte	0xe3
40374b7a:	ffffc084 	ee.ldf.128.ip	f8, f1, f15, f12, a15, -16
40374b7e:	006000        	rsil	a0, 0
40374b81:	00          	.byte	00
40374b82:	0800      	l32i.n	a0, a0, 0
40374b84:	c4          	.byte	0xc4
40374b85:	84          	.byte	0x84
40374b86:	0060c3        	movf	a6, a0, b0
40374b89:	160000        	beqz	a0, 0x40374b8d
40374b8c:	ff          	.byte	0xff
40374b8d:	fffeff74 	ee.vmulas.u8.qacc.ld.ip.qup	q1, a15, 0x1e0, q7, q7, q7, q7
40374b91:	800060        	neg	a0, a8
40374b94:	1c80      	movi.n	a0, 24
40374b96:	00          	.byte	00
40374b97:	603fc0        	sub	a3, a15, a6
40374b9a:	ffff0000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q7, q6, q0, q0
40374b9e:	00          	.byte	00
40374b9f:	04          	.byte	0x4
40374ba0:	ff          	.byte	0xff
40374ba1:	fffffb40 	ee.vmulas.u16.accx.ld.ip.qup	q1, a15, 240, q7, q7, q7, q3
40374ba5:	130200        	lsi	f1, a2, 0
40374ba8:	070b01        	bnone	a11, a0, 0x40374bad
40374bab:	000000        	ill
40374bae:	002040        	ssa8l	a0
40374bb1:	e00060        	neg	a0, a14
40374bb4:	10          	.byte	0x10
40374bb5:	00          	.byte	00
40374bb6:	0c60      	movi.n	a0, 6
40374bb8:	60          	.byte	0x60
40374bb9:	55c93f        	call4	0x403b4850
40374bbc:	6455c9        	ee.vld.l.64.ip	q0, a6, 0xfffffea8
40374bbf:	3f60000c 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 0xffffff00, q5, q4, q0, q0
40374bc3:	60          	.byte	0x60
40374bc4:	ff          	.byte	0xff
40374bc5:	f3          	.byte	0xf3
40374bc6:	ffff342d 	ee.vmulas.s8.accx.ld.ip.qup	q2, a15, -16, q7, q6, q3, q4
40374bca:	ca3f      	add.n	a3, a15, a12
40374bcc:	fc81      	bnez.n	a1, 0x40374c08
40374bce:	00          	.byte	00
40374bcf:	60          	.byte	0x60
40374bd0:	ff          	.byte	0xff
40374bd1:	1ff8ff4c 	ee.vmulas.u16.accx.ld.ip.qup	q1, a1, -128, q7, q7, q7, q7
40374bd5:	1a00      	add.n	a0, a0, a1
40374bd7:	40c080        	add	a12, a0, a4
40374bda:	0060c4        	extui	a6, a0, 0, 13
40374bdd:	7fc93fcc 	ee.vmulas.u8.qacc.ld.xp.qup	q1, a7, a9, q7, q0, q3, q7
40374be1:	7f          	.byte	0x7f
40374be2:	c93f      	s32i.n	a12, a15, 12
40374be4:	fc7f      	bnez.n	a15, 0x40374c1f
40374be6:	c93f      	s32i.n	a12, a15, 12
40374be8:	676666        	bbci	a6, 6, 0x40374c52
40374beb:	6600e0        	bnei	a0, -1, 0x40374bcf
40374bee:	070068        	bnone	a0, a0, 0x40374c5a
40374bf1:	55c93f        	call4	0x403b4888
40374bf4:	6c55      	movi.n	a5, -27
40374bf6:	c93f      	s32i.n	a12, a15, 12
40374bf8:	008003        	rsr.ibreaka0	a0
40374bfb:	606007        	ee.stf.64.xp	f6, f0, a6, a0
40374bfe:	0b01      	addi.n	a0, a1, -1
40374c00:	908000        	any4	b9, b0:b1:b2:b3
40374c03:	608880        	add	a8, a8, a6
40374c06:	00          	.byte	00
40374c07:	60fff7        	ee.stf.64.xp	f15, f15, a6, a15
40374c0a:	ffff9c60 	ee.vmulas.u8.accx.ld.ip.qup	q1, a15, 240, q7, q7, q1, q4
40374c0e:	026054        	s32i	a0, a0, 0x150
40374c11:	d00160        	abs	a0, a13
40374c14:	d4          	.byte	0xd4
40374c15:	cc01      	bnez.n	a1, 0x40374c19
40374c17:	609060        	neg	a9, a6
40374c1a:	0060f0        	subx8	a6, a0, a0
40374c1d:	500060        	neg	a0, a5
40374c20:	b06002        	andb	b6, b0, b11
40374c23:	60          	.byte	0x60
40374c24:	f83f      	l32i.n	a15, a15, 12
40374c26:	000007        	ee.stf.64.xp	f0, f0, a0, a0
40374c29:	c0          	.byte	0xc0
40374c2a:	ffff0000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 240, q7, q6, q0, q0
40374c2e:	2e00deaa 	ee.fft.cmul.s16.st.xp	q0, q5, q6, a2, a0, 1, 1, 1
40374c32:	083c      	l32i.n	a0, a12, 12
40374c34:	9fab083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a9, -80, q6, q4, q0, q0
40374c38:	2aab      	add.n	a10, a11, a2
40374c3a:	083c      	l32i.n	a0, a12, 12
40374c3c:	ffffff87 	ee.ldf.128.ip	f15, f15, f15, f15, a15, -16
40374c40:	000000        	ill
40374c43:	7800      	l32i.n	a7, a0, 0
40374c45:	0801      	l32i.n	a0, a1, 0
40374c47:	00          	.byte	00
40374c48:	ff          	.byte	0xff
40374c49:	0ffeff00 	ee.vmulas.s16.accx.ld.ip.qup	q1, a0, 224, q7, q7, q7, q7
40374c4d:	70          	.byte	0x70
40374c4e:	0100ff        	l32r	a0, 0x40374850 (0x6002e000)
40374c51:	0ffe8700 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 224, q7, q7, q0, q7
40374c55:	50          	.byte	0x50
40374c56:	00          	.byte	00
40374c57:	288c      	l32i.n	a2, a12, 32
40374c59:	ab08      	addi.n	a0, a8, 10
40374c5b:	3cff      	movi.n	a15, 63
40374c5d:	ff          	.byte	0xff
40374c5e:	ff          	.byte	0xff
40374c5f:	cf          	.byte	0xcf
40374c60:	ff          	.byte	0xff
40374c61:	ff          	.byte	0xff
40374c62:	fbff      	addi.n	a15, a15, 15
40374c64:	ff          	.byte	0xff
40374c65:	ff          	.byte	0xff
40374c66:	3f          	.byte	0x3f
40374c67:	ff          	.byte	0xff
40374c68:	ff          	.byte	0xff
40374c69:	efffff00 	ee.vmulas.s16.accx.ld.ip.qup	q1, a14, 240, q7, q7, q7, q7
40374c6d:	000008        	lsx	f0, a0, a0
40374c70:	ff          	.byte	0xff
40374c71:	ff          	.byte	0xff
40374c72:	ff          	.byte	0xff
40374c73:	f3          	.byte	0xf3
40374c74:	ff          	.byte	0xff
40374c75:	ff          	.byte	0xff
40374c76:	bf          	.byte	0xbf
40374c77:	ff          	.byte	0xff
40374c78:	ff          	.byte	0xff
40374c79:	fffffccf 	ee.vmulas.u8.qacc.ld.xp.qup	q7, a15, a15, q7, q7, q7, q4
40374c7d:	ff          	.byte	0xff
40374c7e:	f7ffff        	bbsi	a15, 31, 0x40374c81
40374c81:	ffefff36 	ee.vmulas.s8.qacc.ld.ip.qup	q5, a15, 0x1f0, q7, q5, q7, q7
40374c85:	ab08      	addi.n	a0, a8, 10
40374c87:	3c90      	movi.n	a0, 57
40374c89:	ab08      	addi.n	a0, a8, 10
40374c8b:	3c64      	movi.n	a4, 54
40374c8d:	ab08      	addi.n	a0, a8, 10
40374c8f:	3c80      	movi.n	a0, 56
40374c91:	800060        	neg	a0, a8
40374c94:	ff          	.byte	0xff
40374c95:	ff          	.byte	0xff
40374c96:	3f          	.byte	0x3f
40374c97:	fcff      	bnez.n	a15, 0x40374cda
40374c99:	ff          	.byte	0xff
40374c9a:	fd          	.byte	0xfd
40374c9b:	ffffffc3 	ee.vmulas.u16.accx.ld.xp.qup	q7, a15, a15, q7, q7, q7, q7
40374c9f:	ff348000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 64, q4, q7, q0, q0
40374ca3:	60          	.byte	0x60
40374ca4:	ffffff27 	ee.vmulas.s8.accx.ld.ip.qup	q7, a15, 0x1f0, q7, q7, q7, q7
40374ca8:	8c80      	beqz.n	a0, 0x40374cb4
40374caa:	006000        	rsil	a0, 0
40374cad:	f00000        	callx12	a0
40374cb0:	84          	.byte	0x84
40374cb1:	800060        	neg	a0, a8
40374cb4:	7c80      	movi.n	a0, -8
40374cb6:	00          	.byte	00
40374cb7:	60          	.byte	0x60
40374cb8:	ff          	.byte	0xff
40374cb9:	ffdfff68 	ee.vmulas.u8.accx.ld.ip.qup	q1, a15, 0xfffffef0, q7, q3, q7, q7
40374cbd:	800060        	neg	a0, a8
40374cc0:	208000        	any4	b2, b0:b1:b2:b3
40374cc3:	60          	.byte	0x60
40374cc4:	ff7f00ff 	ee.vmulas.s16.accx.ld.ip	q6, a15, -16, q5, q6
40374cc8:	00          	.byte	00
40374cc9:	80          	.byte	0x80
40374cca:	7f00fa00 	ee.vmulas.s16.accx.ld.ip.qup	q1, a7, 0, q4, q1, q7, q2
40374cce:	000000        	ill
40374cd1:	c0          	.byte	0xc0
40374cd2:	ff00ff3f 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a15, 0xffffff00, q4, q1, q7, q7
40374cd6:	00          	.byte	00
40374cd7:	ff3c8000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 192, q4, q7, q0, q0
40374cdb:	6000f0        	subx8	a0, a0, a6
40374cde:	ff3fff0f 	ee.vmulas.s16.accx.ld.ip.qup	q7, a15, -16, q4, q7, q7, q7
40374ce2:	00c018        	lsxp	f12, a0, a0
40374ce5:	800060        	neg	a0, a8
40374ce8:	44          	.byte	0x44
40374ce9:	800060        	neg	a0, a8
40374cec:	68f0      	l32i.n	a6, a0, 60
40374cee:	016080        	l32r	a0, 0x40354e70
40374cf1:	f00160        	abs	a0, a15
40374cf4:	006000        	rsil	a0, 0
40374cf7:	00          	.byte	00
40374cf8:	ff          	.byte	0xff
40374cf9:	9fffff00 	ee.vmulas.s16.accx.ld.ip.qup	q1, a9, 240, q7, q7, q7, q7
40374cfd:	00          	.byte	00
40374cfe:	ff          	.byte	0xff
40374cff:	7fffff00 	ee.vmulas.s16.accx.ld.ip.qup	q1, a7, 240, q7, q7, q7, q7
40374d03:	806cf0        	subx8	a6, a12, a8
40374d06:	0160d0        	l32r	a0, 0x40368e88
40374d09:	070000        	bnone	a0, a0, 0x40374d0d
40374d0c:	0c80      	movi.n	a0, 8
40374d0e:	006010        	and	a6, a0, a0
40374d11:	800060        	neg	a0, a8
40374d14:	14          	.byte	0x14
40374d15:	800060        	neg	a0, a8
40374d18:	000000        	ill
40374d1b:	12          	.byte	0x12
40374d1c:	7a00      	add.n	a0, a0, a7
40374d1e:	0000e0        	subx4	a0, a0, a0
40374d21:	43083c        	lsi	f4, a8, 240
40374d24:	b04c08        	lsx	f4, a12, a11
40374d27:	3c92      	movi.n	a2, 57
40374d29:	44083c        	muls.ad.ll	a8, m3
40374d2c:	9c44      	beqz.n	a4, 0x40374d44
40374d2e:	083c      	l32i.n	a0, a12, 12
40374d30:	fc44      	bnez.n	a4, 0x40374d68
40374d32:	083c      	l32i.n	a0, a12, 12
40374d34:	2b45      	addi.n	a4, a5, 2
40374d36:	083c      	l32i.n	a0, a12, 12
40374d38:	574c08        	ball	a12, a5, 0x40374d44
40374d3b:	3c6b      	movi.n	a11, 54
40374d3d:	4908      	s32i.n	a4, a8, 0
40374d3f:	3c5d      	movi.n	a13, 53
40374d41:	45083c        	call0	0x403b0dc8
40374d44:	7e45083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a7, -176, q1, q0, q0, q0
40374d48:	b24508        	s8i	a11, a5, 8
40374d4b:	3cea      	movi.n	a10, 62
40374d4d:	45083c        	call0	0x403b0dd4
40374d50:	224608        	s8i	a2, a6, 8
40374d53:	3c67      	movi.n	a7, 54
40374d55:	46083c        	j	0x40383d7a
40374d58:	454c08        	call0	0x4037d220
40374d5b:	3c80      	movi.n	a0, 56
40374d5d:	46083c        	j	0x40383d82
40374d60:	c04608        	lsx	f4, a6, a12
40374d63:	3c26      	movi.n	a6, 50
40374d65:	47083c        	bnone	a8, a4, 0x40374da5
40374d68:	574708        	ball	a7, a5, 0x40374d74
40374d6b:	3c9e      	movi.n	a14, 57
40374d6d:	47083c        	bnone	a8, a4, 0x40374dad
40374d70:	e4          	.byte	0xe4
40374d71:	47083c        	bnone	a8, a4, 0x40374db1
40374d74:	2f4c083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a2, -64, q5, q0, q0, q0
40374d78:	274808        	ball	a8, a2, 0x40374d84
40374d7b:	3c8d      	movi.n	a13, 56
40374d7d:	4808      	l32i.n	a4, a8, 0
40374d7f:	3c18      	movi.n	a8, 49
40374d81:	4c08      	movi.n	a8, 64
40374d83:	3cad      	movi.n	a13, 58
40374d85:	4808      	l32i.n	a4, a8, 0
40374d87:	3ce5      	movi.n	a5, 62
40374d89:	4808      	l32i.n	a4, a8, 0
40374d8b:	3c00      	movi.n	a0, 48
40374d8d:	4c08      	movi.n	a8, 64
40374d8f:	3cdc      	movi.n	a12, 61
40374d91:	c2          	.byte	0xc2
40374d92:	37404c        	ball	a0, a3, 0x40374de2
40374d95:	c53740        	call0	0x403b5114
40374d98:	84          	.byte	0x84
40374d99:	c0          	.byte	0xc0
40374d9a:	374098        	ball	a0, a3, 0x40374d36
40374d9d:	bf374010 	ee.vmulas.s16.qacc.ld.ip.qup	q0, a11, 112, q4, q6, q4, q0
40374da1:	cc37      	bnez.n	a7, 0x40374da8
40374da3:	4084c4        	extui	a8, a4, 4, 13
40374da6:	374048        	ball	a0, a3, 0x40374df2
40374da9:	cc37      	bnez.n	a7, 0x40374db0
40374dab:	4050c7        	ee.stf.64.xp	f5, f12, a4, a0
40374dae:	37400c        	ball	a0, a3, 0x40374dbe
40374db1:	c43740        	ee.ld.qacc_l.l.128.ip	a12, 0xfffffb70
40374db4:	00bf37        	ee.stf.64.xp	f11, f3, a0, a15
40374db7:	4014c7        	ee.stf.64.xp	f1, f12, a4, a4
40374dba:	374090        	ball	a0, a3, 0x40374d4e
40374dbd:	cc37      	bnez.n	a7, 0x40374dc4
40374dbf:	40          	.byte	0x40
40374dc0:	ffff3fb3 	ee.vmulas.s16.accx.ld.xp.qup	q7, a15, a15, q7, q6, q3, q7
40374dc4:	9d          	.byte	0x9d
40374dc5:	4c08      	movi.n	a8, 64
40374dc7:	3c6c      	movi.n	a12, 54
40374dc9:	4c08      	movi.n	a8, 64
40374dcb:	3c2b      	movi.n	a11, 50
40374dcd:	4908      	s32i.n	a4, a8, 0
40374dcf:	3ca5      	movi.n	a5, 58
40374dd1:	4b08      	addi.n	a0, a8, 4
40374dd3:	3c3f      	movi.n	a15, 51
40374dd5:	4908      	s32i.n	a4, a8, 0
40374dd7:	3c8c      	movi.n	a12, 56
40374dd9:	4b08      	addi.n	a0, a8, 4
40374ddb:	3c60      	movi.n	a0, 54
40374ddd:	4908      	s32i.n	a4, a8, 0
40374ddf:	3cc2      	movi.n	a2, 60
40374de1:	4c08      	movi.n	a8, 64
40374de3:	3c8c      	movi.n	a12, 56
40374de5:	4908      	s32i.n	a4, a8, 0
40374de7:	3c82      	movi.n	a2, 56
40374de9:	4c08      	movi.n	a8, 64
40374deb:	3cb7      	movi.n	a7, 59
40374ded:	4908      	s32i.n	a4, a8, 0
40374def:	3cf1      	movi.n	a1, 63
40374df1:	4b08      	addi.n	a0, a8, 4
40374df3:	3cd6      	movi.n	a6, 61
40374df5:	4908      	s32i.n	a4, a8, 0
40374df7:	3cd7      	movi.n	a7, 61
40374df9:	4c08      	movi.n	a8, 64
40374dfb:	3ce6      	movi.n	a6, 62
40374dfd:	4908      	s32i.n	a4, a8, 0
40374dff:	3c05      	movi.n	a5, 48
40374e01:	4a08      	add.n	a0, a8, a4
40374e03:	3ce1      	movi.n	a1, 62
40374e05:	4b08      	addi.n	a0, a8, 4
40374e07:	3c13      	movi.n	a3, 49
40374e09:	4a08      	add.n	a0, a8, a4
40374e0b:	3cca      	movi.n	a10, 60
40374e0d:	4b08      	addi.n	a0, a8, 4
40374e0f:	3cb7      	movi.n	a7, 59
40374e11:	4b08      	addi.n	a0, a8, 4
40374e13:	3c6e      	movi.n	a14, 54
40374e15:	4b08      	addi.n	a0, a8, 4
40374e17:	3caa      	movi.n	a10, 58
40374e19:	4a08      	add.n	a0, a8, a4
40374e1b:	3c58      	movi.n	a8, 53
40374e1d:	4b08      	addi.n	a0, a8, 4
40374e1f:	3c94      	movi.n	a4, 57
40374e21:	4a08      	add.n	a0, a8, a4
40374e23:	3c3b      	movi.n	a11, 51
40374e25:	4b08      	addi.n	a0, a8, 4
40374e27:	3c29      	movi.n	a9, 50
40374e29:	4b08      	addi.n	a0, a8, 4
40374e2b:	3c0f      	movi.n	a15, 48
40374e2d:	4b08      	addi.n	a0, a8, 4
40374e2f:	3cf5      	movi.n	a5, 63
40374e31:	4a08      	add.n	a0, a8, a4
40374e33:	3ce2      	movi.n	a2, 62
40374e35:	4a08      	add.n	a0, a8, a4
40374e37:	3c1a      	movi.n	a10, 49
40374e39:	80          	.byte	0x80
40374e3a:	c93f      	s32i.n	a12, a15, 12
40374e3c:	3480c9        	ee.vld.l.64.ip	q1, a3, 0xfffffc00
40374e3f:	3faccc37 	ee.vmulas.s8.qacc.ld.ip.qup	q7, a3, 0x1c0, q6, q5, q4, q4
40374e43:	403a80        	add	a3, a10, a4
40374e46:	c93f      	s32i.n	a12, a15, 12
40374e48:	4680c9        	j	0x4036744d
40374e4b:	3f840c03 	ee.vmulas.s16.accx.ld.ip.qup	q7, a3, 64, q6, q0, q0, q4
40374e4f:	42          	.byte	0x42
40374e50:	72          	.byte	0x72
40374e51:	80          	.byte	0x80
40374e52:	c93f      	s32i.n	a12, a15, 12
40374e54:	f469c9        	ee.vld.l.64.ip	q0, a15, -184
40374e57:	3f782dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a8, q5, q6, q2, q5
40374e5b:	3fc061c9 	ee.vmulas.u8.accx.ld.xp.qup	q2, a3, a0, q7, q0, q6, q1
40374e5f:	3f300800 	ee.vmulas.s16.accx.ld.ip.qup	q1, a3, 0, q4, q6, q0, q0
40374e63:	00          	.byte	00
40374e64:	f0          	.byte	0xf0
40374e65:	fffbff20 	ee.vmulas.s8.accx.ld.ip.qup	q1, a15, 176, q7, q7, q7, q7
40374e69:	00          	.byte	00
40374e6a:	040080        	ldinc	m0, a0
40374e6d:	2d          	.byte	0x2d
40374e6e:	ca3f      	add.n	a3, a15, a12
40374e70:	389b      	l32i.n	a3, a11, 36
40374e72:	3740e6        	ball	a0, a3, 0x40374e5c
40374e75:	cb08      	addi.n	a0, a8, 12
40374e77:	3c94      	movi.n	a4, 57
40374e79:	cc08      	bnez.n	a8, 0x40374e7d
40374e7b:	3c68      	movi.n	a8, 54
40374e7d:	cc08      	bnez.n	a8, 0x40374e81
40374e7f:	3c00      	movi.n	a0, 48
40374e81:	00          	.byte	00
40374e82:	f0fff4        	extui	a15, a15, 15, 16
40374e85:	010000        	l32r	a0, 0x40334e88
40374e88:	3c08      	movi.n	a8, 48
40374e8a:	0342a4        	ssi	f0, a2, 0x290
40374e8d:	cc08      	bnez.n	a8, 0x40374e91
40374e8f:	3c15      	movi.n	a5, 49
40374e91:	d2083c        	l8ui	a13, a8, 60
40374e94:	0f0c0000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a0, 192, q4, q0, q0, q0
40374e98:	d1cc08        	l32r	a13, 0x403371c8
40374e9b:	3cd9      	movi.n	a9, 61
40374e9d:	cc08      	bnez.n	a8, 0x40374ea1
40374e9f:	3c14      	movi.n	a4, 49
40374ea1:	0c00      	movi.n	a0, 0
40374ea3:	00          	.byte	00
40374ea4:	20cd08        	lsx	f12, a13, a2
40374ea7:	3cc6      	movi.n	a6, 60
40374ea9:	d2083c        	l8ui	a13, a8, 60
40374eac:	28cd      	l32i.n	a2, a13, 48
40374eae:	083c      	l32i.n	a0, a12, 12
40374eb0:	acd2      	beqz.n	a2, 0x40374ee1
40374eb2:	083c      	l32i.n	a0, a12, 12
40374eb4:	4acd      	add.n	a12, a13, a4
40374eb6:	083c      	l32i.n	a0, a12, 12
40374eb8:	67cd08        	bnall	a13, a6, 0x40374ec4
40374ebb:	3ca6      	movi.n	a6, 58
40374ebd:	cd08      	mov.n	a12, a8
40374ebf:	3ce5      	movi.n	a5, 62
40374ec1:	cd08      	mov.n	a12, a8
40374ec3:	3c98      	movi.n	a8, 57
40374ec5:	d2083c        	l8ui	a13, a8, 60
40374ec8:	00ce08        	lsx	f12, a14, a0
40374ecb:	3c4f      	movi.n	a15, 52
40374ecd:	ce083c8d 	ee.ldf.128.xp	f11, f8, f0, f3, a12, a8
40374ed1:	ce083c42 	ee.vmulas.u16.accx.ld.ip.qup	q5, a12, 128, q0, q0, q3, q4
40374ed5:	d2083c        	l8ui	a13, a8, 60
40374ed8:	9d          	.byte	0x9d
40374ed9:	ce083c30 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a12, 128, q0, q0, q3, q4
40374edd:	d2083c        	l8ui	a13, a8, 60
40374ee0:	bace      	add.n	a12, a14, a11
40374ee2:	083c      	l32i.n	a0, a12, 12
40374ee4:	11cf08        	l32r	a1, 0x40337220
40374ee7:	3c5e      	movi.n	a14, 53
40374ee9:	cf083cb1 	ee.vmulas.s16.accx.ld.xp.qup	q3, a12, a8, q4, q0, q3, q4
40374eed:	cf083c4a 	ee.vmulas.u16.accx.ld.ip.qup	q5, a12, 0xfffffe80, q4, q0, q3, q4
40374ef1:	d0          	.byte	0xd0
40374ef2:	083c      	l32i.n	a0, a12, 12
40374ef4:	7fd2083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a7, -224, q7, q2, q0, q0
40374ef8:	fcd1      	bnez.n	a1, 0x40374f39
40374efa:	083c      	l32i.n	a0, a12, 12
40374efc:	ead1      	add.n	a13, a1, a14
40374efe:	083c      	l32i.n	a0, a12, 12
40374f00:	52d008        	addmi	a5, a0, 0x800
40374f03:	3c6b      	movi.n	a11, 54
40374f05:	d0          	.byte	0xd0
40374f06:	083c      	l32i.n	a0, a12, 12
40374f08:	ccd0      	bnez.n	a0, 0x40374f19
40374f0a:	083c      	l32i.n	a0, a12, 12
40374f0c:	dcd1      	bnez.n	a1, 0x40374f2d
40374f0e:	083c      	l32i.n	a0, a12, 12
40374f10:	d8d0      	l32i.n	a13, a0, 52
40374f12:	083c      	l32i.n	a0, a12, 12
40374f14:	c8d1      	l32i.n	a12, a1, 52
40374f16:	083c      	l32i.n	a0, a12, 12
40374f18:	66d208        	bnei	a2, 64, 0x40374f24
40374f1b:	3cbd      	movi.n	a13, 59
40374f1d:	d1083c        	l32r	a13, 0x40343f40
40374f20:	a8d1      	l32i.n	a10, a1, 52
40374f22:	083c      	l32i.n	a0, a12, 12
40374f24:	32d108        	addmi	a3, a1, 0x800
40374f27:	3c21      	movi.n	a1, 50
40374f29:	cd08      	mov.n	a12, a8
40374f2b:	3c91      	movi.n	a1, 57
40374f2d:	d1083c        	l32r	a13, 0x40343f50
40374f30:	260800        	beqi	a8, -1, 0x40374f34
40374f33:	0084d1        	mul16s	a8, a4, a0
40374f36:	083c      	l32i.n	a0, a12, 12
40374f38:	530800        	lsi	f5, a8, 0
40374f3b:	00          	.byte	00
40374f3c:	242eca        	ee.vst.128.ip	q0, a2, 0xfffffae0
40374f3f:	3fa42dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a4, q6, q4, q2, q5
40374f43:	3fd9d208 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 0xfffffe90, q7, q3, q5, q2
40374f47:	3c7e      	movi.n	a14, 55
40374f49:	d808      	l32i.n	a13, a8, 0
40374f4b:	3c01      	movi.n	a1, 48
40374f4d:	120000        	l8ui	a1, a0, 0
40374f50:	f8d2      	l32i.n	a15, a2, 52
40374f52:	083c      	l32i.n	a0, a12, 12
40374f54:	00d308        	lsx	f13, a3, a0
40374f57:	3c71      	movi.n	a1, 55
40374f59:	d808      	l32i.n	a13, a8, 0
40374f5b:	3cf3      	movi.n	a3, 63
40374f5d:	110000        	l32r	a1, 0x40334f60
40374f60:	405b04        	extui	a5, a4, 11, 1
40374f63:	42206a        	l32i	a4, a0, 0x1a8
40374f66:	c93f      	s32i.n	a12, a15, 12
40374f68:	e42dca        	ee.vst.128.ip	q0, a14, 0xfffffad0
40374f6b:	3f010000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 16, q4, q0, q0, q0
40374f6f:	80          	.byte	0x80
40374f70:	ec2d      	bnez.n	a13, 0x40374f96
40374f72:	ca3f      	add.n	a3, a15, a12
40374f74:	e02dca        	float.s	f2, a13, 14
40374f77:	3fc82dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a8, q7, q0, q2, q5
40374f7b:	3f44c202 	ee.vmulas.s16.accx.ld.ip.qup	q4, a3, 64, q5, q1, q4, q2
40374f7f:	42c42d        	addi	a4, a4, 45
40374f82:	ca3f      	add.n	a3, a15, a12
40374f84:	cc2d      	bnez.n	a13, 0x40374f8a
40374f86:	ca3f      	add.n	a3, a15, a12
40374f88:	202eca        	float.s	f2, a14, 2
40374f8b:	3f502eca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a0, q5, q2, q2, q6
40374f8f:	3f3c2eca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a12, q4, q6, q2, q6
40374f93:	3f282eca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a8, q4, q4, q2, q6
40374f97:	3ff82dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a8, q7, q6, q2, q5
40374f9b:	3f0c2eca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a12, q4, q0, q2, q6
40374f9f:	3fbc2dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a12, q6, q6, q2, q5
40374fa3:	3fa82dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a8, q6, q4, q2, q5
40374fa7:	3fc02dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a0, q7, q0, q2, q5
40374fab:	3f32d308 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 0xfffffe20, q4, q7, q5, q3
40374faf:	3c97      	movi.n	a7, 57
40374fb1:	d808      	l32i.n	a13, a8, 0
40374fb3:	3c56      	movi.n	a6, 53
40374fb5:	d3083c        	lsi	f13, a8, 240
40374fb8:	7d          	.byte	0x7d
40374fb9:	d3083c        	lsi	f13, a8, 240
40374fbc:	b4          	.byte	0xb4
40374fbd:	d3083c        	lsi	f13, a8, 240
40374fc0:	942dca        	ee.vst.128.ip	q0, a9, 0xfffffad0
40374fc3:	3fcdd308 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 0xfffffed0, q7, q1, q5, q3
40374fc7:	3cfa      	movi.n	a10, 63
40374fc9:	d7083c        	bnone	a8, a13, 0x40375009
40374fcc:	740b00        	ee.ld.qacc_l.l.128.ip	a7, 176
40374fcf:	00          	.byte	00
40374fd0:	9c2d      	beqz.n	a13, 0x40374fe6
40374fd2:	ca3f      	add.n	a3, a15, a12
40374fd4:	d7d308        	bbs	a3, a13, 0x40374fe0
40374fd7:	3c75      	movi.n	a5, 55
40374fd9:	0b00      	addi.n	a0, a0, -1
40374fdb:	0001d4        	extui	a0, a0, 1, 14
40374fde:	083c      	l32i.n	a0, a12, 12
40374fe0:	e7d708        	bbs	a7, a14, 0x40374fec
40374fe3:	3c35      	movi.n	a5, 51
40374fe5:	0c00      	movi.n	a0, 0
40374fe7:	00          	.byte	00
40374fe8:	ac2d      	beqz.n	a13, 0x4037500e
40374fea:	ca3f      	add.n	a3, a15, a12
40374fec:	b82d      	l32i.n	a11, a13, 8
40374fee:	ca3f      	add.n	a3, a15, a12
40374ff0:	b02dca        	float.s	f2, a13, 11
40374ff3:	3f8c2dca 	ee.vmulas.u8.accx.ld.xp.qup	q5, a3, a12, q6, q0, q2, q5
40374ff7:	3fd3d708 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 0xfffffe30, q7, q3, q5, q7
40374ffb:	3c77      	movi.n	a7, 55
40374ffd:	d4          	.byte	0xd4
40374ffe:	083c      	l32i.n	a0, a12, 12
40375000:	b2d708        	addmi	a11, a7, 0x800
40375003:	3c76      	movi.n	a6, 55
40375005:	0d00      	mov.n	a0, a0
40375007:	000c12        	andbc	b0, b12, b0
4037500a:	004090        	addx2	a4, a0, a0
4037500d:	d4          	.byte	0xd4
4037500e:	083c      	l32i.n	a0, a12, 12
40375010:	9cd7      	beqz.n	a7, 0x40375031
40375012:	083c      	l32i.n	a0, a12, 12
40375014:	e40d00        	ee.ld.qacc_l.l.128.ip	a14, 208
40375017:	009cd4        	extui	a9, a0, 12, 14
4037501a:	083c      	l32i.n	a0, a12, 12
4037501c:	83          	.byte	0x83
4037501d:	d7083c        	bnone	a8, a13, 0x4037505d
40375020:	480e      	l32i.n	a4, a14, 0
40375022:	0000ab        	movltz.s	f0, f0, a0
40375025:	d4          	.byte	0xd4
40375026:	083c      	l32i.n	a0, a12, 12
40375028:	6ed7083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a6, -144, q3, q2, q0, q0
4037502c:	e40e00        	ee.ld.qacc_l.l.128.ip	a14, 224
4037502f:	00b5d4        	extui	a11, a0, 5, 14
40375032:	083c      	l32i.n	a0, a12, 12
40375034:	e50e00        	call8	0x40375124
40375037:	00c3d4        	extui	a12, a0, 3, 14
4037503a:	083c      	l32i.n	a0, a12, 12
4037503c:	55d808        	call4	0x4037ddc4
4037503f:	3cde      	movi.n	a14, 61
40375041:	d4          	.byte	0xd4
40375042:	083c      	l32i.n	a0, a12, 12
40375044:	48d8      	l32i.n	a4, a8, 52
40375046:	083c      	l32i.n	a0, a12, 12
40375048:	17d808        	bbs	a8, a1, 0x40375054
4037504b:	3c83      	movi.n	a3, 56
4037504d:	0a00      	add.n	a0, a0, a0
4037504f:	00edd4        	extui	a14, a0, 13, 14
40375052:	083c      	l32i.n	a0, a12, 12
40375054:	8bd8      	addi.n	a13, a8, 8
40375056:	083c      	l32i.n	a0, a12, 12
40375058:	66d808        	bnei	a8, 64, 0x40375064
4037505b:	3c1e      	movi.n	a14, 49
4037505d:	d5083c        	call4	0x403b10ec
40375060:	25d808        	call8	0x4037dde4
40375063:	3ccf      	movi.n	a15, 60
40375065:	0900      	s32i.n	a0, a0, 0
40375067:	004fd5        	extui	a4, a0, 31, 14
4037506a:	083c      	l32i.n	a0, a12, 12
4037506c:	0c0a      	movi.n	a10, 0
4037506e:	000072        	salt	a0, a0, a0
40375071:	d5083c        	call4	0x403b1100
40375074:	56d708        	bnez	a7, 0x40375105
40375077:	3ccd      	movi.n	a13, 60
40375079:	120000        	l8ui	a1, a0, 0
4037507c:	9ad5      	add.n	a13, a5, a9
4037507e:	083c      	l32i.n	a0, a12, 12
40375080:	ce120000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a12, 32, q0, q2, q0, q0
40375084:	32d708        	addmi	a3, a7, 0x800
40375087:	3c1f      	movi.n	a15, 49
40375089:	130000        	lsi	f1, a0, 0
4037508c:	afd5083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a10, -176, q7, q2, q0, q0
40375090:	3a13      	add.n	a1, a3, a3
40375092:	0000d7        	ee.stf.64.xp	f0, f13, a0, a0
40375095:	d5083c        	call4	0x403b1124
40375098:	1ad7      	add.n	a13, a7, a1
4037509a:	083c      	l32i.n	a0, a12, 12
4037509c:	fa14      	add.n	a1, a4, a15
4037509e:	00          	.byte	00
4037509f:	00fdd5        	extui	a15, a0, 29, 14
403750a2:	083c      	l32i.n	a0, a12, 12
403750a4:	fcd6      	bnez.n	a6, 0x403750e5
403750a6:	083c      	l32i.n	a0, a12, 12
403750a8:	ae160000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a10, 96, q0, q2, q0, q0
403750ac:	e9d5      	s32i.n	a14, a5, 52
403750ae:	083c      	l32i.n	a0, a12, 12
403750b0:	af160000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a10, 96, q4, q2, q0, q0
403750b4:	3d          	.byte	0x3d
403750b5:	d6083c        	bgez	a8, 0x40375479
403750b8:	d51600        	call4	0x40375228
403750bb:	00e7d6        	ee.ldf.64.xp	f14, f13, a0, a7
403750be:	083c      	l32i.n	a0, a12, 12
403750c0:	b3          	.byte	0xb3
403750c1:	d6083c        	bgez	a8, 0x40375485
403750c4:	d0d608        	lsx	f13, a6, a13
403750c7:	3cc8      	movi.n	a8, 60
403750c9:	df3740d5 	ee.fft.ams.s16.ld.incp.uaup	q7, a13, q6, q4, q4, q4, q0, 0
403750cd:	d6083c        	bgez	a8, 0x40375491
403750d0:	34          	.byte	0x34
403750d1:	d808      	l32i.n	a13, a8, 0
403750d3:	3c58      	movi.n	a8, 53
403750d5:	0900      	s32i.n	a0, a0, 0
403750d7:	00          	.byte	00
403750d8:	68a9      	l32i.n	a6, a9, 40
403750da:	093c      	s32i.n	a0, a12, 12
403750dc:	68a9      	l32i.n	a6, a9, 40
403750de:	093c      	s32i.n	a0, a12, 12
403750e0:	300005        	extui	a0, a3, 16, 1
403750e3:	001000        	movsp	a0, a0
403750e6:	000020        	or	a0, a0, a0
403750e9:	01063c        	l32r	a0, 0x40344104
403750ec:	0fc9083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a0, -112, q7, q0, q0, q0
403750f0:	94          	.byte	0x94
403750f1:	ca08      	add.n	a0, a8, a12
403750f3:	3c50      	movi.n	a0, 53
403750f5:	c908      	s32i.n	a12, a8, 0
403750f7:	3c58      	movi.n	a8, 53
403750f9:	c908      	s32i.n	a12, a8, 0
403750fb:	3c83      	movi.n	a3, 56
403750fd:	ca08      	add.n	a0, a8, a12
403750ff:	3c8b      	movi.n	a11, 56
40375101:	c908      	s32i.n	a12, a8, 0
40375103:	3c66      	movi.n	a6, 54
40375105:	660000        	bnei	a0, -1, 0x40375109
40375108:	000000        	ill
4037510b:	c30100        	lsi	f12, a1, 0
4037510e:	c0          	.byte	0xc0
4037510f:	4c98      	movi.n	a8, 73
40375111:	c908      	s32i.n	a12, a8, 0
40375113:	3cc8      	movi.n	a8, 60
40375115:	c908      	s32i.n	a12, a8, 0
40375117:	3cf8      	movi.n	a8, 63
40375119:	c908      	s32i.n	a12, a8, 0
4037511b:	3c64      	movi.n	a4, 54
4037511d:	2d          	.byte	0x2d
4037511e:	ca3f      	add.n	a3, a15, a12
40375120:	5c2d      	movi.n	a13, 82
40375122:	ca3f      	add.n	a3, a15, a12
40375124:	b4          	.byte	0xb4
40375125:	000342        	xorb	b0, b3, b0
40375128:	72ca08        	addi	a7, a10, 8
4037512b:	3c0c      	movi.n	a12, 48
4037512d:	ca08      	add.n	a0, a8, a12
4037512f:	3c24      	movi.n	a4, 50
40375131:	ca08      	add.n	a0, a8, a12
40375133:	3c38      	movi.n	a8, 51
40375135:	ca08      	add.n	a0, a8, a12
40375137:	3c5e      	movi.n	a14, 53
40375139:	ca08      	add.n	a0, a8, a12
4037513b:	3c74      	movi.n	a4, 55
4037513d:	130040        	lsi	f1, a0, 0x100
40375140:	742dca        	ee.vst.128.ip	q0, a7, 0xfffffad0
40375143:	3f001200 	ee.vmulas.s16.accx.ld.ip.qup	q0, a3, 0, q4, q0, q1, q2
40375147:	0030cb        	movf.s	f3, f0, b0
4037514a:	083c      	l32i.n	a0, a12, 12
4037514c:	04          	.byte	0x4
4037514d:	cc05      	bnez.n	a5, 0x40375151
4037514f:	42          	.byte	0x42
40375150:	35cb08        	call12	0x4037de04
40375153:	3cc9      	movi.n	a9, 60
40375155:	cb08      	addi.n	a0, a8, 12
40375157:	3c61      	movi.n	a1, 54
40375159:	cb08      	addi.n	a0, a8, 12
4037515b:	3c60      	movi.n	a0, 54
4037515d:	c30242        	lsi	f12, a2, 0x108
40375160:	b4          	.byte	0xb4
40375161:	c30242        	lsi	f12, a2, 0x108
40375164:	d8c1      	l32i.n	a13, a1, 48
40375166:	02426f        	s8i	a0, a2, 111
40375169:	cb08      	addi.n	a0, a8, 12
4037516b:	3ca1      	movi.n	a1, 58
4037516d:	cb08      	addi.n	a0, a8, 12
4037516f:	3c87      	movi.n	a7, 56
40375171:	cb08      	addi.n	a0, a8, 12
40375173:	3c00      	movi.n	a0, 48
40375175:	c0          	.byte	0xc0
40375176:	ff          	.byte	0xff
40375177:	ffffff0f 	ee.vmulas.s16.accx.ld.ip.qup	q7, a15, -16, q7, q7, q7, q7
4037517b:	c0          	.byte	0xc0
4037517c:	ff          	.byte	0xff
4037517d:	03          	.byte	0x3
4037517e:	f0          	.byte	0xf0
4037517f:	ff0000f0 	ee.vmulas.s16.accx.ld.ip	q0, a15, 0, q4, q0
40375183:	03          	.byte	0x3
40375184:	bc80      	beqz.n	a0, 0x403751c0
40375186:	00          	.byte	00
40375187:	604c00        	break	12, 6
4037518a:	0c60      	movi.n	a0, 6
4037518c:	44          	.byte	0x44
4037518d:	c0          	.byte	0xc0
4037518e:	0c60      	movi.n	a0, 6
40375190:	40          	.byte	0x40
40375191:	c0          	.byte	0xc0
40375192:	0c60      	movi.n	a0, 6
40375194:	48c0      	l32i.n	a4, a0, 48
40375196:	0c60      	movi.n	a0, 6
40375198:	00          	.byte	00
40375199:	c0          	.byte	0xc0
4037519a:	0c60      	movi.n	a0, 6
4037519c:	4cc0      	movi.n	a0, 76
4037519e:	0c60      	movi.n	a0, 6
403751a0:	58c0      	l32i.n	a5, a0, 48
403751a2:	0c60      	movi.n	a0, 6
403751a4:	50          	.byte	0x50
403751a5:	c0          	.byte	0xc0
403751a6:	0c60      	movi.n	a0, 6
403751a8:	54          	.byte	0x54
403751a9:	c0          	.byte	0xc0
403751aa:	0c60      	movi.n	a0, 6
403751ac:	ff          	.byte	0xff
403751ad:	ff          	.byte	0xff
403751ae:	3f          	.byte	0x3f
403751af:	f8ff      	l32i.n	a15, a15, 60
403751b1:	ffc1ff00 	ee.vmulas.s16.accx.ld.ip.qup	q1, a15, 16, q7, q1, q7, q7
403751b5:	0000f0        	subx8	a0, a0, a0
403751b8:	9f          	.byte	0x9f
403751b9:	3cff      	movi.n	a15, 63
403751bb:	ff          	.byte	0xff
403751bc:	ff          	.byte	0xff
403751bd:	cf          	.byte	0xcf
403751be:	ff          	.byte	0xff
403751bf:	ffffff03 	ee.vmulas.s16.accx.ld.ip.qup	q7, a15, 240, q7, q7, q7, q7
403751c3:	000000        	ill
403751c6:	fcff      	bnez.n	a15, 0x40375209
403751c8:	000080        	add	a0, a0, a0
403751cb:	00          	.byte	00
403751cc:	8f          	.byte	0x8f
403751cd:	bd          	.byte	0xbd
403751ce:	6ffe0000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a6, 224, q7, q6, q0, q0
403751d2:	00          	.byte	00
403751d3:	5c00      	movi.n	a0, 80
403751d5:	000002        	andb	b0, b0, b0
403751d8:	003002        	andb	b3, b0, b0
403751db:	60          	.byte	0x60
403751dc:	ffff0f00 	ee.vmulas.s16.accx.ld.ip.qup	q1, a15, 240, q7, q6, q0, q7
403751e0:	82          	.byte	0x82
403751e1:	80          	.byte	0x80
403751e2:	c93f      	s32i.n	a12, a15, 12
403751e4:	ca80      	add.n	a8, a0, a12
403751e6:	c93f      	s32i.n	a12, a15, 12
403751e8:	9580c9        	call4	0x4033e9f4
403751eb:	3f00f001 	ee.vmulas.s16.accx.ld.ip.qup	q2, a3, 0, q4, q1, q7, q0
403751ef:	60          	.byte	0x60
403751f0:	000002        	andb	b0, b0, b0
403751f3:	60          	.byte	0x60
403751f4:	a13ad8        	l32r	a10, 0x4036b2dc
403751f7:	50          	.byte	0x50
403751f8:	ffffff8f 	ee.ldf.128.xp	f15, f15, f15, f15, a15, a15
403751fc:	ff          	.byte	0xff
403751fd:	ff          	.byte	0xff
403751fe:	ff          	.byte	0xff
403751ff:	f1ffff        	l32r	a15, 0x403751fc (0xf1ffffff)
40375202:	3f          	.byte	0x3f
40375203:	feffffc7 	ee.vmulas.u16.qacc.ld.xp.qup	q7, a15, a15, q3, q7, q7, q7
40375207:	ff000007 	ee.vmulas.s16.accx.ld.ip.qup	q6, a15, 0x100, q4, q0, q0, q0
4037520b:	00          	.byte	00
4037520c:	ffffff9f 	ee.stf.128.xp	f15, f15, f15, f15, a15, a15
40375210:	ff          	.byte	0xff
40375211:	ff          	.byte	0xff
40375212:	ff          	.byte	0xff
40375213:	f9ff      	s32i.n	a15, a15, 60
40375215:	ff7ffe00 	ee.vmulas.s16.accx.ld.ip.qup	q1, a15, 240, q5, q7, q7, q6
40375219:	001c00        	movsp	a0, a12
4037521c:	008003        	rsr.ibreaka0	a0
4037521f:	00          	.byte	00
40375220:	5d          	.byte	0x5d
40375221:	9908      	s32i.n	a9, a8, 0
40375223:	3c1c      	movi.n	a12, 49
40375225:	9b08      	addi.n	a0, a8, 9
40375227:	3c6c      	movi.n	a12, 54
40375229:	95083c        	call4	0x403b12b4
4037522c:	959908        	call4	0x4037dbc8
4037522f:	3c0b      	movi.n	a11, 48
40375231:	9b08      	addi.n	a0, a8, 9
40375233:	3cc1      	movi.n	a1, 60
40375235:	9908      	s32i.n	a9, a8, 0
40375237:	3c95      	movi.n	a5, 57
40375239:	96083c        	bltz	a8, 0x403755fd
4037523c:	7c9b      	movi.n	a11, -7
4037523e:	083c      	l32i.n	a0, a12, 12
40375240:	bf96083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a11, -160, q6, q2, q0, q0
40375244:	079a08        	bne	a10, a0, 0x40375250
40375247:	3cfe      	movi.n	a14, 63
40375249:	9a08      	add.n	a0, a8, a9
4037524b:	3c3e      	movi.n	a14, 51
4037524d:	9a08      	add.n	a0, a8, a9
4037524f:	3ced      	movi.n	a13, 62
40375251:	9a08      	add.n	a0, a8, a9
40375253:	3c6a      	movi.n	a10, 54
40375255:	9a08      	add.n	a0, a8, a9
40375257:	3c27      	movi.n	a7, 50
40375259:	95083c        	call4	0x403b12e4
4037525c:	8e9b083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a8, -80, q2, q2, q0, q0
40375260:	7895      	l32i.n	a7, a5, 36
40375262:	083c      	l32i.n	a0, a12, 12
40375264:	de97083c 	ee.vmulas.s8.qacc.ld.ip.qup	q1, a13, -144, q2, q2, q0, q0
40375268:	429b08        	l16si	a4, a11, 16
4037526b:	3c17      	movi.n	a7, 49
4037526d:	9808      	l32i.n	a9, a8, 0
4037526f:	3c58      	movi.n	a8, 53
40375271:	9b08      	addi.n	a0, a8, 9
40375273:	3c31      	movi.n	a1, 51
40375275:	9808      	l32i.n	a9, a8, 0
40375277:	3c32      	movi.n	a2, 51
40375279:	9b08      	addi.n	a0, a8, 9
4037527b:	3c5e      	movi.n	a14, 53
4037527d:	9808      	l32i.n	a9, a8, 0
4037527f:	3c26      	movi.n	a6, 50
40375281:	9b08      	addi.n	a0, a8, 9
40375283:	3c          	.byte	0x3c
