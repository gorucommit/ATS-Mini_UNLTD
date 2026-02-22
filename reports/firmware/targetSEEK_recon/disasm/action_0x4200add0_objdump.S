
reports/firmware/targetSEEK_recon/segments/seg3_0x42000020.bin:     file format binary


Disassembly of section .data:

4200add0 <.data+0xadb0>:
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
4200af1f:	        	addi	a10, a2, 100
