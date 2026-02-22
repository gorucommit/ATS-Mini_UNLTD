42011a3e:	a51002        	call8	0x42013b48
42011a41:	a2c114        	addi	a10, a1, 20
42011a44:	101120        	or	a1, a1, a1
42011a47:	a537f9        	call8	0x4200adc0
42011a4a:	4190b9        	l32r	a4, 0x4200008c (0x3fca2abc)
42011a4d:	c02000        	memw
42011a50:	322123        	l32i	a3, a1, 140
42011a53:	c02000        	memw
42011a56:	2804      	l32i.n	a2, a4, 0
42011a58:	271326        	beq	a3, a2, 0x42011a82
42011a5b:	818db9        	l32r	a8, 0x42000090 (0x40377780)
42011a5e:	e00800        	callx8	a8
42011a61:	a2c144        	addi	a10, a1, 68
42011a64:	101120        	or	a1, a1, a1
42011a67:	e5350c        	call8	0x4201ddc4
42011a6a:	a2c114        	addi	a10, a1, 20
42011a6d:	101120        	or	a1, a1, a1
42011a70:	e534f9        	call8	0x4200adc0
42011a73:	20a220        	or	a10, a2, a2
42011a76:	101120        	or	a1, a1, a1
42011a79:	65192f        	call8	0x42040c10
42011a7c:	46f8ff        	j	0x42011a61
42011a7f:	c6f9ff        	j	0x42011a6a
42011a82:	1df0      	retw.n
42011a84:	36c100        	entry	a1, 96
42011a87:	3181b9        	l32r	a3, 0x4200008c (0x3fca2abc)
42011a8a:	c02000        	memw
42011a8d:	222300        	l32i	a2, a3, 0
42011a90:	c02000        	memw
42011a93:	22610f        	s32i	a2, a1, 60
42011a96:	101120        	or	a1, a1, a1
42011a99:	a5b70d        	call8	0x4201f614
42011a9c:	2186bc        	l32r	a2, 0x42000cb4 (0x3fc94eac)
42011a9f:	6186bc        	l32r	a6, 0x42000cb8 (0x3fca1dc8)
42011aa2:	a902      	s32i.n	a10, a2, 0
42011aa4:	2806      	l32i.n	a2, a6, 0
42011aa6:	319bb9        	l32r	a3, 0x42000114 (0x3fca1f6c)
42011aa9:	20aac0        	sub	a10, a10, a2
42011aac:	22a3e8        	movi	a2, 0x3e8
42011aaf:	a7a262        	bge	a2, a10, 0x42011b15
42011ab2:	212bbb        	l32r	a2, 0x42000760 (0x3fca1dcc)
42011ab5:	4802      	l32i.n	a4, a2, 0
42011ab7:	bc64      	beqz.n	a4, 0x42011af1
42011ab9:	b180bc        	l32r	a11, 0x42000cbc (0x3c060560)
42011abc:	30a320        	or	a10, a3, a3
42011abf:	101120        	or	a1, a1, a1
42011ac2:	65950b        	call8	0x4201d418
42011ac5:	b802      	l32i.n	a11, a2, 0
42011ac7:	0cac      	movi.n	a12, 10
42011ac9:	ad03      	mov.n	a10, a3
42011acb:	101120        	or	a1, a1, a1
42011ace:	659f0b        	call8	0x4201d4c4
42011ad1:	b17bbc        	l32r	a11, 0x42000cc0 (0x3c060b72)
42011ad4:	ad03      	mov.n	a10, a3
42011ad6:	101120        	or	a1, a1, a1
42011ad9:	e5930b        	call8	0x4201d418
42011adc:	a122bb        	l32r	a10, 0x42000764 (0x3fca1dac)
42011adf:	101120        	or	a1, a1, a1
42011ae2:	650602        	call8	0x42013b48
42011ae5:	101120        	or	a1, a1, a1
42011ae8:	a54ff9        	call8	0x4200afe4
42011aeb:	101120        	or	a1, a1, a1
42011aee:	25e7fb        	call8	0x4200d960
42011af1:	0c04      	movi.n	a4, 0
42011af3:	4902      	s32i.n	a4, a2, 0
42011af5:	2118bb        	l32r	a2, 0x42000758 (0x3fca1dc4)
42011af8:	420200        	l8ui	a4, a2, 0
42011afb:	8ca4      	beqz.n	a4, 0x42011b09
42011afd:	b171bc        	l32r	a11, 0x42000cc4 (0x3c060b82)
42011b00:	30a320        	or	a10, a3, a3
42011b03:	101120        	or	a1, a1, a1
42011b06:	25910b        	call8	0x4201d418
42011b09:	5112bb        	l32r	a5, 0x42000754 (0x3fca1dc5)
42011b0c:	42a000        	movi	a4, 0
42011b0f:	424500        	s8i	a4, a5, 0
42011b12:	424200        	s8i	a4, a2, 0
42011b15:	ad03      	mov.n	a10, a3
42011b17:	101120        	or	a1, a1, a1
42011b1a:	65330b        	call8	0x4201ce50
42011b1d:	167a0a        	beqz	a10, 0x42011bc8
42011b20:	bd03      	mov.n	a11, a3
42011b22:	a2c12c        	addi	a10, a1, 44
42011b25:	0cac      	movi.n	a12, 10
42011b27:	101120        	or	a1, a1, a1
42011b2a:	65aa0b        	call8	0x4201d5d0
42011b2d:	210bbb        	l32r	a2, 0x4200075c (0x3fca1dd4)
42011b30:	b2c12c        	addi	a11, a1, 44
42011b33:	20a220        	or	a10, a2, a2
42011b36:	101120        	or	a1, a1, a1
42011b39:	65570c        	call8	0x4201e0b0
42011b3c:	a2c12c        	addi	a10, a1, 44
42011b3f:	101120        	or	a1, a1, a1
42011b42:	25280c        	call8	0x4201ddc4
42011b45:	b17abb        	l32r	a11, 0x42000930 (0x3c060639)
42011b48:	4102bb        	l32r	a4, 0x42000750 (0x3fca1dd0)
42011b4b:	0c15      	movi.n	a5, 1
42011b4d:	ad02      	mov.n	a10, a2
42011b4f:	524400        	s8i	a5, a4, 0
42011b52:	101120        	or	a1, a1, a1
42011b55:	e571f1        	call8	0x42003274
42011b58:	165a08        	beqz	a10, 0x42011be1
42011b5b:	b15bbc        	l32r	a11, 0x42000cc8 (0x3c060b88)
42011b5e:	ad03      	mov.n	a10, a3
42011b60:	101120        	or	a1, a1, a1
42011b63:	658b0b        	call8	0x4201d418
42011b66:	0c02      	movi.n	a2, 0
42011b68:	224400        	s8i	a2, a4, 0
42011b6b:	b173bb        	l32r	a11, 0x42000938 (0x3c060645)
42011b6e:	21f9ba        	l32r	a2, 0x42000754 (0x3fca1dc5)
42011b71:	a2c12c        	addi	a10, a1, 44
42011b74:	524200        	s8i	a5, a2, 0
42011b77:	101120        	or	a1, a1, a1
42011b7a:	253e0c        	call8	0x4201df5c
42011b7d:	d168bb        	l32r	a13, 0x42000920 (0x3c06129a)
42011b80:	b167bb        	l32r	a11, 0x4200091c (0x3fca1e64)
42011b83:	0c1e      	movi.n	a14, 1
42011b85:	c2c12c        	addi	a12, a1, 44
42011b88:	a2c114        	addi	a10, a1, 20
42011b8b:	101120        	or	a1, a1, a1
42011b8e:	a5f901        	call8	0x42013b28
42011b91:	21f4ba        	l32r	a2, 0x42000764 (0x3fca1dac)
42011b94:	b2c114        	addi	a11, a1, 20
42011b97:	20a220        	or	a10, a2, a2
42011b9a:	101120        	or	a1, a1, a1
42011b9d:	251ff9        	call8	0x4200ad90
42011ba0:	a2c114        	addi	a10, a1, 20
42011ba3:	101120        	or	a1, a1, a1
42011ba6:	a521f9        	call8	0x4200adc0
42011ba9:	a2c12c        	addi	a10, a1, 44
42011bac:	101120        	or	a1, a1, a1
42011baf:	65210c        	call8	0x4201ddc4
42011bb2:	ad02      	mov.n	a10, a2
42011bb4:	101120        	or	a1, a1, a1
42011bb7:	a51148        	call8	0x42059cd0
42011bba:	566a07        	bnez	a10, 0x42011c34
42011bbd:	b143bc        	l32r	a11, 0x42000ccc (0x3c060b9e)
42011bc0:	ad03      	mov.n	a10, a3
42011bc2:	101120        	or	a1, a1, a1
42011bc5:	25850b        	call8	0x4201d418
42011bc8:	4131b9        	l32r	a4, 0x4200008c (0x3fca2abc)
42011bcb:	c02000        	memw
42011bce:	38f1      	l32i.n	a3, a1, 60
42011bd0:	c02000        	memw
42011bd3:	2804      	l32i.n	a2, a4, 0
42011bd5:	279302        	bne	a3, a2, 0x42011bdb
42011bd8:	468200        	j	0x42011de5
42011bdb:	812db9        	l32r	a8, 0x42000090 (0x40377780)
42011bde:	e00800        	callx8	a8
42011be1:	b13bbc        	l32r	a11, 0x42000cd0 (0x3c060bbb)
42011be4:	20a220        	or	a10, a2, a2
42011be7:	101120        	or	a1, a1, a1
42011bea:	25770c        	call8	0x4201e35c
42011bed:	160a05        	beqz	a10, 0x42011c41
42011bf0:	b152bb        	l32r	a11, 0x42000938 (0x3c060645)
42011bf3:	a14abb        	l32r	a10, 0x4200091c (0x3fca1e64)
42011bf6:	0c02      	movi.n	a2, 0
42011bf8:	224400        	s8i	a2, a4, 0
42011bfb:	101120        	or	a1, a1, a1
42011bfe:	a50e48        	call8	0x42059ce8
42011c01:	4143ba        	l32r	a4, 0x42000510 (0x3fc9bfe8)
42011c04:	22a000        	movi	a2, 0
42011c07:	226400        	s32i	a2, a4, 0
42011c0a:	101120        	or	a1, a1, a1
42011c0d:	25d5fb        	call8	0x4200d960
42011c10:	713fba        	l32r	a7, 0x4200050c (0x3fc94778)
42011c13:	5142ba        	l32r	a5, 0x4200051c (0x3c061864)
42011c16:	81f2bb        	l32r	a8, 0x42000be0 (0x1810)
42011c19:	226700        	s32i	a2, a7, 0
42011c1c:	42a1e5        	movi	a4, 0x1e5
42011c1f:	76846d        	loop	a4, 0x42011c90
42011c22:	9805      	l32i.n	a9, a5, 0
42011c24:	879964        	bne	a9, a8, 0x42011c8c
42011c27:	2907      	s32i.n	a2, a7, 0
42011c29:	b12cbc        	l32r	a11, 0x42000cdc (0x3c060bca)
42011c2c:	ad03      	mov.n	a10, a3
42011c2e:	101120        	or	a1, a1, a1
42011c31:	657e0b        	call8	0x4201d418
42011c34:	101120        	or	a1, a1, a1
42011c37:	e59d0d        	call8	0x4201f614
42011c3a:	a906      	s32i.n	a10, a6, 0
42011c3c:	06e2ff        	j	0x42011bc8
42011c3f:	0000b1        	sra	a0, a0
42011c42:	24bcad        	ee.vld.l.64.xp	q5, a2, a12
42011c45:	021011        	l16ui	a0, a0, 34
42011c48:	20          	.byte	0x20
42011c49:	25710c        	call8	0x4201e35c
42011c4c:	8d0a      	mov.n	a8, a10
42011c4e:	56eaf9        	bnez	a10, 0x42011bf0
42011c51:	b121bc        	l32r	a11, 0x42000cd8 (0x3c060bc5)
42011c54:	ad02      	mov.n	a10, a2
42011c56:	8931      	s32i.n	a8, a1, 12
42011c58:	101120        	or	a1, a1, a1
42011c5b:	a561f1        	call8	0x42003274
42011c5e:	7d0a      	mov.n	a7, a10
42011c60:	8831      	l32i.n	a8, a1, 12
42011c62:	ecea      	bnez.n	a10, 0x42011c94
42011c64:	b130bb        	l32r	a11, 0x42000924 (0x3c060613)
42011c67:	20a220        	or	a10, a2, a2
42011c6a:	101120        	or	a1, a1, a1
42011c6d:	6560f1        	call8	0x42003274
42011c70:	cd0a      	mov.n	a12, a10
42011c72:	acaa      	beqz.n	a10, 0x42011ca0
42011c74:	b11bbc        	l32r	a11, 0x42000ce0 (0x3c060bea)
42011c77:	30a320        	or	a10, a3, a3
42011c7a:	101120        	or	a1, a1, a1
42011c7d:	a5790b        	call8	0x4201d418
42011c80:	724400        	s8i	a7, a4, 0
42011c83:	21b5ba        	l32r	a2, 0x42000758 (0x3fca1dc4)
42011c86:	524200        	s8i	a5, a2, 0
42011c89:	c6e9ff        	j	0x42011c34
42011c8c:	1b22      	addi.n	a2, a2, 1
42011c8e:	8b55      	addi.n	a5, a5, 8
42011c90:	46e5ff        	j	0x42011c29
42011c93:	008244        	extui	a8, a0, 2, 5
42011c96:	001011        	slli	a1, a0, 16
42011c99:	20a534        	extui	a10, a2, 5, 4
42011c9c:	f9c6      	s32i.n	a15, a6, 48
42011c9e:	e4ffb1        	ee.ld.128.usar.ip	q7, a14, 0x7f0
42011ca1:	11bcad        	l32r	a1, 0x41ffd394
42011ca4:	02c931        	addi	a0, a9, 49
42011ca7:	101120        	or	a1, a1, a1
42011caa:	256b0c        	call8	0x4201e35c
42011cad:	5d0a      	mov.n	a5, a10
42011caf:	c831      	l32i.n	a12, a1, 12
42011cb1:	9c8a      	beqz.n	a10, 0x42011ccd
42011cb3:	21a9ba        	l32r	a2, 0x42000758 (0x3fca1dc4)
42011cb6:	b16bbb        	l32r	a11, 0x42000a64 (0x3c088289)
42011cb9:	a118bb        	l32r	a10, 0x4200091c (0x3fca1e64)
42011cbc:	c24400        	s8i	a12, a4, 0
42011cbf:	c24200        	s8i	a12, a2, 0
42011cc2:	101120        	or	a1, a1, a1
42011cc5:	6527fb        	call8	0x4200cf3c
42011cc8:	06daff        	j	0x42011c34
42011ccb:	0000b1        	sra	a0, a0
42011cce:	06bc20        	j	0x42019fc2
42011cd1:	a22010        	l32i	a10, a0, 64
42011cd4:	112065        	l32r	a1, 0x41feb154
42011cd7:	680c      	l32i.n	a6, a12, 0
42011cd9:	7d0a      	mov.n	a7, a10
42011cdb:	ac2a      	beqz.n	a10, 0x42011d01
42011cdd:	210cba        	l32r	a2, 0x42000510 (0x3fc9bfe8)
42011ce0:	0cac      	movi.n	a12, 10
42011ce2:	b802      	l32i.n	a11, a2, 0
42011ce4:	30a320        	or	a10, a3, a3
42011ce7:	101120        	or	a1, a1, a1
42011cea:	a57d0b        	call8	0x4201d4c4
42011ced:	b1ffbb        	l32r	a11, 0x42000cec (0x3c060c05)
42011cf0:	ad03      	mov.n	a10, a3
42011cf2:	101120        	or	a1, a1, a1
42011cf5:	25720b        	call8	0x4201d418
42011cf8:	524400        	s8i	a5, a4, 0
42011cfb:	06e1ff        	j	0x42011c83
42011cfe:	000000        	ill
42011d01:	b1e3ba        	l32r	a11, 0x42000890 (0x3c061110)
42011d04:	ad02      	mov.n	a10, a2
42011d06:	101120        	or	a1, a1, a1
42011d09:	25650c        	call8	0x4201e35c
42011d0c:	a05a20        	or	a5, a10, a10
42011d0f:	162a01        	beqz	a10, 0x42011d25
42011d12:	101120        	or	a1, a1, a1
42011d15:	252cf6        	call8	0x42007fd8
42011d18:	2190ba        	l32r	a2, 0x42000758 (0x3fca1dc4)
42011d1b:	724400        	s8i	a7, a4, 0
42011d1e:	724200        	s8i	a7, a2, 0
42011d21:	c6c3ff        	j	0x42011c34
42011d24:	00          	.byte	00
42011d25:	b1d9ba        	l32r	a11, 0x4200088c (0x3c08e98b)
42011d28:	ad02      	mov.n	a10, a2
42011d2a:	101120        	or	a1, a1, a1
42011d2d:	e5620c        	call8	0x4201e35c
42011d30:	8c9a      	beqz.n	a10, 0x42011d3d
42011d32:	101120        	or	a1, a1, a1
42011d35:	2526f6        	call8	0x42007f98
42011d38:	06efff        	j	0x42011cf8
42011d3b:	0000b1        	sra	a0, a0
42011d3e:	d8ba      	l32i.n	a13, a10, 44
42011d40:	20a220        	or	a10, a2, a2
42011d43:	101120        	or	a1, a1, a1
42011d46:	65610c        	call8	0x4201e35c
42011d49:	bc0a      	beqz.n	a10, 0x42011d7d
42011d4b:	5156b9        	l32r	a5, 0x420002a4 (0x3fc94ea8)
42011d4e:	0c17      	movi.n	a7, 1
42011d50:	220500        	l8ui	a2, a5, 0
42011d53:	b1d6bb        	l32r	a11, 0x42000cac (0x3c060da3)
42011d56:	702230        	xor	a2, a2, a7
42011d59:	202074        	extui	a2, a2, 0, 8
42011d5c:	224500        	s8i	a2, a5, 0
42011d5f:	cc12      	bnez.n	a2, 0x42011d64
42011d61:	b1d3bb        	l32r	a11, 0x42000cb0 (0x3c060b6e)
42011d64:	ad03      	mov.n	a10, a3
42011d66:	101120        	or	a1, a1, a1
42011d69:	e56a0b        	call8	0x4201d418
42011d6c:	317bba        	l32r	a3, 0x42000758 (0x3fca1dc4)
42011d6f:	0c02      	movi.n	a2, 0
42011d71:	224400        	s8i	a2, a4, 0
42011d74:	224300        	s8i	a2, a3, 0
42011d77:	46aeff        	j	0x42011c34
42011d7a:	000000        	ill
42011d7d:	b1c7ba        	l32r	a11, 0x4200089c (0x3c08d3d5)
42011d80:	ad02      	mov.n	a10, a2
42011d82:	101120        	or	a1, a1, a1
42011d85:	655d0c        	call8	0x4201e35c
42011d88:	5d0a      	mov.n	a5, a10
42011d8a:	8c7a      	beqz.n	a10, 0x42011d95
42011d8c:	b1d9bb        	l32r	a11, 0x42000cf0 (0x3c060c13)
42011d8f:	46f4ff        	j	0x42011d64
42011d92:	000000        	ill
42011d95:	b1c0ba        	l32r	a11, 0x42000898 (0x3c08ded4)
42011d98:	ad02      	mov.n	a10, a2
42011d9a:	101120        	or	a1, a1, a1
42011d9d:	e55b0c        	call8	0x4201e35c
42011da0:	3d0a      	mov.n	a3, a10
42011da2:	8cba      	beqz.n	a10, 0x42011db1
42011da4:	ad05      	mov.n	a10, a5
42011da6:	101120        	or	a1, a1, a1
42011da9:	a5a7ff        	call8	0x42011824
42011dac:	06d2ff        	j	0x42011cf8
42011daf:	0000b1        	sra	a0, a0
42011db2:	d0          	.byte	0xd0
42011db3:	bbad      	addi.n	a10, a13, 11
42011db5:	021011        	l16ui	a0, a0, 34
42011db8:	20255a        	msub.s	f2, f5, f2
42011dbb:	0c16      	movi.n	a6, 1
42011dbd:	4ae7      	add.n	a14, a7, a4
42011dbf:	101120        	or	a1, a1, a1
42011dc2:	65ebf7        	call8	0x42009c78
42011dc5:	2164ba        	l32r	a2, 0x42000758 (0x3fca1dc4)
42011dc8:	324400        	s8i	a3, a4, 0
42011dcb:	324200        	s8i	a3, a2, 0
42011dce:	8698ff        	j	0x42011c34
42011dd1:	a2c12c        	addi	a10, a1, 44
42011dd4:	101120        	or	a1, a1, a1
42011dd7:	e5fe0b        	call8	0x4201ddc4
42011dda:	ad02      	mov.n	a10, a2
42011ddc:	101120        	or	a1, a1, a1
42011ddf:	25e32e        	call8	0x42040c10
42011de2:	c6faff        	j	0x42011dd1
42011de5:	1df0      	retw.n
42011de7:	0036a1        	sll	a3, a6
42011dea:	0021c3        	movf	a2, a1, b0
42011ded:	b80c      	l32i.n	a11, a12, 0
42011def:	053202        	call0	0x42014110
42011df2:	000c16        	ee.ldf.64.xp	f0, f1, a0, a12
42011df5:	42c3ce        	addi	a4, a3, -50
42011df8:	22c3a6        	addi	a2, a3, -90
42011dfb:	508520        	or	a8, a5, a5
42011dfe:	509520        	or	a9, a5, a5
42011e01:	209683        	moveqz	a9, a6, a2
42011e04:	408683        	moveqz	a8, a6, a4
42011e07:	22c3ec        	addi	a2, a3, -20
42011e0a:	904820        	or	a4, a8, a9
42011e0d:	206593        	movnez	a6, a5, a2
42011e10:	402620        	or	a2, a6, a4
42011e13:	71f3b9        	l32r	a7, 0x420005e0 (0x3fc9474e)
42011e16:	41ceb8        	l32r	a4, 0x42000150 (0x3fc9bf81)
42011e19:	224700        	s8i	a2, a7, 0
42011e1c:	220400        	l8ui	a2, a4, 0
42011e1f:	571202        	beq	a2, a5, 0x42011e25
42011e22:	524700        	s8i	a5, a7, 0
42011e25:	2180b8        	l32r	a2, 0x42000028 (0x3fc9bfa0)
42011e28:	c02000        	memw
42011e2b:	4802      	l32i.n	a4, a2, 0
42011e2d:	ccf4      	bnez.n	a4, 0x42011e40
42011e2f:	412bbb        	l32r	a4, 0x42000adc (0x3fc9bfe0)
42011e32:	420400        	l8ui	a4, a4, 0
42011e35:	8c74      	beqz.n	a4, 0x42011e40
42011e37:	42c3d2        	addi	a4, a3, -46
42011e3a:	404074        	extui	a4, a4, 0, 8
42011e3d:	b6241c        	bltui	a4, 2, 0x42011e5d
42011e40:	42c3e0        	addi	a4, a3, -32
42011e43:	404074        	extui	a4, a4, 0, 8
42011e46:	b62408        	bltui	a4, 2, 0x42011e52
42011e49:	42c3ae        	addi	a4, a3, -82
42011e4c:	404074        	extui	a4, a4, 0, 8
42011e4f:	f62425        	bgeui	a4, 2, 0x42011e78
42011e52:	41e4b9        	l32r	a4, 0x420005e4 (0x3fc9a2ce)
42011e55:	420400        	l8ui	a4, a4, 0
42011e58:	8cb4      	beqz.n	a4, 0x42011e67
42011e5a:	e526fe        	call8	0x420100c8
42011e5d:	0c5a      	movi.n	a10, 5
42011e5f:	257d0d        	call8	0x4201f630
42011e62:	c6dc02        	j	0x420129d9
42011e65:	000041        	srli	a0, a0, 0
42011e68:	e0b942        	xorb	b11, b9, b14
42011e6b:	04008c        	ee.vprelu.s16	q0, q0, q0, a0
42011e6e:	74          	.byte	0x74
42011e6f:	a55ffe        	call8	0x42010468
42011e72:	c6f9ff        	j	0x42011e5d
42011e75:	000000        	ill
42011e78:	5189bb        	l32r	a5, 0x42000c9c (0x3fca1e5a)
42011e7b:	420500        	l8ui	a4, a5, 0
42011e7e:	8c74      	beqz.n	a4, 0x42011e89
42011e80:	65e4fe        	call8	0x42010cc8
42011e83:	86f5ff        	j	0x42011e5d
42011e86:	000000        	ill
42011e89:	6198ba        	l32r	a6, 0x420008ec (0x3fca1e59)
42011e8c:	420600        	l8ui	a4, a6, 0
42011e8f:	165400        	beqz	a4, 0x42011e98
42011e92:	258ef8        	call8	0x4200a774
42011e95:	06f1ff        	j	0x42011e5d
42011e98:	32c3de        	addi	a3, a3, -34
42011e9b:	303074        	extui	a3, a3, 0, 8
42011e9e:	f62337        	bgeui	a3, 2, 0x42011ed9
42011ea1:	31f0b9        	l32r	a3, 0x42000664 (0x3fc9a2cc)
42011ea4:	320300        	l8ui	a3, a3, 0
42011ea7:	dc13      	bnez.n	a3, 0x42011ebc
42011ea9:	311dbb        	l32r	a3, 0x42000b20 (0x3fc9a2cb)
42011eac:	320300        	l8ui	a3, a3, 0
42011eaf:	ac63      	beqz.n	a3, 0x42011ed9
42011eb1:	25b3f6        	call8	0x420089e4
42011eb4:	0c0a      	movi.n	a10, 0
42011eb6:	2540ff        	call8	0x420112b8
42011eb9:	060700        	j	0x42011ed9
42011ebc:	101120        	or	a1, a1, a1
42011ebf:	e599f6        	call8	0x4200885c
42011ec2:	ad04      	mov.n	a10, a4
42011ec4:	101120        	or	a1, a1, a1
42011ec7:	2502ff        	call8	0x42010ee8
42011eca:	818bb8        	l32r	a8, 0x420000f8 (0x3fc94768)
42011ecd:	320800        	l8ui	a3, a8, 0
42011ed0:	32c3de        	addi	a3, a3, -34
42011ed3:	303074        	extui	a3, a3, 0, 8
42011ed6:	b623cf        	bltui	a3, 2, 0x42011ea9
42011ed9:	9187b8        	l32r	a9, 0x420000f8 (0x3fc94768)
42011edc:	320900        	l8ui	a3, a9, 0
42011edf:	32c3dc        	addi	a3, a3, -36
42011ee2:	303074        	extui	a3, a3, 0, 8
42011ee5:	f6230a        	bgeui	a3, 2, 0x42011ef3
42011ee8:	31c2b9        	l32r	a3, 0x420005f0 (0x3fc9a2ca)
42011eeb:	320300        	l8ui	a3, a3, 0
42011eee:	8c13      	beqz.n	a3, 0x42011ef3
42011ef0:	6586ff        	call8	0x42011758
42011ef3:	25b9ff        	call8	0x42011a84
42011ef6:	a533f6        	call8	0x42008230
42011ef9:	a5710d        	call8	0x4201f614
42011efc:	3183b8        	l32r	a3, 0x42000108 (0x3fc946dc)
42011eff:	6106bb        	l32r	a6, 0x42000b18 (0x3fc99368)
42011f02:	3803      	l32i.n	a3, a3, 0
42011f04:	0c14      	movi.n	a4, 1
42011f06:	30aac0        	sub	a10, a10, a3
42011f09:	32a063        	movi	a3, 99
42011f0c:	a7b301        	bgeu	a3, a10, 0x42011f11
42011f0f:	0c04      	movi.n	a4, 0
42011f11:	424600        	s8i	a4, a6, 0
42011f14:	a7b310        	bgeu	a3, a10, 0x42011f28
42011f17:	31dbba        	l32r	a3, 0x42000a84 (0x3fc946d5)
42011f1a:	420300        	l8ui	a4, a3, 0
42011f1d:	167400        	beqz	a4, 0x42011f28
42011f20:	0c04      	movi.n	a4, 0
42011f22:	e5a3fb        	call8	0x4200d960
42011f25:	424300        	s8i	a4, a3, 0
42011f28:	c02000        	memw
42011f2b:	3802      	l32i.n	a3, a2, 0
42011f2d:	cc13      	bnez.n	a3, 0x42011f32
42011f2f:	863302        	j	0x42012801
42011f32:	31ddb8        	l32r	a3, 0x420002a8 (0x3fc9bfc6)
42011f35:	420300        	l8ui	a4, a3, 0
42011f38:	164400        	beqz	a4, 0x42011f40
42011f3b:	0c04      	movi.n	a4, 0
42011f3d:	424300        	s8i	a4, a3, 0
42011f40:	31e7ba        	l32r	a3, 0x42000adc (0x3fc9bfe0)
42011f43:	420300        	l8ui	a4, a3, 0
42011f46:	8c34      	beqz.n	a4, 0x42011f4d
42011f48:	0c04      	movi.n	a4, 0
42011f4a:	424300        	s8i	a4, a3, 0
42011f4d:	31f9b8        	l32r	a3, 0x42000334 (0x3fc9bfde)
42011f50:	a554f1        	call8	0x4200349c
42011f53:	320300        	l8ui	a3, a3, 0
42011f56:	8d0a      	mov.n	a8, a10
42011f58:	16d349        	beqz	a3, 0x420123f9
42011f5b:	16aa49        	beqz	a10, 0x420123f9
42011f5e:	415ab8        	l32r	a4, 0x420000c8 (0x3fc9bfc4)
42011f61:	c02000        	memw
42011f64:	622200        	l32i	a6, a2, 0
42011f67:	521400        	l16ui	a5, a4, 0
42011f6a:	32c5f6        	addi	a3, a5, -10
42011f6d:	803323        	sext	a3, a3, 15
42011f70:	661605        	bnei	a6, 1, 0x42011f79
42011f73:	32c50a        	addi	a3, a5, 10
42011f76:	803323        	sext	a3, a3, 15
42011f79:	5158b8        	l32r	a5, 0x420000dc (0x36b0)
42011f7c:	805523        	sext	a5, a5, 15
42011f7f:	372502        	blt	a5, a3, 0x42011f85
42011f82:	861701        	j	0x420123e4
42011f85:	3155b8        	l32r	a3, 0x420000dc (0x36b0)
42011f88:	325400        	s16i	a3, a4, 0
42011f8b:	314db8        	l32r	a3, 0x420000c0 (0x3fc9bf7c)
42011f8e:	429400        	l16si	a4, a4, 0
42011f91:	522300        	l32i	a5, a3, 0
42011f94:	c03511        	slli	a3, a5, 4
42011f97:	5150b8        	l32r	a5, 0x420000d8 (0x3fc94b5c)
42011f9a:	305580        	add	a5, a5, a3
42011f9d:	314db8        	l32r	a3, 0x420000d4 (0x10624dd3)
42011fa0:	3034b2        	mulsh	a3, a4, a3
42011fa3:	404f31        	srai	a4, a4, 31
42011fa6:	303621        	srai	a3, a3, 6
42011fa9:	4033c0        	sub	a3, a3, a4
42011fac:	4149b8        	l32r	a4, 0x420000d0 (0x3fc9bf9c)
42011faf:	421400        	l16ui	a4, a4, 0
42011fb2:	403380        	add	a3, a3, a4
42011fb5:	325505        	s16i	a3, a5, 10
42011fb8:	a552f1        	call8	0x420034e4
42011fbb:	65b1fc        	call8	0x4200ead0
42011fbe:	0c03      	movi.n	a3, 0
42011fc0:	c02000        	memw
42011fc3:	3902      	s32i.n	a3, a2, 0
42011fc5:	a569f2        	call8	0x42004660
42011fc8:	0c5a      	movi.n	a10, 5
42011fca:	65660d        	call8	0x4201f630
42011fcd:	65640d        	call8	0x4201f614
42011fd0:	21d6b8        	l32r	a2, 0x42000328 (0x3fc9bfa4)
42011fd3:	a902      	s32i.n	a10, a2, 0
42011fd5:	e5630d        	call8	0x4201f614
42011fd8:	41b5ba        	l32r	a4, 0x42000aac (0x3fc9bfb8)
42011fdb:	222400        	l32i	a2, a4, 0
42011fde:	20aac0        	sub	a10, a10, a2
42011fe1:	22a12c        	movi	a2, 0x12c
42011fe4:	a73202        	bltu	a2, a10, 0x42011fea
42011fe7:	c62300        	j	0x4201207a
42011fea:	2138b8        	l32r	a2, 0x420000cc (0x3fc9a1dc)
42011fed:	20a220        	or	a10, a2, a2
42011ff0:	e56109        	call8	0x4201b610
42011ff3:	5202c0        	l8ui	a5, a2, 192
42011ff6:	310db9        	l32r	a3, 0x4200042c (0x3fc9b8d6)
42011ff9:	2202bf        	l8ui	a2, a2, 191
42011ffc:	524300        	s8i	a5, a3, 0
42011fff:	31e1b8        	l32r	a3, 0x42000384 (0x3fc9b913)
42012002:	520300        	l8ui	a5, a3, 0
42012005:	27150b        	beq	a5, a2, 0x42012014
42012008:	2512f3        	call8	0x4200512c
4201200b:	565a00        	bnez	a10, 0x42012014
4201200e:	224300        	s8i	a2, a3, 0
42012011:	a527fc        	call8	0x4200e28c
42012014:	e55f0d        	call8	0x4201f614
42012017:	2150b9        	l32r	a2, 0x42000558 (0x3fc9bf80)
4201201a:	a904      	s32i.n	a10, a4, 0
4201201c:	420200        	l8ui	a4, a2, 0
4201201f:	662420        	bnei	a4, 2, 0x42012043
42012022:	41b0ba        	l32r	a4, 0x42000ae4 (0x3fc9b899)
42012025:	62043b        	l8ui	a6, a4, 59
42012028:	41e3b8        	l32r	a4, 0x420003b4 (0x3fc94e92)
4201202b:	520400        	l8ui	a5, a4, 0
4201202e:	4176b9        	l32r	a4, 0x42000608 (0x3fc9bfdc)
42012031:	005523        	sext	a5, a5, 7
42012034:	67a502        	bge	a5, a6, 0x4201203a
42012037:	46fe02        	j	0x42012c34
4201203a:	52a001        	movi	a5, 1
4201203d:	524400        	s8i	a5, a4, 0
42012040:	a597fd        	call8	0x4200f9bc
42012043:	420200        	l8ui	a4, a2, 0
42012046:	66341f        	bnei	a4, 3, 0x42012069
42012049:	520300        	l8ui	a5, a3, 0
4201204c:	31dab8        	l32r	a3, 0x420003b4 (0x3fc94e92)
4201204f:	420300        	l8ui	a4, a3, 0
42012052:	316db9        	l32r	a3, 0x42000608 (0x3fc9bfdc)
42012055:	004423        	sext	a4, a4, 7
42012058:	472502        	blt	a5, a4, 0x4201205e
4201205b:	86f802        	j	0x42012c41
4201205e:	0c14      	movi.n	a4, 1
42012060:	424300        	s8i	a4, a3, 0
42012063:	101120        	or	a1, a1, a1
42012066:	6595fd        	call8	0x4200f9bc
42012069:	220200        	l8ui	a2, a2, 0
4201206c:	66720a        	bnei	a2, 7, 0x4201207a
4201206f:	2166b9        	l32r	a2, 0x42000608 (0x3fc9bfdc)
42012072:	0c13      	movi.n	a3, 1
42012074:	324200        	s8i	a3, a2, 0
42012077:	6594fd        	call8	0x4200f9bc
4201207a:	a5590d        	call8	0x4201f614
4201207d:	3120b8        	l32r	a3, 0x42000100 (0x3fc9bfbc)
42012080:	222300        	l32i	a2, a3, 0
42012083:	20aac0        	sub	a10, a10, a2
42012086:	2138bb        	l32r	a2, 0x42000d68 (0xea60)
42012089:	a7b213        	bgeu	a2, a10, 0x420120a0
4201208c:	411bb8        	l32r	a4, 0x420000f8 (0x3fc94768)
4201208f:	220400        	l8ui	a2, a4, 0
42012092:	07e202        	bbsi	a2, 0, 0x42012098
42012095:	c6ed02        	j	0x42012c50
42012098:	b2a001        	movi	a11, 1
4201209b:	0c0a      	movi.n	a10, 0
4201209d:	e5470d        	call8	0x4201f51c
420120a0:	25570d        	call8	0x4201f614
420120a3:	31a1b8        	l32r	a3, 0x42000328 (0x3fc9bfa4)
420120a6:	2803      	l32i.n	a2, a3, 0
420120a8:	20aac0        	sub	a10, a10, a2
420120ab:	2193b9        	l32r	a2, 0x420006f8 (0x1388)
420120ae:	a7b22a        	bgeu	a2, a10, 0x420120dc
420120b1:	21fdb7        	l32r	a2, 0x420000a8 (0x3fc9bf83)
420120b4:	220200        	l8ui	a2, a2, 0
420120b7:	0b22      	addi.n	a2, a2, -1
420120b9:	202074        	extui	a2, a2, 0, 8
420120bc:	b62202        	bltui	a2, 2, 0x420120c2
420120bf:	06e602        	j	0x42012c5b
420120c2:	419cb8        	l32r	a4, 0x42000334 (0x3fc9bfde)
420120c5:	0c02      	movi.n	a2, 0
420120c7:	224400        	s8i	a2, a4, 0
420120ca:	4106b9        	l32r	a4, 0x420004e4 (0x3fc9bfd3)
420120cd:	224400        	s8i	a2, a4, 0
420120d0:	e55af2        	call8	0x42004680
420120d3:	e51ffc        	call8	0x4200e2d0
420120d6:	e5530d        	call8	0x4201f614
420120d9:	a26300        	s32i	a10, a3, 0
420120dc:	65530d        	call8	0x4201f614
420120df:	3177ba        	l32r	a3, 0x42000abc (0x3fc9bfa8)
420120e2:	222300        	l32i	a2, a3, 0
420120e5:	20aac0        	sub	a10, a10, a2
420120e8:	22a5dc        	movi	a2, 0x5dc
420120eb:	a7b20d        	bgeu	a2, a10, 0x420120fc
420120ee:	21a3b8        	l32r	a2, 0x4200037c (0x3fc9bfdb)
420120f1:	42a000        	movi	a4, 0
420120f4:	424200        	s8i	a4, a2, 0
420120f7:	e5510d        	call8	0x4201f614
420120fa:	a903      	s32i.n	a10, a3, 0
420120fc:	65510d        	call8	0x4201f614
420120ff:	316eba        	l32r	a3, 0x42000ab8 (0x3fc9bfac)
42012102:	2803      	l32i.n	a2, a3, 0
42012104:	20aac0        	sub	a10, a10, a2
42012107:	5ca2      	movi.n	a2, 90
42012109:	a7b21c        	bgeu	a2, a10, 0x42012129
4201210c:	21e7b7        	l32r	a2, 0x420000a8 (0x3fc9bf83)
4201210f:	220200        	l8ui	a2, a2, 0
42012112:	56e200        	bnez	a2, 0x42012124
42012115:	21c5b8        	l32r	a2, 0x4200042c (0x3fc9b8d6)
42012118:	42a00b        	movi	a4, 11
4201211b:	220200        	l8ui	a2, a2, 0
4201211e:	27b402        	bgeu	a4, a2, 0x42012124
42012121:	25c3fd        	call8	0x4200fd54
42012124:	e54e0d        	call8	0x4201f614
42012127:	a903      	s32i.n	a10, a3, 0
42012129:	3180b8        	l32r	a3, 0x4200032c (0x3fc9bfdf)
4201212c:	220300        	l8ui	a2, a3, 0
4201212f:	16d201        	beqz	a2, 0x42012150
42012132:	254e0d        	call8	0x4201f614
42012135:	417bb8        	l32r	a4, 0x42000324 (0x3fc9bfe4)
42012138:	2804      	l32i.n	a2, a4, 0
4201213a:	20aac0        	sub	a10, a10, a2
4201213d:	210bbb        	l32r	a2, 0x42000d6c (0x7530)
42012140:	a7b20c        	bgeu	a2, a10, 0x42012150
42012143:	6542f2        	call8	0x42004568
42012146:	e54c0d        	call8	0x4201f614
42012149:	0c02      	movi.n	a2, 0
4201214b:	a904      	s32i.n	a10, a4, 0
4201214d:	224300        	s8i	a2, a3, 0
42012150:	218cb8        	l32r	a2, 0x42000380 (0x3fc94e90)
42012153:	220200        	l8ui	a2, a2, 0
42012156:	16e211        	beqz	a2, 0x42012278
42012159:	51fdb7        	l32r	a5, 0x42000150 (0x3fc9bf81)
4201215c:	220500        	l8ui	a2, a5, 0
4201215f:	565211        	bnez	a2, 0x42012278
42012162:	215eba        	l32r	a2, 0x42000adc (0x3fc9bfe0)
42012165:	220200        	l8ui	a2, a2, 0
42012168:	56c210        	bnez	a2, 0x42012278
4201216b:	61e0b9        	l32r	a6, 0x420008ec (0x3fca1e59)
4201216e:	220600        	l8ui	a2, a6, 0
42012171:	563210        	bnez	a2, 0x42012278
42012174:	e5490d        	call8	0x4201f614
42012177:	814cba        	l32r	a8, 0x42000aa8 (0x3fc9bfc0)
4201217a:	2808      	l32i.n	a2, a8, 0
4201217c:	20aac0        	sub	a10, a10, a2
4201217f:	3c22      	movi.n	a2, 50
42012181:	a73202        	bltu	a2, a10, 0x42012187
42012184:	063c00        	j	0x42012278
42012187:	21d1b7        	l32r	a2, 0x420000cc (0x3fc9a1dc)
4201218a:	ad02      	mov.n	a10, a2
4201218c:	254809        	call8	0x4201b610
4201218f:	91a7b8        	l32r	a9, 0x4200042c (0x3fc9b8d6)
42012192:	3202c0        	l8ui	a3, a2, 192
42012195:	324900        	s8i	a3, a9, 0
42012198:	3202bf        	l8ui	a3, a2, 191
4201219b:	a57b0a        	call8	0x4201c954
4201219e:	41f4ba        	l32r	a4, 0x42000d70 (0x3fc992a0)
420121a1:	21f4ba        	l32r	a2, 0x42000d74 (0x3fc992ac)
420121a4:	5804      	l32i.n	a5, a4, 0
420121a6:	a79502        	bne	a5, a10, 0x420121ac
420121a9:	c62200        	j	0x42012238
420121ac:	5802      	l32i.n	a5, a2, 0
420121ae:	166508        	beqz	a5, 0x42012238
420121b1:	257a0a        	call8	0x4201c954
420121b4:	a904      	s32i.n	a10, a4, 0
420121b6:	414aba        	l32r	a4, 0x42000ae0 (0x3fc9b8d7)
420121b9:	3cb5      	movi.n	a5, 59
420121bb:	7d04      	mov.n	a7, a4
420121bd:	768507        	loop	a5, 0x420121c8
420121c0:	620401        	l8ui	a6, a4, 1
420121c3:	624400        	s8i	a6, a4, 0
420121c6:	1b44      	addi.n	a4, a4, 1
420121c8:	61ecba        	l32r	a6, 0x42000d78 (0x3fc992a8)
420121cb:	8802      	l32i.n	a8, a2, 0
420121cd:	b806      	l32i.n	a11, a6, 0
420121cf:	4145ba        	l32r	a4, 0x42000ae4 (0x3fc9b899)
420121d2:	80bbd2        	quos	a11, a11, a8
420121d5:	b2473b        	s8i	a11, a7, 59
420121d8:	3cb5      	movi.n	a5, 59
420121da:	407420        	or	a7, a4, a4
420121dd:	768507        	loop	a5, 0x420121e8
420121e0:	920401        	l8ui	a9, a4, 1
420121e3:	924400        	s8i	a9, a4, 0
420121e6:	1b44      	addi.n	a4, a4, 1
420121e8:	51e5ba        	l32r	a5, 0x42000d7c (0x3fc992a4)
420121eb:	4805      	l32i.n	a4, a5, 0
420121ed:	8044d2        	quos	a4, a4, a8
420121f0:	42473b        	s8i	a4, a7, 59
420121f3:	41adb7        	l32r	a4, 0x420000a8 (0x3fc9bf83)
420121f6:	420400        	l8ui	a4, a4, 0
420121f9:	acd4      	beqz.n	a4, 0x4201222a
420121fb:	b981      	s32i.n	a11, a1, 32
420121fd:	e529f1        	call8	0x4200349c
42012200:	b881      	l32i.n	a11, a1, 32
42012202:	ec4a      	bnez.n	a10, 0x4201222a
42012204:	4128b8        	l32r	a4, 0x420002a4 (0x3fc94ea8)
42012207:	420400        	l8ui	a4, a4, 0
4201220a:	9cc4      	beqz.n	a4, 0x4201222a
4201220c:	41c2b7        	l32r	a4, 0x42000114 (0x3fca1f6c)
4201220f:	0cac      	movi.n	a12, 10
42012211:	b0b074        	extui	a11, a11, 0, 8
42012214:	ad04      	mov.n	a10, a4
42012216:	252e0b        	call8	0x4201d4f8
42012219:	0c9b      	movi.n	a11, 9
4201221b:	ad04      	mov.n	a10, a4
4201221d:	a5a848        	call8	0x4205aca8
42012220:	b2073b        	l8ui	a11, a7, 59
42012223:	0cac      	movi.n	a12, 10
42012225:	ad04      	mov.n	a10, a4
42012227:	652e0b        	call8	0x4201d50c
4201222a:	0c04      	movi.n	a4, 0
4201222c:	0c1a      	movi.n	a10, 1
4201222e:	252dfb        	call8	0x4200d500
42012231:	4902      	s32i.n	a4, a2, 0
42012233:	426600        	s32i	a4, a6, 0
42012236:	4905      	s32i.n	a4, a5, 0
42012238:	51d1ba        	l32r	a5, 0x42000d7c (0x3fc992a4)
4201223b:	617cb8        	l32r	a6, 0x4200042c (0x3fc9b8d6)
4201223e:	420600        	l8ui	a4, a6, 0
42012241:	622500        	l32i	a6, a5, 0
42012244:	604480        	add	a4, a4, a6
42012247:	4905      	s32i.n	a4, a5, 0
42012249:	51cbba        	l32r	a5, 0x42000d78 (0x3fc992a8)
4201224c:	4805      	l32i.n	a4, a5, 0
4201224e:	3a44      	add.n	a4, a4, a3
42012250:	4905      	s32i.n	a4, a5, 0
42012252:	4802      	l32i.n	a4, a2, 0
42012254:	1b44      	addi.n	a4, a4, 1
42012256:	4902      	s32i.n	a4, a2, 0
42012258:	214bb8        	l32r	a2, 0x42000384 (0x3fc9b913)
4201225b:	420200        	l8ui	a4, a2, 0
4201225e:	37140e        	beq	a4, a3, 0x42012270
42012261:	a5ecf2        	call8	0x4200512c
42012264:	568a00        	bnez	a10, 0x42012270
42012267:	a2a001        	movi	a10, 1
4201226a:	324200        	s8i	a3, a2, 0
4201226d:	2549f2        	call8	0x42004700
42012270:	253a0d        	call8	0x4201f614
42012273:	810dba        	l32r	a8, 0x42000aa8 (0x3fc9bfc0)
42012276:	a908      	s32i.n	a10, a8, 0
42012278:	318cb7        	l32r	a3, 0x420000a8 (0x3fc9bf83)
4201227b:	220300        	l8ui	a2, a3, 0
4201227e:	bc42      	beqz.n	a2, 0x420122b6
42012280:	91b4b7        	l32r	a9, 0x42000150 (0x3fc9bf81)
42012283:	220900        	l8ui	a2, a9, 0
42012286:	002223        	sext	a2, a2, 7
42012289:	a62229        	blti	a2, 2, 0x420122b6
4201228c:	41bdba        	l32r	a4, 0x42000d80 (0x3fc992b0)
4201228f:	21c9b7        	l32r	a2, 0x420001b4 (0x3fc9ba3c)
42012292:	bd04      	mov.n	a11, a4
42012294:	ad02      	mov.n	a10, a2
42012296:	8105b8        	l32r	a8, 0x420002ac (0x40001230)
42012299:	e00800        	callx8	a8
4201229c:	9c6a      	beqz.n	a10, 0x420122b6
4201229e:	bd02      	mov.n	a11, a2
420122a0:	ad04      	mov.n	a10, a4
420122a2:	8103b8        	l32r	a8, 0x420002b0 (0x40001218)
420122a5:	e00800        	callx8	a8
420122a8:	a1a7b7        	l32r	a10, 0x42000144 (0x3fc9b35c)
420122ab:	d2a077        	movi	a13, 119
420122ae:	c2a0a0        	movi	a12, 160
420122b1:	bd02      	mov.n	a11, a2
420122b3:	656407        	call8	0x420198f8
420122b6:	2190b7        	l32r	a2, 0x420000f8 (0x3fc94768)
420122b9:	420200        	l8ui	a4, a2, 0
420122bc:	22a063        	movi	a2, 99
420122bf:	271402        	beq	a4, a2, 0x420122c5
420122c2:	467302        	j	0x42012c93
420122c5:	220300        	l8ui	a2, a3, 0
420122c8:	cc12      	bnez.n	a2, 0x420122cd
420122ca:	467102        	j	0x42012c93
420122cd:	2131b8        	l32r	a2, 0x42000394 (0x3fc94d0c)
420122d0:	0c04      	movi.n	a4, 0
420122d2:	221200        	l16ui	a2, a2, 0
420122d5:	49a1      	s32i.n	a4, a1, 40
420122d7:	d03211        	slli	a3, a2, 3
420122da:	2176b7        	l32r	a2, 0x420000b4 (0x3c0617fc)
420122dd:	3a22      	add.n	a2, a2, a3
420122df:	2802      	l32i.n	a2, a2, 0
420122e1:	32af38        	movi	a3, -200
420122e4:	2991      	s32i.n	a2, a1, 36
420122e6:	217ab7        	l32r	a2, 0x420000d0 (0x3fc9bf9c)
420122e9:	721200        	l16ui	a7, a2, 0
420122ec:	22a0c7        	movi	a2, 199
420122ef:	2a27      	add.n	a2, a7, a2
420122f1:	3a37      	add.n	a3, a7, a3
420122f3:	29b1      	s32i.n	a2, a1, 44
420122f5:	58b1      	l32i.n	a5, a1, 44
420122f7:	4175b7        	l32r	a4, 0x420000cc (0x3fc9a1dc)
420122fa:	37a502        	bge	a5, a3, 0x42012300
420122fd:	466102        	j	0x42012c86
42012300:	30b0f4        	extui	a11, a3, 0, 16
42012303:	ad04      	mov.n	a10, a4
42012305:	a5fc08        	call8	0x4201b2d0
42012308:	2c8a      	movi.n	a10, 40
4201230a:	65320d        	call8	0x4201f630
4201230d:	ad04      	mov.n	a10, a4
4201230f:	253009        	call8	0x4201b610
42012312:	0c0d      	movi.n	a13, 0
42012314:	a8a1      	l32i.n	a10, a1, 40
42012316:	e2a140        	movi	a14, 0x140
42012319:	bd0d      	mov.n	a11, a13
4201231b:	c2a190        	movi	a12, 0x190
4201231e:	e59948        	call8	0x4205acbc
42012321:	4204bf        	l8ui	a4, a4, 191
42012324:	0c0d      	movi.n	a13, 0
42012326:	f08411        	slli	a8, a4, 1
42012329:	4a88      	add.n	a8, a8, a4
4201232b:	405141        	srli	a5, a4, 1
4201232e:	82c820        	addi	a8, a8, 32
42012331:	4184b7        	l32r	a4, 0x42000144 (0x3fc9b35c)
42012334:	808074        	extui	a8, a8, 0, 8
42012337:	cd08      	mov.n	a12, a8
42012339:	2d0a      	mov.n	a2, a10
4201233b:	bd0d      	mov.n	a11, a13
4201233d:	ad04      	mov.n	a10, a4
4201233f:	8971      	s32i.n	a8, a1, 28
42012341:	a53848        	call8	0x4205a6cc
42012344:	0c0d      	movi.n	a13, 0
42012346:	cd0d      	mov.n	a12, a13
42012348:	bd0d      	mov.n	a11, a13
4201234a:	62a0aa        	movi	a6, 170
4201234d:	25dbf0        	call8	0x42003100
42012350:	5056c0        	sub	a5, a6, a5
42012353:	fd0a      	mov.n	a15, a10
42012355:	ed06      	mov.n	a14, a6
42012357:	dd02      	mov.n	a13, a2
42012359:	cd05      	mov.n	a12, a5
4201235b:	bd02      	mov.n	a11, a2
4201235d:	ad04      	mov.n	a10, a4
4201235f:	659203        	call8	0x42015c84
42012362:	9891      	l32i.n	a9, a1, 36
42012364:	8871      	l32i.n	a8, a1, 28
42012366:	a6294f        	blti	a9, 2, 0x420123b9
42012369:	0c0d      	movi.n	a13, 0
4201236b:	1b92      	addi.n	a9, a2, 1
4201236d:	cd08      	mov.n	a12, a8
4201236f:	bd0d      	mov.n	a11, a13
42012371:	ad04      	mov.n	a10, a4
42012373:	9981      	s32i.n	a9, a1, 32
42012375:	653548        	call8	0x4205a6cc
42012378:	0c0d      	movi.n	a13, 0
4201237a:	cd0d      	mov.n	a12, a13
4201237c:	bd0d      	mov.n	a11, a13
4201237e:	25d8f0        	call8	0x42003100
42012381:	9881      	l32i.n	a9, a1, 32
42012383:	fd0a      	mov.n	a15, a10
42012385:	ed06      	mov.n	a14, a6
42012387:	dd09      	mov.n	a13, a9
42012389:	bd09      	mov.n	a11, a9
4201238b:	cd05      	mov.n	a12, a5
4201238d:	ad04      	mov.n	a10, a4
4201238f:	658f03        	call8	0x42015c84
42012392:	8871      	l32i.n	a8, a1, 28
42012394:	0c0d      	movi.n	a13, 0
42012396:	cd08      	mov.n	a12, a8
42012398:	bd0d      	mov.n	a11, a13
4201239a:	ad04      	mov.n	a10, a4
4201239c:	e53248        	call8	0x4205a6cc
4201239f:	0c0d      	movi.n	a13, 0
420123a1:	cd0d      	mov.n	a12, a13
420123a3:	bd0d      	mov.n	a11, a13
420123a5:	a5d5f0        	call8	0x42003100
420123a8:	0b22      	addi.n	a2, a2, -1
420123aa:	fd0a      	mov.n	a15, a10
420123ac:	ed06      	mov.n	a14, a6
420123ae:	dd02      	mov.n	a13, a2
420123b0:	cd05      	mov.n	a12, a5
420123b2:	bd02      	mov.n	a11, a2
420123b4:	ad04      	mov.n	a10, a4
420123b6:	e58c03        	call8	0x42015c84
420123b9:	a2a015        	movi	a10, 21
420123bc:	a5a40c        	call8	0x4201ee08
420123bf:	22210a        	l32i	a2, a1, 40
420123c2:	422109        	l32i	a4, a1, 36
420123c5:	4a22      	add.n	a2, a2, a4
420123c7:	29a1      	s32i.n	a2, a1, 40
420123c9:	8c1a      	beqz.n	a10, 0x420123ce
420123cb:	462b02        	j	0x42012c7c
420123ce:	1c52      	movi.n	a2, 21
420123d0:	ad02      	mov.n	a10, a2
420123d2:	65a30c        	call8	0x4201ee08
420123d5:	167aff        	beqz	a10, 0x420123d0
420123d8:	2148b7        	l32r	a2, 0x420000f8 (0x3fc94768)
420123db:	3c23      	movi.n	a3, 50
420123dd:	324200        	s8i	a3, a2, 0
420123e0:	467d01        	j	0x420129d9
420123e3:	00          	.byte	00
420123e4:	5140b7        	l32r	a5, 0x420000e4 (0xffffc950)
420123e7:	805523        	sext	a5, a5, 15
420123ea:	572302        	blt	a3, a5, 0x420123f0
420123ed:	c6e5fe        	j	0x42011f88
420123f0:	513db7        	l32r	a5, 0x420000e4 (0xffffc950)
420123f3:	525400        	s16i	a5, a4, 0
420123f6:	46e4fe        	j	0x42011f8b
420123f9:	31d4b7        	l32r	a3, 0x4200034c (0x3fc9bfca)
420123fc:	320300        	l8ui	a3, a3, 0
420123ff:	8cd3      	beqz.n	a3, 0x42012410
42012401:	c02000        	memw
42012404:	a802      	l32i.n	a10, a2, 0
42012406:	00aa23        	sext	a10, a10, 7
42012409:	e539fd        	call8	0x4200f7a8
4201240c:	86ebfe        	j	0x42011fbe
4201240f:	00          	.byte	00
42012410:	31ceb7        	l32r	a3, 0x42000348 (0x3fc9bfcb)
42012413:	320300        	l8ui	a3, a3, 0
42012416:	16e300        	beqz	a3, 0x42012428
42012419:	c02000        	memw
4201241c:	a802      	l32i.n	a10, a2, 0
4201241e:	00aa23        	sext	a10, a10, 7
42012421:	e53cfd        	call8	0x4200f7f0
42012424:	86e5fe        	j	0x42011fbe
42012427:	0031c7        	ee.stf.64.xp	f3, f12, a0, a1
4201242a:	b73203        	bltu	a2, a11, 0x42012431
4201242d:	00          	.byte	00
4201242e:	16e300        	beqz	a3, 0x42012440
42012431:	c02000        	memw
42012434:	a802      	l32i.n	a10, a2, 0
42012436:	00aa23        	sext	a10, a10, 7
42012439:	e55afc        	call8	0x4200e9e8
4201243c:	86dffe        	j	0x42011fbe
4201243f:	00          	.byte	00
42012440:	31bfb7        	l32r	a3, 0x4200033c (0x3fc9bfce)
42012443:	320300        	l8ui	a3, a3, 0
42012446:	16e300        	beqz	a3, 0x42012458
42012449:	c02000        	memw
4201244c:	a802      	l32i.n	a10, a2, 0
4201244e:	00aa23        	sext	a10, a10, 7
42012451:	6552fc        	call8	0x4200e978
42012454:	86d9fe        	j	0x42011fbe
42012457:	0031ba        	ceil.s	a3, f1, 0
4201245a:	b73203        	bltu	a2, a11, 0x42012461
4201245d:	00          	.byte	00
4201245e:	8cf3      	beqz.n	a3, 0x42012471
42012460:	c02000        	memw
42012463:	a802      	l32i.n	a10, a2, 0
42012465:	00aa23        	sext	a10, a10, 7
42012468:	a5cafb        	call8	0x4200e114
4201246b:	c6d3fe        	j	0x42011fbe
4201246e:	000000        	ill
42012471:	31bbb7        	l32r	a3, 0x42000360 (0x3fc9bfd5)
42012474:	320300        	l8ui	a3, a3, 0
42012477:	8cd3      	beqz.n	a3, 0x42012488
42012479:	c02000        	memw
4201247c:	a802      	l32i.n	a10, a2, 0
4201247e:	00aa23        	sext	a10, a10, 7
42012481:	25ddfb        	call8	0x4200e254
42012484:	86cdfe        	j	0x42011fbe
42012487:	0031b7        	ee.stf.64.xp	f3, f11, a0, a1
4201248a:	b73203        	bltu	a2, a11, 0x42012491
4201248d:	00          	.byte	00
4201248e:	16e300        	beqz	a3, 0x420124a0
42012491:	c02000        	memw
42012494:	a802      	l32i.n	a10, a2, 0
42012496:	00aa23        	sext	a10, a10, 7
42012499:	259efc        	call8	0x4200ee7c
4201249c:	86c7fe        	j	0x42011fbe
4201249f:	0031b2        	mulsh	a3, a1, a0
420124a2:	b73203        	bltu	a2, a11, 0x420124a9
420124a5:	00          	.byte	00
420124a6:	8cf3      	beqz.n	a3, 0x420124b9
420124a8:	c02000        	memw
420124ab:	a802      	l32i.n	a10, a2, 0
420124ad:	00aa23        	sext	a10, a10, 7
420124b0:	6592fc        	call8	0x4200edd8
420124b3:	c6c1fe        	j	0x42011fbe
420124b6:	000000        	ill
420124b9:	310ab8        	l32r	a3, 0x420004e4 (0x3fc9bfd3)
420124bc:	320300        	l8ui	a3, a3, 0
420124bf:	5653fe        	bnez	a3, 0x420124a8
420124c2:	31aab7        	l32r	a3, 0x4200036c (0x3fc9bfd2)
420124c5:	320300        	l8ui	a3, a3, 0
420124c8:	8cc3      	beqz.n	a3, 0x420124d8
420124ca:	c02000        	memw
420124cd:	a802      	l32i.n	a10, a2, 0
420124cf:	00aa23        	sext	a10, a10, 7
420124d2:	e527fd        	call8	0x4200f750
420124d5:	46b9fe        	j	0x42011fbe
420124d8:	31a6b7        	l32r	a3, 0x42000370 (0x3fc9bfd1)
420124db:	320300        	l8ui	a3, a3, 0
420124de:	16e300        	beqz	a3, 0x420124f0
420124e1:	c02000        	memw
420124e4:	a802      	l32i.n	a10, a2, 0
420124e6:	00aa23        	sext	a10, a10, 7
420124e9:	6563fd        	call8	0x4200fb20
420124ec:	86b3fe        	j	0x42011fbe
420124ef:	00          	.byte	00
420124f0:	3192b7        	l32r	a3, 0x42000338 (0x3fc9bfd9)
420124f3:	320300        	l8ui	a3, a3, 0
420124f6:	16e300        	beqz	a3, 0x42012508
420124f9:	c02000        	memw
420124fc:	a802      	l32i.n	a10, a2, 0
420124fe:	00aa23        	sext	a10, a10, 7
42012501:	6554fd        	call8	0x4200fa48
42012504:	86adfe        	j	0x42011fbe
42012507:	00          	.byte	00
42012508:	3192b7        	l32r	a3, 0x42000350 (0x3fc9bfd8)
4201250b:	320300        	l8ui	a3, a3, 0
4201250e:	16e300        	beqz	a3, 0x42012520
42012511:	c02000        	memw
42012514:	a802      	l32i.n	a10, a2, 0
42012516:	00aa23        	sext	a10, a10, 7
42012519:	a589f2        	call8	0x42004db4
4201251c:	86a7fe        	j	0x42011fbe
4201251f:	00          	.byte	00
42012520:	318fb7        	l32r	a3, 0x4200035c (0x3fc9bfd6)
42012523:	320300        	l8ui	a3, a3, 0
42012526:	16e300        	beqz	a3, 0x42012538
42012529:	c02000        	memw
4201252c:	a802      	l32i.n	a10, a2, 0
4201252e:	00aa23        	sext	a10, a10, 7
42012531:	a544fd        	call8	0x4200f97c
42012534:	86a1fe        	j	0x42011fbe
42012537:	003190        	addx2	a3, a1, a0
4201253a:	b73203        	bltu	a2, a11, 0x42012541
4201253d:	00          	.byte	00
4201253e:	16e300        	beqz	a3, 0x42012550
42012541:	c02000        	memw
42012544:	a802      	l32i.n	a10, a2, 0
42012546:	00aa23        	sext	a10, a10, 7
42012549:	65abf2        	call8	0x42005000
4201254c:	869bfe        	j	0x42011fbe
4201254f:	00          	.byte	00
42012550:	3178b7        	l32r	a3, 0x42000330 (0x3fc9bfda)
42012553:	320300        	l8ui	a3, a3, 0
42012556:	16e300        	beqz	a3, 0x42012568
42012559:	c02000        	memw
4201255c:	a802      	l32i.n	a10, a2, 0
4201255e:	00aa23        	sext	a10, a10, 7
42012561:	a58bfc        	call8	0x4200ee1c
42012564:	8695fe        	j	0x42011fbe
42012567:	009103        	rsr.dbreaka1	a0
4201256a:	b851      	l32i.n	a11, a1, 20
4201256c:	afb63229 	ee.vmulas.s8.accx.ld.ip.qup	q2, a10, 0xfffffe60, q6, q6, q3, q2
42012570:	00          	.byte	00
42012571:	261302        	beqi	a3, 1, 0x42012577
42012574:	066700        	j	0x42012714
42012577:	31d6b6        	l32r	a3, 0x420000d0 (0x3fc9bf9c)
4201257a:	41d4b6        	l32r	a4, 0x420000cc (0x3fc9a1dc)
4201257d:	167a03        	beqz	a10, 0x420125b8
42012580:	e500f1        	call8	0x42003590
42012583:	40a420        	or	a10, a4, a4
42012586:	25f408        	call8	0x4201b4c8
42012589:	a25300        	s16i	a10, a3, 0
4201258c:	25b3fb        	call8	0x4200e0c0
4201258f:	41f9b7        	l32r	a4, 0x42000574 (0x3fc94e8c)
42012592:	3804      	l32i.n	a3, a4, 0
42012594:	664302        	bnei	a3, 4, 0x4201259a
42012597:	c688fe        	j	0x42011fbe
4201259a:	31a5b7        	l32r	a3, 0x42000430 (0x3fc9baa0)
4201259d:	42a000        	movi	a4, 0
420125a0:	424300        	s8i	a4, a3, 0
420125a3:	a5aef0        	call8	0x4200308c
420125a6:	a1c9b6        	l32r	a10, 0x420000cc (0x3fc9a1dc)
420125a9:	e5f108        	call8	0x4201b4c8
420125ac:	31c9b6        	l32r	a3, 0x420000d0 (0x3fc9bf9c)
420125af:	a25300        	s16i	a10, a3, 0
420125b2:	e5b0fb        	call8	0x4200e0c0
420125b5:	4681fe        	j	0x42011fbe
420125b8:	71ffb6        	l32r	a7, 0x420001b4 (0x3fc9ba3c)
420125bb:	a24700        	s8i	a10, a7, 0
420125be:	7157b9        	l32r	a7, 0x42000b1c (0x3fc946d4)
420125c1:	720700        	l8ui	a7, a7, 0
420125c4:	9cd7      	beqz.n	a7, 0x420125e5
420125c6:	71cfb6        	l32r	a7, 0x42000104 (0x3fc946d8)
420125c9:	1c39      	movi.n	a9, 19
420125cb:	7807      	l32i.n	a7, a7, 0
420125cd:	77a902        	bge	a9, a7, 0x420125d3
420125d0:	462900        	j	0x42012679
420125d3:	620600        	l8ui	a6, a6, 0
420125d6:	8cb6      	beqz.n	a6, 0x420125e5
420125d8:	c02000        	memw
420125db:	6805      	l32i.n	a6, a5, 0
420125dd:	a06611        	slli	a6, a6, 6
420125e0:	c02000        	memw
420125e3:	6905      	s32i.n	a6, a5, 0
420125e5:	61b0b6        	l32r	a6, 0x420000a8 (0x3fc9bf83)
420125e8:	920600        	l8ui	a9, a6, 0
420125eb:	616ab7        	l32r	a6, 0x42000394 (0x3fc94d0c)
420125ee:	721600        	l16ui	a7, a6, 0
420125f1:	621300        	l16ui	a6, a3, 0
420125f4:	d07711        	slli	a7, a7, 3
420125f7:	56790c        	bnez	a9, 0x420126c2
420125fa:	c02000        	memw
420125fd:	5805      	l32i.n	a5, a5, 0
420125ff:	a167b7        	l32r	a10, 0x4200039c (0x3c061834)
42012602:	7a7a      	add.n	a7, a10, a7
42012604:	7807      	l32i.n	a7, a7, 0
42012606:	705582        	mull	a5, a5, a7
42012609:	71b3b6        	l32r	a7, 0x420000d8 (0x3fc94b5c)
4201260c:	5066c0        	sub	a6, a6, a5
4201260f:	51acb6        	l32r	a5, 0x420000c0 (0x3fc9bf7c)
42012612:	625300        	s16i	a6, a3, 0
42012615:	622500        	l32i	a6, a5, 0
42012618:	c06611        	slli	a6, a6, 4
4201261b:	6a67      	add.n	a6, a7, a6
4201261d:	a21603        	l16ui	a10, a6, 6
42012620:	b21604        	l16ui	a11, a6, 8
42012623:	621300        	l16ui	a6, a3, 0
42012626:	663902        	bnei	a9, 3, 0x4201262c
42012629:	608f41        	srli	a8, a6, 15
4201262c:	a73602        	bltu	a6, a10, 0x42012632
4201262f:	16180b        	beqz	a8, 0x420126e4
42012632:	b25300        	s16i	a11, a3, 0
42012635:	b21300        	l16ui	a11, a3, 0
42012638:	ad04      	mov.n	a10, a4
4201263a:	65c908        	call8	0x4201b2d0
4201263d:	619ab6        	l32r	a6, 0x420000a8 (0x3fc9bf83)
42012640:	820600        	l8ui	a8, a6, 0
42012643:	56980a        	bnez	a8, 0x420126f0
42012646:	617ab7        	l32r	a6, 0x42000430 (0x3fc9baa0)
42012649:	0c08      	movi.n	a8, 0
4201264b:	824600        	s8i	a8, a6, 0
4201264e:	e5a3f0        	call8	0x4200308c
42012651:	ad04      	mov.n	a10, a4
42012653:	65e708        	call8	0x4201b4c8
42012656:	a25300        	s16i	a10, a3, 0
42012659:	31b0b9        	l32r	a3, 0x42000d1c (0x3fca1e56)
4201265c:	320300        	l8ui	a3, a3, 0
4201265f:	8c73      	beqz.n	a3, 0x4201266a
42012661:	4185b6        	l32r	a4, 0x42000078 (0x3fca1e54)
42012664:	f03a11        	slli	a3, a10, 1
42012667:	325400        	s16i	a3, a4, 0
4201266a:	3805      	l32i.n	a3, a5, 0
4201266c:	c03311        	slli	a3, a3, 4
4201266f:	3a77      	add.n	a7, a7, a3
42012671:	a25705        	s16i	a10, a7, 10
42012674:	06c5ff        	j	0x4201258c
42012677:	00          	.byte	00
42012678:	00          	.byte	00
42012679:	1cd9      	movi.n	a9, 29
4201267b:	772911        	blt	a9, a7, 0x42012690
4201267e:	620600        	l8ui	a6, a6, 0
42012681:	1606f6        	beqz	a6, 0x420125e5
42012684:	c02000        	memw
42012687:	6805      	l32i.n	a6, a5, 0
42012689:	b06611        	slli	a6, a6, 5
4201268c:	06d4ff        	j	0x420125e0
4201268f:	00          	.byte	00
42012690:	2c79      	movi.n	a9, 39
42012692:	772910        	blt	a9, a7, 0x420126a6
42012695:	620600        	l8ui	a6, a6, 0
42012698:	1696f4        	beqz	a6, 0x420125e5
4201269b:	c02000        	memw
4201269e:	6805      	l32i.n	a6, a5, 0
420126a0:	d06611        	slli	a6, a6, 3
420126a3:	46ceff        	j	0x420125e0
420126a6:	3c19      	movi.n	a9, 49
420126a8:	77a902        	bge	a9, a7, 0x420126ae
420126ab:	86cdff        	j	0x420125e5
420126ae:	620600        	l8ui	a6, a6, 0
420126b1:	1606f3        	beqz	a6, 0x420125e5
420126b4:	c02000        	memw
420126b7:	6805      	l32i.n	a6, a5, 0
420126b9:	f06611        	slli	a6, a6, 1
420126bc:	06c8ff        	j	0x420125e0
420126bf:	000000        	ill
420126c2:	826107        	s32i	a8, a1, 28
420126c5:	926108        	s32i	a9, a1, 32
420126c8:	25ddf0        	call8	0x4200349c
420126cb:	c02000        	memw
420126ce:	522500        	l32i	a5, a5, 0
420126d1:	8871      	l32i.n	a8, a1, 28
420126d3:	9881      	l32i.n	a9, a1, 32
420126d5:	8c4a      	beqz.n	a10, 0x420126dd
420126d7:	a175b6        	l32r	a10, 0x420000ac (0x3c0617b4)
420126da:	06c9ff        	j	0x42012602
420126dd:	a175b6        	l32r	a10, 0x420000b4 (0x3c0617fc)
420126e0:	86c7ff        	j	0x42012602
420126e3:	00673b        	ueq.s	b6, f7, f0
420126e6:	02          	.byte	0x2
420126e7:	86d2ff        	j	0x42012635
420126ea:	a25300        	s16i	a10, a3, 0
420126ed:	06d1ff        	j	0x42012635
420126f0:	81e1b8        	l32r	a8, 0x42000a74 (0x3fca1e52)
420126f3:	820800        	l8ui	a8, a8, 0
420126f6:	1678f5        	beqz	a8, 0x42012651
420126f9:	8116b7        	l32r	a8, 0x42000354 (0x3fc9bfd7)
420126fc:	820800        	l8ui	a8, a8, 0
420126ff:	56e8f4        	bnez	a8, 0x42012651
42012702:	a5d9f0        	call8	0x4200349c
42012705:	568af4        	bnez	a10, 0x42012651
42012708:	e5e9f6        	call8	0x420095a8
4201270b:	620600        	l8ui	a6, a6, 0
4201270e:	56f6f3        	bnez	a6, 0x42012651
42012711:	46ccff        	j	0x42012646
42012714:	662375        	bnei	a3, 2, 0x4201278d
42012717:	3182b9        	l32r	a3, 0x42000d20 (0x3fc9477c)
4201271a:	4197b7        	l32r	a4, 0x42000578 (0x3fc9bac4)
4201271d:	7803      	l32i.n	a7, a3, 0
4201271f:	a804      	l32i.n	a10, a4, 0
42012721:	815db6        	l32r	a8, 0x42000098 (0x3fc94784)
42012724:	915eb6        	l32r	a9, 0x4200009c (0x270f)
42012727:	62a064        	movi	a6, 100
4201272a:	768632        	loop	a6, 0x42012760
4201272d:	c02000        	memw
42012730:	3805      	l32i.n	a3, a5, 0
42012732:	66130c        	bnei	a3, 1, 0x42012742
42012735:	0baa      	addi.n	a10, a10, -1
42012737:	a7270f        	blt	a7, a10, 0x4201274a
4201273a:	d6ea00        	bgez	a10, 0x4201274c
4201273d:	ad07      	mov.n	a10, a7
4201273f:	460200        	j	0x4201274c
42012742:	1baa      	addi.n	a10, a10, 1
42012744:	c6fbff        	j	0x42012737
42012747:	000000        	ill
4201274a:	0c0a      	movi.n	a10, 0
4201274c:	f03a11        	slli	a3, a10, 1
4201274f:	aa33      	add.n	a3, a3, a10
42012751:	f03311        	slli	a3, a3, 1
42012754:	303880        	add	a3, a8, a3
42012757:	b21300        	l16ui	a11, a3, 0
4201275a:	9030f4        	extui	a3, a9, 0, 16
4201275d:	379bff        	bne	a11, a3, 0x42012760
42012760:	a26400        	s32i	a10, a4, 0
42012763:	6550fc        	call8	0x4200ec68
42012766:	3150b6        	l32r	a3, 0x420000a8 (0x3fc9bf83)
42012769:	320300        	l8ui	a3, a3, 0
4201276c:	16f3e1        	beqz	a3, 0x4201258f
4201276f:	31c1b8        	l32r	a3, 0x42000a74 (0x3fca1e52)
42012772:	320300        	l8ui	a3, a3, 0
42012775:	1663e1        	beqz	a3, 0x4201258f
42012778:	31f7b6        	l32r	a3, 0x42000354 (0x3fc9bfd7)
4201277b:	320300        	l8ui	a3, a3, 0
4201277e:	56d3e0        	bnez	a3, 0x4201258f
42012781:	a5d1f0        	call8	0x4200349c
42012784:	567ae0        	bnez	a10, 0x4201258f
42012787:	25e2f6        	call8	0x420095a8
4201278a:	4680ff        	j	0x4201258f
4201278d:	560305        	bnez	a3, 0x420127e1
42012790:	416bb7        	l32r	a4, 0x4200053c (0x3fc94780)
42012793:	c143b6        	l32r	a12, 0x420000a0 (0x3fc949dc)
42012796:	7804      	l32i.n	a7, a4, 0
42012798:	416ab7        	l32r	a4, 0x42000540 (0x3fc9bac8)
4201279b:	8140b6        	l32r	a8, 0x4200009c (0x270f)
4201279e:	a804      	l32i.n	a10, a4, 0
420127a0:	4c06      	movi.n	a6, 64
420127a2:	768632        	loop	a6, 0x420127d8
420127a5:	c02000        	memw
420127a8:	9805      	l32i.n	a9, a5, 0
420127aa:	66190c        	bnei	a9, 1, 0x420127ba
420127ad:	0baa      	addi.n	a10, a10, -1
420127af:	a7270f        	blt	a7, a10, 0x420127c2
420127b2:	d6ea00        	bgez	a10, 0x420127c4
420127b5:	ad07      	mov.n	a10, a7
420127b7:	460200        	j	0x420127c4
420127ba:	1baa      	addi.n	a10, a10, 1
420127bc:	c6fbff        	j	0x420127af
420127bf:	000000        	ill
420127c2:	ad03      	mov.n	a10, a3
420127c4:	f09a11        	slli	a9, a10, 1
420127c7:	aa99      	add.n	a9, a9, a10
420127c9:	f09911        	slli	a9, a9, 1
420127cc:	909c80        	add	a9, a12, a9
420127cf:	b21900        	l16ui	a11, a9, 0
420127d2:	8090f4        	extui	a9, a8, 0, 16
420127d5:	979bff        	bne	a11, a9, 0x420127d8
420127d8:	a904      	s32i.n	a10, a4, 0
420127da:	e531fc        	call8	0x4200eaf8
420127dd:	46e1ff        	j	0x42012766
420127e0:	002633        	clamps	a2, a6, 7
420127e3:	02c669        	addi	a0, a6, 105
420127e6:	ffc02000 	ee.vmulas.s16.accx.ld.ip.qup	q0, a15, 0, q7, q0, q2, q0
420127ea:	a22500        	l32i	a10, a5, 0
420127ed:	32a000        	movi	a3, 0
420127f0:	a0af05        	extui	a10, a10, 31, 1
420127f3:	c02000        	memw
420127f6:	326500        	s32i	a3, a5, 0
420127f9:	25fcfd        	call8	0x420107bc
420127fc:	86d9ff        	j	0x42012766
420127ff:	000021        	srai	a0, a0, 0
42012802:	dfb62202 	ee.vmulas.s16.accx.ld.ip.qup	q4, a13, 96, q6, q6, q2, q2
42012806:	0016e2        	remu	a1, a6, a0
42012809:	3ca5      	movi.n	a5, 58
4201280b:	e00ca0        	addx4	a0, a12, a14
4201280e:	7a20      	add.n	a2, a0, a7
42012810:	a2a015        	movi	a10, 21
42012813:	655f0c        	call8	0x4201ee08
42012816:	5d0a      	mov.n	a5, a10
42012818:	8c1a      	beqz.n	a10, 0x4201281d
4201281a:	c6edfd        	j	0x42011fd5
4201281d:	41a2b6        	l32r	a4, 0x420002a8 (0x3fc9bfc6)
42012820:	220400        	l8ui	a2, a4, 0
42012823:	56221d        	bnez	a2, 0x420129f9
42012826:	2d0a      	mov.n	a2, a10
42012828:	0c13      	movi.n	a3, 1
4201282a:	1c5a      	movi.n	a10, 21
4201282c:	a55d0c        	call8	0x4201ee08
4201282f:	cc4a      	bnez.n	a10, 0x42012837
42012831:	613cb9        	l32r	a6, 0x42000d24 (0x1387)
42012834:	27a65c        	bge	a6, a2, 0x42012894
42012837:	e5dd0c        	call8	0x4201f614
4201283a:	707ac0        	sub	a7, a10, a7
4201283d:	32aea2        	movi	a3, 0xfffffea2
42012840:	3a37      	add.n	a3, a7, a3
42012842:	62a289        	movi	a6, 0x289
42012845:	21c1b6        	l32r	a2, 0x4200034c (0x3fc9bfca)
42012848:	373602        	bltu	a6, a3, 0x4201284e
4201284b:	864d00        	j	0x42012985
4201284e:	32ac18        	movi	a3, 0xfffffc18
42012851:	3a37      	add.n	a3, a7, a3
42012853:	62a3e7        	movi	a6, 0x3e7
42012856:	37b602        	bgeu	a6, a3, 0x4201285c
42012859:	c65000        	j	0x420129a0
4201285c:	320200        	l8ui	a3, a2, 0
4201285f:	56e349        	bnez	a3, 0x42012d01
42012862:	3144b7        	l32r	a3, 0x42000574 (0x3fc94e8c)
42012865:	0c46      	movi.n	a6, 4
42012867:	4803      	l32i.n	a4, a3, 0
42012869:	42c4fc        	addi	a4, a4, -4
4201286c:	405693        	movnez	a5, a6, a4
4201286f:	5903      	s32i.n	a5, a3, 0
42012871:	e5bdf0        	call8	0x42003450
42012874:	4d0a      	mov.n	a4, a10
42012876:	65bbf0        	call8	0x4200342c
42012879:	aaa4      	add.n	a10, a4, a10
4201287b:	cc2a      	bnez.n	a10, 0x42012881
4201287d:	0c14      	movi.n	a4, 1
4201287f:	4903      	s32i.n	a4, a3, 0
42012881:	0c03      	movi.n	a3, 0
42012883:	324200        	s8i	a3, a2, 0
42012886:	2119b7        	l32r	a2, 0x420004ec (0x3fc94db2)
42012889:	1c23      	movi.n	a3, 18
4201288b:	324200        	s8i	a3, a2, 0
4201288e:	250dfb        	call8	0x4200d960
42012891:	065100        	j	0x420129d9
42012894:	e5d70c        	call8	0x4201f614
42012897:	702ac0        	sub	a2, a10, a7
4201289a:	30a320        	or	a10, a3, a3
4201289d:	25d90c        	call8	0x4201f630
420128a0:	82aea2        	movi	a8, 0xfffffea2
420128a3:	8a82      	add.n	a8, a2, a8
420128a5:	92a289        	movi	a9, 0x289
420128a8:	6127b6        	l32r	a6, 0x42000144 (0x3fc9b35c)
420128ab:	87393a        	bltu	a9, a8, 0x420128e9
420128ae:	81a7b6        	l32r	a8, 0x4200034c (0x3fc9bfca)
420128b1:	820800        	l8ui	a8, a8, 0
420128b4:	ccd8      	bnez.n	a8, 0x420128c5
420128b6:	b11cb9        	l32r	a11, 0x42000d28 (0x3c060c8f)
420128b9:	ed03      	mov.n	a14, a3
420128bb:	0cbd      	movi.n	a13, 11
420128bd:	c2a06c        	movi	a12, 108
420128c0:	ad06      	mov.n	a10, a6
420128c2:	65b806        	call8	0x42019448
420128c5:	811eb9        	l32r	a8, 0x42000d40 (0xfffff448)
420128c8:	92a1f3        	movi	a9, 0x1f3
420128cb:	8a82      	add.n	a8, a2, a8
420128cd:	873940        	bltu	a9, a8, 0x42012911
420128d0:	819fb6        	l32r	a8, 0x4200034c (0x3fc9bfca)
420128d3:	820800        	l8ui	a8, a8, 0
420128d6:	56e83e        	bnez	a8, 0x42012cc8
420128d9:	ed03      	mov.n	a14, a3
420128db:	0cbd      	movi.n	a13, 11
420128dd:	c2a06c        	movi	a12, 108
420128e0:	b115b9        	l32r	a11, 0x42000d34 (0x3c060caa)
420128e3:	460900        	j	0x4201290c
420128e6:	000000        	ill
420128e9:	82ac18        	movi	a8, 0xfffffc18
420128ec:	808280        	add	a8, a2, a8
420128ef:	92a3e7        	movi	a9, 0x3e7
420128f2:	87b902        	bgeu	a9, a8, 0x420128f8
420128f5:	c6f600        	j	0x42012cd4
420128f8:	8195b6        	l32r	a8, 0x4200034c (0x3fc9bfca)
420128fb:	820800        	l8ui	a8, a8, 0
420128fe:	56f800        	bnez	a8, 0x42012911
42012901:	b10ab9        	l32r	a11, 0x42000d2c (0x3c060c98)
42012904:	30e320        	or	a14, a3, a3
42012907:	0cbd      	movi.n	a13, 11
42012909:	c2a06c        	movi	a12, 108
4201290c:	ad06      	mov.n	a10, a6
4201290e:	a5b306        	call8	0x42019448
42012911:	82a15d        	movi	a8, 0x15d
42012914:	27a839        	bge	a8, a2, 0x42012951
42012917:	818db6        	l32r	a8, 0x4200034c (0x3fc9bfca)
4201291a:	820800        	l8ui	a8, a8, 0
4201291d:	9cb8      	beqz.n	a8, 0x4201293c
4201291f:	81f3b6        	l32r	a8, 0x420004ec (0x3fc94db2)
42012922:	1c29      	movi.n	a9, 18
42012924:	820800        	l8ui	a8, a8, 0
42012927:	008823        	sext	a8, a8, 7
4201292a:	97980e        	bne	a8, a9, 0x4201293c
4201292d:	b102b9        	l32r	a11, 0x42000d38 (0x3c060cb3)
42012930:	ed03      	mov.n	a14, a3
42012932:	0cbd      	movi.n	a13, 11
42012934:	c2a06c        	movi	a12, 108
42012937:	ad06      	mov.n	a10, a6
42012939:	e5b006        	call8	0x42019448
4201293c:	8100b9        	l32r	a8, 0x42000d3c (0xdab)
4201293f:	27a80e        	bge	a8, a2, 0x42012951
42012942:	b14bb8        	l32r	a11, 0x42000a70 (0x3c0602b3)
42012945:	ed03      	mov.n	a14, a3
42012947:	0cbd      	movi.n	a13, 11
42012949:	c2a06c        	movi	a12, 108
4201294c:	ad06      	mov.n	a10, a6
4201294e:	a5af06        	call8	0x42019448
42012951:	d2a000        	movi	a13, 0
42012954:	a112b6        	l32r	a10, 0x4200019c (0xf800)
42012957:	d0cd20        	or	a12, a13, a13
4201295a:	d0bd20        	or	a11, a13, a13
4201295d:	257af0        	call8	0x42003100
42012960:	d1f3b6        	l32r	a13, 0x4200052c (0x66666667)
42012963:	206f31        	srai	a6, a2, 31
42012966:	d0d2b2        	mulsh	a13, a2, a13
42012969:	fd0a      	mov.n	a15, a10
4201296b:	d0d321        	srai	a13, a13, 3
4201296e:	60ddc0        	sub	a13, a13, a6
42012971:	a1f4b5        	l32r	a10, 0x42000144 (0x3fc9b35c)
42012974:	ed03      	mov.n	a14, a3
42012976:	d2cd54        	addi	a13, a13, 84
42012979:	cd03      	mov.n	a12, a3
4201297b:	5c4b      	movi.n	a11, 84
4201297d:	653003        	call8	0x42015c84
42012980:	86a9ff        	j	0x4201282a
42012983:	000032        	orbc	b0, b0, b0
42012986:	020056        	l8ui	a0, a0, 86
42012989:	430132        	lsi	f4, a1, 200
4201298c:	040056        	ee.ld.qacc_l.h.32.ip	a0, 0xfffffe00
4201298f:	e30052        	lsi	f14, a0, 0x148
42012992:	a0          	.byte	0xa0
42012993:	015242        	l32r	a0, 0x41fe32dc
42012996:	0051d5        	extui	a5, a0, 17, 14
42012999:	b63245        	bltui	a2, 3, 0x420129e2
4201299c:	006597        	ee.stf.64.xp	f6, f9, a0, a5
4201299f:	f252a8        	s16i	a15, a2, 0x150
420129a2:	305057        	ee.stf.64.xp	f5, f5, a3, a0
420129a5:	8062a3        	movltz	a6, a2, a8
420129a8:	e73202        	bltu	a2, a14, 0x420129ae
420129ab:	0057b6        	ee.ldf.64.xp	f5, f11, a0, a7
420129ae:	2c52      	movi.n	a2, 37
420129b0:	a15d77        	l32r	a10, 0x41ff0724
420129b3:	250246        	call8	0x420589d4
420129b6:	d40016        	ee.ld.qacc_l.h.32.ip	a13, 0
420129b9:	e3          	.byte	0xe3
420129ba:	3431cc        	ee.fft.r2bf.s16	q0, q3, q1, q1, 1
420129bd:	b652a0        	bltui	a2, 5, 0x42012961
420129c0:	12          	.byte	0x12
420129c1:	320300        	l8ui	a3, a3, 0
420129c4:	003323        	sext	a3, a3, 7
420129c7:	571302        	beq	a3, a5, 0x420129cd
420129ca:	06cf00        	j	0x42012d0a
420129cd:	51b3b8        	l32r	a5, 0x42000c9c (0x3fca1e5a)
420129d0:	22a001        	movi	a2, 1
420129d3:	224500        	s8i	a2, a5, 0
420129d6:	25c9f7        	call8	0x4200a668
420129d9:	1df0      	retw.n
420129db:	005653        	max	a5, a6, a0
420129de:	31514f        	l32r	a3, 0x41fe6724
420129e1:	b80c      	l32i.n	a11, a12, 0
420129e3:	164205        	beqz	a2, 0x42012a3b
420129e6:	006044        	extui	a6, a0, 0, 5
420129e9:	304245        	extui	a4, a3, 18, 5
420129ec:	0086a4        	extui	a8, a0, 6, 11
420129ef:	ff          	.byte	0xff
420129f0:	252df8        	call8	0x4200acc4
420129f3:	c6b101        	j	0x420130be
420129f6:	000000        	ill
420129f9:	a24400        	s8i	a10, a4, 0
420129fc:	25c8f1        	call8	0x42004680
420129ff:	2159b6        	l32r	a2, 0x42000364 (0x3fc9bfc9)
42012a02:	0c13      	movi.n	a3, 1
42012a04:	524200        	s8i	a5, a2, 0
42012a07:	2152b6        	l32r	a2, 0x42000350 (0x3fc9bfd8)
42012a0a:	324200        	s8i	a3, a2, 0
42012a0d:	315bb6        	l32r	a3, 0x4200037c (0x3fc9bfdb)
42012a10:	214fb6        	l32r	a2, 0x4200034c (0x3fc9bfca)
42012a13:	520300        	l8ui	a5, a3, 0
42012a16:	620200        	l8ui	a6, a2, 0
42012a19:	1b55      	addi.n	a5, a5, 1
42012a1b:	505074        	extui	a5, a5, 0, 8
42012a1e:	524300        	s8i	a5, a3, 0
42012a21:	9c26      	beqz.n	a6, 0x42012a37
42012a23:	21b2b6        	l32r	a2, 0x420004ec (0x3fc94db2)
42012a26:	320200        	l8ui	a3, a2, 0
42012a29:	219bb8        	l32r	a2, 0x42000c98 (0x3fc94db1)
42012a2c:	324200        	s8i	a3, a2, 0
42012a2f:	e504fe        	call8	0x42010a7c
42012a32:	8664fd        	j	0x42011fc8
42012a35:	000026        	ee.ldf.64.xp	f0, f2, a0, a0
42012a38:	150286        	call4	0x41f98a5c
42012a3b:	5e005204 	ee.vmulas.s16.accx.ld.ip.qup	q0, a5, 0x100, q0, q0, q5, q2
42012a3f:	008c15        	extui	a8, a0, 28, 2
42012a42:	624400        	s8i	a6, a4, 0
42012a45:	656ef2        	call8	0x4200512c
42012a48:	16ca13        	beqz	a10, 0x42012b88
42012a4b:	2147b6        	l32r	a2, 0x42000368 (0x3fc9bfd4)
42012a4e:	220200        	l8ui	a2, a2, 0
42012a51:	168203        	beqz	a2, 0x42012a8d
42012a54:	21bbb6        	l32r	a2, 0x42000540 (0x3fc9bac8)
42012a57:	5192b5        	l32r	a5, 0x420000a0 (0x3fc949dc)
42012a5a:	a22200        	l32i	a10, a2, 0
42012a5d:	f02a11        	slli	a2, a10, 1
42012a60:	aa22      	add.n	a2, a2, a10
42012a62:	f02211        	slli	a2, a2, 1
42012a65:	2a25      	add.n	a2, a5, a2
42012a67:	519ab5        	l32r	a5, 0x420000d0 (0x3fc9bf9c)
42012a6a:	521500        	l16ui	a5, a5, 0
42012a6d:	525200        	s16i	a5, a2, 0
42012a70:	5194b5        	l32r	a5, 0x420000c0 (0x3fc9bf7c)
42012a73:	5805      	l32i.n	a5, a5, 0
42012a75:	524202        	s8i	a5, a2, 2
42012a78:	518cb5        	l32r	a5, 0x420000a8 (0x3fc9bf83)
42012a7b:	520500        	l8ui	a5, a5, 0
42012a7e:	524203        	s8i	a5, a2, 3
42012a81:	5191b5        	l32r	a5, 0x420000c8 (0x3fc9bfc4)
42012a84:	521500        	l16ui	a5, a5, 0
42012a87:	525202        	s16i	a5, a2, 4
42012a8a:	259ef1        	call8	0x4200446c
42012a8d:	2135b6        	l32r	a2, 0x42000364 (0x3fc9bfc9)
42012a90:	220200        	l8ui	a2, a2, 0
42012a93:	16e205        	beqz	a2, 0x42012af5
42012a96:	51aeb5        	l32r	a5, 0x42000150 (0x3fc9bf81)
42012a99:	220500        	l8ui	a2, a5, 0
42012a9c:	002223        	sext	a2, a2, 7
42012a9f:	a62252        	blti	a2, 2, 0x42012af5
42012aa2:	b1afb8        	l32r	a11, 0x42000d60 (0x3c060cfc)
42012aa5:	a1a7b5        	l32r	a10, 0x42000144 (0x3fc9b35c)
42012aa8:	0c12      	movi.n	a2, 1
42012aaa:	0c2e      	movi.n	a14, 2
42012aac:	d2a01f        	movi	a13, 31
42012aaf:	c2a116        	movi	a12, 0x116
42012ab2:	224400        	s8i	a2, a4, 0
42012ab5:	259906        	call8	0x42019448
42012ab8:	6190b5        	l32r	a6, 0x420000f8 (0x3fc94768)
42012abb:	7cb2      	movi.n	a2, -5
42012abd:	520600        	l8ui	a5, a6, 0
42012ac0:	0c07      	movi.n	a7, 0
42012ac2:	202510        	and	a2, a5, a2
42012ac5:	22c2be        	addi	a2, a2, -66
42012ac8:	62a001        	movi	a6, 1
42012acb:	708720        	or	a8, a7, a7
42012ace:	208683        	moveqz	a8, a6, a2
42012ad1:	802074        	extui	a2, a8, 0, 8
42012ad4:	779208        	bne	a2, a7, 0x42012ae0
42012ad7:	52c5bc        	addi	a5, a5, -68
42012ada:	502683        	moveqz	a2, a6, a5
42012add:	771214        	beq	a2, a7, 0x42012af5
42012ae0:	220400        	l8ui	a2, a4, 0
42012ae3:	16e200        	beqz	a2, 0x42012af5
42012ae6:	e5d6f0        	call8	0x42003854
42012ae9:	9199b5        	l32r	a9, 0x42000150 (0x3fc9bf81)
42012aec:	220900        	l8ui	a2, a9, 0
42012aef:	666202        	bnei	a2, 6, 0x42012af5
42012af2:	e520f7        	call8	0x42009d00
42012af5:	211db6        	l32r	a2, 0x4200036c (0x3fc9bfd2)
42012af8:	220200        	l8ui	a2, a2, 0
42012afb:	16d206        	beqz	a2, 0x42012b6c
42012afe:	416ab5        	l32r	a4, 0x420000a8 (0x3fc9bf83)
42012b01:	5140b6        	l32r	a5, 0x42000404 (0x3fc9bfdd)
42012b04:	0c32      	movi.n	a2, 3
42012b06:	224400        	s8i	a2, a4, 0
42012b09:	0c02      	movi.n	a2, 0
42012b0b:	224500        	s8i	a2, a5, 0
42012b0e:	5109b6        	l32r	a5, 0x42000334 (0x3fc9bfde)
42012b11:	224500        	s8i	a2, a5, 0
42012b14:	2198b6        	l32r	a2, 0x42000574 (0x3fc94e8c)
42012b17:	0c15      	movi.n	a5, 1
42012b19:	5902      	s32i.n	a5, a2, 0
42012b1b:	2169b5        	l32r	a2, 0x420000c0 (0x3fc9bf7c)
42012b1e:	1c35      	movi.n	a5, 19
42012b20:	5902      	s32i.n	a5, a2, 0
42012b22:	25d2f1        	call8	0x42004844
42012b25:	217ab6        	l32r	a2, 0x42000510 (0x3fc9bfe8)
42012b28:	5802      	l32i.n	a5, a2, 0
42012b2a:	2178b6        	l32r	a2, 0x4200050c (0x3fc94778)
42012b2d:	16b504        	beqz	a5, 0x42012b7c
42012b30:	5802      	l32i.n	a5, a2, 0
42012b32:	f02511        	slli	a2, a5, 1
42012b35:	5a22      	add.n	a2, a2, a5
42012b37:	5177b6        	l32r	a5, 0x42000514 (0x3fc9bfec)
42012b3a:	d02211        	slli	a2, a2, 3
42012b3d:	502280        	add	a2, a2, a5
42012b40:	b21200        	l16ui	a11, a2, 0
42012b43:	a162b5        	l32r	a10, 0x420000cc (0x3fc9a1dc)
42012b46:	2162b5        	l32r	a2, 0x420000d0 (0x3fc9bf9c)
42012b49:	b25200        	s16i	a11, a2, 0
42012b4c:	257808        	call8	0x4201b2d0
42012b4f:	220400        	l8ui	a2, a4, 0
42012b52:	9c62      	beqz.n	a2, 0x42012b6c
42012b54:	21c8b7        	l32r	a2, 0x42000a74 (0x3fca1e52)
42012b57:	220200        	l8ui	a2, a2, 0
42012b5a:	8ce2      	beqz.n	a2, 0x42012b6c
42012b5c:	21feb5        	l32r	a2, 0x42000354 (0x3fc9bfd7)
42012b5f:	220200        	l8ui	a2, a2, 0
42012b62:	cc62      	bnez.n	a2, 0x42012b6c
42012b64:	6593f0        	call8	0x4200349c
42012b67:	cc1a      	bnez.n	a10, 0x42012b6c
42012b69:	e5a3f6        	call8	0x420095a8
42012b6c:	0c02      	movi.n	a2, 0
42012b6e:	224300        	s8i	a2, a3, 0
42012b71:	e5b0f1        	call8	0x42004680
42012b74:	a575fb        	call8	0x4200e2d0
42012b77:	4613fd        	j	0x42011fc8
42012b7a:	00          	.byte	00
42012b7b:	002802        	andb	b2, b8, b0
42012b7e:	d05211        	slli	a5, a2, 3
42012b81:	2166b6        	l32r	a2, 0x4200051c (0x3c061864)
42012b84:	46edff        	j	0x42012b3d
42012b87:	00          	.byte	00
42012b88:	31ebb5        	l32r	a3, 0x42000334 (0x3fc9bfde)
42012b8b:	420300        	l8ui	a4, a3, 0
42012b8e:	8c64      	beqz.n	a4, 0x42012b98
42012b90:	a24300        	s8i	a10, a3, 0
42012b93:	46f7ff        	j	0x42012b74
42012b96:	000031        	srai	a0, a0, 16
42012b99:	e6b532        	bgei	a5, 16, 0x42012bcf
42012b9c:	030056        	lsi	f0, a0, 0x158
42012b9f:	f3          	.byte	0xf3
42012ba0:	fc31      	bnez.n	a1, 0x42012bd7
42012ba2:	e5b532        	call8	0x42045700
42012ba5:	030056        	lsi	f0, a0, 0x158
42012ba8:	63          	.byte	0x63
42012ba9:	fc0c      	bnez.n	a12, 0x42012bdd
42012bab:	13          	.byte	0x13
42012bac:	324200        	s8i	a3, a2, 0
42012baf:	25dbfa        	call8	0x4200d960
42012bb2:	8604fd        	j	0x42011fc8
42012bb5:	000000        	ill
42012bb8:	31deb5        	l32r	a3, 0x42000330 (0x3fc9bfda)
42012bbb:	0c14      	movi.n	a4, 1
42012bbd:	220300        	l8ui	a2, a3, 0
42012bc0:	402230        	xor	a2, a2, a4
42012bc3:	224300        	s8i	a2, a3, 0
42012bc6:	3149b6        	l32r	a3, 0x420004ec (0x3fc94db2)
42012bc9:	0c92      	movi.n	a2, 9
42012bcb:	224300        	s8i	a2, a3, 0
42012bce:	3132b8        	l32r	a3, 0x42000c98 (0x3fc94db1)
42012bd1:	224300        	s8i	a2, a3, 0
42012bd4:	c6f5ff        	j	0x42012baf
42012bd7:	00          	.byte	00
42012bd8:	001c5a        	msub.s	f1, f12, f0
42012bdb:	e5220c        	call8	0x4201ee08
42012bde:	8c1a      	beqz.n	a10, 0x42012be3
42012be0:	46fcfc        	j	0x42011fd5
42012be3:	1c52      	movi.n	a2, 21
42012be5:	ad02      	mov.n	a10, a2
42012be7:	25220c        	call8	0x4201ee08
42012bea:	167aff        	beqz	a10, 0x42012be5
42012bed:	31e3b5        	l32r	a3, 0x4200037c (0x3fc9bfdb)
42012bf0:	220300        	l8ui	a2, a3, 0
42012bf3:	1b22      	addi.n	a2, a2, 1
42012bf5:	202074        	extui	a2, a2, 0, 8
42012bf8:	224300        	s8i	a2, a3, 0
42012bfb:	31d4b5        	l32r	a3, 0x4200034c (0x3fc9bfca)
42012bfe:	420300        	l8ui	a4, a3, 0
42012c01:	56e4e1        	bnez	a4, 0x42012a23
42012c04:	661226        	bnei	a2, 1, 0x42012c2e
42012c07:	6552f2        	call8	0x4200512c
42012c0a:	8cea      	beqz.n	a10, 0x42012c1c
42012c0c:	25a7f1        	call8	0x42004680
42012c0f:	256cfb        	call8	0x4200e2d0
42012c12:	a154b8        	l32r	a10, 0x42000d64 (0x3c060d03)
42012c15:	a5b7fc        	call8	0x4200f790
42012c18:	06ebfc        	j	0x42011fc8
42012c1b:	0031c6        	ee.ldf.64.xp	f3, f12, a0, a1
42012c1e:	b54203        	call12	0x42016048
42012c21:	0056a4        	extui	a5, a0, 6, 11
42012c24:	f631c2        	bgeui	a1, 3, 0x42012bea
42012c27:	b54203        	call12	0x42016050
42012c2a:	0046e4        	extui	a4, a0, 6, 15
42012c2d:	ff0c1246 	ee.vmulas.u16.accx.ld.ip.qup	q4, a15, 0x1c0, q4, q0, q1, q2
42012c31:	e7ff00        	bbsi	a15, 30, 0x42012c35
42012c34:	520400        	l8ui	a5, a4, 0
42012c37:	cc15      	bnez.n	a5, 0x42012c3c
42012c39:	c600fd        	j	0x42012040
42012c3c:	0c05      	movi.n	a5, 0
42012c3e:	c6fefc        	j	0x4201203d
42012c41:	420300        	l8ui	a4, a3, 0
42012c44:	cc14      	bnez.n	a4, 0x42012c49
42012c46:	4606fd        	j	0x42012063
42012c49:	0c04      	movi.n	a4, 0
42012c4b:	4604fd        	j	0x42012060
42012c4e:	000025        	extui	a0, a0, 16, 3
42012c51:	9c0c      	beqz.n	a12, 0x42012c65
42012c53:	a903      	s32i.n	a10, a3, 0
42012c55:	c611fd        	j	0x420120a0
42012c58:	000000        	ill
42012c5b:	254df2        	call8	0x4200512c
42012c5e:	56ba00        	bnez	a10, 0x42012c6d
42012c61:	21b3b5        	l32r	a2, 0x42000330 (0x3fc9bfda)
42012c64:	220200        	l8ui	a2, a2, 0
42012c67:	562200        	bnez	a2, 0x42012c6d
42012c6a:	061afd        	j	0x420120d6
42012c6d:	25a1f1        	call8	0x42004680
42012c70:	211db6        	l32r	a2, 0x420004e4 (0x3fc9bfd3)
42012c73:	0c04      	movi.n	a4, 0
42012c75:	424200        	s8i	a4, a2, 0
42012c78:	c615fd        	j	0x420120d3
42012c7b:	00          	.byte	00
42012c7c:	5891      	l32i.n	a5, a1, 36
42012c7e:	5a33      	add.n	a3, a3, a5
42012c80:	469cfd        	j	0x420122f5
42012c83:	000000        	ill
42012c86:	ad04      	mov.n	a10, a4
42012c88:	bd07      	mov.n	a11, a7
42012c8a:	656408        	call8	0x4201b2d0
42012c8d:	a2a7d0        	movi	a10, 0x7d0
42012c90:	e5990c        	call8	0x4201f630
42012c93:	413ab6        	l32r	a4, 0x4200057c (0x3fc9b898)
42012c96:	620400        	l8ui	a6, a4, 0
42012c99:	cc16      	bnez.n	a6, 0x42012c9e
42012c9b:	866ffc        	j	0x42011e5d
42012c9e:	65970c        	call8	0x4201f614
42012ca1:	21abb7        	l32r	a2, 0x42000b50 (0x3fc9b894)
42012ca4:	31acb7        	l32r	a3, 0x42000b54 (0x45e7b273)
42012ca7:	5802      	l32i.n	a5, a2, 0
42012ca9:	50aac0        	sub	a10, a10, a5
42012cac:	30aaa2        	muluh	a10, a10, a3
42012caf:	0c03      	movi.n	a3, 0
42012cb1:	a0ae41        	srli	a10, a10, 14
42012cb4:	671a02        	beq	a10, a6, 0x42012cba
42012cb7:	8668fc        	j	0x42011e5d
42012cba:	379502        	bne	a5, a3, 0x42012cc0
42012cbd:	0667fc        	j	0x42011e5d
42012cc0:	324400        	s8i	a3, a4, 0
42012cc3:	3902      	s32i.n	a3, a2, 0
42012cc5:	254cf5        	call8	0x42008188
42012cc8:	82a15d        	movi	a8, 0x15d
42012ccb:	272802        	blt	a8, a2, 0x42012cd1
42012cce:	c61fff        	j	0x42012951
42012cd1:	8612ff        	j	0x4201291f
42012cd4:	82a830        	movi	a8, 0xfffff830
42012cd7:	8a82      	add.n	a8, a2, a8
42012cd9:	87b902        	bgeu	a9, a8, 0x42012cdf
42012cdc:	46f9fe        	j	0x420128c5
42012cdf:	819bb5        	l32r	a8, 0x4200034c (0x3fc9bfca)
42012ce2:	820800        	l8ui	a8, a8, 0
42012ce5:	5688c2        	bnez	a8, 0x42012911
42012ce8:	ed03      	mov.n	a14, a3
42012cea:	0cbd      	movi.n	a13, 11
42012cec:	c2a06c        	movi	a12, 108
42012cef:	b110b8        	l32r	a11, 0x42000d30 (0x3c060ca1)
42012cf2:	8605ff        	j	0x4201290c
42012cf5:	32a15d        	movi	a3, 0x15d
42012cf8:	77a302        	bge	a3, a7, 0x42012cfe
42012cfb:	062fff        	j	0x420129bb
42012cfe:	c642ff        	j	0x42012a0d
42012d01:	32a15d        	movi	a3, 0x15d
42012d04:	77a302        	bge	a3, a7, 0x42012d0a
42012d07:	062cff        	j	0x420129bb
42012d0a:	a10db8        	l32r	a10, 0x42000d40 (0xfffff448)
42012d0d:	32a1f3        	movi	a3, 0x1f3
42012d10:	aa77      	add.n	a7, a7, a10
42012d12:	77b302        	bgeu	a3, a7, 0x42012d18
42012d15:	063dff        	j	0x42012a0d
42012d18:	520200        	l8ui	a5, a2, 0
42012d1b:	56e5ce        	bnez	a5, 0x42012a0d
42012d1e:	316fb7        	l32r	a3, 0x42000adc (0x3fc9bfe0)
42012d21:	0c12      	movi.n	a2, 1
42012d23:	0c1a      	movi.n	a10, 1
42012d25:	224300        	s8i	a2, a3, 0
42012d28:	65900c        	call8	0x4201f630
42012d2b:	2106b5        	l32r	a2, 0x42000144 (0x3fc9b35c)
42012d2e:	b105b8        	l32r	a11, 0x42000d44 (0x3c060cbc)
42012d31:	0c1e      	movi.n	a14, 1
42012d33:	0cbd      	movi.n	a13, 11
42012d35:	c2a06c        	movi	a12, 108
42012d38:	ad02      	mov.n	a10, a2
42012d3a:	e57006        	call8	0x42019448
42012d3d:	81eeb4        	l32r	a8, 0x420000f8 (0x3fc94768)
42012d40:	3c24      	movi.n	a4, 50
42012d42:	620800        	l8ui	a6, a8, 0
42012d45:	471602        	beq	a6, a4, 0x42012d4b
42012d48:	461a00        	j	0x42012db5
42012d4b:	a1e7b5        	l32r	a10, 0x420004e8 (0xffff)
42012d4e:	dd05      	mov.n	a13, a5
42012d50:	cd05      	mov.n	a12, a5
42012d52:	bd05      	mov.n	a11, a5
42012d54:	a53af0        	call8	0x42003100
42012d57:	418cb5        	l32r	a4, 0x42000388 (0xffffff)
42012d5a:	2c8e      	movi.n	a14, 40
42012d5c:	cd0e      	mov.n	a12, a14
42012d5e:	0c4f      	movi.n	a15, 4
42012d60:	4911      	s32i.n	a4, a1, 4
42012d62:	a901      	s32i.n	a10, a1, 0
42012d64:	d2a0a0        	movi	a13, 160
42012d67:	5c0b      	movi.n	a11, 80
42012d69:	ad02      	mov.n	a10, a2
42012d6b:	e53b05        	call8	0x42018128
42012d6e:	dd05      	mov.n	a13, a5
42012d70:	cd05      	mov.n	a12, a5
42012d72:	bd05      	mov.n	a11, a5
42012d74:	ad05      	mov.n	a10, a5
42012d76:	a538f0        	call8	0x42003100
42012d79:	0c4f      	movi.n	a15, 4
42012d7b:	4911      	s32i.n	a4, a1, 4
42012d7d:	a901      	s32i.n	a10, a1, 0
42012d7f:	2c6e      	movi.n	a14, 38
42012d81:	d2a09e        	movi	a13, 158
42012d84:	2c9c      	movi.n	a12, 41
42012d86:	5c1b      	movi.n	a11, 81
42012d88:	ad02      	mov.n	a10, a2
42012d8a:	e53905        	call8	0x42018128
42012d8d:	b1eeb7        	l32r	a11, 0x42000d48 (0x3c060cc5)
42012d90:	0c4e      	movi.n	a14, 4
42012d92:	3ced      	movi.n	a13, 62
42012d94:	c2a0a0        	movi	a12, 160
42012d97:	ad02      	mov.n	a10, a2
42012d99:	e56a06        	call8	0x42019448
42012d9c:	658cf0        	call8	0x42003664
42012d9f:	0c1a      	movi.n	a10, 1
42012da1:	25a8fe        	call8	0x42011824
42012da4:	258ef0        	call8	0x42003688
42012da7:	41d1b5        	l32r	a4, 0x420004ec (0x3fc94db2)
42012daa:	524300        	s8i	a5, a3, 0
42012dad:	1c25      	movi.n	a5, 18
42012daf:	524400        	s8i	a5, a4, 0
42012db2:	e5bafa        	call8	0x4200d960
42012db5:	91d0b4        	l32r	a9, 0x420000f8 (0x3fc94768)
42012db8:	3c34      	movi.n	a4, 51
42012dba:	520900        	l8ui	a5, a9, 0
42012dbd:	471502        	beq	a5, a4, 0x42012dc3
42012dc0:	461a00        	j	0x42012e2d
42012dc3:	0c0d      	movi.n	a13, 0
42012dc5:	a1c8b5        	l32r	a10, 0x420004e8 (0xffff)
42012dc8:	cd0d      	mov.n	a12, a13
42012dca:	bd0d      	mov.n	a11, a13
42012dcc:	2533f0        	call8	0x42003100
42012dcf:	416eb5        	l32r	a4, 0x42000388 (0xffffff)
42012dd2:	2c8e      	movi.n	a14, 40
42012dd4:	cd0e      	mov.n	a12, a14
42012dd6:	0c4f      	movi.n	a15, 4
42012dd8:	4911      	s32i.n	a4, a1, 4
42012dda:	a901      	s32i.n	a10, a1, 0
42012ddc:	d2a0a0        	movi	a13, 160
42012ddf:	5c0b      	movi.n	a11, 80
42012de1:	ad02      	mov.n	a10, a2
42012de3:	653405        	call8	0x42018128
42012de6:	0c0d      	movi.n	a13, 0
42012de8:	cd0d      	mov.n	a12, a13
42012dea:	bd0d      	mov.n	a11, a13
42012dec:	ad0d      	mov.n	a10, a13
42012dee:	2531f0        	call8	0x42003100
42012df1:	0c4f      	movi.n	a15, 4
42012df3:	4911      	s32i.n	a4, a1, 4
42012df5:	a901      	s32i.n	a10, a1, 0
42012df7:	2c6e      	movi.n	a14, 38
42012df9:	d2a09e        	movi	a13, 158
42012dfc:	2c9c      	movi.n	a12, 41
42012dfe:	5c1b      	movi.n	a11, 81
42012e00:	ad02      	mov.n	a10, a2
42012e02:	653205        	call8	0x42018128
42012e05:	b1d1b7        	l32r	a11, 0x42000d4c (0x3c060cd0)
42012e08:	0c4e      	movi.n	a14, 4
42012e0a:	3ced      	movi.n	a13, 62
42012e0c:	c2a0a0        	movi	a12, 160
42012e0f:	ad02      	mov.n	a10, a2
42012e11:	656306        	call8	0x42019448
42012e14:	a5fbf7        	call8	0x4200add0
42012e17:	0c04      	movi.n	a4, 0
42012e19:	a2a3e8        	movi	a10, 0x3e8
42012e1c:	25810c        	call8	0x4201f630
42012e1f:	424300        	s8i	a4, a3, 0
42012e22:	41b2b5        	l32r	a4, 0x420004ec (0x3fc94db2)
42012e25:	1c25      	movi.n	a5, 18
42012e27:	524400        	s8i	a5, a4, 0
42012e2a:	65b3fa        	call8	0x4200d960
42012e2d:	41b2b4        	l32r	a4, 0x420000f8 (0x3fc94768)
42012e30:	520400        	l8ui	a5, a4, 0
42012e33:	3c44      	movi.n	a4, 52
42012e35:	471502        	beq	a5, a4, 0x42012e3b
42012e38:	461a00        	j	0x42012ea5
42012e3b:	0c0d      	movi.n	a13, 0
42012e3d:	a1aab5        	l32r	a10, 0x420004e8 (0xffff)
42012e40:	cd0d      	mov.n	a12, a13
42012e42:	bd0d      	mov.n	a11, a13
42012e44:	a52bf0        	call8	0x42003100
42012e47:	4150b5        	l32r	a4, 0x42000388 (0xffffff)
42012e4a:	2c8e      	movi.n	a14, 40
42012e4c:	cd0e      	mov.n	a12, a14
42012e4e:	0c4f      	movi.n	a15, 4
42012e50:	4911      	s32i.n	a4, a1, 4
42012e52:	a901      	s32i.n	a10, a1, 0
42012e54:	d2a0a0        	movi	a13, 160
42012e57:	5c0b      	movi.n	a11, 80
42012e59:	ad02      	mov.n	a10, a2
42012e5b:	e52c05        	call8	0x42018128
42012e5e:	0c0d      	movi.n	a13, 0
42012e60:	cd0d      	mov.n	a12, a13
42012e62:	bd0d      	mov.n	a11, a13
42012e64:	ad0d      	mov.n	a10, a13
42012e66:	a529f0        	call8	0x42003100
42012e69:	0c4f      	movi.n	a15, 4
42012e6b:	4911      	s32i.n	a4, a1, 4
42012e6d:	a901      	s32i.n	a10, a1, 0
42012e6f:	2c6e      	movi.n	a14, 38
42012e71:	d2a09e        	movi	a13, 158
42012e74:	2c9c      	movi.n	a12, 41
42012e76:	5c1b      	movi.n	a11, 81
42012e78:	ad02      	mov.n	a10, a2
42012e7a:	e52a05        	call8	0x42018128
42012e7d:	b1b4b7        	l32r	a11, 0x42000d50 (0x3c060cdb)
42012e80:	0c4e      	movi.n	a14, 4
42012e82:	3ced      	movi.n	a13, 62
42012e84:	c2a0a0        	movi	a12, 160
42012e87:	ad02      	mov.n	a10, a2
42012e89:	e55b06        	call8	0x42019448
42012e8c:	e503f8        	call8	0x4200aecc
42012e8f:	0c04      	movi.n	a4, 0
42012e91:	a2a1f4        	movi	a10, 0x1f4
42012e94:	a5790c        	call8	0x4201f630
42012e97:	424300        	s8i	a4, a3, 0
42012e9a:	4194b5        	l32r	a4, 0x420004ec (0x3fc94db2)
42012e9d:	1c25      	movi.n	a5, 18
42012e9f:	524400        	s8i	a5, a4, 0
42012ea2:	e5abfa        	call8	0x4200d960
42012ea5:	6194b4        	l32r	a6, 0x420000f8 (0x3fc94768)
42012ea8:	3c54      	movi.n	a4, 53
42012eaa:	520600        	l8ui	a5, a6, 0
42012ead:	471502        	beq	a5, a4, 0x42012eb3
42012eb0:	c61b00        	j	0x42012f23
42012eb3:	a555f0        	call8	0x4200340c
42012eb6:	169a15        	beqz	a10, 0x42013013
42012eb9:	0c0d      	movi.n	a13, 0
42012ebb:	a18bb5        	l32r	a10, 0x420004e8 (0xffff)
42012ebe:	cd0d      	mov.n	a12, a13
42012ec0:	bd0d      	mov.n	a11, a13
42012ec2:	e523f0        	call8	0x42003100
42012ec5:	4130b5        	l32r	a4, 0x42000388 (0xffffff)
42012ec8:	2c8e      	movi.n	a14, 40
42012eca:	cd0e      	mov.n	a12, a14
42012ecc:	0c4f      	movi.n	a15, 4
42012ece:	4911      	s32i.n	a4, a1, 4
42012ed0:	a901      	s32i.n	a10, a1, 0
42012ed2:	d2a0a0        	movi	a13, 160
42012ed5:	5c0b      	movi.n	a11, 80
42012ed7:	ad02      	mov.n	a10, a2
42012ed9:	e52405        	call8	0x42018128
42012edc:	0c0d      	movi.n	a13, 0
42012ede:	cd0d      	mov.n	a12, a13
42012ee0:	bd0d      	mov.n	a11, a13
42012ee2:	ad0d      	mov.n	a10, a13
42012ee4:	a521f0        	call8	0x42003100
42012ee7:	0c4f      	movi.n	a15, 4
42012ee9:	4911      	s32i.n	a4, a1, 4
42012eeb:	a901      	s32i.n	a10, a1, 0
42012eed:	2c6e      	movi.n	a14, 38
42012eef:	d2a09e        	movi	a13, 158
42012ef2:	2c9c      	movi.n	a12, 41
42012ef4:	5c1b      	movi.n	a11, 81
42012ef6:	ad02      	mov.n	a10, a2
42012ef8:	e52205        	call8	0x42018128
42012efb:	b196b7        	l32r	a11, 0x42000d54 (0x3c060ce6)
42012efe:	0c4e      	movi.n	a14, 4
42012f00:	3ced      	movi.n	a13, 62
42012f02:	c2a0a0        	movi	a12, 160
42012f05:	ad02      	mov.n	a10, a2
42012f07:	255406        	call8	0x42019448
42012f0a:	e559f8        	call8	0x4200b4a8
42012f0d:	0c04      	movi.n	a4, 0
42012f0f:	a2a1f4        	movi	a10, 0x1f4
42012f12:	e5710c        	call8	0x4201f630
42012f15:	424300        	s8i	a4, a3, 0
42012f18:	4175b5        	l32r	a4, 0x420004ec (0x3fc94db2)
42012f1b:	1c25      	movi.n	a5, 18
42012f1d:	524400        	s8i	a5, a4, 0
42012f20:	e5a3fa        	call8	0x4200d960
42012f23:	8175b4        	l32r	a8, 0x420000f8 (0x3fc94768)
42012f26:	3c64      	movi.n	a4, 54
42012f28:	520800        	l8ui	a5, a8, 0
42012f2b:	471502        	beq	a5, a4, 0x42012f31
42012f2e:	461a00        	j	0x42012f9b
42012f31:	0c0d      	movi.n	a13, 0
42012f33:	a16db5        	l32r	a10, 0x420004e8 (0xffff)
42012f36:	cd0d      	mov.n	a12, a13
42012f38:	bd0d      	mov.n	a11, a13
42012f3a:	651cf0        	call8	0x42003100
42012f3d:	4112b5        	l32r	a4, 0x42000388 (0xffffff)
42012f40:	2c8e      	movi.n	a14, 40
42012f42:	cd0e      	mov.n	a12, a14
42012f44:	0c4f      	movi.n	a15, 4
42012f46:	4911      	s32i.n	a4, a1, 4
42012f48:	a901      	s32i.n	a10, a1, 0
42012f4a:	d2a0a0        	movi	a13, 160
42012f4d:	5c0b      	movi.n	a11, 80
42012f4f:	ad02      	mov.n	a10, a2
42012f51:	651d05        	call8	0x42018128
42012f54:	0c0d      	movi.n	a13, 0
42012f56:	cd0d      	mov.n	a12, a13
42012f58:	bd0d      	mov.n	a11, a13
42012f5a:	ad0d      	mov.n	a10, a13
42012f5c:	251af0        	call8	0x42003100
42012f5f:	0c4f      	movi.n	a15, 4
42012f61:	4911      	s32i.n	a4, a1, 4
42012f63:	a901      	s32i.n	a10, a1, 0
42012f65:	2c6e      	movi.n	a14, 38
42012f67:	d2a09e        	movi	a13, 158
42012f6a:	2c9c      	movi.n	a12, 41
42012f6c:	5c1b      	movi.n	a11, 81
42012f6e:	ad02      	mov.n	a10, a2
42012f70:	651b05        	call8	0x42018128
42012f73:	b179b7        	l32r	a11, 0x42000d58 (0x3c060cf1)
42012f76:	0c4e      	movi.n	a14, 4
42012f78:	3ced      	movi.n	a13, 62
42012f7a:	c2a0a0        	movi	a12, 160
42012f7d:	ad02      	mov.n	a10, a2
42012f7f:	a54c06        	call8	0x42019448
42012f82:	2579f8        	call8	0x4200b714
42012f85:	0c04      	movi.n	a4, 0
42012f87:	a2a1f4        	movi	a10, 0x1f4
42012f8a:	656a0c        	call8	0x4201f630
42012f8d:	424300        	s8i	a4, a3, 0
42012f90:	4157b5        	l32r	a4, 0x420004ec (0x3fc94db2)
42012f93:	1c25      	movi.n	a5, 18
42012f95:	524400        	s8i	a5, a4, 0
42012f98:	659cfa        	call8	0x4200d960
42012f9b:	9157b4        	l32r	a9, 0x420000f8 (0x3fc94768)
42012f9e:	4c24      	movi.n	a4, 66
42012fa0:	520900        	l8ui	a5, a9, 0
42012fa3:	471502        	beq	a5, a4, 0x42012fa9
42012fa6:	461a00        	j	0x42013013
42012fa9:	0c0d      	movi.n	a13, 0
42012fab:	a14fb5        	l32r	a10, 0x420004e8 (0xffff)
42012fae:	cd0d      	mov.n	a12, a13
42012fb0:	bd0d      	mov.n	a11, a13
42012fb2:	e514f0        	call8	0x42003100
42012fb5:	41f4b4        	l32r	a4, 0x42000388 (0xffffff)
42012fb8:	2c8e      	movi.n	a14, 40
42012fba:	cd0e      	mov.n	a12, a14
42012fbc:	0c4f      	movi.n	a15, 4
42012fbe:	4911      	s32i.n	a4, a1, 4
42012fc0:	a901      	s32i.n	a10, a1, 0
42012fc2:	d2a0a0        	movi	a13, 160
42012fc5:	5c0b      	movi.n	a11, 80
42012fc7:	ad02      	mov.n	a10, a2
42012fc9:	e51505        	call8	0x42018128
42012fcc:	0c0d      	movi.n	a13, 0
42012fce:	cd0d      	mov.n	a12, a13
42012fd0:	bd0d      	mov.n	a11, a13
42012fd2:	ad0d      	mov.n	a10, a13
42012fd4:	a512f0        	call8	0x42003100
42012fd7:	0c4f      	movi.n	a15, 4
42012fd9:	4911      	s32i.n	a4, a1, 4
42012fdb:	a901      	s32i.n	a10, a1, 0
42012fdd:	2c6e      	movi.n	a14, 38
42012fdf:	d2a09e        	movi	a13, 158
42012fe2:	2c9c      	movi.n	a12, 41
42012fe4:	5c1b      	movi.n	a11, 81
42012fe6:	ad02      	mov.n	a10, a2
42012fe8:	e51305        	call8	0x42018128
42012feb:	b15cb7        	l32r	a11, 0x42000d5c (0x3c0608c5)
42012fee:	0c4e      	movi.n	a14, 4
42012ff0:	3ced      	movi.n	a13, 62
42012ff2:	c2a0a0        	movi	a12, 160
42012ff5:	ad02      	mov.n	a10, a2
42012ff7:	254506        	call8	0x42019448
42012ffa:	25f0f9        	call8	0x4200cefc
42012ffd:	0c04      	movi.n	a4, 0
42012fff:	a2a1f4        	movi	a10, 0x1f4
42013002:	e5620c        	call8	0x4201f630
42013005:	424300        	s8i	a4, a3, 0
42013008:	4139b5        	l32r	a4, 0x420004ec (0x3fc94db2)
4201300b:	1c25      	movi.n	a5, 18
4201300d:	524400        	s8i	a5, a4, 0
42013010:	e594fa        	call8	0x4200d960
42013013:	4139b4        	l32r	a4, 0x420000f8 (0x3fc94768)
42013016:	520400        	l8ui	a5, a4, 0
42013019:	3cc4      	movi.n	a4, 60
4201301b:	471502        	beq	a5, a4, 0x42013021
4201301e:	c61f00        	j	0x420130a1
42013021:	413eb7        	l32r	a4, 0x42000d1c (0x3fca1e56)
42013024:	0c0d      	movi.n	a13, 0
42013026:	520400        	l8ui	a5, a4, 0
42013029:	a12fb5        	l32r	a10, 0x420004e8 (0xffff)
4201302c:	0c16      	movi.n	a6, 1
4201302e:	cd0d      	mov.n	a12, a13
42013030:	bd0d      	mov.n	a11, a13
42013032:	605530        	xor	a5, a5, a6
42013035:	524400        	s8i	a5, a4, 0
42013038:	650cf0        	call8	0x42003100
4201303b:	51d3b4        	l32r	a5, 0x42000388 (0xffffff)
4201303e:	2c8e      	movi.n	a14, 40
42013040:	cd0e      	mov.n	a12, a14
42013042:	0c4f      	movi.n	a15, 4
42013044:	a901      	s32i.n	a10, a1, 0
42013046:	d2a0a0        	movi	a13, 160
42013049:	5c0b      	movi.n	a11, 80
4201304b:	ad02      	mov.n	a10, a2
4201304d:	5911      	s32i.n	a5, a1, 4
4201304f:	a50d05        	call8	0x42018128
42013052:	0c0d      	movi.n	a13, 0
42013054:	cd0d      	mov.n	a12, a13
42013056:	bd0d      	mov.n	a11, a13
42013058:	ad0d      	mov.n	a10, a13
4201305a:	650af0        	call8	0x42003100
4201305d:	a901      	s32i.n	a10, a1, 0
4201305f:	5c1b      	movi.n	a11, 81
42013061:	5911      	s32i.n	a5, a1, 4
42013063:	0c4f      	movi.n	a15, 4
42013065:	2c6e      	movi.n	a14, 38
42013067:	d2a09e        	movi	a13, 158
4201306a:	2c9c      	movi.n	a12, 41
4201306c:	ad02      	mov.n	a10, a2
4201306e:	a50b05        	call8	0x42018128
42013071:	420400        	l8ui	a4, a4, 0
42013074:	b121b7        	l32r	a11, 0x42000cf8 (0x3c060c3e)
42013077:	562400        	bnez	a4, 0x4201307d
4201307a:	b120b7        	l32r	a11, 0x42000cfc (0x3c060c45)
4201307d:	e2a004        	movi	a14, 4
42013080:	3ced      	movi.n	a13, 62
42013082:	c2a0a0        	movi	a12, 160
42013085:	20a220        	or	a10, a2, a2
42013088:	e53b06        	call8	0x42019448
4201308b:	0c04      	movi.n	a4, 0
4201308d:	a2a1f4        	movi	a10, 0x1f4
42013090:	e5590c        	call8	0x4201f630
42013093:	424300        	s8i	a4, a3, 0
42013096:	4115b5        	l32r	a4, 0x420004ec (0x3fc94db2)
42013099:	1c25      	movi.n	a5, 18
4201309b:	524400        	s8i	a5, a4, 0
4201309e:	258cfa        	call8	0x4200d960
420130a1:	6115b4        	l32r	a6, 0x420000f8 (0x3fc94768)
420130a4:	2cc4      	movi.n	a4, 44
420130a6:	520600        	l8ui	a5, a6, 0
420130a9:	471502        	beq	a5, a4, 0x420130af
420130ac:	462000        	j	0x42013131
420130af:	65c10b        	call8	0x4201ecc4
420130b2:	42a0f0        	movi	a4, 240
420130b5:	471a02        	beq	a10, a4, 0x420130bb
420130b8:	064dfe        	j	0x420129f0
420130bb:	e5c6f7        	call8	0x4200ad28
420130be:	0c0d      	movi.n	a13, 0
420130c0:	a10ab5        	l32r	a10, 0x420004e8 (0xffff)
420130c3:	cd0d      	mov.n	a12, a13
420130c5:	bd0d      	mov.n	a11, a13
420130c7:	a503f0        	call8	0x42003100
420130ca:	41afb4        	l32r	a4, 0x42000388 (0xffffff)
420130cd:	2c8e      	movi.n	a14, 40
420130cf:	cd0e      	mov.n	a12, a14
420130d1:	0c4f      	movi.n	a15, 4
420130d3:	4911      	s32i.n	a4, a1, 4
420130d5:	a901      	s32i.n	a10, a1, 0
420130d7:	d2a0a0        	movi	a13, 160
420130da:	5c0b      	movi.n	a11, 80
420130dc:	ad02      	mov.n	a10, a2
420130de:	a50405        	call8	0x42018128
420130e1:	0c0d      	movi.n	a13, 0
420130e3:	cd0d      	mov.n	a12, a13
420130e5:	bd0d      	mov.n	a11, a13
420130e7:	ad0d      	mov.n	a10, a13
420130e9:	6501f0        	call8	0x42003100
420130ec:	5c1b      	movi.n	a11, 81
420130ee:	4911      	s32i.n	a4, a1, 4
420130f0:	a901      	s32i.n	a10, a1, 0
420130f2:	0c4f      	movi.n	a15, 4
420130f4:	2c6e      	movi.n	a14, 38
420130f6:	d2a09e        	movi	a13, 158
420130f9:	2c9c      	movi.n	a12, 41
420130fb:	ad02      	mov.n	a10, a2
420130fd:	a50205        	call8	0x42018128
42013100:	25bc0b        	call8	0x4201ecc4
42013103:	42a0f0        	movi	a4, 240
42013106:	b1feb6        	l32r	a11, 0x42000d00 (0x3c060c4e)
42013109:	471a02        	beq	a10, a4, 0x4201310f
4201310c:	b1feb6        	l32r	a11, 0x42000d04 (0x3c060c55)
4201310f:	0c4e      	movi.n	a14, 4
42013111:	3ced      	movi.n	a13, 62
42013113:	c2a0a0        	movi	a12, 160
42013116:	ad02      	mov.n	a10, a2
42013118:	e53206        	call8	0x42019448
4201311b:	0c04      	movi.n	a4, 0
4201311d:	a2a1f4        	movi	a10, 0x1f4
42013120:	e5500c        	call8	0x4201f630
42013123:	424300        	s8i	a4, a3, 0
42013126:	41f1b4        	l32r	a4, 0x420004ec (0x3fc94db2)
42013129:	1c25      	movi.n	a5, 18
4201312b:	524400        	s8i	a5, a4, 0
4201312e:	2583fa        	call8	0x4200d960
42013131:	81f1b3        	l32r	a8, 0x420000f8 (0x3fc94768)
42013134:	3cd4      	movi.n	a4, 61
42013136:	520800        	l8ui	a5, a8, 0
42013139:	471502        	beq	a5, a4, 0x4201313f
4201313c:	462000        	j	0x420131c1
4201313f:	41cdb3        	l32r	a4, 0x42000074 (0x3fca1e57)
42013142:	0c0d      	movi.n	a13, 0
42013144:	520400        	l8ui	a5, a4, 0
42013147:	a1e8b4        	l32r	a10, 0x420004e8 (0xffff)
4201314a:	0c16      	movi.n	a6, 1
4201314c:	cd0d      	mov.n	a12, a13
4201314e:	bd0d      	mov.n	a11, a13
42013150:	605530        	xor	a5, a5, a6
42013153:	524400        	s8i	a5, a4, 0
42013156:	a5faef        	call8	0x42003100
42013159:	518bb4        	l32r	a5, 0x42000388 (0xffffff)
4201315c:	2c8e      	movi.n	a14, 40
4201315e:	cd0e      	mov.n	a12, a14
42013160:	0c4f      	movi.n	a15, 4
42013162:	a901      	s32i.n	a10, a1, 0
42013164:	d2a0a0        	movi	a13, 160
42013167:	5c0b      	movi.n	a11, 80
42013169:	ad02      	mov.n	a10, a2
4201316b:	5911      	s32i.n	a5, a1, 4
4201316d:	a5fb04        	call8	0x42018128
42013170:	0c0d      	movi.n	a13, 0
42013172:	cd0d      	mov.n	a12, a13
42013174:	d0bd20        	or	a11, a13, a13
42013177:	d0ad20        	or	a10, a13, a13
4201317a:	65f8ef        	call8	0x42003100
4201317d:	a901      	s32i.n	a10, a1, 0
4201317f:	5c1b      	movi.n	a11, 81
42013181:	5911      	s32i.n	a5, a1, 4
42013183:	0c4f      	movi.n	a15, 4
42013185:	2c6e      	movi.n	a14, 38
42013187:	d2a09e        	movi	a13, 158
4201318a:	2c9c      	movi.n	a12, 41
4201318c:	ad02      	mov.n	a10, a2
4201318e:	a5f904        	call8	0x42018128
42013191:	420400        	l8ui	a4, a4, 0
42013194:	b1ddb6        	l32r	a11, 0x42000d08 (0x3c060c5c)
42013197:	562400        	bnez	a4, 0x4201319d
4201319a:	b1d8b6        	l32r	a11, 0x42000cfc (0x3c060c45)
4201319d:	e2a004        	movi	a14, 4
420131a0:	3ced      	movi.n	a13, 62
420131a2:	c2a0a0        	movi	a12, 160
420131a5:	20a220        	or	a10, a2, a2
420131a8:	e52906        	call8	0x42019448
420131ab:	0c04      	movi.n	a4, 0
420131ad:	a2a1f4        	movi	a10, 0x1f4
420131b0:	e5470c        	call8	0x4201f630
420131b3:	424300        	s8i	a4, a3, 0
420131b6:	41cdb4        	l32r	a4, 0x420004ec (0x3fc94db2)
420131b9:	1c25      	movi.n	a5, 18
420131bb:	524400        	s8i	a5, a4, 0
420131be:	257afa        	call8	0x4200d960
420131c1:	91cdb3        	l32r	a9, 0x420000f8 (0x3fc94768)
420131c4:	3ce4      	movi.n	a4, 62
420131c6:	520900        	l8ui	a5, a9, 0
420131c9:	471502        	beq	a5, a4, 0x420131cf
420131cc:	462000        	j	0x42013251
420131cf:	41a0b3        	l32r	a4, 0x42000050 (0x3fca1e58)
420131d2:	0c0d      	movi.n	a13, 0
420131d4:	520400        	l8ui	a5, a4, 0
420131d7:	a1c4b4        	l32r	a10, 0x420004e8 (0xffff)
420131da:	0c16      	movi.n	a6, 1
420131dc:	cd0d      	mov.n	a12, a13
420131de:	bd0d      	mov.n	a11, a13
420131e0:	605530        	xor	a5, a5, a6
420131e3:	524400        	s8i	a5, a4, 0
420131e6:	a5f1ef        	call8	0x42003100
420131e9:	5167b4        	l32r	a5, 0x42000388 (0xffffff)
420131ec:	2c8e      	movi.n	a14, 40
420131ee:	cd0e      	mov.n	a12, a14
420131f0:	0c4f      	movi.n	a15, 4
420131f2:	a901      	s32i.n	a10, a1, 0
420131f4:	d2a0a0        	movi	a13, 160
420131f7:	5c0b      	movi.n	a11, 80
420131f9:	ad02      	mov.n	a10, a2
420131fb:	5911      	s32i.n	a5, a1, 4
420131fd:	a5f204        	call8	0x42018128
42013200:	0c0d      	movi.n	a13, 0
42013202:	cd0d      	mov.n	a12, a13
42013204:	bd0d      	mov.n	a11, a13
42013206:	d0ad20        	or	a10, a13, a13
42013209:	65efef        	call8	0x42003100
4201320c:	a901      	s32i.n	a10, a1, 0
4201320e:	5c1b      	movi.n	a11, 81
42013210:	5911      	s32i.n	a5, a1, 4
42013212:	0c4f      	movi.n	a15, 4
42013214:	2c6e      	movi.n	a14, 38
42013216:	d2a09e        	movi	a13, 158
42013219:	2c9c      	movi.n	a12, 41
4201321b:	20a220        	or	a10, a2, a2
4201321e:	a5f004        	call8	0x42018128
42013221:	420400        	l8ui	a4, a4, 0
42013224:	b1bab6        	l32r	a11, 0x42000d0c (0x3c060c66)
42013227:	562400        	bnez	a4, 0x4201322d
4201322a:	b1b9b6        	l32r	a11, 0x42000d10 (0x3c060c72)
4201322d:	e2a004        	movi	a14, 4
42013230:	3ced      	movi.n	a13, 62
42013232:	c2a0a0        	movi	a12, 160
42013235:	20a220        	or	a10, a2, a2
42013238:	e52006        	call8	0x42019448
4201323b:	0c04      	movi.n	a4, 0
4201323d:	a2a1f4        	movi	a10, 0x1f4
42013240:	e53e0c        	call8	0x4201f630
42013243:	424300        	s8i	a4, a3, 0
42013246:	41a9b4        	l32r	a4, 0x420004ec (0x3fc94db2)
42013249:	1c25      	movi.n	a5, 18
4201324b:	524400        	s8i	a5, a4, 0
4201324e:	2571fa        	call8	0x4200d960
42013251:	41a9b3        	l32r	a4, 0x420000f8 (0x3fc94768)
42013254:	520400        	l8ui	a5, a4, 0
42013257:	3cf4      	movi.n	a4, 63
42013259:	471502        	beq	a5, a4, 0x4201325f
4201325c:	46defd        	j	0x420129d9
4201325f:	41e3b5        	l32r	a4, 0x420009ec (0x3fc94eb1)
42013262:	0c0d      	movi.n	a13, 0
42013264:	520400        	l8ui	a5, a4, 0
42013267:	a1a0b4        	l32r	a10, 0x420004e8 (0xffff)
4201326a:	0c16      	movi.n	a6, 1
4201326c:	cd0d      	mov.n	a12, a13
4201326e:	bd0d      	mov.n	a11, a13
42013270:	605530        	xor	a5, a5, a6
42013273:	524400        	s8i	a5, a4, 0
42013276:	a5e8ef        	call8	0x42003100
42013279:	5143b4        	l32r	a5, 0x42000388 (0xffffff)
4201327c:	2c8e      	movi.n	a14, 40
4201327e:	cd0e      	mov.n	a12, a14
42013280:	0c4f      	movi.n	a15, 4
42013282:	a901      	s32i.n	a10, a1, 0
42013284:	d2a0a0        	movi	a13, 160
42013287:	5c0b      	movi.n	a11, 80
42013289:	ad02      	mov.n	a10, a2
4201328b:	5911      	s32i.n	a5, a1, 4
4201328d:	a5e904        	call8	0x42018128
42013290:	0c0d      	movi.n	a13, 0
42013292:	cd0d      	mov.n	a12, a13
42013294:	bd0d      	mov.n	a11, a13
42013296:	d0ad20        	or	a10, a13, a13
42013299:	65e6ef        	call8	0x42003100
4201329c:	a901      	s32i.n	a10, a1, 0
4201329e:	5c1b      	movi.n	a11, 81
420132a0:	5911      	s32i.n	a5, a1, 4
420132a2:	0c4f      	movi.n	a15, 4
420132a4:	2c6e      	movi.n	a14, 38
420132a6:	d2a09e        	movi	a13, 158
420132a9:	2c9c      	movi.n	a12, 41
420132ab:	20a220        	or	a10, a2, a2
420132ae:	a5e704        	call8	0x42018128
420132b1:	420400        	l8ui	a4, a4, 0
420132b4:	b198b6        	l32r	a11, 0x42000d14 (0x3c060c7a)
420132b7:	562400        	bnez	a4, 0x420132bd
420132ba:	b197b6        	l32r	a11, 0x42000d18 (0x3c060c84)
420132bd:	e2a004        	movi	a14, 4
420132c0:	d2a03e        	movi	a13, 62
420132c3:	c2a0a0        	movi	a12, 160
420132c6:	20a220        	or	a10, a2, a2
420132c9:	e51706        	call8	0x42019448
420132cc:	a2a1f4        	movi	a10, 0x1f4
420132cf:	0c02      	movi.n	a2, 0
420132d1:	e5350c        	call8	0x4201f630
420132d4:	224300        	s8i	a2, a3, 0
420132d7:	c66afd        	j	0x42012886
420132da:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
420132dd:	410021        	l32r	a4, 0x41fdb6e0
420132e0:	a9b6      	s32i.n	a10, a6, 44
420132e2:	22c2e0        	addi	a2, a2, -32
420132e5:	a2c210        	addi	a10, a2, 16
420132e8:	101120        	or	a1, a1, a1
420132eb:	a5ad0a        	call8	0x4201ddc4
420132ee:	3161b5        	l32r	a3, 0x42000874 (0x3fc98b04)
420132f1:	3792ed        	bne	a2, a3, 0x420132e2
420132f4:	a157b5        	l32r	a10, 0x42000850 (0x3fc98c84)
420132f7:	101120        	or	a1, a1, a1
420132fa:	a5ac0a        	call8	0x4201ddc4
420132fd:	21a2b6        	l32r	a2, 0x42000d88 (0x3fc98e94)
42013300:	22c2f0        	addi	a2, a2, -16
42013303:	ad02      	mov.n	a10, a2
42013305:	e5ab0a        	call8	0x4201ddc4
42013308:	313ab5        	l32r	a3, 0x420007f0 (0x3fc98c94)
4201330b:	3792f1        	bne	a2, a3, 0x42013300
4201330e:	219fb6        	l32r	a2, 0x42000d8c (0x3fc99094)
42013311:	22c2f0        	addi	a2, a2, -16
42013314:	ad02      	mov.n	a10, a2
42013316:	101120        	or	a1, a1, a1
42013319:	a5aa0a        	call8	0x4201ddc4
4201331c:	3134b5        	l32r	a3, 0x420007ec (0x3fc98e94)
4201331f:	3792ee        	bne	a2, a3, 0x42013311
42013322:	219bb6        	l32r	a2, 0x42000d90 (0x3fc99294)
42013325:	22c2f0        	addi	a2, a2, -16
42013328:	ad02      	mov.n	a10, a2
4201332a:	a5a90a        	call8	0x4201ddc4
4201332d:	312db5        	l32r	a3, 0x420007e4 (0x3fc99094)
42013330:	3792f1        	bne	a2, a3, 0x42013325
42013333:	a1e4b5        	l32r	a10, 0x42000ac4 (0x3fc9a2d0)
42013336:	253407        	call8	0x4201a678
42013339:	a1e1b5        	l32r	a10, 0x42000ac0 (0x3fc9a854)
4201333c:	a53307        	call8	0x4201a678
4201333f:	a114b4        	l32r	a10, 0x42000390 (0x3fc9add8)
42013342:	653307        	call8	0x4201a678
42013345:	8193b6        	l32r	a8, 0x42000d94 (0x3c080598)
42013348:	217fb3        	l32r	a2, 0x42000144 (0x3fc9b35c)
4201334b:	a193b6        	l32r	a10, 0x42000d98 (0x3fc9b850)
4201334e:	8902      	s32i.n	a8, a2, 0
42013350:	e5a6f7        	call8	0x4200adc0
42013353:	a155b5        	l32r	a10, 0x420008a8 (0x3fc9b878)
42013356:	a5bf08        	call8	0x4201bf50
42013359:	a102b5        	l32r	a10, 0x42000764 (0x3fca1dac)
4201335c:	25a6f7        	call8	0x4200adc0
4201335f:	a1ffb4        	l32r	a10, 0x4200075c (0x3fca1dd4)
42013362:	25a60a        	call8	0x4201ddc4
42013365:	a11cb5        	l32r	a10, 0x420007d8 (0x3fca1e00)
42013368:	a5a50a        	call8	0x4201ddc4
4201336b:	a11ab5        	l32r	a10, 0x420007d4 (0x3fca1e10)
4201336e:	65a50a        	call8	0x4201ddc4
42013371:	a1dbb4        	l32r	a10, 0x420006e0 (0x3fca1e20)
42013374:	e5a40a        	call8	0x4201ddc4
42013377:	a1c4b4        	l32r	a10, 0x42000688 (0x3fca1e30)
4201337a:	a5a40a        	call8	0x4201ddc4
4201337d:	a11ab5        	l32r	a10, 0x420007e8 (0x3fca1e40)
42013380:	25a40a        	call8	0x4201ddc4
42013383:	a1c7b5        	l32r	a10, 0x42000aa0 (0x3fca1e61)
42013386:	25930a        	call8	0x4201dcb8
42013389:	1df0      	retw.n
4201338b:	003641        	srli	a3, a0, 6
4201338e:	0030a0        	addx4	a3, a0, a0
42013391:	74          	.byte	0x74
42013392:	a24201        	s8i	a10, a2, 1
42013395:	b2a001        	movi	a11, 1
42013398:	424202        	s8i	a4, a2, 2
4201339b:	259c0b        	call8	0x4201ed5c
4201339e:	a20202        	l8ui	a10, a2, 2
420133a1:	b2a001        	movi	a11, 1
420133a4:	659b0b        	call8	0x4201ed5c
420133a7:	a20201        	l8ui	a10, a2, 1
420133aa:	b2a001        	movi	a11, 1
420133ad:	25a30b        	call8	0x4201ede0
420133b0:	a20202        	l8ui	a10, a2, 2
420133b3:	0c1b      	movi.n	a11, 1
420133b5:	a5a20b        	call8	0x4201ede0
420133b8:	0c08      	movi.n	a8, 0
420133ba:	824200        	s8i	a8, a2, 0
420133bd:	1df0      	retw.n
420133bf:	003641        	srli	a3, a0, 6
420133c2:	00a202        	andb	b10, b2, b0
420133c5:	0225a4        	l32i	a0, a5, 0x290
420133c8:	0ba0      	addi.n	a10, a0, -1
420133ca:	3a20      	add.n	a2, a0, a3
420133cc:	a20201        	l8ui	a10, a2, 1
420133cf:	a5a30b        	call8	0x4201ee08
420133d2:	920200        	l8ui	a9, a2, 0
420133d5:	f08311        	slli	a8, a3, 1
420133d8:	a0a820        	or	a10, a8, a10
420133db:	909034        	extui	a9, a9, 0, 4
420133de:	816fb6        	l32r	a8, 0x42000d9c (0x3c0803f8)
420133e1:	e09911        	slli	a9, a9, 2
420133e4:	908880        	add	a8, a8, a9
420133e7:	a0a074        	extui	a10, a10, 0, 8
420133ea:	a0a880        	add	a10, a8, a10
420133ed:	320a00        	l8ui	a3, a10, 0
420133f0:	324200        	s8i	a3, a2, 0
420133f3:	3c02      	movi.n	a2, 48
420133f5:	202310        	and	a2, a3, a2
420133f8:	1df0      	retw.n
420133fa:	000036        	ee.ldf.64.xp	f0, f3, a0, a0
420133fd:	410065        	l32r	a4, 0x41fec800
42013400:	5a09      	add.n	a0, a9, a5
42013402:	b167b6        	l32r	a11, 0x42000da0 (0x6bca1af3)
42013405:	a02f31        	srai	a2, a10, 31
42013408:	b0bab2        	mulsh	a11, a10, a11
4201340b:	b0b321        	srai	a11, a11, 3
4201340e:	20bbc0        	sub	a11, a11, a2
42013411:	d08b11        	slli	a8, a11, 3
42013414:	ba88      	add.n	a8, a8, a11
42013416:	f08811        	slli	a8, a8, 1
42013419:	bab8      	add.n	a11, a8, a11
4201341b:	8168b4        	l32r	a8, 0x420005bc (0x51eb851f)
4201341e:	b0bac0        	sub	a11, a10, a11
42013421:	80dab2        	mulsh	a13, a10, a8
42013424:	d09521        	srai	a9, a13, 5
42013427:	20e9c0        	sub	a14, a9, a2
4201342a:	d0ce11        	slli	a12, a14, 3
4201342d:	dbcc      	addi.n	a12, a12, 13
4201342f:	808cb2        	mulsh	a8, a12, a8
42013432:	c0cf31        	srai	a12, a12, 31
42013435:	808321        	srai	a8, a8, 3
42013438:	c088c0        	sub	a8, a8, a12
4201343b:	d0d721        	srai	a13, a13, 7
4201343e:	fb9e      	addi.n	a9, a14, 15
42013440:	20ddc0        	sub	a13, a13, a2
42013443:	8099c0        	sub	a9, a9, a8
42013446:	818db4        	l32r	a8, 0x4200067c (0x88888889)
42013449:	d099c0        	sub	a9, a9, a13
4201344c:	80c9b2        	mulsh	a12, a9, a8
4201344f:	90ff31        	srai	a15, a9, 31
42013452:	cac9      	add.n	a12, a9, a12
42013454:	c0c421        	srai	a12, a12, 4
42013457:	f0ccc0        	sub	a12, a12, a15
4201345a:	c0fc11        	slli	a15, a12, 4
4201345d:	c0cfc0        	sub	a12, a15, a12
42013460:	d0fb11        	slli	a15, a11, 3
42013463:	baff      	add.n	a15, a15, a11
42013465:	f0cc11        	slli	a12, a12, 1
42013468:	f0ff11        	slli	a15, a15, 1
4201346b:	c099c0        	sub	a9, a9, a12
4201346e:	baff      	add.n	a15, a15, a11
42013470:	fa99      	add.n	a9, a9, a15
42013472:	8089b2        	mulsh	a8, a9, a8
42013475:	90cf31        	srai	a12, a9, 31
42013478:	8a89      	add.n	a8, a9, a8
4201347a:	808421        	srai	a8, a8, 4
4201347d:	c088c0        	sub	a8, a8, a12
42013480:	c0c811        	slli	a12, a8, 4
42013483:	808cc0        	sub	a8, a12, a8
42013486:	c12bb4        	l32r	a12, 0x42000534 (0x92492493)
42013489:	f08811        	slli	a8, a8, 1
4201348c:	c0cab2        	mulsh	a12, a10, a12
4201348f:	8089c0        	sub	a8, a9, a8
42013492:	caca      	add.n	a12, a10, a12
42013494:	c0c221        	srai	a12, a12, 2
42013497:	202cc0        	sub	a2, a12, a2
4201349a:	d0c211        	slli	a12, a2, 3
4201349d:	20ccc0        	sub	a12, a12, a2
420134a0:	2141b6        	l32r	a2, 0x42000da4 (0x80000003)
420134a3:	c0cac0        	sub	a12, a10, a12
420134a6:	20aa10        	and	a10, a10, a2
420134a9:	f0cc11        	slli	a12, a12, 1
420134ac:	d68a00        	bgez	a10, 0x420134b8
420134af:	0baa      	addi.n	a10, a10, -1
420134b1:	7cc2      	movi.n	a2, -4
420134b3:	20aa20        	or	a10, a10, a2
420134b6:	1baa      	addi.n	a10, a10, 1
420134b8:	aaac      	add.n	a10, a12, a10
420134ba:	f02811        	slli	a2, a8, 1
420134bd:	c11db4        	l32r	a12, 0x42000534 (0x92492493)
420134c0:	4b9e      	addi.n	a9, a14, 4
420134c2:	d099c0        	sub	a9, a9, a13
420134c5:	8a22      	add.n	a2, a2, a8
420134c7:	2a2a      	add.n	a2, a10, a2
420134c9:	c0a9b2        	mulsh	a10, a9, a12
420134cc:	90df31        	srai	a13, a9, 31
420134cf:	aaa9      	add.n	a10, a9, a10
420134d1:	a0a221        	srai	a10, a10, 2
420134d4:	d0aac0        	sub	a10, a10, a13
420134d7:	d0da11        	slli	a13, a10, 3
420134da:	a0adc0        	sub	a10, a13, a10
420134dd:	a099c0        	sub	a9, a9, a10
420134e0:	f02211        	slli	a2, a2, 1
420134e3:	9a22      	add.n	a2, a2, a9
420134e5:	c092b2        	mulsh	a9, a2, a12
420134e8:	20af31        	srai	a10, a2, 31
420134eb:	9a92      	add.n	a9, a2, a9
420134ed:	909221        	srai	a9, a9, 2
420134f0:	a099c0        	sub	a9, a9, a10
420134f3:	d0a911        	slli	a10, a9, 3
420134f6:	909ac0        	sub	a9, a10, a9
420134f9:	9022c0        	sub	a2, a2, a9
420134fc:	92c816        	addi	a9, a8, 22
420134ff:	9a22      	add.n	a2, a2, a9
42013501:	3c99      	movi.n	a9, 57
42013503:	971215        	beq	a2, a9, 0x4201351c
42013506:	92c2c8        	addi	a9, a2, -56
42013509:	ccc9      	bnez.n	a9, 0x42013519
4201350b:	82c8e4        	addi	a8, a8, -28
4201350e:	cc78      	bnez.n	a8, 0x42013519
42013510:	0ca8      	movi.n	a8, 10
42013512:	3c82      	movi.n	a2, 56
42013514:	b7a801        	bge	a8, a11, 0x42013519
42013517:	3c12      	movi.n	a2, 49
42013519:	1df0      	retw.n
4201351b:	003c22        	orb	b3, b12, b0
4201351e:	c6fdff        	j	0x42013519
42013521:	000000        	ill
42013524:	36e100        	entry	a1, 112
42013527:	31d9b2        	l32r	a3, 0x4200008c (0x3fca2abc)
4201352a:	b11fb6        	l32r	a11, 0x42000da8 (0x3c08657f)
4201352d:	c02000        	memw
42013530:	4803      	l32i.n	a4, a3, 0
42013532:	cba1      	addi.n	a10, a1, 12
42013534:	c02000        	memw
42013537:	426113        	s32i	a4, a1, 76
4201353a:	101120        	or	a1, a1, a1
4201353d:	e5a10a        	call8	0x4201df5c
42013540:	101120        	or	a1, a1, a1
42013543:	654209        	call8	0x4201c968
42013546:	bd0a      	mov.n	a11, a10
42013548:	c2a00a        	movi	a12, 10
4201354b:	a2c11c        	addi	a10, a1, 28
4201354e:	101120        	or	a1, a1, a1
42013551:	a5bf0a        	call8	0x4201e14c
42013554:	b2c11c        	addi	a11, a1, 28
42013557:	a2c12c        	addi	a10, a1, 44
4201355a:	101120        	or	a1, a1, a1
4201355d:	e5b30a        	call8	0x4201e09c
42013560:	b113b6        	l32r	a11, 0x42000dac (0x3c0608c2)
42013563:	a2c12c        	addi	a10, a1, 44
42013566:	101120        	or	a1, a1, a1
42013569:	a5dc0a        	call8	0x4201e334
4201356c:	4d0a      	mov.n	a4, a10
4201356e:	101120        	or	a1, a1, a1
42013571:	e54109        	call8	0x4201c990
42013574:	bd0a      	mov.n	a11, a10
42013576:	0cac      	movi.n	a12, 10
42013578:	a2c13c        	addi	a10, a1, 60
4201357b:	101120        	or	a1, a1, a1
4201357e:	e5bc0a        	call8	0x4201e14c
42013581:	b2c13c        	addi	a11, a1, 60
42013584:	ad04      	mov.n	a10, a4
42013586:	101120        	or	a1, a1, a1
42013589:	e5d70a        	call8	0x4201e308
4201358c:	a0ba20        	or	a11, a10, a10
4201358f:	a2c10c        	addi	a10, a1, 12
42013592:	101120        	or	a1, a1, a1
42013595:	65ad0a        	call8	0x4201e06c
42013598:	a2c13c        	addi	a10, a1, 60
4201359b:	101120        	or	a1, a1, a1
4201359e:	65820a        	call8	0x4201ddc4
420135a1:	a2c12c        	addi	a10, a1, 44
