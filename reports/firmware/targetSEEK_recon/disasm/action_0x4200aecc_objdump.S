
reports/firmware/targetSEEK_recon/segments/seg3_0x42000020.bin:     file format binary


Disassembly of section .data:

4200aecc <.data+0xaeac>:
4200aecc:	368101        	entry	a1, 192
4200aecf:	316fd4        	l32r	a3, 0x4200008c (0x3fca2abc)
4200aed2:	5196d6        	l32r	a5, 0x4200092c (0x3c06062b)
4200aed5:	c02000        	memw
4200aed8:	222300        	l32i	a2, a3, 0
4200aedb:	bd05      	mov.n	a11, a5
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
4200b25f:	        	addi	a11, a1, 108
