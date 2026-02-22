4200adaa:	8953      	s32i.n	a8, a3, 20
4200adac:	3842      	l32i.n	a3, a2, 16
4200adae:	a942      	s32i.n	a10, a2, 16
4200adb0:	3921      	s32i.n	a3, a1, 8
4200adb2:	3852      	l32i.n	a3, a2, 20
4200adb4:	cba1      	addi.n	a10, a1, 12
4200adb6:	9952      	s32i.n	a9, a2, 20
4200adb8:	3931      	s32i.n	a3, a1, 12
4200adba:	a5e84e        	call8	0x42059c44
4200adbd:	1df0      	retw.n
4200adbf:	003641        	srli	a3, a0, 6
4200adc2:	0081b4        	extui	a8, a0, 1, 12
4200adc5:	d4a2c2        	ee.vldbc.32.ip	q1, a13, 0xfffffe88
4200adc8:	14          	.byte	0x14
4200adc9:	8902      	s32i.n	a8, a2, 0
4200adcb:	a5e74e        	call8	0x42059c44
4200adce:	1df0      	retw.n
4200add0:	364101        	entry	a1, 160
4200add3:	41aed4        	l32r	a4, 0x4200008c (0x3fca2abc)
4200add6:	31d0d6        	l32r	a3, 0x42000918 (0x3c060609)
4200add9:	c02000        	memw
4200addc:	222400        	l32i	a2, a4, 0
4200addf:	30b320        	or	a11, a3, a3
4200ade2:	a2c12c        	addi	a10, a1, 44
4200ade5:	c02000        	memw
4200ade8:	22611f        	s32i	a2, a1, 124
4200adeb:	101120        	or	a1, a1, a1
4200adee:	e51613        	call8	0x4201df5c
4200adf1:	21cad6        	l32r	a2, 0x4200091c (0x3fca1e64)
4200adf4:	b2c12c        	addi	a11, a1, 44
4200adf7:	20a220        	or	a10, a2, a2
4200adfa:	101120        	or	a1, a1, a1
4200adfd:	25cb08        	call8	0x42013ab0
4200ae00:	a2c12c        	addi	a10, a1, 44
4200ae03:	101120        	or	a1, a1, a1
4200ae06:	e5fb12        	call8	0x4201ddc4
4200ae09:	30b320        	or	a11, a3, a3
4200ae0c:	a2c12c        	addi	a10, a1, 44
4200ae0f:	101120        	or	a1, a1, a1
4200ae12:	a51413        	call8	0x4201df5c
4200ae15:	d1c2d6        	l32r	a13, 0x42000920 (0x3c06129a)
4200ae18:	0c1e      	movi.n	a14, 1
4200ae1a:	c2c12c        	addi	a12, a1, 44
4200ae1d:	bd02      	mov.n	a11, a2
4200ae1f:	a2c114        	addi	a10, a1, 20
4200ae22:	101120        	or	a1, a1, a1
4200ae25:	25d008        	call8	0x42013b28
4200ae28:	a2c12c        	addi	a10, a1, 44
4200ae2b:	101120        	or	a1, a1, a1
4200ae2e:	65f912        	call8	0x4201ddc4
4200ae31:	b1bcd6        	l32r	a11, 0x42000924 (0x3c060613)
4200ae34:	a2c114        	addi	a10, a1, 20
4200ae37:	101120        	or	a1, a1, a1
4200ae3a:	e55d12        	call8	0x4201d418
4200ae3d:	2198d4        	l32r	a2, 0x420000a0 (0x3fc949dc)
4200ae40:	0c03      	movi.n	a3, 0
4200ae42:	8196d4        	l32r	a8, 0x4200009c (0x270f)
4200ae45:	d21200        	l16ui	a13, a2, 0
4200ae48:	8080f4        	extui	a8, a8, 0, 16
4200ae4b:	1b33      	addi.n	a3, a3, 1
4200ae4d:	871d24        	beq	a13, a8, 0x4200ae75
4200ae50:	829202        	l16si	a8, a2, 4
4200ae53:	f20203        	l8ui	a15, a2, 3
4200ae56:	e20202        	l8ui	a14, a2, 2
4200ae59:	b1b3d6        	l32r	a11, 0x42000928 (0x3c060618)
4200ae5c:	8901      	s32i.n	a8, a1, 0
4200ae5e:	cd03      	mov.n	a12, a3
4200ae60:	a2c12c        	addi	a10, a1, 44
4200ae63:	101120        	or	a1, a1, a1
4200ae66:	e51d3b        	call8	0x42046044
4200ae69:	b2c12c        	addi	a11, a1, 44
4200ae6c:	a2c114        	addi	a10, a1, 20
4200ae6f:	101120        	or	a1, a1, a1
4200ae72:	655a12        	call8	0x4201d418
4200ae75:	22c206        	addi	a2, a2, 6
4200ae78:	66d3c6        	bnei	a3, 64, 0x4200ae42
4200ae7b:	a2c114        	addi	a10, a1, 20
4200ae7e:	101120        	or	a1, a1, a1
4200ae81:	65b708        	call8	0x420139f8
4200ae84:	a2c114        	addi	a10, a1, 20
4200ae87:	101120        	or	a1, a1, a1
4200ae8a:	e5cb08        	call8	0x42013b48
4200ae8d:	a2c114        	addi	a10, a1, 20
4200ae90:	101120        	or	a1, a1, a1
4200ae93:	e5f2ff        	call8	0x4200adc0
4200ae96:	c02000        	memw
4200ae99:	32211f        	l32i	a3, a1, 124
4200ae9c:	c02000        	memw
4200ae9f:	2804      	l32i.n	a2, a4, 0
4200aea1:	271323        	beq	a3, a2, 0x4200aec8
4200aea4:	817bd4        	l32r	a8, 0x42000090 (0x40377780)
4200aea7:	e00800        	callx8	a8
4200aeaa:	a2c12c        	addi	a10, a1, 44
4200aead:	101120        	or	a1, a1, a1
4200aeb0:	25f112        	call8	0x4201ddc4
4200aeb3:	20a220        	or	a10, a2, a2
4200aeb6:	101120        	or	a1, a1, a1
4200aeb9:	65d535        	call8	0x42040c10
4200aebc:	86faff        	j	0x4200aeaa
4200aebf:	a2c114        	addi	a10, a1, 20
4200aec2:	e5efff        	call8	0x4200adc0
4200aec5:	86faff        	j	0x4200aeb3
4200aec8:	1df0      	retw.n
4200aeca:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4200aecd:	810131        	l32r	a8, 0x41fd72d4
4200aed0:	6fd45196 	ee.stf.128.ip	f12, f3, f13, f5, a6, 64
4200aed4:	d6c020        	bgez	a0, 0x4200b0e4
4200aed7:	002223        	sext	a2, a2, 7
4200aeda:	00bd05        	extui	a11, a0, 29, 1
4200aedd:	a2c11c        	addi	a10, a1, 28
4200aee0:	c02000        	memw
4200aee3:	226127        	s32i	a2, a1, 156
4200aee6:	101120        	or	a1, a1, a1
4200aee9:	250713        	call8	0x4201df5c
4200aeec:	218cd6        	l32r	a2, 0x4200091c (0x3fca1e64)
4200aeef:	b2c11c        	addi	a11, a1, 28
4200aef2:	ad02      	mov.n	a10, a2
4200aef4:	42af7c        	movi	a4, -132
4200aef7:	101120        	or	a1, a1, a1
4200aefa:	65bb08        	call8	0x42013ab0
4200aefd:	a2c11c        	addi	a10, a1, 28
4200af00:	101120        	or	a1, a1, a1
4200af03:	25ec12        	call8	0x4201ddc4
4200af06:	50b520        	or	a11, a5, a5
4200af09:	a2c11c        	addi	a10, a1, 28
4200af0c:	101120        	or	a1, a1, a1
4200af0f:	e50413        	call8	0x4201df5c
4200af12:	bd02      	mov.n	a11, a2
4200af14:	d183d6        	l32r	a13, 0x42000920 (0x3c06129a)
4200af17:	22c1a0        	addi	a2, a1, -96
4200af1a:	0c1e      	movi.n	a14, 1
4200af1c:	c2c11c        	addi	a12, a1, 28
4200af1f:	a2c264        	addi	a10, a2, 100
4200af22:	101120        	or	a1, a1, a1
4200af25:	25c008        	call8	0x42013b28
4200af28:	22a0a0        	movi	a2, 160
4200af2b:	1a22      	add.n	a2, a2, a1
4200af2d:	4aa2      	add.n	a10, a2, a4
4200af2f:	101120        	or	a1, a1, a1
4200af32:	25e912        	call8	0x4201ddc4
4200af35:	42a0a0        	movi	a4, 160
4200af38:	a2af64        	movi	a10, -156
4200af3b:	1a44      	add.n	a4, a4, a1
4200af3d:	b17cd6        	l32r	a11, 0x42000930 (0x3c060639)
4200af40:	a0a480        	add	a10, a4, a10
4200af43:	101120        	or	a1, a1, a1
4200af46:	254d12        	call8	0x4201d418
4200af49:	4174d5        	l32r	a4, 0x4200051c (0x3c061864)
4200af4c:	0c02      	movi.n	a2, 0
4200af4e:	52a1e5        	movi	a5, 0x1e5
4200af51:	b178d6        	l32r	a11, 0x42000934 (0x3c06063e)
4200af54:	d814      	l32i.n	a13, a4, 4
4200af56:	c804      	l32i.n	a12, a4, 0
4200af58:	a2c11c        	addi	a10, a1, 28
4200af5b:	101120        	or	a1, a1, a1
4200af5e:	650e3b        	call8	0x42046044
4200af61:	b2c11c        	addi	a11, a1, 28
4200af64:	a2c104        	addi	a10, a1, 4
4200af67:	101120        	or	a1, a1, a1
4200af6a:	e54a12        	call8	0x4201d418
4200af6d:	1b22      	addi.n	a2, a2, 1
4200af6f:	8b44      	addi.n	a4, a4, 8
4200af71:	5792dc        	bne	a2, a5, 0x4200af51
4200af74:	42a0a0        	movi	a4, 160
4200af77:	22af64        	movi	a2, -156
4200af7a:	1a44      	add.n	a4, a4, a1
4200af7c:	2aa4      	add.n	a10, a4, a2
4200af7e:	101120        	or	a1, a1, a1
4200af81:	65a708        	call8	0x420139f8
4200af84:	42a0a0        	movi	a4, 160
4200af87:	1a44      	add.n	a4, a4, a1
4200af89:	2aa4      	add.n	a10, a4, a2
4200af8b:	101120        	or	a1, a1, a1
4200af8e:	a5bb08        	call8	0x42013b48
4200af91:	ad02      	mov.n	a10, a2
4200af93:	22a0a0        	movi	a2, 160
4200af96:	1a22      	add.n	a2, a2, a1
4200af98:	aaa2      	add.n	a10, a2, a10
4200af9a:	101120        	or	a1, a1, a1
4200af9d:	25e2ff        	call8	0x4200adc0
4200afa0:	c02000        	memw
4200afa3:	422127        	l32i	a4, a1, 156
4200afa6:	c02000        	memw
4200afa9:	2803      	l32i.n	a2, a3, 0
4200afab:	271431        	beq	a4, a2, 0x4200afe0
4200afae:	8138d4        	l32r	a8, 0x42000090 (0x40377780)
4200afb1:	e00800        	callx8	a8
4200afb4:	32a0a0        	movi	a3, 160
4200afb7:	1a33      	add.n	a3, a3, a1
4200afb9:	4aa3      	add.n	a10, a3, a4
4200afbb:	101120        	or	a1, a1, a1
4200afbe:	65e012        	call8	0x4201ddc4
4200afc1:	ad02      	mov.n	a10, a2
4200afc3:	101120        	or	a1, a1, a1
4200afc6:	a5c435        	call8	0x42040c10
4200afc9:	c6f9ff        	j	0x4200afb4
4200afcc:	42a0a0        	movi	a4, 160
4200afcf:	1a44      	add.n	a4, a4, a1
4200afd1:	a2af64        	movi	a10, -156
4200afd4:	aaa4      	add.n	a10, a4, a10
4200afd6:	101120        	or	a1, a1, a1
4200afd9:	65deff        	call8	0x4200adc0
4200afdc:	46f8ff        	j	0x4200afc1
4200afdf:	001df0        	subx8	a1, a13, a0
4200afe2:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4200afe5:	e10051        	l32r	a14, 0x41fdf3e8
4200afe8:	29d4      	s32i.n	a2, a4, 52
4200afea:	b153d6        	l32r	a11, 0x42000938 (0x3c060645)
4200afed:	c02000        	memw
4200aff0:	2805      	l32i.n	a2, a5, 0
4200aff2:	a2c138        	addi	a10, a1, 56
4200aff5:	c02000        	memw
4200aff8:	226113        	s32i	a2, a1, 76
4200affb:	101120        	or	a1, a1, a1
4200affe:	e5f512        	call8	0x4201df5c
4200b001:	d14ed6        	l32r	a13, 0x4200093c (0x3c0615f9)
4200b004:	b146d6        	l32r	a11, 0x4200091c (0x3fca1e64)
4200b007:	0c0e      	movi.n	a14, 0
4200b009:	c2c138        	addi	a12, a1, 56
4200b00c:	10a120        	or	a10, a1, a1
4200b00f:	101120        	or	a1, a1, a1
4200b012:	65b108        	call8	0x42013b28
4200b015:	a2c138        	addi	a10, a1, 56
4200b018:	101120        	or	a1, a1, a1
4200b01b:	a5da12        	call8	0x4201ddc4
4200b01e:	ad01      	mov.n	a10, a1
4200b020:	101120        	or	a1, a1, a1
4200b023:	e5ca4e        	call8	0x42059cd0
4200b026:	ccea      	bnez.n	a10, 0x4200b038
4200b028:	b146d6        	l32r	a11, 0x42000940 (0x3c06064f)
4200b02b:	a13ad4        	l32r	a10, 0x42000114 (0x3fca1f6c)
4200b02e:	101120        	or	a1, a1, a1
4200b031:	653e12        	call8	0x4201d418
4200b034:	065a00        	j	0x4200b1a0
4200b037:	00          	.byte	00
4200b038:	0cac      	movi.n	a12, 10
4200b03a:	bd01      	mov.n	a11, a1
4200b03c:	a2c138        	addi	a10, a1, 56
4200b03f:	101120        	or	a1, a1, a1
4200b042:	e55812        	call8	0x4201d5d0
4200b045:	31c5d5        	l32r	a3, 0x4200075c (0x3fca1dd4)
4200b048:	b2c138        	addi	a11, a1, 56
4200b04b:	30a320        	or	a10, a3, a3
4200b04e:	101120        	or	a1, a1, a1
4200b051:	e50513        	call8	0x4201e0b0
4200b054:	a2c138        	addi	a10, a1, 56
4200b057:	101120        	or	a1, a1, a1
4200b05a:	a5d612        	call8	0x4201ddc4
4200b05d:	ad03      	mov.n	a10, a3
4200b05f:	101120        	or	a1, a1, a1
4200b062:	258513        	call8	0x4201e8b4
4200b065:	b132d6        	l32r	a11, 0x42000930 (0x3c060639)
4200b068:	ad03      	mov.n	a10, a3
4200b06a:	101120        	or	a1, a1, a1
4200b06d:	6520f8        	call8	0x42003274
4200b070:	9c0a      	beqz.n	a10, 0x4200b084
4200b072:	4128d4        	l32r	a4, 0x42000114 (0x3fca1f6c)
4200b075:	b133d6        	l32r	a11, 0x42000944 (0x3c060660)
4200b078:	ad04      	mov.n	a10, a4
4200b07a:	101120        	or	a1, a1, a1
4200b07d:	a53912        	call8	0x4201d418
4200b080:	c60200        	j	0x4200b08f
4200b083:	00ad01        	slli	a10, a13, 32
4200b086:	101120        	or	a1, a1, a1
4200b089:	e5ab08        	call8	0x42013b48
4200b08c:	064400        	j	0x4200b1a0
4200b08f:	0c02      	movi.n	a2, 0
4200b091:	ad01      	mov.n	a10, a1
4200b093:	101120        	or	a1, a1, a1
4200b096:	258e08        	call8	0x42013978
4200b099:	160a0d        	beqz	a10, 0x4200b16d
4200b09c:	0cac      	movi.n	a12, 10
4200b09e:	bd01      	mov.n	a11, a1
4200b0a0:	a2c138        	addi	a10, a1, 56
4200b0a3:	101120        	or	a1, a1, a1
4200b0a6:	a55212        	call8	0x4201d5d0
4200b0a9:	b2c138        	addi	a11, a1, 56
4200b0ac:	ad03      	mov.n	a10, a3
4200b0ae:	101120        	or	a1, a1, a1
4200b0b1:	e5ff12        	call8	0x4201e0b0
4200b0b4:	a2c138        	addi	a10, a1, 56
4200b0b7:	101120        	or	a1, a1, a1
4200b0ba:	a5d012        	call8	0x4201ddc4
4200b0bd:	ad03      	mov.n	a10, a3
4200b0bf:	101120        	or	a1, a1, a1
4200b0c2:	257f13        	call8	0x4201e8b4
4200b0c5:	b120d6        	l32r	a11, 0x42000948 (0x3c06066f)
4200b0c8:	a2c138        	addi	a10, a1, 56
4200b0cb:	101120        	or	a1, a1, a1
4200b0ce:	e5e812        	call8	0x4201df5c
4200b0d1:	b2c138        	addi	a11, a1, 56
4200b0d4:	30a320        	or	a10, a3, a3
4200b0d7:	101120        	or	a1, a1, a1
4200b0da:	254e13        	call8	0x4201e5bc
4200b0dd:	a06a20        	or	a6, a10, a10
4200b0e0:	a2c138        	addi	a10, a1, 56
4200b0e3:	101120        	or	a1, a1, a1
4200b0e6:	e5cd12        	call8	0x4201ddc4
4200b0e9:	dd06      	mov.n	a13, a6
4200b0eb:	c2a000        	movi	a12, 0
4200b0ee:	30b320        	or	a11, a3, a3
4200b0f1:	a2c118        	addi	a10, a1, 24
4200b0f4:	101120        	or	a1, a1, a1
4200b0f7:	255313        	call8	0x4201e628
4200b0fa:	c2c601        	addi	a12, a6, 1
4200b0fd:	bd03      	mov.n	a11, a3
4200b0ff:	a2c128        	addi	a10, a1, 40
4200b102:	101120        	or	a1, a1, a1
4200b105:	e521f8        	call8	0x42003324
4200b108:	a2c118        	addi	a10, a1, 24
4200b10b:	101120        	or	a1, a1, a1
4200b10e:	a58213        	call8	0x4201e938
4200b111:	820137        	l8ui	a8, a1, 55
4200b114:	6d0a      	mov.n	a6, a10
4200b116:	b2c128        	addi	a11, a1, 40
4200b119:	77e801        	bbsi	a8, 7, 0x4200b11e
4200b11c:	b8a1      	l32i.n	a11, a1, 40
4200b11e:	1c2c      	movi.n	a12, 18
4200b120:	a2c138        	addi	a10, a1, 56
4200b123:	8125d4        	l32r	a8, 0x420001b8 (0x40001224)
4200b126:	e00800        	callx8	a8
4200b129:	82af6d        	movi	a8, -147
4200b12c:	9108d6        	l32r	a9, 0x4200094c (0x749d)
4200b12f:	8a86      	add.n	a8, a6, a8
4200b131:	873923        	bltu	a9, a8, 0x4200b158
4200b134:	82a3e7        	movi	a8, 0x3e7
4200b137:	27281d        	blt	a8, a2, 0x4200b158
4200b13a:	f08211        	slli	a8, a2, 1
4200b13d:	a1f5d4        	l32r	a10, 0x42000514 (0x3fc9bfec)
4200b140:	2a88      	add.n	a8, a8, a2
4200b142:	d08811        	slli	a8, a8, 3
4200b145:	8a9a      	add.n	a9, a10, a8
4200b147:	4b88      	addi.n	a8, a8, 4
4200b149:	6909      	s32i.n	a6, a9, 0
4200b14b:	b2c138        	addi	a11, a1, 56
4200b14e:	8aaa      	add.n	a10, a10, a8
4200b150:	8158d4        	l32r	a8, 0x420002b0 (0x40001218)
4200b153:	e00800        	callx8	a8
4200b156:	1b22      	addi.n	a2, a2, 1
4200b158:	a2c128        	addi	a10, a1, 40
4200b15b:	101120        	or	a1, a1, a1
4200b15e:	65c612        	call8	0x4201ddc4
4200b161:	a2c118        	addi	a10, a1, 24
4200b164:	101120        	or	a1, a1, a1
4200b167:	e5c512        	call8	0x4201ddc4
4200b16a:	c6c8ff        	j	0x4200b091
4200b16d:	31e8d4        	l32r	a3, 0x42000510 (0x3fc9bfe8)
4200b170:	2903      	s32i.n	a2, a3, 0
4200b172:	8c32      	beqz.n	a2, 0x4200b179
4200b174:	31e6d4        	l32r	a3, 0x4200050c (0x3fc94778)
4200b177:	a903      	s32i.n	a10, a3, 0
4200b179:	ad01      	mov.n	a10, a1
4200b17b:	101120        	or	a1, a1, a1
4200b17e:	a59c08        	call8	0x42013b48
4200b181:	0cac      	movi.n	a12, 10
4200b183:	bd02      	mov.n	a11, a2
4200b185:	ad04      	mov.n	a10, a4
4200b187:	101120        	or	a1, a1, a1
4200b18a:	a53312        	call8	0x4201d4c4
4200b18d:	b1f0d5        	l32r	a11, 0x42000950 (0x3c060671)
4200b190:	ad04      	mov.n	a10, a4
4200b192:	101120        	or	a1, a1, a1
4200b195:	252812        	call8	0x4201d418
4200b198:	21a6d4        	l32r	a2, 0x42000430 (0x3fc9baa0)
4200b19b:	0c03      	movi.n	a3, 0
4200b19d:	324200        	s8i	a3, a2, 0
4200b1a0:	ad01      	mov.n	a10, a1
4200b1a2:	101120        	or	a1, a1, a1
4200b1a5:	a5c1ff        	call8	0x4200adc0
4200b1a8:	c02000        	memw
4200b1ab:	322113        	l32i	a3, a1, 76
4200b1ae:	c02000        	memw
4200b1b1:	2805      	l32i.n	a2, a5, 0
4200b1b3:	271345        	beq	a3, a2, 0x4200b1fc
4200b1b6:	81b6d3        	l32r	a8, 0x42000090 (0x40377780)
4200b1b9:	e00800        	callx8	a8
4200b1bc:	a2c138        	addi	a10, a1, 56
4200b1bf:	101120        	or	a1, a1, a1
4200b1c2:	25c012        	call8	0x4201ddc4
4200b1c5:	ad02      	mov.n	a10, a2
4200b1c7:	101120        	or	a1, a1, a1
4200b1ca:	65a435        	call8	0x42040c10
4200b1cd:	a2c138        	addi	a10, a1, 56
4200b1d0:	101120        	or	a1, a1, a1
4200b1d3:	25bf12        	call8	0x4201ddc4
4200b1d6:	ad01      	mov.n	a10, a1
4200b1d8:	101120        	or	a1, a1, a1
4200b1db:	65beff        	call8	0x4200adc0
4200b1de:	c6f8ff        	j	0x4200b1c5
4200b1e1:	06faff        	j	0x4200b1cd
4200b1e4:	46f9ff        	j	0x4200b1cd
4200b1e7:	a2c128        	addi	a10, a1, 40
4200b1ea:	101120        	or	a1, a1, a1
4200b1ed:	65bd12        	call8	0x4201ddc4
4200b1f0:	a2c118        	addi	a10, a1, 24
4200b1f3:	46f6ff        	j	0x4200b1d0
4200b1f6:	86fdff        	j	0x4200b1f0
4200b1f9:	46f6ff        	j	0x4200b1d6
4200b1fc:	1df0      	retw.n
4200b1fe:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4200b201:	410131        	l32r	a4, 0x41fd7608
4200b204:	a2d3c0        	addmi	a10, a3, 0xffffc000
4200b207:	20          	.byte	0x20
4200b208:	00          	.byte	00
4200b209:	2803      	l32i.n	a2, a3, 0
4200b20b:	31d2d5        	l32r	a3, 0x42000954 (0x3c060687)
4200b20e:	c02000        	memw
4200b211:	22611f        	s32i	a2, a1, 124
4200b214:	21c2d5        	l32r	a2, 0x4200091c (0x3fca1e64)
4200b217:	bd03      	mov.n	a11, a3
4200b219:	ad02      	mov.n	a10, a2
4200b21b:	101120        	or	a1, a1, a1
4200b21e:	e56308        	call8	0x4201385c
4200b221:	16ca1f        	beqz	a10, 0x4200b421
4200b224:	30b320        	or	a11, a3, a3
4200b227:	a2c16c        	addi	a10, a1, 108
4200b22a:	101120        	or	a1, a1, a1
4200b22d:	e5d212        	call8	0x4201df5c
4200b230:	d1c3d5        	l32r	a13, 0x4200093c (0x3c0615f9)
4200b233:	e2a000        	movi	a14, 0
4200b236:	c2c16c        	addi	a12, a1, 108
4200b239:	20b220        	or	a11, a2, a2
4200b23c:	4ba1      	addi.n	a10, a1, 4
4200b23e:	101120        	or	a1, a1, a1
4200b241:	658e08        	call8	0x42013b28
4200b244:	a2c16c        	addi	a10, a1, 108
4200b247:	101120        	or	a1, a1, a1
4200b24a:	a5b712        	call8	0x4201ddc4
4200b24d:	c2a00a        	movi	a12, 10
4200b250:	b2c104        	addi	a11, a1, 4
4200b253:	a2c16c        	addi	a10, a1, 108
4200b256:	101120        	or	a1, a1, a1
4200b259:	653712        	call8	0x4201d5d0
4200b25c:	2140d5        	l32r	a2, 0x4200075c (0x3fca1dd4)
4200b25f:	b2c16c        	addi	a11, a1, 108
4200b262:	ad02      	mov.n	a10, a2
4200b264:	101120        	or	a1, a1, a1
4200b267:	a5e412        	call8	0x4201e0b0
4200b26a:	a2c16c        	addi	a10, a1, 108
4200b26d:	101120        	or	a1, a1, a1
4200b270:	25b512        	call8	0x4201ddc4
4200b273:	20a220        	or	a10, a2, a2
4200b276:	101120        	or	a1, a1, a1
4200b279:	65994e        	call8	0x42059c10
4200b27c:	ac1a      	beqz.n	a10, 0x4200b2a1
4200b27e:	b128d5        	l32r	a11, 0x42000720 (0x3c060470)
4200b281:	20a220        	or	a10, a2, a2
4200b284:	101120        	or	a1, a1, a1
4200b287:	6504f8        	call8	0x420032cc
4200b28a:	163a01        	beqz	a10, 0x4200b2a1
4200b28d:	20a220        	or	a10, a2, a2
4200b290:	101120        	or	a1, a1, a1
4200b293:	e5974e        	call8	0x42059c10
4200b296:	0bba      	addi.n	a11, a10, -1
4200b298:	20a220        	or	a10, a2, a2
4200b29b:	101120        	or	a1, a1, a1
4200b29e:	656013        	call8	0x4201e8a4
4200b2a1:	b1a0d5        	l32r	a11, 0x42000924 (0x3c060613)
4200b2a4:	20a220        	or	a10, a2, a2
4200b2a7:	101120        	or	a1, a1, a1
4200b2aa:	a5fcf7        	call8	0x42003274
4200b2ad:	160a16        	beqz	a10, 0x4200b411
4200b2b0:	b1aad5        	l32r	a11, 0x42000958 (0x3c060690)
4200b2b3:	a198d3        	l32r	a10, 0x42000114 (0x3fca1f6c)
4200b2b6:	101120        	or	a1, a1, a1
4200b2b9:	e51512        	call8	0x4201d418
4200b2bc:	c64d00        	j	0x4200b3f7
4200b2bf:	000016        	ee.ldf.64.xp	f0, f1, a0, a0
4200b2c2:	0a14      	add.n	a1, a4, a0
4200b2c4:	0cac      	movi.n	a12, 10
4200b2c6:	4bb1      	addi.n	a11, a1, 4
4200b2c8:	a2c16c        	addi	a10, a1, 108
4200b2cb:	101120        	or	a1, a1, a1
4200b2ce:	253012        	call8	0x4201d5d0
4200b2d1:	b2c16c        	addi	a11, a1, 108
4200b2d4:	ad02      	mov.n	a10, a2
4200b2d6:	101120        	or	a1, a1, a1
4200b2d9:	65dd12        	call8	0x4201e0b0
4200b2dc:	a2c16c        	addi	a10, a1, 108
4200b2df:	101120        	or	a1, a1, a1
4200b2e2:	25ae12        	call8	0x4201ddc4
4200b2e5:	ad02      	mov.n	a10, a2
4200b2e7:	101120        	or	a1, a1, a1
4200b2ea:	a55c13        	call8	0x4201e8b4
4200b2ed:	32c11c        	addi	a3, a1, 28
4200b2f0:	0c45      	movi.n	a5, 4
4200b2f2:	304320        	or	a4, a3, a3
4200b2f5:	b1f9d4        	l32r	a11, 0x420006dc (0x3c08657f)
4200b2f8:	ad03      	mov.n	a10, a3
4200b2fa:	101120        	or	a1, a1, a1
4200b2fd:	e5c512        	call8	0x4201df5c
4200b300:	0b55      	addi.n	a5, a5, -1
4200b302:	32c310        	addi	a3, a3, 16
4200b305:	6605ec        	bnei	a5, -1, 0x4200b2f5
4200b308:	2ccb      	movi.n	a11, 44
4200b30a:	ad02      	mov.n	a10, a2
4200b30c:	101120        	or	a1, a1, a1
4200b30f:	252613        	call8	0x4201e570
4200b312:	0c03      	movi.n	a3, 0
4200b314:	6d0a      	mov.n	a6, a10
4200b316:	7d03      	mov.n	a7, a3
4200b318:	c05711        	slli	a5, a7, 4
4200b31b:	5a54      	add.n	a5, a4, a5
4200b31d:	96c603        	bltz	a6, 0x4200b35d
4200b320:	e64739        	bgei	a7, 4, 0x4200b35d
4200b323:	dd06      	mov.n	a13, a6
4200b325:	cd03      	mov.n	a12, a3
4200b327:	bd02      	mov.n	a11, a2
4200b329:	a2c16c        	addi	a10, a1, 108
4200b32c:	72c701        	addi	a7, a7, 1
4200b32f:	101120        	or	a1, a1, a1
4200b332:	652f13        	call8	0x4201e628
4200b335:	b2c16c        	addi	a11, a1, 108
4200b338:	50a520        	or	a10, a5, a5
4200b33b:	101120        	or	a1, a1, a1
4200b33e:	25d712        	call8	0x4201e0b0
4200b341:	a2c16c        	addi	a10, a1, 108
4200b344:	101120        	or	a1, a1, a1
4200b347:	e5a712        	call8	0x4201ddc4
4200b34a:	1b36      	addi.n	a3, a6, 1
4200b34c:	cd03      	mov.n	a12, a3
4200b34e:	2ccb      	movi.n	a11, 44
4200b350:	ad02      	mov.n	a10, a2
4200b352:	101120        	or	a1, a1, a1
4200b355:	a51e13        	call8	0x4201e540
4200b358:	6d0a      	mov.n	a6, a10
4200b35a:	86eeff        	j	0x4200b318
4200b35d:	cd03      	mov.n	a12, a3
4200b35f:	bd02      	mov.n	a11, a2
4200b361:	a2c16c        	addi	a10, a1, 108
4200b364:	101120        	or	a1, a1, a1
4200b367:	e5fbf7        	call8	0x42003324
4200b36a:	b2c16c        	addi	a11, a1, 108
4200b36d:	ad05      	mov.n	a10, a5
4200b36f:	101120        	or	a1, a1, a1
4200b372:	e5d312        	call8	0x4201e0b0
4200b375:	a2c16c        	addi	a10, a1, 108
4200b378:	101120        	or	a1, a1, a1
4200b37b:	a5a412        	call8	0x4201ddc4
4200b37e:	ad04      	mov.n	a10, a4
4200b380:	101120        	or	a1, a1, a1
4200b383:	655b13        	call8	0x4201e938
4200b386:	52caff        	addi	a5, a10, -1
4200b389:	32a01f        	movi	a3, 31
4200b38c:	573355        	bltu	a3, a5, 0x4200b3e5
4200b38f:	a2c12c        	addi	a10, a1, 44
4200b392:	101120        	or	a1, a1, a1
4200b395:	255a13        	call8	0x4201e938
4200b398:	f03511        	slli	a3, a5, 1
4200b39b:	6141d3        	l32r	a6, 0x420000a0 (0x3fc949dc)
4200b39e:	5a73      	add.n	a7, a3, a5
4200b3a0:	f07711        	slli	a7, a7, 1
4200b3a3:	707680        	add	a7, a6, a7
4200b3a6:	a25700        	s16i	a10, a7, 0
4200b3a9:	a2c13c        	addi	a10, a1, 60
4200b3ac:	101120        	or	a1, a1, a1
4200b3af:	a55813        	call8	0x4201e938
4200b3b2:	5a73      	add.n	a7, a3, a5
4200b3b4:	f07711        	slli	a7, a7, 1
4200b3b7:	707680        	add	a7, a6, a7
4200b3ba:	a24702        	s8i	a10, a7, 2
4200b3bd:	a2c14c        	addi	a10, a1, 76
4200b3c0:	101120        	or	a1, a1, a1
4200b3c3:	655713        	call8	0x4201e938
4200b3c6:	5a73      	add.n	a7, a3, a5
4200b3c8:	f07711        	slli	a7, a7, 1
4200b3cb:	7a76      	add.n	a7, a6, a7
4200b3cd:	a24703        	s8i	a10, a7, 3
4200b3d0:	a2c15c        	addi	a10, a1, 92
4200b3d3:	101120        	or	a1, a1, a1
4200b3d6:	255613        	call8	0x4201e938
4200b3d9:	a25702        	s16i	a10, a7, 4
4200b3dc:	50a520        	or	a10, a5, a5
4200b3df:	101120        	or	a1, a1, a1
4200b3e2:	a508f9        	call8	0x4200446c
4200b3e5:	32c16c        	addi	a3, a1, 108
4200b3e8:	32c3f0        	addi	a3, a3, -16
4200b3eb:	30a320        	or	a10, a3, a3
4200b3ee:	101120        	or	a1, a1, a1
4200b3f1:	259d12        	call8	0x4201ddc4
4200b3f4:	4793f0        	bne	a3, a4, 0x4200b3e8
4200b3f7:	a2c104        	addi	a10, a1, 4
4200b3fa:	101120        	or	a1, a1, a1
4200b3fd:	a55708        	call8	0x42013978
4200b400:	46afff        	j	0x4200b2c1
4200b403:	0000b1        	sra	a0, a0
4200b406:	b5d420        	call12	0x4202c150
4200b409:	a22010        	l32i	a10, a0, 64
4200b40c:	112025        	l32r	a1, 0x41fd488c
4200b40f:	cb12      	addi.n	a1, a2, 12
4200b411:	4ba1      	addi.n	a10, a1, 4
4200b413:	101120        	or	a1, a1, a1
4200b416:	257308        	call8	0x42013b48
4200b419:	4ba1      	addi.n	a10, a1, 4
4200b41b:	101120        	or	a1, a1, a1
4200b41e:	259aff        	call8	0x4200adc0
4200b421:	411ad3        	l32r	a4, 0x4200008c (0x3fca2abc)
4200b424:	c02000        	memw
4200b427:	32211f        	l32i	a3, a1, 124
4200b42a:	c02000        	memw
4200b42d:	2804      	l32i.n	a2, a4, 0
4200b42f:	271372        	beq	a3, a2, 0x4200b4a5
4200b432:	8117d3        	l32r	a8, 0x42000090 (0x40377780)
4200b435:	e00800        	callx8	a8
4200b438:	a2c16c        	addi	a10, a1, 108
4200b43b:	101120        	or	a1, a1, a1
4200b43e:	659812        	call8	0x4201ddc4
4200b441:	ad02      	mov.n	a10, a2
4200b443:	101120        	or	a1, a1, a1
4200b446:	a57c35        	call8	0x42040c10
4200b449:	a2c16c        	addi	a10, a1, 108
4200b44c:	101120        	or	a1, a1, a1
4200b44f:	659712        	call8	0x4201ddc4
4200b452:	4ba1      	addi.n	a10, a1, 4
4200b454:	101120        	or	a1, a1, a1
4200b457:	a596ff        	call8	0x4200adc0
4200b45a:	c6f8ff        	j	0x4200b441
4200b45d:	00          	.byte	00
4200b45e:	c6f9ff        	j	0x4200b449
4200b461:	0c43      	movi.n	a3, 4
4200b463:	5053c0        	sub	a5, a3, a5
4200b466:	001340        	ssl	a3
4200b469:	0055a1        	sll	a5, a5
4200b46c:	5a54      	add.n	a5, a4, a5
4200b46e:	4715e0        	beq	a5, a4, 0x4200b452
4200b471:	52c5f0        	addi	a5, a5, -16
4200b474:	ad05      	mov.n	a10, a5
4200b476:	101120        	or	a1, a1, a1
4200b479:	a59412        	call8	0x4201ddc4
4200b47c:	86fbff        	j	0x4200b46e
4200b47f:	a2c16c        	addi	a10, a1, 108
4200b482:	101120        	or	a1, a1, a1
4200b485:	e59312        	call8	0x4201ddc4
4200b488:	32c16c        	addi	a3, a1, 108
4200b48b:	32c3f0        	addi	a3, a3, -16
4200b48e:	ad03      	mov.n	a10, a3
4200b490:	101120        	or	a1, a1, a1
4200b493:	259312        	call8	0x4201ddc4
4200b496:	4793f1        	bne	a3, a4, 0x4200b48b
4200b499:	46edff        	j	0x4200b452
4200b49c:	c6f7ff        	j	0x4200b47f
4200b49f:	46f9ff        	j	0x4200b488
4200b4a2:	06ebff        	j	0x4200b452
4200b4a5:	1df0      	retw.n
4200b4a7:	0036a1        	sll	a3, a6
4200b4aa:	0131f8        	l32r	a0, 0x42009570 (0x280020c0)
4200b4ad:	d2c020        	addi	a13, a0, 32
4200b4b0:	002223        	sext	a2, a2, 7
4200b4b3:	00c020        	or	a12, a0, a0
4200b4b6:	002261        	xsr.m2	a0
4200b4b9:	2b10      	addi.n	a1, a0, 2
4200b4bb:	1120e5        	l32r	a1, 0x4200493c (0xa5b116de)
4200b4be:	f4          	.byte	0xf4
4200b4bf:	f7161a        	beq	a6, a15, 0x4200b4dd
4200b4c2:	203126        	ee.ldf.64.xp	f3, f2, a2, a1
4200b4c5:	d5a2c1        	call4	0x41fccef4
4200b4c8:	2cbd      	movi.n	a13, 43
4200b4ca:	03          	.byte	0x3
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
4200b77e:	a5c911        	call8	0x4201d418
4200b781:	b17bd4        	l32r	a11, 0x42000970 (0x3c0606f8)
4200b784:	a2c104        	addi	a10, a1, 4
4200b787:	101120        	or	a1, a1, a1
4200b78a:	e5c411        	call8	0x4201d3d8
4200b78d:	2157d3        	l32r	a2, 0x420004ec (0x3fc94db2)
4200b790:	0cac      	movi.n	a12, 10
4200b792:	b20200        	l8ui	a11, a2, 0
4200b795:	a2c11c        	addi	a10, a1, 28
4200b798:	00bb23        	sext	a11, a11, 7
4200b79b:	101120        	or	a1, a1, a1
4200b79e:	e59a12        	call8	0x4201e14c
4200b7a1:	b2c11c        	addi	a11, a1, 28
4200b7a4:	4ba1      	addi.n	a10, a1, 4
4200b7a6:	101120        	or	a1, a1, a1
4200b7a9:	65c511        	call8	0x4201d400
4200b7ac:	a2c11c        	addi	a10, a1, 28
4200b7af:	101120        	or	a1, a1, a1
4200b7b2:	256112        	call8	0x4201ddc4
4200b7b5:	b16fd4        	l32r	a11, 0x42000974 (0x3c0606fe)
4200b7b8:	a2c104        	addi	a10, a1, 4
4200b7bb:	101120        	or	a1, a1, a1
4200b7be:	a5c111        	call8	0x4201d3d8
4200b7c1:	2115d3        	l32r	a2, 0x42000418 (0x3fc94db0)
4200b7c4:	0cac      	movi.n	a12, 10
4200b7c6:	b20200        	l8ui	a11, a2, 0
4200b7c9:	a2c11c        	addi	a10, a1, 28
4200b7cc:	00bb23        	sext	a11, a11, 7
4200b7cf:	101120        	or	a1, a1, a1
4200b7d2:	a59712        	call8	0x4201e14c
4200b7d5:	b2c11c        	addi	a11, a1, 28
4200b7d8:	4ba1      	addi.n	a10, a1, 4
4200b7da:	101120        	or	a1, a1, a1
4200b7dd:	25c211        	call8	0x4201d400
4200b7e0:	a2c11c        	addi	a10, a1, 28
4200b7e3:	101120        	or	a1, a1, a1
4200b7e6:	e55d12        	call8	0x4201ddc4
4200b7e9:	b163d4        	l32r	a11, 0x42000978 (0x3c06070c)
4200b7ec:	a2c104        	addi	a10, a1, 4
4200b7ef:	101120        	or	a1, a1, a1
4200b7f2:	65be11        	call8	0x4201d3d8
4200b7f5:	210ad3        	l32r	a2, 0x42000420 (0x3fc94d7c)
4200b7f8:	0cac      	movi.n	a12, 10
4200b7fa:	b20200        	l8ui	a11, a2, 0
4200b7fd:	a2c11c        	addi	a10, a1, 28
4200b800:	00bb23        	sext	a11, a11, 7
4200b803:	101120        	or	a1, a1, a1
4200b806:	659412        	call8	0x4201e14c
4200b809:	b2c11c        	addi	a11, a1, 28
4200b80c:	4ba1      	addi.n	a10, a1, 4
4200b80e:	101120        	or	a1, a1, a1
4200b811:	e5be11        	call8	0x4201d400
4200b814:	a2c11c        	addi	a10, a1, 28
4200b817:	101120        	or	a1, a1, a1
4200b81a:	a55a12        	call8	0x4201ddc4
4200b81d:	b157d4        	l32r	a11, 0x4200097c (0x3c060719)
4200b820:	a2c104        	addi	a10, a1, 4
4200b823:	101120        	or	a1, a1, a1
4200b826:	25bb11        	call8	0x4201d3d8
4200b829:	21f7d2        	l32r	a2, 0x42000408 (0x3fc9bf84)
4200b82c:	0cac      	movi.n	a12, 10
4200b82e:	b20200        	l8ui	a11, a2, 0
4200b831:	a2c11c        	addi	a10, a1, 28
4200b834:	00bb23        	sext	a11, a11, 7
4200b837:	101120        	or	a1, a1, a1
4200b83a:	259112        	call8	0x4201e14c
4200b83d:	b2c11c        	addi	a11, a1, 28
4200b840:	4ba1      	addi.n	a10, a1, 4
4200b842:	101120        	or	a1, a1, a1
4200b845:	a5bb11        	call8	0x4201d400
4200b848:	a2c11c        	addi	a10, a1, 28
4200b84b:	101120        	or	a1, a1, a1
4200b84e:	655712        	call8	0x4201ddc4
4200b851:	b14bd4        	l32r	a11, 0x42000980 (0x3c060726)
4200b854:	a2c104        	addi	a10, a1, 4
4200b857:	101120        	or	a1, a1, a1
4200b85a:	e5b711        	call8	0x4201d3d8
4200b85d:	2114d2        	l32r	a2, 0x420000b0 (0x3fc94d10)
4200b860:	0cac      	movi.n	a12, 10
4200b862:	b802      	l32i.n	a11, a2, 0
4200b864:	a2c11c        	addi	a10, a1, 28
4200b867:	101120        	or	a1, a1, a1
4200b86a:	258e12        	call8	0x4201e14c
4200b86d:	b2c11c        	addi	a11, a1, 28
4200b870:	4ba1      	addi.n	a10, a1, 4
4200b872:	101120        	or	a1, a1, a1
4200b875:	a5b811        	call8	0x4201d400
4200b878:	a2c11c        	addi	a10, a1, 28
4200b87b:	101120        	or	a1, a1, a1
4200b87e:	655412        	call8	0x4201ddc4
4200b881:	b140d4        	l32r	a11, 0x42000984 (0x3c06072f)
4200b884:	a2c104        	addi	a10, a1, 4
4200b887:	101120        	or	a1, a1, a1
4200b88a:	e5b411        	call8	0x4201d3d8
4200b88d:	210ad2        	l32r	a2, 0x420000b8 (0x3fc94d14)
4200b890:	0cac      	movi.n	a12, 10
4200b892:	b802      	l32i.n	a11, a2, 0
4200b894:	a2c11c        	addi	a10, a1, 28
4200b897:	101120        	or	a1, a1, a1
4200b89a:	258b12        	call8	0x4201e14c
4200b89d:	b2c11c        	addi	a11, a1, 28
4200b8a0:	4ba1      	addi.n	a10, a1, 4
4200b8a2:	101120        	or	a1, a1, a1
4200b8a5:	a5b511        	call8	0x4201d400
4200b8a8:	a2c11c        	addi	a10, a1, 28
4200b8ab:	101120        	or	a1, a1, a1
4200b8ae:	655112        	call8	0x4201ddc4
4200b8b1:	b135d4        	l32r	a11, 0x42000988 (0x3c060737)
4200b8b4:	a2c104        	addi	a10, a1, 4
4200b8b7:	101120        	or	a1, a1, a1
4200b8ba:	e5b111        	call8	0x4201d3d8
4200b8bd:	21b6d2        	l32r	a2, 0x42000398 (0x3fc94d18)
4200b8c0:	0cac      	movi.n	a12, 10
4200b8c2:	b802      	l32i.n	a11, a2, 0
4200b8c4:	a2c11c        	addi	a10, a1, 28
4200b8c7:	101120        	or	a1, a1, a1
4200b8ca:	258812        	call8	0x4201e14c
4200b8cd:	b2c11c        	addi	a11, a1, 28
4200b8d0:	4ba1      	addi.n	a10, a1, 4
4200b8d2:	101120        	or	a1, a1, a1
4200b8d5:	a5b211        	call8	0x4201d400
4200b8d8:	a2c11c        	addi	a10, a1, 28
4200b8db:	101120        	or	a1, a1, a1
4200b8de:	654e12        	call8	0x4201ddc4
4200b8e1:	b12ad4        	l32r	a11, 0x4200098c (0x3c06073f)
4200b8e4:	4ba1      	addi.n	a10, a1, 4
4200b8e6:	101120        	or	a1, a1, a1
4200b8e9:	e5ae11        	call8	0x4201d3d8
4200b8ec:	21efd1        	l32r	a2, 0x420000a8 (0x3fc9bf83)
4200b8ef:	0cac      	movi.n	a12, 10
4200b8f1:	b20200        	l8ui	a11, a2, 0
4200b8f4:	a2c11c        	addi	a10, a1, 28
4200b8f7:	101120        	or	a1, a1, a1
4200b8fa:	a58012        	call8	0x4201e104
4200b8fd:	b2c11c        	addi	a11, a1, 28
4200b900:	4ba1      	addi.n	a10, a1, 4
4200b902:	101120        	or	a1, a1, a1
4200b905:	a5af11        	call8	0x4201d400
4200b908:	a2c11c        	addi	a10, a1, 28
4200b90b:	101120        	or	a1, a1, a1
4200b90e:	654b12        	call8	0x4201ddc4
4200b911:	b11fd4        	l32r	a11, 0x42000990 (0x3c060745)
4200b914:	a2c104        	addi	a10, a1, 4
4200b917:	101120        	or	a1, a1, a1
4200b91a:	e5ab11        	call8	0x4201d3d8
4200b91d:	2102d3        	l32r	a2, 0x42000528 (0x3fc9bf82)
4200b920:	0cac      	movi.n	a12, 10
4200b922:	b20200        	l8ui	a11, a2, 0
4200b925:	a2c11c        	addi	a10, a1, 28
4200b928:	00bb23        	sext	a11, a11, 7
4200b92b:	101120        	or	a1, a1, a1
4200b92e:	e58112        	call8	0x4201e14c
4200b931:	b2c11c        	addi	a11, a1, 28
4200b934:	4ba1      	addi.n	a10, a1, 4
4200b936:	101120        	or	a1, a1, a1
4200b939:	65ac11        	call8	0x4201d400
4200b93c:	a2c11c        	addi	a10, a1, 28
4200b93f:	101120        	or	a1, a1, a1
4200b942:	254812        	call8	0x4201ddc4
4200b945:	b113d4        	l32r	a11, 0x42000994 (0x3c06074e)
4200b948:	a2c104        	addi	a10, a1, 4
4200b94b:	101120        	or	a1, a1, a1
4200b94e:	a5a811        	call8	0x4201d3d8
4200b951:	21ffd1        	l32r	a2, 0x42000150 (0x3fc9bf81)
4200b954:	0cac      	movi.n	a12, 10
4200b956:	b20200        	l8ui	a11, a2, 0
4200b959:	a2c11c        	addi	a10, a1, 28
4200b95c:	00bb23        	sext	a11, a11, 7
4200b95f:	101120        	or	a1, a1, a1
4200b962:	a57e12        	call8	0x4201e14c
4200b965:	b2c11c        	addi	a11, a1, 28
4200b968:	4ba1      	addi.n	a10, a1, 4
4200b96a:	101120        	or	a1, a1, a1
4200b96d:	25a911        	call8	0x4201d400
4200b970:	a2c11c        	addi	a10, a1, 28
4200b973:	101120        	or	a1, a1, a1
4200b976:	e54412        	call8	0x4201ddc4
4200b979:	b107d4        	l32r	a11, 0x42000998 (0x3c060757)
4200b97c:	a2c104        	addi	a10, a1, 4
4200b97f:	101120        	or	a1, a1, a1
4200b982:	65a511        	call8	0x4201d3d8
4200b985:	21f4d2        	l32r	a2, 0x42000558 (0x3fc9bf80)
4200b988:	0cac      	movi.n	a12, 10
4200b98a:	b20200        	l8ui	a11, a2, 0
4200b98d:	a2c11c        	addi	a10, a1, 28
4200b990:	00bb23        	sext	a11, a11, 7
4200b993:	101120        	or	a1, a1, a1
4200b996:	657b12        	call8	0x4201e14c
4200b999:	b2c11c        	addi	a11, a1, 28
4200b99c:	4ba1      	addi.n	a10, a1, 4
4200b99e:	101120        	or	a1, a1, a1
4200b9a1:	e5a511        	call8	0x4201d400
4200b9a4:	a2c11c        	addi	a10, a1, 28
4200b9a7:	101120        	or	a1, a1, a1
4200b9aa:	a54112        	call8	0x4201ddc4
4200b9ad:	b1fbd3        	l32r	a11, 0x4200099c (0x3c060761)
4200b9b0:	a2c104        	addi	a10, a1, 4
4200b9b3:	101120        	or	a1, a1, a1
4200b9b6:	25a211        	call8	0x4201d3d8
4200b9b9:	21c1d1        	l32r	a2, 0x420000c0 (0x3fc9bf7c)
4200b9bc:	0cac      	movi.n	a12, 10
4200b9be:	b802      	l32i.n	a11, a2, 0
4200b9c0:	a2c11c        	addi	a10, a1, 28
4200b9c3:	101120        	or	a1, a1, a1
4200b9c6:	657812        	call8	0x4201e14c
4200b9c9:	b2c11c        	addi	a11, a1, 28
4200b9cc:	4ba1      	addi.n	a10, a1, 4
4200b9ce:	101120        	or	a1, a1, a1
4200b9d1:	e5a211        	call8	0x4201d400
4200b9d4:	a2c11c        	addi	a10, a1, 28
4200b9d7:	101120        	or	a1, a1, a1
4200b9da:	a53e12        	call8	0x4201ddc4
4200b9dd:	b1f0d3        	l32r	a11, 0x420009a0 (0x3c060767)
4200b9e0:	a2c104        	addi	a10, a1, 4
4200b9e3:	101120        	or	a1, a1, a1
4200b9e6:	259f11        	call8	0x4201d3d8
4200b9e9:	21d5d2        	l32r	a2, 0x42000540 (0x3fc9bac8)
4200b9ec:	0cac      	movi.n	a12, 10
4200b9ee:	b802      	l32i.n	a11, a2, 0
4200b9f0:	a2c11c        	addi	a10, a1, 28
4200b9f3:	101120        	or	a1, a1, a1
4200b9f6:	657512        	call8	0x4201e14c
4200b9f9:	b2c11c        	addi	a11, a1, 28
4200b9fc:	4ba1      	addi.n	a10, a1, 4
4200b9fe:	101120        	or	a1, a1, a1
4200ba01:	e59f11        	call8	0x4201d400
4200ba04:	a2c11c        	addi	a10, a1, 28
4200ba07:	101120        	or	a1, a1, a1
4200ba0a:	a53b12        	call8	0x4201ddc4
4200ba0d:	b1e5d3        	l32r	a11, 0x420009a4 (0x3c06076e)
4200ba10:	a2c104        	addi	a10, a1, 4
4200ba13:	101120        	or	a1, a1, a1
4200ba16:	259c11        	call8	0x4201d3d8
4200ba19:	21bcd2        	l32r	a2, 0x4200050c (0x3fc94778)
4200ba1c:	0cac      	movi.n	a12, 10
4200ba1e:	b802      	l32i.n	a11, a2, 0
4200ba20:	a2c11c        	addi	a10, a1, 28
4200ba23:	101120        	or	a1, a1, a1
4200ba26:	657212        	call8	0x4201e14c
4200ba29:	b2c11c        	addi	a11, a1, 28
4200ba2c:	4ba1      	addi.n	a10, a1, 4
4200ba2e:	101120        	or	a1, a1, a1
4200ba31:	e59c11        	call8	0x4201d400
4200ba34:	a2c11c        	addi	a10, a1, 28
4200ba37:	101120        	or	a1, a1, a1
4200ba3a:	a53812        	call8	0x4201ddc4
4200ba3d:	b1dad3        	l32r	a11, 0x420009a8 (0x3c060777)
4200ba40:	4ba1      	addi.n	a10, a1, 4
4200ba42:	101120        	or	a1, a1, a1
4200ba45:	259911        	call8	0x4201d3d8
4200ba48:	2133d2        	l32r	a2, 0x42000314 (0x3fc94769)
4200ba4b:	0cac      	movi.n	a12, 10
4200ba4d:	b20200        	l8ui	a11, a2, 0
4200ba50:	a2c11c        	addi	a10, a1, 28
4200ba53:	101120        	or	a1, a1, a1
4200ba56:	e56a12        	call8	0x4201e104
4200ba59:	b2c11c        	addi	a11, a1, 28
4200ba5c:	4ba1      	addi.n	a10, a1, 4
4200ba5e:	101120        	or	a1, a1, a1
4200ba61:	e59911        	call8	0x4201d400
4200ba64:	a2c11c        	addi	a10, a1, 28
4200ba67:	101120        	or	a1, a1, a1
4200ba6a:	a53512        	call8	0x4201ddc4
4200ba6d:	b1cfd3        	l32r	a11, 0x420009ac (0x3c06077f)
4200ba70:	a2c104        	addi	a10, a1, 4
4200ba73:	101120        	or	a1, a1, a1
4200ba76:	259611        	call8	0x4201d3d8
4200ba79:	21cdd3        	l32r	a2, 0x420009b0 (0x3fc9a1d9)
4200ba7c:	0cac      	movi.n	a12, 10
4200ba7e:	b20200        	l8ui	a11, a2, 0
4200ba81:	a2c11c        	addi	a10, a1, 28
4200ba84:	00bb23        	sext	a11, a11, 7
4200ba87:	101120        	or	a1, a1, a1
4200ba8a:	256c12        	call8	0x4201e14c
4200ba8d:	b2c11c        	addi	a11, a1, 28
4200ba90:	4ba1      	addi.n	a10, a1, 4
4200ba92:	101120        	or	a1, a1, a1
4200ba95:	a59611        	call8	0x4201d400
4200ba98:	a2c11c        	addi	a10, a1, 28
4200ba9b:	101120        	or	a1, a1, a1
4200ba9e:	653212        	call8	0x4201ddc4
4200baa1:	b1c4d3        	l32r	a11, 0x420009b4 (0x3c060786)
4200baa4:	a2c104        	addi	a10, a1, 4
4200baa7:	101120        	or	a1, a1, a1
4200baaa:	e59211        	call8	0x4201d3d8
4200baad:	21c2d3        	l32r	a2, 0x420009b8 (0x3fc9474d)
4200bab0:	0cac      	movi.n	a12, 10
4200bab2:	b20200        	l8ui	a11, a2, 0
4200bab5:	a2c11c        	addi	a10, a1, 28
4200bab8:	00bb23        	sext	a11, a11, 7
4200babb:	101120        	or	a1, a1, a1
4200babe:	e56812        	call8	0x4201e14c
4200bac1:	b2c11c        	addi	a11, a1, 28
4200bac4:	4ba1      	addi.n	a10, a1, 4
4200bac6:	101120        	or	a1, a1, a1
4200bac9:	659311        	call8	0x4201d400
4200bacc:	a2c11c        	addi	a10, a1, 28
4200bacf:	101120        	or	a1, a1, a1
4200bad2:	252f12        	call8	0x4201ddc4
4200bad5:	b1b9d3        	l32r	a11, 0x420009bc (0x3c06078d)
4200bad8:	a2c104        	addi	a10, a1, 4
4200badb:	101120        	or	a1, a1, a1
4200bade:	a58f11        	call8	0x4201d3d8
4200bae1:	21b7d3        	l32r	a2, 0x420009c0 (0x3fc9a1d8)
4200bae4:	0cac      	movi.n	a12, 10
4200bae6:	b20200        	l8ui	a11, a2, 0
4200bae9:	a2c11c        	addi	a10, a1, 28
4200baec:	00bb23        	sext	a11, a11, 7
4200baef:	101120        	or	a1, a1, a1
4200baf2:	a56512        	call8	0x4201e14c
4200baf5:	b2c11c        	addi	a11, a1, 28
4200baf8:	4ba1      	addi.n	a10, a1, 4
4200bafa:	101120        	or	a1, a1, a1
4200bafd:	259011        	call8	0x4201d400
4200bb00:	a2c11c        	addi	a10, a1, 28
4200bb03:	101120        	or	a1, a1, a1
4200bb06:	e52b12        	call8	0x4201ddc4
4200bb09:	b1aed3        	l32r	a11, 0x420009c4 (0x3c060795)
4200bb0c:	a2c104        	addi	a10, a1, 4
4200bb0f:	101120        	or	a1, a1, a1
4200bb12:	658c11        	call8	0x4201d3d8
4200bb15:	2127d2        	l32r	a2, 0x420003b4 (0x3fc94e92)
4200bb18:	0cac      	movi.n	a12, 10
4200bb1a:	b20200        	l8ui	a11, a2, 0
4200bb1d:	a2c11c        	addi	a10, a1, 28
4200bb20:	00bb23        	sext	a11, a11, 7
4200bb23:	101120        	or	a1, a1, a1
4200bb26:	656212        	call8	0x4201e14c
4200bb29:	b2c11c        	addi	a11, a1, 28
4200bb2c:	4ba1      	addi.n	a10, a1, 4
4200bb2e:	101120        	or	a1, a1, a1
4200bb31:	e58c11        	call8	0x4201d400
4200bb34:	a2c11c        	addi	a10, a1, 28
4200bb37:	101120        	or	a1, a1, a1
4200bb3a:	a52812        	call8	0x4201ddc4
4200bb3d:	b1a2d3        	l32r	a11, 0x420009c8 (0x3c06079f)
4200bb40:	4ba1      	addi.n	a10, a1, 4
4200bb42:	101120        	or	a1, a1, a1
4200bb45:	258911        	call8	0x4201d3d8
4200bb48:	2160d1        	l32r	a2, 0x420000c8 (0x3fc9bfc4)
4200bb4b:	0cac      	movi.n	a12, 10
4200bb4d:	b29200        	l16si	a11, a2, 0
4200bb50:	a2c11c        	addi	a10, a1, 28
4200bb53:	101120        	or	a1, a1, a1
4200bb56:	655f12        	call8	0x4201e14c
4200bb59:	b2c11c        	addi	a11, a1, 28
4200bb5c:	4ba1      	addi.n	a10, a1, 4
4200bb5e:	101120        	or	a1, a1, a1
4200bb61:	e58911        	call8	0x4201d400
4200bb64:	a2c11c        	addi	a10, a1, 28
4200bb67:	101120        	or	a1, a1, a1
4200bb6a:	a52512        	call8	0x4201ddc4
4200bb6d:	b197d3        	l32r	a11, 0x420009cc (0x3c0607a4)
4200bb70:	4ba1      	addi.n	a10, a1, 4
4200bb72:	101120        	or	a1, a1, a1
4200bb75:	258611        	call8	0x4201d3d8
4200bb78:	2156d1        	l32r	a2, 0x420000d0 (0x3fc9bf9c)
4200bb7b:	0cac      	movi.n	a12, 10
4200bb7d:	b21200        	l16ui	a11, a2, 0
4200bb80:	a2c11c        	addi	a10, a1, 28
4200bb83:	101120        	or	a1, a1, a1
4200bb86:	655c12        	call8	0x4201e14c
4200bb89:	b2c11c        	addi	a11, a1, 28
4200bb8c:	4ba1      	addi.n	a10, a1, 4
4200bb8e:	101120        	or	a1, a1, a1
4200bb91:	e58611        	call8	0x4201d400
4200bb94:	a2c11c        	addi	a10, a1, 28
4200bb97:	101120        	or	a1, a1, a1
4200bb9a:	a52212        	call8	0x4201ddc4
4200bb9d:	b18cd3        	l32r	a11, 0x420009d0 (0x3c0607af)
4200bba0:	4ba1      	addi.n	a10, a1, 4
4200bba2:	101120        	or	a1, a1, a1
4200bba5:	258311        	call8	0x4201d3d8
4200bba8:	2154d1        	l32r	a2, 0x420000f8 (0x3fc94768)
4200bbab:	0cac      	movi.n	a12, 10
4200bbad:	b20200        	l8ui	a11, a2, 0
4200bbb0:	a2c11c        	addi	a10, a1, 28
4200bbb3:	101120        	or	a1, a1, a1
4200bbb6:	e55412        	call8	0x4201e104
4200bbb9:	b2c11c        	addi	a11, a1, 28
4200bbbc:	4ba1      	addi.n	a10, a1, 4
4200bbbe:	101120        	or	a1, a1, a1
4200bbc1:	e58311        	call8	0x4201d400
4200bbc4:	a2c11c        	addi	a10, a1, 28
4200bbc7:	101120        	or	a1, a1, a1
4200bbca:	a51f12        	call8	0x4201ddc4
4200bbcd:	b181d3        	l32r	a11, 0x420009d4 (0x3c0607ba)
4200bbd0:	4ba1      	addi.n	a10, a1, 4
4200bbd2:	101120        	or	a1, a1, a1
4200bbd5:	258011        	call8	0x4201d3d8
4200bbd8:	2128d1        	l32r	a2, 0x42000078 (0x3fca1e54)
4200bbdb:	0cac      	movi.n	a12, 10
4200bbdd:	b21200        	l16ui	a11, a2, 0
4200bbe0:	a2c11c        	addi	a10, a1, 28
4200bbe3:	101120        	or	a1, a1, a1
4200bbe6:	655612        	call8	0x4201e14c
4200bbe9:	b2c11c        	addi	a11, a1, 28
4200bbec:	4ba1      	addi.n	a10, a1, 4
4200bbee:	101120        	or	a1, a1, a1
4200bbf1:	e58011        	call8	0x4201d400
4200bbf4:	a2c11c        	addi	a10, a1, 28
4200bbf7:	101120        	or	a1, a1, a1
4200bbfa:	a51c12        	call8	0x4201ddc4
4200bbfd:	b176d3        	l32r	a11, 0x420009d8 (0x3c0607c0)
4200bc00:	4ba1      	addi.n	a10, a1, 4
4200bc02:	101120        	or	a1, a1, a1
4200bc05:	257d11        	call8	0x4201d3d8
4200bc08:	211bd1        	l32r	a2, 0x42000074 (0x3fca1e57)
4200bc0b:	0cac      	movi.n	a12, 10
4200bc0d:	b20200        	l8ui	a11, a2, 0
4200bc10:	a2c11c        	addi	a10, a1, 28
4200bc13:	101120        	or	a1, a1, a1
4200bc16:	655312        	call8	0x4201e14c
4200bc19:	b2c11c        	addi	a11, a1, 28
4200bc1c:	4ba1      	addi.n	a10, a1, 4
4200bc1e:	101120        	or	a1, a1, a1
4200bc21:	e57d11        	call8	0x4201d400
4200bc24:	a2c11c        	addi	a10, a1, 28
4200bc27:	101120        	or	a1, a1, a1
4200bc2a:	a51912        	call8	0x4201ddc4
4200bc2d:	b16bd3        	l32r	a11, 0x420009dc (0x3c0607c9)
4200bc30:	4ba1      	addi.n	a10, a1, 4
4200bc32:	101120        	or	a1, a1, a1
4200bc35:	257a11        	call8	0x4201d3d8
4200bc38:	2106d1        	l32r	a2, 0x42000050 (0x3fca1e58)
4200bc3b:	0cac      	movi.n	a12, 10
4200bc3d:	b20200        	l8ui	a11, a2, 0
4200bc40:	a2c11c        	addi	a10, a1, 28
4200bc43:	101120        	or	a1, a1, a1
4200bc46:	655012        	call8	0x4201e14c
4200bc49:	b2c11c        	addi	a11, a1, 28
4200bc4c:	4ba1      	addi.n	a10, a1, 4
4200bc4e:	101120        	or	a1, a1, a1
4200bc51:	e57a11        	call8	0x4201d400
4200bc54:	a2c11c        	addi	a10, a1, 28
4200bc57:	101120        	or	a1, a1, a1
4200bc5a:	a51612        	call8	0x4201ddc4
4200bc5d:	b160d3        	l32r	a11, 0x420009e0 (0x3c0607d4)
4200bc60:	a2c104        	addi	a10, a1, 4
4200bc63:	101120        	or	a1, a1, a1
4200bc66:	257711        	call8	0x4201d3d8
4200bc69:	b1dad2        	l32r	a11, 0x420007d4 (0x3fca1e10)
4200bc6c:	a2c104        	addi	a10, a1, 4
4200bc6f:	101120        	or	a1, a1, a1
4200bc72:	e57811        	call8	0x4201d400
4200bc75:	b15bd3        	l32r	a11, 0x420009e4 (0x3c0607da)
4200bc78:	4ba1      	addi.n	a10, a1, 4
4200bc7a:	101120        	or	a1, a1, a1
4200bc7d:	a57511        	call8	0x4201d3d8
4200bc80:	101120        	or	a1, a1, a1
4200bc83:	250413        	call8	0x4201ecc4
4200bc86:	22a0f0        	movi	a2, 240
4200bc89:	b106d3        	l32r	a11, 0x420008a4 (0x3c08cd48)
4200bc8c:	271a02        	beq	a10, a2, 0x4200bc92
4200bc8f:	b102d3        	l32r	a11, 0x42000898 (0x3c08ded4)
4200bc92:	4ba1      	addi.n	a10, a1, 4
4200bc94:	101120        	or	a1, a1, a1
4200bc97:	257811        	call8	0x4201d418
4200bc9a:	b153d3        	l32r	a11, 0x420009e8 (0x3c0607e0)
4200bc9d:	4ba1      	addi.n	a10, a1, 4
4200bc9f:	101120        	or	a1, a1, a1
4200bca2:	657311        	call8	0x4201d3d8
4200bca5:	2151d3        	l32r	a2, 0x420009ec (0x3fc94eb1)
4200bca8:	b1ffd2        	l32r	a11, 0x420008a4 (0x3c08cd48)
4200bcab:	220200        	l8ui	a2, a2, 0
4200bcae:	562200        	bnez	a2, 0x4200bcb4
4200bcb1:	b1f9d2        	l32r	a11, 0x42000898 (0x3c08ded4)
4200bcb4:	4ba1      	addi.n	a10, a1, 4
4200bcb6:	101120        	or	a1, a1, a1
4200bcb9:	e57511        	call8	0x4201d418
4200bcbc:	a2c104        	addi	a10, a1, 4
4200bcbf:	101120        	or	a1, a1, a1
4200bcc2:	65d307        	call8	0x420139f8
4200bcc5:	4ba1      	addi.n	a10, a1, 4
4200bcc7:	101120        	or	a1, a1, a1
4200bcca:	e5e707        	call8	0x42013b48
4200bccd:	4ba1      	addi.n	a10, a1, 4
4200bccf:	101120        	or	a1, a1, a1
4200bcd2:	e50eff        	call8	0x4200adc0
4200bcd5:	21edd0        	l32r	a2, 0x4200008c (0x3fca2abc)
4200bcd8:	c02000        	memw
4200bcdb:	38b1      	l32i.n	a3, a1, 44
4200bcdd:	c02000        	memw
4200bce0:	222200        	l32i	a2, a2, 0
4200bce3:	271379        	beq	a3, a2, 0x4200bd60
4200bce6:	81ead0        	l32r	a8, 0x42000090 (0x40377780)
4200bce9:	e00800        	callx8	a8
4200bcec:	a2c11c        	addi	a10, a1, 28
4200bcef:	101120        	or	a1, a1, a1
4200bcf2:	250d12        	call8	0x4201ddc4
4200bcf5:	ad02      	mov.n	a10, a2
4200bcf7:	101120        	or	a1, a1, a1
4200bcfa:	65f134        	call8	0x42040c10
4200bcfd:	c6faff        	j	0x4200bcec
4200bd00:	a2c11c        	addi	a10, a1, 28
4200bd03:	101120        	or	a1, a1, a1
4200bd06:	e50b12        	call8	0x4201ddc4
4200bd09:	4ba1      	addi.n	a10, a1, 4
4200bd0b:	101120        	or	a1, a1, a1
4200bd0e:	250bff        	call8	0x4200adc0
4200bd11:	06f8ff        	j	0x4200bcf5
4200bd14:	06faff        	j	0x4200bd00
4200bd17:	46f9ff        	j	0x4200bd00
4200bd1a:	86f8ff        	j	0x4200bd00
4200bd1d:	c6f7ff        	j	0x4200bd00
4200bd20:	06f7ff        	j	0x4200bd00
4200bd23:	46f6ff        	j	0x4200bd00
4200bd26:	86f5ff        	j	0x4200bd00
4200bd29:	c6f4ff        	j	0x4200bd00
4200bd2c:	06f4ff        	j	0x4200bd00
4200bd2f:	46f3ff        	j	0x4200bd00
4200bd32:	86f2ff        	j	0x4200bd00
4200bd35:	c6f1ff        	j	0x4200bd00
4200bd38:	06f1ff        	j	0x4200bd00
4200bd3b:	46f0ff        	j	0x4200bd00
4200bd3e:	86efff        	j	0x4200bd00
4200bd41:	c6eeff        	j	0x4200bd00
4200bd44:	06eeff        	j	0x4200bd00
4200bd47:	46edff        	j	0x4200bd00
4200bd4a:	00          	.byte	00
4200bd4b:	46ecff        	j	0x4200bd00
4200bd4e:	86ebff        	j	0x4200bd00
4200bd51:	c6eaff        	j	0x4200bd00
4200bd54:	06eaff        	j	0x4200bd00
4200bd57:	46e9ff        	j	0x4200bd00
4200bd5a:	86e8ff        	j	0x4200bd00
4200bd5d:	06eaff        	j	0x4200bd09
4200bd60:	1df0      	retw.n
4200bd62:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4200bd65:	a10131        	l32r	a10, 0x41fd816c
4200bd68:	c9d0      	s32i.n	a12, a0, 52
4200bd6a:	5121d3        	l32r	a5, 0x420009f0 (0x3c0607e6)
4200bd6d:	c02000        	memw
4200bd70:	2803      	l32i.n	a2, a3, 0
4200bd72:	bd05      	mov.n	a11, a5
4200bd74:	c02000        	memw
4200bd77:	22612b        	s32i	a2, a1, 172
4200bd7a:	21e8d2        	l32r	a2, 0x4200091c (0x3fca1e64)
4200bd7d:	ad02      	mov.n	a10, a2
4200bd7f:	101120        	or	a1, a1, a1
4200bd82:	a5ad07        	call8	0x4201385c
4200bd85:	16ca0e        	beqz	a10, 0x4200be75
4200bd88:	50b520        	or	a11, a5, a5
4200bd8b:	a2c12c        	addi	a10, a1, 44
4200bd8e:	101120        	or	a1, a1, a1
4200bd91:	a51c12        	call8	0x4201df5c
4200bd94:	bd02      	mov.n	a11, a2
4200bd96:	d1e9d2        	l32r	a13, 0x4200093c (0x3c0615f9)
4200bd99:	22c1b0        	addi	a2, a1, -80
4200bd9c:	0c0e      	movi.n	a14, 0
4200bd9e:	c2c12c        	addi	a12, a1, 44
4200bda1:	a2c254        	addi	a10, a2, 84
4200bda4:	42af7c        	movi	a4, -132
4200bda7:	101120        	or	a1, a1, a1
4200bdaa:	e5d707        	call8	0x42013b28
4200bdad:	52a0b0        	movi	a5, 176
4200bdb0:	105580        	add	a5, a5, a1
4200bdb3:	40a580        	add	a10, a5, a4
4200bdb6:	101120        	or	a1, a1, a1
4200bdb9:	a50012        	call8	0x4201ddc4
4200bdbc:	82a0b0        	movi	a8, 176
4200bdbf:	b2af54        	movi	a11, -172
4200bdc2:	1a88      	add.n	a8, a8, a1
4200bdc4:	22c1b0        	addi	a2, a1, -80
4200bdc7:	0cac      	movi.n	a12, 10
4200bdc9:	b0b880        	add	a11, a8, a11
4200bdcc:	a2c27c        	addi	a10, a2, 124
4200bdcf:	101120        	or	a1, a1, a1
4200bdd2:	e57f11        	call8	0x4201d5d0
4200bdd5:	2161d2        	l32r	a2, 0x4200075c (0x3fca1dd4)
4200bdd8:	52a0b0        	movi	a5, 176
4200bddb:	1a55      	add.n	a5, a5, a1
4200bddd:	40b580        	add	a11, a5, a4
4200bde0:	20a220        	or	a10, a2, a2
4200bde3:	101120        	or	a1, a1, a1
4200bde6:	a52c12        	call8	0x4201e0b0
4200bde9:	82a0b0        	movi	a8, 176
4200bdec:	1a88      	add.n	a8, a8, a1
4200bdee:	4aa8      	add.n	a10, a8, a4
4200bdf0:	101120        	or	a1, a1, a1
4200bdf3:	25fd11        	call8	0x4201ddc4
4200bdf6:	ad02      	mov.n	a10, a2
4200bdf8:	101120        	or	a1, a1, a1
4200bdfb:	65e14d        	call8	0x42059c10
4200bdfe:	563a02        	bnez	a10, 0x4200be25
4200be01:	b1dad2        	l32r	a11, 0x4200096c (0x3c0606f3)
4200be04:	ad02      	mov.n	a10, a2
4200be06:	101120        	or	a1, a1, a1
4200be09:	a546f7        	call8	0x42003274
4200be0c:	fcba      	bnez.n	a10, 0x4200be4b
4200be0e:	52a0b0        	movi	a5, 176
4200be11:	22af54        	movi	a2, -172
4200be14:	105580        	add	a5, a5, a1
4200be17:	20a580        	add	a10, a5, a2
4200be1a:	101120        	or	a1, a1, a1
4200be1d:	a5d207        	call8	0x42013b48
4200be20:	061100        	j	0x4200be68
4200be23:	0000b1        	sra	a0, a0
4200be26:	3ed220a2 	ee.fft.ams.s16.st.incp	q2, q4, a3, a2, q0, q3, q2, 0
4200be2a:	201011        	slli	a1, a0, 14
4200be2d:	20e549        	s32e	a2, a5, -8
4200be30:	f716ca        	beq	a6, a15, 0x4200bdfe
4200be33:	fcad      	bnez.n	a13, 0x4200be71
4200be35:	021011        	l16ui	a0, a0, 34
4200be38:	20          	.byte	0x20
4200be39:	65dd4d        	call8	0x42059c10
4200be3c:	b2caff        	addi	a11, a10, -1
4200be3f:	20a220        	or	a10, a2, a2
4200be42:	101120        	or	a1, a1, a1
4200be45:	e5a512        	call8	0x4201e8a4
4200be48:	46edff        	j	0x4200be01
4200be4b:	b1ead2        	l32r	a11, 0x420009f4 (0x3c0607f3)
4200be4e:	a1b1d0        	l32r	a10, 0x42000114 (0x3fca1f6c)
4200be51:	101120        	or	a1, a1, a1
4200be54:	255c11        	call8	0x4201d418
4200be57:	62c12c        	addi	a6, a1, 44
4200be5a:	52af7c        	movi	a5, -132
4200be5d:	4ba1      	addi.n	a10, a1, 4
4200be5f:	101120        	or	a1, a1, a1
4200be62:	65b107        	call8	0x42013978
4200be65:	060900        	j	0x4200be8d
4200be68:	82a0b0        	movi	a8, 176
4200be6b:	1a88      	add.n	a8, a8, a1
4200be6d:	2aa8      	add.n	a10, a8, a2
4200be6f:	101120        	or	a1, a1, a1
4200be72:	e5f4fe        	call8	0x4200adc0
4200be75:	c02000        	memw
4200be78:	42212b        	l32i	a4, a1, 172
4200be7b:	c02000        	memw
4200be7e:	222300        	l32i	a2, a3, 0
4200be81:	279402        	bne	a4, a2, 0x4200be87
4200be84:	06f200        	j	0x4200c250
4200be87:	8182d0        	l32r	a8, 0x42000090 (0x40377780)
4200be8a:	e00800        	callx8	a8
4200be8d:	164a34        	beqz	a10, 0x4200c1d5
4200be90:	0cac      	movi.n	a12, 10
4200be92:	4bb1      	addi.n	a11, a1, 4
4200be94:	60a620        	or	a10, a6, a6
4200be97:	101120        	or	a1, a1, a1
4200be9a:	657311        	call8	0x4201d5d0
4200be9d:	b2c12c        	addi	a11, a1, 44
4200bea0:	ad02      	mov.n	a10, a2
4200bea2:	101120        	or	a1, a1, a1
4200bea5:	a52012        	call8	0x4201e0b0
4200bea8:	42a0b0        	movi	a4, 176
4200beab:	1a44      	add.n	a4, a4, a1
4200bead:	5aa4      	add.n	a10, a4, a5
4200beaf:	101120        	or	a1, a1, a1
4200beb2:	25f111        	call8	0x4201ddc4
4200beb5:	ad02      	mov.n	a10, a2
4200beb7:	101120        	or	a1, a1, a1
4200beba:	a59f12        	call8	0x4201e8b4
4200bebd:	42020f        	l8ui	a4, a2, 15
4200bec0:	20a220        	or	a10, a2, a2
4200bec3:	77e402        	bbsi	a4, 7, 0x4200bec9
4200bec6:	a22200        	l32i	a10, a2, 0
4200bec9:	82a0b0        	movi	a8, 176
4200becc:	108880        	add	a8, a8, a1
4200becf:	b1cad2        	l32r	a11, 0x420009f8 (0x3c060801)
4200bed2:	d2af50        	movi	a13, -176
4200bed5:	d0d880        	add	a13, a8, a13
4200bed8:	c2c12c        	addi	a12, a1, 44
4200bedb:	101120        	or	a1, a1, a1
4200bede:	e51b3a        	call8	0x4204609c
4200bee1:	b1c6d2        	l32r	a11, 0x420009fc (0x3c060807)
4200bee4:	a2c12c        	addi	a10, a1, 44
4200bee7:	81f1d0        	l32r	a8, 0x420002ac (0x40001230)
4200beea:	e00800        	callx8	a8
4200beed:	ccba      	bnez.n	a10, 0x4200befc
4200beef:	4801      	l32i.n	a4, a1, 0
4200bef1:	1c57      	movi.n	a7, 21
4200bef3:	473705        	bltu	a7, a4, 0x4200befc
4200bef6:	717dd1        	l32r	a7, 0x420004ec (0x3fc94db2)
4200bef9:	424700        	s8i	a4, a7, 0
4200befc:	b1c1d2        	l32r	a11, 0x42000a00 (0x3c06080c)
4200beff:	a2c12c        	addi	a10, a1, 44
4200bf02:	81ead0        	l32r	a8, 0x420002ac (0x40001230)
4200bf05:	e00800        	callx8	a8
4200bf08:	cc9a      	bnez.n	a10, 0x4200bf15
4200bf0a:	4801      	l32i.n	a4, a1, 0
4200bf0c:	f66405        	bgeui	a4, 6, 0x4200bf15
4200bf0f:	7142d1        	l32r	a7, 0x42000418 (0x3fc94db0)
4200bf12:	424700        	s8i	a4, a7, 0
4200bf15:	b1bbd2        	l32r	a11, 0x42000a04 (0x3c060819)
4200bf18:	a2c12c        	addi	a10, a1, 44
4200bf1b:	81e4d0        	l32r	a8, 0x420002ac (0x40001230)
4200bf1e:	e00800        	callx8	a8
4200bf21:	56ba00        	bnez	a10, 0x4200bf30
4200bf24:	422100        	l32i	a4, a1, 0
4200bf27:	f67405        	bgeui	a4, 7, 0x4200bf30
4200bf2a:	713dd1        	l32r	a7, 0x42000420 (0x3fc94d7c)
4200bf2d:	424700        	s8i	a4, a7, 0
4200bf30:	b1b6d2        	l32r	a11, 0x42000a08 (0x3c060825)
4200bf33:	a2c12c        	addi	a10, a1, 44
4200bf36:	81ddd0        	l32r	a8, 0x420002ac (0x40001230)
4200bf39:	e00800        	callx8	a8
4200bf3c:	cc9a      	bnez.n	a10, 0x4200bf49
4200bf3e:	4801      	l32i.n	a4, a1, 0
4200bf40:	f65405        	bgeui	a4, 5, 0x4200bf49
4200bf43:	7131d1        	l32r	a7, 0x42000408 (0x3fc9bf84)
4200bf46:	424700        	s8i	a4, a7, 0
4200bf49:	b1b0d2        	l32r	a11, 0x42000a0c (0x3c060831)
4200bf4c:	a2c12c        	addi	a10, a1, 44
4200bf4f:	81d7d0        	l32r	a8, 0x420002ac (0x40001230)
4200bf52:	e00800        	callx8	a8
4200bf55:	cc8a      	bnez.n	a10, 0x4200bf61
4200bf57:	4801      	l32i.n	a4, a1, 0
4200bf59:	f66404        	bgeui	a4, 6, 0x4200bf61
4200bf5c:	710fd1        	l32r	a7, 0x42000398 (0x3fc94d18)
4200bf5f:	4907      	s32i.n	a4, a7, 0
4200bf61:	b1abd2        	l32r	a11, 0x42000a10 (0x3c060838)
4200bf64:	a2c12c        	addi	a10, a1, 44
4200bf67:	81d1d0        	l32r	a8, 0x420002ac (0x40001230)
4200bf6a:	e00800        	callx8	a8
4200bf6d:	cc8a      	bnez.n	a10, 0x4200bf79
4200bf6f:	4801      	l32i.n	a4, a1, 0
4200bf71:	f67404        	bgeui	a4, 7, 0x4200bf79
4200bf74:	7151d0        	l32r	a7, 0x420000b8 (0x3fc94d14)
4200bf77:	4907      	s32i.n	a4, a7, 0
4200bf79:	b1a6d2        	l32r	a11, 0x42000a14 (0x3c06083f)
4200bf7c:	a2c12c        	addi	a10, a1, 44
4200bf7f:	81cbd0        	l32r	a8, 0x420002ac (0x40001230)
4200bf82:	e00800        	callx8	a8
4200bf85:	ccba      	bnez.n	a10, 0x4200bf94
4200bf87:	4801      	l32i.n	a4, a1, 0
4200bf89:	72a008        	movi	a7, 8
4200bf8c:	473704        	bltu	a7, a4, 0x4200bf94
4200bf8f:	7148d0        	l32r	a7, 0x420000b0 (0x3fc94d10)
4200bf92:	4907      	s32i.n	a4, a7, 0
4200bf94:	b1a1d2        	l32r	a11, 0x42000a18 (0x3c060847)
4200bf97:	a2c12c        	addi	a10, a1, 44
4200bf9a:	81c4d0        	l32r	a8, 0x420002ac (0x40001230)
4200bf9d:	e00800        	callx8	a8
4200bfa0:	cc9a      	bnez.n	a10, 0x4200bfad
4200bfa2:	4801      	l32i.n	a4, a1, 0
4200bfa4:	f64405        	bgeui	a4, 4, 0x4200bfad
4200bfa7:	7140d0        	l32r	a7, 0x420000a8 (0x3fc9bf83)
4200bfaa:	424700        	s8i	a4, a7, 0
4200bfad:	b19bd2        	l32r	a11, 0x42000a1c (0x3c06084c)
4200bfb0:	a2c12c        	addi	a10, a1, 44
4200bfb3:	81bed0        	l32r	a8, 0x420002ac (0x40001230)
4200bfb6:	e00800        	callx8	a8
4200bfb9:	56ba00        	bnez	a10, 0x4200bfc8
4200bfbc:	422100        	l32i	a4, a1, 0
4200bfbf:	f65405        	bgeui	a4, 5, 0x4200bfc8
4200bfc2:	7159d1        	l32r	a7, 0x42000528 (0x3fc9bf82)
4200bfc5:	424700        	s8i	a4, a7, 0
4200bfc8:	b196d2        	l32r	a11, 0x42000a20 (0x3c060854)
4200bfcb:	a2c12c        	addi	a10, a1, 44
4200bfce:	81b7d0        	l32r	a8, 0x420002ac (0x40001230)
4200bfd1:	e00800        	callx8	a8
4200bfd4:	cc9a      	bnez.n	a10, 0x4200bfe1
4200bfd6:	4801      	l32i.n	a4, a1, 0
4200bfd8:	f67405        	bgeui	a4, 7, 0x4200bfe1
4200bfdb:	715dd0        	l32r	a7, 0x42000150 (0x3fc9bf81)
4200bfde:	424700        	s8i	a4, a7, 0
4200bfe1:	b190d2        	l32r	a11, 0x42000a24 (0x3c06085c)
4200bfe4:	a2c12c        	addi	a10, a1, 44
4200bfe7:	81b1d0        	l32r	a8, 0x420002ac (0x40001230)
4200bfea:	e00800        	callx8	a8
4200bfed:	56ba00        	bnez	a10, 0x4200bffc
4200bff0:	422100        	l32i	a4, a1, 0
4200bff3:	f68405        	bgeui	a4, 8, 0x4200bffc
4200bff6:	7158d1        	l32r	a7, 0x42000558 (0x3fc9bf80)
4200bff9:	424700        	s8i	a4, a7, 0
4200bffc:	b18bd2        	l32r	a11, 0x42000a28 (0x3c060865)
4200bfff:	a2c12c        	addi	a10, a1, 44
4200c002:	81aad0        	l32r	a8, 0x420002ac (0x40001230)
4200c005:	e00800        	callx8	a8
4200c008:	ccca      	bnez.n	a10, 0x4200c018
4200c00a:	4801      	l32i.n	a4, a1, 0
4200c00c:	72a014        	movi	a7, 20
4200c00f:	473705        	bltu	a7, a4, 0x4200c018
4200c012:	712bd0        	l32r	a7, 0x420000c0 (0x3fc9bf7c)
4200c015:	426700        	s32i	a4, a7, 0
4200c018:	b185d2        	l32r	a11, 0x42000a2c (0x3c06086a)
4200c01b:	a2c12c        	addi	a10, a1, 44
4200c01e:	81a3d0        	l32r	a8, 0x420002ac (0x40001230)
4200c021:	e00800        	callx8	a8
4200c024:	dc1a      	bnez.n	a10, 0x4200c039
4200c026:	7145d1        	l32r	a7, 0x4200053c (0x3fc94780)
4200c029:	4801      	l32i.n	a4, a1, 0
4200c02b:	7807      	l32i.n	a7, a7, 0
4200c02d:	472708        	blt	a7, a4, 0x4200c039
4200c030:	965400        	bltz	a4, 0x4200c039
4200c033:	7143d1        	l32r	a7, 0x42000540 (0x3fc9bac8)
4200c036:	426700        	s32i	a4, a7, 0
4200c039:	b17dd2        	l32r	a11, 0x42000a30 (0x3c060870)
4200c03c:	a2c12c        	addi	a10, a1, 44
4200c03f:	819bd0        	l32r	a8, 0x420002ac (0x40001230)
4200c042:	e00800        	callx8	a8
4200c045:	ccca      	bnez.n	a10, 0x4200c055
4200c047:	4801      	l32i.n	a4, a1, 0
4200c049:	72a1e5        	movi	a7, 0x1e5
4200c04c:	473705        	bltu	a7, a4, 0x4200c055
4200c04f:	712fd1        	l32r	a7, 0x4200050c (0x3fc94778)
4200c052:	426700        	s32i	a4, a7, 0
4200c055:	b177d2        	l32r	a11, 0x42000a34 (0x3c060878)
4200c058:	a2c12c        	addi	a10, a1, 44
4200c05b:	8194d0        	l32r	a8, 0x420002ac (0x40001230)
4200c05e:	e00800        	callx8	a8
4200c061:	ccca      	bnez.n	a10, 0x4200c071
4200c063:	4801      	l32i.n	a4, a1, 0
4200c065:	72a03f        	movi	a7, 63
4200c068:	473705        	bltu	a7, a4, 0x4200c071
4200c06b:	71aad0        	l32r	a7, 0x42000314 (0x3fc94769)
4200c06e:	424700        	s8i	a4, a7, 0
4200c071:	b171d2        	l32r	a11, 0x42000a38 (0x3c06087f)
4200c074:	a2c12c        	addi	a10, a1, 44
4200c077:	818dd0        	l32r	a8, 0x420002ac (0x40001230)
4200c07a:	e00800        	callx8	a8
4200c07d:	ccba      	bnez.n	a10, 0x4200c08c
4200c07f:	4801      	l32i.n	a4, a1, 0
4200c081:	2c07      	movi.n	a7, 32
4200c083:	473705        	bltu	a7, a4, 0x4200c08c
4200c086:	71cbd0        	l32r	a7, 0x420003b4 (0x3fc94e92)
4200c089:	424700        	s8i	a4, a7, 0
4200c08c:	b16cd2        	l32r	a11, 0x42000a3c (0x3c060888)
4200c08f:	a2c12c        	addi	a10, a1, 44
4200c092:	8186d0        	l32r	a8, 0x420002ac (0x40001230)
4200c095:	e00800        	callx8	a8
4200c098:	dc1a      	bnez.n	a10, 0x4200c0ad
4200c09a:	7801      	l32i.n	a7, a1, 0
4200c09c:	4110d0        	l32r	a4, 0x420000dc (0x36b0)
4200c09f:	8168d2        	l32r	a8, 0x42000a40 (0x6d60)
4200c0a2:	4a47      	add.n	a4, a7, a4
4200c0a4:	473805        	bltu	a8, a4, 0x4200c0ad
4200c0a7:	4108d0        	l32r	a4, 0x420000c8 (0x3fc9bfc4)
4200c0aa:	725400        	s16i	a7, a4, 0
4200c0ad:	b165d2        	l32r	a11, 0x42000a44 (0x3c06088c)
4200c0b0:	a2c12c        	addi	a10, a1, 44
4200c0b3:	817ed0        	l32r	a8, 0x420002ac (0x40001230)
4200c0b6:	e00800        	callx8	a8
4200c0b9:	ccfa      	bnez.n	a10, 0x4200c0cc
4200c0bb:	4801      	l32i.n	a4, a1, 0
4200c0bd:	82a062        	movi	a8, 98
4200c0c0:	72c4ff        	addi	a7, a4, -1
4200c0c3:	773805        	bltu	a8, a7, 0x4200c0cc
4200c0c6:	710cd0        	l32r	a7, 0x420000f8 (0x3fc94768)
4200c0c9:	424700        	s8i	a4, a7, 0
4200c0cc:	b15fd2        	l32r	a11, 0x42000a48 (0x3c060896)
4200c0cf:	a2c12c        	addi	a10, a1, 44
4200c0d2:	8176d0        	l32r	a8, 0x420002ac (0x40001230)
4200c0d5:	e00800        	callx8	a8
4200c0d8:	ccca      	bnez.n	a10, 0x4200c0e8
4200c0da:	4801      	l32i.n	a4, a1, 0
4200c0dc:	7103d1        	l32r	a7, 0x420004e8 (0xffff)
4200c0df:	473705        	bltu	a7, a4, 0x4200c0e8
4200c0e2:	71e5cf        	l32r	a7, 0x42000078 (0x3fca1e54)
4200c0e5:	425700        	s16i	a4, a7, 0
4200c0e8:	b159d2        	l32r	a11, 0x42000a4c (0x3c060a20)
4200c0eb:	a2c12c        	addi	a10, a1, 44
4200c0ee:	816fd0        	l32r	a8, 0x420002ac (0x40001230)
4200c0f1:	e00800        	callx8	a8
4200c0f4:	ccca      	bnez.n	a10, 0x4200c104
4200c0f6:	4801      	l32i.n	a4, a1, 0
4200c0f8:	f62408        	bgeui	a4, 2, 0x4200c104
4200c0fb:	71decf        	l32r	a7, 0x42000074 (0x3fca1e57)
4200c0fe:	404004        	extui	a4, a4, 0, 1
4200c101:	424700        	s8i	a4, a7, 0
4200c104:	b153d2        	l32r	a11, 0x42000a50 (0x3c060a15)
4200c107:	a2c12c        	addi	a10, a1, 44
4200c10a:	8168d0        	l32r	a8, 0x420002ac (0x40001230)
4200c10d:	e00800        	callx8	a8
4200c110:	ccca      	bnez.n	a10, 0x4200c120
4200c112:	4801      	l32i.n	a4, a1, 0
4200c114:	f62408        	bgeui	a4, 2, 0x4200c120
4200c117:	71cecf        	l32r	a7, 0x42000050 (0x3fca1e58)
4200c11a:	404004        	extui	a4, a4, 0, 1
4200c11d:	424700        	s8i	a4, a7, 0
4200c120:	b14dd2        	l32r	a11, 0x42000a54 (0x3c06089b)
4200c123:	a2c12c        	addi	a10, a1, 44
4200c126:	8161d0        	l32r	a8, 0x420002ac (0x40001230)
4200c129:	e00800        	callx8	a8
4200c12c:	718cd1        	l32r	a7, 0x4200075c (0x3fca1dd4)
4200c12f:	ecea      	bnez.n	a10, 0x4200c161
4200c131:	42c1b0        	addi	a4, a1, -80
4200c134:	0c5c      	movi.n	a12, 5
4200c136:	bd07      	mov.n	a11, a7
4200c138:	a2c46c        	addi	a10, a4, 108
4200c13b:	101120        	or	a1, a1, a1
4200c13e:	651ef7        	call8	0x42003324
4200c141:	82a0b0        	movi	a8, 176
4200c144:	42af6c        	movi	a4, -148
4200c147:	1a88      	add.n	a8, a8, a1
4200c149:	a1a2d1        	l32r	a10, 0x420007d4 (0x3fca1e10)
4200c14c:	4ab8      	add.n	a11, a8, a4
4200c14e:	101120        	or	a1, a1, a1
4200c151:	e5f511        	call8	0x4201e0b0
4200c154:	82a0b0        	movi	a8, 176
4200c157:	1a88      	add.n	a8, a8, a1
4200c159:	4aa8      	add.n	a10, a8, a4
4200c15b:	101120        	or	a1, a1, a1
4200c15e:	65c611        	call8	0x4201ddc4
4200c161:	b13dd2        	l32r	a11, 0x42000a58 (0x3c0608a0)
4200c164:	a2c12c        	addi	a10, a1, 44
4200c167:	8151d0        	l32r	a8, 0x420002ac (0x40001230)
4200c16a:	e00800        	callx8	a8
4200c16d:	164a02        	beqz	a10, 0x4200c195
4200c170:	b13bd2        	l32r	a11, 0x42000a5c (0x3c0608a5)
4200c173:	a2c12c        	addi	a10, a1, 44
4200c176:	814dd0        	l32r	a8, 0x420002ac (0x40001230)
4200c179:	e00800        	callx8	a8
4200c17c:	56dacd        	bnez	a10, 0x4200be5d
4200c17f:	4801      	l32i.n	a4, a1, 0
4200c181:	b62402        	bltui	a4, 2, 0x4200c187
4200c184:	4635ff        	j	0x4200be5d
4200c187:	7119d2        	l32r	a7, 0x420009ec (0x3fc94eb1)
4200c18a:	404004        	extui	a4, a4, 0, 1
4200c18d:	424700        	s8i	a4, a7, 0
4200c190:	4632ff        	j	0x4200be5d
4200c193:	000042        	xorb	b0, b0, b0
4200c196:	c1b00c        	l32r	a12, 0x41fcf458
4200c199:	5cbd      	movi.n	a13, 91
4200c19b:	07a2c4        	bge	a2, a0, 0x4200c163
4200c19e:	6c10      	movi.n	a0, -31
4200c1a0:	112025        	l32r	a1, 0x41fd5620
4200c1a3:	18f7      	l32i.n	a1, a7, 60
4200c1a5:	82a0b0        	movi	a8, 176
4200c1a8:	42af6c        	movi	a4, -148
4200c1ab:	1a88      	add.n	a8, a8, a1
4200c1ad:	b1bad1        	l32r	a11, 0x42000898 (0x3c08ded4)
4200c1b0:	40a880        	add	a10, a8, a4
4200c1b3:	101120        	or	a1, a1, a1
4200c1b6:	651a12        	call8	0x4201e35c
4200c1b9:	82a0b0        	movi	a8, 176
4200c1bc:	1a88      	add.n	a8, a8, a1
4200c1be:	7d0a      	mov.n	a7, a10
4200c1c0:	4aa8      	add.n	a10, a8, a4
4200c1c2:	101120        	or	a1, a1, a1
4200c1c5:	e5bf11        	call8	0x4201ddc4
4200c1c8:	1647fa        	beqz	a7, 0x4200c170
4200c1cb:	101120        	or	a1, a1, a1
4200c1ce:	a5b5fe        	call8	0x4200ad28
4200c1d1:	c6e6ff        	j	0x4200c170
4200c1d4:	00b141        	srli	a11, a0, 1
4200c1d7:	d1ad02        	l32r	a13, 0x41fccc8c
4200c1da:	101120        	or	a1, a1, a1
4200c1dd:	25ee11        	call8	0x4201e0c0
4200c1e0:	42a0b0        	movi	a4, 176
4200c1e3:	22af54        	movi	a2, -172
4200c1e6:	1a44      	add.n	a4, a4, a1
4200c1e8:	2aa4      	add.n	a10, a4, a2
4200c1ea:	101120        	or	a1, a1, a1
4200c1ed:	a59507        	call8	0x42013b48
4200c1f0:	52a0b0        	movi	a5, 176
4200c1f3:	1a55      	add.n	a5, a5, a1
4200c1f5:	2aa5      	add.n	a10, a5, a2
4200c1f7:	061dff        	j	0x4200be6f
4200c1fa:	0082a0        	addx4	a8, a2, a0
4200c1fd:	b0          	.byte	0xb0
4200c1fe:	1a88      	add.n	a8, a8, a1
4200c200:	4aa8      	add.n	a10, a8, a4
4200c202:	101120        	or	a1, a1, a1
4200c205:	e5bb11        	call8	0x4201ddc4
4200c208:	ad02      	mov.n	a10, a2
4200c20a:	101120        	or	a1, a1, a1
4200c20d:	25a034        	call8	0x42040c10
4200c210:	32a0b0        	movi	a3, 176
4200c213:	1a33      	add.n	a3, a3, a1
4200c215:	4aa3      	add.n	a10, a3, a4
4200c217:	101120        	or	a1, a1, a1
4200c21a:	a5ba11        	call8	0x4201ddc4
4200c21d:	32a0b0        	movi	a3, 176
4200c220:	1a33      	add.n	a3, a3, a1
4200c222:	a2af54        	movi	a10, -172
4200c225:	aaa3      	add.n	a10, a3, a10
4200c227:	101120        	or	a1, a1, a1
4200c22a:	65b9fe        	call8	0x4200adc0
4200c22d:	c6f5ff        	j	0x4200c208
4200c230:	42a0b0        	movi	a4, 176
4200c233:	1a44      	add.n	a4, a4, a1
4200c235:	4aa5      	add.n	a10, a5, a4
4200c237:	06f7ff        	j	0x4200c217
4200c23a:	0052a0        	addx4	a5, a2, a0
4200c23d:	b01a55        	extui	a1, a11, 26, 6
4200c240:	46fcff        	j	0x4200c235
4200c243:	82a0b0        	movi	a8, 176
4200c246:	1a88      	add.n	a8, a8, a1
4200c248:	4aa8      	add.n	a10, a8, a4
4200c24a:	46f2ff        	j	0x4200c217
4200c24d:	06f3ff        	j	0x4200c21d
4200c250:	1df0      	retw.n
4200c252:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
4200c255:	610021        	l32r	a6, 0x41fd4658
4200c258:	2ed0b2a2 	ee.fft.ams.s16.st.incp	q3, q4, a2, a0, q2, q3, q3, 0
4200c25c:	0020a2        	muluh	a2, a0, a0
4200c25f:	20656a        	maddn.s	f6, f5, f2
4200c262:	0eb2a001 	ee.vmulas.s16.accx.ld.ip.qup	q2, a0, 32, q2, q7, q2, q0
4200c266:	20a220        	or	a10, a2, a2
4200c269:	65754e        	call8	0x4205a9c0
4200c26c:	312ad0        	l32r	a3, 0x42000314 (0x3fc94769)
4200c26f:	0c2b      	movi.n	a11, 2
4200c271:	a24300        	s8i	a10, a3, 0
4200c274:	ad02      	mov.n	a10, a2
4200c276:	a5744e        	call8	0x4205a9c0
4200c279:	4191cf        	l32r	a4, 0x420000c0 (0x3fc9bf7c)
4200c27c:	0c3b      	movi.n	a11, 3
4200c27e:	a904      	s32i.n	a10, a4, 0
4200c280:	ad02      	mov.n	a10, a2
4200c282:	e5734e        	call8	0x4205a9c0
4200c285:	0c14      	movi.n	a4, 1
4200c287:	0c03      	movi.n	a3, 0
4200c289:	a03493        	movnez	a3, a4, a10
4200c28c:	ad03      	mov.n	a10, a3
4200c28e:	3122d0        	l32r	a3, 0x42000318 (0x3fc9bfc7)
4200c291:	0c4b      	movi.n	a11, 4
4200c293:	a24300        	s8i	a10, a3, 0
4200c296:	ad02      	mov.n	a10, a2
4200c298:	65724e        	call8	0x4205a9c0
4200c29b:	5183cf        	l32r	a5, 0x420000a8 (0x3fc9bf83)
4200c29e:	0c5b      	movi.n	a11, 5
4200c2a0:	a24500        	s8i	a10, a5, 0
4200c2a3:	ad02      	mov.n	a10, a2
4200c2a5:	a5714e        	call8	0x4205a9c0
4200c2a8:	3188cf        	l32r	a3, 0x420000c8 (0x3fc9bfc4)
4200c2ab:	80aa11        	slli	a10, a10, 8
4200c2ae:	a25300        	s16i	a10, a3, 0
4200c2b1:	0c6b      	movi.n	a11, 6
4200c2b3:	ad02      	mov.n	a10, a2
4200c2b5:	a5704e        	call8	0x4205a9c0
4200c2b8:	421300        	l16ui	a4, a3, 0
4200c2bb:	6187cf        	l32r	a6, 0x420000d8 (0x3fc94b5c)
4200c2be:	40aa20        	or	a10, a10, a4
4200c2c1:	a25300        	s16i	a10, a3, 0
4200c2c4:	0c85      	movi.n	a5, 8
4200c2c6:	4d06      	mov.n	a4, a6
4200c2c8:	5cc7      	movi.n	a7, 92
4200c2ca:	bd05      	mov.n	a11, a5
4200c2cc:	ad02      	mov.n	a10, a2
4200c2ce:	5931      	s32i.n	a5, a1, 12
4200c2d0:	e56e4e        	call8	0x4205a9c0
4200c2d3:	80aa11        	slli	a10, a10, 8
4200c2d6:	a25605        	s16i	a10, a6, 10
4200c2d9:	1bb5      	addi.n	a11, a5, 1
4200c2db:	20a220        	or	a10, a2, a2
4200c2de:	256e4e        	call8	0x4205a9c0
4200c2e1:	921605        	l16ui	a9, a6, 10
4200c2e4:	2bb5      	addi.n	a11, a5, 2
4200c2e6:	90aa20        	or	a10, a10, a9
4200c2e9:	a25605        	s16i	a10, a6, 10
4200c2ec:	20a220        	or	a10, a2, a2
4200c2ef:	256d4e        	call8	0x4205a9c0
4200c2f2:	a2460c        	s8i	a10, a6, 12
4200c2f5:	d831      	l32i.n	a13, a1, 12
4200c2f7:	ad02      	mov.n	a10, a2
4200c2f9:	3bbd      	addi.n	a11, a13, 3
4200c2fb:	656c4e        	call8	0x4205a9c0
4200c2fe:	a2460d        	s8i	a10, a6, 13
4200c301:	4b55      	addi.n	a5, a5, 4
4200c303:	62c610        	addi	a6, a6, 16
4200c306:	7795c0        	bne	a5, a7, 0x4200c2ca
4200c309:	bd05      	mov.n	a11, a5
4200c30b:	ad02      	mov.n	a10, a2
4200c30d:	256b4e        	call8	0x4205a9c0
4200c310:	517acf        	l32r	a5, 0x420000f8 (0x3fc94768)
4200c313:	5cdb      	movi.n	a11, 93
4200c315:	a24500        	s8i	a10, a5, 0
4200c318:	ad02      	mov.n	a10, a2
4200c31a:	656a4e        	call8	0x4205a9c0
4200c31d:	81ffcf        	l32r	a8, 0x4200031c (0x3fc94e95)
4200c320:	5ceb      	movi.n	a11, 94
4200c322:	a24800        	s8i	a10, a8, 0
4200c325:	ad02      	mov.n	a10, a2
4200c327:	a5694e        	call8	0x4205a9c0
4200c32a:	81fdcf        	l32r	a8, 0x42000320 (0x3fc94e93)
4200c32d:	b20500        	l8ui	a11, a5, 0
4200c330:	a24800        	s8i	a10, a8, 0
4200c333:	f0bb11        	slli	a11, a11, 1
4200c336:	0c0a      	movi.n	a10, 0
4200c338:	251e13        	call8	0x4201f51c
4200c33b:	ad02      	mov.n	a10, a2
4200c33d:	65720e        	call8	0x4201aa64
4200c340:	25a2ff        	call8	0x4200bd64
4200c343:	220500        	l8ui	a2, a5, 0
4200c346:	cc32      	bnez.n	a2, 0x4200c34d
4200c348:	1c42      	movi.n	a2, 20
4200c34a:	224500        	s8i	a2, a5, 0
4200c34d:	51f1cf        	l32r	a5, 0x42000314 (0x3fc94769)
4200c350:	215fcf        	l32r	a2, 0x420000cc (0x3fc9a1dc)
4200c353:	b20500        	l8ui	a11, a5, 0
4200c356:	ad02      	mov.n	a10, a2
4200c358:	e54c0f        	call8	0x4201b828
4200c35b:	5159cf        	l32r	a5, 0x420000c0 (0x3fc9bf7c)
4200c35e:	815ccf        	l32r	a8, 0x420000d0 (0x3fc9bf9c)
4200c361:	7805      	l32i.n	a7, a5, 0
4200c363:	c07711        	slli	a7, a7, 4
4200c366:	7a54      	add.n	a5, a4, a7
4200c368:	921505        	l16ui	a9, a5, 10
4200c36b:	925800        	s16i	a9, a8, 0
4200c36e:	920504        	l8ui	a9, a5, 4
4200c371:	8108d0        	l32r	a8, 0x42000394 (0x3fc94d0c)
4200c374:	dce9      	bnez.n	a9, 0x4200c396
4200c376:	52050c        	l8ui	a5, a5, 12
4200c379:	9107d0        	l32r	a9, 0x42000398 (0x3fc94d18)
4200c37c:	005523        	sext	a5, a5, 7
4200c37f:	5909      	s32i.n	a5, a9, 0
4200c381:	5050f4        	extui	a5, a5, 0, 16
4200c384:	9106d0        	l32r	a9, 0x4200039c (0x3c061834)
4200c387:	525800        	s16i	a5, a8, 0
4200c38a:	d05511        	slli	a5, a5, 3
4200c38d:	505980        	add	a5, a9, a5
4200c390:	522500        	l32i	a5, a5, 0
4200c393:	525253        	s16i	a5, a2, 166
4200c396:	7a54      	add.n	a5, a4, a7
4200c398:	8931      	s32i.n	a8, a1, 12
4200c39a:	2510f7        	call8	0x4200349c
4200c39d:	52050c        	l8ui	a5, a5, 12
4200c3a0:	8831      	l32i.n	a8, a1, 12
4200c3a2:	005523        	sext	a5, a5, 7
4200c3a5:	5090f4        	extui	a9, a5, 0, 16
4200c3a8:	d0b911        	slli	a11, a9, 3
4200c3ab:	561a0a        	bnez	a10, 0x4200c450
4200c3ae:	a142cf        	l32r	a10, 0x420000b8 (0x3fc94d14)
4200c3b1:	925800        	s16i	a9, a8, 0
4200c3b4:	590a      	s32i.n	a5, a10, 0
4200c3b6:	513fcf        	l32r	a5, 0x420000b4 (0x3c0617fc)
4200c3b9:	ba55      	add.n	a5, a5, a11
4200c3bb:	5805      	l32i.n	a5, a5, 0
4200c3bd:	7a44      	add.n	a4, a4, a7
4200c3bf:	525253        	s16i	a5, a2, 166
4200c3c2:	52040d        	l8ui	a5, a4, 13
4200c3c5:	4138cf        	l32r	a4, 0x420000a8 (0x3fc9bf83)
4200c3c8:	820400        	l8ui	a8, a4, 0
4200c3cb:	004523        	sext	a4, a5, 7
4200c3ce:	0b78      	addi.n	a7, a8, -1
4200c3d0:	707074        	extui	a7, a7, 0, 8
4200c3d3:	b62702        	bltui	a7, 2, 0x4200c3d9
4200c3d6:	862100        	j	0x4200c460
4200c3d9:	0c55      	movi.n	a5, 5
4200c3db:	a577f8        	call8	0x42004b54
4200c3de:	504443        	min	a4, a4, a5
4200c3e1:	710dd0        	l32r	a7, 0x42000418 (0x3fc94db0)
4200c3e4:	404074        	extui	a4, a4, 0, 8
4200c3e7:	510dd0        	l32r	a5, 0x4200041c (0x3fc94d80)
4200c3ea:	424700        	s8i	a4, a7, 0
4200c3ed:	004423        	sext	a4, a4, 7
4200c3f0:	d04411        	slli	a4, a4, 3
4200c3f3:	4a45      	add.n	a4, a5, a4
4200c3f5:	b20400        	l8ui	a11, a4, 0
4200c3f8:	ad02      	mov.n	a10, a2
4200c3fa:	25a40f        	call8	0x4201be3c
4200c3fd:	420700        	l8ui	a4, a7, 0
4200c400:	004423        	sext	a4, a4, 7
4200c403:	d04411        	slli	a4, a4, 3
4200c406:	4a55      	add.n	a5, a5, a4
4200c408:	520500        	l8ui	a5, a5, 0
4200c40b:	42c5fc        	addi	a4, a5, -4
4200c40e:	404074        	extui	a4, a4, 0, 8
4200c411:	b62403        	bltui	a4, 2, 0x4200c418
4200c414:	0c1b      	movi.n	a11, 1
4200c416:	cc05      	bnez.n	a5, 0x4200c41a
4200c418:	0c0b      	movi.n	a11, 0
4200c41a:	20a220        	or	a10, a2, a2
4200c41d:	e59f0f        	call8	0x4201be1c
4200c420:	b29300        	l16si	a11, a3, 0
4200c423:	20a220        	or	a10, a2, a2
4200c426:	25930f        	call8	0x4201bd58
4200c429:	a50bf7        	call8	0x420034e4
4200c42c:	c29300        	l16si	a12, a3, 0
4200c42f:	a161d0        	l32r	a10, 0x420005b4 (0x3fc94e96)
4200c432:	b15fd0        	l32r	a11, 0x420005b0 (0x3c06034c)
4200c435:	e61c02        	bgei	a12, 1, 0x4200c43b
4200c438:	b160d0        	l32r	a11, 0x420005b8 (0x3c06034d)
4200c43b:	a5c039        	call8	0x42046044
4200c43e:	3c2a      	movi.n	a10, 50
4200c440:	e51e13        	call8	0x4201f630
4200c443:	51b4cf        	l32r	a5, 0x42000314 (0x3fc94769)
4200c446:	ad02      	mov.n	a10, a2
4200c448:	b20500        	l8ui	a11, a5, 0
4200c44b:	e53d0f        	call8	0x4201b828
4200c44e:	1df0      	retw.n
4200c450:	a118cf        	l32r	a10, 0x420000b0 (0x3fc94d10)
4200c453:	925800        	s16i	a9, a8, 0
4200c456:	590a      	s32i.n	a5, a10, 0
4200c458:	5115cf        	l32r	a5, 0x420000ac (0x3c0617b4)
4200c45b:	86d6ff        	j	0x4200c3b9
4200c45e:	0000d0        	subx2	a0, a0, a0
4200c461:	44          	.byte	0x44
4200c462:	116638        	l32r	a1, 0x41fda5fc
4200c465:	1971      	s32i.n	a1, a1, 28
4200c467:	eecf0c1c 	ee.vmulas.s16.qacc.ld.ip.qup	q1, a14, -16, q3, q0, q0, q4
4200c46b:	524700        	s8i	a5, a7, 0
4200c46e:	51edcf        	l32r	a5, 0x42000424 (0x3fc94d44)
4200c471:	ad02      	mov.n	a10, a2
4200c473:	404580        	add	a4, a5, a4
4200c476:	b20400        	l8ui	a11, a4, 0
4200c479:	65f20e        	call8	0x4201b3a0
4200c47c:	46eaff        	j	0x4200c429
4200c47f:	0071e2        	remu	a7, a1, a0
4200c482:	cfb1e3cf 	ee.vmulas.u8.qacc.ld.xp.qup	q6, a12, a1, q6, q7, q6, q3
4200c486:	524700        	s8i	a5, a7, 0
4200c489:	51e0cf        	l32r	a5, 0x4200040c (0x3fc94d1c)
4200c48c:	ad02      	mov.n	a10, a2
4200c48e:	4a45      	add.n	a4, a5, a4
4200c490:	c20400        	l8ui	a12, a4, 0
4200c493:	a5280f        	call8	0x4201b71c
4200c496:	c6e3ff        	j	0x4200c429
4200c499:	000000        	ill
4200c49c:	360101        	entry	a1, 128
4200c49f:	31fbce        	l32r	a3, 0x4200008c (0x3fca2abc)
4200c4a2:	c02000        	memw
4200c4a5:	2803      	l32i.n	a2, a3, 0
4200c4a7:	c02000        	memw
4200c4aa:	226117        	s32i	a2, a1, 92
4200c4ad:	216cd1        	l32r	a2, 0x42000a60 (0x3fca1e50)
4200c4b0:	220200        	l8ui	a2, a2, 0
4200c4b3:	16a215        	beqz	a2, 0x4200c611
4200c4b6:	2115cf        	l32r	a2, 0x4200010c (0x3fc94eb0)
4200c4b9:	220200        	l8ui	a2, a2, 0
4200c4bc:	161215        	beqz	a2, 0x4200c611
4200c4bf:	21a7d0        	l32r	a2, 0x4200075c (0x3fca1dd4)
4200c4c2:	a2c11c        	addi	a10, a1, 28
4200c4c5:	2c1d      	movi.n	a13, 33
4200c4c7:	1cec      	movi.n	a12, 30
4200c4c9:	bd02      	mov.n	a11, a2
4200c4cb:	101120        	or	a1, a1, a1
4200c4ce:	a51512        	call8	0x4201e628
4200c4d1:	a2c11c        	addi	a10, a1, 28
4200c4d4:	101120        	or	a1, a1, a1
4200c4d7:	e53d12        	call8	0x4201e8b4
4200c4da:	41c1d0        	l32r	a4, 0x420007e0 (0x3c06093d)
4200c4dd:	a2c11c        	addi	a10, a1, 28
4200c4e0:	bd04      	mov.n	a11, a4
4200c4e2:	101120        	or	a1, a1, a1
4200c4e5:	a5de11        	call8	0x4201e2d0
4200c4e8:	3168d0        	l32r	a3, 0x42000688 (0x3fca1e30)
4200c4eb:	d2a001        	movi	a13, 1
4200c4ee:	c2a000        	movi	a12, 0
4200c4f1:	30b320        	or	a11, a3, a3
4200c4f4:	a2c14c        	addi	a10, a1, 76
4200c4f7:	101120        	or	a1, a1, a1
4200c4fa:	e51212        	call8	0x4201e628
4200c4fd:	b159d1        	l32r	a11, 0x42000a64 (0x3c088289)
4200c500:	a2c14c        	addi	a10, a1, 76
4200c503:	101120        	or	a1, a1, a1
4200c506:	65e511        	call8	0x4201e35c
4200c509:	a05a20        	or	a5, a10, a10
4200c50c:	a2c14c        	addi	a10, a1, 76
4200c50f:	101120        	or	a1, a1, a1
4200c512:	258b11        	call8	0x4201ddc4
4200c515:	16d508        	beqz	a5, 0x4200c5a6
4200c518:	0c1c      	movi.n	a12, 1
4200c51a:	bd03      	mov.n	a11, a3
4200c51c:	a2c13c        	addi	a10, a1, 60
4200c51f:	101120        	or	a1, a1, a1
4200c522:	25e0f6        	call8	0x42003324
4200c525:	b13ccf        	l32r	a11, 0x42000218 (0x3c060fb0)
4200c528:	a2c14c        	addi	a10, a1, 76
4200c52b:	101120        	or	a1, a1, a1
4200c52e:	e5a211        	call8	0x4201df5c
4200c531:	b2c14c        	addi	a11, a1, 76
4200c534:	a2c13c        	addi	a10, a1, 60
4200c537:	101120        	or	a1, a1, a1
4200c53a:	250812        	call8	0x4201e5bc
4200c53d:	5d0a      	mov.n	a5, a10
4200c53f:	a2c14c        	addi	a10, a1, 76
4200c542:	101120        	or	a1, a1, a1
4200c545:	e58711        	call8	0x4201ddc4
4200c548:	a61569        	blti	a5, 1, 0x4200c5b5
4200c54b:	1bc5      	addi.n	a12, a5, 1
4200c54d:	b2c13c        	addi	a11, a1, 60
4200c550:	a2c14c        	addi	a10, a1, 76
4200c553:	101120        	or	a1, a1, a1
4200c556:	e5dcf6        	call8	0x42003324
4200c559:	b2c14c        	addi	a11, a1, 76
4200c55c:	ad03      	mov.n	a10, a3
4200c55e:	101120        	or	a1, a1, a1
4200c561:	e5b411        	call8	0x4201e0b0
4200c564:	a2c14c        	addi	a10, a1, 76
4200c567:	101120        	or	a1, a1, a1
4200c56a:	a58511        	call8	0x4201ddc4
4200c56d:	dd05      	mov.n	a13, a5
4200c56f:	0c0c      	movi.n	a12, 0
4200c571:	b2c13c        	addi	a11, a1, 60
4200c574:	a2c14c        	addi	a10, a1, 76
4200c577:	101120        	or	a1, a1, a1
4200c57a:	e50a12        	call8	0x4201e628
4200c57d:	b2c14c        	addi	a11, a1, 76
4200c580:	a2c11c        	addi	a10, a1, 28
4200c583:	101120        	or	a1, a1, a1
4200c586:	a5b211        	call8	0x4201e0b0
4200c589:	a2c14c        	addi	a10, a1, 76
4200c58c:	101120        	or	a1, a1, a1
4200c58f:	658311        	call8	0x4201ddc4
4200c592:	bd04      	mov.n	a11, a4
4200c594:	a2c11c        	addi	a10, a1, 28
4200c597:	101120        	or	a1, a1, a1
4200c59a:	65d311        	call8	0x4201e2d0
4200c59d:	a2c13c        	addi	a10, a1, 60
4200c5a0:	101120        	or	a1, a1, a1
4200c5a3:	258211        	call8	0x4201ddc4
4200c5a6:	b130d1        	l32r	a11, 0x42000a68 (0x3c0608aa)
4200c5a9:	a2c14c        	addi	a10, a1, 76
4200c5ac:	101120        	or	a1, a1, a1
4200c5af:	e59a11        	call8	0x4201df5c
4200c5b2:	060700        	j	0x4200c5d2
4200c5b5:	b149d0        	l32r	a11, 0x420006dc (0x3c08657f)
4200c5b8:	ad03      	mov.n	a10, a3
4200c5ba:	101120        	or	a1, a1, a1
4200c5bd:	25b011        	call8	0x4201e0c0
4200c5c0:	b2c13c        	addi	a11, a1, 60
4200c5c3:	a2c11c        	addi	a10, a1, 28
4200c5c6:	101120        	or	a1, a1, a1
4200c5c9:	25aa11        	call8	0x4201e06c
4200c5cc:	86f0ff        	j	0x4200c592
4200c5cf:	000000        	ill
4200c5d2:	d1dad0        	l32r	a13, 0x4200093c (0x3c0615f9)
4200c5d5:	b1d1d0        	l32r	a11, 0x4200091c (0x3fca1e64)
4200c5d8:	0c0e      	movi.n	a14, 0
4200c5da:	c2c14c        	addi	a12, a1, 76
4200c5dd:	4ba1      	addi.n	a10, a1, 4
4200c5df:	101120        	or	a1, a1, a1
4200c5e2:	655407        	call8	0x42013b28
4200c5e5:	a2c14c        	addi	a10, a1, 76
4200c5e8:	101120        	or	a1, a1, a1
4200c5eb:	a57d11        	call8	0x4201ddc4
4200c5ee:	4ba1      	addi.n	a10, a1, 4
4200c5f0:	101120        	or	a1, a1, a1
4200c5f3:	e56d4d        	call8	0x42059cd0
4200c5f6:	0c05      	movi.n	a5, 0
4200c5f8:	6d0a      	mov.n	a6, a10
4200c5fa:	571a02        	beq	a10, a5, 0x4200c600
4200c5fd:	c6d100        	j	0x4200c948
4200c600:	4ba1      	addi.n	a10, a1, 4
4200c602:	101120        	or	a1, a1, a1
4200c605:	a57bfe        	call8	0x4200adc0
4200c608:	a2c11c        	addi	a10, a1, 28
4200c60b:	101120        	or	a1, a1, a1
4200c60e:	657b11        	call8	0x4201ddc4
4200c611:	419ece        	l32r	a4, 0x4200008c (0x3fca2abc)
4200c614:	c02000        	memw
4200c617:	322117        	l32i	a3, a1, 92
4200c61a:	c02000        	memw
4200c61d:	222400        	l32i	a2, a4, 0
4200c620:	279302        	bne	a3, a2, 0x4200c626
4200c623:	46f500        	j	0x4200c9fc
4200c626:	819ace        	l32r	a8, 0x42000090 (0x40377780)
4200c629:	e00800        	callx8	a8
4200c62c:	161a18        	beqz	a10, 0x4200c7b1
4200c62f:	0cac      	movi.n	a12, 10
4200c631:	b2c104        	addi	a11, a1, 4
4200c634:	a2c14c        	addi	a10, a1, 76
4200c637:	101120        	or	a1, a1, a1
4200c63a:	65f910        	call8	0x4201d5d0
4200c63d:	b2c14c        	addi	a11, a1, 76
4200c640:	ad02      	mov.n	a10, a2
4200c642:	101120        	or	a1, a1, a1
4200c645:	a5a611        	call8	0x4201e0b0
4200c648:	a2c14c        	addi	a10, a1, 76
4200c64b:	101120        	or	a1, a1, a1
4200c64e:	657711        	call8	0x4201ddc4
4200c651:	b106d1        	l32r	a11, 0x42000a6c (0x3c08f8e5)
4200c654:	a2c14c        	addi	a10, a1, 76
4200c657:	101120        	or	a1, a1, a1
4200c65a:	259011        	call8	0x4201df5c
4200c65d:	b2c11c        	addi	a11, a1, 28
4200c660:	a2c14c        	addi	a10, a1, 76
4200c663:	101120        	or	a1, a1, a1
4200c666:	25ca11        	call8	0x4201e308
4200c669:	a0ba20        	or	a11, a10, a10
4200c66c:	20a220        	or	a10, a2, a2
4200c66f:	101120        	or	a1, a1, a1
4200c672:	a5f411        	call8	0x4201e5bc
4200c675:	7d0a      	mov.n	a7, a10
4200c677:	a2c14c        	addi	a10, a1, 76
4200c67a:	101120        	or	a1, a1, a1
4200c67d:	657411        	call8	0x4201ddc4
4200c680:	4137d0        	l32r	a4, 0x4200075c (0x3fca1dd4)
4200c683:	962716        	bltz	a7, 0x4200c7e9
4200c686:	b1bbce        	l32r	a11, 0x42000174 (0x3c08f8e7)
4200c689:	a2c14c        	addi	a10, a1, 76
4200c68c:	101120        	or	a1, a1, a1
4200c68f:	e58c11        	call8	0x4201df5c
4200c692:	bd03      	mov.n	a11, a3
4200c694:	a2c14c        	addi	a10, a1, 76
4200c697:	101120        	or	a1, a1, a1
4200c69a:	e5c611        	call8	0x4201e308
4200c69d:	71dece        	l32r	a7, 0x42000218 (0x3c060fb0)
4200c6a0:	70b720        	or	a11, a7, a7
4200c6a3:	101120        	or	a1, a1, a1
4200c6a6:	e5c811        	call8	0x4201e334
4200c6a9:	bd0a      	mov.n	a11, a10
4200c6ab:	20a220        	or	a10, a2, a2
4200c6ae:	101120        	or	a1, a1, a1
4200c6b1:	a5f011        	call8	0x4201e5bc
4200c6b4:	a05a20        	or	a5, a10, a10
4200c6b7:	a2c14c        	addi	a10, a1, 76
4200c6ba:	101120        	or	a1, a1, a1
4200c6bd:	657011        	call8	0x4201ddc4
4200c6c0:	70b720        	or	a11, a7, a7
4200c6c3:	a2c14c        	addi	a10, a1, 76
4200c6c6:	101120        	or	a1, a1, a1
4200c6c9:	258911        	call8	0x4201df5c
4200c6cc:	b2c14c        	addi	a11, a1, 76
4200c6cf:	20a220        	or	a10, a2, a2
4200c6d2:	101120        	or	a1, a1, a1
4200c6d5:	65ee11        	call8	0x4201e5bc
4200c6d8:	a07a20        	or	a7, a10, a10
4200c6db:	a2c14c        	addi	a10, a1, 76
4200c6de:	101120        	or	a1, a1, a1
4200c6e1:	256e11        	call8	0x4201ddc4
4200c6e4:	0cb8      	movi.n	a8, 11
4200c6e6:	77281e        	blt	a8, a7, 0x4200c708
4200c6e9:	96b523        	bltz	a5, 0x4200c928
4200c6ec:	30a320        	or	a10, a3, a3
4200c6ef:	101120        	or	a1, a1, a1
4200c6f2:	e5514d        	call8	0x42059c10
4200c6f5:	2baa      	addi.n	a10, a10, 2
4200c6f7:	5aca      	add.n	a12, a10, a5
4200c6f9:	bd02      	mov.n	a11, a2
4200c6fb:	a2c12c        	addi	a10, a1, 44
4200c6fe:	101120        	or	a1, a1, a1
4200c701:	25c2f6        	call8	0x42003324
4200c704:	460100        	j	0x4200c70d
4200c707:	000c65        	extui	a0, a0, 28, 7
4200c70a:	86f7ff        	j	0x4200c6ec
4200c70d:	b2c12c        	addi	a11, a1, 44
4200c710:	a2c13c        	addi	a10, a1, 60
4200c713:	101120        	or	a1, a1, a1
4200c716:	659811        	call8	0x4201e09c
4200c719:	a2c13c        	addi	a10, a1, 60
4200c71c:	101120        	or	a1, a1, a1
4200c71f:	a505fd        	call8	0x42009778
4200c722:	a0da20        	or	a13, a10, a10
4200c725:	c2a000        	movi	a12, 0
4200c728:	b2c12c        	addi	a11, a1, 44
4200c72b:	a2c14c        	addi	a10, a1, 76
4200c72e:	101120        	or	a1, a1, a1
4200c731:	65ef11        	call8	0x4201e628
4200c734:	b2c14c        	addi	a11, a1, 76
4200c737:	a2c12c        	addi	a10, a1, 44
4200c73a:	101120        	or	a1, a1, a1
4200c73d:	259711        	call8	0x4201e0b0
4200c740:	a2c14c        	addi	a10, a1, 76
4200c743:	101120        	or	a1, a1, a1
4200c746:	e56711        	call8	0x4201ddc4
4200c749:	a2c13c        	addi	a10, a1, 60
4200c74c:	101120        	or	a1, a1, a1
4200c74f:	656711        	call8	0x4201ddc4
4200c752:	d2a019        	movi	a13, 25
4200c755:	c2a000        	movi	a12, 0
4200c758:	b2c12c        	addi	a11, a1, 44
4200c75b:	a2c14c        	addi	a10, a1, 76
4200c75e:	101120        	or	a1, a1, a1
4200c761:	65ec11        	call8	0x4201e628
4200c764:	b2c14c        	addi	a11, a1, 76
4200c767:	a2c12c        	addi	a10, a1, 44
4200c76a:	101120        	or	a1, a1, a1
4200c76d:	259411        	call8	0x4201e0b0
4200c770:	a2c14c        	addi	a10, a1, 76
4200c773:	101120        	or	a1, a1, a1
4200c776:	e56411        	call8	0x4201ddc4
4200c779:	b2c12c        	addi	a11, a1, 44
4200c77c:	30a320        	or	a10, a3, a3
4200c77f:	101120        	or	a1, a1, a1
4200c782:	a58e11        	call8	0x4201e06c
4200c785:	bd04      	mov.n	a11, a4
4200c787:	a2c14c        	addi	a10, a1, 76
4200c78a:	101120        	or	a1, a1, a1
4200c78d:	e59011        	call8	0x4201e09c
4200c790:	a2c14c        	addi	a10, a1, 76
4200c793:	101120        	or	a1, a1, a1
4200c796:	e500fd        	call8	0x420097a4
4200c799:	a02a20        	or	a2, a10, a10
4200c79c:	a2c14c        	addi	a10, a1, 76
4200c79f:	101120        	or	a1, a1, a1
4200c7a2:	256211        	call8	0x4201ddc4
4200c7a5:	d63201        	bgez	a2, 0x4200c7bc
4200c7a8:	a2c12c        	addi	a10, a1, 44
4200c7ab:	101120        	or	a1, a1, a1
4200c7ae:	656111        	call8	0x4201ddc4
4200c7b1:	4ba1      	addi.n	a10, a1, 4
4200c7b3:	101120        	or	a1, a1, a1
4200c7b6:	253907        	call8	0x42013b48
4200c7b9:	c690ff        	j	0x4200c600
4200c7bc:	1bc2      	addi.n	a12, a2, 1
4200c7be:	bd04      	mov.n	a11, a4
4200c7c0:	a2c14c        	addi	a10, a1, 76
4200c7c3:	101120        	or	a1, a1, a1
4200c7c6:	e5b5f6        	call8	0x42003324
4200c7c9:	a103d0        	l32r	a10, 0x420007d8 (0x3fca1e00)
4200c7cc:	b2c14c        	addi	a11, a1, 76
4200c7cf:	101120        	or	a1, a1, a1
4200c7d2:	e58d11        	call8	0x4201e0b0
4200c7d5:	a2c14c        	addi	a10, a1, 76
4200c7d8:	101120        	or	a1, a1, a1
4200c7db:	a55e11        	call8	0x4201ddc4
4200c7de:	101120        	or	a1, a1, a1
4200c7e1:	65ccfc        	call8	0x420094a8
4200c7e4:	06f0ff        	j	0x4200c7a8
4200c7e7:	0000b1        	sra	a0, a0
