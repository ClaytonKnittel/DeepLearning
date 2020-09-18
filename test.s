
bin/zob:	file format Mach-O 64-bit x86-64


Disassembly of section __TEXT,__text:

0000000100000890 _main:
100000890: 55                          	pushq	%rbp
100000891: 48 89 e5                    	movq	%rsp, %rbp
100000894: 53                          	pushq	%rbx
100000895: 48 83 ec 58                 	subq	$88, %rsp
100000899: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
10000089d: be 05 00 00 00              	movl	$5, %esi
1000008a2: ba 05 00 00 00              	movl	$5, %edx
1000008a7: e8 84 3d 00 00              	callq	15748 <__ZN2GoC1Ehh>
1000008ac: 0f b6 75 b8                 	movzbl	-72(%rbp), %esi
1000008b0: 0f b6 55 b9                 	movzbl	-71(%rbp), %edx
1000008b4: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
1000008b8: e8 e3 0a 00 00              	callq	2787 <__ZN11ZobristHashC1Ehh>
1000008bd: 48 8d 3d c0 8a 00 00        	leaq	35520(%rip), %rdi
1000008c4: 31 f6                       	xorl	%esi, %esi
1000008c6: 31 c0                       	xorl	%eax, %eax
1000008c8: e8 ff 84 00 00              	callq	34047 <dyld_stub_binder+0x100008dcc>
1000008cd: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
1000008d1: e8 ba 43 00 00              	callq	17338 <__ZN2GoD1Ev>
1000008d6: 31 c0                       	xorl	%eax, %eax
1000008d8: 48 83 c4 58                 	addq	$88, %rsp
1000008dc: 5b                          	popq	%rbx
1000008dd: 5d                          	popq	%rbp
1000008de: c3                          	retq
1000008df: 48 89 c3                    	movq	%rax, %rbx
1000008e2: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
1000008e6: e8 a5 43 00 00              	callq	17317 <__ZN2GoD1Ev>
1000008eb: 48 89 df                    	movq	%rbx, %rdi
1000008ee: e8 ef 83 00 00              	callq	33775 <dyld_stub_binder+0x100008ce2>
1000008f3: 0f 0b                       	ud2
1000008f5: 90                          	nop
1000008f6: 90                          	nop
1000008f7: 90                          	nop
1000008f8: 90                          	nop
1000008f9: 90                          	nop
1000008fa: 90                          	nop
1000008fb: 90                          	nop
1000008fc: 90                          	nop
1000008fd: 90                          	nop
1000008fe: 90                          	nop
1000008ff: 90                          	nop

0000000100000900 __ZN11ZobristHash3rotEy:
100000900: 55                          	pushq	%rbp
100000901: 48 89 e5                    	movq	%rsp, %rbp
100000904: 48 89 f8                    	movq	%rdi, %rax
100000907: 48 c1 e8 08                 	shrq	$8, %rax
10000090b: 48 b9 ff ff ff 00 ff ff ff 00       	movabsq	$72057589759737855, %rcx
100000915: 48 21 c1                    	andq	%rax, %rcx
100000918: 48 c1 e7 18                 	shlq	$24, %rdi
10000091c: 48 b8 00 00 00 ff 00 00 00 ff       	movabsq	$-72057589759737856, %rax
100000926: 48 21 f8                    	andq	%rdi, %rax
100000929: 48 09 c8                    	orq	%rcx, %rax
10000092c: 5d                          	popq	%rbp
10000092d: c3                          	retq
10000092e: 66 90                       	nop

0000000100000930 __ZN11ZobristHash4vmirEy:
100000930: 55                          	pushq	%rbp
100000931: 48 89 e5                    	movq	%rsp, %rbp
100000934: 48 89 f8                    	movq	%rdi, %rax
100000937: 48 c1 e0 08                 	shlq	$8, %rax
10000093b: 48 b9 00 ff 00 ff 00 ff 00 ff       	movabsq	$-71777214294589696, %rcx
100000945: 48 21 c1                    	andq	%rax, %rcx
100000948: 48 c1 ef 08                 	shrq	$8, %rdi
10000094c: 48 ba ff 00 ff 00 ff 00 ff 00       	movabsq	$71777214294589695, %rdx
100000956: 48 21 fa                    	andq	%rdi, %rdx
100000959: 48 09 ca                    	orq	%rcx, %rdx
10000095c: 48 89 d0                    	movq	%rdx, %rax
10000095f: 48 c1 e0 10                 	shlq	$16, %rax
100000963: 48 b9 00 00 ff ff 00 00 ff ff       	movabsq	$-281470681808896, %rcx
10000096d: 48 21 c1                    	andq	%rax, %rcx
100000970: 48 c1 ea 10                 	shrq	$16, %rdx
100000974: 48 b8 ff ff 00 00 ff ff 00 00       	movabsq	$281470681808895, %rax
10000097e: 48 21 d0                    	andq	%rdx, %rax
100000981: 48 09 c8                    	orq	%rcx, %rax
100000984: 5d                          	popq	%rbp
100000985: c3                          	retq
100000986: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100000990 __ZN11ZobristHash4hmirEy:
100000990: 55                          	pushq	%rbp
100000991: 48 89 e5                    	movq	%rsp, %rbp
100000994: 48 89 f8                    	movq	%rdi, %rax
100000997: 48 c1 e0 08                 	shlq	$8, %rax
10000099b: 48 b9 00 ff 00 ff 00 ff 00 ff       	movabsq	$-71777214294589696, %rcx
1000009a5: 48 21 c1                    	andq	%rax, %rcx
1000009a8: 48 c1 ef 08                 	shrq	$8, %rdi
1000009ac: 48 b8 ff 00 ff 00 ff 00 ff 00       	movabsq	$71777214294589695, %rax
1000009b6: 48 21 f8                    	andq	%rdi, %rax
1000009b9: 48 09 c8                    	orq	%rcx, %rax
1000009bc: 5d                          	popq	%rbp
1000009bd: c3                          	retq
1000009be: 66 90                       	nop

00000001000009c0 __ZN11ZobristHash5col_xEy:
1000009c0: 55                          	pushq	%rbp
1000009c1: 48 89 e5                    	movq	%rsp, %rbp
1000009c4: 48 89 f8                    	movq	%rdi, %rax
1000009c7: 48 c1 c0 20                 	rolq	$32, %rax
1000009cb: 5d                          	popq	%rbp
1000009cc: c3                          	retq
1000009cd: 0f 1f 00                    	nopl	(%rax)

00000001000009d0 __ZNK11ZobristHash6to_idxEhhh:
1000009d0: 55                          	pushq	%rbp
1000009d1: 48 89 e5                    	movq	%rsp, %rbp
1000009d4: 0f b6 07                    	movzbl	(%rdi), %eax
1000009d7: 0f af c2                    	imull	%edx, %eax
1000009da: 01 f0                       	addl	%esi, %eax
1000009dc: 8d 04 40                    	leal	(%rax,%rax,2), %eax
1000009df: 01 c8                       	addl	%ecx, %eax
1000009e1: 0f b7 c0                    	movzwl	%ax, %eax
1000009e4: 5d                          	popq	%rbp
1000009e5: c3                          	retq
1000009e6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000009f0 __ZNK11ZobristHash10rot_coordsERhS0_:
1000009f0: 55                          	pushq	%rbp
1000009f1: 48 89 e5                    	movq	%rsp, %rbp
1000009f4: 8a 06                       	movb	(%rsi), %al
1000009f6: 8a 0a                       	movb	(%rdx), %cl
1000009f8: f6 d1                       	notb	%cl
1000009fa: 02 0f                       	addb	(%rdi), %cl
1000009fc: 88 0e                       	movb	%cl, (%rsi)
1000009fe: 88 02                       	movb	%al, (%rdx)
100000a00: 5d                          	popq	%rbp
100000a01: c3                          	retq
100000a02: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100000a0c: 0f 1f 40 00                 	nopl	(%rax)

0000000100000a10 __ZNK11ZobristHash10mir_coordsERhS0_:
100000a10: 55                          	pushq	%rbp
100000a11: 48 89 e5                    	movq	%rsp, %rbp
100000a14: 8a 06                       	movb	(%rsi), %al
100000a16: f6 d0                       	notb	%al
100000a18: 02 07                       	addb	(%rdi), %al
100000a1a: 88 06                       	movb	%al, (%rsi)
100000a1c: 5d                          	popq	%rbp
100000a1d: c3                          	retq
100000a1e: 66 90                       	nop

0000000100000a20 __ZN11ZobristHash10initializeEv:
100000a20: 55                          	pushq	%rbp
100000a21: 48 89 e5                    	movq	%rsp, %rbp
100000a24: 41 57                       	pushq	%r15
100000a26: 41 56                       	pushq	%r14
100000a28: 41 55                       	pushq	%r13
100000a2a: 41 54                       	pushq	%r12
100000a2c: 53                          	pushq	%rbx
100000a2d: 48 83 ec 28                 	subq	$40, %rsp
100000a31: 49 89 fe                    	movq	%rdi, %r14
100000a34: 0f b6 0f                    	movzbl	(%rdi), %ecx
100000a37: 8d 41 ff                    	leal	-1(%rcx), %eax
100000a3a: c1 e8 1f                    	shrl	$31, %eax
100000a3d: 48 89 4d b0                 	movq	%rcx, -80(%rbp)
100000a41: 44 8d 7c 01 ff              	leal	-1(%rcx,%rax), %r15d
100000a46: 41 d1 ef                    	shrl	%r15d
100000a49: 0f b6 47 01                 	movzbl	1(%rdi), %eax
100000a4d: 89 c1                       	movl	%eax, %ecx
100000a4f: ff c9                       	decl	%ecx
100000a51: c1 e9 1f                    	shrl	$31, %ecx
100000a54: 8d 5c 08 ff                 	leal	-1(%rax,%rcx), %ebx
100000a58: d1 eb                       	shrl	%ebx
100000a5a: 45 31 e4                    	xorl	%r12d, %r12d
100000a5d: 31 ff                       	xorl	%edi, %edi
100000a5f: e8 92 83 00 00              	callq	33682 <dyld_stub_binder+0x100008df6>
100000a64: be 01 00 00 00              	movl	$1, %esi
100000a69: 48 89 c7                    	movq	%rax, %rdi
100000a6c: e8 1f 7e 00 00              	callq	32287 <_seed_rand>
100000a71: 44 0f b6 eb                 	movzbl	%bl, %r13d
100000a75: 41 0f b6 c7                 	movzbl	%r15b, %eax
100000a79: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100000a7d: eb 13                       	jmp	19 <__ZN11ZobristHash10initializeEv+0x72>
100000a7f: 90                          	nop
100000a80: 41 8d 44 24 01              	leal	1(%r12), %eax
100000a85: 44 0f b6 e0                 	movzbl	%al, %r12d
100000a89: 45 39 e5                    	cmpl	%r12d, %r13d
100000a8c: 0f 82 9b 05 00 00           	jb	1435 <__ZN11ZobristHash10initializeEv+0x60d>
100000a92: 44 89 e0                    	movl	%r12d, %eax
100000a95: 48 89 c1                    	movq	%rax, %rcx
100000a98: 48 81 f1 ff ff 00 00        	xorq	$65535, %rcx
100000a9f: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100000aa3: 44 89 e1                    	movl	%r12d, %ecx
100000aa6: f7 d1                       	notl	%ecx
100000aa8: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100000aac: 48 ff c0                    	incq	%rax
100000aaf: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100000ab3: 45 31 ff                    	xorl	%r15d, %r15d
100000ab6: e9 03 01 00 00              	jmp	259 <__ZN11ZobristHash10initializeEv+0x19e>
100000abb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100000ac0: 66 0f 6c c8                 	punpcklqdq	%xmm0, %xmm1
100000ac4: 66 0f 6f d1                 	movdqa	%xmm1, %xmm2
100000ac8: 66 0f 73 f2 10              	psllq	$16, %xmm2
100000acd: 66 0f 6f 05 1b 8d 00 00     	movdqa	36123(%rip), %xmm0
100000ad5: 66 0f 38 10 d1              	pblendvb	%xmm0, %xmm1, %xmm2
100000ada: 41 0f b6 16                 	movzbl	(%r14), %edx
100000ade: 44 89 e6                    	movl	%r12d, %esi
100000ae1: 0f af f2                    	imull	%edx, %esi
100000ae4: 44 01 fe                    	addl	%r15d, %esi
100000ae7: 49 8b 46 08                 	movq	8(%r14), %rax
100000aeb: 0f b7 f6                    	movzwl	%si, %esi
100000aee: 48 8d 34 76                 	leaq	(%rsi,%rsi,2), %rsi
100000af2: 66 48 0f 3a 16 d7 01        	pextrq	$1, %xmm2, %rdi
100000af9: f3 0f 7f 14 f0              	movdqu	%xmm2, (%rax,%rsi,8)
100000afe: 48 c1 c7 20                 	rolq	$32, %rdi
100000b02: 48 89 7c f0 10              	movq	%rdi, 16(%rax,%rsi,8)
100000b07: 66 0f 6f da                 	movdqa	%xmm2, %xmm3
100000b0b: 66 0f 73 d3 08              	psrlq	$8, %xmm3
100000b10: 66 0f 73 f1 18              	psllq	$24, %xmm1
100000b15: 66 0f 38 10 cb              	pblendvb	%xmm0, %xmm3, %xmm1
100000b1a: 44 89 fe                    	movl	%r15d, %esi
100000b1d: ff c6                       	incl	%esi
100000b1f: 0f af f2                    	imull	%edx, %esi
100000b22: 03 75 d0                    	addl	-48(%rbp), %esi
100000b25: 0f b7 f6                    	movzwl	%si, %esi
100000b28: 48 8d 34 76                 	leaq	(%rsi,%rsi,2), %rsi
100000b2c: f3 0f 7f 0c f0              	movdqu	%xmm1, (%rax,%rsi,8)
100000b31: 66 48 0f 3a 16 cf 01        	pextrq	$1, %xmm1, %rdi
100000b38: 48 c1 c7 20                 	rolq	$32, %rdi
100000b3c: 48 89 7c f0 10              	movq	%rdi, 16(%rax,%rsi,8)
100000b41: 66 0f 6f d9                 	movdqa	%xmm1, %xmm3
100000b45: 66 0f 73 d3 08              	psrlq	$8, %xmm3
100000b4a: 66 0f 73 f2 10              	psllq	$16, %xmm2
100000b4f: 66 0f 38 10 d3              	pblendvb	%xmm0, %xmm3, %xmm2
100000b54: 89 d6                       	movl	%edx, %esi
100000b56: 44 29 e6                    	subl	%r12d, %esi
100000b59: 0f af f2                    	imull	%edx, %esi
100000b5c: 01 ce                       	addl	%ecx, %esi
100000b5e: 0f b7 f6                    	movzwl	%si, %esi
100000b61: 8d 34 76                    	leal	(%rsi,%rsi,2), %esi
100000b64: 66 48 0f 3a 16 d7 01        	pextrq	$1, %xmm2, %rdi
100000b6b: 48 c1 c7 20                 	rolq	$32, %rdi
100000b6f: f3 0f 7f 14 f0              	movdqu	%xmm2, (%rax,%rsi,8)
100000b74: 48 89 7c f0 10              	movq	%rdi, 16(%rax,%rsi,8)
100000b79: 66 0f 73 d2 08              	psrlq	$8, %xmm2
100000b7e: 66 0f 73 f1 10              	psllq	$16, %xmm1
100000b83: 66 0f 38 10 ca              	pblendvb	%xmm0, %xmm2, %xmm1
100000b88: 01 d1                       	addl	%edx, %ecx
100000b8a: 0f af ca                    	imull	%edx, %ecx
100000b8d: 44 01 e1                    	addl	%r12d, %ecx
100000b90: 0f b7 c9                    	movzwl	%cx, %ecx
100000b93: 8d 0c 49                    	leal	(%rcx,%rcx,2), %ecx
100000b96: f3 0f 7f 0c c8              	movdqu	%xmm1, (%rax,%rcx,8)
100000b9b: 66 48 0f 3a 16 cb 01        	pextrq	$1, %xmm1, %rbx
100000ba2: 48 c1 c3 20                 	rolq	$32, %rbx
100000ba6: 89 c9                       	movl	%ecx, %ecx
100000ba8: 48 89 5c c8 10              	movq	%rbx, 16(%rax,%rcx,8)
100000bad: 41 8d 47 01                 	leal	1(%r15), %eax
100000bb1: 44 0f b6 f8                 	movzbl	%al, %r15d
100000bb5: 45 38 e7                    	cmpb	%r12b, %r15b
100000bb8: 0f 87 c2 fe ff ff           	ja	-318 <__ZN11ZobristHash10initializeEv+0x60>
100000bbe: e8 4d 7d 00 00              	callq	32077 <_gen_rand64>
100000bc3: 48 89 c3                    	movq	%rax, %rbx
100000bc6: e8 05 7d 00 00              	callq	32005 <_gen_rand>
100000bcb: 89 c0                       	movl	%eax, %eax
100000bcd: 48 89 c7                    	movq	%rax, %rdi
100000bd0: 48 c1 e7 20                 	shlq	$32, %rdi
100000bd4: 48 09 c7                    	orq	%rax, %rdi
100000bd7: 66 48 0f 6e c3              	movq	%rbx, %xmm0
100000bdc: 66 48 0f 6e cf              	movq	%rdi, %xmm1
100000be1: 44 89 f9                    	movl	%r15d, %ecx
100000be4: f7 d1                       	notl	%ecx
100000be6: f6 45 b0 01                 	testb	$1, -80(%rbp)
100000bea: 0f 85 00 01 00 00           	jne	256 <__ZN11ZobristHash10initializeEv+0x2d0>
100000bf0: 45 38 fc                    	cmpb	%r15b, %r12b
100000bf3: 0f 84 c7 fe ff ff           	je	-313 <__ZN11ZobristHash10initializeEv+0xa0>
100000bf9: 41 0f b6 16                 	movzbl	(%r14), %edx
100000bfd: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100000c01: 44 8d 04 02                 	leal	(%rdx,%rax), %r8d
100000c05: 45 39 f8                    	cmpl	%r15d, %r8d
100000c08: 0f 85 37 02 00 00           	jne	567 <__ZN11ZobristHash10initializeEv+0x425>
100000c0e: 66 0f 6c c8                 	punpcklqdq	%xmm0, %xmm1
100000c12: 66 0f 6f d1                 	movdqa	%xmm1, %xmm2
100000c16: 66 0f 73 f2 10              	psllq	$16, %xmm2
100000c1b: 0f 28 05 fe 8b 00 00        	movaps	35838(%rip), %xmm0
100000c22: 66 0f 38 10 d1              	pblendvb	%xmm0, %xmm1, %xmm2
100000c27: 44 89 e6                    	movl	%r12d, %esi
100000c2a: 0f af f2                    	imull	%edx, %esi
100000c2d: 44 01 fe                    	addl	%r15d, %esi
100000c30: 49 8b 46 08                 	movq	8(%r14), %rax
100000c34: 0f b7 f6                    	movzwl	%si, %esi
100000c37: 48 8d 34 76                 	leaq	(%rsi,%rsi,2), %rsi
100000c3b: 66 48 0f 3a 16 d7 01        	pextrq	$1, %xmm2, %rdi
100000c42: f3 0f 7f 14 f0              	movdqu	%xmm2, (%rax,%rsi,8)
100000c47: 48 c1 c7 20                 	rolq	$32, %rdi
100000c4b: 48 89 7c f0 10              	movq	%rdi, 16(%rax,%rsi,8)
100000c50: 66 0f 6f da                 	movdqa	%xmm2, %xmm3
100000c54: 66 0f 73 d3 08              	psrlq	$8, %xmm3
100000c59: 66 0f 73 f1 18              	psllq	$24, %xmm1
100000c5e: 66 0f 6f 05 8a 8b 00 00     	movdqa	35722(%rip), %xmm0
100000c66: 66 0f 38 10 cb              	pblendvb	%xmm0, %xmm3, %xmm1
100000c6b: 44 89 fe                    	movl	%r15d, %esi
100000c6e: ff c6                       	incl	%esi
100000c70: 0f af f2                    	imull	%edx, %esi
100000c73: 03 75 d0                    	addl	-48(%rbp), %esi
100000c76: 0f b7 f6                    	movzwl	%si, %esi
100000c79: 48 8d 34 76                 	leaq	(%rsi,%rsi,2), %rsi
100000c7d: f3 0f 7f 0c f0              	movdqu	%xmm1, (%rax,%rsi,8)
100000c82: 66 48 0f 3a 16 cf 01        	pextrq	$1, %xmm1, %rdi
100000c89: 48 c1 c7 20                 	rolq	$32, %rdi
100000c8d: 48 89 7c f0 10              	movq	%rdi, 16(%rax,%rsi,8)
100000c92: 66 0f 6f d9                 	movdqa	%xmm1, %xmm3
100000c96: 66 0f 73 d3 08              	psrlq	$8, %xmm3
100000c9b: 66 0f 73 f2 10              	psllq	$16, %xmm2
100000ca0: 66 0f 38 10 d3              	pblendvb	%xmm0, %xmm3, %xmm2
100000ca5: 89 d6                       	movl	%edx, %esi
100000ca7: 44 29 e6                    	subl	%r12d, %esi
100000caa: 0f af f2                    	imull	%edx, %esi
100000cad: 01 ce                       	addl	%ecx, %esi
100000caf: 0f b7 f6                    	movzwl	%si, %esi
100000cb2: 8d 34 76                    	leal	(%rsi,%rsi,2), %esi
100000cb5: 66 48 0f 3a 16 d7 01        	pextrq	$1, %xmm2, %rdi
100000cbc: 48 c1 c7 20                 	rolq	$32, %rdi
100000cc0: f3 0f 7f 14 f0              	movdqu	%xmm2, (%rax,%rsi,8)
100000cc5: 48 89 7c f0 10              	movq	%rdi, 16(%rax,%rsi,8)
100000cca: 66 0f 73 d2 08              	psrlq	$8, %xmm2
100000ccf: 66 0f 73 f1 10              	psllq	$16, %xmm1
100000cd4: 66 0f 38 10 ca              	pblendvb	%xmm0, %xmm2, %xmm1
100000cd9: 01 d1                       	addl	%edx, %ecx
100000cdb: 0f af ca                    	imull	%edx, %ecx
100000cde: e9 aa fe ff ff              	jmp	-342 <__ZN11ZobristHash10initializeEv+0x16d>
100000ce3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100000ced: 0f 1f 00                    	nopl	(%rax)
100000cf0: 44 39 7d c8                 	cmpl	%r15d, -56(%rbp)
100000cf4: 75 5a                       	jne	90 <__ZN11ZobristHash10initializeEv+0x330>
100000cf6: 45 39 e5                    	cmpl	%r12d, %r13d
100000cf9: 0f 85 3d 03 00 00           	jne	829 <__ZN11ZobristHash10initializeEv+0x61c>
100000cff: 66 0f 6c c8                 	punpcklqdq	%xmm0, %xmm1
100000d03: 66 0f db 0d f5 8a 00 00     	pand	35573(%rip), %xmm1
100000d0b: 66 0f 6f c1                 	movdqa	%xmm1, %xmm0
100000d0f: 66 0f 73 f0 10              	psllq	$16, %xmm0
100000d14: 66 0f eb c1                 	por	%xmm1, %xmm0
100000d18: 66 0f 6f c8                 	movdqa	%xmm0, %xmm1
100000d1c: 66 0f 73 f1 08              	psllq	$8, %xmm1
100000d21: 66 0f eb c8                 	por	%xmm0, %xmm1
100000d25: 41 0f b6 06                 	movzbl	(%r14), %eax
100000d29: 41 0f af c5                 	imull	%r13d, %eax
100000d2d: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100000d31: 01 c1                       	addl	%eax, %ecx
100000d33: 49 8b 46 08                 	movq	8(%r14), %rax
100000d37: 0f b7 c9                    	movzwl	%cx, %ecx
100000d3a: 48 8d 0c 49                 	leaq	(%rcx,%rcx,2), %rcx
100000d3e: e9 53 fe ff ff              	jmp	-429 <__ZN11ZobristHash10initializeEv+0x176>
100000d43: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100000d4d: 0f 1f 00                    	nopl	(%rax)
100000d50: 45 39 e5                    	cmpl	%r12d, %r13d
100000d53: 0f 85 97 fe ff ff           	jne	-361 <__ZN11ZobristHash10initializeEv+0x1d0>
100000d59: 66 0f 6c c8                 	punpcklqdq	%xmm0, %xmm1
100000d5d: 66 0f 6f c1                 	movdqa	%xmm1, %xmm0
100000d61: 66 0f db 05 77 8a 00 00     	pand	35447(%rip), %xmm0
100000d69: 66 0f 6f d1                 	movdqa	%xmm1, %xmm2
100000d6d: 66 0f 71 f2 08              	psllw	$8, %xmm2
100000d72: 66 0f eb d0                 	por	%xmm0, %xmm2
100000d76: 41 0f b6 16                 	movzbl	(%r14), %edx
100000d7a: 44 89 ee                    	movl	%r13d, %esi
100000d7d: 0f af f2                    	imull	%edx, %esi
100000d80: 44 01 fe                    	addl	%r15d, %esi
100000d83: 49 8b 46 08                 	movq	8(%r14), %rax
100000d87: 0f b7 f6                    	movzwl	%si, %esi
100000d8a: 48 8d 34 76                 	leaq	(%rsi,%rsi,2), %rsi
100000d8e: 66 0f d6 14 f0              	movq	%xmm2, (%rax,%rsi,8)
100000d93: 66 48 0f 3a 16 d7 01        	pextrq	$1, %xmm2, %rdi
100000d9a: 66 48 0f 3a 16 54 f0 08 01  	pextrq	$1, %xmm2, 8(%rax,%rsi,8)
100000da3: 48 c1 c7 20                 	rolq	$32, %rdi
100000da7: 48 89 7c f0 10              	movq	%rdi, 16(%rax,%rsi,8)
100000dac: 66 0f 6f da                 	movdqa	%xmm2, %xmm3
100000db0: 66 0f 73 d3 08              	psrlq	$8, %xmm3
100000db5: 66 0f 73 f1 18              	psllq	$24, %xmm1
100000dba: 66 0f 6f 05 2e 8a 00 00     	movdqa	35374(%rip), %xmm0
100000dc2: 66 0f 38 10 cb              	pblendvb	%xmm0, %xmm3, %xmm1
100000dc7: 44 89 fe                    	movl	%r15d, %esi
100000dca: ff c6                       	incl	%esi
100000dcc: 0f af f2                    	imull	%edx, %esi
100000dcf: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100000dd3: 01 fe                       	addl	%edi, %esi
100000dd5: 0f b7 f6                    	movzwl	%si, %esi
100000dd8: 48 8d 34 76                 	leaq	(%rsi,%rsi,2), %rsi
100000ddc: f3 0f 7f 0c f0              	movdqu	%xmm1, (%rax,%rsi,8)
100000de1: 66 48 0f 3a 16 cf 01        	pextrq	$1, %xmm1, %rdi
100000de8: 48 c1 c7 20                 	rolq	$32, %rdi
100000dec: 48 89 7c f0 10              	movq	%rdi, 16(%rax,%rsi,8)
100000df1: 66 0f 6f d9                 	movdqa	%xmm1, %xmm3
100000df5: 66 0f 73 d3 08              	psrlq	$8, %xmm3
100000dfa: 66 0f 73 f2 10              	psllq	$16, %xmm2
100000dff: 66 0f 38 10 d3              	pblendvb	%xmm0, %xmm3, %xmm2
100000e04: 89 d6                       	movl	%edx, %esi
100000e06: 44 29 ee                    	subl	%r13d, %esi
100000e09: 0f af f2                    	imull	%edx, %esi
100000e0c: 01 ce                       	addl	%ecx, %esi
100000e0e: 0f b7 f6                    	movzwl	%si, %esi
100000e11: 8d 34 76                    	leal	(%rsi,%rsi,2), %esi
100000e14: 66 48 0f 3a 16 d7 01        	pextrq	$1, %xmm2, %rdi
100000e1b: 48 c1 c7 20                 	rolq	$32, %rdi
100000e1f: f3 0f 7f 14 f0              	movdqu	%xmm2, (%rax,%rsi,8)
100000e24: 48 89 7c f0 10              	movq	%rdi, 16(%rax,%rsi,8)
100000e29: 66 0f 73 d2 08              	psrlq	$8, %xmm2
100000e2e: 66 0f 73 f1 10              	psllq	$16, %xmm1
100000e33: 66 0f 38 10 ca              	pblendvb	%xmm0, %xmm2, %xmm1
100000e38: 01 d1                       	addl	%edx, %ecx
100000e3a: 0f af ca                    	imull	%edx, %ecx
100000e3d: 44 01 e9                    	addl	%r13d, %ecx
100000e40: e9 4b fd ff ff              	jmp	-693 <__ZN11ZobristHash10initializeEv+0x170>
100000e45: 44 89 e6                    	movl	%r12d, %esi
100000e48: 0f af f2                    	imull	%edx, %esi
100000e4b: 44 01 fe                    	addl	%r15d, %esi
100000e4e: 49 8b 46 08                 	movq	8(%r14), %rax
100000e52: 0f b7 f6                    	movzwl	%si, %esi
100000e55: 48 8d 34 76                 	leaq	(%rsi,%rsi,2), %rsi
100000e59: 48 89 3c f0                 	movq	%rdi, (%rax,%rsi,8)
100000e5d: 48 89 5c f0 08              	movq	%rbx, 8(%rax,%rsi,8)
100000e62: 48 89 df                    	movq	%rbx, %rdi
100000e65: 48 c1 c7 20                 	rolq	$32, %rdi
100000e69: 48 89 7c f0 10              	movq	%rdi, 16(%rax,%rsi,8)
100000e6e: 66 0f 6c c8                 	punpcklqdq	%xmm0, %xmm1
100000e72: 66 0f 6f d9                 	movdqa	%xmm1, %xmm3
100000e76: 66 0f 73 d3 08              	psrlq	$8, %xmm3
100000e7b: 66 0f 6f d1                 	movdqa	%xmm1, %xmm2
100000e7f: 66 0f 73 f2 18              	psllq	$24, %xmm2
100000e84: 66 0f 6f 25 64 89 00 00     	movdqa	35172(%rip), %xmm4
100000e8c: 66 0f 6f c4                 	movdqa	%xmm4, %xmm0
100000e90: 66 0f 38 10 d3              	pblendvb	%xmm0, %xmm3, %xmm2
100000e95: 41 8d 77 01                 	leal	1(%r15), %esi
100000e99: 0f af f2                    	imull	%edx, %esi
100000e9c: 4c 8b 55 d0                 	movq	-48(%rbp), %r10
100000ea0: 44 01 d6                    	addl	%r10d, %esi
100000ea3: 0f b7 f6                    	movzwl	%si, %esi
100000ea6: 48 8d 34 76                 	leaq	(%rsi,%rsi,2), %rsi
100000eaa: 66 0f d6 14 f0              	movq	%xmm2, (%rax,%rsi,8)
100000eaf: 66 48 0f 3a 16 54 f0 08 01  	pextrq	$1, %xmm2, 8(%rax,%rsi,8)
100000eb8: 66 48 0f 3a 16 d7 01        	pextrq	$1, %xmm2, %rdi
100000ebf: 48 c1 c7 20                 	rolq	$32, %rdi
100000ec3: 48 89 7c f0 10              	movq	%rdi, 16(%rax,%rsi,8)
100000ec8: 66 0f 6f da                 	movdqa	%xmm2, %xmm3
100000ecc: 66 0f 73 d3 08              	psrlq	$8, %xmm3
100000ed1: 66 0f 73 f1 10              	psllq	$16, %xmm1
100000ed6: 66 0f 38 10 cb              	pblendvb	%xmm0, %xmm3, %xmm1
100000edb: 89 d6                       	movl	%edx, %esi
100000edd: 44 29 e6                    	subl	%r12d, %esi
100000ee0: 0f af f2                    	imull	%edx, %esi
100000ee3: 45 89 f9                    	movl	%r15d, %r9d
100000ee6: 41 81 f1 ff ff 00 00        	xorl	$65535, %r9d
100000eed: 44 01 ce                    	addl	%r9d, %esi
100000ef0: 0f b7 f6                    	movzwl	%si, %esi
100000ef3: 8d 34 76                    	leal	(%rsi,%rsi,2), %esi
100000ef6: 66 48 0f 3a 16 cf 01        	pextrq	$1, %xmm1, %rdi
100000efd: 48 c1 c7 20                 	rolq	$32, %rdi
100000f01: f3 0f 7f 0c f0              	movdqu	%xmm1, (%rax,%rsi,8)
100000f06: 48 89 7c f0 10              	movq	%rdi, 16(%rax,%rsi,8)
100000f0b: 66 0f 6f d9                 	movdqa	%xmm1, %xmm3
100000f0f: 66 0f 73 d3 08              	psrlq	$8, %xmm3
100000f14: 66 0f 73 f2 10              	psllq	$16, %xmm2
100000f19: 66 0f 38 10 d3              	pblendvb	%xmm0, %xmm3, %xmm2
100000f1e: 01 d1                       	addl	%edx, %ecx
100000f20: 0f af ca                    	imull	%edx, %ecx
100000f23: 44 01 e1                    	addl	%r12d, %ecx
100000f26: 0f b7 c9                    	movzwl	%cx, %ecx
100000f29: 8d 0c 49                    	leal	(%rcx,%rcx,2), %ecx
100000f2c: f3 0f 7f 14 c8              	movdqu	%xmm2, (%rax,%rcx,8)
100000f31: 66 48 0f 3a 16 d6 01        	pextrq	$1, %xmm2, %rsi
100000f38: 48 c1 c6 20                 	rolq	$32, %rsi
100000f3c: 48 89 74 c8 10              	movq	%rsi, 16(%rax,%rcx,8)
100000f41: 66 0f 73 d2 08              	psrlq	$8, %xmm2
100000f46: 0f 28 05 93 88 00 00        	movaps	34963(%rip), %xmm0
100000f4d: 66 0f 38 10 ca              	pblendvb	%xmm0, %xmm2, %xmm1
100000f52: 66 0f 6f d1                 	movdqa	%xmm1, %xmm2
100000f56: 66 0f 38 00 15 b1 88 00 00  	pshufb	34993(%rip), %xmm2
100000f5f: 44 89 f9                    	movl	%r15d, %ecx
100000f62: 0f af ca                    	imull	%edx, %ecx
100000f65: 44 01 e1                    	addl	%r12d, %ecx
100000f68: 0f b7 c9                    	movzwl	%cx, %ecx
100000f6b: 48 8d 0c 49                 	leaq	(%rcx,%rcx,2), %rcx
100000f6f: f3 0f 7f 14 c8              	movdqu	%xmm2, (%rax,%rcx,8)
100000f74: 66 48 0f 3a 16 d6 01        	pextrq	$1, %xmm2, %rsi
100000f7b: 48 c1 c6 20                 	rolq	$32, %rsi
100000f7f: 48 89 74 c8 10              	movq	%rsi, 16(%rax,%rcx,8)
100000f84: 66 0f 6f da                 	movdqa	%xmm2, %xmm3
100000f88: 66 0f 73 d3 08              	psrlq	$8, %xmm3
100000f8d: 66 0f 73 f1 08              	psllq	$8, %xmm1
100000f92: 66 0f 6f c4                 	movdqa	%xmm4, %xmm0
100000f96: 66 0f 38 10 cb              	pblendvb	%xmm0, %xmm3, %xmm1
100000f9b: 44 0f af c2                 	imull	%edx, %r8d
100000f9f: 45 01 f8                    	addl	%r15d, %r8d
100000fa2: 41 0f b7 c8                 	movzwl	%r8w, %ecx
100000fa6: 8d 0c 49                    	leal	(%rcx,%rcx,2), %ecx
100000fa9: 66 0f d6 0c c8              	movq	%xmm1, (%rax,%rcx,8)
100000fae: 66 48 0f 3a 16 4c c8 08 01  	pextrq	$1, %xmm1, 8(%rax,%rcx,8)
100000fb7: 66 48 0f 3a 16 ce 01        	pextrq	$1, %xmm1, %rsi
100000fbe: 48 c1 c6 20                 	rolq	$32, %rsi
100000fc2: 48 89 74 c8 10              	movq	%rsi, 16(%rax,%rcx,8)
100000fc7: 66 0f 6f d9                 	movdqa	%xmm1, %xmm3
100000fcb: 66 0f 73 d3 08              	psrlq	$8, %xmm3
100000fd0: 66 0f 73 f2 10              	psllq	$16, %xmm2
100000fd5: 66 0f 38 10 d3              	pblendvb	%xmm0, %xmm3, %xmm2
100000fda: 89 d1                       	movl	%edx, %ecx
100000fdc: 44 29 f9                    	subl	%r15d, %ecx
100000fdf: 0f af ca                    	imull	%edx, %ecx
100000fe2: 44 01 d1                    	addl	%r10d, %ecx
100000fe5: 0f b7 c9                    	movzwl	%cx, %ecx
100000fe8: 8d 0c 49                    	leal	(%rcx,%rcx,2), %ecx
100000feb: f3 0f 7f 14 c8              	movdqu	%xmm2, (%rax,%rcx,8)
100000ff0: 66 48 0f 3a 16 d6 01        	pextrq	$1, %xmm2, %rsi
100000ff7: 48 c1 c6 20                 	rolq	$32, %rsi
100000ffb: 66 0f 73 d2 08              	psrlq	$8, %xmm2
100001000: 66 0f 73 f1 10              	psllq	$16, %xmm1
100001005: 66 0f 38 10 ca              	pblendvb	%xmm0, %xmm2, %xmm1
10000100a: 48 89 74 c8 10              	movq	%rsi, 16(%rax,%rcx,8)
10000100f: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100001013: 0f af ca                    	imull	%edx, %ecx
100001016: 44 01 c9                    	addl	%r9d, %ecx
100001019: 0f b7 c9                    	movzwl	%cx, %ecx
10000101c: 48 8d 0c 49                 	leaq	(%rcx,%rcx,2), %rcx
100001020: f3 0f 7f 0c c8              	movdqu	%xmm1, (%rax,%rcx,8)
100001025: 48 0f cb                    	bswapq	%rbx
100001028: e9 79 fb ff ff              	jmp	-1159 <__ZN11ZobristHash10initializeEv+0x186>
10000102d: 48 83 c4 28                 	addq	$40, %rsp
100001031: 5b                          	popq	%rbx
100001032: 41 5c                       	popq	%r12
100001034: 41 5d                       	popq	%r13
100001036: 41 5e                       	popq	%r14
100001038: 41 5f                       	popq	%r15
10000103a: 5d                          	popq	%rbp
10000103b: c3                          	retq
10000103c: 48 b8 20 65 78 63 65 65 64 20       	movabsq	$2334101993019696416, %rax
100001046: 48 89 05 6b a1 00 00        	movq	%rax, 41323(%rip)
10000104d: 48 b8 78 20 63 61 6e 6e 6f 74       	movabsq	$8390046051173867640, %rax
100001057: 48 89 05 52 a1 00 00        	movq	%rax, 41298(%rip)
10000105e: 66 c7 05 59 a1 00 00 79 00  	movw	$121, 41305(%rip)
100001067: 4c 8d 35 42 a1 00 00        	leaq	41282(%rip), %r14
10000106e: bf 10 00 00 00              	movl	$16, %edi
100001073: e8 06 7d 00 00              	callq	32006 <dyld_stub_binder+0x100008d7e>
100001078: 48 89 c3                    	movq	%rax, %rbx
10000107b: 48 89 c7                    	movq	%rax, %rdi
10000107e: 4c 89 f6                    	movq	%r14, %rsi
100001081: e8 74 7c 00 00              	callq	31860 <dyld_stub_binder+0x100008cfa>
100001086: 48 8b 35 bb 8f 00 00        	movq	36795(%rip), %rsi
10000108d: 48 8b 15 74 8f 00 00        	movq	36724(%rip), %rdx
100001094: 48 89 df                    	movq	%rbx, %rdi
100001097: e8 00 7d 00 00              	callq	32000 <dyld_stub_binder+0x100008d9c>
10000109c: 49 89 c6                    	movq	%rax, %r14
10000109f: 48 89 df                    	movq	%rbx, %rdi
1000010a2: e8 ef 7c 00 00              	callq	31983 <dyld_stub_binder+0x100008d96>
1000010a7: 4c 89 f7                    	movq	%r14, %rdi
1000010aa: e8 33 7c 00 00              	callq	31795 <dyld_stub_binder+0x100008ce2>
1000010af: 0f 0b                       	ud2
1000010b1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000010bb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000010c0 __ZN11ZobristHashC2Ehh:
1000010c0: 55                          	pushq	%rbp
1000010c1: 48 89 e5                    	movq	%rsp, %rbp
1000010c4: 41 57                       	pushq	%r15
1000010c6: 41 56                       	pushq	%r14
1000010c8: 41 55                       	pushq	%r13
1000010ca: 41 54                       	pushq	%r12
1000010cc: 53                          	pushq	%rbx
1000010cd: 50                          	pushq	%rax
1000010ce: 41 89 d6                    	movl	%edx, %r14d
1000010d1: 41 89 f7                    	movl	%esi, %r15d
1000010d4: 44 88 3f                    	movb	%r15b, (%rdi)
1000010d7: 44 88 77 01                 	movb	%r14b, 1(%rdi)
1000010db: 45 38 f7                    	cmpb	%r14b, %r15b
1000010de: 0f 85 e0 01 00 00           	jne	480 <__ZN11ZobristHashC2Ehh+0x204>
1000010e4: 48 89 fb                    	movq	%rdi, %rbx
1000010e7: 44 89 f8                    	movl	%r15d, %eax
1000010ea: 41 0f af c6                 	imull	%r14d, %eax
1000010ee: c1 e0 03                    	shll	$3, %eax
1000010f1: 8d 3c 40                    	leal	(%rax,%rax,2), %edi
1000010f4: e8 c1 7c 00 00              	callq	31937 <dyld_stub_binder+0x100008dba>
1000010f9: 48 89 43 08                 	movq	%rax, 8(%rbx)
1000010fd: 48 85 c0                    	testq	%rax, %rax
100001100: 0f 84 45 02 00 00           	je	581 <__ZN11ZobristHashC2Ehh+0x28b>
100001106: 48 89 df                    	movq	%rbx, %rdi
100001109: e8 12 f9 ff ff              	callq	-1774 <__ZN11ZobristHash10initializeEv>
10000110e: 48 8d 3d eb 82 00 00        	leaq	33515(%rip), %rdi
100001115: e8 be 7c 00 00              	callq	31934 <dyld_stub_binder+0x100008dd8>
10000111a: 45 84 ff                    	testb	%r15b, %r15b
10000111d: 0f 84 7b 01 00 00           	je	379 <__ZN11ZobristHashC2Ehh+0x1de>
100001123: 4c 8d 25 cd 82 00 00        	leaq	33485(%rip), %r12
10000112a: 31 c9                       	xorl	%ecx, %ecx
10000112c: 44 89 75 d0                 	movl	%r14d, -48(%rbp)
100001130: 89 4d d4                    	movl	%ecx, -44(%rbp)
100001133: 44 0f b6 f1                 	movzbl	%cl, %r14d
100001137: 66 41 bd 01 00              	movw	$1, %r13w
10000113c: 0f 1f 40 00                 	nopl	(%rax)
100001140: 41 8d 45 ff                 	leal	-1(%r13), %eax
100001144: 48 8b 4b 08                 	movq	8(%rbx), %rcx
100001148: 0f b6 c0                    	movzbl	%al, %eax
10000114b: 0f b6 13                    	movzbl	(%rbx), %edx
10000114e: 41 0f b7 f6                 	movzwl	%r14w, %esi
100001152: 0f af f2                    	imull	%edx, %esi
100001155: 01 c6                       	addl	%eax, %esi
100001157: 8d 04 76                    	leal	(%rsi,%rsi,2), %eax
10000115a: 0f b7 c0                    	movzwl	%ax, %eax
10000115d: 48 8b 34 c1                 	movq	(%rcx,%rax,8), %rsi
100001161: 4c 89 e7                    	movq	%r12, %rdi
100001164: 31 c0                       	xorl	%eax, %eax
100001166: e8 61 7c 00 00              	callq	31841 <dyld_stub_binder+0x100008dcc>
10000116b: 41 0f b7 c5                 	movzwl	%r13w, %eax
10000116f: 41 ff c5                    	incl	%r13d
100001172: 44 39 f8                    	cmpl	%r15d, %eax
100001175: 72 c9                       	jb	-55 <__ZN11ZobristHashC2Ehh+0x80>
100001177: bf 0a 00 00 00              	movl	$10, %edi
10000117c: e8 51 7c 00 00              	callq	31825 <dyld_stub_binder+0x100008dd2>
100001181: 8b 4d d4                    	movl	-44(%rbp), %ecx
100001184: ff c1                       	incl	%ecx
100001186: 0f b7 c1                    	movzwl	%cx, %eax
100001189: 44 8b 75 d0                 	movl	-48(%rbp), %r14d
10000118d: 44 39 f0                    	cmpl	%r14d, %eax
100001190: 72 9e                       	jb	-98 <__ZN11ZobristHashC2Ehh+0x70>
100001192: 48 8d 3d 74 82 00 00        	leaq	33396(%rip), %rdi
100001199: e8 3a 7c 00 00              	callq	31802 <dyld_stub_binder+0x100008dd8>
10000119e: 45 84 ff                    	testb	%r15b, %r15b
1000011a1: 0f 84 03 01 00 00           	je	259 <__ZN11ZobristHashC2Ehh+0x1ea>
1000011a7: 4c 8d 25 49 82 00 00        	leaq	33353(%rip), %r12
1000011ae: 31 c9                       	xorl	%ecx, %ecx
1000011b0: 89 4d d4                    	movl	%ecx, -44(%rbp)
1000011b3: 44 0f b6 f1                 	movzbl	%cl, %r14d
1000011b7: 66 41 bd 01 00              	movw	$1, %r13w
1000011bc: 0f 1f 40 00                 	nopl	(%rax)
1000011c0: 41 8d 45 ff                 	leal	-1(%r13), %eax
1000011c4: 48 8b 4b 08                 	movq	8(%rbx), %rcx
1000011c8: 0f b6 c0                    	movzbl	%al, %eax
1000011cb: 0f b6 13                    	movzbl	(%rbx), %edx
1000011ce: 41 0f b7 f6                 	movzwl	%r14w, %esi
1000011d2: 0f af f2                    	imull	%edx, %esi
1000011d5: 01 c6                       	addl	%eax, %esi
1000011d7: 8d 44 76 01                 	leal	1(%rsi,%rsi,2), %eax
1000011db: 0f b7 c0                    	movzwl	%ax, %eax
1000011de: 48 8b 34 c1                 	movq	(%rcx,%rax,8), %rsi
1000011e2: 4c 89 e7                    	movq	%r12, %rdi
1000011e5: 31 c0                       	xorl	%eax, %eax
1000011e7: e8 e0 7b 00 00              	callq	31712 <dyld_stub_binder+0x100008dcc>
1000011ec: 41 0f b7 c5                 	movzwl	%r13w, %eax
1000011f0: 41 ff c5                    	incl	%r13d
1000011f3: 44 39 f8                    	cmpl	%r15d, %eax
1000011f6: 72 c8                       	jb	-56 <__ZN11ZobristHashC2Ehh+0x100>
1000011f8: bf 0a 00 00 00              	movl	$10, %edi
1000011fd: e8 d0 7b 00 00              	callq	31696 <dyld_stub_binder+0x100008dd2>
100001202: 8b 4d d4                    	movl	-44(%rbp), %ecx
100001205: ff c1                       	incl	%ecx
100001207: 0f b7 c1                    	movzwl	%cx, %eax
10000120a: 3b 45 d0                    	cmpl	-48(%rbp), %eax
10000120d: 72 a1                       	jb	-95 <__ZN11ZobristHashC2Ehh+0xf0>
10000120f: 48 8d 3d 04 82 00 00        	leaq	33284(%rip), %rdi
100001216: e8 bd 7b 00 00              	callq	31677 <dyld_stub_binder+0x100008dd8>
10000121b: 45 84 ff                    	testb	%r15b, %r15b
10000121e: 74 6f                       	je	111 <__ZN11ZobristHashC2Ehh+0x1cf>
100001220: 4c 8d 25 d0 81 00 00        	leaq	33232(%rip), %r12
100001227: 31 c9                       	xorl	%ecx, %ecx
100001229: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100001230: 89 4d d4                    	movl	%ecx, -44(%rbp)
100001233: 44 0f b6 f1                 	movzbl	%cl, %r14d
100001237: 66 41 bd 01 00              	movw	$1, %r13w
10000123c: 0f 1f 40 00                 	nopl	(%rax)
100001240: 41 8d 45 ff                 	leal	-1(%r13), %eax
100001244: 48 8b 4b 08                 	movq	8(%rbx), %rcx
100001248: 0f b6 c0                    	movzbl	%al, %eax
10000124b: 0f b6 13                    	movzbl	(%rbx), %edx
10000124e: 41 0f b7 f6                 	movzwl	%r14w, %esi
100001252: 0f af f2                    	imull	%edx, %esi
100001255: 01 c6                       	addl	%eax, %esi
100001257: 8d 44 76 02                 	leal	2(%rsi,%rsi,2), %eax
10000125b: 0f b7 c0                    	movzwl	%ax, %eax
10000125e: 48 8b 34 c1                 	movq	(%rcx,%rax,8), %rsi
100001262: 4c 89 e7                    	movq	%r12, %rdi
100001265: 31 c0                       	xorl	%eax, %eax
100001267: e8 60 7b 00 00              	callq	31584 <dyld_stub_binder+0x100008dcc>
10000126c: 41 0f b7 c5                 	movzwl	%r13w, %eax
100001270: 41 ff c5                    	incl	%r13d
100001273: 44 39 f8                    	cmpl	%r15d, %eax
100001276: 72 c8                       	jb	-56 <__ZN11ZobristHashC2Ehh+0x180>
100001278: bf 0a 00 00 00              	movl	$10, %edi
10000127d: e8 50 7b 00 00              	callq	31568 <dyld_stub_binder+0x100008dd2>
100001282: 8b 4d d4                    	movl	-44(%rbp), %ecx
100001285: ff c1                       	incl	%ecx
100001287: 0f b7 c1                    	movzwl	%cx, %eax
10000128a: 3b 45 d0                    	cmpl	-48(%rbp), %eax
10000128d: 72 a1                       	jb	-95 <__ZN11ZobristHashC2Ehh+0x170>
10000128f: 48 83 c4 08                 	addq	$8, %rsp
100001293: 5b                          	popq	%rbx
100001294: 41 5c                       	popq	%r12
100001296: 41 5d                       	popq	%r13
100001298: 41 5e                       	popq	%r14
10000129a: 41 5f                       	popq	%r15
10000129c: 5d                          	popq	%rbp
10000129d: c3                          	retq
10000129e: 48 8d 3d 68 81 00 00        	leaq	33128(%rip), %rdi
1000012a5: e8 2e 7b 00 00              	callq	31534 <dyld_stub_binder+0x100008dd8>
1000012aa: 48 8d 3d 69 81 00 00        	leaq	33129(%rip), %rdi
1000012b1: 48 83 c4 08                 	addq	$8, %rsp
1000012b5: 5b                          	popq	%rbx
1000012b6: 41 5c                       	popq	%r12
1000012b8: 41 5d                       	popq	%r13
1000012ba: 41 5e                       	popq	%r14
1000012bc: 41 5f                       	popq	%r15
1000012be: 5d                          	popq	%rbp
1000012bf: e9 14 7b 00 00              	jmp	31508 <dyld_stub_binder+0x100008dd8>
1000012c4: 48 b8 73 74 20 68 61 73 68 00       	movabsq	$29400259773887603, %rax
1000012ce: 48 89 05 00 9f 00 00        	movq	%rax, 40704(%rip)
1000012d5: 48 b8 5a 6f 62 72 69 73 74 20       	movabsq	$2338621003239944026, %rax
1000012df: 48 89 05 ea 9e 00 00        	movq	%rax, 40682(%rip)
1000012e6: 48 b8 74 63 68 20 66 6f 72 20       	movabsq	$2338053640979768180, %rax
1000012f0: 48 89 05 d1 9e 00 00        	movq	%rax, 40657(%rip)
1000012f7: 48 b8 20 6d 75 73 74 20 6d 61       	movabsq	$7020303078665841952, %rax
100001301: 48 89 05 b8 9e 00 00        	movq	%rax, 40632(%rip)
100001308: 48 b8 64 20 68 65 69 67 68 74       	movabsq	$8388068008348098660, %rax
100001312: 48 89 05 9f 9e 00 00        	movq	%rax, 40607(%rip)
100001319: 48 b8 77 69 64 74 68 20 61 6e       	movabsq	$7953674049914431863, %rax
100001323: 48 89 05 86 9e 00 00        	movq	%rax, 40582(%rip)
10000132a: 4c 8d 35 7f 9e 00 00        	leaq	40575(%rip), %r14
100001331: bf 10 00 00 00              	movl	$16, %edi
100001336: e8 43 7a 00 00              	callq	31299 <dyld_stub_binder+0x100008d7e>
10000133b: 48 89 c3                    	movq	%rax, %rbx
10000133e: 48 89 c7                    	movq	%rax, %rdi
100001341: 4c 89 f6                    	movq	%r14, %rsi
100001344: e8 b1 79 00 00              	callq	31153 <dyld_stub_binder+0x100008cfa>
100001349: eb 1c                       	jmp	28 <__ZN11ZobristHashC2Ehh+0x2a7>
10000134b: bf 10 00 00 00              	movl	$16, %edi
100001350: e8 29 7a 00 00              	callq	31273 <dyld_stub_binder+0x100008d7e>
100001355: 48 89 c3                    	movq	%rax, %rbx
100001358: 48 8d 35 6a 80 00 00        	leaq	32874(%rip), %rsi
10000135f: 48 89 c7                    	movq	%rax, %rdi
100001362: e8 93 79 00 00              	callq	31123 <dyld_stub_binder+0x100008cfa>
100001367: 48 8b 35 da 8c 00 00        	movq	36058(%rip), %rsi
10000136e: 48 8b 15 93 8c 00 00        	movq	35987(%rip), %rdx
100001375: 48 89 df                    	movq	%rbx, %rdi
100001378: e8 1f 7a 00 00              	callq	31263 <dyld_stub_binder+0x100008d9c>
10000137d: eb 00                       	jmp	0 <__ZN11ZobristHashC2Ehh+0x2bf>
10000137f: 49 89 c6                    	movq	%rax, %r14
100001382: 48 89 df                    	movq	%rbx, %rdi
100001385: e8 0c 7a 00 00              	callq	31244 <dyld_stub_binder+0x100008d96>
10000138a: 4c 89 f7                    	movq	%r14, %rdi
10000138d: e8 50 79 00 00              	callq	31056 <dyld_stub_binder+0x100008ce2>
100001392: 0f 0b                       	ud2
100001394: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000139e: 66 90                       	nop

00000001000013a0 __ZN11ZobristHashC1Ehh:
1000013a0: 55                          	pushq	%rbp
1000013a1: 48 89 e5                    	movq	%rsp, %rbp
1000013a4: 5d                          	popq	%rbp
1000013a5: e9 16 fd ff ff              	jmp	-746 <__ZN11ZobristHashC2Ehh>
1000013aa: 90                          	nop
1000013ab: 90                          	nop
1000013ac: 90                          	nop
1000013ad: 90                          	nop
1000013ae: 90                          	nop
1000013af: 90                          	nop

00000001000013b0 __ZNK2Go6to_idxEhh:
1000013b0: 55                          	pushq	%rbp
1000013b1: 48 89 e5                    	movq	%rsp, %rbp
1000013b4: ff c2                       	incl	%edx
1000013b6: 0f b6 47 08                 	movzbl	8(%rdi), %eax
1000013ba: 83 c0 02                    	addl	$2, %eax
1000013bd: 0f af c2                    	imull	%edx, %eax
1000013c0: 8d 44 06 01                 	leal	1(%rsi,%rax), %eax
1000013c4: 0f b7 c0                    	movzwl	%ax, %eax
1000013c7: 5d                          	popq	%rbp
1000013c8: c3                          	retq
1000013c9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

00000001000013d0 __ZNK2Go6idx_upEt:
1000013d0: 55                          	pushq	%rbp
1000013d1: 48 89 e5                    	movq	%rsp, %rbp
1000013d4: 0f b6 47 08                 	movzbl	8(%rdi), %eax
1000013d8: 29 c6                       	subl	%eax, %esi
1000013da: 83 c6 fe                    	addl	$-2, %esi
1000013dd: 0f b7 c6                    	movzwl	%si, %eax
1000013e0: 5d                          	popq	%rbp
1000013e1: c3                          	retq
1000013e2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000013ec: 0f 1f 40 00                 	nopl	(%rax)

00000001000013f0 __ZNK2Go8idx_downEt:
1000013f0: 55                          	pushq	%rbp
1000013f1: 48 89 e5                    	movq	%rsp, %rbp
1000013f4: 0f b6 47 08                 	movzbl	8(%rdi), %eax
1000013f8: 8d 44 06 02                 	leal	2(%rsi,%rax), %eax
1000013fc: 0f b7 c0                    	movzwl	%ax, %eax
1000013ff: 5d                          	popq	%rbp
100001400: c3                          	retq
100001401: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000140b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001410 __ZNK2Go8idx_leftEt:
100001410: 55                          	pushq	%rbp
100001411: 48 89 e5                    	movq	%rsp, %rbp
100001414: ff ce                       	decl	%esi
100001416: 0f b7 c6                    	movzwl	%si, %eax
100001419: 5d                          	popq	%rbp
10000141a: c3                          	retq
10000141b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001420 __ZNK2Go9idx_rightEt:
100001420: 55                          	pushq	%rbp
100001421: 48 89 e5                    	movq	%rsp, %rbp
100001424: ff c6                       	incl	%esi
100001426: 0f b7 c6                    	movzwl	%si, %eax
100001429: 5d                          	popq	%rbp
10000142a: c3                          	retq
10000142b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001430 __ZNK2Go7idx_strEt:
100001430: 55                          	pushq	%rbp
100001431: 48 89 e5                    	movq	%rsp, %rbp
100001434: 41 57                       	pushq	%r15
100001436: 41 56                       	pushq	%r14
100001438: 41 55                       	pushq	%r13
10000143a: 41 54                       	pushq	%r12
10000143c: 53                          	pushq	%rbx
10000143d: 48 81 ec 28 01 00 00        	subq	$296, %rsp
100001444: 41 89 d4                    	movl	%edx, %r12d
100001447: 49 89 f6                    	movq	%rsi, %r14
10000144a: 48 89 7d c0                 	movq	%rdi, -64(%rbp)
10000144e: 48 8d bd 28 ff ff ff        	leaq	-216(%rbp), %rdi
100001455: 48 8d 9d c0 fe ff ff        	leaq	-320(%rbp), %rbx
10000145c: 48 8b 05 bd 8b 00 00        	movq	35773(%rip), %rax
100001463: 48 8d 48 18                 	leaq	24(%rax), %rcx
100001467: 48 89 8d b8 fe ff ff        	movq	%rcx, -328(%rbp)
10000146e: 48 83 c0 40                 	addq	$64, %rax
100001472: 48 89 85 28 ff ff ff        	movq	%rax, -216(%rbp)
100001479: 48 89 de                    	movq	%rbx, %rsi
10000147c: e8 cd 78 00 00              	callq	30925 <dyld_stub_binder+0x100008d4e>
100001481: 48 c7 45 b0 00 00 00 00     	movq	$0, -80(%rbp)
100001489: c7 45 b8 ff ff ff ff        	movl	$4294967295, -72(%rbp)
100001490: 4c 8b 3d d9 8b 00 00        	movq	35801(%rip), %r15
100001497: 49 8d 47 18                 	leaq	24(%r15), %rax
10000149b: 48 89 45 c8                 	movq	%rax, -56(%rbp)
10000149f: 48 89 85 b8 fe ff ff        	movq	%rax, -328(%rbp)
1000014a6: 49 83 c7 40                 	addq	$64, %r15
1000014aa: 4c 89 bd 28 ff ff ff        	movq	%r15, -216(%rbp)
1000014b1: 48 89 df                    	movq	%rbx, %rdi
1000014b4: e8 77 78 00 00              	callq	30839 <dyld_stub_binder+0x100008d30>
1000014b9: 4c 8b 2d a0 8b 00 00        	movq	35744(%rip), %r13
1000014c0: 49 83 c5 10                 	addq	$16, %r13
1000014c4: 4c 89 ad c0 fe ff ff        	movq	%r13, -320(%rbp)
1000014cb: 48 c7 85 00 ff ff ff 00 00 00 00    	movq	$0, -256(%rbp)
1000014d6: 48 c7 85 08 ff ff ff 00 00 00 00    	movq	$0, -248(%rbp)
1000014e1: 48 c7 85 10 ff ff ff 00 00 00 00    	movq	$0, -240(%rbp)
1000014ec: 48 c7 85 18 ff ff ff 00 00 00 00    	movq	$0, -232(%rbp)
1000014f7: c7 85 20 ff ff ff 10 00 00 00       	movl	$16, -224(%rbp)
100001501: 41 0f b6 4e 08              	movzbl	8(%r14), %ecx
100001506: 83 c1 02                    	addl	$2, %ecx
100001509: 44 89 e0                    	movl	%r12d, %eax
10000150c: 31 d2                       	xorl	%edx, %edx
10000150e: 66 f7 f1                    	divw	%cx
100001511: 89 c3                       	movl	%eax, %ebx
100001513: 0f b7 c2                    	movzwl	%dx, %eax
100001516: 48 8b 0d e3 8a 00 00        	movq	35555(%rip), %rcx
10000151d: 8a 44 08 ff                 	movb	-1(%rax,%rcx), %al
100001521: 88 45 d7                    	movb	%al, -41(%rbp)
100001524: 48 8d bd b8 fe ff ff        	leaq	-328(%rbp), %rdi
10000152b: 48 8d 75 d7                 	leaq	-41(%rbp), %rsi
10000152f: ba 01 00 00 00              	movl	$1, %edx
100001534: e8 87 65 00 00              	callq	25991 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100001539: 0f b7 cb                    	movzwl	%bx, %ecx
10000153c: 41 0f b6 56 09              	movzbl	9(%r14), %edx
100001541: f7 d9                       	negl	%ecx
100001543: 8d 74 0a 01                 	leal	1(%rdx,%rcx), %esi
100001547: 48 89 c7                    	movq	%rax, %rdi
10000154a: e8 cf 77 00 00              	callq	30671 <dyld_stub_binder+0x100008d1e>
10000154f: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100001553: 48 8d b5 c0 fe ff ff        	leaq	-320(%rbp), %rsi
10000155a: e8 21 68 00 00              	callq	26657 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv>
10000155f: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100001563: 48 89 85 b8 fe ff ff        	movq	%rax, -328(%rbp)
10000156a: 4c 89 bd 28 ff ff ff        	movq	%r15, -216(%rbp)
100001571: 4c 89 ad c0 fe ff ff        	movq	%r13, -320(%rbp)
100001578: f6 85 00 ff ff ff 01        	testb	$1, -256(%rbp)
10000157f: 74 0c                       	je	12 <__ZNK2Go7idx_strEt+0x15d>
100001581: 48 8b bd 10 ff ff ff        	movq	-240(%rbp), %rdi
100001588: e8 df 77 00 00              	callq	30687 <dyld_stub_binder+0x100008d6c>
10000158d: 48 8d bd c0 fe ff ff        	leaq	-320(%rbp), %rdi
100001594: e8 9d 77 00 00              	callq	30621 <dyld_stub_binder+0x100008d36>
100001599: 48 8b 35 b0 8a 00 00        	movq	35504(%rip), %rsi
1000015a0: 48 83 c6 08                 	addq	$8, %rsi
1000015a4: 48 8d bd b8 fe ff ff        	leaq	-328(%rbp), %rdi
1000015ab: e8 68 77 00 00              	callq	30568 <dyld_stub_binder+0x100008d18>
1000015b0: 48 8d bd 28 ff ff ff        	leaq	-216(%rbp), %rdi
1000015b7: e8 9e 77 00 00              	callq	30622 <dyld_stub_binder+0x100008d5a>
1000015bc: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000015c0: 48 81 c4 28 01 00 00        	addq	$296, %rsp
1000015c7: 5b                          	popq	%rbx
1000015c8: 41 5c                       	popq	%r12
1000015ca: 41 5d                       	popq	%r13
1000015cc: 41 5e                       	popq	%r14
1000015ce: 41 5f                       	popq	%r15
1000015d0: 5d                          	popq	%rbp
1000015d1: c3                          	retq
1000015d2: 48 89 c3                    	movq	%rax, %rbx
1000015d5: eb 42                       	jmp	66 <__ZNK2Go7idx_strEt+0x1e9>
1000015d7: 48 89 c3                    	movq	%rax, %rbx
1000015da: eb 54                       	jmp	84 <__ZNK2Go7idx_strEt+0x200>
1000015dc: 48 89 c3                    	movq	%rax, %rbx
1000015df: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000015e3: 48 89 85 b8 fe ff ff        	movq	%rax, -328(%rbp)
1000015ea: 4c 89 bd 28 ff ff ff        	movq	%r15, -216(%rbp)
1000015f1: 4c 89 ad c0 fe ff ff        	movq	%r13, -320(%rbp)
1000015f8: f6 85 00 ff ff ff 01        	testb	$1, -256(%rbp)
1000015ff: 74 0c                       	je	12 <__ZNK2Go7idx_strEt+0x1dd>
100001601: 48 8b bd 10 ff ff ff        	movq	-240(%rbp), %rdi
100001608: e8 5f 77 00 00              	callq	30559 <dyld_stub_binder+0x100008d6c>
10000160d: 48 8d bd c0 fe ff ff        	leaq	-320(%rbp), %rdi
100001614: e8 1d 77 00 00              	callq	30493 <dyld_stub_binder+0x100008d36>
100001619: 48 8b 35 30 8a 00 00        	movq	35376(%rip), %rsi
100001620: 48 83 c6 08                 	addq	$8, %rsi
100001624: 48 8d bd b8 fe ff ff        	leaq	-328(%rbp), %rdi
10000162b: e8 e8 76 00 00              	callq	30440 <dyld_stub_binder+0x100008d18>
100001630: 48 8d bd 28 ff ff ff        	leaq	-216(%rbp), %rdi
100001637: e8 1e 77 00 00              	callq	30494 <dyld_stub_binder+0x100008d5a>
10000163c: 48 89 df                    	movq	%rbx, %rdi
10000163f: e8 9e 76 00 00              	callq	30366 <dyld_stub_binder+0x100008ce2>
100001644: 0f 0b                       	ud2
100001646: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100001650 __ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev:
100001650: 55                          	pushq	%rbp
100001651: 48 89 e5                    	movq	%rsp, %rbp
100001654: 41 57                       	pushq	%r15
100001656: 41 56                       	pushq	%r14
100001658: 53                          	pushq	%rbx
100001659: 50                          	pushq	%rax
10000165a: 48 89 fb                    	movq	%rdi, %rbx
10000165d: 48 8b 05 0c 8a 00 00        	movq	35340(%rip), %rax
100001664: 48 8d 48 18                 	leaq	24(%rax), %rcx
100001668: 48 89 0f                    	movq	%rcx, (%rdi)
10000166b: 4c 8d 77 70                 	leaq	112(%rdi), %r14
10000166f: 48 83 c0 40                 	addq	$64, %rax
100001673: 48 89 47 70                 	movq	%rax, 112(%rdi)
100001677: 4c 8d 7f 08                 	leaq	8(%rdi), %r15
10000167b: 48 8b 05 de 89 00 00        	movq	35294(%rip), %rax
100001682: 48 83 c0 10                 	addq	$16, %rax
100001686: 48 89 47 08                 	movq	%rax, 8(%rdi)
10000168a: f6 47 48 01                 	testb	$1, 72(%rdi)
10000168e: 74 09                       	je	9 <__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev+0x49>
100001690: 48 8b 7b 58                 	movq	88(%rbx), %rdi
100001694: e8 d3 76 00 00              	callq	30419 <dyld_stub_binder+0x100008d6c>
100001699: 4c 89 ff                    	movq	%r15, %rdi
10000169c: e8 95 76 00 00              	callq	30357 <dyld_stub_binder+0x100008d36>
1000016a1: 48 8b 35 a8 89 00 00        	movq	35240(%rip), %rsi
1000016a8: 48 83 c6 08                 	addq	$8, %rsi
1000016ac: 48 89 df                    	movq	%rbx, %rdi
1000016af: e8 64 76 00 00              	callq	30308 <dyld_stub_binder+0x100008d18>
1000016b4: 4c 89 f7                    	movq	%r14, %rdi
1000016b7: 48 83 c4 08                 	addq	$8, %rsp
1000016bb: 5b                          	popq	%rbx
1000016bc: 41 5e                       	popq	%r14
1000016be: 41 5f                       	popq	%r15
1000016c0: 5d                          	popq	%rbp
1000016c1: e9 94 76 00 00              	jmp	30356 <dyld_stub_binder+0x100008d5a>
1000016c6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000016d0 __ZNK2Go13color_matchesEt5Color:
1000016d0: 55                          	pushq	%rbp
1000016d1: 48 89 e5                    	movq	%rsp, %rbp
1000016d4: 48 8b 47 38                 	movq	56(%rdi), %rax
1000016d8: 89 f1                       	movl	%esi, %ecx
1000016da: 23 14 c8                    	andl	(%rax,%rcx,8), %edx
1000016dd: f6 c2 03                    	testb	$3, %dl
1000016e0: 0f 95 c0                    	setne	%al
1000016e3: 5d                          	popq	%rbp
1000016e4: c3                          	retq
1000016e5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000016ef: 90                          	nop

00000001000016f0 __ZNK2Go12color_equalsEt5Color:
1000016f0: 55                          	pushq	%rbp
1000016f1: 48 89 e5                    	movq	%rsp, %rbp
1000016f4: 48 8b 47 38                 	movq	56(%rdi), %rax
1000016f8: 89 f1                       	movl	%esi, %ecx
1000016fa: 8b 04 c8                    	movl	(%rax,%rcx,8), %eax
1000016fd: 83 e0 03                    	andl	$3, %eax
100001700: 39 d0                       	cmpl	%edx, %eax
100001702: 0f 94 c0                    	sete	%al
100001705: 5d                          	popq	%rbp
100001706: c3                          	retq
100001707: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100001710 __ZNK2Go10is_libertyEt:
100001710: 55                          	pushq	%rbp
100001711: 48 89 e5                    	movq	%rsp, %rbp
100001714: 48 8b 47 38                 	movq	56(%rdi), %rax
100001718: 89 f1                       	movl	%esi, %ecx
10000171a: f6 04 c8 03                 	testb	$3, (%rax,%rcx,8)
10000171e: 0f 94 c0                    	sete	%al
100001721: 5d                          	popq	%rbp
100001722: c3                          	retq
100001723: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000172d: 0f 1f 00                    	nopl	(%rax)

0000000100001730 __ZNK2Go8is_stoneEt:
100001730: 55                          	pushq	%rbp
100001731: 48 89 e5                    	movq	%rsp, %rbp
100001734: 48 8b 47 38                 	movq	56(%rdi), %rax
100001738: 89 f1                       	movl	%esi, %ecx
10000173a: 8b 0c c8                    	movl	(%rax,%rcx,8), %ecx
10000173d: 89 c8                       	movl	%ecx, %eax
10000173f: d1 e8                       	shrl	%eax
100001741: 31 c8                       	xorl	%ecx, %eax
100001743: 24 01                       	andb	$1, %al
100001745: 5d                          	popq	%rbp
100001746: c3                          	retq
100001747: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100001750 __ZN2Go14mark_free_tileEt:
100001750: 55                          	pushq	%rbp
100001751: 48 89 e5                    	movq	%rsp, %rbp
100001754: 48 8b 47 38                 	movq	56(%rdi), %rax
100001758: 89 f1                       	movl	%esi, %ecx
10000175a: 83 0c c8 03                 	orl	$3, (%rax,%rcx,8)
10000175e: 5d                          	popq	%rbp
10000175f: c3                          	retq

0000000100001760 __ZN2Go16unmark_free_tileEt:
100001760: 55                          	pushq	%rbp
100001761: 48 89 e5                    	movq	%rsp, %rbp
100001764: 48 8b 47 38                 	movq	56(%rdi), %rax
100001768: 89 f1                       	movl	%esi, %ecx
10000176a: 83 24 c8 fc                 	andl	$-4, (%rax,%rcx,8)
10000176e: 5d                          	popq	%rbp
10000176f: c3                          	retq

0000000100001770 __ZNK2Go9is_markedEt:
100001770: 55                          	pushq	%rbp
100001771: 48 89 e5                    	movq	%rsp, %rbp
100001774: 48 8b 47 38                 	movq	56(%rdi), %rax
100001778: 89 f1                       	movl	%esi, %ecx
10000177a: 8b 04 c8                    	movl	(%rax,%rcx,8), %eax
10000177d: 83 e0 03                    	andl	$3, %eax
100001780: 83 f8 03                    	cmpl	$3, %eax
100001783: 0f 94 c0                    	sete	%al
100001786: 5d                          	popq	%rbp
100001787: c3                          	retq
100001788: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100001790 __ZNK2Go11string_sizeEt:
100001790: 55                          	pushq	%rbp
100001791: 48 89 e5                    	movq	%rsp, %rbp
100001794: 48 8b 47 38                 	movq	56(%rdi), %rax
100001798: 48 8b 4f 40                 	movq	64(%rdi), %rcx
10000179c: 89 f2                       	movl	%esi, %edx
10000179e: 8b 04 d0                    	movl	(%rax,%rdx,8), %eax
1000017a1: 83 e0 fc                    	andl	$-4, %eax
1000017a4: 8b 44 c1 14                 	movl	20(%rcx,%rax,8), %eax
1000017a8: 5d                          	popq	%rbp
1000017a9: c3                          	retq
1000017aa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000017b0 __ZNK2Go13num_libertiesEt:
1000017b0: 55                          	pushq	%rbp
1000017b1: 48 89 e5                    	movq	%rsp, %rbp
1000017b4: 48 8b 47 38                 	movq	56(%rdi), %rax
1000017b8: 48 8b 4f 40                 	movq	64(%rdi), %rcx
1000017bc: 89 f2                       	movl	%esi, %edx
1000017be: 8b 04 d0                    	movl	(%rax,%rdx,8), %eax
1000017c1: 83 e0 fc                    	andl	$-4, %eax
1000017c4: 8b 44 c1 18                 	movl	24(%rcx,%rax,8), %eax
1000017c8: 5d                          	popq	%rbp
1000017c9: c3                          	retq
1000017ca: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000017d0 __ZNK2Go18calc_max_n_stringsEv:
1000017d0: 55                          	pushq	%rbp
1000017d1: 48 89 e5                    	movq	%rsp, %rbp
1000017d4: 0f b6 4f 08                 	movzbl	8(%rdi), %ecx
1000017d8: 0f b6 47 09                 	movzbl	9(%rdi), %eax
1000017dc: 0f af c1                    	imull	%ecx, %eax
1000017df: 5d                          	popq	%rbp
1000017e0: c3                          	retq
1000017e1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000017eb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000017f0 __ZN2Go12init_stringsEv:
1000017f0: 55                          	pushq	%rbp
1000017f1: 48 89 e5                    	movq	%rsp, %rbp
1000017f4: c7 47 20 00 00 00 00        	movl	$0, 32(%rdi)
1000017fb: 8b 4f 1c                    	movl	28(%rdi), %ecx
1000017fe: 85 c9                       	testl	%ecx, %ecx
100001800: 74 30                       	je	48 <__ZN2Go12init_stringsEv+0x42>
100001802: b8 14 00 00 00              	movl	$20, %eax
100001807: 31 d2                       	xorl	%edx, %edx
100001809: 41 b8 ff ff ff ff           	movl	$4294967295, %r8d
10000180f: 90                          	nop
100001810: 48 8b 77 40                 	movq	64(%rdi), %rsi
100001814: ff c9                       	decl	%ecx
100001816: 48 39 ca                    	cmpq	%rcx, %rdx
100001819: 48 8d 52 01                 	leaq	1(%rdx), %rdx
10000181d: 89 d1                       	movl	%edx, %ecx
10000181f: 41 0f 44 c8                 	cmovel	%r8d, %ecx
100001823: 89 0c 06                    	movl	%ecx, (%rsi,%rax)
100001826: 8b 4f 1c                    	movl	28(%rdi), %ecx
100001829: 48 83 c0 20                 	addq	$32, %rax
10000182d: 48 39 ca                    	cmpq	%rcx, %rdx
100001830: 72 de                       	jb	-34 <__ZN2Go12init_stringsEv+0x20>
100001832: 5d                          	popq	%rbp
100001833: c3                          	retq
100001834: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000183e: 66 90                       	nop

0000000100001840 __ZN2Go12alloc_stringEv:
100001840: 55                          	pushq	%rbp
100001841: 48 89 e5                    	movq	%rsp, %rbp
100001844: 41 56                       	pushq	%r14
100001846: 53                          	pushq	%rbx
100001847: 48 63 47 20                 	movslq	32(%rdi), %rax
10000184b: 48 83 f8 ff                 	cmpq	$-1, %rax
10000184f: 74 17                       	je	23 <__ZN2Go12alloc_stringEv+0x28>
100001851: 48 8b 4f 40                 	movq	64(%rdi), %rcx
100001855: 48 89 c2                    	movq	%rax, %rdx
100001858: 48 c1 e2 05                 	shlq	$5, %rdx
10000185c: 8b 4c 11 14                 	movl	20(%rcx,%rdx), %ecx
100001860: 89 4f 20                    	movl	%ecx, 32(%rdi)
100001863: 5b                          	popq	%rbx
100001864: 41 5e                       	popq	%r14
100001866: 5d                          	popq	%rbp
100001867: c3                          	retq
100001868: 48 b8 73 74 72 69 6e 67 73 00       	movabsq	$32483346234897523, %rax
100001872: 48 89 05 44 9d 00 00        	movq	%rax, 40260(%rip)
100001879: 48 b8 66 72 65 65 20 73 74 72       	movabsq	$8247343400599515750, %rax
100001883: 48 89 05 2e 9d 00 00        	movq	%rax, 40238(%rip)
10000188a: 48 b8 6e 6f 20 6d 6f 72 65 20       	movabsq	$2334397804759248750, %rax
100001894: 48 89 05 15 9d 00 00        	movq	%rax, 40213(%rip)
10000189b: 4c 8d 35 0e 9d 00 00        	leaq	40206(%rip), %r14
1000018a2: bf 10 00 00 00              	movl	$16, %edi
1000018a7: e8 d2 74 00 00              	callq	29906 <dyld_stub_binder+0x100008d7e>
1000018ac: 48 89 c3                    	movq	%rax, %rbx
1000018af: 48 89 c7                    	movq	%rax, %rdi
1000018b2: 4c 89 f6                    	movq	%r14, %rsi
1000018b5: e8 40 74 00 00              	callq	29760 <dyld_stub_binder+0x100008cfa>
1000018ba: 48 8b 35 87 87 00 00        	movq	34695(%rip), %rsi
1000018c1: 48 8b 15 40 87 00 00        	movq	34624(%rip), %rdx
1000018c8: 48 89 df                    	movq	%rbx, %rdi
1000018cb: e8 cc 74 00 00              	callq	29900 <dyld_stub_binder+0x100008d9c>
1000018d0: 49 89 c6                    	movq	%rax, %r14
1000018d3: 48 89 df                    	movq	%rbx, %rdi
1000018d6: e8 bb 74 00 00              	callq	29883 <dyld_stub_binder+0x100008d96>
1000018db: 4c 89 f7                    	movq	%r14, %rdi
1000018de: e8 ff 73 00 00              	callq	29695 <dyld_stub_binder+0x100008ce2>
1000018e3: 0f 0b                       	ud2
1000018e5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000018ef: 90                          	nop

00000001000018f0 __ZN2Go11free_stringEj:
1000018f0: 55                          	pushq	%rbp
1000018f1: 48 89 e5                    	movq	%rsp, %rbp
1000018f4: 48 8b 47 40                 	movq	64(%rdi), %rax
1000018f8: 89 f1                       	movl	%esi, %ecx
1000018fa: 8b 57 20                    	movl	32(%rdi), %edx
1000018fd: 48 c1 e1 05                 	shlq	$5, %rcx
100001901: 89 54 08 14                 	movl	%edx, 20(%rax,%rcx)
100001905: 89 77 20                    	movl	%esi, 32(%rdi)
100001908: 5d                          	popq	%rbp
100001909: c3                          	retq
10000190a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100001910 __ZN2Go18liberty_list_mergeEPtjS0_jS0_j:
100001910: 55                          	pushq	%rbp
100001911: 48 89 e5                    	movq	%rsp, %rbp
100001914: 41 57                       	pushq	%r15
100001916: 41 56                       	pushq	%r14
100001918: 41 55                       	pushq	%r13
10000191a: 41 54                       	pushq	%r12
10000191c: 53                          	pushq	%rbx
10000191d: 31 db                       	xorl	%ebx, %ebx
10000191f: 85 c9                       	testl	%ecx, %ecx
100001921: 74 78                       	je	120 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x8b>
100001923: 41 ba 00 00 00 00           	movl	$0, %r10d
100001929: b8 00 00 00 00              	movl	$0, %eax
10000192e: 45 85 c9                    	testl	%r9d, %r9d
100001931: 74 62                       	je	98 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x85>
100001933: 31 c0                       	xorl	%eax, %eax
100001935: 45 31 d2                    	xorl	%r10d, %r10d
100001938: 31 db                       	xorl	%ebx, %ebx
10000193a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100001940: 41 89 de                    	movl	%ebx, %r14d
100001943: 46 0f b7 2c 72              	movzwl	(%rdx,%r14,2), %r13d
100001948: 45 89 d3                    	movl	%r10d, %r11d
10000194b: 47 0f b7 24 58              	movzwl	(%r8,%r11,2), %r12d
100001950: 66 45 39 e5                 	cmpw	%r12w, %r13w
100001954: 45 89 e7                    	movl	%r12d, %r15d
100001957: 45 0f 42 fd                 	cmovbl	%r13d, %r15d
10000195b: 39 f0                       	cmpl	%esi, %eax
10000195d: 73 11                       	jae	17 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x60>
10000195f: 89 c3                       	movl	%eax, %ebx
100001961: 66 44 89 3c 5f              	movw	%r15w, (%rdi,%rbx,2)
100001966: 46 0f b7 2c 72              	movzwl	(%rdx,%r14,2), %r13d
10000196b: 47 0f b7 24 58              	movzwl	(%r8,%r11,2), %r12d
100001970: ff c0                       	incl	%eax
100001972: 31 db                       	xorl	%ebx, %ebx
100001974: 66 45 39 fd                 	cmpw	%r15w, %r13w
100001978: 0f 94 c3                    	sete	%bl
10000197b: 44 01 f3                    	addl	%r14d, %ebx
10000197e: 45 31 d2                    	xorl	%r10d, %r10d
100001981: 66 45 39 fc                 	cmpw	%r15w, %r12w
100001985: 41 0f 94 c2                 	sete	%r10b
100001989: 45 01 da                    	addl	%r11d, %r10d
10000198c: 39 cb                       	cmpl	%ecx, %ebx
10000198e: 73 05                       	jae	5 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x85>
100001990: 45 39 ca                    	cmpl	%r9d, %r10d
100001993: 72 ab                       	jb	-85 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x30>
100001995: 39 cb                       	cmpl	%ecx, %ebx
100001997: 72 0b                       	jb	11 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x94>
100001999: eb 36                       	jmp	54 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0xc1>
10000199b: 45 31 d2                    	xorl	%r10d, %r10d
10000199e: 31 c0                       	xorl	%eax, %eax
1000019a0: 39 cb                       	cmpl	%ecx, %ebx
1000019a2: 73 2d                       	jae	45 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0xc1>
1000019a4: 41 89 db                    	movl	%ebx, %r11d
1000019a7: 41 89 ce                    	movl	%ecx, %r14d
1000019aa: 29 d9                       	subl	%ebx, %ecx
1000019ac: 4c 89 db                    	movq	%r11, %rbx
1000019af: 48 f7 d3                    	notq	%rbx
1000019b2: f6 c1 01                    	testb	$1, %cl
1000019b5: 74 15                       	je	21 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0xbc>
1000019b7: 39 f0                       	cmpl	%esi, %eax
1000019b9: 73 0c                       	jae	12 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0xb7>
1000019bb: 46 0f b7 3c 5a              	movzwl	(%rdx,%r11,2), %r15d
1000019c0: 89 c1                       	movl	%eax, %ecx
1000019c2: 66 44 89 3c 4f              	movw	%r15w, (%rdi,%rcx,2)
1000019c7: ff c0                       	incl	%eax
1000019c9: 49 ff c3                    	incq	%r11
1000019cc: 4c 01 f3                    	addq	%r14, %rbx
1000019cf: 75 1a                       	jne	26 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0xdb>
1000019d1: 45 39 ca                    	cmpl	%r9d, %r10d
1000019d4: 72 55                       	jb	85 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x11b>
1000019d6: e9 cb 00 00 00              	jmp	203 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x196>
1000019db: 0f 1f 44 00 00              	nopl	(%rax,%rax)
1000019e0: 49 83 c3 02                 	addq	$2, %r11
1000019e4: ff c0                       	incl	%eax
1000019e6: 4d 39 de                    	cmpq	%r11, %r14
1000019e9: 74 36                       	je	54 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x111>
1000019eb: 89 c1                       	movl	%eax, %ecx
1000019ed: 39 f0                       	cmpl	%esi, %eax
1000019ef: 72 0f                       	jb	15 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0xf0>
1000019f1: 8d 41 01                    	leal	1(%rcx), %eax
1000019f4: 39 f0                       	cmpl	%esi, %eax
1000019f6: 73 e8                       	jae	-24 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0xd0>
1000019f8: eb 18                       	jmp	24 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x102>
1000019fa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100001a00: 42 0f b7 04 5a              	movzwl	(%rdx,%r11,2), %eax
100001a05: 89 cb                       	movl	%ecx, %ebx
100001a07: 66 89 04 5f                 	movw	%ax, (%rdi,%rbx,2)
100001a0b: 8d 41 01                    	leal	1(%rcx), %eax
100001a0e: 39 f0                       	cmpl	%esi, %eax
100001a10: 73 ce                       	jae	-50 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0xd0>
100001a12: 46 0f b7 7c 5a 02           	movzwl	2(%rdx,%r11,2), %r15d
100001a18: 89 c3                       	movl	%eax, %ebx
100001a1a: 66 44 89 3c 5f              	movw	%r15w, (%rdi,%rbx,2)
100001a1f: eb bf                       	jmp	-65 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0xd0>
100001a21: 83 c1 02                    	addl	$2, %ecx
100001a24: 89 c8                       	movl	%ecx, %eax
100001a26: 45 39 ca                    	cmpl	%r9d, %r10d
100001a29: 73 7b                       	jae	123 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x196>
100001a2b: 44 89 d1                    	movl	%r10d, %ecx
100001a2e: 45 89 cb                    	movl	%r9d, %r11d
100001a31: 45 29 d1                    	subl	%r10d, %r9d
100001a34: 49 89 ca                    	movq	%rcx, %r10
100001a37: 49 f7 d2                    	notq	%r10
100001a3a: 41 f6 c1 01                 	testb	$1, %r9b
100001a3e: 74 15                       	je	21 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x145>
100001a40: 39 f0                       	cmpl	%esi, %eax
100001a42: 73 0c                       	jae	12 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x140>
100001a44: 45 0f b7 0c 48              	movzwl	(%r8,%rcx,2), %r9d
100001a49: 89 c3                       	movl	%eax, %ebx
100001a4b: 66 44 89 0c 5f              	movw	%r9w, (%rdi,%rbx,2)
100001a50: ff c0                       	incl	%eax
100001a52: 48 ff c1                    	incq	%rcx
100001a55: 4d 01 da                    	addq	%r11, %r10
100001a58: 75 11                       	jne	17 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x15b>
100001a5a: eb 4a                       	jmp	74 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x196>
100001a5c: 0f 1f 40 00                 	nopl	(%rax)
100001a60: 48 83 c1 02                 	addq	$2, %rcx
100001a64: ff c0                       	incl	%eax
100001a66: 49 39 cb                    	cmpq	%rcx, %r11
100001a69: 74 36                       	je	54 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x191>
100001a6b: 89 c3                       	movl	%eax, %ebx
100001a6d: 39 f0                       	cmpl	%esi, %eax
100001a6f: 72 0f                       	jb	15 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x170>
100001a71: 8d 43 01                    	leal	1(%rbx), %eax
100001a74: 39 f0                       	cmpl	%esi, %eax
100001a76: 73 e8                       	jae	-24 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x150>
100001a78: eb 18                       	jmp	24 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x182>
100001a7a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100001a80: 41 0f b7 04 48              	movzwl	(%r8,%rcx,2), %eax
100001a85: 89 da                       	movl	%ebx, %edx
100001a87: 66 89 04 57                 	movw	%ax, (%rdi,%rdx,2)
100001a8b: 8d 43 01                    	leal	1(%rbx), %eax
100001a8e: 39 f0                       	cmpl	%esi, %eax
100001a90: 73 ce                       	jae	-50 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x150>
100001a92: 45 0f b7 4c 48 02           	movzwl	2(%r8,%rcx,2), %r9d
100001a98: 89 c2                       	movl	%eax, %edx
100001a9a: 66 44 89 0c 57              	movw	%r9w, (%rdi,%rdx,2)
100001a9f: eb bf                       	jmp	-65 <__ZN2Go18liberty_list_mergeEPtjS0_jS0_j+0x150>
100001aa1: 83 c3 02                    	addl	$2, %ebx
100001aa4: 89 d8                       	movl	%ebx, %eax
100001aa6: 5b                          	popq	%rbx
100001aa7: 41 5c                       	popq	%r12
100001aa9: 41 5d                       	popq	%r13
100001aab: 41 5e                       	popq	%r14
100001aad: 41 5f                       	popq	%r15
100001aaf: 5d                          	popq	%rbp
100001ab0: c3                          	retq
100001ab1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001abb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001ac0 __ZN2Go16recompute_stringEj:
100001ac0: 55                          	pushq	%rbp
100001ac1: 48 89 e5                    	movq	%rsp, %rbp
100001ac4: 41 57                       	pushq	%r15
100001ac6: 41 56                       	pushq	%r14
100001ac8: 41 55                       	pushq	%r13
100001aca: 41 54                       	pushq	%r12
100001acc: 53                          	pushq	%rbx
100001acd: 48 83 ec 18                 	subq	$24, %rsp
100001ad1: 48 8b 05 b0 85 00 00        	movq	34224(%rip), %rax
100001ad8: 48 8b 00                    	movq	(%rax), %rax
100001adb: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100001adf: 4c 8b 47 40                 	movq	64(%rdi), %r8
100001ae3: 41 89 f1                    	movl	%esi, %r9d
100001ae6: 49 c1 e1 05                 	shlq	$5, %r9
100001aea: 4f 8d 54 08 1c              	leaq	28(%r8,%r9), %r10
100001aef: 43 0f b7 54 08 1c           	movzwl	28(%r8,%r9), %edx
100001af5: 0f b6 4f 08                 	movzbl	8(%rdi), %ecx
100001af9: 4c 8b 7f 38                 	movq	56(%rdi), %r15
100001afd: 66 b8 ff ff                 	movw	$65535, %ax
100001b01: 45 31 f6                    	xorl	%r14d, %r14d
100001b04: 44 0f b7 d9                 	movzwl	%cx, %r11d
100001b08: eb 29                       	jmp	41 <__ZN2Go16recompute_stringEj+0x73>
100001b0a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100001b10: 41 ff c6                    	incl	%r14d
100001b13: 83 cf 03                    	orl	$3, %edi
100001b16: 41 89 3c df                 	movl	%edi, (%r15,%rbx,8)
100001b1a: 66 41 89 4c df 04           	movw	%cx, 4(%r15,%rbx,8)
100001b20: 0f b7 ca                    	movzwl	%dx, %ecx
100001b23: 41 0f b7 54 cf 04           	movzwl	4(%r15,%rcx,8), %edx
100001b29: 66 41 3b 12                 	cmpw	(%r10), %dx
100001b2d: 0f 84 0b 01 00 00           	je	267 <__ZN2Go16recompute_stringEj+0x17e>
100001b33: 89 d1                       	movl	%edx, %ecx
100001b35: 44 29 d9                    	subl	%r11d, %ecx
100001b38: 83 c1 fe                    	addl	$-2, %ecx
100001b3b: 0f b7 d9                    	movzwl	%cx, %ebx
100001b3e: 41 8b 3c df                 	movl	(%r15,%rbx,8), %edi
100001b42: 40 f6 c7 03                 	testb	$3, %dil
100001b46: 74 08                       	je	8 <__ZN2Go16recompute_stringEj+0x90>
100001b48: 89 c1                       	movl	%eax, %ecx
100001b4a: eb 22                       	jmp	34 <__ZN2Go16recompute_stringEj+0xae>
100001b4c: 0f 1f 40 00                 	nopl	(%rax)
100001b50: 41 83 fe 07                 	cmpl	$7, %r14d
100001b54: 77 08                       	ja	8 <__ZN2Go16recompute_stringEj+0x9e>
100001b56: 44 89 f6                    	movl	%r14d, %esi
100001b59: 66 89 4c 75 c0              	movw	%cx, -64(%rbp,%rsi,2)
100001b5e: 41 ff c6                    	incl	%r14d
100001b61: 83 cf 03                    	orl	$3, %edi
100001b64: 41 89 3c df                 	movl	%edi, (%r15,%rbx,8)
100001b68: 66 41 89 44 df 04           	movw	%ax, 4(%r15,%rbx,8)
100001b6e: 8d 42 ff                    	leal	-1(%rdx), %eax
100001b71: 0f b7 d8                    	movzwl	%ax, %ebx
100001b74: 41 8b 3c df                 	movl	(%r15,%rbx,8), %edi
100001b78: 40 f6 c7 03                 	testb	$3, %dil
100001b7c: 74 12                       	je	18 <__ZN2Go16recompute_stringEj+0xd0>
100001b7e: 89 c8                       	movl	%ecx, %eax
100001b80: eb 2c                       	jmp	44 <__ZN2Go16recompute_stringEj+0xee>
100001b82: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001b8c: 0f 1f 40 00                 	nopl	(%rax)
100001b90: 41 83 fe 07                 	cmpl	$7, %r14d
100001b94: 77 08                       	ja	8 <__ZN2Go16recompute_stringEj+0xde>
100001b96: 44 89 f6                    	movl	%r14d, %esi
100001b99: 66 89 44 75 c0              	movw	%ax, -64(%rbp,%rsi,2)
100001b9e: 41 ff c6                    	incl	%r14d
100001ba1: 83 cf 03                    	orl	$3, %edi
100001ba4: 41 89 3c df                 	movl	%edi, (%r15,%rbx,8)
100001ba8: 66 41 89 4c df 04           	movw	%cx, 4(%r15,%rbx,8)
100001bae: 8d 4a 01                    	leal	1(%rdx), %ecx
100001bb1: 0f b7 d9                    	movzwl	%cx, %ebx
100001bb4: 41 8b 3c df                 	movl	(%r15,%rbx,8), %edi
100001bb8: 40 f6 c7 03                 	testb	$3, %dil
100001bbc: 74 12                       	je	18 <__ZN2Go16recompute_stringEj+0x110>
100001bbe: 89 c1                       	movl	%eax, %ecx
100001bc0: eb 2c                       	jmp	44 <__ZN2Go16recompute_stringEj+0x12e>
100001bc2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001bcc: 0f 1f 40 00                 	nopl	(%rax)
100001bd0: 41 83 fe 07                 	cmpl	$7, %r14d
100001bd4: 77 08                       	ja	8 <__ZN2Go16recompute_stringEj+0x11e>
100001bd6: 44 89 f6                    	movl	%r14d, %esi
100001bd9: 66 89 4c 75 c0              	movw	%cx, -64(%rbp,%rsi,2)
100001bde: 41 ff c6                    	incl	%r14d
100001be1: 83 cf 03                    	orl	$3, %edi
100001be4: 41 89 3c df                 	movl	%edi, (%r15,%rbx,8)
100001be8: 66 41 89 44 df 04           	movw	%ax, 4(%r15,%rbx,8)
100001bee: 42 8d 44 1a 02              	leal	2(%rdx,%r11), %eax
100001bf3: 0f b7 d8                    	movzwl	%ax, %ebx
100001bf6: 41 8b 3c df                 	movl	(%r15,%rbx,8), %edi
100001bfa: 40 f6 c7 03                 	testb	$3, %dil
100001bfe: 74 10                       	je	16 <__ZN2Go16recompute_stringEj+0x150>
100001c00: 89 c8                       	movl	%ecx, %eax
100001c02: e9 19 ff ff ff              	jmp	-231 <__ZN2Go16recompute_stringEj+0x60>
100001c07: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100001c10: 41 83 fe 07                 	cmpl	$7, %r14d
100001c14: 0f 87 f6 fe ff ff           	ja	-266 <__ZN2Go16recompute_stringEj+0x50>
100001c1a: 44 89 f6                    	movl	%r14d, %esi
100001c1d: 66 89 44 75 c0              	movw	%ax, -64(%rbp,%rsi,2)
100001c22: e9 e9 fe ff ff              	jmp	-279 <__ZN2Go16recompute_stringEj+0x50>
100001c27: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100001c30: 0f b7 c0                    	movzwl	%ax, %eax
100001c33: 41 80 24 c7 fc              	andb	$-4, (%r15,%rax,8)
100001c38: 41 0f b7 44 c7 04           	movzwl	4(%r15,%rax,8), %eax
100001c3e: 66 83 f8 ff                 	cmpw	$-1, %ax
100001c42: 75 ec                       	jne	-20 <__ZN2Go16recompute_stringEj+0x170>
100001c44: 47 89 74 08 18              	movl	%r14d, 24(%r8,%r9)
100001c49: 41 83 fe 08                 	cmpl	$8, %r14d
100001c4d: 0f 87 8d 01 00 00           	ja	397 <__ZN2Go16recompute_stringEj+0x320>
100001c53: 8b 75 c0                    	movl	-64(%rbp), %esi
100001c56: 0f b7 4d c2                 	movzwl	-62(%rbp), %ecx
100001c5a: 66 39 ce                    	cmpw	%cx, %si
100001c5d: 41 89 f5                    	movl	%esi, %r13d
100001c60: 44 0f 42 e9                 	cmovbl	%ecx, %r13d
100001c64: 44 8b 5d c4                 	movl	-60(%rbp), %r11d
100001c68: 66 39 f1                    	cmpw	%si, %cx
100001c6b: 0f 42 f1                    	cmovbl	%ecx, %esi
100001c6e: 0f b7 4d c6                 	movzwl	-58(%rbp), %ecx
100001c72: 66 41 39 cb                 	cmpw	%cx, %r11w
100001c76: 44 89 df                    	movl	%r11d, %edi
100001c79: 0f 42 f9                    	cmovbl	%ecx, %edi
100001c7c: 66 44 39 d9                 	cmpw	%r11w, %cx
100001c80: 44 0f 42 d9                 	cmovbl	%ecx, %r11d
100001c84: 8b 5d c8                    	movl	-56(%rbp), %ebx
100001c87: 0f b7 4d ca                 	movzwl	-54(%rbp), %ecx
100001c8b: 66 39 cb                    	cmpw	%cx, %bx
100001c8e: 41 89 de                    	movl	%ebx, %r14d
100001c91: 44 0f 42 f1                 	cmovbl	%ecx, %r14d
100001c95: 66 39 d9                    	cmpw	%bx, %cx
100001c98: 0f 42 d9                    	cmovbl	%ecx, %ebx
100001c9b: 8b 4d cc                    	movl	-52(%rbp), %ecx
100001c9e: 0f b7 45 ce                 	movzwl	-50(%rbp), %eax
100001ca2: 66 39 c1                    	cmpw	%ax, %cx
100001ca5: 89 ca                       	movl	%ecx, %edx
100001ca7: 0f 42 d0                    	cmovbl	%eax, %edx
100001caa: 66 39 c8                    	cmpw	%cx, %ax
100001cad: 0f 42 c8                    	cmovbl	%eax, %ecx
100001cb0: 66 44 39 de                 	cmpw	%r11w, %si
100001cb4: 41 89 f7                    	movl	%esi, %r15d
100001cb7: 45 0f 42 fb                 	cmovbl	%r11d, %r15d
100001cbb: 66 41 39 f3                 	cmpw	%si, %r11w
100001cbf: 44 0f 43 de                 	cmovael	%esi, %r11d
100001cc3: 66 39 cb                    	cmpw	%cx, %bx
100001cc6: 41 89 dc                    	movl	%ebx, %r12d
100001cc9: 44 0f 42 e1                 	cmovbl	%ecx, %r12d
100001ccd: 66 39 d9                    	cmpw	%bx, %cx
100001cd0: 0f 43 cb                    	cmovael	%ebx, %ecx
100001cd3: 66 41 39 fd                 	cmpw	%di, %r13w
100001cd7: 45 89 ea                    	movl	%r13d, %r10d
100001cda: 44 0f 42 d7                 	cmovbl	%edi, %r10d
100001cde: 66 44 39 ef                 	cmpw	%r13w, %di
100001ce2: 41 0f 43 fd                 	cmovael	%r13d, %edi
100001ce6: 66 41 39 d6                 	cmpw	%dx, %r14w
100001cea: 44 89 f0                    	movl	%r14d, %eax
100001ced: 0f 42 c2                    	cmovbl	%edx, %eax
100001cf0: 66 44 39 f2                 	cmpw	%r14w, %dx
100001cf4: 41 0f 43 d6                 	cmovael	%r14d, %edx
100001cf8: 66 44 39 ff                 	cmpw	%r15w, %di
100001cfc: 41 89 fe                    	movl	%edi, %r14d
100001cff: 45 0f 42 f7                 	cmovbl	%r15d, %r14d
100001d03: 66 41 39 ff                 	cmpw	%di, %r15w
100001d07: 41 0f 42 ff                 	cmovbl	%r15d, %edi
100001d0b: 66 44 39 e2                 	cmpw	%r12w, %dx
100001d0f: 89 d6                       	movl	%edx, %esi
100001d11: 41 0f 42 f4                 	cmovbl	%r12d, %esi
100001d15: 66 41 39 d4                 	cmpw	%dx, %r12w
100001d19: 41 0f 42 d4                 	cmovbl	%r12d, %edx
100001d1d: 66 41 39 cb                 	cmpw	%cx, %r11w
100001d21: 44 89 db                    	movl	%r11d, %ebx
100001d24: 0f 42 d9                    	cmovbl	%ecx, %ebx
100001d27: 66 44 39 d9                 	cmpw	%r11w, %cx
100001d2b: 41 0f 43 cb                 	cmovael	%r11d, %ecx
100001d2f: 66 39 d7                    	cmpw	%dx, %di
100001d32: 41 89 fb                    	movl	%edi, %r11d
100001d35: 44 0f 42 da                 	cmovbl	%edx, %r11d
100001d39: 66 39 fa                    	cmpw	%di, %dx
100001d3c: 0f 43 d7                    	cmovael	%edi, %edx
100001d3f: 66 39 da                    	cmpw	%bx, %dx
100001d42: 89 d7                       	movl	%edx, %edi
100001d44: 0f 42 fb                    	cmovbl	%ebx, %edi
100001d47: 66 39 d3                    	cmpw	%dx, %bx
100001d4a: 0f 42 d3                    	cmovbl	%ebx, %edx
100001d4d: 66 41 39 f6                 	cmpw	%si, %r14w
100001d51: 44 89 f3                    	movl	%r14d, %ebx
100001d54: 0f 42 de                    	cmovbl	%esi, %ebx
100001d57: 66 44 39 f6                 	cmpw	%r14w, %si
100001d5b: 41 0f 43 f6                 	cmovael	%r14d, %esi
100001d5f: 66 41 39 c2                 	cmpw	%ax, %r10w
100001d63: 45 89 d6                    	movl	%r10d, %r14d
100001d66: 44 0f 42 f0                 	cmovbl	%eax, %r14d
100001d6a: 66 44 39 d0                 	cmpw	%r10w, %ax
100001d6e: 41 0f 43 c2                 	cmovael	%r10d, %eax
100001d72: 66 89 4d c0                 	movw	%cx, -64(%rbp)
100001d76: 66 39 d8                    	cmpw	%bx, %ax
100001d79: 89 c1                       	movl	%eax, %ecx
100001d7b: 0f 42 cb                    	cmovbl	%ebx, %ecx
100001d7e: 66 89 55 c2                 	movw	%dx, -62(%rbp)
100001d82: 66 39 c3                    	cmpw	%ax, %bx
100001d85: 0f 42 c3                    	cmovbl	%ebx, %eax
100001d88: 66 44 89 75 ce              	movw	%r14w, -50(%rbp)
100001d8d: 66 39 fe                    	cmpw	%di, %si
100001d90: 89 f2                       	movl	%esi, %edx
100001d92: 0f 42 d7                    	cmovbl	%edi, %edx
100001d95: 66 89 4d cc                 	movw	%cx, -52(%rbp)
100001d99: 66 39 f7                    	cmpw	%si, %di
100001d9c: 0f 42 f7                    	cmovbl	%edi, %esi
100001d9f: 66 89 75 c4                 	movw	%si, -60(%rbp)
100001da3: 66 44 39 d8                 	cmpw	%r11w, %ax
100001da7: 89 c1                       	movl	%eax, %ecx
100001da9: 41 0f 42 cb                 	cmovbl	%r11d, %ecx
100001dad: 66 41 39 c3                 	cmpw	%ax, %r11w
100001db1: 41 0f 42 c3                 	cmovbl	%r11d, %eax
100001db5: 66 89 4d ca                 	movw	%cx, -54(%rbp)
100001db9: 66 39 d0                    	cmpw	%dx, %ax
100001dbc: 89 c1                       	movl	%eax, %ecx
100001dbe: 0f 42 ca                    	cmovbl	%edx, %ecx
100001dc1: 66 39 c2                    	cmpw	%ax, %dx
100001dc4: 0f 42 c2                    	cmovbl	%edx, %eax
100001dc7: 66 89 45 c6                 	movw	%ax, -58(%rbp)
100001dcb: 66 89 4d c8                 	movw	%cx, -56(%rbp)
100001dcf: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100001dd3: 4b 89 04 08                 	movq	%rax, (%r8,%r9)
100001dd7: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100001ddb: 4b 89 44 08 08              	movq	%rax, 8(%r8,%r9)
100001de0: 48 8b 05 a1 82 00 00        	movq	33441(%rip), %rax
100001de7: 48 8b 00                    	movq	(%rax), %rax
100001dea: 48 3b 45 d0                 	cmpq	-48(%rbp), %rax
100001dee: 75 0f                       	jne	15 <__ZN2Go16recompute_stringEj+0x33f>
100001df0: 48 83 c4 18                 	addq	$24, %rsp
100001df4: 5b                          	popq	%rbx
100001df5: 41 5c                       	popq	%r12
100001df7: 41 5d                       	popq	%r13
100001df9: 41 5e                       	popq	%r14
100001dfb: 41 5f                       	popq	%r15
100001dfd: 5d                          	popq	%rbp
100001dfe: c3                          	retq
100001dff: e8 a4 6f 00 00              	callq	28580 <dyld_stub_binder+0x100008da8>
100001e04: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001e0e: 66 90                       	nop

0000000100001e10 __ZN2Go12erase_stringEj:
100001e10: 55                          	pushq	%rbp
100001e11: 48 89 e5                    	movq	%rsp, %rbp
100001e14: 41 57                       	pushq	%r15
100001e16: 41 56                       	pushq	%r14
100001e18: 41 55                       	pushq	%r13
100001e1a: 41 54                       	pushq	%r12
100001e1c: 53                          	pushq	%rbx
100001e1d: 50                          	pushq	%rax
100001e1e: 49 89 fc                    	movq	%rdi, %r12
100001e21: 48 8b 47 38                 	movq	56(%rdi), %rax
100001e25: 48 8b 4f 40                 	movq	64(%rdi), %rcx
100001e29: 89 75 d4                    	movl	%esi, -44(%rbp)
100001e2c: 41 89 f5                    	movl	%esi, %r13d
100001e2f: 49 c1 e5 05                 	shlq	$5, %r13
100001e33: 46 8b 7c 29 10              	movl	16(%rcx,%r13), %r15d
100001e38: 4e 8d 74 29 1c              	leaq	28(%rcx,%r13), %r14
100001e3d: 42 0f b7 4c 29 1c           	movzwl	28(%rcx,%r13), %ecx
100001e43: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001e4d: 0f 1f 00                    	nopl	(%rax)
100001e50: 0f b7 d9                    	movzwl	%cx, %ebx
100001e53: 80 24 d8 fc                 	andb	$-4, (%rax,%rbx,8)
100001e57: 4c 89 e7                    	movq	%r12, %rdi
100001e5a: 89 de                       	movl	%ebx, %esi
100001e5c: 44 89 fa                    	movl	%r15d, %edx
100001e5f: e8 3c 00 00 00              	callq	60 <__ZN2Go13add_libertiesEt5Color>
100001e64: 49 8b 44 24 38              	movq	56(%r12), %rax
100001e69: 0f b7 4c d8 04              	movzwl	4(%rax,%rbx,8), %ecx
100001e6e: 66 41 3b 0e                 	cmpw	(%r14), %cx
100001e72: 75 dc                       	jne	-36 <__ZN2Go12erase_stringEj+0x40>
100001e74: 49 8b 44 24 40              	movq	64(%r12), %rax
100001e79: 41 8b 4c 24 20              	movl	32(%r12), %ecx
100001e7e: 42 89 4c 28 14              	movl	%ecx, 20(%rax,%r13)
100001e83: 8b 45 d4                    	movl	-44(%rbp), %eax
100001e86: 41 89 44 24 20              	movl	%eax, 32(%r12)
100001e8b: 48 83 c4 08                 	addq	$8, %rsp
100001e8f: 5b                          	popq	%rbx
100001e90: 41 5c                       	popq	%r12
100001e92: 41 5d                       	popq	%r13
100001e94: 41 5e                       	popq	%r14
100001e96: 41 5f                       	popq	%r15
100001e98: 5d                          	popq	%rbp
100001e99: c3                          	retq
100001e9a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100001ea0 __ZN2Go13add_libertiesEt5Color:
100001ea0: 55                          	pushq	%rbp
100001ea1: 48 89 e5                    	movq	%rsp, %rbp
100001ea4: 41 57                       	pushq	%r15
100001ea6: 41 56                       	pushq	%r14
100001ea8: 41 55                       	pushq	%r13
100001eaa: 41 54                       	pushq	%r12
100001eac: 53                          	pushq	%rbx
100001ead: 0f b6 c2                    	movzbl	%dl, %eax
100001eb0: 41 ba 03 00 00 00           	movl	$3, %r10d
100001eb6: 41 29 c2                    	subl	%eax, %r10d
100001eb9: 0f b6 47 08                 	movzbl	8(%rdi), %eax
100001ebd: f7 d8                       	negl	%eax
100001ebf: 8d 44 06 fe                 	leal	-2(%rsi,%rax), %eax
100001ec3: 48 8b 4f 38                 	movq	56(%rdi), %rcx
100001ec7: 0f b7 c0                    	movzwl	%ax, %eax
100001eca: 44 8b 3c c1                 	movl	(%rcx,%rax,8), %r15d
100001ece: 44 89 f9                    	movl	%r15d, %ecx
100001ed1: 83 e1 03                    	andl	$3, %ecx
100001ed4: 41 b8 ff ff ff ff           	movl	$4294967295, %r8d
100001eda: 41 b9 ff ff ff ff           	movl	$4294967295, %r9d
100001ee0: 44 39 d1                    	cmpl	%r10d, %ecx
100001ee3: 75 7b                       	jne	123 <__ZN2Go13add_libertiesEt5Color+0xc0>
100001ee5: 49 c1 ef 02                 	shrq	$2, %r15
100001ee9: 45 89 f9                    	movl	%r15d, %r9d
100001eec: 4c 8b 67 40                 	movq	64(%rdi), %r12
100001ef0: 49 c1 e7 05                 	shlq	$5, %r15
100001ef4: 4f 8d 5c 3c 18              	leaq	24(%r12,%r15), %r11
100001ef9: 43 8b 5c 3c 18              	movl	24(%r12,%r15), %ebx
100001efe: 83 fb 07                    	cmpl	$7, %ebx
100001f01: 7f 58                       	jg	88 <__ZN2Go13add_libertiesEt5Color+0xbb>
100001f03: 31 d2                       	xorl	%edx, %edx
100001f05: 85 db                       	testl	%ebx, %ebx
100001f07: 7e 1a                       	jle	26 <__ZN2Go13add_libertiesEt5Color+0x83>
100001f09: 4f 8d 34 3c                 	leaq	(%r12,%r15), %r14
100001f0d: 0f 1f 00                    	nopl	(%rax)
100001f10: 0f b6 c2                    	movzbl	%dl, %eax
100001f13: 66 41 39 34 46              	cmpw	%si, (%r14,%rax,2)
100001f18: 73 09                       	jae	9 <__ZN2Go13add_libertiesEt5Color+0x83>
100001f1a: fe c2                       	incb	%dl
100001f1c: 0f b6 c2                    	movzbl	%dl, %eax
100001f1f: 39 c3                       	cmpl	%eax, %ebx
100001f21: 7f ed                       	jg	-19 <__ZN2Go13add_libertiesEt5Color+0x70>
100001f23: 8d 43 01                    	leal	1(%rbx), %eax
100001f26: 41 89 03                    	movl	%eax, (%r11)
100001f29: 0f b6 c2                    	movzbl	%dl, %eax
100001f2c: 39 c3                       	cmpl	%eax, %ebx
100001f2e: 7c 30                       	jl	48 <__ZN2Go13add_libertiesEt5Color+0xc0>
100001f30: 4d 01 fc                    	addq	%r15, %r12
100001f33: 89 f0                       	movl	%esi, %eax
100001f35: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001f3f: 90                          	nop
100001f40: 0f b6 d2                    	movzbl	%dl, %edx
100001f43: 41 0f b7 1c 54              	movzwl	(%r12,%rdx,2), %ebx
100001f48: 66 41 89 04 54              	movw	%ax, (%r12,%rdx,2)
100001f4d: fe c2                       	incb	%dl
100001f4f: 0f b6 ca                    	movzbl	%dl, %ecx
100001f52: 89 d8                       	movl	%ebx, %eax
100001f54: 41 39 0b                    	cmpl	%ecx, (%r11)
100001f57: 7f e7                       	jg	-25 <__ZN2Go13add_libertiesEt5Color+0xa0>
100001f59: eb 05                       	jmp	5 <__ZN2Go13add_libertiesEt5Color+0xc0>
100001f5b: ff c3                       	incl	%ebx
100001f5d: 41 89 1b                    	movl	%ebx, (%r11)
100001f60: 8d 46 ff                    	leal	-1(%rsi), %eax
100001f63: 48 8b 4f 38                 	movq	56(%rdi), %rcx
100001f67: 0f b7 c0                    	movzwl	%ax, %eax
100001f6a: 44 8b 3c c1                 	movl	(%rcx,%rax,8), %r15d
100001f6e: 44 89 f8                    	movl	%r15d, %eax
100001f71: 83 e0 03                    	andl	$3, %eax
100001f74: 44 39 d0                    	cmpl	%r10d, %eax
100001f77: 0f 85 86 00 00 00           	jne	134 <__ZN2Go13add_libertiesEt5Color+0x163>
100001f7d: 49 c1 ef 02                 	shrq	$2, %r15
100001f81: 45 89 c8                    	movl	%r9d, %r8d
100001f84: 45 39 cf                    	cmpl	%r9d, %r15d
100001f87: 74 7a                       	je	122 <__ZN2Go13add_libertiesEt5Color+0x163>
100001f89: 4c 8b 67 40                 	movq	64(%rdi), %r12
100001f8d: 4d 89 fb                    	movq	%r15, %r11
100001f90: 49 c1 e3 05                 	shlq	$5, %r11
100001f94: 4f 8d 44 1c 18              	leaq	24(%r12,%r11), %r8
100001f99: 43 8b 5c 1c 18              	movl	24(%r12,%r11), %ebx
100001f9e: 83 fb 07                    	cmpl	$7, %ebx
100001fa1: 7f 58                       	jg	88 <__ZN2Go13add_libertiesEt5Color+0x15b>
100001fa3: 31 c9                       	xorl	%ecx, %ecx
100001fa5: 85 db                       	testl	%ebx, %ebx
100001fa7: 7e 1a                       	jle	26 <__ZN2Go13add_libertiesEt5Color+0x123>
100001fa9: 4f 8d 34 1c                 	leaq	(%r12,%r11), %r14
100001fad: 0f 1f 00                    	nopl	(%rax)
100001fb0: 0f b6 d1                    	movzbl	%cl, %edx
100001fb3: 66 41 39 34 56              	cmpw	%si, (%r14,%rdx,2)
100001fb8: 73 09                       	jae	9 <__ZN2Go13add_libertiesEt5Color+0x123>
100001fba: fe c1                       	incb	%cl
100001fbc: 0f b6 d1                    	movzbl	%cl, %edx
100001fbf: 39 d3                       	cmpl	%edx, %ebx
100001fc1: 7f ed                       	jg	-19 <__ZN2Go13add_libertiesEt5Color+0x110>
100001fc3: 8d 53 01                    	leal	1(%rbx), %edx
100001fc6: 41 89 10                    	movl	%edx, (%r8)
100001fc9: 0f b6 d1                    	movzbl	%cl, %edx
100001fcc: 39 d3                       	cmpl	%edx, %ebx
100001fce: 7c 30                       	jl	48 <__ZN2Go13add_libertiesEt5Color+0x160>
100001fd0: 4d 01 dc                    	addq	%r11, %r12
100001fd3: 89 f3                       	movl	%esi, %ebx
100001fd5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001fdf: 90                          	nop
100001fe0: 0f b6 c9                    	movzbl	%cl, %ecx
100001fe3: 41 0f b7 14 4c              	movzwl	(%r12,%rcx,2), %edx
100001fe8: 66 41 89 1c 4c              	movw	%bx, (%r12,%rcx,2)
100001fed: fe c1                       	incb	%cl
100001fef: 0f b6 c1                    	movzbl	%cl, %eax
100001ff2: 89 d3                       	movl	%edx, %ebx
100001ff4: 41 39 00                    	cmpl	%eax, (%r8)
100001ff7: 7f e7                       	jg	-25 <__ZN2Go13add_libertiesEt5Color+0x140>
100001ff9: eb 05                       	jmp	5 <__ZN2Go13add_libertiesEt5Color+0x160>
100001ffb: ff c3                       	incl	%ebx
100001ffd: 41 89 18                    	movl	%ebx, (%r8)
100002000: 45 89 f8                    	movl	%r15d, %r8d
100002003: 8d 46 01                    	leal	1(%rsi), %eax
100002006: 48 8b 4f 38                 	movq	56(%rdi), %rcx
10000200a: 0f b7 c0                    	movzwl	%ax, %eax
10000200d: 44 8b 2c c1                 	movl	(%rcx,%rax,8), %r13d
100002011: 44 89 e9                    	movl	%r13d, %ecx
100002014: 83 e1 03                    	andl	$3, %ecx
100002017: b8 ff ff ff ff              	movl	$4294967295, %eax
10000201c: 44 39 d1                    	cmpl	%r10d, %ecx
10000201f: 0f 85 a8 00 00 00           	jne	168 <__ZN2Go13add_libertiesEt5Color+0x22d>
100002025: 49 c1 ed 02                 	shrq	$2, %r13
100002029: 45 39 cd                    	cmpl	%r9d, %r13d
10000202c: 0f 84 89 00 00 00           	je	137 <__ZN2Go13add_libertiesEt5Color+0x21b>
100002032: 45 39 c5                    	cmpl	%r8d, %r13d
100002035: 0f 84 80 00 00 00           	je	128 <__ZN2Go13add_libertiesEt5Color+0x21b>
10000203b: 44 89 45 d4                 	movl	%r8d, -44(%rbp)
10000203f: 4c 8b 47 40                 	movq	64(%rdi), %r8
100002043: 4d 89 ee                    	movq	%r13, %r14
100002046: 49 c1 e6 05                 	shlq	$5, %r14
10000204a: 4f 8d 5c 30 18              	leaq	24(%r8,%r14), %r11
10000204f: 47 8b 64 30 18              	movl	24(%r8,%r14), %r12d
100002054: 41 83 fc 07                 	cmpl	$7, %r12d
100002058: 7f 66                       	jg	102 <__ZN2Go13add_libertiesEt5Color+0x220>
10000205a: 31 c9                       	xorl	%ecx, %ecx
10000205c: 45 85 e4                    	testl	%r12d, %r12d
10000205f: 7e 23                       	jle	35 <__ZN2Go13add_libertiesEt5Color+0x1e4>
100002061: 4f 8d 3c 30                 	leaq	(%r8,%r14), %r15
100002065: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000206f: 90                          	nop
100002070: 0f b6 d9                    	movzbl	%cl, %ebx
100002073: 66 41 39 34 5f              	cmpw	%si, (%r15,%rbx,2)
100002078: 73 0a                       	jae	10 <__ZN2Go13add_libertiesEt5Color+0x1e4>
10000207a: fe c1                       	incb	%cl
10000207c: 0f b6 d9                    	movzbl	%cl, %ebx
10000207f: 41 39 dc                    	cmpl	%ebx, %r12d
100002082: 7f ec                       	jg	-20 <__ZN2Go13add_libertiesEt5Color+0x1d0>
100002084: 41 8d 5c 24 01              	leal	1(%r12), %ebx
100002089: 41 89 1b                    	movl	%ebx, (%r11)
10000208c: 0f b6 d9                    	movzbl	%cl, %ebx
10000208f: 41 39 dc                    	cmpl	%ebx, %r12d
100002092: 7c 32                       	jl	50 <__ZN2Go13add_libertiesEt5Color+0x226>
100002094: 4d 01 f0                    	addq	%r14, %r8
100002097: 89 f3                       	movl	%esi, %ebx
100002099: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000020a0: 0f b6 c9                    	movzbl	%cl, %ecx
1000020a3: 41 0f b7 14 48              	movzwl	(%r8,%rcx,2), %edx
1000020a8: 66 41 89 1c 48              	movw	%bx, (%r8,%rcx,2)
1000020ad: fe c1                       	incb	%cl
1000020af: 0f b6 c1                    	movzbl	%cl, %eax
1000020b2: 89 d3                       	movl	%edx, %ebx
1000020b4: 41 39 03                    	cmpl	%eax, (%r11)
1000020b7: 7f e7                       	jg	-25 <__ZN2Go13add_libertiesEt5Color+0x200>
1000020b9: eb 0b                       	jmp	11 <__ZN2Go13add_libertiesEt5Color+0x226>
1000020bb: 44 89 e8                    	movl	%r13d, %eax
1000020be: eb 0d                       	jmp	13 <__ZN2Go13add_libertiesEt5Color+0x22d>
1000020c0: 41 ff c4                    	incl	%r12d
1000020c3: 45 89 23                    	movl	%r12d, (%r11)
1000020c6: 44 89 e8                    	movl	%r13d, %eax
1000020c9: 44 8b 45 d4                 	movl	-44(%rbp), %r8d
1000020cd: 0f b6 4f 08                 	movzbl	8(%rdi), %ecx
1000020d1: 8d 4c 0e 02                 	leal	2(%rsi,%rcx), %ecx
1000020d5: 48 8b 57 38                 	movq	56(%rdi), %rdx
1000020d9: 0f b7 c9                    	movzwl	%cx, %ecx
1000020dc: 8b 14 ca                    	movl	(%rdx,%rcx,8), %edx
1000020df: 89 d1                       	movl	%edx, %ecx
1000020e1: 83 e1 03                    	andl	$3, %ecx
1000020e4: 44 39 d1                    	cmpl	%r10d, %ecx
1000020e7: 0f 85 94 00 00 00           	jne	148 <__ZN2Go13add_libertiesEt5Color+0x2e1>
1000020ed: 48 c1 ea 02                 	shrq	$2, %rdx
1000020f1: 39 c2                       	cmpl	%eax, %edx
1000020f3: 0f 84 88 00 00 00           	je	136 <__ZN2Go13add_libertiesEt5Color+0x2e1>
1000020f9: 44 39 ca                    	cmpl	%r9d, %edx
1000020fc: 0f 84 7f 00 00 00           	je	127 <__ZN2Go13add_libertiesEt5Color+0x2e1>
100002102: 44 39 c2                    	cmpl	%r8d, %edx
100002105: 74 7a                       	je	122 <__ZN2Go13add_libertiesEt5Color+0x2e1>
100002107: 48 8b 4f 40                 	movq	64(%rdi), %rcx
10000210b: 48 c1 e2 05                 	shlq	$5, %rdx
10000210f: 4c 8d 44 11 18              	leaq	24(%rcx,%rdx), %r8
100002114: 8b 5c 11 18                 	movl	24(%rcx,%rdx), %ebx
100002118: 83 fb 07                    	cmpl	$7, %ebx
10000211b: 7f 5f                       	jg	95 <__ZN2Go13add_libertiesEt5Color+0x2dc>
10000211d: 31 ff                       	xorl	%edi, %edi
10000211f: 85 db                       	testl	%ebx, %ebx
100002121: 7e 23                       	jle	35 <__ZN2Go13add_libertiesEt5Color+0x2a6>
100002123: 4c 8d 0c 11                 	leaq	(%rcx,%rdx), %r9
100002127: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100002130: 40 0f b6 c7                 	movzbl	%dil, %eax
100002134: 66 41 39 34 41              	cmpw	%si, (%r9,%rax,2)
100002139: 73 0b                       	jae	11 <__ZN2Go13add_libertiesEt5Color+0x2a6>
10000213b: 40 fe c7                    	incb	%dil
10000213e: 40 0f b6 c7                 	movzbl	%dil, %eax
100002142: 39 c3                       	cmpl	%eax, %ebx
100002144: 7f ea                       	jg	-22 <__ZN2Go13add_libertiesEt5Color+0x290>
100002146: 8d 43 01                    	leal	1(%rbx), %eax
100002149: 41 89 00                    	movl	%eax, (%r8)
10000214c: 40 0f b6 c7                 	movzbl	%dil, %eax
100002150: 39 c3                       	cmpl	%eax, %ebx
100002152: 7c 2d                       	jl	45 <__ZN2Go13add_libertiesEt5Color+0x2e1>
100002154: 48 01 d1                    	addq	%rdx, %rcx
100002157: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100002160: 40 0f b6 ff                 	movzbl	%dil, %edi
100002164: 0f b7 04 79                 	movzwl	(%rcx,%rdi,2), %eax
100002168: 66 89 34 79                 	movw	%si, (%rcx,%rdi,2)
10000216c: 40 fe c7                    	incb	%dil
10000216f: 40 0f b6 d7                 	movzbl	%dil, %edx
100002173: 89 c6                       	movl	%eax, %esi
100002175: 41 39 10                    	cmpl	%edx, (%r8)
100002178: 7f e6                       	jg	-26 <__ZN2Go13add_libertiesEt5Color+0x2c0>
10000217a: eb 05                       	jmp	5 <__ZN2Go13add_libertiesEt5Color+0x2e1>
10000217c: ff c3                       	incl	%ebx
10000217e: 41 89 18                    	movl	%ebx, (%r8)
100002181: 5b                          	popq	%rbx
100002182: 41 5c                       	popq	%r12
100002184: 41 5d                       	popq	%r13
100002186: 41 5e                       	popq	%r14
100002188: 41 5f                       	popq	%r15
10000218a: 5d                          	popq	%rbp
10000218b: c3                          	retq
10000218c: 0f 1f 40 00                 	nopl	(%rax)

0000000100002190 __ZN2Go14remove_libertyEjt:
100002190: 55                          	pushq	%rbp
100002191: 48 89 e5                    	movq	%rsp, %rbp
100002194: 48 8b 47 40                 	movq	64(%rdi), %rax
100002198: 41 89 f1                    	movl	%esi, %r9d
10000219b: 49 c1 e1 05                 	shlq	$5, %r9
10000219f: 46 8b 44 08 18              	movl	24(%rax,%r9), %r8d
1000021a4: 41 83 f8 09                 	cmpl	$9, %r8d
1000021a8: 75 06                       	jne	6 <__ZN2Go14remove_libertyEjt+0x20>
1000021aa: 5d                          	popq	%rbp
1000021ab: e9 10 f9 ff ff              	jmp	-1776 <__ZN2Go16recompute_stringEj>
1000021b0: 4a 8d 7c 08 18              	leaq	24(%rax,%r9), %rdi
1000021b5: 41 83 f8 08                 	cmpl	$8, %r8d
1000021b9: 7f 40                       	jg	64 <__ZN2Go14remove_libertyEjt+0x6b>
1000021bb: b1 ff                       	movb	$-1, %cl
1000021bd: 4c 01 c8                    	addq	%r9, %rax
1000021c0: fe c1                       	incb	%cl
1000021c2: 0f b6 f1                    	movzbl	%cl, %esi
1000021c5: 66 39 14 70                 	cmpw	%dx, (%rax,%rsi,2)
1000021c9: 75 f5                       	jne	-11 <__ZN2Go14remove_libertyEjt+0x30>
1000021cb: 41 ff c8                    	decl	%r8d
1000021ce: 44 89 07                    	movl	%r8d, (%rdi)
1000021d1: 41 39 f0                    	cmpl	%esi, %r8d
1000021d4: 7e 23                       	jle	35 <__ZN2Go14remove_libertyEjt+0x69>
1000021d6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000021e0: 89 f1                       	movl	%esi, %ecx
1000021e2: 0f b7 4c 48 02              	movzwl	2(%rax,%rcx,2), %ecx
1000021e7: 40 0f b6 d6                 	movzbl	%sil, %edx
1000021eb: 66 89 0c 50                 	movw	%cx, (%rax,%rdx,2)
1000021ef: 8d 4e 01                    	leal	1(%rsi), %ecx
1000021f2: 0f b6 f1                    	movzbl	%cl, %esi
1000021f5: 39 37                       	cmpl	%esi, (%rdi)
1000021f7: 7f e7                       	jg	-25 <__ZN2Go14remove_libertyEjt+0x50>
1000021f9: 5d                          	popq	%rbp
1000021fa: c3                          	retq
1000021fb: 41 ff c8                    	decl	%r8d
1000021fe: 44 89 07                    	movl	%r8d, (%rdi)
100002201: 5d                          	popq	%rbp
100002202: c3                          	retq
100002203: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000220d: 0f 1f 00                    	nopl	(%rax)

0000000100002210 __ZN2Go11add_libertyEjt:
100002210: 55                          	pushq	%rbp
100002211: 48 89 e5                    	movq	%rsp, %rbp
100002214: 48 8b 47 40                 	movq	64(%rdi), %rax
100002218: 41 89 f0                    	movl	%esi, %r8d
10000221b: 49 c1 e0 05                 	shlq	$5, %r8
10000221f: 4e 8d 4c 00 18              	leaq	24(%rax,%r8), %r9
100002224: 42 8b 7c 00 18              	movl	24(%rax,%r8), %edi
100002229: 83 ff 07                    	cmpl	$7, %edi
10000222c: 7f 5e                       	jg	94 <__ZN2Go11add_libertyEjt+0x7c>
10000222e: 31 f6                       	xorl	%esi, %esi
100002230: 85 ff                       	testl	%edi, %edi
100002232: 7e 22                       	jle	34 <__ZN2Go11add_libertyEjt+0x46>
100002234: 4e 8d 14 00                 	leaq	(%rax,%r8), %r10
100002238: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100002240: 40 0f b6 ce                 	movzbl	%sil, %ecx
100002244: 66 41 39 14 4a              	cmpw	%dx, (%r10,%rcx,2)
100002249: 73 0b                       	jae	11 <__ZN2Go11add_libertyEjt+0x46>
10000224b: 40 fe c6                    	incb	%sil
10000224e: 40 0f b6 ce                 	movzbl	%sil, %ecx
100002252: 39 cf                       	cmpl	%ecx, %edi
100002254: 7f ea                       	jg	-22 <__ZN2Go11add_libertyEjt+0x30>
100002256: 8d 4f 01                    	leal	1(%rdi), %ecx
100002259: 41 89 09                    	movl	%ecx, (%r9)
10000225c: 40 0f b6 ce                 	movzbl	%sil, %ecx
100002260: 39 cf                       	cmpl	%ecx, %edi
100002262: 7c 26                       	jl	38 <__ZN2Go11add_libertyEjt+0x7a>
100002264: 4c 01 c0                    	addq	%r8, %rax
100002267: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100002270: 40 0f b6 f6                 	movzbl	%sil, %esi
100002274: 0f b7 0c 70                 	movzwl	(%rax,%rsi,2), %ecx
100002278: 66 89 14 70                 	movw	%dx, (%rax,%rsi,2)
10000227c: 40 fe c6                    	incb	%sil
10000227f: 40 0f b6 fe                 	movzbl	%sil, %edi
100002283: 89 ca                       	movl	%ecx, %edx
100002285: 41 39 39                    	cmpl	%edi, (%r9)
100002288: 7f e6                       	jg	-26 <__ZN2Go11add_libertyEjt+0x60>
10000228a: 5d                          	popq	%rbp
10000228b: c3                          	retq
10000228c: ff c7                       	incl	%edi
10000228e: 41 89 39                    	movl	%edi, (%r9)
100002291: 5d                          	popq	%rbp
100002292: c3                          	retq
100002293: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000229d: 0f 1f 00                    	nopl	(%rax)

00000001000022a0 __ZN2Go18subtract_libertiesEt5Color:
1000022a0: 55                          	pushq	%rbp
1000022a1: 48 89 e5                    	movq	%rsp, %rbp
1000022a4: 41 57                       	pushq	%r15
1000022a6: 41 56                       	pushq	%r14
1000022a8: 41 55                       	pushq	%r13
1000022aa: 41 54                       	pushq	%r12
1000022ac: 53                          	pushq	%rbx
1000022ad: 48 83 ec 28                 	subq	$40, %rsp
1000022b1: 89 f3                       	movl	%esi, %ebx
1000022b3: 49 89 ff                    	movq	%rdi, %r15
1000022b6: 0f b6 c2                    	movzbl	%dl, %eax
1000022b9: 41 b8 03 00 00 00           	movl	$3, %r8d
1000022bf: 41 29 c0                    	subl	%eax, %r8d
1000022c2: 0f b6 47 08                 	movzbl	8(%rdi), %eax
1000022c6: f7 d8                       	negl	%eax
1000022c8: 8d 4c 03 fe                 	leal	-2(%rbx,%rax), %ecx
1000022cc: 48 8b 47 38                 	movq	56(%rdi), %rax
1000022d0: 44 0f b7 f1                 	movzwl	%cx, %r14d
1000022d4: 46 8b 2c f0                 	movl	(%rax,%r14,8), %r13d
1000022d8: 44 89 e9                    	movl	%r13d, %ecx
1000022db: d1 e9                       	shrl	%ecx
1000022dd: 44 31 e9                    	xorl	%r13d, %ecx
1000022e0: 41 ba ff ff ff ff           	movl	$4294967295, %r10d
1000022e6: 41 b9 ff ff ff ff           	movl	$4294967295, %r9d
1000022ec: f6 c1 01                    	testb	$1, %cl
1000022ef: 0f 84 1b 01 00 00           	je	283 <__ZN2Go18subtract_libertiesEt5Color+0x170>
1000022f5: 49 c1 ed 02                 	shrq	$2, %r13
1000022f9: 44 89 ee                    	movl	%r13d, %esi
1000022fc: 49 8b 47 40                 	movq	64(%r15), %rax
100002300: 49 c1 e5 05                 	shlq	$5, %r13
100002304: 42 8b 4c 28 18              	movl	24(%rax,%r13), %ecx
100002309: 83 f9 09                    	cmpl	$9, %ecx
10000230c: 89 75 d0                    	movl	%esi, -48(%rbp)
10000230f: 75 16                       	jne	22 <__ZN2Go18subtract_libertiesEt5Color+0x87>
100002311: 4c 89 ff                    	movq	%r15, %rdi
100002314: 45 89 c4                    	movl	%r8d, %r12d
100002317: e8 a4 f7 ff ff              	callq	-2140 <__ZN2Go16recompute_stringEj>
10000231c: 41 ba ff ff ff ff           	movl	$4294967295, %r10d
100002322: 45 89 e0                    	movl	%r12d, %r8d
100002325: eb 5c                       	jmp	92 <__ZN2Go18subtract_libertiesEt5Color+0xe3>
100002327: 4e 8d 4c 28 18              	leaq	24(%rax,%r13), %r9
10000232c: 83 f9 08                    	cmpl	$8, %ecx
10000232f: 7f 4d                       	jg	77 <__ZN2Go18subtract_libertiesEt5Color+0xde>
100002331: 31 d2                       	xorl	%edx, %edx
100002333: 4c 01 e8                    	addq	%r13, %rax
100002336: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002340: 0f b6 fa                    	movzbl	%dl, %edi
100002343: 89 fa                       	movl	%edi, %edx
100002345: fe c2                       	incb	%dl
100002347: 66 39 1c 78                 	cmpw	%bx, (%rax,%rdi,2)
10000234b: 75 f3                       	jne	-13 <__ZN2Go18subtract_libertiesEt5Color+0xa0>
10000234d: ff c9                       	decl	%ecx
10000234f: 41 89 09                    	movl	%ecx, (%r9)
100002352: 8d 7a ff                    	leal	-1(%rdx), %edi
100002355: 40 0f b6 ff                 	movzbl	%dil, %edi
100002359: 39 f9                       	cmpl	%edi, %ecx
10000235b: 7e 26                       	jle	38 <__ZN2Go18subtract_libertiesEt5Color+0xe3>
10000235d: 0f 1f 00                    	nopl	(%rax)
100002360: 8d 72 ff                    	leal	-1(%rdx), %esi
100002363: 89 ff                       	movl	%edi, %edi
100002365: 0f b7 7c 78 02              	movzwl	2(%rax,%rdi,2), %edi
10000236a: 40 0f b6 f6                 	movzbl	%sil, %esi
10000236e: 66 89 3c 70                 	movw	%di, (%rax,%rsi,2)
100002372: 0f b6 fa                    	movzbl	%dl, %edi
100002375: fe c2                       	incb	%dl
100002377: 41 39 39                    	cmpl	%edi, (%r9)
10000237a: 7f e4                       	jg	-28 <__ZN2Go18subtract_libertiesEt5Color+0xc0>
10000237c: eb 05                       	jmp	5 <__ZN2Go18subtract_libertiesEt5Color+0xe3>
10000237e: ff c9                       	decl	%ecx
100002380: 41 89 09                    	movl	%ecx, (%r9)
100002383: 49 8b 47 38                 	movq	56(%r15), %rax
100002387: 42 8b 0c f0                 	movl	(%rax,%r14,8), %ecx
10000238b: 83 e1 03                    	andl	$3, %ecx
10000238e: 44 39 c1                    	cmpl	%r8d, %ecx
100002391: 75 79                       	jne	121 <__ZN2Go18subtract_libertiesEt5Color+0x16c>
100002393: 49 8b 4f 40                 	movq	64(%r15), %rcx
100002397: 42 83 7c 29 18 00           	cmpl	$0, 24(%rcx,%r13)
10000239d: 44 8b 4d d0                 	movl	-48(%rbp), %r9d
1000023a1: 75 6d                       	jne	109 <__ZN2Go18subtract_libertiesEt5Color+0x170>
1000023a3: 48 89 5d c0                 	movq	%rbx, -64(%rbp)
1000023a7: 44 89 45 cc                 	movl	%r8d, -52(%rbp)
1000023ab: 46 8b 64 29 10              	movl	16(%rcx,%r13), %r12d
1000023b0: 4e 8d 74 29 1c              	leaq	28(%rcx,%r13), %r14
1000023b5: 42 0f b7 4c 29 1c           	movzwl	28(%rcx,%r13), %ecx
1000023bb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
1000023c0: 0f b7 d9                    	movzwl	%cx, %ebx
1000023c3: 80 24 d8 fc                 	andb	$-4, (%rax,%rbx,8)
1000023c7: 4c 89 ff                    	movq	%r15, %rdi
1000023ca: 89 de                       	movl	%ebx, %esi
1000023cc: 44 89 e2                    	movl	%r12d, %edx
1000023cf: e8 cc fa ff ff              	callq	-1332 <__ZN2Go13add_libertiesEt5Color>
1000023d4: 49 8b 47 38                 	movq	56(%r15), %rax
1000023d8: 0f b7 4c d8 04              	movzwl	4(%rax,%rbx,8), %ecx
1000023dd: 66 41 3b 0e                 	cmpw	(%r14), %cx
1000023e1: 75 dd                       	jne	-35 <__ZN2Go18subtract_libertiesEt5Color+0x120>
1000023e3: 49 8b 47 40                 	movq	64(%r15), %rax
1000023e7: 41 8b 4f 20                 	movl	32(%r15), %ecx
1000023eb: 42 89 4c 28 14              	movl	%ecx, 20(%rax,%r13)
1000023f0: 44 8b 4d d0                 	movl	-48(%rbp), %r9d
1000023f4: 45 89 4f 20                 	movl	%r9d, 32(%r15)
1000023f8: 49 8b 47 38                 	movq	56(%r15), %rax
1000023fc: 44 8b 45 cc                 	movl	-52(%rbp), %r8d
100002400: 48 8b 5d c0                 	movq	-64(%rbp), %rbx
100002404: 41 ba ff ff ff ff           	movl	$4294967295, %r10d
10000240a: eb 04                       	jmp	4 <__ZN2Go18subtract_libertiesEt5Color+0x170>
10000240c: 44 8b 4d d0                 	movl	-48(%rbp), %r9d
100002410: 8d 4b ff                    	leal	-1(%rbx), %ecx
100002413: 44 0f b7 f1                 	movzwl	%cx, %r14d
100002417: 46 8b 24 f0                 	movl	(%rax,%r14,8), %r12d
10000241b: 44 89 e1                    	movl	%r12d, %ecx
10000241e: d1 e9                       	shrl	%ecx
100002420: 44 31 e1                    	xorl	%r12d, %ecx
100002423: f6 c1 01                    	testb	$1, %cl
100002426: 0f 84 3e 01 00 00           	je	318 <__ZN2Go18subtract_libertiesEt5Color+0x2ca>
10000242c: 49 c1 ec 02                 	shrq	$2, %r12
100002430: 45 89 ca                    	movl	%r9d, %r10d
100002433: 45 39 cc                    	cmpl	%r9d, %r12d
100002436: 0f 84 2e 01 00 00           	je	302 <__ZN2Go18subtract_libertiesEt5Color+0x2ca>
10000243c: 49 8b 47 40                 	movq	64(%r15), %rax
100002440: 4d 89 e2                    	movq	%r12, %r10
100002443: 49 c1 e2 05                 	shlq	$5, %r10
100002447: 42 8b 74 10 18              	movl	24(%rax,%r10), %esi
10000244c: 83 fe 09                    	cmpl	$9, %esi
10000244f: 75 29                       	jne	41 <__ZN2Go18subtract_libertiesEt5Color+0x1da>
100002451: 4c 89 ff                    	movq	%r15, %rdi
100002454: 44 89 e6                    	movl	%r12d, %esi
100002457: 48 89 5d c0                 	movq	%rbx, -64(%rbp)
10000245b: 45 89 c5                    	movl	%r8d, %r13d
10000245e: 44 89 4d d0                 	movl	%r9d, -48(%rbp)
100002462: 4c 89 d3                    	movq	%r10, %rbx
100002465: e8 56 f6 ff ff              	callq	-2474 <__ZN2Go16recompute_stringEj>
10000246a: 49 89 da                    	movq	%rbx, %r10
10000246d: 44 8b 4d d0                 	movl	-48(%rbp), %r9d
100002471: 45 89 e8                    	movl	%r13d, %r8d
100002474: 48 8b 5d c0                 	movq	-64(%rbp), %rbx
100002478: eb 57                       	jmp	87 <__ZN2Go18subtract_libertiesEt5Color+0x231>
10000247a: 4a 8d 4c 10 18              	leaq	24(%rax,%r10), %rcx
10000247f: 83 fe 08                    	cmpl	$8, %esi
100002482: 7f 49                       	jg	73 <__ZN2Go18subtract_libertiesEt5Color+0x22d>
100002484: 31 d2                       	xorl	%edx, %edx
100002486: 4c 01 d0                    	addq	%r10, %rax
100002489: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100002490: 0f b6 fa                    	movzbl	%dl, %edi
100002493: 89 fa                       	movl	%edi, %edx
100002495: fe c2                       	incb	%dl
100002497: 66 39 1c 78                 	cmpw	%bx, (%rax,%rdi,2)
10000249b: 75 f3                       	jne	-13 <__ZN2Go18subtract_libertiesEt5Color+0x1f0>
10000249d: ff ce                       	decl	%esi
10000249f: 89 31                       	movl	%esi, (%rcx)
1000024a1: 8d 7a ff                    	leal	-1(%rdx), %edi
1000024a4: 40 0f b6 ff                 	movzbl	%dil, %edi
1000024a8: 39 fe                       	cmpl	%edi, %esi
1000024aa: 7e 25                       	jle	37 <__ZN2Go18subtract_libertiesEt5Color+0x231>
1000024ac: 0f 1f 40 00                 	nopl	(%rax)
1000024b0: 8d 72 ff                    	leal	-1(%rdx), %esi
1000024b3: 89 ff                       	movl	%edi, %edi
1000024b5: 0f b7 7c 78 02              	movzwl	2(%rax,%rdi,2), %edi
1000024ba: 40 0f b6 f6                 	movzbl	%sil, %esi
1000024be: 66 89 3c 70                 	movw	%di, (%rax,%rsi,2)
1000024c2: 0f b6 fa                    	movzbl	%dl, %edi
1000024c5: fe c2                       	incb	%dl
1000024c7: 39 39                       	cmpl	%edi, (%rcx)
1000024c9: 7f e5                       	jg	-27 <__ZN2Go18subtract_libertiesEt5Color+0x210>
1000024cb: eb 04                       	jmp	4 <__ZN2Go18subtract_libertiesEt5Color+0x231>
1000024cd: ff ce                       	decl	%esi
1000024cf: 89 31                       	movl	%esi, (%rcx)
1000024d1: 49 8b 47 38                 	movq	56(%r15), %rax
1000024d5: 42 8b 0c f0                 	movl	(%rax,%r14,8), %ecx
1000024d9: 83 e1 03                    	andl	$3, %ecx
1000024dc: 44 39 c1                    	cmpl	%r8d, %ecx
1000024df: 75 0c                       	jne	12 <__ZN2Go18subtract_libertiesEt5Color+0x24d>
1000024e1: 49 8b 4f 40                 	movq	64(%r15), %rcx
1000024e5: 42 83 7c 11 18 00           	cmpl	$0, 24(%rcx,%r10)
1000024eb: 74 05                       	je	5 <__ZN2Go18subtract_libertiesEt5Color+0x252>
1000024ed: 45 89 e2                    	movl	%r12d, %r10d
1000024f0: eb 78                       	jmp	120 <__ZN2Go18subtract_libertiesEt5Color+0x2ca>
1000024f2: 44 89 4d d0                 	movl	%r9d, -48(%rbp)
1000024f6: 48 89 5d c0                 	movq	%rbx, -64(%rbp)
1000024fa: 44 89 45 cc                 	movl	%r8d, -52(%rbp)
1000024fe: 46 8b 6c 11 10              	movl	16(%rcx,%r10), %r13d
100002503: 4e 8d 74 11 1c              	leaq	28(%rcx,%r10), %r14
100002508: 4c 89 55 b8                 	movq	%r10, -72(%rbp)
10000250c: 42 0f b7 4c 11 1c           	movzwl	28(%rcx,%r10), %ecx
100002512: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000251c: 0f 1f 40 00                 	nopl	(%rax)
100002520: 0f b7 d9                    	movzwl	%cx, %ebx
100002523: 80 24 d8 fc                 	andb	$-4, (%rax,%rbx,8)
100002527: 4c 89 ff                    	movq	%r15, %rdi
10000252a: 89 de                       	movl	%ebx, %esi
10000252c: 44 89 ea                    	movl	%r13d, %edx
10000252f: e8 6c f9 ff ff              	callq	-1684 <__ZN2Go13add_libertiesEt5Color>
100002534: 49 8b 47 38                 	movq	56(%r15), %rax
100002538: 0f b7 4c d8 04              	movzwl	4(%rax,%rbx,8), %ecx
10000253d: 66 41 3b 0e                 	cmpw	(%r14), %cx
100002541: 75 dd                       	jne	-35 <__ZN2Go18subtract_libertiesEt5Color+0x280>
100002543: 49 8b 47 40                 	movq	64(%r15), %rax
100002547: 41 8b 4f 20                 	movl	32(%r15), %ecx
10000254b: 48 8b 55 b8                 	movq	-72(%rbp), %rdx
10000254f: 89 4c 10 14                 	movl	%ecx, 20(%rax,%rdx)
100002553: 45 89 67 20                 	movl	%r12d, 32(%r15)
100002557: 49 8b 47 38                 	movq	56(%r15), %rax
10000255b: 45 89 e2                    	movl	%r12d, %r10d
10000255e: 44 8b 45 cc                 	movl	-52(%rbp), %r8d
100002562: 48 8b 5d c0                 	movq	-64(%rbp), %rbx
100002566: 44 8b 4d d0                 	movl	-48(%rbp), %r9d
10000256a: 8d 4b 01                    	leal	1(%rbx), %ecx
10000256d: 44 0f b7 f1                 	movzwl	%cx, %r14d
100002571: 46 8b 24 f0                 	movl	(%rax,%r14,8), %r12d
100002575: 44 89 e1                    	movl	%r12d, %ecx
100002578: d1 e9                       	shrl	%ecx
10000257a: 44 31 e1                    	xorl	%r12d, %ecx
10000257d: f6 c1 01                    	testb	$1, %cl
100002580: 75 32                       	jne	50 <__ZN2Go18subtract_libertiesEt5Color+0x314>
100002582: 41 bc ff ff ff ff           	movl	$4294967295, %r12d
100002588: 41 0f b6 4f 08              	movzbl	8(%r15), %ecx
10000258d: 8d 4c 0b 02                 	leal	2(%rbx,%rcx), %ecx
100002591: 44 0f b7 f1                 	movzwl	%cx, %r14d
100002595: 46 8b 2c f0                 	movl	(%rax,%r14,8), %r13d
100002599: 44 89 e8                    	movl	%r13d, %eax
10000259c: d1 e8                       	shrl	%eax
10000259e: 44 31 e8                    	xorl	%r13d, %eax
1000025a1: a8 01                       	testb	$1, %al
1000025a3: 75 66                       	jne	102 <__ZN2Go18subtract_libertiesEt5Color+0x36b>
1000025a5: 48 83 c4 28                 	addq	$40, %rsp
1000025a9: 5b                          	popq	%rbx
1000025aa: 41 5c                       	popq	%r12
1000025ac: 41 5d                       	popq	%r13
1000025ae: 41 5e                       	popq	%r14
1000025b0: 41 5f                       	popq	%r15
1000025b2: 5d                          	popq	%rbp
1000025b3: c3                          	retq
1000025b4: 49 c1 ec 02                 	shrq	$2, %r12
1000025b8: 45 39 cc                    	cmpl	%r9d, %r12d
1000025bb: 74 cb                       	je	-53 <__ZN2Go18subtract_libertiesEt5Color+0x2e8>
1000025bd: 45 39 d4                    	cmpl	%r10d, %r12d
1000025c0: 74 c6                       	je	-58 <__ZN2Go18subtract_libertiesEt5Color+0x2e8>
1000025c2: 49 8b 47 40                 	movq	64(%r15), %rax
1000025c6: 4d 89 e3                    	movq	%r12, %r11
1000025c9: 49 c1 e3 05                 	shlq	$5, %r11
1000025cd: 42 8b 74 18 18              	movl	24(%rax,%r11), %esi
1000025d2: 83 fe 09                    	cmpl	$9, %esi
1000025d5: 75 72                       	jne	114 <__ZN2Go18subtract_libertiesEt5Color+0x3a9>
1000025d7: 4c 89 ff                    	movq	%r15, %rdi
1000025da: 44 89 e6                    	movl	%r12d, %esi
1000025dd: 48 89 5d c0                 	movq	%rbx, -64(%rbp)
1000025e1: 45 89 c5                    	movl	%r8d, %r13d
1000025e4: 44 89 4d d0                 	movl	%r9d, -48(%rbp)
1000025e8: 44 89 d3                    	movl	%r10d, %ebx
1000025eb: 4c 89 5d b8                 	movq	%r11, -72(%rbp)
1000025ef: e8 cc f4 ff ff              	callq	-2868 <__ZN2Go16recompute_stringEj>
1000025f4: 4c 8b 5d b8                 	movq	-72(%rbp), %r11
1000025f8: 41 89 da                    	movl	%ebx, %r10d
1000025fb: 44 8b 4d d0                 	movl	-48(%rbp), %r9d
1000025ff: 45 89 e8                    	movl	%r13d, %r8d
100002602: 48 8b 5d c0                 	movq	-64(%rbp), %rbx
100002606: e9 e9 00 00 00              	jmp	233 <__ZN2Go18subtract_libertiesEt5Color+0x454>
10000260b: 49 c1 ed 02                 	shrq	$2, %r13
10000260f: 45 39 e5                    	cmpl	%r12d, %r13d
100002612: 74 91                       	je	-111 <__ZN2Go18subtract_libertiesEt5Color+0x305>
100002614: 45 39 cd                    	cmpl	%r9d, %r13d
100002617: 74 8c                       	je	-116 <__ZN2Go18subtract_libertiesEt5Color+0x305>
100002619: 45 39 d5                    	cmpl	%r10d, %r13d
10000261c: 74 87                       	je	-121 <__ZN2Go18subtract_libertiesEt5Color+0x305>
10000261e: 49 8b 47 40                 	movq	64(%r15), %rax
100002622: 4d 89 ec                    	movq	%r13, %r12
100002625: 49 c1 e4 05                 	shlq	$5, %r12
100002629: 42 8b 74 20 18              	movl	24(%rax,%r12), %esi
10000262e: 83 fe 09                    	cmpl	$9, %esi
100002631: 75 6a                       	jne	106 <__ZN2Go18subtract_libertiesEt5Color+0x3fd>
100002633: 4c 89 ff                    	movq	%r15, %rdi
100002636: 44 89 ee                    	movl	%r13d, %esi
100002639: 44 89 c3                    	movl	%r8d, %ebx
10000263c: e8 7f f4 ff ff              	callq	-2945 <__ZN2Go16recompute_stringEj>
100002641: 41 89 d8                    	movl	%ebx, %r8d
100002644: e9 4b 01 00 00              	jmp	331 <__ZN2Go18subtract_libertiesEt5Color+0x4f4>
100002649: 4a 8d 4c 18 18              	leaq	24(%rax,%r11), %rcx
10000264e: 83 fe 08                    	cmpl	$8, %esi
100002651: 0f 8f 99 00 00 00           	jg	153 <__ZN2Go18subtract_libertiesEt5Color+0x450>
100002657: 31 d2                       	xorl	%edx, %edx
100002659: 4c 01 d8                    	addq	%r11, %rax
10000265c: 0f 1f 40 00                 	nopl	(%rax)
100002660: 0f b6 fa                    	movzbl	%dl, %edi
100002663: 89 fa                       	movl	%edi, %edx
100002665: fe c2                       	incb	%dl
100002667: 66 39 1c 78                 	cmpw	%bx, (%rax,%rdi,2)
10000266b: 75 f3                       	jne	-13 <__ZN2Go18subtract_libertiesEt5Color+0x3c0>
10000266d: ff ce                       	decl	%esi
10000266f: 89 31                       	movl	%esi, (%rcx)
100002671: 8d 7a ff                    	leal	-1(%rdx), %edi
100002674: 40 0f b6 ff                 	movzbl	%dil, %edi
100002678: 39 fe                       	cmpl	%edi, %esi
10000267a: 7e 78                       	jle	120 <__ZN2Go18subtract_libertiesEt5Color+0x454>
10000267c: 0f 1f 40 00                 	nopl	(%rax)
100002680: 8d 72 ff                    	leal	-1(%rdx), %esi
100002683: 89 ff                       	movl	%edi, %edi
100002685: 0f b7 7c 78 02              	movzwl	2(%rax,%rdi,2), %edi
10000268a: 40 0f b6 f6                 	movzbl	%sil, %esi
10000268e: 66 89 3c 70                 	movw	%di, (%rax,%rsi,2)
100002692: 0f b6 fa                    	movzbl	%dl, %edi
100002695: fe c2                       	incb	%dl
100002697: 39 39                       	cmpl	%edi, (%rcx)
100002699: 7f e5                       	jg	-27 <__ZN2Go18subtract_libertiesEt5Color+0x3e0>
10000269b: eb 57                       	jmp	87 <__ZN2Go18subtract_libertiesEt5Color+0x454>
10000269d: 4a 8d 4c 20 18              	leaq	24(%rax,%r12), %rcx
1000026a2: 83 fe 08                    	cmpl	$8, %esi
1000026a5: 0f 8f e5 00 00 00           	jg	229 <__ZN2Go18subtract_libertiesEt5Color+0x4f0>
1000026ab: 31 d2                       	xorl	%edx, %edx
1000026ad: 4c 01 e0                    	addq	%r12, %rax
1000026b0: 0f b6 fa                    	movzbl	%dl, %edi
1000026b3: 89 fa                       	movl	%edi, %edx
1000026b5: fe c2                       	incb	%dl
1000026b7: 66 39 1c 78                 	cmpw	%bx, (%rax,%rdi,2)
1000026bb: 75 f3                       	jne	-13 <__ZN2Go18subtract_libertiesEt5Color+0x410>
1000026bd: ff ce                       	decl	%esi
1000026bf: 89 31                       	movl	%esi, (%rcx)
1000026c1: 8d 7a ff                    	leal	-1(%rdx), %edi
1000026c4: 40 0f b6 ff                 	movzbl	%dil, %edi
1000026c8: 39 fe                       	cmpl	%edi, %esi
1000026ca: 0f 8e c4 00 00 00           	jle	196 <__ZN2Go18subtract_libertiesEt5Color+0x4f4>
1000026d0: 8d 72 ff                    	leal	-1(%rdx), %esi
1000026d3: 89 ff                       	movl	%edi, %edi
1000026d5: 0f b7 7c 78 02              	movzwl	2(%rax,%rdi,2), %edi
1000026da: 40 0f b6 f6                 	movzbl	%sil, %esi
1000026de: 66 89 3c 70                 	movw	%di, (%rax,%rsi,2)
1000026e2: 0f b6 fa                    	movzbl	%dl, %edi
1000026e5: fe c2                       	incb	%dl
1000026e7: 39 39                       	cmpl	%edi, (%rcx)
1000026e9: 7f e5                       	jg	-27 <__ZN2Go18subtract_libertiesEt5Color+0x430>
1000026eb: e9 a4 00 00 00              	jmp	164 <__ZN2Go18subtract_libertiesEt5Color+0x4f4>
1000026f0: ff ce                       	decl	%esi
1000026f2: 89 31                       	movl	%esi, (%rcx)
1000026f4: 49 8b 47 38                 	movq	56(%r15), %rax
1000026f8: 42 8b 0c f0                 	movl	(%rax,%r14,8), %ecx
1000026fc: 83 e1 03                    	andl	$3, %ecx
1000026ff: 44 39 c1                    	cmpl	%r8d, %ecx
100002702: 0f 85 80 fe ff ff           	jne	-384 <__ZN2Go18subtract_libertiesEt5Color+0x2e8>
100002708: 49 8b 4f 40                 	movq	64(%r15), %rcx
10000270c: 42 83 7c 19 18 00           	cmpl	$0, 24(%rcx,%r11)
100002712: 0f 85 70 fe ff ff           	jne	-400 <__ZN2Go18subtract_libertiesEt5Color+0x2e8>
100002718: 44 89 55 b4                 	movl	%r10d, -76(%rbp)
10000271c: 44 89 4d d0                 	movl	%r9d, -48(%rbp)
100002720: 48 89 5d c0                 	movq	%rbx, -64(%rbp)
100002724: 44 89 45 cc                 	movl	%r8d, -52(%rbp)
100002728: 46 8b 6c 19 10              	movl	16(%rcx,%r11), %r13d
10000272d: 4e 8d 74 19 1c              	leaq	28(%rcx,%r11), %r14
100002732: 4c 89 5d b8                 	movq	%r11, -72(%rbp)
100002736: 42 0f b7 4c 19 1c           	movzwl	28(%rcx,%r11), %ecx
10000273c: 0f 1f 40 00                 	nopl	(%rax)
100002740: 0f b7 d9                    	movzwl	%cx, %ebx
100002743: 80 24 d8 fc                 	andb	$-4, (%rax,%rbx,8)
100002747: 4c 89 ff                    	movq	%r15, %rdi
10000274a: 89 de                       	movl	%ebx, %esi
10000274c: 44 89 ea                    	movl	%r13d, %edx
10000274f: e8 4c f7 ff ff              	callq	-2228 <__ZN2Go13add_libertiesEt5Color>
100002754: 49 8b 47 38                 	movq	56(%r15), %rax
100002758: 0f b7 4c d8 04              	movzwl	4(%rax,%rbx,8), %ecx
10000275d: 66 41 3b 0e                 	cmpw	(%r14), %cx
100002761: 75 dd                       	jne	-35 <__ZN2Go18subtract_libertiesEt5Color+0x4a0>
100002763: 49 8b 47 40                 	movq	64(%r15), %rax
100002767: 41 8b 4f 20                 	movl	32(%r15), %ecx
10000276b: 48 8b 55 b8                 	movq	-72(%rbp), %rdx
10000276f: 89 4c 10 14                 	movl	%ecx, 20(%rax,%rdx)
100002773: 45 89 67 20                 	movl	%r12d, 32(%r15)
100002777: 49 8b 47 38                 	movq	56(%r15), %rax
10000277b: 44 8b 45 cc                 	movl	-52(%rbp), %r8d
10000277f: 48 8b 5d c0                 	movq	-64(%rbp), %rbx
100002783: 44 8b 4d d0                 	movl	-48(%rbp), %r9d
100002787: 44 8b 55 b4                 	movl	-76(%rbp), %r10d
10000278b: e9 f8 fd ff ff              	jmp	-520 <__ZN2Go18subtract_libertiesEt5Color+0x2e8>
100002790: ff ce                       	decl	%esi
100002792: 89 31                       	movl	%esi, (%rcx)
100002794: 49 8b 47 38                 	movq	56(%r15), %rax
100002798: 42 8b 0c f0                 	movl	(%rax,%r14,8), %ecx
10000279c: 83 e1 03                    	andl	$3, %ecx
10000279f: 44 39 c1                    	cmpl	%r8d, %ecx
1000027a2: 0f 85 fd fd ff ff           	jne	-515 <__ZN2Go18subtract_libertiesEt5Color+0x305>
1000027a8: 49 8b 4f 40                 	movq	64(%r15), %rcx
1000027ac: 42 83 7c 21 18 00           	cmpl	$0, 24(%rcx,%r12)
1000027b2: 0f 85 ed fd ff ff           	jne	-531 <__ZN2Go18subtract_libertiesEt5Color+0x305>
1000027b8: 46 8b 74 21 10              	movl	16(%rcx,%r12), %r14d
1000027bd: 4c 89 e2                    	movq	%r12, %rdx
1000027c0: 4e 8d 64 21 1c              	leaq	28(%rcx,%r12), %r12
1000027c5: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
1000027c9: 0f b7 4c 11 1c              	movzwl	28(%rcx,%rdx), %ecx
1000027ce: 66 90                       	nop
1000027d0: 0f b7 d9                    	movzwl	%cx, %ebx
1000027d3: 80 24 d8 fc                 	andb	$-4, (%rax,%rbx,8)
1000027d7: 4c 89 ff                    	movq	%r15, %rdi
1000027da: 89 de                       	movl	%ebx, %esi
1000027dc: 44 89 f2                    	movl	%r14d, %edx
1000027df: e8 bc f6 ff ff              	callq	-2372 <__ZN2Go13add_libertiesEt5Color>
1000027e4: 49 8b 47 38                 	movq	56(%r15), %rax
1000027e8: 0f b7 4c d8 04              	movzwl	4(%rax,%rbx,8), %ecx
1000027ed: 66 41 3b 0c 24              	cmpw	(%r12), %cx
1000027f2: 75 dc                       	jne	-36 <__ZN2Go18subtract_libertiesEt5Color+0x530>
1000027f4: 49 8b 47 40                 	movq	64(%r15), %rax
1000027f8: 41 8b 4f 20                 	movl	32(%r15), %ecx
1000027fc: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100002800: 89 4c 10 14                 	movl	%ecx, 20(%rax,%rdx)
100002804: 45 89 6f 20                 	movl	%r13d, 32(%r15)
100002808: e9 98 fd ff ff              	jmp	-616 <__ZN2Go18subtract_libertiesEt5Color+0x305>
10000280d: 0f 1f 00                    	nopl	(%rax)

0000000100002810 __ZN2Go13append_stringEt5Colorj:
100002810: 55                          	pushq	%rbp
100002811: 48 89 e5                    	movq	%rsp, %rbp
100002814: 41 57                       	pushq	%r15
100002816: 41 56                       	pushq	%r14
100002818: 41 55                       	pushq	%r13
10000281a: 41 54                       	pushq	%r12
10000281c: 53                          	pushq	%rbx
10000281d: 48 83 ec 48                 	subq	$72, %rsp
100002821: 89 55 c4                    	movl	%edx, -60(%rbp)
100002824: 48 8b 05 5d 78 00 00        	movq	30813(%rip), %rax
10000282b: 48 8b 00                    	movq	(%rax), %rax
10000282e: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100002832: 4c 8b 47 40                 	movq	64(%rdi), %r8
100002836: 41 89 cb                    	movl	%ecx, %r11d
100002839: 49 c1 e3 05                 	shlq	$5, %r11
10000283d: 47 0f b7 4c 18 1c           	movzwl	28(%r8,%r11), %r9d
100002843: 66 41 39 f1                 	cmpw	%si, %r9w
100002847: 76 23                       	jbe	35 <__ZN2Go13append_stringEt5Colorj+0x5c>
100002849: 4b 8d 44 18 1c              	leaq	28(%r8,%r11), %rax
10000284e: 45 0f b7 f1                 	movzwl	%r9w, %r14d
100002852: 66 89 30                    	movw	%si, (%rax)
100002855: 4c 8b 67 38                 	movq	56(%rdi), %r12
100002859: 4c 8b 47 40                 	movq	64(%rdi), %r8
10000285d: 47 0f b7 54 f4 06           	movzwl	6(%r12,%r14,8), %r10d
100002863: 41 0f b7 da                 	movzwl	%r10w, %ebx
100002867: 44 89 c8                    	movl	%r9d, %eax
10000286a: eb 2f                       	jmp	47 <__ZN2Go13append_stringEt5Colorj+0x8b>
10000286c: 4c 8b 67 38                 	movq	56(%rdi), %r12
100002870: 44 89 c8                    	movl	%r9d, %eax
100002873: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000287d: 0f 1f 00                    	nopl	(%rax)
100002880: 41 89 c2                    	movl	%eax, %r10d
100002883: 0f b7 d8                    	movzwl	%ax, %ebx
100002886: 41 0f b7 44 dc 04           	movzwl	4(%r12,%rbx,8), %eax
10000288c: 66 39 f0                    	cmpw	%si, %ax
10000288f: 73 06                       	jae	6 <__ZN2Go13append_stringEt5Colorj+0x87>
100002891: 66 44 39 c8                 	cmpw	%r9w, %ax
100002895: 75 e9                       	jne	-23 <__ZN2Go13append_stringEt5Colorj+0x70>
100002897: 44 0f b7 f0                 	movzwl	%ax, %r14d
10000289b: 66 41 89 74 dc 04           	movw	%si, 4(%r12,%rbx,8)
1000028a1: 66 43 89 74 f4 06           	movw	%si, 6(%r12,%r14,8)
1000028a7: 0f b7 d6                    	movzwl	%si, %edx
1000028aa: 66 41 89 44 d4 04           	movw	%ax, 4(%r12,%rdx,8)
1000028b0: 48 89 55 98                 	movq	%rdx, -104(%rbp)
1000028b4: 66 45 89 54 d4 06           	movw	%r10w, 6(%r12,%rdx,8)
1000028ba: 4f 8d 54 18 18              	leaq	24(%r8,%r11), %r10
1000028bf: 47 8b 74 18 18              	movl	24(%r8,%r11), %r14d
1000028c4: 41 83 fe 08                 	cmpl	$8, %r14d
1000028c8: 0f 8f 09 01 00 00           	jg	265 <__ZN2Go13append_stringEt5Colorj+0x1c7>
1000028ce: 0f b6 47 08                 	movzbl	8(%rdi), %eax
1000028d2: 89 f3                       	movl	%esi, %ebx
1000028d4: 29 c3                       	subl	%eax, %ebx
1000028d6: 83 c3 fe                    	addl	$-2, %ebx
1000028d9: 0f b7 d3                    	movzwl	%bx, %edx
1000028dc: 41 f6 04 d4 03              	testb	$3, (%r12,%rdx,8)
1000028e1: 0f 84 e3 02 00 00           	je	739 <__ZN2Go13append_stringEt5Colorj+0x3ba>
1000028e7: 45 31 ff                    	xorl	%r15d, %r15d
1000028ea: 8d 5e ff                    	leal	-1(%rsi), %ebx
1000028ed: 0f b7 d3                    	movzwl	%bx, %edx
1000028f0: 41 f6 04 d4 03              	testb	$3, (%r12,%rdx,8)
1000028f5: 75 0d                       	jne	13 <__ZN2Go13append_stringEt5Colorj+0xf4>
1000028f7: 45 0f b6 ff                 	movzbl	%r15b, %r15d
1000028fb: 66 42 89 5c 7d c8           	movw	%bx, -56(%rbp,%r15,2)
100002901: 41 fe c7                    	incb	%r15b
100002904: 8d 5e 01                    	leal	1(%rsi), %ebx
100002907: 0f b7 d3                    	movzwl	%bx, %edx
10000290a: 41 f6 04 d4 03              	testb	$3, (%r12,%rdx,8)
10000290f: 75 0d                       	jne	13 <__ZN2Go13append_stringEt5Colorj+0x10e>
100002911: 45 0f b6 ff                 	movzbl	%r15b, %r15d
100002915: 66 42 89 5c 7d c8           	movw	%bx, -56(%rbp,%r15,2)
10000291b: 41 fe c7                    	incb	%r15b
10000291e: 0f b7 c0                    	movzwl	%ax, %eax
100002921: 8d 44 06 02                 	leal	2(%rsi,%rax), %eax
100002925: 0f b7 d0                    	movzwl	%ax, %edx
100002928: 41 f6 04 d4 03              	testb	$3, (%r12,%rdx,8)
10000292d: 75 0d                       	jne	13 <__ZN2Go13append_stringEt5Colorj+0x12c>
10000292f: 45 0f b6 ff                 	movzbl	%r15b, %r15d
100002933: 66 42 89 44 7d c8           	movw	%ax, -56(%rbp,%r15,2)
100002939: 41 fe c7                    	incb	%r15b
10000293c: 4c 89 55 b8                 	movq	%r10, -72(%rbp)
100002940: 43 0f 10 04 18              	movups	(%r8,%r11), %xmm0
100002945: 0f 29 45 a0                 	movaps	%xmm0, -96(%rbp)
100002949: 45 0f b6 e7                 	movzbl	%r15b, %r12d
10000294d: 31 db                       	xorl	%ebx, %ebx
10000294f: 45 85 f6                    	testl	%r14d, %r14d
100002952: 0f 84 8f 02 00 00           	je	655 <__ZN2Go13append_stringEt5Colorj+0x3d7>
100002958: 41 ba 00 00 00 00           	movl	$0, %r10d
10000295e: 41 b9 00 00 00 00           	movl	$0, %r9d
100002964: 45 84 ff                    	testb	%r15b, %r15b
100002967: 74 60                       	je	96 <__ZN2Go13append_stringEt5Colorj+0x1b9>
100002969: 45 31 c9                    	xorl	%r9d, %r9d
10000296c: 4f 8d 3c 18                 	leaq	(%r8,%r11), %r15
100002970: 45 31 d2                    	xorl	%r10d, %r10d
100002973: 31 db                       	xorl	%ebx, %ebx
100002975: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000297f: 90                          	nop
100002980: 89 d8                       	movl	%ebx, %eax
100002982: 0f b7 44 45 a0              	movzwl	-96(%rbp,%rax,2), %eax
100002987: 44 89 d2                    	movl	%r10d, %edx
10000298a: 0f b7 74 55 c8              	movzwl	-56(%rbp,%rdx,2), %esi
10000298f: 41 83 f9 07                 	cmpl	$7, %r9d
100002993: 77 12                       	ja	18 <__ZN2Go13append_stringEt5Colorj+0x197>
100002995: 66 39 f0                    	cmpw	%si, %ax
100002998: 41 89 f5                    	movl	%esi, %r13d
10000299b: 44 0f 42 e8                 	cmovbl	%eax, %r13d
10000299f: 44 89 ca                    	movl	%r9d, %edx
1000029a2: 66 45 89 2c 57              	movw	%r13w, (%r15,%rdx,2)
1000029a7: 41 ff c1                    	incl	%r9d
1000029aa: 31 d2                       	xorl	%edx, %edx
1000029ac: 66 39 f0                    	cmpw	%si, %ax
1000029af: 0f 96 c2                    	setbe	%dl
1000029b2: 01 d3                       	addl	%edx, %ebx
1000029b4: 31 d2                       	xorl	%edx, %edx
1000029b6: 66 39 c6                    	cmpw	%ax, %si
1000029b9: 0f 96 c2                    	setbe	%dl
1000029bc: 41 01 d2                    	addl	%edx, %r10d
1000029bf: 44 39 f3                    	cmpl	%r14d, %ebx
1000029c2: 73 05                       	jae	5 <__ZN2Go13append_stringEt5Colorj+0x1b9>
1000029c4: 45 39 e2                    	cmpl	%r12d, %r10d
1000029c7: 72 b7                       	jb	-73 <__ZN2Go13append_stringEt5Colorj+0x170>
1000029c9: 44 39 f3                    	cmpl	%r14d, %ebx
1000029cc: 0f 82 24 02 00 00           	jb	548 <__ZN2Go13append_stringEt5Colorj+0x3e6>
1000029d2: e9 c8 02 00 00              	jmp	712 <__ZN2Go13append_stringEt5Colorj+0x48f>
1000029d7: 0f b6 5f 08                 	movzbl	8(%rdi), %ebx
1000029db: 44 8d 7e fe                 	leal	-2(%rsi), %r15d
1000029df: 45 89 f9                    	movl	%r15d, %r9d
1000029e2: 41 29 d9                    	subl	%ebx, %r9d
1000029e5: 41 0f b7 d1                 	movzwl	%r9w, %edx
1000029e9: 41 f6 04 d4 03              	testb	$3, (%r12,%rdx,8)
1000029ee: 75 66                       	jne	102 <__ZN2Go13append_stringEt5Colorj+0x246>
1000029f0: 0f b7 d3                    	movzwl	%bx, %edx
1000029f3: 44 89 c8                    	movl	%r9d, %eax
1000029f6: 29 d0                       	subl	%edx, %eax
1000029f8: 83 c0 fe                    	addl	$-2, %eax
1000029fb: 0f b7 c0                    	movzwl	%ax, %eax
1000029fe: 41 8b 1c c4                 	movl	(%r12,%rax,8), %ebx
100002a02: 89 d8                       	movl	%ebx, %eax
100002a04: d1 e8                       	shrl	%eax
100002a06: 31 d8                       	xorl	%ebx, %eax
100002a08: a8 01                       	testb	$1, %al
100002a0a: 74 07                       	je	7 <__ZN2Go13append_stringEt5Colorj+0x203>
100002a0c: c1 eb 02                    	shrl	$2, %ebx
100002a0f: 39 cb                       	cmpl	%ecx, %ebx
100002a11: 74 43                       	je	67 <__ZN2Go13append_stringEt5Colorj+0x246>
100002a13: 41 8d 41 ff                 	leal	-1(%r9), %eax
100002a17: 0f b7 c0                    	movzwl	%ax, %eax
100002a1a: 41 8b 1c c4                 	movl	(%r12,%rax,8), %ebx
100002a1e: 89 d8                       	movl	%ebx, %eax
100002a20: d1 e8                       	shrl	%eax
100002a22: 31 d8                       	xorl	%ebx, %eax
100002a24: a8 01                       	testb	$1, %al
100002a26: 74 07                       	je	7 <__ZN2Go13append_stringEt5Colorj+0x21f>
100002a28: c1 eb 02                    	shrl	$2, %ebx
100002a2b: 39 cb                       	cmpl	%ecx, %ebx
100002a2d: 74 27                       	je	39 <__ZN2Go13append_stringEt5Colorj+0x246>
100002a2f: 41 ff c1                    	incl	%r9d
100002a32: 41 0f b7 c1                 	movzwl	%r9w, %eax
100002a36: 41 8b 04 c4                 	movl	(%r12,%rax,8), %eax
100002a3a: 89 c2                       	movl	%eax, %edx
100002a3c: d1 ea                       	shrl	%edx
100002a3e: 31 c2                       	xorl	%eax, %edx
100002a40: f6 c2 01                    	testb	$1, %dl
100002a43: 74 07                       	je	7 <__ZN2Go13append_stringEt5Colorj+0x23c>
100002a45: c1 e8 02                    	shrl	$2, %eax
100002a48: 39 c8                       	cmpl	%ecx, %eax
100002a4a: 74 0a                       	je	10 <__ZN2Go13append_stringEt5Colorj+0x246>
100002a4c: 41 ff c6                    	incl	%r14d
100002a4f: 45 89 32                    	movl	%r14d, (%r10)
100002a52: 4c 8b 67 38                 	movq	56(%rdi), %r12
100002a56: 44 8b 4d c4                 	movl	-60(%rbp), %r9d
100002a5a: 8d 46 ff                    	leal	-1(%rsi), %eax
100002a5d: 0f b7 c0                    	movzwl	%ax, %eax
100002a60: 41 f6 04 c4 03              	testb	$3, (%r12,%rax,8)
100002a65: 75 68                       	jne	104 <__ZN2Go13append_stringEt5Colorj+0x2bf>
100002a67: 0f b6 47 08                 	movzbl	8(%rdi), %eax
100002a6b: 89 f2                       	movl	%esi, %edx
100002a6d: 29 c2                       	subl	%eax, %edx
100002a6f: 83 c2 fd                    	addl	$-3, %edx
100002a72: 0f b7 d2                    	movzwl	%dx, %edx
100002a75: 41 8b 1c d4                 	movl	(%r12,%rdx,8), %ebx
100002a79: 89 da                       	movl	%ebx, %edx
100002a7b: d1 ea                       	shrl	%edx
100002a7d: 31 da                       	xorl	%ebx, %edx
100002a7f: f6 c2 01                    	testb	$1, %dl
100002a82: 74 07                       	je	7 <__ZN2Go13append_stringEt5Colorj+0x27b>
100002a84: c1 eb 02                    	shrl	$2, %ebx
100002a87: 39 cb                       	cmpl	%ecx, %ebx
100002a89: 74 44                       	je	68 <__ZN2Go13append_stringEt5Colorj+0x2bf>
100002a8b: 41 0f b7 d7                 	movzwl	%r15w, %edx
100002a8f: 41 8b 1c d4                 	movl	(%r12,%rdx,8), %ebx
100002a93: 89 da                       	movl	%ebx, %edx
100002a95: d1 ea                       	shrl	%edx
100002a97: 31 da                       	xorl	%ebx, %edx
100002a99: f6 c2 01                    	testb	$1, %dl
100002a9c: 74 07                       	je	7 <__ZN2Go13append_stringEt5Colorj+0x295>
100002a9e: c1 eb 02                    	shrl	$2, %ebx
100002aa1: 39 cb                       	cmpl	%ecx, %ebx
100002aa3: 74 2a                       	je	42 <__ZN2Go13append_stringEt5Colorj+0x2bf>
100002aa5: 0f b7 c0                    	movzwl	%ax, %eax
100002aa8: 8d 44 06 01                 	leal	1(%rsi,%rax), %eax
100002aac: 0f b7 c0                    	movzwl	%ax, %eax
100002aaf: 41 8b 04 c4                 	movl	(%r12,%rax,8), %eax
100002ab3: 89 c2                       	movl	%eax, %edx
100002ab5: d1 ea                       	shrl	%edx
100002ab7: 31 c2                       	xorl	%eax, %edx
100002ab9: f6 c2 01                    	testb	$1, %dl
100002abc: 74 07                       	je	7 <__ZN2Go13append_stringEt5Colorj+0x2b5>
100002abe: c1 e8 02                    	shrl	$2, %eax
100002ac1: 39 c8                       	cmpl	%ecx, %eax
100002ac3: 74 0a                       	je	10 <__ZN2Go13append_stringEt5Colorj+0x2bf>
100002ac5: 41 ff c6                    	incl	%r14d
100002ac8: 45 89 32                    	movl	%r14d, (%r10)
100002acb: 4c 8b 67 38                 	movq	56(%rdi), %r12
100002acf: 8d 46 01                    	leal	1(%rsi), %eax
100002ad2: 0f b7 c0                    	movzwl	%ax, %eax
100002ad5: 41 f6 04 c4 03              	testb	$3, (%r12,%rax,8)
100002ada: 75 69                       	jne	105 <__ZN2Go13append_stringEt5Colorj+0x335>
100002adc: 0f b6 47 08                 	movzbl	8(%rdi), %eax
100002ae0: 89 c2                       	movl	%eax, %edx
100002ae2: f7 d2                       	notl	%edx
100002ae4: 01 f2                       	addl	%esi, %edx
100002ae6: 0f b7 d2                    	movzwl	%dx, %edx
100002ae9: 41 8b 1c d4                 	movl	(%r12,%rdx,8), %ebx
100002aed: 89 da                       	movl	%ebx, %edx
100002aef: d1 ea                       	shrl	%edx
100002af1: 31 da                       	xorl	%ebx, %edx
100002af3: f6 c2 01                    	testb	$1, %dl
100002af6: 74 07                       	je	7 <__ZN2Go13append_stringEt5Colorj+0x2ef>
100002af8: c1 eb 02                    	shrl	$2, %ebx
100002afb: 39 cb                       	cmpl	%ecx, %ebx
100002afd: 74 46                       	je	70 <__ZN2Go13append_stringEt5Colorj+0x335>
100002aff: 8d 56 02                    	leal	2(%rsi), %edx
100002b02: 0f b7 d2                    	movzwl	%dx, %edx
100002b05: 41 8b 1c d4                 	movl	(%r12,%rdx,8), %ebx
100002b09: 89 da                       	movl	%ebx, %edx
100002b0b: d1 ea                       	shrl	%edx
100002b0d: 31 da                       	xorl	%ebx, %edx
100002b0f: f6 c2 01                    	testb	$1, %dl
100002b12: 74 07                       	je	7 <__ZN2Go13append_stringEt5Colorj+0x30b>
100002b14: c1 eb 02                    	shrl	$2, %ebx
100002b17: 39 cb                       	cmpl	%ecx, %ebx
100002b19: 74 2a                       	je	42 <__ZN2Go13append_stringEt5Colorj+0x335>
100002b1b: 0f b7 c0                    	movzwl	%ax, %eax
100002b1e: 8d 44 06 03                 	leal	3(%rsi,%rax), %eax
100002b22: 0f b7 c0                    	movzwl	%ax, %eax
100002b25: 41 8b 04 c4                 	movl	(%r12,%rax,8), %eax
100002b29: 89 c2                       	movl	%eax, %edx
100002b2b: d1 ea                       	shrl	%edx
100002b2d: 31 c2                       	xorl	%eax, %edx
100002b2f: f6 c2 01                    	testb	$1, %dl
100002b32: 74 07                       	je	7 <__ZN2Go13append_stringEt5Colorj+0x32b>
100002b34: c1 e8 02                    	shrl	$2, %eax
100002b37: 39 c8                       	cmpl	%ecx, %eax
100002b39: 74 0a                       	je	10 <__ZN2Go13append_stringEt5Colorj+0x335>
100002b3b: 41 ff c6                    	incl	%r14d
100002b3e: 45 89 32                    	movl	%r14d, (%r10)
100002b41: 4c 8b 67 38                 	movq	56(%rdi), %r12
100002b45: 0f b6 47 08                 	movzbl	8(%rdi), %eax
100002b49: 8d 74 06 02                 	leal	2(%rsi,%rax), %esi
100002b4d: 0f b7 d6                    	movzwl	%si, %edx
100002b50: 41 f6 04 d4 03              	testb	$3, (%r12,%rdx,8)
100002b55: 0f 85 0d 02 00 00           	jne	525 <__ZN2Go13append_stringEt5Colorj+0x558>
100002b5b: 8d 56 ff                    	leal	-1(%rsi), %edx
100002b5e: 0f b7 d2                    	movzwl	%dx, %edx
100002b61: 41 8b 1c d4                 	movl	(%r12,%rdx,8), %ebx
100002b65: 89 da                       	movl	%ebx, %edx
100002b67: d1 ea                       	shrl	%edx
100002b69: 31 da                       	xorl	%ebx, %edx
100002b6b: f6 c2 01                    	testb	$1, %dl
100002b6e: 74 0b                       	je	11 <__ZN2Go13append_stringEt5Colorj+0x36b>
100002b70: c1 eb 02                    	shrl	$2, %ebx
100002b73: 39 cb                       	cmpl	%ecx, %ebx
100002b75: 0f 84 ed 01 00 00           	je	493 <__ZN2Go13append_stringEt5Colorj+0x558>
100002b7b: 8d 56 01                    	leal	1(%rsi), %edx
100002b7e: 0f b7 d2                    	movzwl	%dx, %edx
100002b81: 41 8b 1c d4                 	movl	(%r12,%rdx,8), %ebx
100002b85: 89 da                       	movl	%ebx, %edx
100002b87: d1 ea                       	shrl	%edx
100002b89: 31 da                       	xorl	%ebx, %edx
100002b8b: f6 c2 01                    	testb	$1, %dl
100002b8e: 74 0b                       	je	11 <__ZN2Go13append_stringEt5Colorj+0x38b>
100002b90: c1 eb 02                    	shrl	$2, %ebx
100002b93: 39 cb                       	cmpl	%ecx, %ebx
100002b95: 0f 84 cd 01 00 00           	je	461 <__ZN2Go13append_stringEt5Colorj+0x558>
100002b9b: 0f b7 c0                    	movzwl	%ax, %eax
100002b9e: 8d 44 30 02                 	leal	2(%rax,%rsi), %eax
100002ba2: 0f b7 c0                    	movzwl	%ax, %eax
100002ba5: 41 8b 04 c4                 	movl	(%r12,%rax,8), %eax
100002ba9: 89 c2                       	movl	%eax, %edx
100002bab: d1 ea                       	shrl	%edx
100002bad: 31 c2                       	xorl	%eax, %edx
100002baf: f6 c2 01                    	testb	$1, %dl
100002bb2: 74 0b                       	je	11 <__ZN2Go13append_stringEt5Colorj+0x3af>
100002bb4: c1 e8 02                    	shrl	$2, %eax
100002bb7: 39 c8                       	cmpl	%ecx, %eax
100002bb9: 0f 84 a9 01 00 00           	je	425 <__ZN2Go13append_stringEt5Colorj+0x558>
100002bbf: 41 ff c6                    	incl	%r14d
100002bc2: 45 89 32                    	movl	%r14d, (%r10)
100002bc5: e9 9e 01 00 00              	jmp	414 <__ZN2Go13append_stringEt5Colorj+0x558>
100002bca: 66 89 5d c8                 	movw	%bx, -56(%rbp)
100002bce: 41 b7 01                    	movb	$1, %r15b
100002bd1: 8d 5e ff                    	leal	-1(%rsi), %ebx
100002bd4: 0f b7 d3                    	movzwl	%bx, %edx
100002bd7: 41 f6 04 d4 03              	testb	$3, (%r12,%rdx,8)
100002bdc: 0f 85 22 fd ff ff           	jne	-734 <__ZN2Go13append_stringEt5Colorj+0xf4>
100002be2: e9 10 fd ff ff              	jmp	-752 <__ZN2Go13append_stringEt5Colorj+0xe7>
100002be7: 45 31 d2                    	xorl	%r10d, %r10d
100002bea: 45 31 c9                    	xorl	%r9d, %r9d
100002bed: 44 39 f3                    	cmpl	%r14d, %ebx
100002bf0: 0f 83 a9 00 00 00           	jae	169 <__ZN2Go13append_stringEt5Colorj+0x48f>
100002bf6: 41 89 df                    	movl	%ebx, %r15d
100002bf9: 44 89 f0                    	movl	%r14d, %eax
100002bfc: 29 d8                       	subl	%ebx, %eax
100002bfe: 4c 89 fb                    	movq	%r15, %rbx
100002c01: 48 f7 d3                    	notq	%rbx
100002c04: a8 01                       	testb	$1, %al
100002c06: 74 1d                       	je	29 <__ZN2Go13append_stringEt5Colorj+0x415>
100002c08: 41 83 f9 07                 	cmpl	$7, %r9d
100002c0c: 77 11                       	ja	17 <__ZN2Go13append_stringEt5Colorj+0x40f>
100002c0e: 42 0f b7 44 7d a0           	movzwl	-96(%rbp,%r15,2), %eax
100002c14: 44 89 ca                    	movl	%r9d, %edx
100002c17: 4b 8d 34 18                 	leaq	(%r8,%r11), %rsi
100002c1b: 66 89 04 56                 	movw	%ax, (%rsi,%rdx,2)
100002c1f: 41 ff c1                    	incl	%r9d
100002c22: 49 ff c7                    	incq	%r15
100002c25: 4c 01 f3                    	addq	%r14, %rbx
100002c28: 74 75                       	je	117 <__ZN2Go13append_stringEt5Colorj+0x48f>
100002c2a: 4f 8d 2c 18                 	leaq	(%r8,%r11), %r13
100002c2e: 44 89 cb                    	movl	%r9d, %ebx
100002c31: 41 83 f9 07                 	cmpl	$7, %r9d
100002c35: 77 1e                       	ja	30 <__ZN2Go13append_stringEt5Colorj+0x445>
100002c37: eb 37                       	jmp	55 <__ZN2Go13append_stringEt5Colorj+0x460>
100002c39: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100002c40: 49 83 c7 02                 	addq	$2, %r15
100002c44: 41 ff c1                    	incl	%r9d
100002c47: 4d 39 fe                    	cmpq	%r15, %r14
100002c4a: 74 4d                       	je	77 <__ZN2Go13append_stringEt5Colorj+0x489>
100002c4c: 44 89 cb                    	movl	%r9d, %ebx
100002c4f: 41 83 f9 07                 	cmpl	$7, %r9d
100002c53: 76 1b                       	jbe	27 <__ZN2Go13append_stringEt5Colorj+0x460>
100002c55: 44 8d 4b 01                 	leal	1(%rbx), %r9d
100002c59: 41 83 f9 08                 	cmpl	$8, %r9d
100002c5d: 73 e1                       	jae	-31 <__ZN2Go13append_stringEt5Colorj+0x430>
100002c5f: eb 27                       	jmp	39 <__ZN2Go13append_stringEt5Colorj+0x478>
100002c61: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002c6b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002c70: 42 0f b7 44 7d a0           	movzwl	-96(%rbp,%r15,2), %eax
100002c76: 89 da                       	movl	%ebx, %edx
100002c78: 66 41 89 44 55 00           	movw	%ax, (%r13,%rdx,2)
100002c7e: 44 8d 4b 01                 	leal	1(%rbx), %r9d
100002c82: 41 83 f9 08                 	cmpl	$8, %r9d
100002c86: 73 b8                       	jae	-72 <__ZN2Go13append_stringEt5Colorj+0x430>
100002c88: 42 0f b7 44 7d a2           	movzwl	-94(%rbp,%r15,2), %eax
100002c8e: 44 89 ca                    	movl	%r9d, %edx
100002c91: 66 41 89 44 55 00           	movw	%ax, (%r13,%rdx,2)
100002c97: eb a7                       	jmp	-89 <__ZN2Go13append_stringEt5Colorj+0x430>
100002c99: 83 c3 02                    	addl	$2, %ebx
100002c9c: 41 89 d9                    	movl	%ebx, %r9d
100002c9f: 45 39 e2                    	cmpl	%r12d, %r10d
100002ca2: 0f 83 ad 00 00 00           	jae	173 <__ZN2Go13append_stringEt5Colorj+0x545>
100002ca8: 44 89 d3                    	movl	%r10d, %ebx
100002cab: 45 89 e6                    	movl	%r12d, %r14d
100002cae: 45 29 d4                    	subl	%r10d, %r12d
100002cb1: 48 89 d8                    	movq	%rbx, %rax
100002cb4: 48 f7 d0                    	notq	%rax
100002cb7: 41 f6 c4 01                 	testb	$1, %r12b
100002cbb: 74 1e                       	je	30 <__ZN2Go13append_stringEt5Colorj+0x4cb>
100002cbd: 41 83 f9 07                 	cmpl	$7, %r9d
100002cc1: 77 12                       	ja	18 <__ZN2Go13append_stringEt5Colorj+0x4c5>
100002cc3: 44 0f b7 54 5d c8           	movzwl	-56(%rbp,%rbx,2), %r10d
100002cc9: 44 89 ce                    	movl	%r9d, %esi
100002ccc: 4b 8d 14 18                 	leaq	(%r8,%r11), %rdx
100002cd0: 66 44 89 14 72              	movw	%r10w, (%rdx,%rsi,2)
100002cd5: 41 ff c1                    	incl	%r9d
100002cd8: 48 ff c3                    	incq	%rbx
100002cdb: 4c 8b 55 b8                 	movq	-72(%rbp), %r10
100002cdf: 4c 01 f0                    	addq	%r14, %rax
100002ce2: 74 7d                       	je	125 <__ZN2Go13append_stringEt5Colorj+0x551>
100002ce4: 4f 8d 3c 18                 	leaq	(%r8,%r11), %r15
100002ce8: 44 89 c8                    	movl	%r9d, %eax
100002ceb: 41 83 f9 07                 	cmpl	$7, %r9d
100002cef: 77 24                       	ja	36 <__ZN2Go13append_stringEt5Colorj+0x505>
100002cf1: eb 3d                       	jmp	61 <__ZN2Go13append_stringEt5Colorj+0x520>
100002cf3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002cfd: 0f 1f 00                    	nopl	(%rax)
100002d00: 48 83 c3 02                 	addq	$2, %rbx
100002d04: 41 ff c1                    	incl	%r9d
100002d07: 49 39 de                    	cmpq	%rbx, %r14
100002d0a: 74 4f                       	je	79 <__ZN2Go13append_stringEt5Colorj+0x54b>
100002d0c: 44 89 c8                    	movl	%r9d, %eax
100002d0f: 41 83 f9 07                 	cmpl	$7, %r9d
100002d13: 76 1b                       	jbe	27 <__ZN2Go13append_stringEt5Colorj+0x520>
100002d15: 44 8d 48 01                 	leal	1(%rax), %r9d
100002d19: 41 83 f9 08                 	cmpl	$8, %r9d
100002d1d: 73 e1                       	jae	-31 <__ZN2Go13append_stringEt5Colorj+0x4f0>
100002d1f: eb 25                       	jmp	37 <__ZN2Go13append_stringEt5Colorj+0x536>
100002d21: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002d2b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002d30: 0f b7 54 5d c8              	movzwl	-56(%rbp,%rbx,2), %edx
100002d35: 89 c6                       	movl	%eax, %esi
100002d37: 66 41 89 14 77              	movw	%dx, (%r15,%rsi,2)
100002d3c: 44 8d 48 01                 	leal	1(%rax), %r9d
100002d40: 41 83 f9 08                 	cmpl	$8, %r9d
100002d44: 73 ba                       	jae	-70 <__ZN2Go13append_stringEt5Colorj+0x4f0>
100002d46: 0f b7 54 5d ca              	movzwl	-54(%rbp,%rbx,2), %edx
100002d4b: 44 89 ce                    	movl	%r9d, %esi
100002d4e: 66 41 89 14 77              	movw	%dx, (%r15,%rsi,2)
100002d53: eb ab                       	jmp	-85 <__ZN2Go13append_stringEt5Colorj+0x4f0>
100002d55: 4c 8b 55 b8                 	movq	-72(%rbp), %r10
100002d59: eb 06                       	jmp	6 <__ZN2Go13append_stringEt5Colorj+0x551>
100002d5b: 83 c0 02                    	addl	$2, %eax
100002d5e: 41 89 c1                    	movl	%eax, %r9d
100002d61: 45 89 0a                    	movl	%r9d, (%r10)
100002d64: 44 8b 4d c4                 	movl	-60(%rbp), %r9d
100002d68: 48 8b 47 38                 	movq	56(%rdi), %rax
100002d6c: c1 e1 02                    	shll	$2, %ecx
100002d6f: 44 09 c9                    	orl	%r9d, %ecx
100002d72: 48 8b 55 98                 	movq	-104(%rbp), %rdx
100002d76: 89 0c d0                    	movl	%ecx, (%rax,%rdx,8)
100002d79: 43 ff 44 18 14              	incl	20(%r8,%r11)
100002d7e: 48 8b 05 03 73 00 00        	movq	29443(%rip), %rax
100002d85: 48 8b 00                    	movq	(%rax), %rax
100002d88: 48 3b 45 d0                 	cmpq	-48(%rbp), %rax
100002d8c: 75 0f                       	jne	15 <__ZN2Go13append_stringEt5Colorj+0x58d>
100002d8e: 48 83 c4 48                 	addq	$72, %rsp
100002d92: 5b                          	popq	%rbx
100002d93: 41 5c                       	popq	%r12
100002d95: 41 5d                       	popq	%r13
100002d97: 41 5e                       	popq	%r14
100002d99: 41 5f                       	popq	%r15
100002d9b: 5d                          	popq	%rbp
100002d9c: c3                          	retq
100002d9d: e8 06 60 00 00              	callq	24582 <dyld_stub_binder+0x100008da8>
100002da2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002dac: 0f 1f 40 00                 	nopl	(%rax)

0000000100002db0 __ZN2Go12join_stringsEjj:
100002db0: 55                          	pushq	%rbp
100002db1: 48 89 e5                    	movq	%rsp, %rbp
100002db4: 41 57                       	pushq	%r15
100002db6: 41 56                       	pushq	%r14
100002db8: 41 55                       	pushq	%r13
100002dba: 41 54                       	pushq	%r12
100002dbc: 53                          	pushq	%rbx
100002dbd: 48 83 ec 48                 	subq	$72, %rsp
100002dc1: 4c 8b 6f 38                 	movq	56(%rdi), %r13
100002dc5: 4c 8b 7f 40                 	movq	64(%rdi), %r15
100002dc9: 41 89 f3                    	movl	%esi, %r11d
100002dcc: 89 d3                       	movl	%edx, %ebx
100002dce: 49 c1 e3 05                 	shlq	$5, %r11
100002dd2: 47 0f b7 64 1f 1c           	movzwl	28(%r15,%r11), %r12d
100002dd8: 48 c1 e3 05                 	shlq	$5, %rbx
100002ddc: 45 0f b7 44 1f 1c           	movzwl	28(%r15,%rbx), %r8d
100002de2: 66 45 39 c4                 	cmpw	%r8w, %r12w
100002de6: 89 55 d4                    	movl	%edx, -44(%rbp)
100002de9: 48 89 7d 98                 	movq	%rdi, -104(%rbp)
100002ded: 48 89 75 a8                 	movq	%rsi, -88(%rbp)
100002df1: 73 1e                       	jae	30 <__ZN2Go12join_stringsEjj+0x61>
100002df3: 41 0f b7 c4                 	movzwl	%r12w, %eax
100002df7: 45 0f b7 74 c5 04           	movzwl	4(%r13,%rax,8), %r14d
100002dfd: 44 8d 14 b5 00 00 00 00     	leal	(,%rsi,4), %r10d
100002e05: b1 01                       	movb	$1, %cl
100002e07: 31 c0                       	xorl	%eax, %eax
100002e09: 45 89 c1                    	movl	%r8d, %r9d
100002e0c: 44 89 e6                    	movl	%r12d, %esi
100002e0f: eb 2c                       	jmp	44 <__ZN2Go12join_stringsEjj+0x8d>
100002e11: 41 0f b7 c0                 	movzwl	%r8w, %eax
100002e15: 41 8b 4c c5 00              	movl	(%r13,%rax,8), %ecx
100002e1a: 83 e1 03                    	andl	$3, %ecx
100002e1d: 44 8d 14 b5 00 00 00 00     	leal	(,%rsi,4), %r10d
100002e25: 8d 0c b1                    	leal	(%rcx,%rsi,4), %ecx
100002e28: 41 89 4c c5 00              	movl	%ecx, (%r13,%rax,8)
100002e2d: 45 0f b7 4c c5 04           	movzwl	4(%r13,%rax,8), %r9d
100002e33: b0 01                       	movb	$1, %al
100002e35: 31 c9                       	xorl	%ecx, %ecx
100002e37: 45 89 e6                    	movl	%r12d, %r14d
100002e3a: 44 89 c6                    	movl	%r8d, %esi
100002e3d: 4c 89 5d a0                 	movq	%r11, -96(%rbp)
100002e41: 4b 8d 54 1f 1c              	leaq	28(%r15,%r11), %rdx
100002e46: 48 89 5d c0                 	movq	%rbx, -64(%rbp)
100002e4a: 4c 89 7d c8                 	movq	%r15, -56(%rbp)
100002e4e: 4d 8d 5c 1f 1c              	leaq	28(%r15,%rbx), %r11
100002e53: 41 89 f7                    	movl	%esi, %r15d
100002e56: a8 01                       	testb	$1, %al
100002e58: 75 48                       	jne	72 <__ZN2Go12join_stringsEjj+0xf2>
100002e5a: eb 40                       	jmp	64 <__ZN2Go12join_stringsEjj+0xec>
100002e5c: 0f 1f 40 00                 	nopl	(%rax)
100002e60: 45 0f b7 e1                 	movzwl	%r9w, %r12d
100002e64: 43 8b 4c e5 00              	movl	(%r13,%r12,8), %ecx
100002e69: 83 e1 03                    	andl	$3, %ecx
100002e6c: 44 09 d1                    	orl	%r10d, %ecx
100002e6f: 43 89 4c e5 00              	movl	%ecx, (%r13,%r12,8)
100002e74: 45 89 f0                    	movl	%r14d, %r8d
100002e77: 45 89 ce                    	movl	%r9d, %r14d
100002e7a: 47 0f b7 4c e5 04           	movzwl	4(%r13,%r12,8), %r9d
100002e80: 31 c9                       	xorl	%ecx, %ecx
100002e82: 41 0f b7 ff                 	movzwl	%r15w, %edi
100002e86: 66 45 89 74 fd 04           	movw	%r14w, 4(%r13,%rdi,8)
100002e8c: 66 43 89 7c e5 06           	movw	%di, 6(%r13,%r12,8)
100002e92: 45 89 f7                    	movl	%r14d, %r15d
100002e95: 45 89 c6                    	movl	%r8d, %r14d
100002e98: a8 01                       	testb	$1, %al
100002e9a: 75 06                       	jne	6 <__ZN2Go12join_stringsEjj+0xf2>
100002e9c: 66 44 3b 32                 	cmpw	(%rdx), %r14w
100002ea0: 74 4c                       	je	76 <__ZN2Go12join_stringsEjj+0x13e>
100002ea2: f6 c1 01                    	testb	$1, %cl
100002ea5: 75 06                       	jne	6 <__ZN2Go12join_stringsEjj+0xfd>
100002ea7: 66 45 3b 0b                 	cmpw	(%r11), %r9w
100002eab: 74 41                       	je	65 <__ZN2Go12join_stringsEjj+0x13e>
100002ead: 66 45 39 ce                 	cmpw	%r9w, %r14w
100002eb1: 73 ad                       	jae	-83 <__ZN2Go12join_stringsEjj+0xb0>
100002eb3: 45 0f b7 e6                 	movzwl	%r14w, %r12d
100002eb7: 47 0f b7 44 e5 04           	movzwl	4(%r13,%r12,8), %r8d
100002ebd: 31 c0                       	xorl	%eax, %eax
100002ebf: eb c1                       	jmp	-63 <__ZN2Go12join_stringsEjj+0xd2>
100002ec1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002ecb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100002ed0: 41 0f b7 c7                 	movzwl	%r15w, %eax
100002ed4: 66 41 89 7c c5 04           	movw	%di, 4(%r13,%rax,8)
100002eda: 0f b7 df                    	movzwl	%di, %ebx
100002edd: 66 41 89 44 dd 06           	movw	%ax, 6(%r13,%rbx,8)
100002ee3: 45 0f b7 74 dd 04           	movzwl	4(%r13,%rbx,8), %r14d
100002ee9: 31 c0                       	xorl	%eax, %eax
100002eeb: 41 89 ff                    	movl	%edi, %r15d
100002eee: 44 89 f7                    	movl	%r14d, %edi
100002ef1: a8 01                       	testb	$1, %al
100002ef3: 75 db                       	jne	-37 <__ZN2Go12join_stringsEjj+0x120>
100002ef5: 66 3b 3a                    	cmpw	(%rdx), %di
100002ef8: 75 d6                       	jne	-42 <__ZN2Go12join_stringsEjj+0x120>
100002efa: eb 2c                       	jmp	44 <__ZN2Go12join_stringsEjj+0x178>
100002efc: 0f 1f 40 00                 	nopl	(%rax)
100002f00: 66 45 89 7c c5 04           	movw	%r15w, 4(%r13,%rax,8)
100002f06: 41 0f b7 cf                 	movzwl	%r15w, %ecx
100002f0a: 66 41 89 44 cd 06           	movw	%ax, 6(%r13,%rcx,8)
100002f10: 41 8b 44 cd 00              	movl	(%r13,%rcx,8), %eax
100002f15: 83 e0 03                    	andl	$3, %eax
100002f18: 44 09 d0                    	orl	%r10d, %eax
100002f1b: 41 89 44 cd 00              	movl	%eax, (%r13,%rcx,8)
100002f20: 45 0f b7 4c cd 04           	movzwl	4(%r13,%rcx,8), %r9d
100002f26: 31 c9                       	xorl	%ecx, %ecx
100002f28: 41 0f b7 c7                 	movzwl	%r15w, %eax
100002f2c: 45 89 cf                    	movl	%r9d, %r15d
100002f2f: f6 c1 01                    	testb	$1, %cl
100002f32: 75 cc                       	jne	-52 <__ZN2Go12join_stringsEjj+0x150>
100002f34: 66 45 3b 3b                 	cmpw	(%r11), %r15w
100002f38: 75 c6                       	jne	-58 <__ZN2Go12join_stringsEjj+0x150>
100002f3a: 66 89 32                    	movw	%si, (%rdx)
100002f3d: 4c 8b 65 98                 	movq	-104(%rbp), %r12
100002f41: 49 8b 4c 24 38              	movq	56(%r12), %rcx
100002f46: 66 89 74 c1 04              	movw	%si, 4(%rcx,%rax,8)
100002f4b: 0f b7 d6                    	movzwl	%si, %edx
100002f4e: 66 89 44 d1 06              	movw	%ax, 6(%rcx,%rdx,8)
100002f53: 4c 8b 75 c0                 	movq	-64(%rbp), %r14
100002f57: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100002f5b: 42 8b 44 31 14              	movl	20(%rcx,%r14), %eax
100002f60: 4c 8b 6d a0                 	movq	-96(%rbp), %r13
100002f64: 42 01 44 29 14              	addl	%eax, 20(%rcx,%r13)
100002f69: 46 8b 44 29 18              	movl	24(%rcx,%r13), %r8d
100002f6e: 41 83 f8 08                 	cmpl	$8, %r8d
100002f72: 0f 8f 7b 01 00 00           	jg	379 <__ZN2Go12join_stringsEjj+0x343>
100002f78: 46 8b 5c 31 18              	movl	24(%rcx,%r14), %r11d
100002f7d: 41 83 fb 08                 	cmpl	$8, %r11d
100002f81: 0f 8f 6c 01 00 00           	jg	364 <__ZN2Go12join_stringsEjj+0x343>
100002f87: 42 0f 10 04 29              	movups	(%rcx,%r13), %xmm0
100002f8c: 0f 29 45 b0                 	movaps	%xmm0, -80(%rbp)
100002f90: 31 c0                       	xorl	%eax, %eax
100002f92: 45 85 c0                    	testl	%r8d, %r8d
100002f95: 0f 84 8b 01 00 00           	je	395 <__ZN2Go12join_stringsEjj+0x376>
100002f9b: 41 b9 00 00 00 00           	movl	$0, %r9d
100002fa1: be 00 00 00 00              	movl	$0, %esi
100002fa6: 45 85 db                    	testl	%r11d, %r11d
100002fa9: 74 75                       	je	117 <__ZN2Go12join_stringsEjj+0x270>
100002fab: 31 f6                       	xorl	%esi, %esi
100002fad: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100002fb1: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100002fb5: 4c 8d 34 01                 	leaq	(%rcx,%rax), %r14
100002fb9: 4e 8d 14 29                 	leaq	(%rcx,%r13), %r10
100002fbd: 45 31 c9                    	xorl	%r9d, %r9d
100002fc0: 31 c0                       	xorl	%eax, %eax
100002fc2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100002fcc: 0f 1f 40 00                 	nopl	(%rax)
100002fd0: 89 c1                       	movl	%eax, %ecx
100002fd2: 0f b7 54 4d b0              	movzwl	-80(%rbp,%rcx,2), %edx
100002fd7: 44 89 cb                    	movl	%r9d, %ebx
100002fda: 41 0f b7 3c 5e              	movzwl	(%r14,%rbx,2), %edi
100002fdf: 66 39 fa                    	cmpw	%di, %dx
100002fe2: 89 f9                       	movl	%edi, %ecx
100002fe4: 0f 42 ca                    	cmovbl	%edx, %ecx
100002fe7: 41 89 ff                    	movl	%edi, %r15d
100002fea: 83 fe 07                    	cmpl	$7, %esi
100002fed: 77 0f                       	ja	15 <__ZN2Go12join_stringsEjj+0x24e>
100002fef: 4d 8d 3c 5e                 	leaq	(%r14,%rbx,2), %r15
100002ff3: 89 f3                       	movl	%esi, %ebx
100002ff5: 66 41 89 0c 5a              	movw	%cx, (%r10,%rbx,2)
100002ffa: 45 0f b7 3f                 	movzwl	(%r15), %r15d
100002ffe: ff c6                       	incl	%esi
100003000: 31 db                       	xorl	%ebx, %ebx
100003002: 66 39 fa                    	cmpw	%di, %dx
100003005: 0f 96 c3                    	setbe	%bl
100003008: 01 d8                       	addl	%ebx, %eax
10000300a: 31 d2                       	xorl	%edx, %edx
10000300c: 66 41 39 cf                 	cmpw	%cx, %r15w
100003010: 0f 94 c2                    	sete	%dl
100003013: 41 01 d1                    	addl	%edx, %r9d
100003016: 44 39 c0                    	cmpl	%r8d, %eax
100003019: 73 05                       	jae	5 <__ZN2Go12join_stringsEjj+0x270>
10000301b: 45 39 d9                    	cmpl	%r11d, %r9d
10000301e: 72 b0                       	jb	-80 <__ZN2Go12join_stringsEjj+0x220>
100003020: 44 39 c0                    	cmpl	%r8d, %eax
100003023: 0f 83 0b 01 00 00           	jae	267 <__ZN2Go12join_stringsEjj+0x384>
100003029: 89 c1                       	movl	%eax, %ecx
10000302b: 44 89 c2                    	movl	%r8d, %edx
10000302e: 29 c2                       	subl	%eax, %edx
100003030: 48 89 c8                    	movq	%rcx, %rax
100003033: 48 f7 d0                    	notq	%rax
100003036: f6 c2 01                    	testb	$1, %dl
100003039: 0f 85 14 01 00 00           	jne	276 <__ZN2Go12join_stringsEjj+0x3a3>
10000303f: 4c 8b 75 c0                 	movq	-64(%rbp), %r14
100003043: 4c 8b 7d c8                 	movq	-56(%rbp), %r15
100003047: 4c 01 c0                    	addq	%r8, %rax
10000304a: 0f 85 2d 01 00 00           	jne	301 <__ZN2Go12join_stringsEjj+0x3cd>
100003050: 4f 8d 54 2f 18              	leaq	24(%r15,%r13), %r10
100003055: 45 39 d9                    	cmpl	%r11d, %r9d
100003058: 0f 83 ec 00 00 00           	jae	236 <__ZN2Go12join_stringsEjj+0x39a>
10000305e: 44 89 c9                    	movl	%r9d, %ecx
100003061: 44 89 da                    	movl	%r11d, %edx
100003064: 44 29 ca                    	subl	%r9d, %edx
100003067: 48 89 cf                    	movq	%rcx, %rdi
10000306a: 48 f7 d7                    	notq	%rdi
10000306d: f6 c2 01                    	testb	$1, %dl
100003070: 74 1e                       	je	30 <__ZN2Go12join_stringsEjj+0x2e0>
100003072: 83 fe 07                    	cmpl	$7, %esi
100003075: 77 14                       	ja	20 <__ZN2Go12join_stringsEjj+0x2db>
100003077: 4b 8d 14 37                 	leaq	(%r15,%r14), %rdx
10000307b: 44 0f b7 04 4a              	movzwl	(%rdx,%rcx,2), %r8d
100003080: 89 f3                       	movl	%esi, %ebx
100003082: 4b 8d 14 2f                 	leaq	(%r15,%r13), %rdx
100003086: 66 44 89 04 5a              	movw	%r8w, (%rdx,%rbx,2)
10000308b: ff c6                       	incl	%esi
10000308d: 48 ff c1                    	incq	%rcx
100003090: 44 8b 45 d4                 	movl	-44(%rbp), %r8d
100003094: 4c 01 df                    	addq	%r11, %rdi
100003097: 0f 84 38 01 00 00           	je	312 <__ZN2Go12join_stringsEjj+0x425>
10000309d: 4b 8d 7c 37 02              	leaq	2(%r15,%r14), %rdi
1000030a2: 4d 01 fd                    	addq	%r15, %r13
1000030a5: 89 f2                       	movl	%esi, %edx
1000030a7: 83 fe 07                    	cmpl	$7, %esi
1000030aa: 77 1a                       	ja	26 <__ZN2Go12join_stringsEjj+0x316>
1000030ac: eb 22                       	jmp	34 <__ZN2Go12join_stringsEjj+0x320>
1000030ae: 66 90                       	nop
1000030b0: 48 83 c1 02                 	addq	$2, %rcx
1000030b4: ff c6                       	incl	%esi
1000030b6: 49 39 cb                    	cmpq	%rcx, %r11
1000030b9: 0f 84 11 01 00 00           	je	273 <__ZN2Go12join_stringsEjj+0x420>
1000030bf: 89 f2                       	movl	%esi, %edx
1000030c1: 83 fe 07                    	cmpl	$7, %esi
1000030c4: 76 0a                       	jbe	10 <__ZN2Go12join_stringsEjj+0x320>
1000030c6: 8d 72 01                    	leal	1(%rdx), %esi
1000030c9: 83 fe 08                    	cmpl	$8, %esi
1000030cc: 73 e2                       	jae	-30 <__ZN2Go12join_stringsEjj+0x300>
1000030ce: eb 15                       	jmp	21 <__ZN2Go12join_stringsEjj+0x335>
1000030d0: 0f b7 74 4f fe              	movzwl	-2(%rdi,%rcx,2), %esi
1000030d5: 89 d3                       	movl	%edx, %ebx
1000030d7: 66 41 89 74 5d 00           	movw	%si, (%r13,%rbx,2)
1000030dd: 8d 72 01                    	leal	1(%rdx), %esi
1000030e0: 83 fe 08                    	cmpl	$8, %esi
1000030e3: 73 cb                       	jae	-53 <__ZN2Go12join_stringsEjj+0x300>
1000030e5: 0f b7 1c 4f                 	movzwl	(%rdi,%rcx,2), %ebx
1000030e9: 89 f0                       	movl	%esi, %eax
1000030eb: 66 41 89 5c 45 00           	movw	%bx, (%r13,%rax,2)
1000030f1: eb bd                       	jmp	-67 <__ZN2Go12join_stringsEjj+0x300>
1000030f3: 4c 89 e7                    	movq	%r12, %rdi
1000030f6: 48 8b 75 a8                 	movq	-88(%rbp), %rsi
1000030fa: e8 c1 e9 ff ff              	callq	-5695 <__ZN2Go16recompute_stringEj>
1000030ff: 44 8b 45 d4                 	movl	-44(%rbp), %r8d
100003103: 49 8b 44 24 40              	movq	64(%r12), %rax
100003108: 41 8b 4c 24 20              	movl	32(%r12), %ecx
10000310d: 42 89 4c 30 14              	movl	%ecx, 20(%rax,%r14)
100003112: 45 89 44 24 20              	movl	%r8d, 32(%r12)
100003117: 48 83 c4 48                 	addq	$72, %rsp
10000311b: 5b                          	popq	%rbx
10000311c: 41 5c                       	popq	%r12
10000311e: 41 5d                       	popq	%r13
100003120: 41 5e                       	popq	%r14
100003122: 41 5f                       	popq	%r15
100003124: 5d                          	popq	%rbp
100003125: c3                          	retq
100003126: 45 31 c9                    	xorl	%r9d, %r9d
100003129: 31 f6                       	xorl	%esi, %esi
10000312b: 44 39 c0                    	cmpl	%r8d, %eax
10000312e: 0f 82 f5 fe ff ff           	jb	-267 <__ZN2Go12join_stringsEjj+0x279>
100003134: 4c 8b 75 c0                 	movq	-64(%rbp), %r14
100003138: 4c 8b 7d c8                 	movq	-56(%rbp), %r15
10000313c: 4f 8d 54 2f 18              	leaq	24(%r15,%r13), %r10
100003141: 45 39 d9                    	cmpl	%r11d, %r9d
100003144: 0f 82 14 ff ff ff           	jb	-236 <__ZN2Go12join_stringsEjj+0x2ae>
10000314a: 44 8b 45 d4                 	movl	-44(%rbp), %r8d
10000314e: 41 89 32                    	movl	%esi, (%r10)
100003151: eb b0                       	jmp	-80 <__ZN2Go12join_stringsEjj+0x353>
100003153: 83 fe 07                    	cmpl	$7, %esi
100003156: 4c 8b 7d c8                 	movq	-56(%rbp), %r15
10000315a: 77 0f                       	ja	15 <__ZN2Go12join_stringsEjj+0x3bb>
10000315c: 0f b7 54 4d b0              	movzwl	-80(%rbp,%rcx,2), %edx
100003161: 89 f7                       	movl	%esi, %edi
100003163: 4b 8d 1c 2f                 	leaq	(%r15,%r13), %rbx
100003167: 66 89 14 7b                 	movw	%dx, (%rbx,%rdi,2)
10000316b: ff c6                       	incl	%esi
10000316d: 48 ff c1                    	incq	%rcx
100003170: 4c 8b 75 c0                 	movq	-64(%rbp), %r14
100003174: 4c 01 c0                    	addq	%r8, %rax
100003177: 0f 84 d3 fe ff ff           	je	-301 <__ZN2Go12join_stringsEjj+0x2a0>
10000317d: 4b 8d 04 2f                 	leaq	(%r15,%r13), %rax
100003181: 89 f2                       	movl	%esi, %edx
100003183: 83 fe 07                    	cmpl	$7, %esi
100003186: 77 1a                       	ja	26 <__ZN2Go12join_stringsEjj+0x3f2>
100003188: eb 26                       	jmp	38 <__ZN2Go12join_stringsEjj+0x400>
10000318a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100003190: 48 83 c1 02                 	addq	$2, %rcx
100003194: ff c6                       	incl	%esi
100003196: 49 39 c8                    	cmpq	%rcx, %r8
100003199: 74 42                       	je	66 <__ZN2Go12join_stringsEjj+0x42d>
10000319b: 89 f2                       	movl	%esi, %edx
10000319d: 83 fe 07                    	cmpl	$7, %esi
1000031a0: 76 0e                       	jbe	14 <__ZN2Go12join_stringsEjj+0x400>
1000031a2: 8d 72 01                    	leal	1(%rdx), %esi
1000031a5: 83 fe 08                    	cmpl	$8, %esi
1000031a8: 73 e6                       	jae	-26 <__ZN2Go12join_stringsEjj+0x3e0>
1000031aa: eb 17                       	jmp	23 <__ZN2Go12join_stringsEjj+0x413>
1000031ac: 0f 1f 40 00                 	nopl	(%rax)
1000031b0: 0f b7 74 4d b0              	movzwl	-80(%rbp,%rcx,2), %esi
1000031b5: 89 d7                       	movl	%edx, %edi
1000031b7: 66 89 34 78                 	movw	%si, (%rax,%rdi,2)
1000031bb: 8d 72 01                    	leal	1(%rdx), %esi
1000031be: 83 fe 08                    	cmpl	$8, %esi
1000031c1: 73 cd                       	jae	-51 <__ZN2Go12join_stringsEjj+0x3e0>
1000031c3: 0f b7 7c 4d b2              	movzwl	-78(%rbp,%rcx,2), %edi
1000031c8: 89 f3                       	movl	%esi, %ebx
1000031ca: 66 89 3c 58                 	movw	%di, (%rax,%rbx,2)
1000031ce: eb c0                       	jmp	-64 <__ZN2Go12join_stringsEjj+0x3e0>
1000031d0: 83 c2 02                    	addl	$2, %edx
1000031d3: 89 d6                       	movl	%edx, %esi
1000031d5: 41 89 32                    	movl	%esi, (%r10)
1000031d8: e9 26 ff ff ff              	jmp	-218 <__ZN2Go12join_stringsEjj+0x353>
1000031dd: 83 c2 02                    	addl	$2, %edx
1000031e0: 89 d6                       	movl	%edx, %esi
1000031e2: 4f 8d 54 2f 18              	leaq	24(%r15,%r13), %r10
1000031e7: 45 39 d9                    	cmpl	%r11d, %r9d
1000031ea: 0f 82 6e fe ff ff           	jb	-402 <__ZN2Go12join_stringsEjj+0x2ae>
1000031f0: e9 55 ff ff ff              	jmp	-171 <__ZN2Go12join_stringsEjj+0x39a>
1000031f5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000031ff: 90                          	nop

0000000100003200 __ZN2Go20merge_strings_aroundEt5Colorj:
100003200: 55                          	pushq	%rbp
100003201: 48 89 e5                    	movq	%rsp, %rbp
100003204: 41 57                       	pushq	%r15
100003206: 41 56                       	pushq	%r14
100003208: 41 54                       	pushq	%r12
10000320a: 53                          	pushq	%rbx
10000320b: 41 89 ce                    	movl	%ecx, %r14d
10000320e: 41 89 d7                    	movl	%edx, %r15d
100003211: 41 89 f4                    	movl	%esi, %r12d
100003214: 48 89 fb                    	movq	%rdi, %rbx
100003217: 0f b6 47 08                 	movzbl	8(%rdi), %eax
10000321b: f7 d8                       	negl	%eax
10000321d: 41 8d 4c 04 fe              	leal	-2(%r12,%rax), %ecx
100003222: 48 8b 47 38                 	movq	56(%rdi), %rax
100003226: 0f b7 c9                    	movzwl	%cx, %ecx
100003229: 8b 14 c8                    	movl	(%rax,%rcx,8), %edx
10000322c: 89 d1                       	movl	%edx, %ecx
10000322e: 83 e1 03                    	andl	$3, %ecx
100003231: 44 39 f9                    	cmpl	%r15d, %ecx
100003234: 75 17                       	jne	23 <__ZN2Go20merge_strings_aroundEt5Colorj+0x4d>
100003236: c1 ea 02                    	shrl	$2, %edx
100003239: 44 39 f2                    	cmpl	%r14d, %edx
10000323c: 74 0f                       	je	15 <__ZN2Go20merge_strings_aroundEt5Colorj+0x4d>
10000323e: 48 89 df                    	movq	%rbx, %rdi
100003241: 44 89 f6                    	movl	%r14d, %esi
100003244: e8 67 fb ff ff              	callq	-1177 <__ZN2Go12join_stringsEjj>
100003249: 48 8b 43 38                 	movq	56(%rbx), %rax
10000324d: 41 8d 4c 24 ff              	leal	-1(%r12), %ecx
100003252: 0f b7 c9                    	movzwl	%cx, %ecx
100003255: 8b 14 c8                    	movl	(%rax,%rcx,8), %edx
100003258: 89 d1                       	movl	%edx, %ecx
10000325a: 83 e1 03                    	andl	$3, %ecx
10000325d: 44 39 f9                    	cmpl	%r15d, %ecx
100003260: 75 17                       	jne	23 <__ZN2Go20merge_strings_aroundEt5Colorj+0x79>
100003262: c1 ea 02                    	shrl	$2, %edx
100003265: 44 39 f2                    	cmpl	%r14d, %edx
100003268: 74 0f                       	je	15 <__ZN2Go20merge_strings_aroundEt5Colorj+0x79>
10000326a: 48 89 df                    	movq	%rbx, %rdi
10000326d: 44 89 f6                    	movl	%r14d, %esi
100003270: e8 3b fb ff ff              	callq	-1221 <__ZN2Go12join_stringsEjj>
100003275: 48 8b 43 38                 	movq	56(%rbx), %rax
100003279: 41 8d 4c 24 01              	leal	1(%r12), %ecx
10000327e: 0f b7 c9                    	movzwl	%cx, %ecx
100003281: 8b 14 c8                    	movl	(%rax,%rcx,8), %edx
100003284: 89 d1                       	movl	%edx, %ecx
100003286: 83 e1 03                    	andl	$3, %ecx
100003289: 44 39 f9                    	cmpl	%r15d, %ecx
10000328c: 75 17                       	jne	23 <__ZN2Go20merge_strings_aroundEt5Colorj+0xa5>
10000328e: c1 ea 02                    	shrl	$2, %edx
100003291: 44 39 f2                    	cmpl	%r14d, %edx
100003294: 74 0f                       	je	15 <__ZN2Go20merge_strings_aroundEt5Colorj+0xa5>
100003296: 48 89 df                    	movq	%rbx, %rdi
100003299: 44 89 f6                    	movl	%r14d, %esi
10000329c: e8 0f fb ff ff              	callq	-1265 <__ZN2Go12join_stringsEjj>
1000032a1: 48 8b 43 38                 	movq	56(%rbx), %rax
1000032a5: 0f b6 4b 08                 	movzbl	8(%rbx), %ecx
1000032a9: 41 8d 4c 0c 02              	leal	2(%r12,%rcx), %ecx
1000032ae: 0f b7 c9                    	movzwl	%cx, %ecx
1000032b1: 8b 14 c8                    	movl	(%rax,%rcx,8), %edx
1000032b4: 89 d0                       	movl	%edx, %eax
1000032b6: 83 e0 03                    	andl	$3, %eax
1000032b9: 44 39 f8                    	cmpl	%r15d, %eax
1000032bc: 75 13                       	jne	19 <__ZN2Go20merge_strings_aroundEt5Colorj+0xd1>
1000032be: c1 ea 02                    	shrl	$2, %edx
1000032c1: 44 39 f2                    	cmpl	%r14d, %edx
1000032c4: 74 0b                       	je	11 <__ZN2Go20merge_strings_aroundEt5Colorj+0xd1>
1000032c6: 48 89 df                    	movq	%rbx, %rdi
1000032c9: 44 89 f6                    	movl	%r14d, %esi
1000032cc: e8 df fa ff ff              	callq	-1313 <__ZN2Go12join_stringsEjj>
1000032d1: 41 0f b7 f4                 	movzwl	%r12w, %esi
1000032d5: 48 89 df                    	movq	%rbx, %rdi
1000032d8: 44 89 fa                    	movl	%r15d, %edx
1000032db: 44 89 f1                    	movl	%r14d, %ecx
1000032de: 5b                          	popq	%rbx
1000032df: 41 5c                       	popq	%r12
1000032e1: 41 5e                       	popq	%r14
1000032e3: 41 5f                       	popq	%r15
1000032e5: 5d                          	popq	%rbp
1000032e6: e9 25 f5 ff ff              	jmp	-2779 <__ZN2Go13append_stringEt5Colorj>
1000032eb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000032f0 __ZN2Go15__assign_memoryEv:
1000032f0: 55                          	pushq	%rbp
1000032f1: 48 89 e5                    	movq	%rsp, %rbp
1000032f4: 48 8b 47 30                 	movq	48(%rdi), %rax
1000032f8: 48 83 c0 7f                 	addq	$127, %rax
1000032fc: 48 83 e0 80                 	andq	$-128, %rax
100003300: 48 89 47 38                 	movq	%rax, 56(%rdi)
100003304: 8b 4f 18                    	movl	24(%rdi), %ecx
100003307: 48 8d 44 c8 7f              	leaq	127(%rax,%rcx,8), %rax
10000330c: 48 83 e0 80                 	andq	$-128, %rax
100003310: 48 89 47 40                 	movq	%rax, 64(%rdi)
100003314: 5d                          	popq	%rbp
100003315: c3                          	retq
100003316: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100003320 __ZN2Go5clearEv:
100003320: 55                          	pushq	%rbp
100003321: 48 89 e5                    	movq	%rsp, %rbp
100003324: 41 56                       	pushq	%r14
100003326: 53                          	pushq	%rbx
100003327: 49 89 fe                    	movq	%rdi, %r14
10000332a: 48 8b 7f 38                 	movq	56(%rdi), %rdi
10000332e: 41 8b 76 18                 	movl	24(%r14), %esi
100003332: 48 c1 e6 03                 	shlq	$3, %rsi
100003336: e8 3d 5a 00 00              	callq	23101 <dyld_stub_binder+0x100008d78>
10000333b: 49 8b 46 38                 	movq	56(%r14), %rax
10000333f: 41 0f b6 7e 08              	movzbl	8(%r14), %edi
100003344: 89 fa                       	movl	%edi, %edx
100003346: 83 c2 02                    	addl	$2, %edx
100003349: 31 c9                       	xorl	%ecx, %ecx
10000334b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100003350: 0f b7 f1                    	movzwl	%cx, %esi
100003353: 80 0c f0 03                 	orb	$3, (%rax,%rsi,8)
100003357: ff c1                       	incl	%ecx
100003359: 0f b7 d9                    	movzwl	%cx, %ebx
10000335c: 39 da                       	cmpl	%ebx, %edx
10000335e: 77 f0                       	ja	-16 <__ZN2Go5clearEv+0x30>
100003360: 45 8b 46 18                 	movl	24(%r14), %r8d
100003364: 44 89 c6                    	movl	%r8d, %esi
100003367: 29 d6                       	subl	%edx, %esi
100003369: 39 de                       	cmpl	%ebx, %esi
10000336b: 76 2d                       	jbe	45 <__ZN2Go5clearEv+0x7a>
10000336d: 0f b7 d7                    	movzwl	%di, %edx
100003370: 8d 5a 02                    	leal	2(%rdx), %ebx
100003373: ff c2                       	incl	%edx
100003375: 0f b7 fa                    	movzwl	%dx, %edi
100003378: 0f b7 d3                    	movzwl	%bx, %edx
10000337b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100003380: 0f b7 d9                    	movzwl	%cx, %ebx
100003383: 80 0c d8 03                 	orb	$3, (%rax,%rbx,8)
100003387: 8d 1c 0f                    	leal	(%rdi,%rcx), %ebx
10000338a: 0f b7 db                    	movzwl	%bx, %ebx
10000338d: 80 0c d8 03                 	orb	$3, (%rax,%rbx,8)
100003391: 01 d1                       	addl	%edx, %ecx
100003393: 0f b7 d9                    	movzwl	%cx, %ebx
100003396: 39 de                       	cmpl	%ebx, %esi
100003398: 77 e6                       	ja	-26 <__ZN2Go5clearEv+0x60>
10000339a: 41 39 d8                    	cmpl	%ebx, %r8d
10000339d: 76 12                       	jbe	18 <__ZN2Go5clearEv+0x91>
10000339f: 90                          	nop
1000033a0: 0f b7 d1                    	movzwl	%cx, %edx
1000033a3: 80 0c d0 03                 	orb	$3, (%rax,%rdx,8)
1000033a7: ff c1                       	incl	%ecx
1000033a9: 0f b7 d1                    	movzwl	%cx, %edx
1000033ac: 41 39 d0                    	cmpl	%edx, %r8d
1000033af: 77 ef                       	ja	-17 <__ZN2Go5clearEv+0x80>
1000033b1: 41 c7 46 20 00 00 00 00     	movl	$0, 32(%r14)
1000033b9: 41 8b 4e 1c                 	movl	28(%r14), %ecx
1000033bd: 85 c9                       	testl	%ecx, %ecx
1000033bf: 74 31                       	je	49 <__ZN2Go5clearEv+0xd2>
1000033c1: b8 14 00 00 00              	movl	$20, %eax
1000033c6: 31 d2                       	xorl	%edx, %edx
1000033c8: be ff ff ff ff              	movl	$4294967295, %esi
1000033cd: 0f 1f 00                    	nopl	(%rax)
1000033d0: 49 8b 7e 40                 	movq	64(%r14), %rdi
1000033d4: ff c9                       	decl	%ecx
1000033d6: 48 39 ca                    	cmpq	%rcx, %rdx
1000033d9: 48 8d 52 01                 	leaq	1(%rdx), %rdx
1000033dd: 89 d1                       	movl	%edx, %ecx
1000033df: 0f 44 ce                    	cmovel	%esi, %ecx
1000033e2: 89 0c 07                    	movl	%ecx, (%rdi,%rax)
1000033e5: 41 8b 4e 1c                 	movl	28(%r14), %ecx
1000033e9: 48 83 c0 20                 	addq	$32, %rax
1000033ed: 48 39 ca                    	cmpq	%rcx, %rdx
1000033f0: 72 de                       	jb	-34 <__ZN2Go5clearEv+0xb0>
1000033f2: 5b                          	popq	%rbx
1000033f3: 41 5e                       	popq	%r14
1000033f5: 5d                          	popq	%rbp
1000033f6: c3                          	retq
1000033f7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100003400 __ZNK2Go12tile_repr_atEhh:
100003400: 55                          	pushq	%rbp
100003401: 48 89 e5                    	movq	%rsp, %rbp
100003404: 41 56                       	pushq	%r14
100003406: 53                          	pushq	%rbx
100003407: ff c2                       	incl	%edx
100003409: 0f b6 47 08                 	movzbl	8(%rdi), %eax
10000340d: 83 c0 02                    	addl	$2, %eax
100003410: 0f af c2                    	imull	%edx, %eax
100003413: 8d 44 06 01                 	leal	1(%rsi,%rax), %eax
100003417: 48 8b 4f 38                 	movq	56(%rdi), %rcx
10000341b: 0f b7 c0                    	movzwl	%ax, %eax
10000341e: 8b 0c c1                    	movl	(%rcx,%rax,8), %ecx
100003421: 83 e1 03                    	andl	$3, %ecx
100003424: 83 f9 03                    	cmpl	$3, %ecx
100003427: 74 10                       	je	16 <__ZNK2Go12tile_repr_atEhh+0x39>
100003429: 48 8d 05 28 71 00 00        	leaq	28968(%rip), %rax
100003430: 48 8b 04 c8                 	movq	(%rax,%rcx,8), %rax
100003434: 5b                          	popq	%rbx
100003435: 41 5e                       	popq	%r14
100003437: 5d                          	popq	%rbp
100003438: c3                          	retq
100003439: 4c 8d 35 70 81 00 00        	leaq	33136(%rip), %r14
100003440: 48 8d 15 f5 5f 00 00        	leaq	24565(%rip), %rdx
100003447: be 00 04 00 00              	movl	$1024, %esi
10000344c: 4c 89 f7                    	movq	%r14, %rdi
10000344f: 31 c0                       	xorl	%eax, %eax
100003451: e8 88 59 00 00              	callq	22920 <dyld_stub_binder+0x100008dde>
100003456: bf 10 00 00 00              	movl	$16, %edi
10000345b: e8 1e 59 00 00              	callq	22814 <dyld_stub_binder+0x100008d7e>
100003460: 48 89 c3                    	movq	%rax, %rbx
100003463: 48 89 c7                    	movq	%rax, %rdi
100003466: 4c 89 f6                    	movq	%r14, %rsi
100003469: e8 8c 58 00 00              	callq	22668 <dyld_stub_binder+0x100008cfa>
10000346e: 48 8b 35 d3 6b 00 00        	movq	27603(%rip), %rsi
100003475: 48 8b 15 8c 6b 00 00        	movq	27532(%rip), %rdx
10000347c: 48 89 df                    	movq	%rbx, %rdi
10000347f: e8 18 59 00 00              	callq	22808 <dyld_stub_binder+0x100008d9c>
100003484: 49 89 c6                    	movq	%rax, %r14
100003487: 48 89 df                    	movq	%rbx, %rdi
10000348a: e8 07 59 00 00              	callq	22791 <dyld_stub_binder+0x100008d96>
10000348f: 4c 89 f7                    	movq	%r14, %rdi
100003492: e8 4b 58 00 00              	callq	22603 <dyld_stub_binder+0x100008ce2>
100003497: 0f 0b                       	ud2
100003499: 0f 1f 80 00 00 00 00        	nopl	(%rax)

00000001000034a0 __ZNK2Go7tile_atEhh:
1000034a0: 55                          	pushq	%rbp
1000034a1: 48 89 e5                    	movq	%rsp, %rbp
1000034a4: ff c2                       	incl	%edx
1000034a6: 0f b6 47 08                 	movzbl	8(%rdi), %eax
1000034aa: 83 c0 02                    	addl	$2, %eax
1000034ad: 0f af c2                    	imull	%edx, %eax
1000034b0: 8d 44 06 01                 	leal	1(%rsi,%rax), %eax
1000034b4: 48 8b 4f 38                 	movq	56(%rdi), %rcx
1000034b8: 0f b7 c0                    	movzwl	%ax, %eax
1000034bb: 8b 04 c1                    	movl	(%rcx,%rax,8), %eax
1000034be: 83 e0 03                    	andl	$3, %eax
1000034c1: 5d                          	popq	%rbp
1000034c2: c3                          	retq
1000034c3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000034cd: 0f 1f 00                    	nopl	(%rax)

00000001000034d0 __ZNK2Go21selected_tile_repr_atEhh:
1000034d0: 55                          	pushq	%rbp
1000034d1: 48 89 e5                    	movq	%rsp, %rbp
1000034d4: 41 56                       	pushq	%r14
1000034d6: 53                          	pushq	%rbx
1000034d7: ff c2                       	incl	%edx
1000034d9: 0f b6 47 08                 	movzbl	8(%rdi), %eax
1000034dd: 83 c0 02                    	addl	$2, %eax
1000034e0: 0f af c2                    	imull	%edx, %eax
1000034e3: 8d 44 06 01                 	leal	1(%rsi,%rax), %eax
1000034e7: 48 8b 4f 38                 	movq	56(%rdi), %rcx
1000034eb: 0f b7 c0                    	movzwl	%ax, %eax
1000034ee: 8b 0c c1                    	movl	(%rcx,%rax,8), %ecx
1000034f1: 83 e1 03                    	andl	$3, %ecx
1000034f4: 83 f9 03                    	cmpl	$3, %ecx
1000034f7: 74 10                       	je	16 <__ZNK2Go21selected_tile_repr_atEhh+0x39>
1000034f9: 48 8d 05 70 70 00 00        	leaq	28784(%rip), %rax
100003500: 48 8b 04 c8                 	movq	(%rax,%rcx,8), %rax
100003504: 5b                          	popq	%rbx
100003505: 41 5e                       	popq	%r14
100003507: 5d                          	popq	%rbp
100003508: c3                          	retq
100003509: 4c 8d 35 a0 80 00 00        	leaq	32928(%rip), %r14
100003510: 48 8d 15 25 5f 00 00        	leaq	24357(%rip), %rdx
100003517: be 00 04 00 00              	movl	$1024, %esi
10000351c: 4c 89 f7                    	movq	%r14, %rdi
10000351f: 31 c0                       	xorl	%eax, %eax
100003521: e8 b8 58 00 00              	callq	22712 <dyld_stub_binder+0x100008dde>
100003526: bf 10 00 00 00              	movl	$16, %edi
10000352b: e8 4e 58 00 00              	callq	22606 <dyld_stub_binder+0x100008d7e>
100003530: 48 89 c3                    	movq	%rax, %rbx
100003533: 48 89 c7                    	movq	%rax, %rdi
100003536: 4c 89 f6                    	movq	%r14, %rsi
100003539: e8 bc 57 00 00              	callq	22460 <dyld_stub_binder+0x100008cfa>
10000353e: 48 8b 35 03 6b 00 00        	movq	27395(%rip), %rsi
100003545: 48 8b 15 bc 6a 00 00        	movq	27324(%rip), %rdx
10000354c: 48 89 df                    	movq	%rbx, %rdi
10000354f: e8 48 58 00 00              	callq	22600 <dyld_stub_binder+0x100008d9c>
100003554: 49 89 c6                    	movq	%rax, %r14
100003557: 48 89 df                    	movq	%rbx, %rdi
10000355a: e8 37 58 00 00              	callq	22583 <dyld_stub_binder+0x100008d96>
10000355f: 4c 89 f7                    	movq	%r14, %rdi
100003562: e8 7b 57 00 00              	callq	22395 <dyld_stub_binder+0x100008ce2>
100003567: 0f 0b                       	ud2
100003569: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100003570 __ZNK2Go15move_is_suicideEt5Color:
100003570: 55                          	pushq	%rbp
100003571: 48 89 e5                    	movq	%rsp, %rbp
100003574: 44 0f b6 47 08              	movzbl	8(%rdi), %r8d
100003579: 89 f0                       	movl	%esi, %eax
10000357b: 44 29 c0                    	subl	%r8d, %eax
10000357e: 83 c0 fe                    	addl	$-2, %eax
100003581: 4c 8b 4f 38                 	movq	56(%rdi), %r9
100003585: 0f b7 c0                    	movzwl	%ax, %eax
100003588: 41 8b 0c c1                 	movl	(%r9,%rax,8), %ecx
10000358c: 89 c8                       	movl	%ecx, %eax
10000358e: 83 e0 03                    	andl	$3, %eax
100003591: 0f 84 b7 00 00 00           	je	183 <__ZNK2Go15move_is_suicideEt5Color+0xde>
100003597: 83 f8 03                    	cmpl	$3, %eax
10000359a: 74 1d                       	je	29 <__ZNK2Go15move_is_suicideEt5Color+0x49>
10000359c: 4c 8b 57 40                 	movq	64(%rdi), %r10
1000035a0: 83 e1 fc                    	andl	$-4, %ecx
1000035a3: 41 83 7c ca 18 01           	cmpl	$1, 24(%r10,%rcx,8)
1000035a9: 0f 94 c1                    	sete	%cl
1000035ac: 39 d0                       	cmpl	%edx, %eax
1000035ae: 0f 94 c0                    	sete	%al
1000035b1: 30 c8                       	xorb	%cl, %al
1000035b3: 0f 85 95 00 00 00           	jne	149 <__ZNK2Go15move_is_suicideEt5Color+0xde>
1000035b9: 8d 46 ff                    	leal	-1(%rsi), %eax
1000035bc: 0f b7 c0                    	movzwl	%ax, %eax
1000035bf: 41 8b 0c c1                 	movl	(%r9,%rax,8), %ecx
1000035c3: 89 c8                       	movl	%ecx, %eax
1000035c5: 83 e0 03                    	andl	$3, %eax
1000035c8: 0f 84 80 00 00 00           	je	128 <__ZNK2Go15move_is_suicideEt5Color+0xde>
1000035ce: 83 f8 03                    	cmpl	$3, %eax
1000035d1: 74 19                       	je	25 <__ZNK2Go15move_is_suicideEt5Color+0x7c>
1000035d3: 4c 8b 57 40                 	movq	64(%rdi), %r10
1000035d7: 83 e1 fc                    	andl	$-4, %ecx
1000035da: 41 83 7c ca 18 01           	cmpl	$1, 24(%r10,%rcx,8)
1000035e0: 0f 94 c1                    	sete	%cl
1000035e3: 39 d0                       	cmpl	%edx, %eax
1000035e5: 0f 94 c0                    	sete	%al
1000035e8: 30 c8                       	xorb	%cl, %al
1000035ea: 75 62                       	jne	98 <__ZNK2Go15move_is_suicideEt5Color+0xde>
1000035ec: 8d 46 01                    	leal	1(%rsi), %eax
1000035ef: 0f b7 c0                    	movzwl	%ax, %eax
1000035f2: 41 8b 0c c1                 	movl	(%r9,%rax,8), %ecx
1000035f6: 89 c8                       	movl	%ecx, %eax
1000035f8: 83 e0 03                    	andl	$3, %eax
1000035fb: 74 51                       	je	81 <__ZNK2Go15move_is_suicideEt5Color+0xde>
1000035fd: 83 f8 03                    	cmpl	$3, %eax
100003600: 74 19                       	je	25 <__ZNK2Go15move_is_suicideEt5Color+0xab>
100003602: 4c 8b 57 40                 	movq	64(%rdi), %r10
100003606: 83 e1 fc                    	andl	$-4, %ecx
100003609: 41 83 7c ca 18 01           	cmpl	$1, 24(%r10,%rcx,8)
10000360f: 0f 94 c1                    	sete	%cl
100003612: 39 d0                       	cmpl	%edx, %eax
100003614: 0f 94 c0                    	sete	%al
100003617: 30 c8                       	xorb	%cl, %al
100003619: 75 33                       	jne	51 <__ZNK2Go15move_is_suicideEt5Color+0xde>
10000361b: 41 0f b7 c0                 	movzwl	%r8w, %eax
10000361f: 8d 44 06 02                 	leal	2(%rsi,%rax), %eax
100003623: 0f b7 c0                    	movzwl	%ax, %eax
100003626: 41 8b 04 c1                 	movl	(%r9,%rax,8), %eax
10000362a: 89 c1                       	movl	%eax, %ecx
10000362c: 83 e1 03                    	andl	$3, %ecx
10000362f: 74 1d                       	je	29 <__ZNK2Go15move_is_suicideEt5Color+0xde>
100003631: 83 f9 03                    	cmpl	$3, %ecx
100003634: 74 1c                       	je	28 <__ZNK2Go15move_is_suicideEt5Color+0xe2>
100003636: 48 8b 77 40                 	movq	64(%rdi), %rsi
10000363a: 83 e0 fc                    	andl	$-4, %eax
10000363d: 83 7c c6 18 01              	cmpl	$1, 24(%rsi,%rax,8)
100003642: 0f 94 c0                    	sete	%al
100003645: 39 d1                       	cmpl	%edx, %ecx
100003647: 0f 94 c1                    	sete	%cl
10000364a: 30 c1                       	xorb	%al, %cl
10000364c: 74 04                       	je	4 <__ZNK2Go15move_is_suicideEt5Color+0xe2>
10000364e: 31 c0                       	xorl	%eax, %eax
100003650: 5d                          	popq	%rbp
100003651: c3                          	retq
100003652: b0 01                       	movb	$1, %al
100003654: 5d                          	popq	%rbp
100003655: c3                          	retq
100003656: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100003660 __ZN2Go15place_lone_tileEt5Color:
100003660: 55                          	pushq	%rbp
100003661: 48 89 e5                    	movq	%rsp, %rbp
100003664: 41 56                       	pushq	%r14
100003666: 53                          	pushq	%rbx
100003667: 48 63 4f 20                 	movslq	32(%rdi), %rcx
10000366b: 48 83 f9 ff                 	cmpq	$-1, %rcx
10000366f: 0f 84 bf 00 00 00           	je	191 <__ZN2Go15place_lone_tileEt5Color+0xd4>
100003675: 41 89 ca                    	movl	%ecx, %r10d
100003678: 48 8b 5f 38                 	movq	56(%rdi), %rbx
10000367c: 4c 8b 4f 40                 	movq	64(%rdi), %r9
100003680: 48 89 c8                    	movq	%rcx, %rax
100003683: 48 c1 e0 05                 	shlq	$5, %rax
100003687: 41 8b 44 01 14              	movl	20(%r9,%rax), %eax
10000368c: 89 47 20                    	movl	%eax, 32(%rdi)
10000368f: 49 c1 e2 05                 	shlq	$5, %r10
100003693: 0f b7 c6                    	movzwl	%si, %eax
100003696: 8d 0c 8d 00 00 00 00        	leal	(,%rcx,4), %ecx
10000369d: 09 d1                       	orl	%edx, %ecx
10000369f: 89 0c c3                    	movl	%ecx, (%rbx,%rax,8)
1000036a2: 66 89 44 c3 06              	movw	%ax, 6(%rbx,%rax,8)
1000036a7: 66 89 44 c3 04              	movw	%ax, 4(%rbx,%rax,8)
1000036ac: 43 89 54 11 10              	movl	%edx, 16(%r9,%r10)
1000036b1: 43 c7 44 11 14 01 00 00 00  	movl	$1, 20(%r9,%r10)
1000036ba: 66 43 89 44 11 1c           	movw	%ax, 28(%r9,%r10)
1000036c0: 44 0f b6 47 08              	movzbl	8(%rdi), %r8d
1000036c5: 89 f0                       	movl	%esi, %eax
1000036c7: 44 29 c0                    	subl	%r8d, %eax
1000036ca: 83 c0 fe                    	addl	$-2, %eax
1000036cd: 66 43 89 04 11              	movw	%ax, (%r9,%r10)
1000036d2: 48 8b 57 38                 	movq	56(%rdi), %rdx
1000036d6: 0f b7 c0                    	movzwl	%ax, %eax
1000036d9: 31 c9                       	xorl	%ecx, %ecx
1000036db: f6 04 c2 03                 	testb	$3, (%rdx,%rax,8)
1000036df: 4b 8d 04 11                 	leaq	(%r9,%r10), %rax
1000036e3: 0f 94 c1                    	sete	%cl
1000036e6: 8d 7e ff                    	leal	-1(%rsi), %edi
1000036e9: 66 89 3c 48                 	movw	%di, (%rax,%rcx,2)
1000036ed: 0f b7 df                    	movzwl	%di, %ebx
1000036f0: 31 ff                       	xorl	%edi, %edi
1000036f2: f6 04 da 03                 	testb	$3, (%rdx,%rbx,8)
1000036f6: 40 0f 94 c7                 	sete	%dil
1000036fa: 01 cf                       	addl	%ecx, %edi
1000036fc: 8d 4e 01                    	leal	1(%rsi), %ecx
1000036ff: 66 89 0c 78                 	movw	%cx, (%rax,%rdi,2)
100003703: 0f b7 c9                    	movzwl	%cx, %ecx
100003706: 8b 0c ca                    	movl	(%rdx,%rcx,8), %ecx
100003709: 83 e1 03                    	andl	$3, %ecx
10000370c: 83 f9 01                    	cmpl	$1, %ecx
10000370f: 83 d7 00                    	adcl	$0, %edi
100003712: 42 8d 4c 06 02              	leal	2(%rsi,%r8), %ecx
100003717: 66 89 0c 78                 	movw	%cx, (%rax,%rdi,2)
10000371b: 0f b7 c9                    	movzwl	%cx, %ecx
10000371e: 8b 0c ca                    	movl	(%rdx,%rcx,8), %ecx
100003721: 83 e1 03                    	andl	$3, %ecx
100003724: 83 f9 01                    	cmpl	$1, %ecx
100003727: 83 d7 00                    	adcl	$0, %edi
10000372a: 43 89 7c 11 18              	movl	%edi, 24(%r9,%r10)
10000372f: 5b                          	popq	%rbx
100003730: 41 5e                       	popq	%r14
100003732: 5d                          	popq	%rbp
100003733: c3                          	retq
100003734: 48 b8 73 74 72 69 6e 67 73 00       	movabsq	$32483346234897523, %rax
10000373e: 48 89 05 78 7e 00 00        	movq	%rax, 32376(%rip)
100003745: 48 b8 66 72 65 65 20 73 74 72       	movabsq	$8247343400599515750, %rax
10000374f: 48 89 05 62 7e 00 00        	movq	%rax, 32354(%rip)
100003756: 48 b8 6e 6f 20 6d 6f 72 65 20       	movabsq	$2334397804759248750, %rax
100003760: 48 89 05 49 7e 00 00        	movq	%rax, 32329(%rip)
100003767: 4c 8d 35 42 7e 00 00        	leaq	32322(%rip), %r14
10000376e: bf 10 00 00 00              	movl	$16, %edi
100003773: e8 06 56 00 00              	callq	22022 <dyld_stub_binder+0x100008d7e>
100003778: 48 89 c3                    	movq	%rax, %rbx
10000377b: 48 89 c7                    	movq	%rax, %rdi
10000377e: 4c 89 f6                    	movq	%r14, %rsi
100003781: e8 74 55 00 00              	callq	21876 <dyld_stub_binder+0x100008cfa>
100003786: 48 8b 35 bb 68 00 00        	movq	26811(%rip), %rsi
10000378d: 48 8b 15 74 68 00 00        	movq	26740(%rip), %rdx
100003794: 48 89 df                    	movq	%rbx, %rdi
100003797: e8 00 56 00 00              	callq	22016 <dyld_stub_binder+0x100008d9c>
10000379c: 49 89 c6                    	movq	%rax, %r14
10000379f: 48 89 df                    	movq	%rbx, %rdi
1000037a2: e8 ef 55 00 00              	callq	21999 <dyld_stub_binder+0x100008d96>
1000037a7: 4c 89 f7                    	movq	%r14, %rdi
1000037aa: e8 33 55 00 00              	callq	21811 <dyld_stub_binder+0x100008ce2>
1000037af: 0f 0b                       	ud2
1000037b1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000037bb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000037c0 __ZN2Go8_do_playEt5Color:
1000037c0: 55                          	pushq	%rbp
1000037c1: 48 89 e5                    	movq	%rsp, %rbp
1000037c4: 41 57                       	pushq	%r15
1000037c6: 41 56                       	pushq	%r14
1000037c8: 41 55                       	pushq	%r13
1000037ca: 41 54                       	pushq	%r12
1000037cc: 53                          	pushq	%rbx
1000037cd: 48 83 ec 28                 	subq	$40, %rsp
1000037d1: 41 89 d7                    	movl	%edx, %r15d
1000037d4: 41 89 f6                    	movl	%esi, %r14d
1000037d7: 41 0f b6 c7                 	movzbl	%r15b, %eax
1000037db: bb 03 00 00 00              	movl	$3, %ebx
1000037e0: 29 c3                       	subl	%eax, %ebx
1000037e2: 44 0f b6 47 08              	movzbl	8(%rdi), %r8d
1000037e7: 41 89 f2                    	movl	%esi, %r10d
1000037ea: 41 83 c2 fe                 	addl	$-2, %r10d
1000037ee: 44 89 d0                    	movl	%r10d, %eax
1000037f1: 44 29 c0                    	subl	%r8d, %eax
1000037f4: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
1000037f8: 48 8b 57 38                 	movq	56(%rdi), %rdx
1000037fc: 0f b7 c0                    	movzwl	%ax, %eax
1000037ff: 8b 3c c2                    	movl	(%rdx,%rax,8), %edi
100003802: 89 f8                       	movl	%edi, %eax
100003804: 83 e0 03                    	andl	$3, %eax
100003807: 44 39 f8                    	cmpl	%r15d, %eax
10000380a: 75 0c                       	jne	12 <__ZN2Go8_do_playEt5Color+0x58>
10000380c: c1 ef 02                    	shrl	$2, %edi
10000380f: b0 01                       	movb	$1, %al
100003811: 45 31 c9                    	xorl	%r9d, %r9d
100003814: 89 f9                       	movl	%edi, %ecx
100003816: eb 2d                       	jmp	45 <__ZN2Go8_do_playEt5Color+0x85>
100003818: b9 ff ff ff ff              	movl	$4294967295, %ecx
10000381d: 45 31 c9                    	xorl	%r9d, %r9d
100003820: 39 d8                       	cmpl	%ebx, %eax
100003822: 75 1f                       	jne	31 <__ZN2Go8_do_playEt5Color+0x83>
100003824: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100003828: 48 8b 40 40                 	movq	64(%rax), %rax
10000382c: 48 c1 ef 02                 	shrq	$2, %rdi
100003830: 48 c1 e7 05                 	shlq	$5, %rdi
100003834: 45 31 c9                    	xorl	%r9d, %r9d
100003837: 83 7c 38 18 01              	cmpl	$1, 24(%rax,%rdi)
10000383c: 75 05                       	jne	5 <__ZN2Go8_do_playEt5Color+0x83>
10000383e: 44 8b 4c 38 14              	movl	20(%rax,%rdi), %r9d
100003843: 31 c0                       	xorl	%eax, %eax
100003845: 41 8d 76 ff                 	leal	-1(%r14), %esi
100003849: 44 0f b7 de                 	movzwl	%si, %r11d
10000384d: 42 8b 3c da                 	movl	(%rdx,%r11,8), %edi
100003851: 89 fe                       	movl	%edi, %esi
100003853: 83 e6 03                    	andl	$3, %esi
100003856: 44 39 fe                    	cmpl	%r15d, %esi
100003859: 75 0e                       	jne	14 <__ZN2Go8_do_playEt5Color+0xa9>
10000385b: c1 ef 02                    	shrl	$2, %edi
10000385e: 39 f9                       	cmpl	%edi, %ecx
100003860: 0f 95 c1                    	setne	%cl
100003863: 00 c8                       	addb	%cl, %al
100003865: 89 f9                       	movl	%edi, %ecx
100003867: eb 20                       	jmp	32 <__ZN2Go8_do_playEt5Color+0xc9>
100003869: 39 de                       	cmpl	%ebx, %esi
10000386b: 75 1c                       	jne	28 <__ZN2Go8_do_playEt5Color+0xc9>
10000386d: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100003871: 48 8b 76 40                 	movq	64(%rsi), %rsi
100003875: 48 c1 ef 02                 	shrq	$2, %rdi
100003879: 48 c1 e7 05                 	shlq	$5, %rdi
10000387d: 83 7c 3e 18 01              	cmpl	$1, 24(%rsi,%rdi)
100003882: 75 05                       	jne	5 <__ZN2Go8_do_playEt5Color+0xc9>
100003884: 44 03 4c 3e 14              	addl	20(%rsi,%rdi), %r9d
100003889: 41 8d 76 01                 	leal	1(%r14), %esi
10000388d: 44 0f b7 e6                 	movzwl	%si, %r12d
100003891: 42 8b 3c e2                 	movl	(%rdx,%r12,8), %edi
100003895: 89 fe                       	movl	%edi, %esi
100003897: 83 e6 03                    	andl	$3, %esi
10000389a: 44 39 fe                    	cmpl	%r15d, %esi
10000389d: 75 0e                       	jne	14 <__ZN2Go8_do_playEt5Color+0xed>
10000389f: c1 ef 02                    	shrl	$2, %edi
1000038a2: 39 f9                       	cmpl	%edi, %ecx
1000038a4: 0f 95 c1                    	setne	%cl
1000038a7: 00 c8                       	addb	%cl, %al
1000038a9: 89 f9                       	movl	%edi, %ecx
1000038ab: eb 20                       	jmp	32 <__ZN2Go8_do_playEt5Color+0x10d>
1000038ad: 39 de                       	cmpl	%ebx, %esi
1000038af: 75 1c                       	jne	28 <__ZN2Go8_do_playEt5Color+0x10d>
1000038b1: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
1000038b5: 48 8b 76 40                 	movq	64(%rsi), %rsi
1000038b9: 48 c1 ef 02                 	shrq	$2, %rdi
1000038bd: 48 c1 e7 05                 	shlq	$5, %rdi
1000038c1: 83 7c 3e 18 01              	cmpl	$1, 24(%rsi,%rdi)
1000038c6: 75 05                       	jne	5 <__ZN2Go8_do_playEt5Color+0x10d>
1000038c8: 44 03 4c 3e 14              	addl	20(%rsi,%rdi), %r9d
1000038cd: 41 0f b7 f0                 	movzwl	%r8w, %esi
1000038d1: 41 8d 74 36 02              	leal	2(%r14,%rsi), %esi
1000038d6: 0f b7 f6                    	movzwl	%si, %esi
1000038d9: 8b 14 f2                    	movl	(%rdx,%rsi,8), %edx
1000038dc: 89 d6                       	movl	%edx, %esi
1000038de: 83 e6 03                    	andl	$3, %esi
1000038e1: 44 39 fe                    	cmpl	%r15d, %esi
1000038e4: 89 5d cc                    	movl	%ebx, -52(%rbp)
1000038e7: 75 0e                       	jne	14 <__ZN2Go8_do_playEt5Color+0x137>
1000038e9: c1 ea 02                    	shrl	$2, %edx
1000038ec: 39 d1                       	cmpl	%edx, %ecx
1000038ee: 0f 95 c1                    	setne	%cl
1000038f1: 00 c8                       	addb	%cl, %al
1000038f3: 89 d1                       	movl	%edx, %ecx
1000038f5: eb 20                       	jmp	32 <__ZN2Go8_do_playEt5Color+0x157>
1000038f7: 39 de                       	cmpl	%ebx, %esi
1000038f9: 75 1c                       	jne	28 <__ZN2Go8_do_playEt5Color+0x157>
1000038fb: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
1000038ff: 48 8b 76 40                 	movq	64(%rsi), %rsi
100003903: 48 c1 ea 02                 	shrq	$2, %rdx
100003907: 48 c1 e2 05                 	shlq	$5, %rdx
10000390b: 83 7c 16 18 01              	cmpl	$1, 24(%rsi,%rdx)
100003910: 75 05                       	jne	5 <__ZN2Go8_do_playEt5Color+0x157>
100003912: 44 03 4c 16 14              	addl	20(%rsi,%rdx), %r9d
100003917: 48 8b 5d d0                 	movq	-48(%rbp), %rbx
10000391b: 45 0f b7 ee                 	movzwl	%r14w, %r13d
10000391f: 3c 01                       	cmpb	$1, %al
100003921: 44 89 4d c8                 	movl	%r9d, -56(%rbp)
100003925: 74 6f                       	je	111 <__ZN2Go8_do_playEt5Color+0x1d6>
100003927: 84 c0                       	testb	%al, %al
100003929: 75 7b                       	jne	123 <__ZN2Go8_do_playEt5Color+0x1e6>
10000392b: 4c 89 65 c0                 	movq	%r12, -64(%rbp)
10000392f: 4c 89 5d b8                 	movq	%r11, -72(%rbp)
100003933: 4c 89 55 b0                 	movq	%r10, -80(%rbp)
100003937: 48 89 df                    	movq	%rbx, %rdi
10000393a: 44 89 ee                    	movl	%r13d, %esi
10000393d: 44 89 fa                    	movl	%r15d, %edx
100003940: e8 1b fd ff ff              	callq	-741 <__ZN2Go15place_lone_tileEt5Color>
100003945: 66 41 bc ff ff              	movw	$65535, %r12w
10000394a: 83 78 18 00                 	cmpl	$0, 24(%rax)
10000394e: 75 69                       	jne	105 <__ZN2Go8_do_playEt5Color+0x1f9>
100003950: 44 0f b6 4b 08              	movzbl	8(%rbx), %r9d
100003955: 4c 8b 45 b0                 	movq	-80(%rbp), %r8
100003959: 45 29 c8                    	subl	%r9d, %r8d
10000395c: 48 8b 4b 38                 	movq	56(%rbx), %rcx
100003960: 41 0f b7 c0                 	movzwl	%r8w, %eax
100003964: 8b 04 c1                    	movl	(%rcx,%rax,8), %eax
100003967: 89 c6                       	movl	%eax, %esi
100003969: 83 e6 03                    	andl	$3, %esi
10000396c: 3b 75 cc                    	cmpl	-52(%rbp), %esi
10000396f: 75 7e                       	jne	126 <__ZN2Go8_do_playEt5Color+0x22f>
100003971: 48 8b 73 40                 	movq	64(%rbx), %rsi
100003975: 48 c1 e8 02                 	shrq	$2, %rax
100003979: 48 c1 e0 05                 	shlq	$5, %rax
10000397d: 83 7c 06 18 01              	cmpl	$1, 24(%rsi,%rax)
100003982: 48 8b 55 b8                 	movq	-72(%rbp), %rdx
100003986: 4c 8b 55 c0                 	movq	-64(%rbp), %r10
10000398a: 75 6f                       	jne	111 <__ZN2Go8_do_playEt5Color+0x23b>
10000398c: 83 7c 06 14 01              	cmpl	$1, 20(%rsi,%rax)
100003991: 0f 94 c0                    	sete	%al
100003994: eb 67                       	jmp	103 <__ZN2Go8_do_playEt5Color+0x23d>
100003996: 48 89 df                    	movq	%rbx, %rdi
100003999: 44 89 ee                    	movl	%r13d, %esi
10000399c: 44 89 fa                    	movl	%r15d, %edx
10000399f: e8 6c ee ff ff              	callq	-4500 <__ZN2Go13append_stringEt5Colorj>
1000039a4: eb 0e                       	jmp	14 <__ZN2Go8_do_playEt5Color+0x1f4>
1000039a6: 48 89 df                    	movq	%rbx, %rdi
1000039a9: 44 89 ee                    	movl	%r13d, %esi
1000039ac: 44 89 fa                    	movl	%r15d, %edx
1000039af: e8 4c f8 ff ff              	callq	-1972 <__ZN2Go20merge_strings_aroundEt5Colorj>
1000039b4: 66 41 bc ff ff              	movw	$65535, %r12w
1000039b9: 48 89 df                    	movq	%rbx, %rdi
1000039bc: 44 89 ee                    	movl	%r13d, %esi
1000039bf: 44 89 fa                    	movl	%r15d, %edx
1000039c2: e8 d9 e8 ff ff              	callq	-5927 <__ZN2Go18subtract_libertiesEt5Color>
1000039c7: 66 44 89 63 0e              	movw	%r12w, 14(%rbx)
1000039cc: 41 83 ff 01                 	cmpl	$1, %r15d
1000039d0: 75 08                       	jne	8 <__ZN2Go8_do_playEt5Color+0x21a>
1000039d2: 8b 45 c8                    	movl	-56(%rbp), %eax
1000039d5: 01 43 24                    	addl	%eax, 36(%rbx)
1000039d8: eb 06                       	jmp	6 <__ZN2Go8_do_playEt5Color+0x220>
1000039da: 8b 45 c8                    	movl	-56(%rbp), %eax
1000039dd: 01 43 28                    	addl	%eax, 40(%rbx)
1000039e0: 48 83 c4 28                 	addq	$40, %rsp
1000039e4: 5b                          	popq	%rbx
1000039e5: 41 5c                       	popq	%r12
1000039e7: 41 5d                       	popq	%r13
1000039e9: 41 5e                       	popq	%r14
1000039eb: 41 5f                       	popq	%r15
1000039ed: 5d                          	popq	%rbp
1000039ee: c3                          	retq
1000039ef: 31 c0                       	xorl	%eax, %eax
1000039f1: 48 8b 55 b8                 	movq	-72(%rbp), %rdx
1000039f5: 4c 8b 55 c0                 	movq	-64(%rbp), %r10
1000039f9: eb 02                       	jmp	2 <__ZN2Go8_do_playEt5Color+0x23d>
1000039fb: 31 c0                       	xorl	%eax, %eax
1000039fd: 41 8d 76 02                 	leal	2(%r14), %esi
100003a01: 8b 3c d1                    	movl	(%rcx,%rdx,8), %edi
100003a04: 89 fb                       	movl	%edi, %ebx
100003a06: 83 e3 03                    	andl	$3, %ebx
100003a09: 3b 5d cc                    	cmpl	-52(%rbp), %ebx
100003a0c: 75 28                       	jne	40 <__ZN2Go8_do_playEt5Color+0x276>
100003a0e: 48 8b 5d d0                 	movq	-48(%rbp), %rbx
100003a12: 48 8b 5b 40                 	movq	64(%rbx), %rbx
100003a16: 48 c1 ef 02                 	shrq	$2, %rdi
100003a1a: 48 c1 e7 05                 	shlq	$5, %rdi
100003a1e: 83 7c 3b 18 01              	cmpl	$1, 24(%rbx,%rdi)
100003a23: 75 11                       	jne	17 <__ZN2Go8_do_playEt5Color+0x276>
100003a25: 83 7c 3b 14 01              	cmpl	$1, 20(%rbx,%rdi)
100003a2a: 0f 94 c3                    	sete	%bl
100003a2d: 41 0f 45 d0                 	cmovnel	%r8d, %edx
100003a31: 00 d8                       	addb	%bl, %al
100003a33: 41 89 d0                    	movl	%edx, %r8d
100003a36: 42 8b 3c d1                 	movl	(%rcx,%r10,8), %edi
100003a3a: 89 fb                       	movl	%edi, %ebx
100003a3c: 83 e3 03                    	andl	$3, %ebx
100003a3f: 3b 5d cc                    	cmpl	-52(%rbp), %ebx
100003a42: 75 28                       	jne	40 <__ZN2Go8_do_playEt5Color+0x2ac>
100003a44: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100003a48: 48 8b 5a 40                 	movq	64(%rdx), %rbx
100003a4c: 48 c1 ef 02                 	shrq	$2, %rdi
100003a50: 48 c1 e7 05                 	shlq	$5, %rdi
100003a54: 83 7c 3b 18 01              	cmpl	$1, 24(%rbx,%rdi)
100003a59: 75 11                       	jne	17 <__ZN2Go8_do_playEt5Color+0x2ac>
100003a5b: 83 7c 3b 14 01              	cmpl	$1, 20(%rbx,%rdi)
100003a60: 0f 94 c3                    	sete	%bl
100003a63: 45 0f 45 d0                 	cmovnel	%r8d, %r10d
100003a67: 00 d8                       	addb	%bl, %al
100003a69: 45 89 d0                    	movl	%r10d, %r8d
100003a6c: 41 0f b7 d1                 	movzwl	%r9w, %edx
100003a70: 01 f2                       	addl	%esi, %edx
100003a72: 0f b7 f2                    	movzwl	%dx, %esi
100003a75: 8b 0c f1                    	movl	(%rcx,%rsi,8), %ecx
100003a78: 89 ce                       	movl	%ecx, %esi
100003a7a: 83 e6 03                    	andl	$3, %esi
100003a7d: 3b 75 cc                    	cmpl	-52(%rbp), %esi
100003a80: 48 8b 5d d0                 	movq	-48(%rbp), %rbx
100003a84: 75 21                       	jne	33 <__ZN2Go8_do_playEt5Color+0x2e7>
100003a86: 48 8b 73 40                 	movq	64(%rbx), %rsi
100003a8a: 48 c1 e9 02                 	shrq	$2, %rcx
100003a8e: 48 c1 e1 05                 	shlq	$5, %rcx
100003a92: 83 7c 0e 18 01              	cmpl	$1, 24(%rsi,%rcx)
100003a97: 75 0e                       	jne	14 <__ZN2Go8_do_playEt5Color+0x2e7>
100003a99: 83 7c 0e 14 01              	cmpl	$1, 20(%rsi,%rcx)
100003a9e: 0f 94 c1                    	sete	%cl
100003aa1: 44 0f 44 c2                 	cmovel	%edx, %r8d
100003aa5: 00 c8                       	addb	%cl, %al
100003aa7: 3c 01                       	cmpb	$1, %al
100003aa9: 41 bc ff ff 00 00           	movl	$65535, %r12d
100003aaf: 45 0f 44 e0                 	cmovel	%r8d, %r12d
100003ab3: e9 01 ff ff ff              	jmp	-255 <__ZN2Go8_do_playEt5Color+0x1f9>
100003ab8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100003ac0 __ZNK2Go12is_star_tileEhh:
100003ac0: 55                          	pushq	%rbp
100003ac1: 48 89 e5                    	movq	%rsp, %rbp
100003ac4: 8a 47 08                    	movb	8(%rdi), %al
100003ac7: 3c 09                       	cmpb	$9, %al
100003ac9: 74 3a                       	je	58 <__ZNK2Go12is_star_tileEhh+0x45>
100003acb: 3c 0d                       	cmpb	$13, %al
100003acd: 74 5f                       	je	95 <__ZNK2Go12is_star_tileEhh+0x6e>
100003acf: 3c 13                       	cmpb	$19, %al
100003ad1: 75 7b                       	jne	123 <__ZNK2Go12is_star_tileEhh+0x8e>
100003ad3: 80 7f 09 13                 	cmpb	$19, 9(%rdi)
100003ad7: 75 75                       	jne	117 <__ZNK2Go12is_star_tileEhh+0x8e>
100003ad9: 31 c0                       	xorl	%eax, %eax
100003adb: 40 80 fe 0f                 	cmpb	$15, %sil
100003adf: 77 6b                       	ja	107 <__ZNK2Go12is_star_tileEhh+0x8c>
100003ae1: 40 0f b6 ce                 	movzbl	%sil, %ecx
100003ae5: be 08 82 00 00              	movl	$33288, %esi
100003aea: 48 0f a3 ce                 	btq	%rcx, %rsi
100003aee: 73 5c                       	jae	92 <__ZNK2Go12is_star_tileEhh+0x8c>
100003af0: 80 c2 fd                    	addb	$-3, %dl
100003af3: 80 fa 0d                    	cmpb	$13, %dl
100003af6: 73 56                       	jae	86 <__ZNK2Go12is_star_tileEhh+0x8e>
100003af8: b8 41 10 00 00              	movl	$4161, %eax
100003afd: 89 d1                       	movl	%edx, %ecx
100003aff: d3 e8                       	shrl	%cl, %eax
100003b01: 24 01                       	andb	$1, %al
100003b03: 5d                          	popq	%rbp
100003b04: c3                          	retq
100003b05: 80 7f 09 09                 	cmpb	$9, 9(%rdi)
100003b09: 75 43                       	jne	67 <__ZNK2Go12is_star_tileEhh+0x8e>
100003b0b: 89 f0                       	movl	%esi, %eax
100003b0d: 0c 04                       	orb	$4, %al
100003b0f: 3c 06                       	cmpb	$6, %al
100003b11: 75 0c                       	jne	12 <__ZNK2Go12is_star_tileEhh+0x5f>
100003b13: b0 01                       	movb	$1, %al
100003b15: 89 d1                       	movl	%edx, %ecx
100003b17: 80 c9 04                    	orb	$4, %cl
100003b1a: 80 f9 06                    	cmpb	$6, %cl
100003b1d: 74 2d                       	je	45 <__ZNK2Go12is_star_tileEhh+0x8c>
100003b1f: 40 80 f6 04                 	xorb	$4, %sil
100003b23: 80 f2 04                    	xorb	$4, %dl
100003b26: 40 08 f2                    	orb	%sil, %dl
100003b29: 0f 94 c0                    	sete	%al
100003b2c: 5d                          	popq	%rbp
100003b2d: c3                          	retq
100003b2e: 80 7f 09 0d                 	cmpb	$13, 9(%rdi)
100003b32: 75 1a                       	jne	26 <__ZNK2Go12is_star_tileEhh+0x8e>
100003b34: 40 80 fe 09                 	cmpb	$9, %sil
100003b38: 74 06                       	je	6 <__ZNK2Go12is_star_tileEhh+0x80>
100003b3a: 40 80 fe 03                 	cmpb	$3, %sil
100003b3e: 75 12                       	jne	18 <__ZNK2Go12is_star_tileEhh+0x92>
100003b40: b0 01                       	movb	$1, %al
100003b42: 80 fa 03                    	cmpb	$3, %dl
100003b45: 74 05                       	je	5 <__ZNK2Go12is_star_tileEhh+0x8c>
100003b47: 80 fa 09                    	cmpb	$9, %dl
100003b4a: 75 06                       	jne	6 <__ZNK2Go12is_star_tileEhh+0x92>
100003b4c: 5d                          	popq	%rbp
100003b4d: c3                          	retq
100003b4e: 31 c0                       	xorl	%eax, %eax
100003b50: 5d                          	popq	%rbp
100003b51: c3                          	retq
100003b52: 40 80 f6 06                 	xorb	$6, %sil
100003b56: 80 f2 06                    	xorb	$6, %dl
100003b59: 40 08 f2                    	orb	%sil, %dl
100003b5c: 0f 94 c0                    	sete	%al
100003b5f: 5d                          	popq	%rbp
100003b60: c3                          	retq
100003b61: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003b6b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100003b70 __ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_:
100003b70: 55                          	pushq	%rbp
100003b71: 48 89 e5                    	movq	%rsp, %rbp
100003b74: 41 57                       	pushq	%r15
100003b76: 41 56                       	pushq	%r14
100003b78: 41 55                       	pushq	%r13
100003b7a: 41 54                       	pushq	%r12
100003b7c: 53                          	pushq	%rbx
100003b7d: 48 83 ec 28                 	subq	$40, %rsp
100003b81: 49 89 ce                    	movq	%rcx, %r14
100003b84: 49 89 ff                    	movq	%rdi, %r15
100003b87: 0f b6 02                    	movzbl	(%rdx), %eax
100003b8a: a8 01                       	testb	$1, %al
100003b8c: 74 0a                       	je	10 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x28>
100003b8e: 48 8b 42 08                 	movq	8(%rdx), %rax
100003b92: 48 8b 52 10                 	movq	16(%rdx), %rdx
100003b96: eb 06                       	jmp	6 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x2e>
100003b98: 48 ff c2                    	incq	%rdx
100003b9b: 48 d1 e8                    	shrq	%rax
100003b9e: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100003ba2: 48 89 f7                    	movq	%rsi, %rdi
100003ba5: 48 89 d6                    	movq	%rdx, %rsi
100003ba8: 48 89 c2                    	movq	%rax, %rdx
100003bab: e8 10 3f 00 00              	callq	16144 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003bb0: 4c 8d 25 95 58 00 00        	leaq	22677(%rip), %r12
100003bb7: ba 08 00 00 00              	movl	$8, %edx
100003bbc: 48 89 c7                    	movq	%rax, %rdi
100003bbf: 4c 89 e6                    	movq	%r12, %rsi
100003bc2: e8 f9 3e 00 00              	callq	16121 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003bc7: 41 8b 77 24                 	movl	36(%r15), %esi
100003bcb: 48 89 c7                    	movq	%rax, %rdi
100003bce: e8 51 51 00 00              	callq	20817 <dyld_stub_binder+0x100008d24>
100003bd3: 4c 8d 2d 7b 58 00 00        	leaq	22651(%rip), %r13
100003bda: ba 01 00 00 00              	movl	$1, %edx
100003bdf: 48 89 c7                    	movq	%rax, %rdi
100003be2: 4c 89 ee                    	movq	%r13, %rsi
100003be5: e8 d6 3e 00 00              	callq	16086 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003bea: 41 0f b6 16                 	movzbl	(%r14), %edx
100003bee: f6 c2 01                    	testb	$1, %dl
100003bf1: 74 0a                       	je	10 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x8d>
100003bf3: 49 8b 56 08                 	movq	8(%r14), %rdx
100003bf7: 4d 8b 76 10                 	movq	16(%r14), %r14
100003bfb: eb 06                       	jmp	6 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x93>
100003bfd: 49 ff c6                    	incq	%r14
100003c00: 48 d1 ea                    	shrq	%rdx
100003c03: 48 8b 5d c8                 	movq	-56(%rbp), %rbx
100003c07: 48 89 df                    	movq	%rbx, %rdi
100003c0a: 4c 89 f6                    	movq	%r14, %rsi
100003c0d: e8 ae 3e 00 00              	callq	16046 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003c12: ba 08 00 00 00              	movl	$8, %edx
100003c17: 48 89 c7                    	movq	%rax, %rdi
100003c1a: 4c 89 e6                    	movq	%r12, %rsi
100003c1d: 49 89 dc                    	movq	%rbx, %r12
100003c20: e8 9b 3e 00 00              	callq	16027 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003c25: 41 8b 77 28                 	movl	40(%r15), %esi
100003c29: 48 89 c7                    	movq	%rax, %rdi
100003c2c: e8 f3 50 00 00              	callq	20723 <dyld_stub_binder+0x100008d24>
100003c31: ba 01 00 00 00              	movl	$1, %edx
100003c36: 48 89 c7                    	movq	%rax, %rdi
100003c39: 4c 89 ee                    	movq	%r13, %rsi
100003c3c: e8 7f 3e 00 00              	callq	15999 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003c41: 48 8d 35 0f 58 00 00        	leaq	22543(%rip), %rsi
100003c48: ba 0d 00 00 00              	movl	$13, %edx
100003c4d: 48 89 df                    	movq	%rbx, %rdi
100003c50: e8 6b 3e 00 00              	callq	15979 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003c55: 41 0f b7 47 0e              	movzwl	14(%r15), %eax
100003c5a: 66 83 f8 ff                 	cmpw	$-1, %ax
100003c5e: 74 0d                       	je	13 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0xfd>
100003c60: 0f b7 f0                    	movzwl	%ax, %esi
100003c63: 4c 89 e7                    	movq	%r12, %rdi
100003c66: e8 bf 50 00 00              	callq	20671 <dyld_stub_binder+0x100008d2a>
100003c6b: eb 14                       	jmp	20 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x111>
100003c6d: 48 8d 35 f1 57 00 00        	leaq	22513(%rip), %rsi
100003c74: ba 07 00 00 00              	movl	$7, %edx
100003c79: 4c 89 e7                    	movq	%r12, %rdi
100003c7c: e8 3f 3e 00 00              	callq	15935 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003c81: 48 8d 35 cd 57 00 00        	leaq	22477(%rip), %rsi
100003c88: ba 01 00 00 00              	movl	$1, %edx
100003c8d: 4c 89 e7                    	movq	%r12, %rdi
100003c90: e8 2b 3e 00 00              	callq	15915 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003c95: 41 0f b6 47 09              	movzbl	9(%r15), %eax
100003c9a: 85 c0                       	testl	%eax, %eax
100003c9c: 74 0b                       	je	11 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x139>
100003c9e: 0f bd c8                    	bsrl	%eax, %ecx
100003ca1: 83 f1 e0                    	xorl	$-32, %ecx
100003ca4: 83 c1 21                    	addl	$33, %ecx
100003ca7: eb 02                       	jmp	2 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x13b>
100003ca9: 31 c9                       	xorl	%ecx, %ecx
100003cab: 48 8d 15 2e 5d 00 00        	leaq	23854(%rip), %rdx
100003cb2: 0f b6 0c 11                 	movzbl	(%rcx,%rdx), %ecx
100003cb6: 89 c0                       	movl	%eax, %eax
100003cb8: 48 8d 15 71 5d 00 00        	leaq	23921(%rip), %rdx
100003cbf: 48 39 04 ca                 	cmpq	%rax, (%rdx,%rcx,8)
100003cc3: 0f 96 c0                    	setbe	%al
100003cc6: 00 c8                       	addb	%cl, %al
100003cc8: 0f b6 c0                    	movzbl	%al, %eax
100003ccb: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100003ccf: 48 ff c0                    	incq	%rax
100003cd2: 49 8b 0c 24                 	movq	(%r12), %rcx
100003cd6: 48 8b 49 e8                 	movq	-24(%rcx), %rcx
100003cda: 49 89 44 0c 18              	movq	%rax, 24(%r12,%rcx)
100003cdf: 48 8d 35 87 57 00 00        	leaq	22407(%rip), %rsi
100003ce6: 4c 89 e7                    	movq	%r12, %rdi
100003ce9: 31 d2                       	xorl	%edx, %edx
100003ceb: e8 d0 3d 00 00              	callq	15824 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003cf0: 41 80 7f 08 00              	cmpb	$0, 8(%r15)
100003cf5: 74 54                       	je	84 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x1db>
100003cf7: 31 db                       	xorl	%ebx, %ebx
100003cf9: 4c 8d 75 d6                 	leaq	-42(%rbp), %r14
100003cfd: 4c 8d 2d c0 5b 00 00        	leaq	23488(%rip), %r13
100003d04: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003d0e: 66 90                       	nop
100003d10: 48 8b 05 e9 62 00 00        	movq	25321(%rip), %rax
100003d17: 0f b6 04 18                 	movzbl	(%rax,%rbx), %eax
100003d1b: 88 45 d6                    	movb	%al, -42(%rbp)
100003d1e: ba 01 00 00 00              	movl	$1, %edx
100003d23: 4c 89 e7                    	movq	%r12, %rdi
100003d26: 4c 89 f6                    	movq	%r14, %rsi
100003d29: e8 92 3d 00 00              	callq	15762 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003d2e: ba 01 00 00 00              	movl	$1, %edx
100003d33: 48 89 c7                    	movq	%rax, %rdi
100003d36: 4c 89 ee                    	movq	%r13, %rsi
100003d39: e8 82 3d 00 00              	callq	15746 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003d3e: 48 ff c3                    	incq	%rbx
100003d41: 41 0f b6 47 08              	movzbl	8(%r15), %eax
100003d46: 48 39 c3                    	cmpq	%rax, %rbx
100003d49: 72 c5                       	jb	-59 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x1a0>
100003d4b: c6 45 d7 0a                 	movb	$10, -41(%rbp)
100003d4f: 48 8d 75 d7                 	leaq	-41(%rbp), %rsi
100003d53: ba 01 00 00 00              	movl	$1, %edx
100003d58: 4c 89 e7                    	movq	%r12, %rdi
100003d5b: e8 60 3d 00 00              	callq	15712 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003d60: 41 0f b6 77 09              	movzbl	9(%r15), %esi
100003d65: 85 f6                       	testl	%esi, %esi
100003d67: 0f 84 ec 02 00 00           	je	748 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4e9>
100003d6d: 31 db                       	xorl	%ebx, %ebx
100003d6f: 66 41 bd 01 00              	movw	$1, %r13w
100003d74: eb 1c                       	jmp	28 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x222>
100003d76: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003d80: ff c3                       	incl	%ebx
100003d82: 41 0f b6 77 09              	movzbl	9(%r15), %esi
100003d87: 41 ff c5                    	incl	%r13d
100003d8a: 39 f3                       	cmpl	%esi, %ebx
100003d8c: 0f 83 c7 02 00 00           	jae	711 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4e9>
100003d92: 49 8b 04 24                 	movq	(%r12), %rax
100003d96: 48 8b 40 e8                 	movq	-24(%rax), %rax
100003d9a: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100003d9e: 49 89 4c 04 18              	movq	%rcx, 24(%r12,%rax)
100003da3: 29 de                       	subl	%ebx, %esi
100003da5: 4c 89 e7                    	movq	%r12, %rdi
100003da8: e8 71 4f 00 00              	callq	20337 <dyld_stub_binder+0x100008d1e>
100003dad: ba 01 00 00 00              	movl	$1, %edx
100003db2: 48 89 c7                    	movq	%rax, %rdi
100003db5: 48 8d 35 08 5b 00 00        	leaq	23304(%rip), %rsi
100003dbc: e8 ff 3c 00 00              	callq	15615 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003dc1: 41 0f b6 47 08              	movzbl	8(%r15), %eax
100003dc6: 85 c0                       	testl	%eax, %eax
100003dc8: 74 b6                       	je	-74 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x210>
100003dca: 45 31 f6                    	xorl	%r14d, %r14d
100003dcd: 89 c1                       	movl	%eax, %ecx
100003dcf: 89 5d c4                    	movl	%ebx, -60(%rbp)
100003dd2: eb 34                       	jmp	52 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x298>
100003dd4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003dde: 66 90                       	nop
100003de0: ba 01 00 00 00              	movl	$1, %edx
100003de5: 4c 89 e7                    	movq	%r12, %rdi
100003de8: 48 8d 35 66 56 00 00        	leaq	22118(%rip), %rsi
100003def: e8 cc 3c 00 00              	callq	15564 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100003df4: 41 ff c6                    	incl	%r14d
100003df7: 41 0f b6 4f 08              	movzbl	8(%r15), %ecx
100003dfc: 0f b6 c1                    	movzbl	%cl, %eax
100003dff: 41 39 c6                    	cmpl	%eax, %r14d
100003e02: 0f 83 78 ff ff ff           	jae	-136 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x210>
100003e08: 0f b6 d1                    	movzbl	%cl, %edx
100003e0b: 83 c2 02                    	addl	$2, %edx
100003e0e: 41 0f af d5                 	imull	%r13d, %edx
100003e12: 0f b7 d2                    	movzwl	%dx, %edx
100003e15: 41 8d 74 16 01              	leal	1(%r14,%rdx), %esi
100003e1a: 49 8b 57 38                 	movq	56(%r15), %rdx
100003e1e: 0f b7 fe                    	movzwl	%si, %edi
100003e21: 8b 14 fa                    	movl	(%rdx,%rdi,8), %edx
100003e24: 89 d7                       	movl	%edx, %edi
100003e26: d1 ef                       	shrl	%edi
100003e28: 31 d7                       	xorl	%edx, %edi
100003e2a: 0f b6 d3                    	movzbl	%bl, %edx
100003e2d: 40 f6 c7 01                 	testb	$1, %dil
100003e31: 75 6d                       	jne	109 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x330>
100003e33: 80 f9 09                    	cmpb	$9, %cl
100003e36: 0f 84 cc 00 00 00           	je	204 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x398>
100003e3c: 80 f9 0d                    	cmpb	$13, %cl
100003e3f: 0f 84 ec 00 00 00           	je	236 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x3c1>
100003e45: 80 f9 13                    	cmpb	$19, %cl
100003e48: 0f 85 22 01 00 00           	jne	290 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x400>
100003e4e: 41 80 7f 09 13              	cmpb	$19, 9(%r15)
100003e53: 0f 85 17 01 00 00           	jne	279 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x400>
100003e59: 41 80 fe 0f                 	cmpb	$15, %r14b
100003e5d: 0f 87 0d 01 00 00           	ja	269 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x400>
100003e63: 41 0f b6 ce                 	movzbl	%r14b, %ecx
100003e67: be 08 82 00 00              	movl	$33288, %esi
100003e6c: 48 0f a3 ce                 	btq	%rcx, %rsi
100003e70: 0f 83 fa 00 00 00           	jae	250 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x400>
100003e76: 80 fb 0f                    	cmpb	$15, %bl
100003e79: 0f 87 f1 00 00 00           	ja	241 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x400>
100003e7f: b9 08 82 00 00              	movl	$33288, %ecx
100003e84: 48 0f a3 d1                 	btq	%rdx, %rcx
100003e88: 0f 82 cb 00 00 00           	jb	203 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x3e9>
100003e8e: e9 dd 00 00 00              	jmp	221 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x400>
100003e93: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003e9d: 0f 1f 00                    	nopl	(%rax)
100003ea0: 66 41 3b 77 0c              	cmpw	12(%r15), %si
100003ea5: 75 39                       	jne	57 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x370>
100003ea7: 41 0f b6 f6                 	movzbl	%r14b, %esi
100003eab: 4c 89 ff                    	movq	%r15, %rdi
100003eae: e8 1d f6 ff ff              	callq	-2531 <__ZNK2Go21selected_tile_repr_atEhh>
100003eb3: 49 89 c4                    	movq	%rax, %r12
100003eb6: 48 89 c7                    	movq	%rax, %rdi
100003eb9: e8 32 4f 00 00              	callq	20274 <dyld_stub_binder+0x100008df0>
100003ebe: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
100003ec2: 4c 89 e6                    	movq	%r12, %rsi
100003ec5: 4c 8b 65 c8                 	movq	-56(%rbp), %r12
100003ec9: 48 89 c2                    	movq	%rax, %rdx
100003ecc: e9 5f 01 00 00              	jmp	351 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4c0>
100003ed1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003edb: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100003ee0: 41 0f b6 f6                 	movzbl	%r14b, %esi
100003ee4: 4c 89 ff                    	movq	%r15, %rdi
100003ee7: e8 14 f5 ff ff              	callq	-2796 <__ZNK2Go12tile_repr_atEhh>
100003eec: 48 89 c3                    	movq	%rax, %rbx
100003eef: 48 89 c7                    	movq	%rax, %rdi
100003ef2: e8 f9 4e 00 00              	callq	20217 <dyld_stub_binder+0x100008df0>
100003ef7: 4c 89 e7                    	movq	%r12, %rdi
100003efa: 48 89 de                    	movq	%rbx, %rsi
100003efd: 8b 5d c4                    	movl	-60(%rbp), %ebx
100003f00: 48 89 c2                    	movq	%rax, %rdx
100003f03: e9 28 01 00 00              	jmp	296 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4c0>
100003f08: 41 80 7f 09 09              	cmpb	$9, 9(%r15)
100003f0d: 75 61                       	jne	97 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x400>
100003f0f: 44 89 f1                    	movl	%r14d, %ecx
100003f12: 80 c9 04                    	orb	$4, %cl
100003f15: 80 f9 06                    	cmpb	$6, %cl
100003f18: 75 0a                       	jne	10 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x3b4>
100003f1a: 89 d9                       	movl	%ebx, %ecx
100003f1c: 80 c9 04                    	orb	$4, %cl
100003f1f: 80 f9 06                    	cmpb	$6, %cl
100003f22: 74 35                       	je	53 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x3e9>
100003f24: 80 fb 04                    	cmpb	$4, %bl
100003f27: 75 47                       	jne	71 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x400>
100003f29: 41 80 fe 04                 	cmpb	$4, %r14b
100003f2d: 74 2a                       	je	42 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x3e9>
100003f2f: eb 3f                       	jmp	63 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x400>
100003f31: 41 80 7f 09 0d              	cmpb	$13, 9(%r15)
100003f36: 75 38                       	jne	56 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x400>
100003f38: 41 80 fe 09                 	cmpb	$9, %r14b
100003f3c: 74 06                       	je	6 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x3d4>
100003f3e: 41 80 fe 03                 	cmpb	$3, %r14b
100003f42: 75 0a                       	jne	10 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x3de>
100003f44: 80 fb 03                    	cmpb	$3, %bl
100003f47: 74 10                       	je	16 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x3e9>
100003f49: 80 fb 09                    	cmpb	$9, %bl
100003f4c: 74 0b                       	je	11 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x3e9>
100003f4e: 80 fb 06                    	cmpb	$6, %bl
100003f51: 75 1d                       	jne	29 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x400>
100003f53: 41 80 fe 06                 	cmpb	$6, %r14b
100003f57: 75 17                       	jne	23 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x400>
100003f59: ba 03 00 00 00              	movl	$3, %edx
100003f5e: 4c 89 e7                    	movq	%r12, %rdi
100003f61: 48 8d 35 06 55 00 00        	leaq	21766(%rip), %rsi
100003f68: e9 c3 00 00 00              	jmp	195 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4c0>
100003f6d: 0f 1f 00                    	nopl	(%rax)
100003f70: 85 db                       	testl	%ebx, %ebx
100003f72: 74 2f                       	je	47 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x433>
100003f74: 41 0f b6 4f 09              	movzbl	9(%r15), %ecx
100003f79: ff c9                       	decl	%ecx
100003f7b: 39 cb                       	cmpl	%ecx, %ebx
100003f7d: 75 41                       	jne	65 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x450>
100003f7f: 45 85 f6                    	testl	%r14d, %r14d
100003f82: 74 6a                       	je	106 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x47e>
100003f84: ff c8                       	decl	%eax
100003f86: ba 03 00 00 00              	movl	$3, %edx
100003f8b: 4c 89 e7                    	movq	%r12, %rdi
100003f8e: 41 39 c6                    	cmpl	%eax, %r14d
100003f91: 0f 85 82 00 00 00           	jne	130 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4a9>
100003f97: 48 8d 35 2c 59 00 00        	leaq	22828(%rip), %rsi
100003f9e: e9 8d 00 00 00              	jmp	141 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4c0>
100003fa3: 45 85 f6                    	testl	%r14d, %r14d
100003fa6: 74 35                       	je	53 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x46d>
100003fa8: ff c8                       	decl	%eax
100003faa: ba 03 00 00 00              	movl	$3, %edx
100003faf: 4c 89 e7                    	movq	%r12, %rdi
100003fb2: 41 39 c6                    	cmpl	%eax, %r14d
100003fb5: 75 48                       	jne	72 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x48f>
100003fb7: 48 8d 35 08 59 00 00        	leaq	22792(%rip), %rsi
100003fbe: eb 70                       	jmp	112 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4c0>
100003fc0: 45 85 f6                    	testl	%r14d, %r14d
100003fc3: 74 43                       	je	67 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x498>
100003fc5: ff c8                       	decl	%eax
100003fc7: ba 03 00 00 00              	movl	$3, %edx
100003fcc: 4c 89 e7                    	movq	%r12, %rdi
100003fcf: 41 39 c6                    	cmpl	%eax, %r14d
100003fd2: 75 4e                       	jne	78 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4b2>
100003fd4: 48 8d 35 f3 58 00 00        	leaq	22771(%rip), %rsi
100003fdb: eb 53                       	jmp	83 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4c0>
100003fdd: ba 03 00 00 00              	movl	$3, %edx
100003fe2: 4c 89 e7                    	movq	%r12, %rdi
100003fe5: 48 8d 35 86 54 00 00        	leaq	21638(%rip), %rsi
100003fec: eb 42                       	jmp	66 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4c0>
100003fee: ba 03 00 00 00              	movl	$3, %edx
100003ff3: 4c 89 e7                    	movq	%r12, %rdi
100003ff6: 48 8d 35 7d 54 00 00        	leaq	21629(%rip), %rsi
100003ffd: eb 31                       	jmp	49 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4c0>
100003fff: 48 8d 35 70 54 00 00        	leaq	21616(%rip), %rsi
100004006: eb 28                       	jmp	40 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4c0>
100004008: ba 03 00 00 00              	movl	$3, %edx
10000400d: 4c 89 e7                    	movq	%r12, %rdi
100004010: 48 8d 35 6b 54 00 00        	leaq	21611(%rip), %rsi
100004017: eb 17                       	jmp	23 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4c0>
100004019: 48 8d 35 5e 54 00 00        	leaq	21598(%rip), %rsi
100004020: eb 0e                       	jmp	14 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x4c0>
100004022: 48 8d 35 5d 54 00 00        	leaq	21597(%rip), %rsi
100004029: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100004030: e8 8b 3a 00 00              	callq	14987 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100004035: 41 0f b6 47 08              	movzbl	8(%r15), %eax
10000403a: ff c8                       	decl	%eax
10000403c: 41 39 c6                    	cmpl	%eax, %r14d
10000403f: 0f 84 9b fd ff ff           	je	-613 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x270>
100004045: ba 03 00 00 00              	movl	$3, %edx
10000404a: 4c 89 e7                    	movq	%r12, %rdi
10000404d: 48 8d 35 36 54 00 00        	leaq	21558(%rip), %rsi
100004054: e9 96 fd ff ff              	jmp	-618 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_+0x27f>
100004059: 48 83 c4 28                 	addq	$40, %rsp
10000405d: 5b                          	popq	%rbx
10000405e: 41 5c                       	popq	%r12
100004060: 41 5d                       	popq	%r13
100004062: 41 5e                       	popq	%r14
100004064: 41 5f                       	popq	%r15
100004066: 5d                          	popq	%rbp
100004067: c3                          	retq
100004068: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100004070 __ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi:
100004070: 55                          	pushq	%rbp
100004071: 48 89 e5                    	movq	%rsp, %rbp
100004074: 41 57                       	pushq	%r15
100004076: 41 56                       	pushq	%r14
100004078: 41 55                       	pushq	%r13
10000407a: 41 54                       	pushq	%r12
10000407c: 53                          	pushq	%rbx
10000407d: 48 83 ec 38                 	subq	$56, %rsp
100004081: 48 89 55 b0                 	movq	%rdx, -80(%rbp)
100004085: 89 4d cc                    	movl	%ecx, -52(%rbp)
100004088: 83 f9 04                    	cmpl	$4, %ecx
10000408b: 0f 83 62 04 00 00           	jae	1122 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x483>
100004091: 49 89 f7                    	movq	%rsi, %r15
100004094: 49 89 fe                    	movq	%rdi, %r14
100004097: 0f b6 47 09                 	movzbl	9(%rdi), %eax
10000409b: 85 c0                       	testl	%eax, %eax
10000409d: 74 0b                       	je	11 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x3a>
10000409f: 0f bd c8                    	bsrl	%eax, %ecx
1000040a2: 83 f1 e0                    	xorl	$-32, %ecx
1000040a5: 83 c1 21                    	addl	$33, %ecx
1000040a8: eb 02                       	jmp	2 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x3c>
1000040aa: 31 c9                       	xorl	%ecx, %ecx
1000040ac: 48 8d 15 2d 59 00 00        	leaq	22829(%rip), %rdx
1000040b3: 0f b6 0c 11                 	movzbl	(%rcx,%rdx), %ecx
1000040b7: 89 c0                       	movl	%eax, %eax
1000040b9: 48 8d 15 70 59 00 00        	leaq	22896(%rip), %rdx
1000040c0: 48 39 04 ca                 	cmpq	%rax, (%rdx,%rcx,8)
1000040c4: 0f 96 c0                    	setbe	%al
1000040c7: 00 c8                       	addb	%cl, %al
1000040c9: 0f b6 c0                    	movzbl	%al, %eax
1000040cc: 48 89 45 a8                 	movq	%rax, -88(%rbp)
1000040d0: 48 8d 48 01                 	leaq	1(%rax), %rcx
1000040d4: 49 8b 07                    	movq	(%r15), %rax
1000040d7: 48 8b 40 e8                 	movq	-24(%rax), %rax
1000040db: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000040df: 49 89 4c 07 18              	movq	%rcx, 24(%r15,%rax)
1000040e4: 48 8d 35 82 53 00 00        	leaq	21378(%rip), %rsi
1000040eb: 4c 89 ff                    	movq	%r15, %rdi
1000040ee: 31 d2                       	xorl	%edx, %edx
1000040f0: e8 cb 39 00 00              	callq	14795 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000040f5: 41 80 7e 08 00              	cmpb	$0, 8(%r14)
1000040fa: 74 63                       	je	99 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0xef>
1000040fc: 31 db                       	xorl	%ebx, %ebx
1000040fe: 4c 8d 6d d6                 	leaq	-42(%rbp), %r13
100004102: 4c 8d 25 bb 57 00 00        	leaq	22459(%rip), %r12
100004109: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100004110: ba 02 00 00 00              	movl	$2, %edx
100004115: 4c 89 ff                    	movq	%r15, %rdi
100004118: 48 8d 35 a0 53 00 00        	leaq	21408(%rip), %rsi
10000411f: e8 9c 39 00 00              	callq	14748 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100004124: 48 8b 0d d5 5e 00 00        	movq	24277(%rip), %rcx
10000412b: 0f b6 0c 19                 	movzbl	(%rcx,%rbx), %ecx
10000412f: 88 4d d6                    	movb	%cl, -42(%rbp)
100004132: ba 01 00 00 00              	movl	$1, %edx
100004137: 48 89 c7                    	movq	%rax, %rdi
10000413a: 4c 89 ee                    	movq	%r13, %rsi
10000413d: e8 7e 39 00 00              	callq	14718 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100004142: ba 01 00 00 00              	movl	$1, %edx
100004147: 48 89 c7                    	movq	%rax, %rdi
10000414a: 4c 89 e6                    	movq	%r12, %rsi
10000414d: e8 6e 39 00 00              	callq	14702 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100004152: 48 ff c3                    	incq	%rbx
100004155: 41 0f b6 46 08              	movzbl	8(%r14), %eax
10000415a: 48 39 c3                    	cmpq	%rax, %rbx
10000415d: 72 b1                       	jb	-79 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0xa0>
10000415f: c6 45 d7 0a                 	movb	$10, -41(%rbp)
100004163: 48 8d 75 d7                 	leaq	-41(%rbp), %rsi
100004167: ba 01 00 00 00              	movl	$1, %edx
10000416c: 4c 89 ff                    	movq	%r15, %rdi
10000416f: e8 4c 39 00 00              	callq	14668 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100004174: 49 8b 07                    	movq	(%r15), %rax
100004177: 48 8b 40 e8                 	movq	-24(%rax), %rax
10000417b: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
10000417f: 49 89 4c 07 18              	movq	%rcx, 24(%r15,%rax)
100004184: 48 8d 35 e2 52 00 00        	leaq	21218(%rip), %rsi
10000418b: 4c 89 ff                    	movq	%r15, %rdi
10000418e: 31 d2                       	xorl	%edx, %edx
100004190: e8 2b 39 00 00              	callq	14635 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100004195: 48 8d 35 36 57 00 00        	leaq	22326(%rip), %rsi
10000419c: ba 0c 00 00 00              	movl	$12, %edx
1000041a1: 48 89 c7                    	movq	%rax, %rdi
1000041a4: e8 17 39 00 00              	callq	14615 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000041a9: 41 80 7e 08 02              	cmpb	$2, 8(%r14)
1000041ae: 72 2b                       	jb	43 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x16b>
1000041b0: bb 01 00 00 00              	movl	$1, %ebx
1000041b5: 4c 8d 25 23 57 00 00        	leaq	22307(%rip), %r12
1000041bc: 0f 1f 40 00                 	nopl	(%rax)
1000041c0: ba 0c 00 00 00              	movl	$12, %edx
1000041c5: 4c 89 ff                    	movq	%r15, %rdi
1000041c8: 4c 89 e6                    	movq	%r12, %rsi
1000041cb: e8 f0 38 00 00              	callq	14576 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000041d0: ff c3                       	incl	%ebx
1000041d2: 41 0f b6 46 08              	movzbl	8(%r14), %eax
1000041d7: 39 c3                       	cmpl	%eax, %ebx
1000041d9: 72 e5                       	jb	-27 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x150>
1000041db: 48 8d 35 e4 56 00 00        	leaq	22244(%rip), %rsi
1000041e2: ba 03 00 00 00              	movl	$3, %edx
1000041e7: 4c 89 ff                    	movq	%r15, %rdi
1000041ea: e8 d1 38 00 00              	callq	14545 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000041ef: c6 45 d5 0a                 	movb	$10, -43(%rbp)
1000041f3: 48 8d 75 d5                 	leaq	-43(%rbp), %rsi
1000041f7: ba 01 00 00 00              	movl	$1, %edx
1000041fc: 48 89 c7                    	movq	%rax, %rdi
1000041ff: e8 bc 38 00 00              	callq	14524 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100004204: 41 0f b6 76 09              	movzbl	9(%r14), %esi
100004209: 49 8b 07                    	movq	(%r15), %rax
10000420c: 48 8b 40 e8                 	movq	-24(%rax), %rax
100004210: 85 f6                       	testl	%esi, %esi
100004212: 0f 84 48 02 00 00           	je	584 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x3f0>
100004218: 45 31 e4                    	xorl	%r12d, %r12d
10000421b: eb 44                       	jmp	68 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x1f1>
10000421d: 0f 1f 00                    	nopl	(%rax)
100004220: ba 03 00 00 00              	movl	$3, %edx
100004225: 4c 89 ff                    	movq	%r15, %rdi
100004228: 48 8d 35 9f 56 00 00        	leaq	22175(%rip), %rsi
10000422f: e8 8c 38 00 00              	callq	14476 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100004234: c6 45 d3 0a                 	movb	$10, -45(%rbp)
100004238: ba 01 00 00 00              	movl	$1, %edx
10000423d: 48 89 c7                    	movq	%rax, %rdi
100004240: 48 8d 75 d3                 	leaq	-45(%rbp), %rsi
100004244: e8 77 38 00 00              	callq	14455 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100004249: 41 0f b6 76 09              	movzbl	9(%r14), %esi
10000424e: 41 ff c4                    	incl	%r12d
100004251: 49 8b 07                    	movq	(%r15), %rax
100004254: 48 8b 40 e8                 	movq	-24(%rax), %rax
100004258: 41 39 f4                    	cmpl	%esi, %r12d
10000425b: 0f 83 ff 01 00 00           	jae	511 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x3f0>
100004261: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100004265: 49 89 4c 07 18              	movq	%rcx, 24(%r15,%rax)
10000426a: 44 29 e6                    	subl	%r12d, %esi
10000426d: 4c 89 ff                    	movq	%r15, %rdi
100004270: e8 a9 4a 00 00              	callq	19113 <dyld_stub_binder+0x100008d1e>
100004275: ba 01 00 00 00              	movl	$1, %edx
10000427a: 48 89 c7                    	movq	%rax, %rdi
10000427d: 48 8d 35 40 56 00 00        	leaq	22080(%rip), %rsi
100004284: e8 37 38 00 00              	callq	14391 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100004289: ba 03 00 00 00              	movl	$3, %edx
10000428e: 48 89 c7                    	movq	%rax, %rdi
100004291: 48 8d 35 6e 56 00 00        	leaq	22126(%rip), %rsi
100004298: e8 23 38 00 00              	callq	14371 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000429d: 41 80 7e 08 00              	cmpb	$0, 8(%r14)
1000042a2: 0f 84 26 01 00 00           	je	294 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x35e>
1000042a8: 83 7d cc 03                 	cmpl	$3, -52(%rbp)
1000042ac: 0f 8d ae 00 00 00           	jge	174 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x2f0>
1000042b2: 31 db                       	xorl	%ebx, %ebx
1000042b4: eb 2d                       	jmp	45 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x273>
1000042b6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000042c0: ba 03 00 00 00              	movl	$3, %edx
1000042c5: 4c 89 ff                    	movq	%r15, %rdi
1000042c8: 48 8d 35 37 56 00 00        	leaq	22071(%rip), %rsi
1000042cf: e8 ec 37 00 00              	callq	14316 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000042d4: ff c3                       	incl	%ebx
1000042d6: 41 0f b6 46 08              	movzbl	8(%r14), %eax
1000042db: 39 c3                       	cmpl	%eax, %ebx
1000042dd: 0f 83 eb 00 00 00           	jae	235 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x35e>
1000042e3: ba 01 00 00 00              	movl	$1, %edx
1000042e8: 4c 89 ff                    	movq	%r15, %rdi
1000042eb: 48 8d 35 d2 55 00 00        	leaq	21970(%rip), %rsi
1000042f2: e8 c9 37 00 00              	callq	14281 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000042f7: 44 89 65 c4                 	movl	%r12d, -60(%rbp)
1000042fb: 89 5d c8                    	movl	%ebx, -56(%rbp)
1000042fe: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100004302: 48 8b 78 20                 	movq	32(%rax), %rdi
100004306: 48 85 ff                    	testq	%rdi, %rdi
100004309: 0f 84 df 01 00 00           	je	479 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x47e>
10000430f: 48 8b 07                    	movq	(%rdi), %rax
100004312: 48 8d 75 c4                 	leaq	-60(%rbp), %rsi
100004316: 48 8d 55 c8                 	leaq	-56(%rbp), %rdx
10000431a: ff 50 30                    	callq	*48(%rax)
10000431d: 49 89 c5                    	movq	%rax, %r13
100004320: 48 89 c7                    	movq	%rax, %rdi
100004323: e8 c8 4a 00 00              	callq	19144 <dyld_stub_binder+0x100008df0>
100004328: 4c 89 ff                    	movq	%r15, %rdi
10000432b: 4c 89 ee                    	movq	%r13, %rsi
10000432e: 48 89 c2                    	movq	%rax, %rdx
100004331: e8 8a 37 00 00              	callq	14218 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100004336: 83 7d cc 01                 	cmpl	$1, -52(%rbp)
10000433a: 75 84                       	jne	-124 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x250>
10000433c: ba 01 00 00 00              	movl	$1, %edx
100004341: 4c 89 ff                    	movq	%r15, %rdi
100004344: 48 8d 35 79 55 00 00        	leaq	21881(%rip), %rsi
10000434b: e8 70 37 00 00              	callq	14192 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100004350: e9 6b ff ff ff              	jmp	-149 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x250>
100004355: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000435f: 90                          	nop
100004360: 31 db                       	xorl	%ebx, %ebx
100004362: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000436c: 0f 1f 40 00                 	nopl	(%rax)
100004370: 44 89 65 c4                 	movl	%r12d, -60(%rbp)
100004374: 89 5d c8                    	movl	%ebx, -56(%rbp)
100004377: 48 8b 45 b0                 	movq	-80(%rbp), %rax
10000437b: 48 8b 78 20                 	movq	32(%rax), %rdi
10000437f: 48 85 ff                    	testq	%rdi, %rdi
100004382: 0f 84 66 01 00 00           	je	358 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x47e>
100004388: 48 8b 07                    	movq	(%rdi), %rax
10000438b: 48 8d 75 c4                 	leaq	-60(%rbp), %rsi
10000438f: 48 8d 55 c8                 	leaq	-56(%rbp), %rdx
100004393: ff 50 30                    	callq	*48(%rax)
100004396: 49 89 c5                    	movq	%rax, %r13
100004399: 48 89 c7                    	movq	%rax, %rdi
10000439c: e8 4f 4a 00 00              	callq	19023 <dyld_stub_binder+0x100008df0>
1000043a1: 4c 89 ff                    	movq	%r15, %rdi
1000043a4: 4c 89 ee                    	movq	%r13, %rsi
1000043a7: 48 89 c2                    	movq	%rax, %rdx
1000043aa: e8 11 37 00 00              	callq	14097 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000043af: ba 03 00 00 00              	movl	$3, %edx
1000043b4: 4c 89 ff                    	movq	%r15, %rdi
1000043b7: 48 8d 35 48 55 00 00        	leaq	21832(%rip), %rsi
1000043be: e8 fd 36 00 00              	callq	14077 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000043c3: ff c3                       	incl	%ebx
1000043c5: 41 0f b6 46 08              	movzbl	8(%r14), %eax
1000043ca: 39 c3                       	cmpl	%eax, %ebx
1000043cc: 72 a2                       	jb	-94 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x300>
1000043ce: c6 45 d4 0a                 	movb	$10, -44(%rbp)
1000043d2: ba 01 00 00 00              	movl	$1, %edx
1000043d7: 4c 89 ff                    	movq	%r15, %rdi
1000043da: 48 8d 75 d4                 	leaq	-44(%rbp), %rsi
1000043de: e8 dd 36 00 00              	callq	14045 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000043e3: 41 0f b6 76 09              	movzbl	9(%r14), %esi
1000043e8: 8d 46 ff                    	leal	-1(%rsi), %eax
1000043eb: 41 39 c4                    	cmpl	%eax, %r12d
1000043ee: 4c 8d 2d 04 55 00 00        	leaq	21764(%rip), %r13
1000043f5: 0f 84 53 fe ff ff           	je	-429 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x1de>
1000043fb: 49 8b 07                    	movq	(%r15), %rax
1000043fe: 48 8b 40 e8                 	movq	-24(%rax), %rax
100004402: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100004406: 49 89 4c 07 18              	movq	%rcx, 24(%r15,%rax)
10000440b: 4c 89 ff                    	movq	%r15, %rdi
10000440e: 48 8d 35 58 50 00 00        	leaq	20568(%rip), %rsi
100004415: 31 d2                       	xorl	%edx, %edx
100004417: e8 a4 36 00 00              	callq	13988 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000441c: ba 0c 00 00 00              	movl	$12, %edx
100004421: 48 89 c7                    	movq	%rax, %rdi
100004424: 48 8d 35 c1 54 00 00        	leaq	21697(%rip), %rsi
10000442b: e8 90 36 00 00              	callq	13968 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100004430: 41 80 7e 08 02              	cmpb	$2, 8(%r14)
100004435: 0f 82 e5 fd ff ff           	jb	-539 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x1b0>
10000443b: bb 01 00 00 00              	movl	$1, %ebx
100004440: ba 0c 00 00 00              	movl	$12, %edx
100004445: 4c 89 ff                    	movq	%r15, %rdi
100004448: 4c 89 ee                    	movq	%r13, %rsi
10000444b: e8 70 36 00 00              	callq	13936 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
100004450: ff c3                       	incl	%ebx
100004452: 41 0f b6 46 08              	movzbl	8(%r14), %eax
100004457: 39 c3                       	cmpl	%eax, %ebx
100004459: 72 e5                       	jb	-27 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x3d0>
10000445b: e9 c0 fd ff ff              	jmp	-576 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x1b0>
100004460: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100004464: 49 89 4c 07 18              	movq	%rcx, 24(%r15,%rax)
100004469: 48 8d 35 fd 4f 00 00        	leaq	20477(%rip), %rsi
100004470: 4c 89 ff                    	movq	%r15, %rdi
100004473: 31 d2                       	xorl	%edx, %edx
100004475: e8 46 36 00 00              	callq	13894 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000447a: 48 8d 35 89 54 00 00        	leaq	21641(%rip), %rsi
100004481: ba 0c 00 00 00              	movl	$12, %edx
100004486: 48 89 c7                    	movq	%rax, %rdi
100004489: e8 32 36 00 00              	callq	13874 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
10000448e: 41 80 7e 08 02              	cmpb	$2, 8(%r14)
100004493: 72 36                       	jb	54 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x45b>
100004495: bb 01 00 00 00              	movl	$1, %ebx
10000449a: 4c 8d 25 76 54 00 00        	leaq	21622(%rip), %r12
1000044a1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000044ab: 0f 1f 44 00 00              	nopl	(%rax,%rax)
1000044b0: ba 0c 00 00 00              	movl	$12, %edx
1000044b5: 4c 89 ff                    	movq	%r15, %rdi
1000044b8: 4c 89 e6                    	movq	%r12, %rsi
1000044bb: e8 00 36 00 00              	callq	13824 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000044c0: ff c3                       	incl	%ebx
1000044c2: 41 0f b6 46 08              	movzbl	8(%r14), %eax
1000044c7: 39 c3                       	cmpl	%eax, %ebx
1000044c9: 72 e5                       	jb	-27 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi+0x440>
1000044cb: 48 8d 35 f8 53 00 00        	leaq	21496(%rip), %rsi
1000044d2: ba 03 00 00 00              	movl	$3, %edx
1000044d7: 4c 89 ff                    	movq	%r15, %rdi
1000044da: e8 e1 35 00 00              	callq	13793 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>
1000044df: 48 83 c4 38                 	addq	$56, %rsp
1000044e3: 5b                          	popq	%rbx
1000044e4: 41 5c                       	popq	%r12
1000044e6: 41 5d                       	popq	%r13
1000044e8: 41 5e                       	popq	%r14
1000044ea: 41 5f                       	popq	%r15
1000044ec: 5d                          	popq	%rbp
1000044ed: c3                          	retq
1000044ee: e8 0d 3c 00 00              	callq	15373 <__ZNSt3__1L25__throw_bad_function_callEv>
1000044f3: 4c 8d 35 b6 70 00 00        	leaq	28854(%rip), %r14
1000044fa: 48 8d 15 8d 4f 00 00        	leaq	20365(%rip), %rdx
100004501: be 00 04 00 00              	movl	$1024, %esi
100004506: 4c 89 f7                    	movq	%r14, %rdi
100004509: 8b 4d cc                    	movl	-52(%rbp), %ecx
10000450c: 41 b8 03 00 00 00           	movl	$3, %r8d
100004512: 31 c0                       	xorl	%eax, %eax
100004514: e8 c5 48 00 00              	callq	18629 <dyld_stub_binder+0x100008dde>
100004519: bf 10 00 00 00              	movl	$16, %edi
10000451e: e8 5b 48 00 00              	callq	18523 <dyld_stub_binder+0x100008d7e>
100004523: 48 89 c3                    	movq	%rax, %rbx
100004526: 48 89 c7                    	movq	%rax, %rdi
100004529: 4c 89 f6                    	movq	%r14, %rsi
10000452c: e8 c9 47 00 00              	callq	18377 <dyld_stub_binder+0x100008cfa>
100004531: 48 8b 35 10 5b 00 00        	movq	23312(%rip), %rsi
100004538: 48 8b 15 c9 5a 00 00        	movq	23241(%rip), %rdx
10000453f: 48 89 df                    	movq	%rbx, %rdi
100004542: e8 55 48 00 00              	callq	18517 <dyld_stub_binder+0x100008d9c>
100004547: 49 89 c6                    	movq	%rax, %r14
10000454a: 48 89 df                    	movq	%rbx, %rdi
10000454d: e8 44 48 00 00              	callq	18500 <dyld_stub_binder+0x100008d96>
100004552: 4c 89 f7                    	movq	%r14, %rdi
100004555: e8 88 47 00 00              	callq	18312 <dyld_stub_binder+0x100008ce2>
10000455a: 0f 0b                       	ud2
10000455c: 0f 1f 40 00                 	nopl	(%rax)

0000000100004560 __ZN2GoC2Ev:
100004560: 55                          	pushq	%rbp
100004561: 48 89 e5                    	movq	%rsp, %rbp
100004564: 48 8d 05 45 5b 00 00        	leaq	23365(%rip), %rax
10000456b: 48 89 07                    	movq	%rax, (%rdi)
10000456e: 48 c7 47 30 00 00 00 00     	movq	$0, 48(%rdi)
100004576: 5d                          	popq	%rbp
100004577: c3                          	retq
100004578: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100004580 __ZN2GoC1Ev:
100004580: 55                          	pushq	%rbp
100004581: 48 89 e5                    	movq	%rsp, %rbp
100004584: 48 8d 05 25 5b 00 00        	leaq	23333(%rip), %rax
10000458b: 48 89 07                    	movq	%rax, (%rdi)
10000458e: 48 c7 47 30 00 00 00 00     	movq	$0, 48(%rdi)
100004596: 5d                          	popq	%rbp
100004597: c3                          	retq
100004598: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

00000001000045a0 __ZN2GoC2Ehh:
1000045a0: 55                          	pushq	%rbp
1000045a1: 48 89 e5                    	movq	%rsp, %rbp
1000045a4: 41 56                       	pushq	%r14
1000045a6: 53                          	pushq	%rbx
1000045a7: 48 89 fb                    	movq	%rdi, %rbx
1000045aa: 48 8d 05 ff 5a 00 00        	leaq	23295(%rip), %rax
1000045b1: 48 89 07                    	movq	%rax, (%rdi)
1000045b4: 40 88 77 08                 	movb	%sil, 8(%rdi)
1000045b8: 88 57 09                    	movb	%dl, 9(%rdi)
1000045bb: c7 47 0a 00 00 00 00        	movl	$0, 10(%rdi)
1000045c2: 66 c7 47 0e ff ff           	movw	$65535, 14(%rdi)
1000045c8: 48 c7 47 24 00 00 00 00     	movq	$0, 36(%rdi)
1000045d0: 8d 46 02                    	leal	2(%rsi), %eax
1000045d3: 44 8d 72 02                 	leal	2(%rdx), %r14d
1000045d7: 44 0f af f0                 	imull	%eax, %r14d
1000045db: 44 89 77 18                 	movl	%r14d, 24(%rdi)
1000045df: 0f af d6                    	imull	%esi, %edx
1000045e2: 89 57 1c                    	movl	%edx, 28(%rdi)
1000045e5: 42 8d 04 f5 7f 00 00 00     	leal	127(,%r14,8), %eax
1000045ed: 83 e0 80                    	andl	$-128, %eax
1000045f0: c1 e2 05                    	shll	$5, %edx
1000045f3: 01 c2                       	addl	%eax, %edx
1000045f5: 48 89 57 10                 	movq	%rdx, 16(%rdi)
1000045f9: 48 83 ea 80                 	subq	$-128, %rdx
1000045fd: 48 89 d7                    	movq	%rdx, %rdi
100004600: e8 b5 47 00 00              	callq	18357 <dyld_stub_binder+0x100008dba>
100004605: 48 89 43 30                 	movq	%rax, 48(%rbx)
100004609: 48 83 c0 7f                 	addq	$127, %rax
10000460d: 48 83 e0 80                 	andq	$-128, %rax
100004611: 48 89 43 38                 	movq	%rax, 56(%rbx)
100004615: 4a 8d 44 f0 7f              	leaq	127(%rax,%r14,8), %rax
10000461a: 48 83 e0 80                 	andq	$-128, %rax
10000461e: 48 89 43 40                 	movq	%rax, 64(%rbx)
100004622: 48 89 df                    	movq	%rbx, %rdi
100004625: 5b                          	popq	%rbx
100004626: 41 5e                       	popq	%r14
100004628: 5d                          	popq	%rbp
100004629: e9 f2 ec ff ff              	jmp	-4878 <__ZN2Go5clearEv>
10000462e: 66 90                       	nop

0000000100004630 __ZN2GoC1Ehh:
100004630: 55                          	pushq	%rbp
100004631: 48 89 e5                    	movq	%rsp, %rbp
100004634: 41 56                       	pushq	%r14
100004636: 53                          	pushq	%rbx
100004637: 48 89 fb                    	movq	%rdi, %rbx
10000463a: 48 8d 05 6f 5a 00 00        	leaq	23151(%rip), %rax
100004641: 48 89 07                    	movq	%rax, (%rdi)
100004644: 40 88 77 08                 	movb	%sil, 8(%rdi)
100004648: 88 57 09                    	movb	%dl, 9(%rdi)
10000464b: c7 47 0a 00 00 00 00        	movl	$0, 10(%rdi)
100004652: 66 c7 47 0e ff ff           	movw	$65535, 14(%rdi)
100004658: 48 c7 47 24 00 00 00 00     	movq	$0, 36(%rdi)
100004660: 8d 46 02                    	leal	2(%rsi), %eax
100004663: 44 8d 72 02                 	leal	2(%rdx), %r14d
100004667: 44 0f af f0                 	imull	%eax, %r14d
10000466b: 44 89 77 18                 	movl	%r14d, 24(%rdi)
10000466f: 0f af d6                    	imull	%esi, %edx
100004672: 89 57 1c                    	movl	%edx, 28(%rdi)
100004675: 42 8d 04 f5 7f 00 00 00     	leal	127(,%r14,8), %eax
10000467d: 83 e0 80                    	andl	$-128, %eax
100004680: c1 e2 05                    	shll	$5, %edx
100004683: 01 c2                       	addl	%eax, %edx
100004685: 48 89 57 10                 	movq	%rdx, 16(%rdi)
100004689: 48 83 ea 80                 	subq	$-128, %rdx
10000468d: 48 89 d7                    	movq	%rdx, %rdi
100004690: e8 25 47 00 00              	callq	18213 <dyld_stub_binder+0x100008dba>
100004695: 48 89 43 30                 	movq	%rax, 48(%rbx)
100004699: 48 83 c0 7f                 	addq	$127, %rax
10000469d: 48 83 e0 80                 	andq	$-128, %rax
1000046a1: 48 89 43 38                 	movq	%rax, 56(%rbx)
1000046a5: 4a 8d 44 f0 7f              	leaq	127(%rax,%r14,8), %rax
1000046aa: 48 83 e0 80                 	andq	$-128, %rax
1000046ae: 48 89 43 40                 	movq	%rax, 64(%rbx)
1000046b2: 48 89 df                    	movq	%rbx, %rdi
1000046b5: 5b                          	popq	%rbx
1000046b6: 41 5e                       	popq	%r14
1000046b8: 5d                          	popq	%rbp
1000046b9: e9 62 ec ff ff              	jmp	-5022 <__ZN2Go5clearEv>
1000046be: 66 90                       	nop

00000001000046c0 __ZN2GoC2ERKS_:
1000046c0: 55                          	pushq	%rbp
1000046c1: 48 89 e5                    	movq	%rsp, %rbp
1000046c4: 41 56                       	pushq	%r14
1000046c6: 53                          	pushq	%rbx
1000046c7: 48 83 ec 10                 	subq	$16, %rsp
1000046cb: 49 89 f6                    	movq	%rsi, %r14
1000046ce: 48 89 fb                    	movq	%rdi, %rbx
1000046d1: 48 8d 05 d8 59 00 00        	leaq	23000(%rip), %rax
1000046d8: 48 89 07                    	movq	%rax, (%rdi)
1000046db: 8a 46 08                    	movb	8(%rsi), %al
1000046de: 88 47 08                    	movb	%al, 8(%rdi)
1000046e1: 8a 46 09                    	movb	9(%rsi), %al
1000046e4: 88 47 09                    	movb	%al, 9(%rdi)
1000046e7: 0f b7 46 0a                 	movzwl	10(%rsi), %eax
1000046eb: 66 89 47 0a                 	movw	%ax, 10(%rdi)
1000046ef: 0f b7 46 0c                 	movzwl	12(%rsi), %eax
1000046f3: 66 89 47 0c                 	movw	%ax, 12(%rdi)
1000046f7: 0f b7 46 0e                 	movzwl	14(%rsi), %eax
1000046fb: 66 89 47 0e                 	movw	%ax, 14(%rdi)
1000046ff: 48 8b 7e 10                 	movq	16(%rsi), %rdi
100004703: 48 89 7b 10                 	movq	%rdi, 16(%rbx)
100004707: 0f 10 46 18                 	movups	24(%rsi), %xmm0
10000470b: 0f 29 45 e0                 	movaps	%xmm0, -32(%rbp)
10000470f: 0f 11 43 18                 	movups	%xmm0, 24(%rbx)
100004713: 8b 46 28                    	movl	40(%rsi), %eax
100004716: 89 43 28                    	movl	%eax, 40(%rbx)
100004719: 48 83 ef 80                 	subq	$-128, %rdi
10000471d: e8 98 46 00 00              	callq	18072 <dyld_stub_binder+0x100008dba>
100004722: 48 89 43 30                 	movq	%rax, 48(%rbx)
100004726: 48 83 c0 7f                 	addq	$127, %rax
10000472a: 48 83 e0 80                 	andq	$-128, %rax
10000472e: 48 89 43 38                 	movq	%rax, 56(%rbx)
100004732: 66 0f 6f 45 e0              	movdqa	-32(%rbp), %xmm0
100004737: 66 0f 7e c2                 	movd	%xmm0, %edx
10000473b: 48 8d 4c d0 7f              	leaq	127(%rax,%rdx,8), %rcx
100004740: 48 83 e1 80                 	andq	$-128, %rcx
100004744: 48 89 4b 40                 	movq	%rcx, 64(%rbx)
100004748: 49 8b 76 38                 	movq	56(%r14), %rsi
10000474c: 48 c1 e2 03                 	shlq	$3, %rdx
100004750: 48 89 c7                    	movq	%rax, %rdi
100004753: e8 68 46 00 00              	callq	18024 <dyld_stub_binder+0x100008dc0>
100004758: 48 8b 7b 40                 	movq	64(%rbx), %rdi
10000475c: 49 8b 76 40                 	movq	64(%r14), %rsi
100004760: 8b 53 1c                    	movl	28(%rbx), %edx
100004763: 48 c1 e2 05                 	shlq	$5, %rdx
100004767: 48 83 c4 10                 	addq	$16, %rsp
10000476b: 5b                          	popq	%rbx
10000476c: 41 5e                       	popq	%r14
10000476e: 5d                          	popq	%rbp
10000476f: e9 4c 46 00 00              	jmp	17996 <dyld_stub_binder+0x100008dc0>
100004774: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000477e: 66 90                       	nop

0000000100004780 __ZN2GoC1ERKS_:
100004780: 55                          	pushq	%rbp
100004781: 48 89 e5                    	movq	%rsp, %rbp
100004784: 41 56                       	pushq	%r14
100004786: 53                          	pushq	%rbx
100004787: 48 83 ec 10                 	subq	$16, %rsp
10000478b: 49 89 f6                    	movq	%rsi, %r14
10000478e: 48 89 fb                    	movq	%rdi, %rbx
100004791: 48 8d 05 18 59 00 00        	leaq	22808(%rip), %rax
100004798: 48 89 07                    	movq	%rax, (%rdi)
10000479b: 8a 46 08                    	movb	8(%rsi), %al
10000479e: 88 47 08                    	movb	%al, 8(%rdi)
1000047a1: 8a 46 09                    	movb	9(%rsi), %al
1000047a4: 88 47 09                    	movb	%al, 9(%rdi)
1000047a7: 0f b7 46 0a                 	movzwl	10(%rsi), %eax
1000047ab: 66 89 47 0a                 	movw	%ax, 10(%rdi)
1000047af: 0f b7 46 0c                 	movzwl	12(%rsi), %eax
1000047b3: 66 89 47 0c                 	movw	%ax, 12(%rdi)
1000047b7: 0f b7 46 0e                 	movzwl	14(%rsi), %eax
1000047bb: 66 89 47 0e                 	movw	%ax, 14(%rdi)
1000047bf: 48 8b 7e 10                 	movq	16(%rsi), %rdi
1000047c3: 48 89 7b 10                 	movq	%rdi, 16(%rbx)
1000047c7: 0f 10 46 18                 	movups	24(%rsi), %xmm0
1000047cb: 0f 29 45 e0                 	movaps	%xmm0, -32(%rbp)
1000047cf: 0f 11 43 18                 	movups	%xmm0, 24(%rbx)
1000047d3: 8b 46 28                    	movl	40(%rsi), %eax
1000047d6: 89 43 28                    	movl	%eax, 40(%rbx)
1000047d9: 48 83 ef 80                 	subq	$-128, %rdi
1000047dd: e8 d8 45 00 00              	callq	17880 <dyld_stub_binder+0x100008dba>
1000047e2: 48 89 43 30                 	movq	%rax, 48(%rbx)
1000047e6: 48 83 c0 7f                 	addq	$127, %rax
1000047ea: 48 83 e0 80                 	andq	$-128, %rax
1000047ee: 48 89 43 38                 	movq	%rax, 56(%rbx)
1000047f2: 66 0f 6f 45 e0              	movdqa	-32(%rbp), %xmm0
1000047f7: 66 0f 7e c2                 	movd	%xmm0, %edx
1000047fb: 48 8d 4c d0 7f              	leaq	127(%rax,%rdx,8), %rcx
100004800: 48 83 e1 80                 	andq	$-128, %rcx
100004804: 48 89 4b 40                 	movq	%rcx, 64(%rbx)
100004808: 49 8b 76 38                 	movq	56(%r14), %rsi
10000480c: 48 c1 e2 03                 	shlq	$3, %rdx
100004810: 48 89 c7                    	movq	%rax, %rdi
100004813: e8 a8 45 00 00              	callq	17832 <dyld_stub_binder+0x100008dc0>
100004818: 48 8b 7b 40                 	movq	64(%rbx), %rdi
10000481c: 49 8b 76 40                 	movq	64(%r14), %rsi
100004820: 8b 53 1c                    	movl	28(%rbx), %edx
100004823: 48 c1 e2 05                 	shlq	$5, %rdx
100004827: 48 83 c4 10                 	addq	$16, %rsp
10000482b: 5b                          	popq	%rbx
10000482c: 41 5e                       	popq	%r14
10000482e: 5d                          	popq	%rbp
10000482f: e9 8c 45 00 00              	jmp	17804 <dyld_stub_binder+0x100008dc0>
100004834: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000483e: 66 90                       	nop

0000000100004840 __ZN2GoC2EOS_:
100004840: 55                          	pushq	%rbp
100004841: 48 89 e5                    	movq	%rsp, %rbp
100004844: 48 8d 05 65 58 00 00        	leaq	22629(%rip), %rax
10000484b: 48 89 07                    	movq	%rax, (%rdi)
10000484e: 8a 46 08                    	movb	8(%rsi), %al
100004851: 88 47 08                    	movb	%al, 8(%rdi)
100004854: 8a 46 09                    	movb	9(%rsi), %al
100004857: 88 47 09                    	movb	%al, 9(%rdi)
10000485a: 0f b7 46 0a                 	movzwl	10(%rsi), %eax
10000485e: 66 89 47 0a                 	movw	%ax, 10(%rdi)
100004862: 0f b7 46 0c                 	movzwl	12(%rsi), %eax
100004866: 66 89 47 0c                 	movw	%ax, 12(%rdi)
10000486a: 0f b7 46 0e                 	movzwl	14(%rsi), %eax
10000486e: 66 89 47 0e                 	movw	%ax, 14(%rdi)
100004872: 48 8b 46 10                 	movq	16(%rsi), %rax
100004876: 48 89 47 10                 	movq	%rax, 16(%rdi)
10000487a: 0f 10 46 18                 	movups	24(%rsi), %xmm0
10000487e: 0f 11 47 18                 	movups	%xmm0, 24(%rdi)
100004882: 8b 46 28                    	movl	40(%rsi), %eax
100004885: 89 47 28                    	movl	%eax, 40(%rdi)
100004888: 0f 10 46 30                 	movups	48(%rsi), %xmm0
10000488c: 0f 11 47 30                 	movups	%xmm0, 48(%rdi)
100004890: 48 8b 46 40                 	movq	64(%rsi), %rax
100004894: 48 89 47 40                 	movq	%rax, 64(%rdi)
100004898: 48 c7 46 40 00 00 00 00     	movq	$0, 64(%rsi)
1000048a0: 48 c7 46 38 00 00 00 00     	movq	$0, 56(%rsi)
1000048a8: 48 c7 46 30 00 00 00 00     	movq	$0, 48(%rsi)
1000048b0: 5d                          	popq	%rbp
1000048b1: c3                          	retq
1000048b2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000048bc: 0f 1f 40 00                 	nopl	(%rax)

00000001000048c0 __ZN2GoC1EOS_:
1000048c0: 55                          	pushq	%rbp
1000048c1: 48 89 e5                    	movq	%rsp, %rbp
1000048c4: 48 8d 05 e5 57 00 00        	leaq	22501(%rip), %rax
1000048cb: 48 89 07                    	movq	%rax, (%rdi)
1000048ce: 8a 46 08                    	movb	8(%rsi), %al
1000048d1: 88 47 08                    	movb	%al, 8(%rdi)
1000048d4: 8a 46 09                    	movb	9(%rsi), %al
1000048d7: 88 47 09                    	movb	%al, 9(%rdi)
1000048da: 0f b7 46 0a                 	movzwl	10(%rsi), %eax
1000048de: 66 89 47 0a                 	movw	%ax, 10(%rdi)
1000048e2: 0f b7 46 0c                 	movzwl	12(%rsi), %eax
1000048e6: 66 89 47 0c                 	movw	%ax, 12(%rdi)
1000048ea: 0f b7 46 0e                 	movzwl	14(%rsi), %eax
1000048ee: 66 89 47 0e                 	movw	%ax, 14(%rdi)
1000048f2: 48 8b 46 10                 	movq	16(%rsi), %rax
1000048f6: 48 89 47 10                 	movq	%rax, 16(%rdi)
1000048fa: 0f 10 46 18                 	movups	24(%rsi), %xmm0
1000048fe: 0f 11 47 18                 	movups	%xmm0, 24(%rdi)
100004902: 8b 46 28                    	movl	40(%rsi), %eax
100004905: 89 47 28                    	movl	%eax, 40(%rdi)
100004908: 0f 10 46 30                 	movups	48(%rsi), %xmm0
10000490c: 0f 11 47 30                 	movups	%xmm0, 48(%rdi)
100004910: 48 8b 46 40                 	movq	64(%rsi), %rax
100004914: 48 89 47 40                 	movq	%rax, 64(%rdi)
100004918: 48 c7 46 40 00 00 00 00     	movq	$0, 64(%rsi)
100004920: 48 c7 46 38 00 00 00 00     	movq	$0, 56(%rsi)
100004928: 48 c7 46 30 00 00 00 00     	movq	$0, 48(%rsi)
100004930: 5d                          	popq	%rbp
100004931: c3                          	retq
100004932: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000493c: 0f 1f 40 00                 	nopl	(%rax)

0000000100004940 __ZN2GoaSERKS_:
100004940: 55                          	pushq	%rbp
100004941: 48 89 e5                    	movq	%rsp, %rbp
100004944: 41 56                       	pushq	%r14
100004946: 53                          	pushq	%rbx
100004947: 49 89 f6                    	movq	%rsi, %r14
10000494a: 48 89 fb                    	movq	%rdi, %rbx
10000494d: 8a 46 08                    	movb	8(%rsi), %al
100004950: 88 47 08                    	movb	%al, 8(%rdi)
100004953: 8a 46 09                    	movb	9(%rsi), %al
100004956: 88 47 09                    	movb	%al, 9(%rdi)
100004959: 0f b7 46 0a                 	movzwl	10(%rsi), %eax
10000495d: 66 89 47 0a                 	movw	%ax, 10(%rdi)
100004961: 0f b7 46 0c                 	movzwl	12(%rsi), %eax
100004965: 66 89 47 0c                 	movw	%ax, 12(%rdi)
100004969: 0f b7 46 0e                 	movzwl	14(%rsi), %eax
10000496d: 66 89 47 0e                 	movw	%ax, 14(%rdi)
100004971: 48 8b 7e 10                 	movq	16(%rsi), %rdi
100004975: 48 89 7b 10                 	movq	%rdi, 16(%rbx)
100004979: 0f 10 46 18                 	movups	24(%rsi), %xmm0
10000497d: 0f 11 43 18                 	movups	%xmm0, 24(%rbx)
100004981: 8b 46 28                    	movl	40(%rsi), %eax
100004984: 89 43 28                    	movl	%eax, 40(%rbx)
100004987: 48 8b 43 30                 	movq	48(%rbx), %rax
10000498b: 48 85 c0                    	testq	%rax, %rax
10000498e: 74 0c                       	je	12 <__ZN2GoaSERKS_+0x5c>
100004990: 48 89 c7                    	movq	%rax, %rdi
100004993: e8 1c 44 00 00              	callq	17436 <dyld_stub_binder+0x100008db4>
100004998: 48 8b 7b 10                 	movq	16(%rbx), %rdi
10000499c: 48 83 ef 80                 	subq	$-128, %rdi
1000049a0: e8 15 44 00 00              	callq	17429 <dyld_stub_binder+0x100008dba>
1000049a5: 48 89 43 30                 	movq	%rax, 48(%rbx)
1000049a9: 48 83 c0 7f                 	addq	$127, %rax
1000049ad: 48 83 e0 80                 	andq	$-128, %rax
1000049b1: 48 89 43 38                 	movq	%rax, 56(%rbx)
1000049b5: 8b 53 18                    	movl	24(%rbx), %edx
1000049b8: 48 8d 4c d0 7f              	leaq	127(%rax,%rdx,8), %rcx
1000049bd: 48 83 e1 80                 	andq	$-128, %rcx
1000049c1: 48 89 4b 40                 	movq	%rcx, 64(%rbx)
1000049c5: 49 8b 76 38                 	movq	56(%r14), %rsi
1000049c9: 48 c1 e2 03                 	shlq	$3, %rdx
1000049cd: 48 89 c7                    	movq	%rax, %rdi
1000049d0: e8 eb 43 00 00              	callq	17387 <dyld_stub_binder+0x100008dc0>
1000049d5: 48 8b 7b 40                 	movq	64(%rbx), %rdi
1000049d9: 49 8b 76 40                 	movq	64(%r14), %rsi
1000049dd: 8b 53 1c                    	movl	28(%rbx), %edx
1000049e0: 48 c1 e2 05                 	shlq	$5, %rdx
1000049e4: e8 d7 43 00 00              	callq	17367 <dyld_stub_binder+0x100008dc0>
1000049e9: 48 89 d8                    	movq	%rbx, %rax
1000049ec: 5b                          	popq	%rbx
1000049ed: 41 5e                       	popq	%r14
1000049ef: 5d                          	popq	%rbp
1000049f0: c3                          	retq
1000049f1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000049fb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004a00 __ZN2GoaSERK4Game:
100004a00: 55                          	pushq	%rbp
100004a01: 48 89 e5                    	movq	%rsp, %rbp
100004a04: 41 56                       	pushq	%r14
100004a06: 53                          	pushq	%rbx
100004a07: 48 89 fb                    	movq	%rdi, %rbx
100004a0a: 48 8b 06                    	movq	(%rsi), %rax
100004a0d: 48 89 f7                    	movq	%rsi, %rdi
100004a10: ff 50 20                    	callq	*32(%rax)
100004a13: 48 8b 35 0e 56 00 00        	movq	22030(%rip), %rsi
100004a1a: 48 8d 15 3f 57 00 00        	leaq	22335(%rip), %rdx
100004a21: 48 89 c7                    	movq	%rax, %rdi
100004a24: 31 c9                       	xorl	%ecx, %ecx
100004a26: e8 77 43 00 00              	callq	17271 <dyld_stub_binder+0x100008da2>
100004a2b: 48 85 c0                    	testq	%rax, %rax
100004a2e: 0f 84 ad 00 00 00           	je	173 <__ZN2GoaSERK4Game+0xe1>
100004a34: 49 89 c6                    	movq	%rax, %r14
100004a37: 8a 40 08                    	movb	8(%rax), %al
100004a3a: 88 43 08                    	movb	%al, 8(%rbx)
100004a3d: 41 8a 46 09                 	movb	9(%r14), %al
100004a41: 88 43 09                    	movb	%al, 9(%rbx)
100004a44: 41 0f b7 46 0a              	movzwl	10(%r14), %eax
100004a49: 66 89 43 0a                 	movw	%ax, 10(%rbx)
100004a4d: 41 0f b7 46 0c              	movzwl	12(%r14), %eax
100004a52: 66 89 43 0c                 	movw	%ax, 12(%rbx)
100004a56: 41 0f b7 46 0e              	movzwl	14(%r14), %eax
100004a5b: 66 89 43 0e                 	movw	%ax, 14(%rbx)
100004a5f: 49 8b 7e 10                 	movq	16(%r14), %rdi
100004a63: 48 89 7b 10                 	movq	%rdi, 16(%rbx)
100004a67: 41 0f 10 46 18              	movups	24(%r14), %xmm0
100004a6c: 0f 11 43 18                 	movups	%xmm0, 24(%rbx)
100004a70: 41 8b 46 28                 	movl	40(%r14), %eax
100004a74: 89 43 28                    	movl	%eax, 40(%rbx)
100004a77: 48 8b 43 30                 	movq	48(%rbx), %rax
100004a7b: 48 85 c0                    	testq	%rax, %rax
100004a7e: 74 0c                       	je	12 <__ZN2GoaSERK4Game+0x8c>
100004a80: 48 89 c7                    	movq	%rax, %rdi
100004a83: e8 2c 43 00 00              	callq	17196 <dyld_stub_binder+0x100008db4>
100004a88: 48 8b 7b 10                 	movq	16(%rbx), %rdi
100004a8c: 48 83 ef 80                 	subq	$-128, %rdi
100004a90: e8 25 43 00 00              	callq	17189 <dyld_stub_binder+0x100008dba>
100004a95: 48 89 43 30                 	movq	%rax, 48(%rbx)
100004a99: 48 83 c0 7f                 	addq	$127, %rax
100004a9d: 48 83 e0 80                 	andq	$-128, %rax
100004aa1: 48 89 43 38                 	movq	%rax, 56(%rbx)
100004aa5: 8b 53 18                    	movl	24(%rbx), %edx
100004aa8: 48 8d 4c d0 7f              	leaq	127(%rax,%rdx,8), %rcx
100004aad: 48 83 e1 80                 	andq	$-128, %rcx
100004ab1: 48 89 4b 40                 	movq	%rcx, 64(%rbx)
100004ab5: 49 8b 76 38                 	movq	56(%r14), %rsi
100004ab9: 48 c1 e2 03                 	shlq	$3, %rdx
100004abd: 48 89 c7                    	movq	%rax, %rdi
100004ac0: e8 fb 42 00 00              	callq	17147 <dyld_stub_binder+0x100008dc0>
100004ac5: 48 8b 7b 40                 	movq	64(%rbx), %rdi
100004ac9: 49 8b 76 40                 	movq	64(%r14), %rsi
100004acd: 8b 53 1c                    	movl	28(%rbx), %edx
100004ad0: 48 c1 e2 05                 	shlq	$5, %rdx
100004ad4: e8 e7 42 00 00              	callq	17127 <dyld_stub_binder+0x100008dc0>
100004ad9: 48 89 d8                    	movq	%rbx, %rax
100004adc: 5b                          	popq	%rbx
100004add: 41 5e                       	popq	%r14
100004adf: 5d                          	popq	%rbp
100004ae0: c3                          	retq
100004ae1: e8 9e 42 00 00              	callq	17054 <dyld_stub_binder+0x100008d84>
100004ae6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100004af0 __ZN2GoaSEOS_:
100004af0: 55                          	pushq	%rbp
100004af1: 48 89 e5                    	movq	%rsp, %rbp
100004af4: 41 56                       	pushq	%r14
100004af6: 53                          	pushq	%rbx
100004af7: 48 89 f3                    	movq	%rsi, %rbx
100004afa: 49 89 fe                    	movq	%rdi, %r14
100004afd: 8a 46 08                    	movb	8(%rsi), %al
100004b00: 88 47 08                    	movb	%al, 8(%rdi)
100004b03: 8a 46 09                    	movb	9(%rsi), %al
100004b06: 88 47 09                    	movb	%al, 9(%rdi)
100004b09: 0f b7 46 0a                 	movzwl	10(%rsi), %eax
100004b0d: 66 89 47 0a                 	movw	%ax, 10(%rdi)
100004b11: 0f b7 46 0c                 	movzwl	12(%rsi), %eax
100004b15: 66 89 47 0c                 	movw	%ax, 12(%rdi)
100004b19: 0f b7 46 0e                 	movzwl	14(%rsi), %eax
100004b1d: 66 89 47 0e                 	movw	%ax, 14(%rdi)
100004b21: 48 8b 46 10                 	movq	16(%rsi), %rax
100004b25: 48 89 47 10                 	movq	%rax, 16(%rdi)
100004b29: 0f 10 46 18                 	movups	24(%rsi), %xmm0
100004b2d: 0f 11 47 18                 	movups	%xmm0, 24(%rdi)
100004b31: 8b 46 28                    	movl	40(%rsi), %eax
100004b34: 89 47 28                    	movl	%eax, 40(%rdi)
100004b37: 48 8b 7f 30                 	movq	48(%rdi), %rdi
100004b3b: 48 85 ff                    	testq	%rdi, %rdi
100004b3e: 74 05                       	je	5 <__ZN2GoaSEOS_+0x55>
100004b40: e8 6f 42 00 00              	callq	17007 <dyld_stub_binder+0x100008db4>
100004b45: 0f 10 43 30                 	movups	48(%rbx), %xmm0
100004b49: 41 0f 11 46 30              	movups	%xmm0, 48(%r14)
100004b4e: 48 8b 43 40                 	movq	64(%rbx), %rax
100004b52: 49 89 46 40                 	movq	%rax, 64(%r14)
100004b56: 48 c7 43 40 00 00 00 00     	movq	$0, 64(%rbx)
100004b5e: 48 c7 43 38 00 00 00 00     	movq	$0, 56(%rbx)
100004b66: 48 c7 43 30 00 00 00 00     	movq	$0, 48(%rbx)
100004b6e: 4c 89 f0                    	movq	%r14, %rax
100004b71: 5b                          	popq	%rbx
100004b72: 41 5e                       	popq	%r14
100004b74: 5d                          	popq	%rbp
100004b75: c3                          	retq
100004b76: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100004b80 __ZN2GoaSEO4Game:
100004b80: 55                          	pushq	%rbp
100004b81: 48 89 e5                    	movq	%rsp, %rbp
100004b84: 41 56                       	pushq	%r14
100004b86: 53                          	pushq	%rbx
100004b87: 48 89 f0                    	movq	%rsi, %rax
100004b8a: 48 89 fb                    	movq	%rdi, %rbx
100004b8d: 48 8b 35 94 54 00 00        	movq	21652(%rip), %rsi
100004b94: 48 8d 15 c5 55 00 00        	leaq	21957(%rip), %rdx
100004b9b: 48 89 c7                    	movq	%rax, %rdi
100004b9e: 31 c9                       	xorl	%ecx, %ecx
100004ba0: e8 fd 41 00 00              	callq	16893 <dyld_stub_binder+0x100008da2>
100004ba5: 48 85 c0                    	testq	%rax, %rax
100004ba8: 0f 84 ad 00 00 00           	je	173 <__ZN2GoaSEO4Game+0xdb>
100004bae: 49 89 c6                    	movq	%rax, %r14
100004bb1: 8a 40 08                    	movb	8(%rax), %al
100004bb4: 88 43 08                    	movb	%al, 8(%rbx)
100004bb7: 41 8a 46 09                 	movb	9(%r14), %al
100004bbb: 88 43 09                    	movb	%al, 9(%rbx)
100004bbe: 41 0f b7 46 0a              	movzwl	10(%r14), %eax
100004bc3: 66 89 43 0a                 	movw	%ax, 10(%rbx)
100004bc7: 41 0f b7 46 0c              	movzwl	12(%r14), %eax
100004bcc: 66 89 43 0c                 	movw	%ax, 12(%rbx)
100004bd0: 41 0f b7 46 0e              	movzwl	14(%r14), %eax
100004bd5: 66 89 43 0e                 	movw	%ax, 14(%rbx)
100004bd9: 49 8b 7e 10                 	movq	16(%r14), %rdi
100004bdd: 48 89 7b 10                 	movq	%rdi, 16(%rbx)
100004be1: 41 0f 10 46 18              	movups	24(%r14), %xmm0
100004be6: 0f 11 43 18                 	movups	%xmm0, 24(%rbx)
100004bea: 41 8b 46 28                 	movl	40(%r14), %eax
100004bee: 89 43 28                    	movl	%eax, 40(%rbx)
100004bf1: 48 8b 43 30                 	movq	48(%rbx), %rax
100004bf5: 48 85 c0                    	testq	%rax, %rax
100004bf8: 74 0c                       	je	12 <__ZN2GoaSEO4Game+0x86>
100004bfa: 48 89 c7                    	movq	%rax, %rdi
100004bfd: e8 b2 41 00 00              	callq	16818 <dyld_stub_binder+0x100008db4>
100004c02: 48 8b 7b 10                 	movq	16(%rbx), %rdi
100004c06: 48 83 ef 80                 	subq	$-128, %rdi
100004c0a: e8 ab 41 00 00              	callq	16811 <dyld_stub_binder+0x100008dba>
100004c0f: 48 89 43 30                 	movq	%rax, 48(%rbx)
100004c13: 48 83 c0 7f                 	addq	$127, %rax
100004c17: 48 83 e0 80                 	andq	$-128, %rax
100004c1b: 48 89 43 38                 	movq	%rax, 56(%rbx)
100004c1f: 8b 53 18                    	movl	24(%rbx), %edx
100004c22: 48 8d 4c d0 7f              	leaq	127(%rax,%rdx,8), %rcx
100004c27: 48 83 e1 80                 	andq	$-128, %rcx
100004c2b: 48 89 4b 40                 	movq	%rcx, 64(%rbx)
100004c2f: 49 8b 76 38                 	movq	56(%r14), %rsi
100004c33: 48 c1 e2 03                 	shlq	$3, %rdx
100004c37: 48 89 c7                    	movq	%rax, %rdi
100004c3a: e8 81 41 00 00              	callq	16769 <dyld_stub_binder+0x100008dc0>
100004c3f: 48 8b 7b 40                 	movq	64(%rbx), %rdi
100004c43: 49 8b 76 40                 	movq	64(%r14), %rsi
100004c47: 8b 53 1c                    	movl	28(%rbx), %edx
100004c4a: 48 c1 e2 05                 	shlq	$5, %rdx
100004c4e: e8 6d 41 00 00              	callq	16749 <dyld_stub_binder+0x100008dc0>
100004c53: 48 89 d8                    	movq	%rbx, %rax
100004c56: 5b                          	popq	%rbx
100004c57: 41 5e                       	popq	%r14
100004c59: 5d                          	popq	%rbp
100004c5a: c3                          	retq
100004c5b: e8 24 41 00 00              	callq	16676 <dyld_stub_binder+0x100008d84>

0000000100004c60 __ZN2GoD2Ev:
100004c60: 55                          	pushq	%rbp
100004c61: 48 89 e5                    	movq	%rsp, %rbp
100004c64: 48 8d 05 45 54 00 00        	leaq	21573(%rip), %rax
100004c6b: 48 89 07                    	movq	%rax, (%rdi)
100004c6e: 48 8b 7f 30                 	movq	48(%rdi), %rdi
100004c72: 48 85 ff                    	testq	%rdi, %rdi
100004c75: 74 06                       	je	6 <__ZN2GoD2Ev+0x1d>
100004c77: 5d                          	popq	%rbp
100004c78: e9 37 41 00 00              	jmp	16695 <dyld_stub_binder+0x100008db4>
100004c7d: 5d                          	popq	%rbp
100004c7e: c3                          	retq
100004c7f: 90                          	nop

0000000100004c80 ___clang_call_terminate:
100004c80: 50                          	pushq	%rax
100004c81: e8 04 41 00 00              	callq	16644 <dyld_stub_binder+0x100008d8a>
100004c86: e8 db 40 00 00              	callq	16603 <dyld_stub_binder+0x100008d66>
100004c8b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004c90 __ZN2GoD1Ev:
100004c90: 55                          	pushq	%rbp
100004c91: 48 89 e5                    	movq	%rsp, %rbp
100004c94: 48 8d 05 15 54 00 00        	leaq	21525(%rip), %rax
100004c9b: 48 89 07                    	movq	%rax, (%rdi)
100004c9e: 48 8b 7f 30                 	movq	48(%rdi), %rdi
100004ca2: 48 85 ff                    	testq	%rdi, %rdi
100004ca5: 74 06                       	je	6 <__ZN2GoD1Ev+0x1d>
100004ca7: 5d                          	popq	%rbp
100004ca8: e9 07 41 00 00              	jmp	16647 <dyld_stub_binder+0x100008db4>
100004cad: 5d                          	popq	%rbp
100004cae: c3                          	retq
100004caf: 90                          	nop

0000000100004cb0 __ZN2GoD0Ev:
100004cb0: 55                          	pushq	%rbp
100004cb1: 48 89 e5                    	movq	%rsp, %rbp
100004cb4: 53                          	pushq	%rbx
100004cb5: 50                          	pushq	%rax
100004cb6: 48 89 fb                    	movq	%rdi, %rbx
100004cb9: 48 8d 05 f0 53 00 00        	leaq	21488(%rip), %rax
100004cc0: 48 89 07                    	movq	%rax, (%rdi)
100004cc3: 48 8b 7f 30                 	movq	48(%rdi), %rdi
100004cc7: 48 85 ff                    	testq	%rdi, %rdi
100004cca: 74 05                       	je	5 <__ZN2GoD0Ev+0x21>
100004ccc: e8 e3 40 00 00              	callq	16611 <dyld_stub_binder+0x100008db4>
100004cd1: 48 89 df                    	movq	%rbx, %rdi
100004cd4: 48 83 c4 08                 	addq	$8, %rsp
100004cd8: 5b                          	popq	%rbx
100004cd9: 5d                          	popq	%rbp
100004cda: e9 8d 40 00 00              	jmp	16525 <dyld_stub_binder+0x100008d6c>
100004cdf: 90                          	nop

0000000100004ce0 __ZNK2Go5cloneEv:
100004ce0: 55                          	pushq	%rbp
100004ce1: 48 89 e5                    	movq	%rsp, %rbp
100004ce4: 41 57                       	pushq	%r15
100004ce6: 41 56                       	pushq	%r14
100004ce8: 41 54                       	pushq	%r12
100004cea: 53                          	pushq	%rbx
100004ceb: 48 83 ec 10                 	subq	$16, %rsp
100004cef: 49 89 f7                    	movq	%rsi, %r15
100004cf2: 49 89 fe                    	movq	%rdi, %r14
100004cf5: bf 60 00 00 00              	movl	$96, %edi
100004cfa: e8 73 40 00 00              	callq	16499 <dyld_stub_binder+0x100008d72>
100004cff: 48 89 c3                    	movq	%rax, %rbx
100004d02: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100004d0a: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
100004d12: 48 8b 05 5f 53 00 00        	movq	21343(%rip), %rax
100004d19: 48 83 c0 10                 	addq	$16, %rax
100004d1d: 48 89 03                    	movq	%rax, (%rbx)
100004d20: 4c 8d 63 18                 	leaq	24(%rbx), %r12
100004d24: 48 8d 05 85 53 00 00        	leaq	21381(%rip), %rax
100004d2b: 48 89 43 18                 	movq	%rax, 24(%rbx)
100004d2f: 41 8a 47 08                 	movb	8(%r15), %al
100004d33: 88 43 20                    	movb	%al, 32(%rbx)
100004d36: 41 8a 47 09                 	movb	9(%r15), %al
100004d3a: 88 43 21                    	movb	%al, 33(%rbx)
100004d3d: 41 0f b7 47 0a              	movzwl	10(%r15), %eax
100004d42: 66 89 43 22                 	movw	%ax, 34(%rbx)
100004d46: 41 0f b7 47 0c              	movzwl	12(%r15), %eax
100004d4b: 66 89 43 24                 	movw	%ax, 36(%rbx)
100004d4f: 41 0f b7 47 0e              	movzwl	14(%r15), %eax
100004d54: 66 89 43 26                 	movw	%ax, 38(%rbx)
100004d58: 49 8b 7f 10                 	movq	16(%r15), %rdi
100004d5c: 48 89 7b 28                 	movq	%rdi, 40(%rbx)
100004d60: 41 0f 10 47 18              	movups	24(%r15), %xmm0
100004d65: 0f 29 45 d0                 	movaps	%xmm0, -48(%rbp)
100004d69: 0f 11 43 30                 	movups	%xmm0, 48(%rbx)
100004d6d: 41 8b 47 28                 	movl	40(%r15), %eax
100004d71: 89 43 40                    	movl	%eax, 64(%rbx)
100004d74: 48 83 ef 80                 	subq	$-128, %rdi
100004d78: e8 3d 40 00 00              	callq	16445 <dyld_stub_binder+0x100008dba>
100004d7d: 48 89 43 48                 	movq	%rax, 72(%rbx)
100004d81: 48 83 c0 7f                 	addq	$127, %rax
100004d85: 48 83 e0 80                 	andq	$-128, %rax
100004d89: 48 89 43 50                 	movq	%rax, 80(%rbx)
100004d8d: 66 0f 6f 45 d0              	movdqa	-48(%rbp), %xmm0
100004d92: 66 0f 7e c2                 	movd	%xmm0, %edx
100004d96: 48 8d 4c d0 7f              	leaq	127(%rax,%rdx,8), %rcx
100004d9b: 48 83 e1 80                 	andq	$-128, %rcx
100004d9f: 48 89 4b 58                 	movq	%rcx, 88(%rbx)
100004da3: 49 8b 77 38                 	movq	56(%r15), %rsi
100004da7: 48 c1 e2 03                 	shlq	$3, %rdx
100004dab: 48 89 c7                    	movq	%rax, %rdi
100004dae: e8 0d 40 00 00              	callq	16397 <dyld_stub_binder+0x100008dc0>
100004db3: 48 8b 7b 58                 	movq	88(%rbx), %rdi
100004db7: 49 8b 77 40                 	movq	64(%r15), %rsi
100004dbb: 8b 53 34                    	movl	52(%rbx), %edx
100004dbe: 48 c1 e2 05                 	shlq	$5, %rdx
100004dc2: e8 f9 3f 00 00              	callq	16377 <dyld_stub_binder+0x100008dc0>
100004dc7: 4d 89 26                    	movq	%r12, (%r14)
100004dca: 49 89 5e 08                 	movq	%rbx, 8(%r14)
100004dce: 4c 89 f0                    	movq	%r14, %rax
100004dd1: 48 83 c4 10                 	addq	$16, %rsp
100004dd5: 5b                          	popq	%rbx
100004dd6: 41 5c                       	popq	%r12
100004dd8: 41 5e                       	popq	%r14
100004dda: 41 5f                       	popq	%r15
100004ddc: 5d                          	popq	%rbp
100004ddd: c3                          	retq
100004dde: 66 90                       	nop

0000000100004de0 __ZNK2Go9game_overEv:
100004de0: 55                          	pushq	%rbp
100004de1: 48 89 e5                    	movq	%rsp, %rbp
100004de4: 66 83 7f 0c fe              	cmpw	$-2, 12(%rdi)
100004de9: 0f 94 c0                    	sete	%al
100004dec: 5d                          	popq	%rbp
100004ded: c3                          	retq
100004dee: 66 90                       	nop

0000000100004df0 __ZNK2Go9get_scoreEv:
100004df0: 55                          	pushq	%rbp
100004df1: 48 89 e5                    	movq	%rsp, %rbp
100004df4: 41 57                       	pushq	%r15
100004df6: 41 56                       	pushq	%r14
100004df8: 41 55                       	pushq	%r13
100004dfa: 41 54                       	pushq	%r12
100004dfc: 53                          	pushq	%rbx
100004dfd: 48 83 ec 38                 	subq	$56, %rsp
100004e01: 48 89 fb                    	movq	%rdi, %rbx
100004e04: 0f b6 47 08                 	movzbl	8(%rdi), %eax
100004e08: 48 83 c0 02                 	addq	$2, %rax
100004e0c: 0f b6 77 09                 	movzbl	9(%rdi), %esi
100004e10: 48 83 c6 02                 	addq	$2, %rsi
100004e14: 48 0f af f0                 	imulq	%rax, %rsi
100004e18: 48 8d 7d a8                 	leaq	-88(%rbp), %rdi
100004e1c: e8 cf 3b 00 00              	callq	15311 <_uf_init>
100004e21: 49 89 d8                    	movq	%rbx, %r8
100004e24: 8a 43 09                    	movb	9(%rbx), %al
100004e27: 84 c0                       	testb	%al, %al
100004e29: 0f 84 c4 02 00 00           	je	708 <__ZNK2Go9get_scoreEv+0x303>
100004e2f: 41 8a 48 08                 	movb	8(%r8), %cl
100004e33: 66 41 b9 01 00              	movw	$1, %r9w
100004e38: 4c 8d 75 a8                 	leaq	-88(%rbp), %r14
100004e3c: 89 ce                       	movl	%ecx, %esi
100004e3e: 31 ff                       	xorl	%edi, %edi
100004e40: 45 31 e4                    	xorl	%r12d, %r12d
100004e43: 4c 89 45 c8                 	movq	%r8, -56(%rbp)
100004e47: ff c7                       	incl	%edi
100004e49: 40 84 f6                    	testb	%sil, %sil
100004e4c: 75 35                       	jne	53 <__ZNK2Go9get_scoreEv+0x93>
100004e4e: e9 8d 02 00 00              	jmp	653 <__ZNK2Go9get_scoreEv+0x2f0>
100004e53: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004e5d: 0f 1f 00                    	nopl	(%rax)
100004e60: 41 8a 40 09                 	movb	9(%r8), %al
100004e64: 89 ce                       	movl	%ecx, %esi
100004e66: 8b 7d c4                    	movl	-60(%rbp), %edi
100004e69: 0f b6 d0                    	movzbl	%al, %edx
100004e6c: 41 ff c1                    	incl	%r9d
100004e6f: 66 39 d7                    	cmpw	%dx, %di
100004e72: 0f 83 7e 02 00 00           	jae	638 <__ZNK2Go9get_scoreEv+0x306>
100004e78: ff c7                       	incl	%edi
100004e7a: 40 84 f6                    	testb	%sil, %sil
100004e7d: 0f 84 5d 02 00 00           	je	605 <__ZNK2Go9get_scoreEv+0x2f0>
100004e83: 89 7d c4                    	movl	%edi, -60(%rbp)
100004e86: 49 8b 40 38                 	movq	56(%r8), %rax
100004e8a: 45 31 ff                    	xorl	%r15d, %r15d
100004e8d: 44 89 4d d4                 	movl	%r9d, -44(%rbp)
100004e91: eb 1b                       	jmp	27 <__ZNK2Go9get_scoreEv+0xbe>
100004e93: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004e9d: 0f 1f 00                    	nopl	(%rax)
100004ea0: 0f b6 d1                    	movzbl	%cl, %edx
100004ea3: 41 ff c7                    	incl	%r15d
100004ea6: 89 ce                       	movl	%ecx, %esi
100004ea8: 66 41 39 d7                 	cmpw	%dx, %r15w
100004eac: 73 b2                       	jae	-78 <__ZNK2Go9get_scoreEv+0x70>
100004eae: 40 0f b6 de                 	movzbl	%sil, %ebx
100004eb2: 83 c3 02                    	addl	$2, %ebx
100004eb5: 45 89 cd                    	movl	%r9d, %r13d
100004eb8: 44 0f af eb                 	imull	%ebx, %r13d
100004ebc: 43 8d 54 2f 01              	leal	1(%r15,%r13), %edx
100004ec1: 0f b7 f2                    	movzwl	%dx, %esi
100004ec4: f6 04 f0 03                 	testb	$3, (%rax,%rsi,8)
100004ec8: 75 d6                       	jne	-42 <__ZNK2Go9get_scoreEv+0xb0>
100004eca: 44 89 65 d0                 	movl	%r12d, -48(%rbp)
100004ece: 45 01 fd                    	addl	%r15d, %r13d
100004ed1: 4c 89 f7                    	movq	%r14, %rdi
100004ed4: e8 97 3c 00 00              	callq	15511 <_uf_find>
100004ed9: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100004edd: 4c 8b 45 c8                 	movq	-56(%rbp), %r8
100004ee1: 49 89 c2                    	movq	%rax, %r10
100004ee4: 41 0f b6 40 08              	movzbl	8(%r8), %eax
100004ee9: f7 d0                       	notl	%eax
100004eeb: 44 0f b7 e3                 	movzwl	%bx, %r12d
100004eef: 44 89 c9                    	movl	%r9d, %ecx
100004ef2: 41 0f af cc                 	imull	%r12d, %ecx
100004ef6: 44 01 f9                    	addl	%r15d, %ecx
100004ef9: 01 c1                       	addl	%eax, %ecx
100004efb: 49 8b 40 38                 	movq	56(%r8), %rax
100004eff: 0f b7 f1                    	movzwl	%cx, %esi
100004f02: 8b 1c f0                    	movl	(%rax,%rsi,8), %ebx
100004f05: f6 c3 03                    	testb	$3, %bl
100004f08: 74 14                       	je	20 <__ZNK2Go9get_scoreEv+0x12e>
100004f0a: 89 d8                       	movl	%ebx, %eax
100004f0c: d1 e8                       	shrl	%eax
100004f0e: 31 d8                       	xorl	%ebx, %eax
100004f10: 41 be 10 00 00 00           	movl	$16, %r14d
100004f16: a8 01                       	testb	$1, %al
100004f18: 75 66                       	jne	102 <__ZNK2Go9get_scoreEv+0x190>
100004f1a: 31 db                       	xorl	%ebx, %ebx
100004f1c: eb 7a                       	jmp	122 <__ZNK2Go9get_scoreEv+0x1a8>
100004f1e: 4c 89 f7                    	movq	%r14, %rdi
100004f21: 4c 89 d3                    	movq	%r10, %rbx
100004f24: e8 47 3c 00 00              	callq	15431 <_uf_find>
100004f29: 49 89 da                    	movq	%rbx, %r10
100004f2c: 44 89 d1                    	movl	%r10d, %ecx
100004f2f: 66 31 c1                    	xorw	%ax, %cx
100004f32: 74 54                       	je	84 <__ZNK2Go9get_scoreEv+0x198>
100004f34: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100004f38: 48 8b 49 38                 	movq	56(%rcx), %rcx
100004f3c: 0f b7 d0                    	movzwl	%ax, %edx
100004f3f: 8b 04 d1                    	movl	(%rcx,%rdx,8), %eax
100004f42: 89 c3                       	movl	%eax, %ebx
100004f44: 80 e3 0c                    	andb	$12, %bl
100004f47: 83 e0 f0                    	andl	$-16, %eax
100004f4a: 4c 89 f7                    	movq	%r14, %rdi
100004f4d: 44 8d 70 10                 	leal	16(%rax), %r14d
100004f51: 80 fb 04                    	cmpb	$4, %bl
100004f54: b9 00 00 00 00              	movl	$0, %ecx
100004f59: 0f 44 c8                    	cmovel	%eax, %ecx
100004f5c: f7 d8                       	negl	%eax
100004f5e: 80 fb 08                    	cmpb	$8, %bl
100004f61: be 00 00 00 00              	movl	$0, %esi
100004f66: 0f 45 c6                    	cmovnel	%esi, %eax
100004f69: 09 c8                       	orl	%ecx, %eax
100004f6b: 29 45 d0                    	subl	%eax, -48(%rbp)
100004f6e: 41 0f b7 f2                 	movzwl	%r10w, %esi
100004f72: e8 39 3c 00 00              	callq	15417 <_uf_union>
100004f77: 4c 8b 45 c8                 	movq	-56(%rbp), %r8
100004f7b: 49 89 c2                    	movq	%rax, %r10
100004f7e: eb 14                       	jmp	20 <__ZNK2Go9get_scoreEv+0x1a4>
100004f80: c0 e3 02                    	shlb	$2, %bl
100004f83: 80 e3 0c                    	andb	$12, %bl
100004f86: eb 10                       	jmp	16 <__ZNK2Go9get_scoreEv+0x1a8>
100004f88: 41 be 10 00 00 00           	movl	$16, %r14d
100004f8e: 31 db                       	xorl	%ebx, %ebx
100004f90: 4c 8b 45 c8                 	movq	-56(%rbp), %r8
100004f94: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100004f98: 49 8b 40 38                 	movq	56(%r8), %rax
100004f9c: 41 0f b7 f5                 	movzwl	%r13w, %esi
100004fa0: 8b 04 f0                    	movl	(%rax,%rsi,8), %eax
100004fa3: a8 03                       	testb	$3, %al
100004fa5: 74 16                       	je	22 <__ZNK2Go9get_scoreEv+0x1cd>
100004fa7: 89 c1                       	movl	%eax, %ecx
100004fa9: d1 e9                       	shrl	%ecx
100004fab: 31 c1                       	xorl	%eax, %ecx
100004fad: f6 c1 01                    	testb	$1, %cl
100004fb0: 74 78                       	je	120 <__ZNK2Go9get_scoreEv+0x23a>
100004fb2: c0 e0 02                    	shlb	$2, %al
100004fb5: 24 0c                       	andb	$12, %al
100004fb7: 08 d8                       	orb	%bl, %al
100004fb9: 89 c3                       	movl	%eax, %ebx
100004fbb: eb 6d                       	jmp	109 <__ZNK2Go9get_scoreEv+0x23a>
100004fbd: 48 8d 45 a8                 	leaq	-88(%rbp), %rax
100004fc1: 48 89 c7                    	movq	%rax, %rdi
100004fc4: 4d 89 d5                    	movq	%r10, %r13
100004fc7: e8 a4 3b 00 00              	callq	15268 <_uf_find>
100004fcc: 4d 89 ea                    	movq	%r13, %r10
100004fcf: 66 41 39 c2                 	cmpw	%ax, %r10w
100004fd3: 75 06                       	jne	6 <__ZNK2Go9get_scoreEv+0x1eb>
100004fd5: 4c 8b 45 c8                 	movq	-56(%rbp), %r8
100004fd9: eb 4b                       	jmp	75 <__ZNK2Go9get_scoreEv+0x236>
100004fdb: 4c 8b 6d c8                 	movq	-56(%rbp), %r13
100004fdf: 49 8b 4d 38                 	movq	56(%r13), %rcx
100004fe3: 0f b7 d0                    	movzwl	%ax, %edx
100004fe6: 8b 04 d1                    	movl	(%rcx,%rdx,8), %eax
100004fe9: 89 c1                       	movl	%eax, %ecx
100004feb: 83 e1 0c                    	andl	$12, %ecx
100004fee: 08 cb                       	orb	%cl, %bl
100004ff0: 83 e0 f0                    	andl	$-16, %eax
100004ff3: 41 01 c6                    	addl	%eax, %r14d
100004ff6: 83 f9 04                    	cmpl	$4, %ecx
100004ff9: be 00 00 00 00              	movl	$0, %esi
100004ffe: 0f 44 f0                    	cmovel	%eax, %esi
100005001: f7 d8                       	negl	%eax
100005003: 83 f9 08                    	cmpl	$8, %ecx
100005006: b9 00 00 00 00              	movl	$0, %ecx
10000500b: 0f 45 c1                    	cmovnel	%ecx, %eax
10000500e: 09 f0                       	orl	%esi, %eax
100005010: 29 45 d0                    	subl	%eax, -48(%rbp)
100005013: 41 0f b7 f2                 	movzwl	%r10w, %esi
100005017: 48 8d 7d a8                 	leaq	-88(%rbp), %rdi
10000501b: e8 90 3b 00 00              	callq	15248 <_uf_union>
100005020: 4d 89 e8                    	movq	%r13, %r8
100005023: 49 89 c2                    	movq	%rax, %r10
100005026: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
10000502a: 44 89 c8                    	movl	%r9d, %eax
10000502d: 41 0f af c4                 	imull	%r12d, %eax
100005031: 41 8d 4c 07 02              	leal	2(%r15,%rax), %ecx
100005036: 49 8b 40 38                 	movq	56(%r8), %rax
10000503a: 0f b7 c9                    	movzwl	%cx, %ecx
10000503d: 8b 0c c8                    	movl	(%rax,%rcx,8), %ecx
100005040: 89 ca                       	movl	%ecx, %edx
100005042: d1 ea                       	shrl	%edx
100005044: 31 ca                       	xorl	%ecx, %edx
100005046: f6 c2 01                    	testb	$1, %dl
100005049: 74 0a                       	je	10 <__ZNK2Go9get_scoreEv+0x265>
10000504b: c0 e1 02                    	shlb	$2, %cl
10000504e: 80 e1 0c                    	andb	$12, %cl
100005051: 08 d9                       	orb	%bl, %cl
100005053: 89 cb                       	movl	%ecx, %ebx
100005055: 41 0f b6 50 08              	movzbl	8(%r8), %edx
10000505a: 45 0f af e1                 	imull	%r9d, %r12d
10000505e: 41 8d 0c 17                 	leal	(%r15,%rdx), %ecx
100005062: 41 8d 4c 0c 03              	leal	3(%r12,%rcx), %ecx
100005067: 0f b7 c9                    	movzwl	%cx, %ecx
10000506a: 8b 0c c8                    	movl	(%rax,%rcx,8), %ecx
10000506d: 89 ce                       	movl	%ecx, %esi
10000506f: d1 ee                       	shrl	%esi
100005071: 31 ce                       	xorl	%ecx, %esi
100005073: 40 f6 c6 01                 	testb	$1, %sil
100005077: 74 0a                       	je	10 <__ZNK2Go9get_scoreEv+0x293>
100005079: c0 e1 02                    	shlb	$2, %cl
10000507c: 80 e1 0c                    	andb	$12, %cl
10000507f: 08 d9                       	orb	%bl, %cl
100005081: 89 cb                       	movl	%ecx, %ebx
100005083: 44 8b 65 d0                 	movl	-48(%rbp), %r12d
100005087: 0f b6 cb                    	movzbl	%bl, %ecx
10000508a: 80 f9 04                    	cmpb	$4, %cl
10000508d: be 00 00 00 00              	movl	$0, %esi
100005092: 41 0f 44 f6                 	cmovel	%r14d, %esi
100005096: 44 89 f7                    	movl	%r14d, %edi
100005099: f7 df                       	negl	%edi
10000509b: 80 f9 08                    	cmpb	$8, %cl
10000509e: bb 00 00 00 00              	movl	$0, %ebx
1000050a3: 0f 45 fb                    	cmovnel	%ebx, %edi
1000050a6: 09 f7                       	orl	%esi, %edi
1000050a8: 41 01 fc                    	addl	%edi, %r12d
1000050ab: 41 0f b7 f2                 	movzwl	%r10w, %esi
1000050af: 8b 3c f0                    	movl	(%rax,%rsi,8), %edi
1000050b2: 83 e7 03                    	andl	$3, %edi
1000050b5: 41 09 ce                    	orl	%ecx, %r14d
1000050b8: 41 09 fe                    	orl	%edi, %r14d
1000050bb: 44 89 34 f0                 	movl	%r14d, (%rax,%rsi,8)
1000050bf: 89 d1                       	movl	%edx, %ecx
1000050c1: 4c 8d 75 a8                 	leaq	-88(%rbp), %r14
1000050c5: 41 ff c7                    	incl	%r15d
1000050c8: 89 ce                       	movl	%ecx, %esi
1000050ca: 66 41 39 d7                 	cmpw	%dx, %r15w
1000050ce: 0f 82 da fd ff ff           	jb	-550 <__ZNK2Go9get_scoreEv+0xbe>
1000050d4: e9 87 fd ff ff              	jmp	-633 <__ZNK2Go9get_scoreEv+0x70>
1000050d9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000050e0: 31 f6                       	xorl	%esi, %esi
1000050e2: 0f b6 d0                    	movzbl	%al, %edx
1000050e5: 41 ff c1                    	incl	%r9d
1000050e8: 66 39 d7                    	cmpw	%dx, %di
1000050eb: 0f 82 87 fd ff ff           	jb	-633 <__ZNK2Go9get_scoreEv+0x88>
1000050f1: eb 03                       	jmp	3 <__ZNK2Go9get_scoreEv+0x306>
1000050f3: 45 31 e4                    	xorl	%r12d, %r12d
1000050f6: 41 c1 fc 04                 	sarl	$4, %r12d
1000050fa: 45 03 60 24                 	addl	36(%r8), %r12d
1000050fe: 45 2b 60 28                 	subl	40(%r8), %r12d
100005102: 48 8d 7d a8                 	leaq	-88(%rbp), %rdi
100005106: e8 c5 39 00 00              	callq	14789 <_uf_destroy>
10000510b: 44 89 e0                    	movl	%r12d, %eax
10000510e: 48 83 c4 38                 	addq	$56, %rsp
100005112: 5b                          	popq	%rbx
100005113: 41 5c                       	popq	%r12
100005115: 41 5d                       	popq	%r13
100005117: 41 5e                       	popq	%r14
100005119: 41 5f                       	popq	%r15
10000511b: 5d                          	popq	%rbp
10000511c: c3                          	retq
10000511d: 0f 1f 00                    	nopl	(%rax)

0000000100005120 __ZNK2Go10max_playerEv:
100005120: 55                          	pushq	%rbp
100005121: 48 89 e5                    	movq	%rsp, %rbp
100005124: f6 47 0a 01                 	testb	$1, 10(%rdi)
100005128: 0f 94 c0                    	sete	%al
10000512b: 5d                          	popq	%rbp
10000512c: c3                          	retq
10000512d: 0f 1f 00                    	nopl	(%rax)

0000000100005130 __ZNK2Go10is_currentEv:
100005130: 55                          	pushq	%rbp
100005131: 48 89 e5                    	movq	%rsp, %rbp
100005134: b0 01                       	movb	$1, %al
100005136: 5d                          	popq	%rbp
100005137: c3                          	retq
100005138: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100005140 __ZN2Go4playER8GameMove:
100005140: 55                          	pushq	%rbp
100005141: 48 89 e5                    	movq	%rsp, %rbp
100005144: 41 57                       	pushq	%r15
100005146: 41 56                       	pushq	%r14
100005148: 41 55                       	pushq	%r13
10000514a: 41 54                       	pushq	%r12
10000514c: 53                          	pushq	%rbx
10000514d: 48 83 ec 28                 	subq	$40, %rsp
100005151: 48 89 f0                    	movq	%rsi, %rax
100005154: 49 89 fc                    	movq	%rdi, %r12
100005157: 48 8b 35 da 4e 00 00        	movq	20186(%rip), %rsi
10000515e: 48 8b 15 cb 4e 00 00        	movq	20171(%rip), %rdx
100005165: 48 89 c7                    	movq	%rax, %rdi
100005168: 31 c9                       	xorl	%ecx, %ecx
10000516a: e8 33 3c 00 00              	callq	15411 <dyld_stub_binder+0x100008da2>
10000516f: 48 85 c0                    	testq	%rax, %rax
100005172: 0f 84 09 01 00 00           	je	265 <__ZN2Go4playER8GameMove+0x141>
100005178: 49 89 c5                    	movq	%rax, %r13
10000517b: 0f b6 40 0c                 	movzbl	12(%rax), %eax
10000517f: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100005183: 45 0f b6 7d 0d              	movzbl	13(%r13), %r15d
100005188: 41 0f b6 5c 24 08           	movzbl	8(%r12), %ebx
10000518e: 49 8b 04 24                 	movq	(%r12), %rax
100005192: 4c 89 e7                    	movq	%r12, %rdi
100005195: ff 50 48                    	callq	*72(%rax)
100005198: 84 c0                       	testb	%al, %al
10000519a: 0f 85 e6 00 00 00           	jne	230 <__ZN2Go4playER8GameMove+0x146>
1000051a0: 45 8b 75 08                 	movl	8(%r13), %r14d
1000051a4: 41 83 fe 05                 	cmpl	$5, %r14d
1000051a8: 75 19                       	jne	25 <__ZN2Go4playER8GameMove+0x83>
1000051aa: 31 c0                       	xorl	%eax, %eax
1000051ac: 66 41 83 7c 24 0c ff        	cmpw	$-1, 12(%r12)
1000051b3: 0f 94 c0                    	sete	%al
1000051b6: f7 d0                       	notl	%eax
1000051b8: 66 41 89 44 24 0c           	movw	%ax, 12(%r12)
1000051be: e9 a9 00 00 00              	jmp	169 <__ZN2Go4playER8GameMove+0x12c>
1000051c3: 41 ff c7                    	incl	%r15d
1000051c6: 83 c3 02                    	addl	$2, %ebx
1000051c9: 41 0f af df                 	imull	%r15d, %ebx
1000051cd: 48 8b 45 b8                 	movq	-72(%rbp), %rax
1000051d1: 8d 5c 18 01                 	leal	1(%rax,%rbx), %ebx
1000051d5: 49 8b 44 24 38              	movq	56(%r12), %rax
1000051da: 44 0f b7 fb                 	movzwl	%bx, %r15d
1000051de: 42 8b 04 f8                 	movl	(%rax,%r15,8), %eax
1000051e2: 89 c1                       	movl	%eax, %ecx
1000051e4: d1 e9                       	shrl	%ecx
1000051e6: 31 c1                       	xorl	%eax, %ecx
1000051e8: f6 c1 01                    	testb	$1, %cl
1000051eb: 0f 85 80 01 00 00           	jne	384 <__ZN2Go4playER8GameMove+0x231>
1000051f1: 4c 89 e7                    	movq	%r12, %rdi
1000051f4: 44 89 fe                    	movl	%r15d, %esi
1000051f7: 44 89 f2                    	movl	%r14d, %edx
1000051fa: e8 71 e3 ff ff              	callq	-7311 <__ZNK2Go15move_is_suicideEt5Color>
1000051ff: 84 c0                       	testb	%al, %al
100005201: 0f 85 8c 01 00 00           	jne	396 <__ZN2Go4playER8GameMove+0x253>
100005207: 41 8a 45 0c                 	movb	12(%r13), %al
10000520b: 41 3a 44 24 08              	cmpb	8(%r12), %al
100005210: 0f 83 04 01 00 00           	jae	260 <__ZN2Go4playER8GameMove+0x1da>
100005216: 41 8a 45 0d                 	movb	13(%r13), %al
10000521a: 41 3a 44 24 09              	cmpb	9(%r12), %al
10000521f: 0f 83 f5 00 00 00           	jae	245 <__ZN2Go4playER8GameMove+0x1da>
100005225: 45 0f b7 44 24 0a           	movzwl	10(%r12), %r8d
10000522b: 31 c0                       	xorl	%eax, %eax
10000522d: 41 83 fe 02                 	cmpl	$2, %r14d
100005231: 0f 94 c0                    	sete	%al
100005234: 31 c9                       	xorl	%ecx, %ecx
100005236: 41 83 fe 01                 	cmpl	$1, %r14d
10000523a: 0f 94 c1                    	sete	%cl
10000523d: 41 f6 c0 01                 	testb	$1, %r8b
100005241: 0f 44 c1                    	cmovel	%ecx, %eax
100005244: 84 c0                       	testb	%al, %al
100005246: 0f 84 69 01 00 00           	je	361 <__ZN2Go4playER8GameMove+0x275>
10000524c: 66 41 3b 5c 24 0e           	cmpw	14(%r12), %bx
100005252: 0f 84 bc 01 00 00           	je	444 <__ZN2Go4playER8GameMove+0x2d4>
100005258: 4c 89 e7                    	movq	%r12, %rdi
10000525b: 44 89 fe                    	movl	%r15d, %esi
10000525e: 44 89 f2                    	movl	%r14d, %edx
100005261: e8 5a e5 ff ff              	callq	-6822 <__ZN2Go8_do_playEt5Color>
100005266: 66 41 89 5c 24 0c           	movw	%bx, 12(%r12)
10000526c: 66 41 ff 44 24 0a           	incw	10(%r12)
100005272: 48 83 c4 28                 	addq	$40, %rsp
100005276: 5b                          	popq	%rbx
100005277: 41 5c                       	popq	%r12
100005279: 41 5d                       	popq	%r13
10000527b: 41 5e                       	popq	%r14
10000527d: 41 5f                       	popq	%r15
10000527f: 5d                          	popq	%rbp
100005280: c3                          	retq
100005281: e8 fe 3a 00 00              	callq	15102 <dyld_stub_binder+0x100008d84>
100005286: 48 b8 6f 74 68 65 72 20 6d 6f       	movabsq	$8029109386371167343, %rax
100005290: 48 89 05 41 63 00 00        	movq	%rax, 25409(%rip)
100005297: 48 b8 20 70 6c 61 79 20 61 6e       	movabsq	$7953674122610634784, %rax
1000052a1: 48 89 05 28 63 00 00        	movq	%rax, 25384(%rip)
1000052a8: 48 b8 2c 20 63 61 6e 6e 6f 74       	movabsq	$8390046051173867564, %rax
1000052b2: 48 89 05 0f 63 00 00        	movq	%rax, 25359(%rip)
1000052b9: 48 b8 61 64 79 20 6f 76 65 72       	movabsq	$8243124912629834849, %rax
1000052c3: 48 89 05 f6 62 00 00        	movq	%rax, 25334(%rip)
1000052ca: 48 b8 20 69 73 20 61 6c 72 65       	movabsq	$7310024309587798304, %rax
1000052d4: 48 89 05 dd 62 00 00        	movq	%rax, 25309(%rip)
1000052db: 48 b8 74 68 65 20 67 61 6d 65       	movabsq	$7308604865845225588, %rax
1000052e5: 48 89 05 c4 62 00 00        	movq	%rax, 25284(%rip)
1000052ec: c7 05 e9 62 00 00 6f 76 65 00       	movl	$6649455, 25321(%rip)
1000052f6: 4c 8d 35 b3 62 00 00        	leaq	25267(%rip), %r14
1000052fd: bf 10 00 00 00              	movl	$16, %edi
100005302: e8 77 3a 00 00              	callq	14967 <dyld_stub_binder+0x100008d7e>
100005307: 48 89 c3                    	movq	%rax, %rbx
10000530a: 48 89 c7                    	movq	%rax, %rdi
10000530d: 4c 89 f6                    	movq	%r14, %rsi
100005310: e8 e5 39 00 00              	callq	14821 <dyld_stub_binder+0x100008cfa>
100005315: e9 fe 01 00 00              	jmp	510 <__ZN2Go4playER8GameMove+0x3d8>
10000531a: 48 b8 20 62 6f 75 6e 64 73 00       	movabsq	$32480047901139488, %rax
100005324: 48 89 05 93 62 00 00        	movq	%rax, 25235(%rip)
10000532b: 48 b8 6f 75 74 20 6f 66 20 62       	movabsq	$7070764042443584879, %rax
100005335: 48 89 05 7c 62 00 00        	movq	%rax, 25212(%rip)
10000533c: 48 b8 6d 6f 76 65 20 69 73 20       	movabsq	$2338328219397549933, %rax
100005346: 48 89 05 63 62 00 00        	movq	%rax, 25187(%rip)
10000534d: 4c 8d 35 5c 62 00 00        	leaq	25180(%rip), %r14
100005354: bf 10 00 00 00              	movl	$16, %edi
100005359: e8 20 3a 00 00              	callq	14880 <dyld_stub_binder+0x100008d7e>
10000535e: 48 89 c3                    	movq	%rax, %rbx
100005361: 48 89 c7                    	movq	%rax, %rdi
100005364: 4c 89 f6                    	movq	%r14, %rsi
100005367: e8 8e 39 00 00              	callq	14734 <dyld_stub_binder+0x100008cfa>
10000536c: e9 a7 01 00 00              	jmp	423 <__ZN2Go4playER8GameMove+0x3d8>
100005371: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100005375: 4c 89 e6                    	movq	%r12, %rsi
100005378: 44 89 fa                    	movl	%r15d, %edx
10000537b: e8 b0 c0 ff ff              	callq	-16208 <__ZNK2Go7idx_strEt>
100005380: f6 45 c0 01                 	testb	$1, -64(%rbp)
100005384: 0f 84 ac 00 00 00           	je	172 <__ZN2Go4playER8GameMove+0x2f6>
10000538a: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
10000538e: e9 a7 00 00 00              	jmp	167 <__ZN2Go4playER8GameMove+0x2fa>
100005393: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100005397: 4c 89 e6                    	movq	%r12, %rsi
10000539a: 44 89 fa                    	movl	%r15d, %edx
10000539d: e8 8e c0 ff ff              	callq	-16242 <__ZNK2Go7idx_strEt>
1000053a2: f6 45 c0 01                 	testb	$1, -64(%rbp)
1000053a6: 0f 84 d8 00 00 00           	je	216 <__ZN2Go4playER8GameMove+0x344>
1000053ac: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000053b0: e9 d3 00 00 00              	jmp	211 <__ZN2Go4playER8GameMove+0x348>
1000053b5: 41 83 fe 01                 	cmpl	$1, %r14d
1000053b9: 48 8d 05 98 41 00 00        	leaq	16792(%rip), %rax
1000053c0: 48 8d 15 97 41 00 00        	leaq	16791(%rip), %rdx
1000053c7: 48 0f 44 d0                 	cmoveq	%rax, %rdx
1000053cb: 41 83 fe 02                 	cmpl	$2, %r14d
1000053cf: 48 8d 0d 7c 41 00 00        	leaq	16764(%rip), %rcx
1000053d6: 48 0f 45 ca                 	cmovneq	%rdx, %rcx
1000053da: 4c 8d 35 cf 61 00 00        	leaq	25039(%rip), %r14
1000053e1: 48 8d 15 4e 41 00 00        	leaq	16718(%rip), %rdx
1000053e8: be 00 04 00 00              	movl	$1024, %esi
1000053ed: 4c 89 f7                    	movq	%r14, %rdi
1000053f0: 31 c0                       	xorl	%eax, %eax
1000053f2: e8 e7 39 00 00              	callq	14823 <dyld_stub_binder+0x100008dde>
1000053f7: bf 10 00 00 00              	movl	$16, %edi
1000053fc: e8 7d 39 00 00              	callq	14717 <dyld_stub_binder+0x100008d7e>
100005401: 48 89 c3                    	movq	%rax, %rbx
100005404: 48 89 c7                    	movq	%rax, %rdi
100005407: 4c 89 f6                    	movq	%r14, %rsi
10000540a: e8 eb 38 00 00              	callq	14571 <dyld_stub_binder+0x100008cfa>
10000540f: e9 04 01 00 00              	jmp	260 <__ZN2Go4playER8GameMove+0x3d8>
100005414: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100005418: 4c 89 e6                    	movq	%r12, %rsi
10000541b: 44 89 fa                    	movl	%r15d, %edx
10000541e: e8 0d c0 ff ff              	callq	-16371 <__ZNK2Go7idx_strEt>
100005423: f6 45 c0 01                 	testb	$1, -64(%rbp)
100005427: 0f 84 a2 00 00 00           	je	162 <__ZN2Go4playER8GameMove+0x38f>
10000542d: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100005431: e9 9d 00 00 00              	jmp	157 <__ZN2Go4playER8GameMove+0x393>
100005436: 48 8d 4d c1                 	leaq	-63(%rbp), %rcx
10000543a: 48 8d 3d 6f 61 00 00        	leaq	24943(%rip), %rdi
100005441: 48 8d 15 ad 40 00 00        	leaq	16557(%rip), %rdx
100005448: be 00 04 00 00              	movl	$1024, %esi
10000544d: 31 c0                       	xorl	%eax, %eax
10000544f: e8 8a 39 00 00              	callq	14730 <dyld_stub_binder+0x100008dde>
100005454: f6 45 c0 01                 	testb	$1, -64(%rbp)
100005458: 74 09                       	je	9 <__ZN2Go4playER8GameMove+0x323>
10000545a: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000545e: e8 09 39 00 00              	callq	14601 <dyld_stub_binder+0x100008d6c>
100005463: bf 10 00 00 00              	movl	$16, %edi
100005468: e8 11 39 00 00              	callq	14609 <dyld_stub_binder+0x100008d7e>
10000546d: 48 89 c3                    	movq	%rax, %rbx
100005470: 48 8d 35 39 61 00 00        	leaq	24889(%rip), %rsi
100005477: 48 89 c7                    	movq	%rax, %rdi
10000547a: e8 7b 38 00 00              	callq	14459 <dyld_stub_binder+0x100008cfa>
10000547f: e9 94 00 00 00              	jmp	148 <__ZN2Go4playER8GameMove+0x3d8>
100005484: 48 8d 4d c1                 	leaq	-63(%rbp), %rcx
100005488: 48 8d 3d 21 61 00 00        	leaq	24865(%rip), %rdi
10000548f: 48 8d 15 76 40 00 00        	leaq	16502(%rip), %rdx
100005496: be 00 04 00 00              	movl	$1024, %esi
10000549b: 31 c0                       	xorl	%eax, %eax
10000549d: e8 3c 39 00 00              	callq	14652 <dyld_stub_binder+0x100008dde>
1000054a2: f6 45 c0 01                 	testb	$1, -64(%rbp)
1000054a6: 74 09                       	je	9 <__ZN2Go4playER8GameMove+0x371>
1000054a8: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
1000054ac: e8 bb 38 00 00              	callq	14523 <dyld_stub_binder+0x100008d6c>
1000054b1: bf 10 00 00 00              	movl	$16, %edi
1000054b6: e8 c3 38 00 00              	callq	14531 <dyld_stub_binder+0x100008d7e>
1000054bb: 48 89 c3                    	movq	%rax, %rbx
1000054be: 48 8d 35 eb 60 00 00        	leaq	24811(%rip), %rsi
1000054c5: 48 89 c7                    	movq	%rax, %rdi
1000054c8: e8 2d 38 00 00              	callq	14381 <dyld_stub_binder+0x100008cfa>
1000054cd: eb 49                       	jmp	73 <__ZN2Go4playER8GameMove+0x3d8>
1000054cf: 48 8d 4d c1                 	leaq	-63(%rbp), %rcx
1000054d3: 48 8d 3d d6 60 00 00        	leaq	24790(%rip), %rdi
1000054da: 48 8d 15 86 40 00 00        	leaq	16518(%rip), %rdx
1000054e1: be 00 04 00 00              	movl	$1024, %esi
1000054e6: 31 c0                       	xorl	%eax, %eax
1000054e8: e8 f1 38 00 00              	callq	14577 <dyld_stub_binder+0x100008dde>
1000054ed: f6 45 c0 01                 	testb	$1, -64(%rbp)
1000054f1: 74 09                       	je	9 <__ZN2Go4playER8GameMove+0x3bc>
1000054f3: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
1000054f7: e8 70 38 00 00              	callq	14448 <dyld_stub_binder+0x100008d6c>
1000054fc: bf 10 00 00 00              	movl	$16, %edi
100005501: e8 78 38 00 00              	callq	14456 <dyld_stub_binder+0x100008d7e>
100005506: 48 89 c3                    	movq	%rax, %rbx
100005509: 48 8d 35 a0 60 00 00        	leaq	24736(%rip), %rsi
100005510: 48 89 c7                    	movq	%rax, %rdi
100005513: e8 e2 37 00 00              	callq	14306 <dyld_stub_binder+0x100008cfa>
100005518: 48 8b 35 29 4b 00 00        	movq	19241(%rip), %rsi
10000551f: 48 8b 15 e2 4a 00 00        	movq	19170(%rip), %rdx
100005526: 48 89 df                    	movq	%rbx, %rdi
100005529: e8 6e 38 00 00              	callq	14446 <dyld_stub_binder+0x100008d9c>
10000552e: eb 08                       	jmp	8 <__ZN2Go4playER8GameMove+0x3f8>
100005530: eb 06                       	jmp	6 <__ZN2Go4playER8GameMove+0x3f8>
100005532: eb 04                       	jmp	4 <__ZN2Go4playER8GameMove+0x3f8>
100005534: eb 02                       	jmp	2 <__ZN2Go4playER8GameMove+0x3f8>
100005536: eb 00                       	jmp	0 <__ZN2Go4playER8GameMove+0x3f8>
100005538: 49 89 c6                    	movq	%rax, %r14
10000553b: 48 89 df                    	movq	%rbx, %rdi
10000553e: e8 53 38 00 00              	callq	14419 <dyld_stub_binder+0x100008d96>
100005543: 4c 89 f7                    	movq	%r14, %rdi
100005546: e8 97 37 00 00              	callq	14231 <dyld_stub_binder+0x100008ce2>
10000554b: 0f 0b                       	ud2
10000554d: 0f 1f 00                    	nopl	(%rax)

0000000100005550 __ZN2Go4undoEv:
100005550: 55                          	pushq	%rbp
100005551: 48 89 e5                    	movq	%rsp, %rbp
100005554: 41 56                       	pushq	%r14
100005556: 53                          	pushq	%rbx
100005557: 48 b8 65 6d 65 6e 74 65 64 00       	movabsq	$28259048413818213, %rax
100005561: 48 89 05 55 60 00 00        	movq	%rax, 24661(%rip)
100005568: 48 b8 20 69 6d 70 6c 65 6d 65       	movabsq	$7308609286709274912, %rax
100005572: 48 89 05 3f 60 00 00        	movq	%rax, 24639(%rip)
100005579: 48 b8 75 6e 64 6f 20 6e 6f 74       	movabsq	$8390045716401385077, %rax
100005583: 48 89 05 26 60 00 00        	movq	%rax, 24614(%rip)
10000558a: 4c 8d 35 1f 60 00 00        	leaq	24607(%rip), %r14
100005591: bf 10 00 00 00              	movl	$16, %edi
100005596: e8 e3 37 00 00              	callq	14307 <dyld_stub_binder+0x100008d7e>
10000559b: 48 89 c3                    	movq	%rax, %rbx
10000559e: 48 89 c7                    	movq	%rax, %rdi
1000055a1: 4c 89 f6                    	movq	%r14, %rsi
1000055a4: e8 51 37 00 00              	callq	14161 <dyld_stub_binder+0x100008cfa>
1000055a9: 48 8b 35 98 4a 00 00        	movq	19096(%rip), %rsi
1000055b0: 48 8b 15 51 4a 00 00        	movq	19025(%rip), %rdx
1000055b7: 48 89 df                    	movq	%rbx, %rdi
1000055ba: e8 dd 37 00 00              	callq	14301 <dyld_stub_binder+0x100008d9c>
1000055bf: 49 89 c6                    	movq	%rax, %r14
1000055c2: 48 89 df                    	movq	%rbx, %rdi
1000055c5: e8 cc 37 00 00              	callq	14284 <dyld_stub_binder+0x100008d96>
1000055ca: 4c 89 f7                    	movq	%r14, %rdi
1000055cd: e8 10 37 00 00              	callq	14096 <dyld_stub_binder+0x100008ce2>
1000055d2: 0f 0b                       	ud2
1000055d4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000055de: 66 90                       	nop

00000001000055e0 __ZN2Go4redoEv:
1000055e0: 55                          	pushq	%rbp
1000055e1: 48 89 e5                    	movq	%rsp, %rbp
1000055e4: 41 56                       	pushq	%r14
1000055e6: 53                          	pushq	%rbx
1000055e7: 48 b8 65 6d 65 6e 74 65 64 00       	movabsq	$28259048413818213, %rax
1000055f1: 48 89 05 c5 5f 00 00        	movq	%rax, 24517(%rip)
1000055f8: 48 b8 20 69 6d 70 6c 65 6d 65       	movabsq	$7308609286709274912, %rax
100005602: 48 89 05 af 5f 00 00        	movq	%rax, 24495(%rip)
100005609: 48 b8 72 65 64 6f 20 6e 6f 74       	movabsq	$8390045716401382770, %rax
100005613: 48 89 05 96 5f 00 00        	movq	%rax, 24470(%rip)
10000561a: 4c 8d 35 8f 5f 00 00        	leaq	24463(%rip), %r14
100005621: bf 10 00 00 00              	movl	$16, %edi
100005626: e8 53 37 00 00              	callq	14163 <dyld_stub_binder+0x100008d7e>
10000562b: 48 89 c3                    	movq	%rax, %rbx
10000562e: 48 89 c7                    	movq	%rax, %rdi
100005631: 4c 89 f6                    	movq	%r14, %rsi
100005634: e8 c1 36 00 00              	callq	14017 <dyld_stub_binder+0x100008cfa>
100005639: 48 8b 35 08 4a 00 00        	movq	18952(%rip), %rsi
100005640: 48 8b 15 c1 49 00 00        	movq	18881(%rip), %rdx
100005647: 48 89 df                    	movq	%rbx, %rdi
10000564a: e8 4d 37 00 00              	callq	14157 <dyld_stub_binder+0x100008d9c>
10000564f: 49 89 c6                    	movq	%rax, %r14
100005652: 48 89 df                    	movq	%rbx, %rdi
100005655: e8 3c 37 00 00              	callq	14140 <dyld_stub_binder+0x100008d96>
10000565a: 4c 89 f7                    	movq	%r14, %rdi
10000565d: e8 80 36 00 00              	callq	13952 <dyld_stub_binder+0x100008ce2>
100005662: 0f 0b                       	ud2
100005664: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000566e: 66 90                       	nop

0000000100005670 __ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE:
100005670: 55                          	pushq	%rbp
100005671: 48 89 e5                    	movq	%rsp, %rbp
100005674: 41 57                       	pushq	%r15
100005676: 41 56                       	pushq	%r14
100005678: 41 55                       	pushq	%r13
10000567a: 41 54                       	pushq	%r12
10000567c: 53                          	pushq	%rbx
10000567d: 48 83 ec 28                 	subq	$40, %rsp
100005681: 48 89 75 b8                 	movq	%rsi, -72(%rbp)
100005685: 48 89 fb                    	movq	%rdi, %rbx
100005688: 48 8b 05 c9 49 00 00        	movq	18889(%rip), %rax
10000568f: 48 83 c0 10                 	addq	$16, %rax
100005693: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100005697: 48 8b 07                    	movq	(%rdi), %rax
10000569a: ff 50 48                    	callq	*72(%rax)
10000569d: 84 c0                       	testb	%al, %al
10000569f: 0f 85 08 01 00 00           	jne	264 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0x13d>
1000056a5: 48 8b 03                    	movq	(%rbx), %rax
1000056a8: 48 89 df                    	movq	%rbx, %rdi
1000056ab: ff 50 58                    	callq	*88(%rax)
1000056ae: 0f b6 c0                    	movzbl	%al, %eax
1000056b1: b9 02 00 00 00              	movl	$2, %ecx
1000056b6: 29 c1                       	subl	%eax, %ecx
1000056b8: 89 4d d0                    	movl	%ecx, -48(%rbp)
1000056bb: 0f b6 43 09                 	movzbl	9(%rbx), %eax
1000056bf: 89 45 c4                    	movl	%eax, -60(%rbp)
1000056c2: 66 85 c0                    	testw	%ax, %ax
1000056c5: 0f 84 c1 00 00 00           	je	193 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0x11c>
1000056cb: 44 0f b6 6b 08              	movzbl	8(%rbx), %r13d
1000056d0: 45 84 ed                    	testb	%r13b, %r13b
1000056d3: 0f 84 b3 00 00 00           	je	179 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0x11c>
1000056d9: 66 41 bc 01 00              	movw	$1, %r12w
1000056de: 31 c9                       	xorl	%ecx, %ecx
1000056e0: eb 1e                       	jmp	30 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0x90>
1000056e2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000056ec: 0f 1f 40 00                 	nopl	(%rax)
1000056f0: 41 ff c4                    	incl	%r12d
1000056f3: 8b 4d c0                    	movl	-64(%rbp), %ecx
1000056f6: 66 3b 4d c4                 	cmpw	-60(%rbp), %cx
1000056fa: 0f 83 8c 00 00 00           	jae	140 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0x11c>
100005700: 89 c8                       	movl	%ecx, %eax
100005702: 48 89 c1                    	movq	%rax, %rcx
100005705: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100005709: ff c0                       	incl	%eax
10000570b: 89 45 c0                    	movl	%eax, -64(%rbp)
10000570e: 45 31 ff                    	xorl	%r15d, %r15d
100005711: eb 16                       	jmp	22 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0xb9>
100005713: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000571d: 0f 1f 00                    	nopl	(%rax)
100005720: 41 ff c7                    	incl	%r15d
100005723: 66 45 39 ef                 	cmpw	%r13w, %r15w
100005727: 73 c7                       	jae	-57 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0x80>
100005729: 0f b6 43 08                 	movzbl	8(%rbx), %eax
10000572d: 83 c0 02                    	addl	$2, %eax
100005730: 41 0f af c4                 	imull	%r12d, %eax
100005734: 45 8d 74 07 01              	leal	1(%r15,%rax), %r14d
100005739: 48 8b 43 38                 	movq	56(%rbx), %rax
10000573d: 41 0f b7 ce                 	movzwl	%r14w, %ecx
100005741: f6 04 c8 03                 	testb	$3, (%rax,%rcx,8)
100005745: 75 d9                       	jne	-39 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0xb0>
100005747: 8b 55 d0                    	movl	-48(%rbp), %edx
10000574a: 41 0f b7 f6                 	movzwl	%r14w, %esi
10000574e: 48 89 df                    	movq	%rbx, %rdi
100005751: e8 1a de ff ff              	callq	-8678 <__ZNK2Go15move_is_suicideEt5Color>
100005756: 84 c0                       	testb	%al, %al
100005758: 75 c6                       	jne	-58 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0xb0>
10000575a: 66 44 3b 73 0e              	cmpw	14(%rbx), %r14w
10000575f: 74 bf                       	je	-65 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0xb0>
100005761: 44 88 7d d4                 	movb	%r15b, -44(%rbp)
100005765: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100005769: 88 45 d5                    	movb	%al, -43(%rbp)
10000576c: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100005770: 48 8b 78 20                 	movq	32(%rax), %rdi
100005774: 48 85 ff                    	testq	%rdi, %rdi
100005777: 74 43                       	je	67 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0x14c>
100005779: 48 8b 07                    	movq	(%rdi), %rax
10000577c: 48 89 de                    	movq	%rbx, %rsi
10000577f: 48 8d 55 c8                 	leaq	-56(%rbp), %rdx
100005783: ff 50 30                    	callq	*48(%rax)
100005786: 84 c0                       	testb	%al, %al
100005788: 75 96                       	jne	-106 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0xb0>
10000578a: eb 21                       	jmp	33 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0x13d>
10000578c: c7 45 d0 05 00 00 00        	movl	$5, -48(%rbp)
100005793: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100005797: 48 8b 78 20                 	movq	32(%rax), %rdi
10000579b: 48 85 ff                    	testq	%rdi, %rdi
10000579e: 74 23                       	je	35 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0x153>
1000057a0: 48 8b 07                    	movq	(%rdi), %rax
1000057a3: 48 8d 55 c8                 	leaq	-56(%rbp), %rdx
1000057a7: 48 89 de                    	movq	%rbx, %rsi
1000057aa: ff 50 30                    	callq	*48(%rax)
1000057ad: 48 83 c4 28                 	addq	$40, %rsp
1000057b1: 5b                          	popq	%rbx
1000057b2: 41 5c                       	popq	%r12
1000057b4: 41 5d                       	popq	%r13
1000057b6: 41 5e                       	popq	%r14
1000057b8: 41 5f                       	popq	%r15
1000057ba: 5d                          	popq	%rbp
1000057bb: c3                          	retq
1000057bc: e8 3f 29 00 00              	callq	10559 <__ZNSt3__1L25__throw_bad_function_callEv>
1000057c1: 0f 0b                       	ud2
1000057c3: e8 38 29 00 00              	callq	10552 <__ZNSt3__1L25__throw_bad_function_callEv>
1000057c8: eb f7                       	jmp	-9 <__ZN2Go19for_each_legal_moveENSt3__18functionIFbR4GameR8GameMoveEEE+0x151>
1000057ca: 48 89 c7                    	movq	%rax, %rdi
1000057cd: e8 10 35 00 00              	callq	13584 <dyld_stub_binder+0x100008ce2>
1000057d2: 0f 0b                       	ud2
1000057d4: 48 89 c7                    	movq	%rax, %rdi
1000057d7: e8 06 35 00 00              	callq	13574 <dyld_stub_binder+0x100008ce2>
1000057dc: 0f 0b                       	ud2
1000057de: 48 89 c7                    	movq	%rax, %rdi
1000057e1: e8 fc 34 00 00              	callq	13564 <dyld_stub_binder+0x100008ce2>
1000057e6: 0f 0b                       	ud2
1000057e8: 48 89 c7                    	movq	%rax, %rdi
1000057eb: e8 f2 34 00 00              	callq	13554 <dyld_stub_binder+0x100008ce2>
1000057f0: 0f 0b                       	ud2
1000057f2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000057fc: 0f 1f 40 00                 	nopl	(%rax)

0000000100005800 __ZN6GoMoveD1Ev:
100005800: 55                          	pushq	%rbp
100005801: 48 89 e5                    	movq	%rsp, %rbp
100005804: 5d                          	popq	%rbp
100005805: c3                          	retq
100005806: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100005810 __ZNK2Go11print_widthEv:
100005810: 55                          	pushq	%rbp
100005811: 48 89 e5                    	movq	%rsp, %rbp
100005814: 0f b6 47 09                 	movzbl	9(%rdi), %eax
100005818: 85 c0                       	testl	%eax, %eax
10000581a: 74 0b                       	je	11 <__ZNK2Go11print_widthEv+0x17>
10000581c: 0f bd c8                    	bsrl	%eax, %ecx
10000581f: 83 f1 e0                    	xorl	$-32, %ecx
100005822: 83 c1 21                    	addl	$33, %ecx
100005825: eb 02                       	jmp	2 <__ZNK2Go11print_widthEv+0x19>
100005827: 31 c9                       	xorl	%ecx, %ecx
100005829: 48 8d 15 b0 41 00 00        	leaq	16816(%rip), %rdx
100005830: 0f b6 0c 11                 	movzbl	(%rcx,%rdx), %ecx
100005834: 89 c0                       	movl	%eax, %eax
100005836: 48 8d 15 f3 41 00 00        	leaq	16883(%rip), %rdx
10000583d: 48 39 04 ca                 	cmpq	%rax, (%rdx,%rcx,8)
100005841: 0f 96 c0                    	setbe	%al
100005844: 00 c8                       	addb	%cl, %al
100005846: 0f b6 c0                    	movzbl	%al, %eax
100005849: 0f b6 4f 08                 	movzbl	8(%rdi), %ecx
10000584d: 8d 44 88 02                 	leal	2(%rax,%rcx,4), %eax
100005851: 5d                          	popq	%rbp
100005852: c3                          	retq
100005853: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000585d: 0f 1f 00                    	nopl	(%rax)

0000000100005860 __ZNK2Go11print_namedERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_:
100005860: 55                          	pushq	%rbp
100005861: 48 89 e5                    	movq	%rsp, %rbp
100005864: 5d                          	popq	%rbp
100005865: e9 06 e3 ff ff              	jmp	-7418 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_>
10000586a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100005870 __ZNK2Go5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE:
100005870: 55                          	pushq	%rbp
100005871: 48 89 e5                    	movq	%rsp, %rbp
100005874: 53                          	pushq	%rbx
100005875: 48 83 ec 38                 	subq	$56, %rsp
100005879: 0f 57 c0                    	xorps	%xmm0, %xmm0
10000587c: 0f 29 45 c0                 	movaps	%xmm0, -64(%rbp)
100005880: 48 c7 45 d0 00 00 00 00     	movq	$0, -48(%rbp)
100005888: c6 45 c0 0a                 	movb	$10, -64(%rbp)
10000588c: c7 45 c1 62 6c 61 63        	movl	$1667329122, -63(%rbp)
100005893: 66 c7 45 c5 6b 00           	movw	$107, -59(%rbp)
100005899: 0f 29 45 e0                 	movaps	%xmm0, -32(%rbp)
10000589d: 48 c7 45 f0 00 00 00 00     	movq	$0, -16(%rbp)
1000058a5: c6 45 e0 0a                 	movb	$10, -32(%rbp)
1000058a9: c7 45 e1 77 68 69 74        	movl	$1953065079, -31(%rbp)
1000058b0: 66 c7 45 e5 65 00           	movw	$101, -27(%rbp)
1000058b6: 48 8d 55 c0                 	leaq	-64(%rbp), %rdx
1000058ba: 48 8d 4d e0                 	leaq	-32(%rbp), %rcx
1000058be: e8 ad e2 ff ff              	callq	-7507 <__ZNK2Go6_printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_12basic_stringIcS3_NS0_9allocatorIcEEEESB_>
1000058c3: f6 45 e0 01                 	testb	$1, -32(%rbp)
1000058c7: 75 0d                       	jne	13 <__ZNK2Go5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x66>
1000058c9: f6 45 c0 01                 	testb	$1, -64(%rbp)
1000058cd: 75 16                       	jne	22 <__ZNK2Go5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x75>
1000058cf: 48 83 c4 38                 	addq	$56, %rsp
1000058d3: 5b                          	popq	%rbx
1000058d4: 5d                          	popq	%rbp
1000058d5: c3                          	retq
1000058d6: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000058da: e8 8d 34 00 00              	callq	13453 <dyld_stub_binder+0x100008d6c>
1000058df: f6 45 c0 01                 	testb	$1, -64(%rbp)
1000058e3: 74 ea                       	je	-22 <__ZNK2Go5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x5f>
1000058e5: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
1000058e9: e8 7e 34 00 00              	callq	13438 <dyld_stub_binder+0x100008d6c>
1000058ee: 48 83 c4 38                 	addq	$56, %rsp
1000058f2: 5b                          	popq	%rbx
1000058f3: 5d                          	popq	%rbp
1000058f4: c3                          	retq
1000058f5: 48 89 c3                    	movq	%rax, %rbx
1000058f8: f6 45 e0 01                 	testb	$1, -32(%rbp)
1000058fc: 75 10                       	jne	16 <__ZNK2Go5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x9e>
1000058fe: f6 45 c0 01                 	testb	$1, -64(%rbp)
100005902: 75 19                       	jne	25 <__ZNK2Go5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0xad>
100005904: 48 89 df                    	movq	%rbx, %rdi
100005907: e8 d6 33 00 00              	callq	13270 <dyld_stub_binder+0x100008ce2>
10000590c: 0f 0b                       	ud2
10000590e: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005912: e8 55 34 00 00              	callq	13397 <dyld_stub_binder+0x100008d6c>
100005917: f6 45 c0 01                 	testb	$1, -64(%rbp)
10000591b: 74 e7                       	je	-25 <__ZNK2Go5printERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x94>
10000591d: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100005921: e8 46 34 00 00              	callq	13382 <dyld_stub_binder+0x100008d6c>
100005926: 48 89 df                    	movq	%rbx, %rdi
100005929: e8 b4 33 00 00              	callq	13236 <dyld_stub_binder+0x100008ce2>
10000592e: 0f 0b                       	ud2

0000000100005930 __ZNK2Go10print_libsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE:
100005930: 55                          	pushq	%rbp
100005931: 48 89 e5                    	movq	%rsp, %rbp
100005934: 41 56                       	pushq	%r14
100005936: 53                          	pushq	%rbx
100005937: 48 83 ec 40                 	subq	$64, %rsp
10000593b: 48 8b 05 46 47 00 00        	movq	18246(%rip), %rax
100005942: 48 8b 00                    	movq	(%rax), %rax
100005945: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100005949: 48 8d 05 88 4a 00 00        	leaq	19080(%rip), %rax
100005950: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100005954: 48 89 7d b8                 	movq	%rdi, -72(%rbp)
100005958: 48 8d 5d b0                 	leaq	-80(%rbp), %rbx
10000595c: 48 89 5d d0                 	movq	%rbx, -48(%rbp)
100005960: 48 89 da                    	movq	%rbx, %rdx
100005963: b9 03 00 00 00              	movl	$3, %ecx
100005968: e8 03 e7 ff ff              	callq	-6397 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi>
10000596d: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100005971: 48 39 fb                    	cmpq	%rdi, %rbx
100005974: 74 1d                       	je	29 <__ZNK2Go10print_libsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x63>
100005976: 48 85 ff                    	testq	%rdi, %rdi
100005979: 74 1e                       	je	30 <__ZNK2Go10print_libsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x69>
10000597b: 48 8b 07                    	movq	(%rdi), %rax
10000597e: ff 50 28                    	callq	*40(%rax)
100005981: 48 8b 05 00 47 00 00        	movq	18176(%rip), %rax
100005988: 48 8b 00                    	movq	(%rax), %rax
10000598b: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
10000598f: 74 18                       	je	24 <__ZNK2Go10print_libsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x79>
100005991: eb 1f                       	jmp	31 <__ZNK2Go10print_libsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x82>
100005993: 48 8b 07                    	movq	(%rdi), %rax
100005996: ff 50 20                    	callq	*32(%rax)
100005999: 48 8b 05 e8 46 00 00        	movq	18152(%rip), %rax
1000059a0: 48 8b 00                    	movq	(%rax), %rax
1000059a3: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
1000059a7: 75 09                       	jne	9 <__ZNK2Go10print_libsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x82>
1000059a9: 48 83 c4 40                 	addq	$64, %rsp
1000059ad: 5b                          	popq	%rbx
1000059ae: 41 5e                       	popq	%r14
1000059b0: 5d                          	popq	%rbp
1000059b1: c3                          	retq
1000059b2: e8 f1 33 00 00              	callq	13297 <dyld_stub_binder+0x100008da8>
1000059b7: 49 89 c6                    	movq	%rax, %r14
1000059ba: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
1000059be: 48 39 fb                    	cmpq	%rdi, %rbx
1000059c1: 75 10                       	jne	16 <__ZNK2Go10print_libsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0xa3>
1000059c3: 48 8b 07                    	movq	(%rdi), %rax
1000059c6: ff 50 20                    	callq	*32(%rax)
1000059c9: 4c 89 f7                    	movq	%r14, %rdi
1000059cc: e8 11 33 00 00              	callq	13073 <dyld_stub_binder+0x100008ce2>
1000059d1: 0f 0b                       	ud2
1000059d3: e8 b8 32 00 00              	callq	12984 <__ZNK2Go10print_libsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE.cold.1>
1000059d8: 4c 89 f7                    	movq	%r14, %rdi
1000059db: e8 02 33 00 00              	callq	13058 <dyld_stub_binder+0x100008ce2>
1000059e0: 0f 0b                       	ud2
1000059e2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000059ec: 0f 1f 40 00                 	nopl	(%rax)

00000001000059f0 __ZNK2Go13print_str_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE:
1000059f0: 55                          	pushq	%rbp
1000059f1: 48 89 e5                    	movq	%rsp, %rbp
1000059f4: 41 56                       	pushq	%r14
1000059f6: 53                          	pushq	%rbx
1000059f7: 48 83 ec 40                 	subq	$64, %rsp
1000059fb: 48 8b 05 86 46 00 00        	movq	18054(%rip), %rax
100005a02: 48 8b 00                    	movq	(%rax), %rax
100005a05: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100005a09: 48 8d 05 58 4a 00 00        	leaq	19032(%rip), %rax
100005a10: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100005a14: 48 89 7d b8                 	movq	%rdi, -72(%rbp)
100005a18: 48 8d 5d b0                 	leaq	-80(%rbp), %rbx
100005a1c: 48 89 5d d0                 	movq	%rbx, -48(%rbp)
100005a20: 48 89 da                    	movq	%rbx, %rdx
100005a23: b9 03 00 00 00              	movl	$3, %ecx
100005a28: e8 43 e6 ff ff              	callq	-6589 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi>
100005a2d: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100005a31: 48 39 fb                    	cmpq	%rdi, %rbx
100005a34: 74 1d                       	je	29 <__ZNK2Go13print_str_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x63>
100005a36: 48 85 ff                    	testq	%rdi, %rdi
100005a39: 74 1e                       	je	30 <__ZNK2Go13print_str_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x69>
100005a3b: 48 8b 07                    	movq	(%rdi), %rax
100005a3e: ff 50 28                    	callq	*40(%rax)
100005a41: 48 8b 05 40 46 00 00        	movq	17984(%rip), %rax
100005a48: 48 8b 00                    	movq	(%rax), %rax
100005a4b: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100005a4f: 74 18                       	je	24 <__ZNK2Go13print_str_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x79>
100005a51: eb 1f                       	jmp	31 <__ZNK2Go13print_str_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x82>
100005a53: 48 8b 07                    	movq	(%rdi), %rax
100005a56: ff 50 20                    	callq	*32(%rax)
100005a59: 48 8b 05 28 46 00 00        	movq	17960(%rip), %rax
100005a60: 48 8b 00                    	movq	(%rax), %rax
100005a63: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100005a67: 75 09                       	jne	9 <__ZNK2Go13print_str_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x82>
100005a69: 48 83 c4 40                 	addq	$64, %rsp
100005a6d: 5b                          	popq	%rbx
100005a6e: 41 5e                       	popq	%r14
100005a70: 5d                          	popq	%rbp
100005a71: c3                          	retq
100005a72: e8 31 33 00 00              	callq	13105 <dyld_stub_binder+0x100008da8>
100005a77: 49 89 c6                    	movq	%rax, %r14
100005a7a: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100005a7e: 48 39 fb                    	cmpq	%rdi, %rbx
100005a81: 75 10                       	jne	16 <__ZNK2Go13print_str_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0xa3>
100005a83: 48 8b 07                    	movq	(%rdi), %rax
100005a86: ff 50 20                    	callq	*32(%rax)
100005a89: 4c 89 f7                    	movq	%r14, %rdi
100005a8c: e8 51 32 00 00              	callq	12881 <dyld_stub_binder+0x100008ce2>
100005a91: 0f 0b                       	ud2
100005a93: e8 18 32 00 00              	callq	12824 <__ZNK2Go13print_str_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE.cold.1>
100005a98: 4c 89 f7                    	movq	%r14, %rdi
100005a9b: e8 42 32 00 00              	callq	12866 <dyld_stub_binder+0x100008ce2>
100005aa0: 0f 0b                       	ud2
100005aa2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005aac: 0f 1f 40 00                 	nopl	(%rax)

0000000100005ab0 __ZNK2Go14print_tile_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE:
100005ab0: 55                          	pushq	%rbp
100005ab1: 48 89 e5                    	movq	%rsp, %rbp
100005ab4: 41 56                       	pushq	%r14
100005ab6: 53                          	pushq	%rbx
100005ab7: 48 83 ec 40                 	subq	$64, %rsp
100005abb: 48 8b 05 c6 45 00 00        	movq	17862(%rip), %rax
100005ac2: 48 8b 00                    	movq	(%rax), %rax
100005ac5: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100005ac9: 48 8d 05 18 4a 00 00        	leaq	18968(%rip), %rax
100005ad0: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100005ad4: 48 89 7d b8                 	movq	%rdi, -72(%rbp)
100005ad8: 48 8d 5d b0                 	leaq	-80(%rbp), %rbx
100005adc: 48 89 5d d0                 	movq	%rbx, -48(%rbp)
100005ae0: 48 89 da                    	movq	%rbx, %rdx
100005ae3: b9 03 00 00 00              	movl	$3, %ecx
100005ae8: e8 83 e5 ff ff              	callq	-6781 <__ZNK2Go10_print_dbgERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS0_8functionIFPKciiEEEi>
100005aed: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100005af1: 48 39 fb                    	cmpq	%rdi, %rbx
100005af4: 74 1d                       	je	29 <__ZNK2Go14print_tile_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x63>
100005af6: 48 85 ff                    	testq	%rdi, %rdi
100005af9: 74 1e                       	je	30 <__ZNK2Go14print_tile_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x69>
100005afb: 48 8b 07                    	movq	(%rdi), %rax
100005afe: ff 50 28                    	callq	*40(%rax)
100005b01: 48 8b 05 80 45 00 00        	movq	17792(%rip), %rax
100005b08: 48 8b 00                    	movq	(%rax), %rax
100005b0b: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100005b0f: 74 18                       	je	24 <__ZNK2Go14print_tile_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x79>
100005b11: eb 1f                       	jmp	31 <__ZNK2Go14print_tile_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x82>
100005b13: 48 8b 07                    	movq	(%rdi), %rax
100005b16: ff 50 20                    	callq	*32(%rax)
100005b19: 48 8b 05 68 45 00 00        	movq	17768(%rip), %rax
100005b20: 48 8b 00                    	movq	(%rax), %rax
100005b23: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100005b27: 75 09                       	jne	9 <__ZNK2Go14print_tile_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0x82>
100005b29: 48 83 c4 40                 	addq	$64, %rsp
100005b2d: 5b                          	popq	%rbx
100005b2e: 41 5e                       	popq	%r14
100005b30: 5d                          	popq	%rbp
100005b31: c3                          	retq
100005b32: e8 71 32 00 00              	callq	12913 <dyld_stub_binder+0x100008da8>
100005b37: 49 89 c6                    	movq	%rax, %r14
100005b3a: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100005b3e: 48 39 fb                    	cmpq	%rdi, %rbx
100005b41: 75 10                       	jne	16 <__ZNK2Go14print_tile_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE+0xa3>
100005b43: 48 8b 07                    	movq	(%rdi), %rax
100005b46: ff 50 20                    	callq	*32(%rax)
100005b49: 4c 89 f7                    	movq	%r14, %rdi
100005b4c: e8 91 31 00 00              	callq	12689 <dyld_stub_binder+0x100008ce2>
100005b51: 0f 0b                       	ud2
100005b53: e8 78 31 00 00              	callq	12664 <__ZNK2Go14print_tile_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE.cold.1>
100005b58: 4c 89 f7                    	movq	%r14, %rdi
100005b5b: e8 82 31 00 00              	callq	12674 <dyld_stub_binder+0x100008ce2>
100005b60: 0f 0b                       	ud2
100005b62: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005b6c: 0f 1f 40 00                 	nopl	(%rax)

0000000100005b70 __ZNK2Go17consistency_checkEv:
100005b70: 55                          	pushq	%rbp
100005b71: 48 89 e5                    	movq	%rsp, %rbp
100005b74: 41 57                       	pushq	%r15
100005b76: 41 56                       	pushq	%r14
100005b78: 41 55                       	pushq	%r13
100005b7a: 41 54                       	pushq	%r12
100005b7c: 53                          	pushq	%rbx
100005b7d: 48 81 ec c8 00 00 00        	subq	$200, %rsp
100005b84: 4c 8b 5f 38                 	movq	56(%rdi), %r11
100005b88: 31 d2                       	xorl	%edx, %edx
100005b8a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100005b90: 0f b7 ca                    	movzwl	%dx, %ecx
100005b93: 41 8b 0c cb                 	movl	(%r11,%rcx,8), %ecx
100005b97: 83 e1 03                    	andl	$3, %ecx
100005b9a: 83 f9 03                    	cmpl	$3, %ecx
100005b9d: 0f 85 56 13 00 00           	jne	4950 <__ZNK2Go17consistency_checkEv+0x1389>
100005ba3: ff c2                       	incl	%edx
100005ba5: 0f b7 da                    	movzwl	%dx, %ebx
100005ba8: 0f b6 4f 08                 	movzbl	8(%rdi), %ecx
100005bac: 0f b6 f1                    	movzbl	%cl, %esi
100005baf: 8d 46 02                    	leal	2(%rsi), %eax
100005bb2: 39 d8                       	cmpl	%ebx, %eax
100005bb4: 77 da                       	ja	-38 <__ZNK2Go17consistency_checkEv+0x20>
100005bb6: 44 8b 47 18                 	movl	24(%rdi), %r8d
100005bba: 45 89 c2                    	movl	%r8d, %r10d
100005bbd: 41 29 f2                    	subl	%esi, %r10d
100005bc0: 41 39 da                    	cmpl	%ebx, %r10d
100005bc3: 76 52                       	jbe	82 <__ZNK2Go17consistency_checkEv+0xa7>
100005bc5: 0f b7 f6                    	movzwl	%si, %esi
100005bc8: 8d 5e 02                    	leal	2(%rsi), %ebx
100005bcb: ff c6                       	incl	%esi
100005bcd: 44 0f b7 ce                 	movzwl	%si, %r9d
100005bd1: 0f b7 f3                    	movzwl	%bx, %esi
100005bd4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005bde: 66 90                       	nop
100005be0: 0f b7 da                    	movzwl	%dx, %ebx
100005be3: 41 8b 1c db                 	movl	(%r11,%rbx,8), %ebx
100005be7: 83 e3 03                    	andl	$3, %ebx
100005bea: 83 fb 03                    	cmpl	$3, %ebx
100005bed: 0f 85 70 14 00 00           	jne	5232 <__ZNK2Go17consistency_checkEv+0x14f3>
100005bf3: 41 8d 1c 11                 	leal	(%r9,%rdx), %ebx
100005bf7: 0f b7 db                    	movzwl	%bx, %ebx
100005bfa: 41 8b 1c db                 	movl	(%r11,%rbx,8), %ebx
100005bfe: 83 e3 03                    	andl	$3, %ebx
100005c01: 83 fb 03                    	cmpl	$3, %ebx
100005c04: 0f 85 a9 14 00 00           	jne	5289 <__ZNK2Go17consistency_checkEv+0x1543>
100005c0a: 8d 1c 16                    	leal	(%rsi,%rdx), %ebx
100005c0d: 0f b7 db                    	movzwl	%bx, %ebx
100005c10: 01 f2                       	addl	%esi, %edx
100005c12: 41 39 da                    	cmpl	%ebx, %r10d
100005c15: 77 c9                       	ja	-55 <__ZNK2Go17consistency_checkEv+0x70>
100005c17: 41 39 d8                    	cmpl	%ebx, %r8d
100005c1a: 76 21                       	jbe	33 <__ZNK2Go17consistency_checkEv+0xcd>
100005c1c: 0f 1f 40 00                 	nopl	(%rax)
100005c20: 0f b7 f2                    	movzwl	%dx, %esi
100005c23: 41 8b 34 f3                 	movl	(%r11,%rsi,8), %esi
100005c27: 83 e6 03                    	andl	$3, %esi
100005c2a: 83 fe 03                    	cmpl	$3, %esi
100005c2d: 0f 85 cd 14 00 00           	jne	5325 <__ZNK2Go17consistency_checkEv+0x1590>
100005c33: ff c2                       	incl	%edx
100005c35: 0f b7 f2                    	movzwl	%dx, %esi
100005c38: 41 39 f0                    	cmpl	%esi, %r8d
100005c3b: 77 e3                       	ja	-29 <__ZNK2Go17consistency_checkEv+0xb0>
100005c3d: 48 8d 85 78 ff ff ff        	leaq	-136(%rbp), %rax
100005c44: 48 c7 45 80 00 00 00 00     	movq	$0, -128(%rbp)
100005c4c: 48 c7 85 78 ff ff ff 00 00 00 00    	movq	$0, -136(%rbp)
100005c57: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100005c5e: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
100005c62: 80 7f 09 00                 	cmpb	$0, 9(%rdi)
100005c66: 0f 84 1e 01 00 00           	je	286 <__ZNK2Go17consistency_checkEv+0x21a>
100005c6c: 45 31 f6                    	xorl	%r14d, %r14d
100005c6f: 89 c8                       	movl	%ecx, %eax
100005c71: 49 ff c6                    	incq	%r14
100005c74: 84 c0                       	testb	%al, %al
100005c76: 75 22                       	jne	34 <__ZNK2Go17consistency_checkEv+0x12a>
100005c78: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100005c80: 31 c0                       	xorl	%eax, %eax
100005c82: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100005c86: 0f b6 52 09                 	movzbl	9(%rdx), %edx
100005c8a: 49 39 d6                    	cmpq	%rdx, %r14
100005c8d: 0f 83 f7 00 00 00           	jae	247 <__ZNK2Go17consistency_checkEv+0x21a>
100005c93: 49 ff c6                    	incq	%r14
100005c96: 84 c0                       	testb	%al, %al
100005c98: 74 e6                       	je	-26 <__ZNK2Go17consistency_checkEv+0x110>
100005c9a: 45 31 ff                    	xorl	%r15d, %r15d
100005c9d: eb 25                       	jmp	37 <__ZNK2Go17consistency_checkEv+0x154>
100005c9f: 90                          	nop
100005ca0: 48 8b bd 78 ff ff ff        	movq	-136(%rbp), %rdi
100005ca7: 48 89 c6                    	movq	%rax, %rsi
100005caa: e8 11 2a 00 00              	callq	10769 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_>
100005caf: 48 ff 45 80                 	incq	-128(%rbp)
100005cb3: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100005cb7: 8a 48 08                    	movb	8(%rax), %cl
100005cba: 0f b6 d1                    	movzbl	%cl, %edx
100005cbd: 89 c8                       	movl	%ecx, %eax
100005cbf: 49 39 d7                    	cmpq	%rdx, %r15
100005cc2: 73 be                       	jae	-66 <__ZNK2Go17consistency_checkEv+0x112>
100005cc4: 0f b6 c0                    	movzbl	%al, %eax
100005cc7: 83 c0 02                    	addl	$2, %eax
100005cca: 44 89 f2                    	movl	%r14d, %edx
100005ccd: 0f af d0                    	imull	%eax, %edx
100005cd0: 49 ff c7                    	incq	%r15
100005cd3: 41 8d 04 17                 	leal	(%r15,%rdx), %eax
100005cd7: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100005cdb: 48 8b 52 38                 	movq	56(%rdx), %rdx
100005cdf: 44 0f b7 e0                 	movzwl	%ax, %r12d
100005ce3: 42 8b 1c e2                 	movl	(%rdx,%r12,8), %ebx
100005ce7: 89 d8                       	movl	%ebx, %eax
100005ce9: d1 e8                       	shrl	%eax
100005ceb: 31 d8                       	xorl	%ebx, %eax
100005ced: a8 01                       	testb	$1, %al
100005cef: 74 c9                       	je	-55 <__ZNK2Go17consistency_checkEv+0x14a>
100005cf1: bf 28 00 00 00              	movl	$40, %edi
100005cf6: e8 77 30 00 00              	callq	12407 <dyld_stub_binder+0x100008d72>
100005cfb: 48 c1 eb 02                 	shrq	$2, %rbx
100005cff: 49 c1 e4 20                 	shlq	$32, %r12
100005d03: 49 09 dc                    	orq	%rbx, %r12
100005d06: 4c 89 60 1c                 	movq	%r12, 28(%rax)
100005d0a: 48 8b 8d 78 ff ff ff        	movq	-136(%rbp), %rcx
100005d11: 48 85 c9                    	testq	%rcx, %rcx
100005d14: 75 26                       	jne	38 <__ZNK2Go17consistency_checkEv+0x1cc>
100005d16: 48 8d 95 78 ff ff ff        	leaq	-136(%rbp), %rdx
100005d1d: 48 89 d1                    	movq	%rdx, %rcx
100005d20: eb 30                       	jmp	48 <__ZNK2Go17consistency_checkEv+0x1e2>
100005d22: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005d2c: 0f 1f 40 00                 	nopl	(%rax)
100005d30: 48 8b 51 08                 	movq	8(%rcx), %rdx
100005d34: 48 85 d2                    	testq	%rdx, %rdx
100005d37: 74 15                       	je	21 <__ZNK2Go17consistency_checkEv+0x1de>
100005d39: 48 89 d1                    	movq	%rdx, %rcx
100005d3c: 39 59 1c                    	cmpl	%ebx, 28(%rcx)
100005d3f: 76 ef                       	jbe	-17 <__ZNK2Go17consistency_checkEv+0x1c0>
100005d41: 48 8b 11                    	movq	(%rcx), %rdx
100005d44: 48 85 d2                    	testq	%rdx, %rdx
100005d47: 75 f0                       	jne	-16 <__ZNK2Go17consistency_checkEv+0x1c9>
100005d49: 48 89 ca                    	movq	%rcx, %rdx
100005d4c: eb 04                       	jmp	4 <__ZNK2Go17consistency_checkEv+0x1e2>
100005d4e: 48 8d 51 08                 	leaq	8(%rcx), %rdx
100005d52: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100005d5a: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100005d61: 48 89 48 10                 	movq	%rcx, 16(%rax)
100005d65: 48 89 02                    	movq	%rax, (%rdx)
100005d68: 48 8b 8d 70 ff ff ff        	movq	-144(%rbp), %rcx
100005d6f: 48 8b 09                    	movq	(%rcx), %rcx
100005d72: 48 85 c9                    	testq	%rcx, %rcx
100005d75: 0f 84 25 ff ff ff           	je	-219 <__ZNK2Go17consistency_checkEv+0x130>
100005d7b: 48 89 8d 70 ff ff ff        	movq	%rcx, -144(%rbp)
100005d82: 48 8b 02                    	movq	(%rdx), %rax
100005d85: e9 16 ff ff ff              	jmp	-234 <__ZNK2Go17consistency_checkEv+0x130>
100005d8a: 4c 8d bd 58 ff ff ff        	leaq	-168(%rbp), %r15
100005d91: 48 c7 85 60 ff ff ff 00 00 00 00    	movq	$0, -160(%rbp)
100005d9c: 48 c7 85 58 ff ff ff 00 00 00 00    	movq	$0, -168(%rbp)
100005da7: 4c 89 bd 50 ff ff ff        	movq	%r15, -176(%rbp)
100005dae: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100005db2: 44 8b 60 20                 	movl	32(%rax), %r12d
100005db6: 45 31 f6                    	xorl	%r14d, %r14d
100005db9: 45 31 c9                    	xorl	%r9d, %r9d
100005dbc: 41 83 fc ff                 	cmpl	$-1, %r12d
100005dc0: 0f 84 f2 00 00 00           	je	242 <__ZNK2Go17consistency_checkEv+0x348>
100005dc6: 31 db                       	xorl	%ebx, %ebx
100005dc8: 48 85 db                    	testq	%rbx, %rbx
100005dcb: 74 43                       	je	67 <__ZNK2Go17consistency_checkEv+0x2a0>
100005dcd: 0f 1f 00                    	nopl	(%rax)
100005dd0: 4d 89 fd                    	movq	%r15, %r13
100005dd3: 44 39 63 1c                 	cmpl	%r12d, 28(%rbx)
100005dd7: 76 1b                       	jbe	27 <__ZNK2Go17consistency_checkEv+0x284>
100005dd9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100005de0: 48 8b 03                    	movq	(%rbx), %rax
100005de3: 49 89 dd                    	movq	%rbx, %r13
100005de6: 48 85 c0                    	testq	%rax, %rax
100005de9: 74 35                       	je	53 <__ZNK2Go17consistency_checkEv+0x2b0>
100005deb: 48 89 c3                    	movq	%rax, %rbx
100005dee: 44 39 63 1c                 	cmpl	%r12d, 28(%rbx)
100005df2: 77 ec                       	ja	-20 <__ZNK2Go17consistency_checkEv+0x270>
100005df4: 73 0d                       	jae	13 <__ZNK2Go17consistency_checkEv+0x293>
100005df6: 4c 8d 6b 08                 	leaq	8(%rbx), %r13
100005dfa: 48 8b 43 08                 	movq	8(%rbx), %rax
100005dfe: 48 85 c0                    	testq	%rax, %rax
100005e01: 75 e8                       	jne	-24 <__ZNK2Go17consistency_checkEv+0x27b>
100005e03: 49 83 7d 00 00              	cmpq	$0, (%r13)
100005e08: 75 7f                       	jne	127 <__ZNK2Go17consistency_checkEv+0x319>
100005e0a: eb 1e                       	jmp	30 <__ZNK2Go17consistency_checkEv+0x2ba>
100005e0c: 0f 1f 40 00                 	nopl	(%rax)
100005e10: 4c 89 fb                    	movq	%r15, %rbx
100005e13: 4d 89 fd                    	movq	%r15, %r13
100005e16: 49 83 7d 00 00              	cmpq	$0, (%r13)
100005e1b: 75 6c                       	jne	108 <__ZNK2Go17consistency_checkEv+0x319>
100005e1d: eb 0b                       	jmp	11 <__ZNK2Go17consistency_checkEv+0x2ba>
100005e1f: 90                          	nop
100005e20: 49 89 dd                    	movq	%rbx, %r13
100005e23: 49 83 7d 00 00              	cmpq	$0, (%r13)
100005e28: 75 5f                       	jne	95 <__ZNK2Go17consistency_checkEv+0x319>
100005e2a: bf 20 00 00 00              	movl	$32, %edi
100005e2f: e8 3e 2f 00 00              	callq	12094 <dyld_stub_binder+0x100008d72>
100005e34: 44 89 60 1c                 	movl	%r12d, 28(%rax)
100005e38: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100005e3f: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100005e47: 48 89 58 10                 	movq	%rbx, 16(%rax)
100005e4b: 49 89 45 00                 	movq	%rax, (%r13)
100005e4f: 48 8b 8d 50 ff ff ff        	movq	-176(%rbp), %rcx
100005e56: 48 8b 09                    	movq	(%rcx), %rcx
100005e59: 48 85 c9                    	testq	%rcx, %rcx
100005e5c: 74 0b                       	je	11 <__ZNK2Go17consistency_checkEv+0x2f9>
100005e5e: 48 89 8d 50 ff ff ff        	movq	%rcx, -176(%rbp)
100005e65: 49 8b 45 00                 	movq	(%r13), %rax
100005e69: 48 8b bd 58 ff ff ff        	movq	-168(%rbp), %rdi
100005e70: 48 89 c6                    	movq	%rax, %rsi
100005e73: e8 48 28 00 00              	callq	10312 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_>
100005e78: 4c 8b 8d 60 ff ff ff        	movq	-160(%rbp), %r9
100005e7f: 49 ff c1                    	incq	%r9
100005e82: 4c 89 8d 60 ff ff ff        	movq	%r9, -160(%rbp)
100005e89: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100005e8d: 48 8b 40 40                 	movq	64(%rax), %rax
100005e91: 44 89 e2                    	movl	%r12d, %edx
100005e94: 48 c1 e2 05                 	shlq	$5, %rdx
100005e98: 44 8b 64 10 14              	movl	20(%rax,%rdx), %r12d
100005e9d: 41 83 fc ff                 	cmpl	$-1, %r12d
100005ea1: 74 15                       	je	21 <__ZNK2Go17consistency_checkEv+0x348>
100005ea3: 48 8b 9d 58 ff ff ff        	movq	-168(%rbp), %rbx
100005eaa: 48 85 db                    	testq	%rbx, %rbx
100005ead: 0f 85 1d ff ff ff           	jne	-227 <__ZNK2Go17consistency_checkEv+0x260>
100005eb3: e9 58 ff ff ff              	jmp	-168 <__ZNK2Go17consistency_checkEv+0x2a0>
100005eb8: 4c 8b 95 70 ff ff ff        	movq	-144(%rbp), %r10
100005ebf: 48 8d 85 78 ff ff ff        	leaq	-136(%rbp), %rax
100005ec6: 49 39 c2                    	cmpq	%rax, %r10
100005ec9: 0f 84 dd 00 00 00           	je	221 <__ZNK2Go17consistency_checkEv+0x43c>
100005ecf: 4c 8b 85 58 ff ff ff        	movq	-168(%rbp), %r8
100005ed6: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100005edd: 4d 85 c0                    	testq	%r8, %r8
100005ee0: 0f 84 7d 00 00 00           	je	125 <__ZNK2Go17consistency_checkEv+0x3f3>
100005ee6: 45 31 f6                    	xorl	%r14d, %r14d
100005ee9: 4c 89 d6                    	movq	%r10, %rsi
100005eec: 0f 1f 40 00                 	nopl	(%rax)
100005ef0: 8b 5e 1c                    	movl	28(%rsi), %ebx
100005ef3: 4c 89 ff                    	movq	%r15, %rdi
100005ef6: 4c 89 c2                    	movq	%r8, %rdx
100005ef9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100005f00: 31 c9                       	xorl	%ecx, %ecx
100005f02: 39 5a 1c                    	cmpl	%ebx, 28(%rdx)
100005f05: 0f 92 c1                    	setb	%cl
100005f08: 48 0f 43 fa                 	cmovaeq	%rdx, %rdi
100005f0c: 48 8b 14 ca                 	movq	(%rdx,%rcx,8), %rdx
100005f10: 48 85 d2                    	testq	%rdx, %rdx
100005f13: 75 eb                       	jne	-21 <__ZNK2Go17consistency_checkEv+0x390>
100005f15: 4c 39 ff                    	cmpq	%r15, %rdi
100005f18: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0x3b3>
100005f1a: 3b 5f 1c                    	cmpl	28(%rdi), %ebx
100005f1d: 0f 83 a2 12 00 00           	jae	4770 <__ZNK2Go17consistency_checkEv+0x1655>
100005f23: 41 ff c6                    	incl	%r14d
100005f26: 48 85 c0                    	testq	%rax, %rax
100005f29: 0f 84 7d 00 00 00           	je	125 <__ZNK2Go17consistency_checkEv+0x43c>
100005f2f: 48 8d b5 78 ff ff ff        	leaq	-136(%rbp), %rsi
100005f36: 48 89 c2                    	movq	%rax, %rdx
100005f39: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100005f40: 31 c9                       	xorl	%ecx, %ecx
100005f42: 39 5a 1c                    	cmpl	%ebx, 28(%rdx)
100005f45: 48 0f 47 f2                 	cmovaq	%rdx, %rsi
100005f49: 0f 96 c1                    	setbe	%cl
100005f4c: 48 8b 14 ca                 	movq	(%rdx,%rcx,8), %rdx
100005f50: 48 85 d2                    	testq	%rdx, %rdx
100005f53: 75 eb                       	jne	-21 <__ZNK2Go17consistency_checkEv+0x3d0>
100005f55: 48 8d 8d 78 ff ff ff        	leaq	-136(%rbp), %rcx
100005f5c: 48 39 ce                    	cmpq	%rcx, %rsi
100005f5f: 75 8f                       	jne	-113 <__ZNK2Go17consistency_checkEv+0x380>
100005f61: eb 49                       	jmp	73 <__ZNK2Go17consistency_checkEv+0x43c>
100005f63: 48 85 c0                    	testq	%rax, %rax
100005f66: 74 3e                       	je	62 <__ZNK2Go17consistency_checkEv+0x436>
100005f68: 45 31 f6                    	xorl	%r14d, %r14d
100005f6b: 4c 89 d2                    	movq	%r10, %rdx
100005f6e: 66 90                       	nop
100005f70: 8b 72 1c                    	movl	28(%rdx), %esi
100005f73: 48 8d 95 78 ff ff ff        	leaq	-136(%rbp), %rdx
100005f7a: 48 89 c7                    	movq	%rax, %rdi
100005f7d: 0f 1f 00                    	nopl	(%rax)
100005f80: 31 db                       	xorl	%ebx, %ebx
100005f82: 39 77 1c                    	cmpl	%esi, 28(%rdi)
100005f85: 48 0f 47 d7                 	cmovaq	%rdi, %rdx
100005f89: 0f 96 c3                    	setbe	%bl
100005f8c: 48 8b 3c df                 	movq	(%rdi,%rbx,8), %rdi
100005f90: 48 85 ff                    	testq	%rdi, %rdi
100005f93: 75 eb                       	jne	-21 <__ZNK2Go17consistency_checkEv+0x410>
100005f95: 41 ff c6                    	incl	%r14d
100005f98: 48 8d 8d 78 ff ff ff        	leaq	-136(%rbp), %rcx
100005f9f: 48 39 ca                    	cmpq	%rcx, %rdx
100005fa2: 75 cc                       	jne	-52 <__ZNK2Go17consistency_checkEv+0x400>
100005fa4: eb 06                       	jmp	6 <__ZNK2Go17consistency_checkEv+0x43c>
100005fa6: 41 be 01 00 00 00           	movl	$1, %r14d
100005fac: 4c 89 95 48 ff ff ff        	movq	%r10, -184(%rbp)
100005fb3: 44 89 f0                    	movl	%r14d, %eax
100005fb6: 49 01 c1                    	addq	%rax, %r9
100005fb9: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100005fbd: 8b 41 1c                    	movl	28(%rcx), %eax
100005fc0: 49 39 c1                    	cmpq	%rax, %r9
100005fc3: 0f 85 7f 12 00 00           	jne	4735 <__ZNK2Go17consistency_checkEv+0x16d8>
100005fc9: 44 0f b6 41 09              	movzbl	9(%rcx), %r8d
100005fce: 45 85 c0                    	testl	%r8d, %r8d
100005fd1: 0f 84 74 01 00 00           	je	372 <__ZNK2Go17consistency_checkEv+0x5db>
100005fd7: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100005fdb: 44 0f b6 58 08              	movzbl	8(%rax), %r11d
100005fe0: 45 85 db                    	testl	%r11d, %r11d
100005fe3: 0f 84 62 01 00 00           	je	354 <__ZNK2Go17consistency_checkEv+0x5db>
100005fe9: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100005fed: 4c 8b 68 38                 	movq	56(%rax), %r13
100005ff1: 45 8d 4b 02                 	leal	2(%r11), %r9d
100005ff5: 47 8d 64 1b 05              	leal	5(%r11,%r11), %r12d
100005ffa: 45 31 ff                    	xorl	%r15d, %r15d
100005ffd: 45 89 de                    	movl	%r11d, %r14d
100006000: 45 31 d2                    	xorl	%r10d, %r10d
100006003: eb 20                       	jmp	32 <__ZNK2Go17consistency_checkEv+0x4b5>
100006005: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000600f: 90                          	nop
100006010: 41 ff c2                    	incl	%r10d
100006013: 45 01 ce                    	addl	%r9d, %r14d
100006016: 45 01 cc                    	addl	%r9d, %r12d
100006019: 45 01 cf                    	addl	%r9d, %r15d
10000601c: 45 39 c2                    	cmpl	%r8d, %r10d
10000601f: 0f 83 26 01 00 00           	jae	294 <__ZNK2Go17consistency_checkEv+0x5db>
100006025: 31 db                       	xorl	%ebx, %ebx
100006027: eb 0e                       	jmp	14 <__ZNK2Go17consistency_checkEv+0x4c7>
100006029: 0f 1f 80 00 00 00 00        	nopl	(%rax)
100006030: ff c3                       	incl	%ebx
100006032: 44 39 db                    	cmpl	%r11d, %ebx
100006035: 73 d9                       	jae	-39 <__ZNK2Go17consistency_checkEv+0x4a0>
100006037: 41 8d 44 1e 03              	leal	3(%r14,%rbx), %eax
10000603c: 0f b7 c0                    	movzwl	%ax, %eax
10000603f: 41 8b 4c c5 00              	movl	(%r13,%rax,8), %ecx
100006044: 89 cf                       	movl	%ecx, %edi
100006046: 83 e7 03                    	andl	$3, %edi
100006049: c1 e9 02                    	shrl	$2, %ecx
10000604c: 41 8d 44 1f 01              	leal	1(%r15,%rbx), %eax
100006051: 0f b7 c0                    	movzwl	%ax, %eax
100006054: 41 8b 74 c5 00              	movl	(%r13,%rax,8), %esi
100006059: 89 f0                       	movl	%esi, %eax
10000605b: d1 e8                       	shrl	%eax
10000605d: 31 f0                       	xorl	%esi, %eax
10000605f: a8 01                       	testb	$1, %al
100006061: 74 14                       	je	20 <__ZNK2Go17consistency_checkEv+0x507>
100006063: 89 f0                       	movl	%esi, %eax
100006065: 83 e0 03                    	andl	$3, %eax
100006068: 39 f8                       	cmpl	%edi, %eax
10000606a: 75 0b                       	jne	11 <__ZNK2Go17consistency_checkEv+0x507>
10000606c: c1 ee 02                    	shrl	$2, %esi
10000606f: 39 ce                       	cmpl	%ecx, %esi
100006071: 0f 85 37 0b 00 00           	jne	2871 <__ZNK2Go17consistency_checkEv+0x103e>
100006077: 41 8d 44 1e 02              	leal	2(%r14,%rbx), %eax
10000607c: 0f b7 c0                    	movzwl	%ax, %eax
10000607f: 41 8b 74 c5 00              	movl	(%r13,%rax,8), %esi
100006084: 89 f0                       	movl	%esi, %eax
100006086: d1 e8                       	shrl	%eax
100006088: 31 f0                       	xorl	%esi, %eax
10000608a: a8 01                       	testb	$1, %al
10000608c: 74 14                       	je	20 <__ZNK2Go17consistency_checkEv+0x532>
10000608e: 89 f0                       	movl	%esi, %eax
100006090: 83 e0 03                    	andl	$3, %eax
100006093: 39 f8                       	cmpl	%edi, %eax
100006095: 75 0b                       	jne	11 <__ZNK2Go17consistency_checkEv+0x532>
100006097: c1 ee 02                    	shrl	$2, %esi
10000609a: 39 ce                       	cmpl	%ecx, %esi
10000609c: 0f 85 5d 0b 00 00           	jne	2909 <__ZNK2Go17consistency_checkEv+0x108f>
1000060a2: 41 8d 44 1e 04              	leal	4(%r14,%rbx), %eax
1000060a7: 0f b7 c0                    	movzwl	%ax, %eax
1000060aa: 41 8b 74 c5 00              	movl	(%r13,%rax,8), %esi
1000060af: 89 f0                       	movl	%esi, %eax
1000060b1: d1 e8                       	shrl	%eax
1000060b3: 31 f0                       	xorl	%esi, %eax
1000060b5: a8 01                       	testb	$1, %al
1000060b7: 74 14                       	je	20 <__ZNK2Go17consistency_checkEv+0x55d>
1000060b9: 89 f0                       	movl	%esi, %eax
1000060bb: 83 e0 03                    	andl	$3, %eax
1000060be: 39 f8                       	cmpl	%edi, %eax
1000060c0: 75 0b                       	jne	11 <__ZNK2Go17consistency_checkEv+0x55d>
1000060c2: c1 ee 02                    	shrl	$2, %esi
1000060c5: 39 ce                       	cmpl	%ecx, %esi
1000060c7: 0f 85 83 0b 00 00           	jne	2947 <__ZNK2Go17consistency_checkEv+0x10e0>
1000060cd: 41 8d 34 1c                 	leal	(%r12,%rbx), %esi
1000060d1: 0f b7 c6                    	movzwl	%si, %eax
1000060d4: 41 8b 54 c5 00              	movl	(%r13,%rax,8), %edx
1000060d9: 89 d0                       	movl	%edx, %eax
1000060db: d1 e8                       	shrl	%eax
1000060dd: 31 d0                       	xorl	%edx, %eax
1000060df: a8 01                       	testb	$1, %al
1000060e1: 0f 84 49 ff ff ff           	je	-183 <__ZNK2Go17consistency_checkEv+0x4c0>
1000060e7: 89 d0                       	movl	%edx, %eax
1000060e9: 83 e0 03                    	andl	$3, %eax
1000060ec: 39 f8                       	cmpl	%edi, %eax
1000060ee: 0f 85 3c ff ff ff           	jne	-196 <__ZNK2Go17consistency_checkEv+0x4c0>
1000060f4: c1 ea 02                    	shrl	$2, %edx
1000060f7: 39 ca                       	cmpl	%ecx, %edx
1000060f9: 0f 84 31 ff ff ff           	je	-207 <__ZNK2Go17consistency_checkEv+0x4c0>
1000060ff: 0f b7 d6                    	movzwl	%si, %edx
100006102: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
100006106: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
10000610a: e8 21 b3 ff ff              	callq	-19679 <__ZNK2Go7idx_strEt>
10000610f: 41 8d 44 1e 03              	leal	3(%r14,%rbx), %eax
100006114: 44 8a 75 a0                 	movb	-96(%rbp), %r14b
100006118: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
10000611c: 0f b7 d0                    	movzwl	%ax, %edx
10000611f: 48 8d 7d b8                 	leaq	-72(%rbp), %rdi
100006123: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100006127: e8 04 b3 ff ff              	callq	-19708 <__ZNK2Go7idx_strEt>
10000612c: 41 f6 c6 01                 	testb	$1, %r14b
100006130: 48 8d 45 a1                 	leaq	-95(%rbp), %rax
100006134: 48 0f 44 d8                 	cmoveq	%rax, %rbx
100006138: f6 45 b8 01                 	testb	$1, -72(%rbp)
10000613c: 0f 84 41 0d 00 00           	je	3393 <__ZNK2Go17consistency_checkEv+0x1313>
100006142: 4c 8b 45 c8                 	movq	-56(%rbp), %r8
100006146: e9 3c 0d 00 00              	jmp	3388 <__ZNK2Go17consistency_checkEv+0x1317>
10000614b: 4c 8d b5 78 ff ff ff        	leaq	-136(%rbp), %r14
100006152: 4c 8b ad 48 ff ff ff        	movq	-184(%rbp), %r13
100006159: 4d 39 f5                    	cmpq	%r14, %r13
10000615c: 4c 8b 7d d0                 	movq	-48(%rbp), %r15
100006160: 75 31                       	jne	49 <__ZNK2Go17consistency_checkEv+0x623>
100006162: e9 bb 07 00 00              	jmp	1979 <__ZNK2Go17consistency_checkEv+0xdb2>
100006167: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
100006170: 48 8b 75 c0                 	movq	-64(%rbp), %rsi
100006174: 48 8d 7d b8                 	leaq	-72(%rbp), %rdi
100006178: e8 03 25 00 00              	callq	9475 <__ZNSt3__16__treeItNS_4lessItEENS_9allocatorItEEE7destroyEPNS_11__tree_nodeItPvEE>
10000617d: 48 8b 75 a8                 	movq	-88(%rbp), %rsi
100006181: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
100006185: e8 f6 24 00 00              	callq	9462 <__ZNSt3__16__treeItNS_4lessItEENS_9allocatorItEEE7destroyEPNS_11__tree_nodeItPvEE>
10000618a: 4d 39 f5                    	cmpq	%r14, %r13
10000618d: 0f 84 8f 07 00 00           	je	1935 <__ZNK2Go17consistency_checkEv+0xdb2>
100006193: 41 8b 55 1c                 	movl	28(%r13), %edx
100006197: 49 8b 47 40                 	movq	64(%r15), %rax
10000619b: 48 89 85 40 ff ff ff        	movq	%rax, -192(%rbp)
1000061a2: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
1000061a9: 48 85 c0                    	testq	%rax, %rax
1000061ac: 74 27                       	je	39 <__ZNK2Go17consistency_checkEv+0x665>
1000061ae: 4c 8d b5 78 ff ff ff        	leaq	-136(%rbp), %r14
1000061b5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000061bf: 90                          	nop
1000061c0: 31 c9                       	xorl	%ecx, %ecx
1000061c2: 39 50 1c                    	cmpl	%edx, 28(%rax)
1000061c5: 4c 0f 47 f0                 	cmovaq	%rax, %r14
1000061c9: 0f 96 c1                    	setbe	%cl
1000061cc: 48 8b 04 c8                 	movq	(%rax,%rcx,8), %rax
1000061d0: 48 85 c0                    	testq	%rax, %rax
1000061d3: 75 eb                       	jne	-21 <__ZNK2Go17consistency_checkEv+0x650>
1000061d5: 48 89 95 68 ff ff ff        	movq	%rdx, -152(%rbp)
1000061dc: 48 8d 45 a8                 	leaq	-88(%rbp), %rax
1000061e0: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
1000061e8: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
1000061ef: 48 89 45 a0                 	movq	%rax, -96(%rbp)
1000061f3: 31 c9                       	xorl	%ecx, %ecx
1000061f5: 4d 39 f5                    	cmpq	%r14, %r13
1000061f8: 0f 84 45 01 00 00           	je	325 <__ZNK2Go17consistency_checkEv+0x7d3>
1000061fe: 31 db                       	xorl	%ebx, %ebx
100006200: 45 0f b7 7d 20              	movzwl	32(%r13), %r15d
100006205: 4c 8d 65 a8                 	leaq	-88(%rbp), %r12
100006209: 48 85 db                    	testq	%rbx, %rbx
10000620c: 75 20                       	jne	32 <__ZNK2Go17consistency_checkEv+0x6be>
10000620e: 4c 89 e3                    	movq	%r12, %rbx
100006211: 49 83 3c 24 00              	cmpq	$0, (%r12)
100006216: 0f 85 91 00 00 00           	jne	145 <__ZNK2Go17consistency_checkEv+0x73d>
10000621c: eb 2d                       	jmp	45 <__ZNK2Go17consistency_checkEv+0x6db>
10000621e: 66 90                       	nop
100006220: 48 8b 03                    	movq	(%rbx), %rax
100006223: 49 89 dc                    	movq	%rbx, %r12
100006226: 48 85 c0                    	testq	%rax, %rax
100006229: 74 78                       	je	120 <__ZNK2Go17consistency_checkEv+0x733>
10000622b: 48 89 c3                    	movq	%rax, %rbx
10000622e: 66 44 39 7b 1a              	cmpw	%r15w, 26(%rbx)
100006233: 77 eb                       	ja	-21 <__ZNK2Go17consistency_checkEv+0x6b0>
100006235: 73 0d                       	jae	13 <__ZNK2Go17consistency_checkEv+0x6d4>
100006237: 4c 8d 63 08                 	leaq	8(%rbx), %r12
10000623b: 48 8b 43 08                 	movq	8(%rbx), %rax
10000623f: 48 85 c0                    	testq	%rax, %rax
100006242: 75 e7                       	jne	-25 <__ZNK2Go17consistency_checkEv+0x6bb>
100006244: 49 83 3c 24 00              	cmpq	$0, (%r12)
100006249: 75 62                       	jne	98 <__ZNK2Go17consistency_checkEv+0x73d>
10000624b: bf 20 00 00 00              	movl	$32, %edi
100006250: e8 1d 2b 00 00              	callq	11037 <dyld_stub_binder+0x100008d72>
100006255: 66 44 89 78 1a              	movw	%r15w, 26(%rax)
10000625a: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100006261: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100006269: 48 89 58 10                 	movq	%rbx, 16(%rax)
10000626d: 49 89 04 24                 	movq	%rax, (%r12)
100006271: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100006275: 48 8b 09                    	movq	(%rcx), %rcx
100006278: 48 85 c9                    	testq	%rcx, %rcx
10000627b: 74 08                       	je	8 <__ZNK2Go17consistency_checkEv+0x715>
10000627d: 48 89 4d a0                 	movq	%rcx, -96(%rbp)
100006281: 49 8b 04 24                 	movq	(%r12), %rax
100006285: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100006289: 48 89 c6                    	movq	%rax, %rsi
10000628c: e8 2f 24 00 00              	callq	9263 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_>
100006291: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100006295: 48 ff c1                    	incq	%rcx
100006298: 48 89 4d b0                 	movq	%rcx, -80(%rbp)
10000629c: 45 0f b7 7d 20              	movzwl	32(%r13), %r15d
1000062a1: eb 0a                       	jmp	10 <__ZNK2Go17consistency_checkEv+0x73d>
1000062a3: 49 89 dc                    	movq	%rbx, %r12
1000062a6: 49 83 3c 24 00              	cmpq	$0, (%r12)
1000062ab: 74 9e                       	je	-98 <__ZNK2Go17consistency_checkEv+0x6db>
1000062ad: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000062b1: 48 8b 40 38                 	movq	56(%rax), %rax
1000062b5: 41 0f b7 d7                 	movzwl	%r15w, %edx
1000062b9: 8b 04 d0                    	movl	(%rax,%rdx,8), %eax
1000062bc: c1 e8 02                    	shrl	$2, %eax
1000062bf: 3b 85 68 ff ff ff           	cmpl	-152(%rbp), %eax
1000062c5: 0f 85 89 07 00 00           	jne	1929 <__ZNK2Go17consistency_checkEv+0xee4>
1000062cb: 49 8b 55 08                 	movq	8(%r13), %rdx
1000062cf: 48 85 d2                    	testq	%rdx, %rdx
1000062d2: 74 19                       	je	25 <__ZNK2Go17consistency_checkEv+0x77d>
1000062d4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000062de: 66 90                       	nop
1000062e0: 48 89 d0                    	movq	%rdx, %rax
1000062e3: 48 8b 12                    	movq	(%rdx), %rdx
1000062e6: 48 85 d2                    	testq	%rdx, %rdx
1000062e9: 75 f5                       	jne	-11 <__ZNK2Go17consistency_checkEv+0x770>
1000062eb: eb 24                       	jmp	36 <__ZNK2Go17consistency_checkEv+0x7a1>
1000062ed: 49 8b 45 10                 	movq	16(%r13), %rax
1000062f1: 4c 39 28                    	cmpq	%r13, (%rax)
1000062f4: 74 1b                       	je	27 <__ZNK2Go17consistency_checkEv+0x7a1>
1000062f6: 49 83 c5 10                 	addq	$16, %r13
1000062fa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100006300: 49 8b 55 00                 	movq	(%r13), %rdx
100006304: 48 8b 42 10                 	movq	16(%rdx), %rax
100006308: 4c 8d 6a 10                 	leaq	16(%rdx), %r13
10000630c: 48 39 10                    	cmpq	%rdx, (%rax)
10000630f: 75 ef                       	jne	-17 <__ZNK2Go17consistency_checkEv+0x790>
100006311: 4c 39 f0                    	cmpq	%r14, %rax
100006314: 74 2a                       	je	42 <__ZNK2Go17consistency_checkEv+0x7d0>
100006316: 48 8b 5d a8                 	movq	-88(%rbp), %rbx
10000631a: 49 89 c5                    	movq	%rax, %r13
10000631d: 45 0f b7 7d 20              	movzwl	32(%r13), %r15d
100006322: 4c 8d 65 a8                 	leaq	-88(%rbp), %r12
100006326: 48 85 db                    	testq	%rbx, %rbx
100006329: 0f 85 ff fe ff ff           	jne	-257 <__ZNK2Go17consistency_checkEv+0x6be>
10000632f: e9 da fe ff ff              	jmp	-294 <__ZNK2Go17consistency_checkEv+0x69e>
100006334: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000633e: 66 90                       	nop
100006340: 4d 89 f5                    	movq	%r14, %r13
100006343: 48 8b b5 68 ff ff ff        	movq	-152(%rbp), %rsi
10000634a: 48 c1 e6 05                 	shlq	$5, %rsi
10000634e: 48 8b 95 40 ff ff ff        	movq	-192(%rbp), %rdx
100006355: 4c 63 44 32 14              	movslq	20(%rdx,%rsi), %r8
10000635a: 4c 39 c1                    	cmpq	%r8, %rcx
10000635d: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100006361: 0f 85 e2 0b 00 00           	jne	3042 <__ZNK2Go17consistency_checkEv+0x13d9>
100006367: 4c 89 ad 48 ff ff ff        	movq	%r13, -184(%rbp)
10000636e: 83 7c 32 18 00              	cmpl	$0, 24(%rdx,%rsi)
100006373: 0f 8e 93 0c 00 00           	jle	3219 <__ZNK2Go17consistency_checkEv+0x149c>
100006379: 48 8d 4d c0                 	leaq	-64(%rbp), %rcx
10000637d: 48 c7 41 08 00 00 00 00     	movq	$0, 8(%rcx)
100006385: 48 c7 01 00 00 00 00        	movq	$0, (%rcx)
10000638c: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100006390: 48 8b 40 40                 	movq	64(%rax), %rax
100006394: 44 0f b7 6c 30 1c           	movzwl	28(%rax,%rsi), %r13d
10000639a: 4c 8b 75 a0                 	movq	-96(%rbp), %r14
10000639e: 48 8b 45 a8                 	movq	-88(%rbp), %rax
1000063a2: 48 89 c2                    	movq	%rax, %rdx
1000063a5: 48 8d 4d a8                 	leaq	-88(%rbp), %rcx
1000063a9: 48 85 c0                    	testq	%rax, %rax
1000063ac: 74 12                       	je	18 <__ZNK2Go17consistency_checkEv+0x850>
1000063ae: 66 90                       	nop
1000063b0: 48 89 d1                    	movq	%rdx, %rcx
1000063b3: 48 8b 52 08                 	movq	8(%rdx), %rdx
1000063b7: 48 85 d2                    	testq	%rdx, %rdx
1000063ba: 75 f4                       	jne	-12 <__ZNK2Go17consistency_checkEv+0x840>
1000063bc: eb 0e                       	jmp	14 <__ZNK2Go17consistency_checkEv+0x85c>
1000063be: 66 90                       	nop
1000063c0: 48 89 ca                    	movq	%rcx, %rdx
1000063c3: 48 8b 49 10                 	movq	16(%rcx), %rcx
1000063c7: 48 39 11                    	cmpq	%rdx, (%rcx)
1000063ca: 74 f4                       	je	-12 <__ZNK2Go17consistency_checkEv+0x850>
1000063cc: 48 85 c0                    	testq	%rax, %rax
1000063cf: 0f 84 85 05 00 00           	je	1413 <__ZNK2Go17consistency_checkEv+0xdea>
1000063d5: 48 8b 95 40 ff ff ff        	movq	-192(%rbp), %rdx
1000063dc: 48 89 b5 38 ff ff ff        	movq	%rsi, -200(%rbp)
1000063e3: 48 8d 54 32 18              	leaq	24(%rdx,%rsi), %rdx
1000063e8: 48 89 95 28 ff ff ff        	movq	%rdx, -216(%rbp)
1000063ef: 0f b7 59 1a                 	movzwl	26(%rcx), %ebx
1000063f3: 31 c9                       	xorl	%ecx, %ecx
1000063f5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000063ff: 90                          	nop
100006400: 48 8d 55 a8                 	leaq	-88(%rbp), %rdx
100006404: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000640e: 66 90                       	nop
100006410: 31 f6                       	xorl	%esi, %esi
100006412: 66 44 39 68 1a              	cmpw	%r13w, 26(%rax)
100006417: 40 0f 92 c6                 	setb	%sil
10000641b: 48 0f 43 d0                 	cmovaeq	%rax, %rdx
10000641f: 48 8b 04 f0                 	movq	(%rax,%rsi,8), %rax
100006423: 48 85 c0                    	testq	%rax, %rax
100006426: 75 e8                       	jne	-24 <__ZNK2Go17consistency_checkEv+0x8a0>
100006428: 48 8d 45 a8                 	leaq	-88(%rbp), %rax
10000642c: 48 39 c2                    	cmpq	%rax, %rdx
10000642f: 0f 84 25 05 00 00           	je	1317 <__ZNK2Go17consistency_checkEv+0xdea>
100006435: 66 44 39 6a 1a              	cmpw	%r13w, 26(%rdx)
10000643a: 0f 87 1a 05 00 00           	ja	1306 <__ZNK2Go17consistency_checkEv+0xdea>
100006440: 41 0f b7 d5                 	movzwl	%r13w, %edx
100006444: 66 45 3b 6e 1a              	cmpw	26(%r14), %r13w
100006449: 0f 85 95 05 00 00           	jne	1429 <__ZNK2Go17consistency_checkEv+0xe74>
10000644f: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100006453: 48 8b 46 38                 	movq	56(%rsi), %rax
100006457: 48 89 95 30 ff ff ff        	movq	%rdx, -208(%rbp)
10000645e: 66 39 5c d0 06              	cmpw	%bx, 6(%rax,%rdx,8)
100006463: 0f 85 9b 05 00 00           	jne	1435 <__ZNK2Go17consistency_checkEv+0xe94>
100006469: 0f b6 56 08                 	movzbl	8(%rsi), %edx
10000646d: 45 89 ef                    	movl	%r13d, %r15d
100006470: 41 29 d7                    	subl	%edx, %r15d
100006473: 41 83 c7 fe                 	addl	$-2, %r15d
100006477: 41 0f b7 d7                 	movzwl	%r15w, %edx
10000647b: f6 04 d0 03                 	testb	$3, (%rax,%rdx,8)
10000647f: 75 52                       	jne	82 <__ZNK2Go17consistency_checkEv+0x963>
100006481: 48 8b 5d c0                 	movq	-64(%rbp), %rbx
100006485: 4c 8d 65 c0                 	leaq	-64(%rbp), %r12
100006489: 48 85 db                    	testq	%rbx, %rbx
10000648c: 75 24                       	jne	36 <__ZNK2Go17consistency_checkEv+0x942>
10000648e: 4c 89 e3                    	movq	%r12, %rbx
100006491: 49 83 3c 24 00              	cmpq	$0, (%r12)
100006496: 75 3b                       	jne	59 <__ZNK2Go17consistency_checkEv+0x963>
100006498: e9 24 01 00 00              	jmp	292 <__ZNK2Go17consistency_checkEv+0xa51>
10000649d: 0f 1f 00                    	nopl	(%rax)
1000064a0: 48 8b 13                    	movq	(%rbx), %rdx
1000064a3: 49 89 dc                    	movq	%rbx, %r12
1000064a6: 48 85 d2                    	testq	%rdx, %rdx
1000064a9: 0f 84 04 01 00 00           	je	260 <__ZNK2Go17consistency_checkEv+0xa43>
1000064af: 48 89 d3                    	movq	%rdx, %rbx
1000064b2: 66 44 39 7b 1a              	cmpw	%r15w, 26(%rbx)
1000064b7: 77 e7                       	ja	-25 <__ZNK2Go17consistency_checkEv+0x930>
1000064b9: 73 0d                       	jae	13 <__ZNK2Go17consistency_checkEv+0x958>
1000064bb: 4c 8d 63 08                 	leaq	8(%rbx), %r12
1000064bf: 48 8b 53 08                 	movq	8(%rbx), %rdx
1000064c3: 48 85 d2                    	testq	%rdx, %rdx
1000064c6: 75 e7                       	jne	-25 <__ZNK2Go17consistency_checkEv+0x93f>
1000064c8: 49 83 3c 24 00              	cmpq	$0, (%r12)
1000064cd: 0f 84 ee 00 00 00           	je	238 <__ZNK2Go17consistency_checkEv+0xa51>
1000064d3: 45 8d 7d ff                 	leal	-1(%r13), %r15d
1000064d7: 41 0f b7 d7                 	movzwl	%r15w, %edx
1000064db: f6 04 d0 03                 	testb	$3, (%rax,%rdx,8)
1000064df: 0f 85 5b 01 00 00           	jne	347 <__ZNK2Go17consistency_checkEv+0xad0>
1000064e5: 48 8b 5d c0                 	movq	-64(%rbp), %rbx
1000064e9: 4c 8d 65 c0                 	leaq	-64(%rbp), %r12
1000064ed: 48 85 db                    	testq	%rbx, %rbx
1000064f0: 75 30                       	jne	48 <__ZNK2Go17consistency_checkEv+0x9b2>
1000064f2: 4c 89 e3                    	movq	%r12, %rbx
1000064f5: 49 83 3c 24 00              	cmpq	$0, (%r12)
1000064fa: 0f 85 40 01 00 00           	jne	320 <__ZNK2Go17consistency_checkEv+0xad0>
100006500: eb 41                       	jmp	65 <__ZNK2Go17consistency_checkEv+0x9d3>
100006502: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000650c: 0f 1f 40 00                 	nopl	(%rax)
100006510: 48 8b 13                    	movq	(%rbx), %rdx
100006513: 49 89 dc                    	movq	%rbx, %r12
100006516: 48 85 d2                    	testq	%rdx, %rdx
100006519: 0f 84 0e 01 00 00           	je	270 <__ZNK2Go17consistency_checkEv+0xabd>
10000651f: 48 89 d3                    	movq	%rdx, %rbx
100006522: 66 44 39 7b 1a              	cmpw	%r15w, 26(%rbx)
100006527: 77 e7                       	ja	-25 <__ZNK2Go17consistency_checkEv+0x9a0>
100006529: 73 0d                       	jae	13 <__ZNK2Go17consistency_checkEv+0x9c8>
10000652b: 4c 8d 63 08                 	leaq	8(%rbx), %r12
10000652f: 48 8b 53 08                 	movq	8(%rbx), %rdx
100006533: 48 85 d2                    	testq	%rdx, %rdx
100006536: 75 e7                       	jne	-25 <__ZNK2Go17consistency_checkEv+0x9af>
100006538: 49 83 3c 24 00              	cmpq	$0, (%r12)
10000653d: 0f 85 fd 00 00 00           	jne	253 <__ZNK2Go17consistency_checkEv+0xad0>
100006543: bf 20 00 00 00              	movl	$32, %edi
100006548: e8 25 28 00 00              	callq	10277 <dyld_stub_binder+0x100008d72>
10000654d: 66 44 89 78 1a              	movw	%r15w, 26(%rax)
100006552: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100006559: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100006561: 48 89 58 10                 	movq	%rbx, 16(%rax)
100006565: 49 89 04 24                 	movq	%rax, (%r12)
100006569: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
10000656d: 48 8b 09                    	movq	(%rcx), %rcx
100006570: 48 85 c9                    	testq	%rcx, %rcx
100006573: 74 08                       	je	8 <__ZNK2Go17consistency_checkEv+0xa0d>
100006575: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100006579: 49 8b 04 24                 	movq	(%r12), %rax
10000657d: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100006581: 48 89 c6                    	movq	%rax, %rsi
100006584: e8 37 21 00 00              	callq	8503 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_>
100006589: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
10000658d: 48 ff c1                    	incq	%rcx
100006590: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100006594: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100006598: 48 8b 40 38                 	movq	56(%rax), %rax
10000659c: 45 8d 7d 01                 	leal	1(%r13), %r15d
1000065a0: 41 0f b7 d7                 	movzwl	%r15w, %edx
1000065a4: f6 04 d0 03                 	testb	$3, (%rax,%rdx,8)
1000065a8: 0f 85 52 01 00 00           	jne	338 <__ZNK2Go17consistency_checkEv+0xb90>
1000065ae: e9 9f 00 00 00              	jmp	159 <__ZNK2Go17consistency_checkEv+0xae2>
1000065b3: 49 89 dc                    	movq	%rbx, %r12
1000065b6: 49 83 3c 24 00              	cmpq	$0, (%r12)
1000065bb: 0f 85 12 ff ff ff           	jne	-238 <__ZNK2Go17consistency_checkEv+0x963>
1000065c1: bf 20 00 00 00              	movl	$32, %edi
1000065c6: e8 a7 27 00 00              	callq	10151 <dyld_stub_binder+0x100008d72>
1000065cb: 66 44 89 78 1a              	movw	%r15w, 26(%rax)
1000065d0: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
1000065d7: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
1000065df: 48 89 58 10                 	movq	%rbx, 16(%rax)
1000065e3: 49 89 04 24                 	movq	%rax, (%r12)
1000065e7: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
1000065eb: 48 8b 09                    	movq	(%rcx), %rcx
1000065ee: 48 85 c9                    	testq	%rcx, %rcx
1000065f1: 74 08                       	je	8 <__ZNK2Go17consistency_checkEv+0xa8b>
1000065f3: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000065f7: 49 8b 04 24                 	movq	(%r12), %rax
1000065fb: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
1000065ff: 48 89 c6                    	movq	%rax, %rsi
100006602: e8 b9 20 00 00              	callq	8377 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_>
100006607: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
10000660b: 48 ff c1                    	incq	%rcx
10000660e: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100006612: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100006616: 48 8b 40 38                 	movq	56(%rax), %rax
10000661a: 45 8d 7d ff                 	leal	-1(%r13), %r15d
10000661e: 41 0f b7 d7                 	movzwl	%r15w, %edx
100006622: f6 04 d0 03                 	testb	$3, (%rax,%rdx,8)
100006626: 75 18                       	jne	24 <__ZNK2Go17consistency_checkEv+0xad0>
100006628: e9 b8 fe ff ff              	jmp	-328 <__ZNK2Go17consistency_checkEv+0x975>
10000662d: 49 89 dc                    	movq	%rbx, %r12
100006630: 49 83 3c 24 00              	cmpq	$0, (%r12)
100006635: 0f 84 08 ff ff ff           	je	-248 <__ZNK2Go17consistency_checkEv+0x9d3>
10000663b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100006640: 45 8d 7d 01                 	leal	1(%r13), %r15d
100006644: 41 0f b7 d7                 	movzwl	%r15w, %edx
100006648: f6 04 d0 03                 	testb	$3, (%rax,%rdx,8)
10000664c: 0f 85 ae 00 00 00           	jne	174 <__ZNK2Go17consistency_checkEv+0xb90>
100006652: 48 8b 5d c0                 	movq	-64(%rbp), %rbx
100006656: 4c 8d 65 c0                 	leaq	-64(%rbp), %r12
10000665a: 48 85 db                    	testq	%rbx, %rbx
10000665d: 75 1f                       	jne	31 <__ZNK2Go17consistency_checkEv+0xb0e>
10000665f: 4c 89 e3                    	movq	%r12, %rbx
100006662: 49 83 3c 24 00              	cmpq	$0, (%r12)
100006667: 0f 85 93 00 00 00           	jne	147 <__ZNK2Go17consistency_checkEv+0xb90>
10000666d: eb 2c                       	jmp	44 <__ZNK2Go17consistency_checkEv+0xb2b>
10000666f: 90                          	nop
100006670: 48 8b 13                    	movq	(%rbx), %rdx
100006673: 49 89 dc                    	movq	%rbx, %r12
100006676: 48 85 d2                    	testq	%rdx, %rdx
100006679: 74 7b                       	je	123 <__ZNK2Go17consistency_checkEv+0xb86>
10000667b: 48 89 d3                    	movq	%rdx, %rbx
10000667e: 66 44 39 7b 1a              	cmpw	%r15w, 26(%rbx)
100006683: 77 eb                       	ja	-21 <__ZNK2Go17consistency_checkEv+0xb00>
100006685: 73 0d                       	jae	13 <__ZNK2Go17consistency_checkEv+0xb24>
100006687: 4c 8d 63 08                 	leaq	8(%rbx), %r12
10000668b: 48 8b 53 08                 	movq	8(%rbx), %rdx
10000668f: 48 85 d2                    	testq	%rdx, %rdx
100006692: 75 e7                       	jne	-25 <__ZNK2Go17consistency_checkEv+0xb0b>
100006694: 49 83 3c 24 00              	cmpq	$0, (%r12)
100006699: 75 65                       	jne	101 <__ZNK2Go17consistency_checkEv+0xb90>
10000669b: bf 20 00 00 00              	movl	$32, %edi
1000066a0: e8 cd 26 00 00              	callq	9933 <dyld_stub_binder+0x100008d72>
1000066a5: 66 44 89 78 1a              	movw	%r15w, 26(%rax)
1000066aa: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
1000066b1: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
1000066b9: 48 89 58 10                 	movq	%rbx, 16(%rax)
1000066bd: 49 89 04 24                 	movq	%rax, (%r12)
1000066c1: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
1000066c5: 48 8b 09                    	movq	(%rcx), %rcx
1000066c8: 48 85 c9                    	testq	%rcx, %rcx
1000066cb: 74 08                       	je	8 <__ZNK2Go17consistency_checkEv+0xb65>
1000066cd: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000066d1: 49 8b 04 24                 	movq	(%r12), %rax
1000066d5: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
1000066d9: 48 89 c6                    	movq	%rax, %rsi
1000066dc: e8 df 1f 00 00              	callq	8159 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_>
1000066e1: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000066e5: 48 ff c1                    	incq	%rcx
1000066e8: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
1000066ec: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000066f0: 48 8b 40 38                 	movq	56(%rax), %rax
1000066f4: eb 0a                       	jmp	10 <__ZNK2Go17consistency_checkEv+0xb90>
1000066f6: 49 89 dc                    	movq	%rbx, %r12
1000066f9: 49 83 3c 24 00              	cmpq	$0, (%r12)
1000066fe: 74 9b                       	je	-101 <__ZNK2Go17consistency_checkEv+0xb2b>
100006700: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100006704: 0f b6 52 08                 	movzbl	8(%rdx), %edx
100006708: 45 8d 7c 15 02              	leal	2(%r13,%rdx), %r15d
10000670d: 41 0f b7 d7                 	movzwl	%r15w, %edx
100006711: f6 04 d0 03                 	testb	$3, (%rax,%rdx,8)
100006715: 75 44                       	jne	68 <__ZNK2Go17consistency_checkEv+0xbeb>
100006717: 48 8b 5d c0                 	movq	-64(%rbp), %rbx
10000671b: 4c 8d 65 c0                 	leaq	-64(%rbp), %r12
10000671f: 48 85 db                    	testq	%rbx, %rbx
100006722: 75 1a                       	jne	26 <__ZNK2Go17consistency_checkEv+0xbce>
100006724: 4c 89 e3                    	movq	%r12, %rbx
100006727: 49 83 3c 24 00              	cmpq	$0, (%r12)
10000672c: 75 2d                       	jne	45 <__ZNK2Go17consistency_checkEv+0xbeb>
10000672e: eb 5a                       	jmp	90 <__ZNK2Go17consistency_checkEv+0xc1a>
100006730: 48 8b 03                    	movq	(%rbx), %rax
100006733: 49 89 dc                    	movq	%rbx, %r12
100006736: 48 85 c0                    	testq	%rax, %rax
100006739: 74 45                       	je	69 <__ZNK2Go17consistency_checkEv+0xc10>
10000673b: 48 89 c3                    	movq	%rax, %rbx
10000673e: 66 44 39 7b 1a              	cmpw	%r15w, 26(%rbx)
100006743: 77 eb                       	ja	-21 <__ZNK2Go17consistency_checkEv+0xbc0>
100006745: 73 0d                       	jae	13 <__ZNK2Go17consistency_checkEv+0xbe4>
100006747: 4c 8d 63 08                 	leaq	8(%rbx), %r12
10000674b: 48 8b 43 08                 	movq	8(%rbx), %rax
10000674f: 48 85 c0                    	testq	%rax, %rax
100006752: 75 e7                       	jne	-25 <__ZNK2Go17consistency_checkEv+0xbcb>
100006754: 49 83 3c 24 00              	cmpq	$0, (%r12)
100006759: 74 2f                       	je	47 <__ZNK2Go17consistency_checkEv+0xc1a>
10000675b: 49 8b 46 08                 	movq	8(%r14), %rax
10000675f: 48 85 c0                    	testq	%rax, %rax
100006762: 0f 84 88 00 00 00           	je	136 <__ZNK2Go17consistency_checkEv+0xc80>
100006768: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)
100006770: 48 89 c2                    	movq	%rax, %rdx
100006773: 48 8b 00                    	movq	(%rax), %rax
100006776: 48 85 c0                    	testq	%rax, %rax
100006779: 75 f5                       	jne	-11 <__ZNK2Go17consistency_checkEv+0xc00>
10000677b: e9 90 00 00 00              	jmp	144 <__ZNK2Go17consistency_checkEv+0xca0>
100006780: 49 89 dc                    	movq	%rbx, %r12
100006783: 49 83 3c 24 00              	cmpq	$0, (%r12)
100006788: 75 d1                       	jne	-47 <__ZNK2Go17consistency_checkEv+0xbeb>
10000678a: bf 20 00 00 00              	movl	$32, %edi
10000678f: e8 de 25 00 00              	callq	9694 <dyld_stub_binder+0x100008d72>
100006794: 66 44 89 78 1a              	movw	%r15w, 26(%rax)
100006799: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
1000067a0: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
1000067a8: 48 89 58 10                 	movq	%rbx, 16(%rax)
1000067ac: 49 89 04 24                 	movq	%rax, (%r12)
1000067b0: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
1000067b4: 48 8b 09                    	movq	(%rcx), %rcx
1000067b7: 48 85 c9                    	testq	%rcx, %rcx
1000067ba: 74 08                       	je	8 <__ZNK2Go17consistency_checkEv+0xc54>
1000067bc: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000067c0: 49 8b 04 24                 	movq	(%r12), %rax
1000067c4: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
1000067c8: 48 89 c6                    	movq	%rax, %rsi
1000067cb: e8 f0 1e 00 00              	callq	7920 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_>
1000067d0: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000067d4: 48 ff c1                    	incq	%rcx
1000067d7: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
1000067db: 49 8b 46 08                 	movq	8(%r14), %rax
1000067df: 48 85 c0                    	testq	%rax, %rax
1000067e2: 75 8c                       	jne	-116 <__ZNK2Go17consistency_checkEv+0xc00>
1000067e4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000067ee: 66 90                       	nop
1000067f0: 49 8b 56 10                 	movq	16(%r14), %rdx
1000067f4: 4c 39 32                    	cmpq	%r14, (%rdx)
1000067f7: 74 17                       	je	23 <__ZNK2Go17consistency_checkEv+0xca0>
1000067f9: 49 83 c6 10                 	addq	$16, %r14
1000067fd: 0f 1f 00                    	nopl	(%rax)
100006800: 49 8b 06                    	movq	(%r14), %rax
100006803: 48 8b 50 10                 	movq	16(%rax), %rdx
100006807: 4c 8d 70 10                 	leaq	16(%rax), %r14
10000680b: 48 39 02                    	cmpq	%rax, (%rdx)
10000680e: 75 f0                       	jne	-16 <__ZNK2Go17consistency_checkEv+0xc90>
100006810: 4c 8b 7d d0                 	movq	-48(%rbp), %r15
100006814: 49 8b 47 38                 	movq	56(%r15), %rax
100006818: 49 8b 7f 40                 	movq	64(%r15), %rdi
10000681c: 48 8b b5 30 ff ff ff        	movq	-208(%rbp), %rsi
100006823: 0f b7 74 f0 04              	movzwl	4(%rax,%rsi,8), %esi
100006828: 48 8b 85 38 ff ff ff        	movq	-200(%rbp), %rax
10000682f: 66 3b 74 07 1c              	cmpw	28(%rdi,%rax), %si
100006834: 74 2a                       	je	42 <__ZNK2Go17consistency_checkEv+0xcf0>
100006836: 48 8b 45 a8                 	movq	-88(%rbp), %rax
10000683a: 44 89 eb                    	movl	%r13d, %ebx
10000683d: 41 89 f5                    	movl	%esi, %r13d
100006840: 49 89 d6                    	movq	%rdx, %r14
100006843: 48 85 c0                    	testq	%rax, %rax
100006846: 0f 85 b4 fb ff ff           	jne	-1100 <__ZNK2Go17consistency_checkEv+0x890>
10000684c: e9 0c 01 00 00              	jmp	268 <__ZNK2Go17consistency_checkEv+0xded>
100006851: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000685b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100006860: 48 8d 45 a8                 	leaq	-88(%rbp), %rax
100006864: 48 39 c2                    	cmpq	%rax, %rdx
100006867: 0f 85 2c 07 00 00           	jne	1836 <__ZNK2Go17consistency_checkEv+0x1429>
10000686d: 48 8b 85 28 ff ff ff        	movq	-216(%rbp), %rax
100006874: 4c 63 00                    	movslq	(%rax), %r8
100006877: 4c 39 c1                    	cmpq	%r8, %rcx
10000687a: 4c 8d b5 78 ff ff ff        	leaq	-136(%rbp), %r14
100006881: 4c 8b ad 48 ff ff ff        	movq	-184(%rbp), %r13
100006888: 0f 85 2e 07 00 00           	jne	1838 <__ZNK2Go17consistency_checkEv+0x144c>
10000688e: 41 83 f8 08                 	cmpl	$8, %r8d
100006892: 0f 8f d8 f8 ff ff           	jg	-1832 <__ZNK2Go17consistency_checkEv+0x600>
100006898: 45 85 c0                    	testl	%r8d, %r8d
10000689b: 0f 84 cf f8 ff ff           	je	-1841 <__ZNK2Go17consistency_checkEv+0x600>
1000068a1: 48 8b 55 b8                 	movq	-72(%rbp), %rdx
1000068a5: 31 c0                       	xorl	%eax, %eax
1000068a7: eb 16                       	jmp	22 <__ZNK2Go17consistency_checkEv+0xd4f>
1000068a9: 0f 1f 80 00 00 00 00        	nopl	(%rax)
1000068b0: 48 ff c0                    	incq	%rax
1000068b3: 48 89 f2                    	movq	%rsi, %rdx
1000068b6: 48 39 c8                    	cmpq	%rcx, %rax
1000068b9: 0f 83 b1 f8 ff ff           	jae	-1871 <__ZNK2Go17consistency_checkEv+0x600>
1000068bf: 0f b7 72 1a                 	movzwl	26(%rdx), %esi
1000068c3: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
1000068ca: 48 8b 9d 38 ff ff ff        	movq	-200(%rbp), %rbx
1000068d1: 48 01 df                    	addq	%rbx, %rdi
1000068d4: 66 3b 34 47                 	cmpw	(%rdi,%rax,2), %si
1000068d8: 0f 85 96 01 00 00           	jne	406 <__ZNK2Go17consistency_checkEv+0xf04>
1000068de: 48 8b 7a 08                 	movq	8(%rdx), %rdi
1000068e2: 48 85 ff                    	testq	%rdi, %rdi
1000068e5: 74 19                       	je	25 <__ZNK2Go17consistency_checkEv+0xd90>
1000068e7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)
1000068f0: 48 89 fe                    	movq	%rdi, %rsi
1000068f3: 48 8b 3f                    	movq	(%rdi), %rdi
1000068f6: 48 85 ff                    	testq	%rdi, %rdi
1000068f9: 75 f5                       	jne	-11 <__ZNK2Go17consistency_checkEv+0xd80>
1000068fb: eb b3                       	jmp	-77 <__ZNK2Go17consistency_checkEv+0xd40>
1000068fd: 0f 1f 00                    	nopl	(%rax)
100006900: 48 8b 72 10                 	movq	16(%rdx), %rsi
100006904: 48 39 16                    	cmpq	%rdx, (%rsi)
100006907: 74 a7                       	je	-89 <__ZNK2Go17consistency_checkEv+0xd40>
100006909: 48 83 c2 10                 	addq	$16, %rdx
10000690d: 0f 1f 00                    	nopl	(%rax)
100006910: 48 8b 3a                    	movq	(%rdx), %rdi
100006913: 48 8b 77 10                 	movq	16(%rdi), %rsi
100006917: 48 8d 57 10                 	leaq	16(%rdi), %rdx
10000691b: 48 39 3e                    	cmpq	%rdi, (%rsi)
10000691e: 75 f0                       	jne	-16 <__ZNK2Go17consistency_checkEv+0xda0>
100006920: eb 8e                       	jmp	-114 <__ZNK2Go17consistency_checkEv+0xd40>
100006922: 48 8b b5 58 ff ff ff        	movq	-168(%rbp), %rsi
100006929: 48 8d bd 50 ff ff ff        	leaq	-176(%rbp), %rdi
100006930: e8 4b 1d 00 00              	callq	7499 <__ZNSt3__16__treeItNS_4lessItEENS_9allocatorItEEE7destroyEPNS_11__tree_nodeItPvEE>
100006935: 48 8b b5 78 ff ff ff        	movq	-136(%rbp), %rsi
10000693c: 48 8d bd 70 ff ff ff        	leaq	-144(%rbp), %rdi
100006943: e8 38 1d 00 00              	callq	7480 <__ZNSt3__16__treeItNS_4lessItEENS_9allocatorItEEE7destroyEPNS_11__tree_nodeItPvEE>
100006948: 48 81 c4 c8 00 00 00        	addq	$200, %rsp
10000694f: 5b                          	popq	%rbx
100006950: 41 5c                       	popq	%r12
100006952: 41 5d                       	popq	%r13
100006954: 41 5e                       	popq	%r14
100006956: 41 5f                       	popq	%r15
100006958: 5d                          	popq	%rbp
100006959: c3                          	retq
10000695a: 44 89 ee                    	movl	%r13d, %esi
10000695d: 0f b7 d6                    	movzwl	%si, %edx
100006960: 48 8d 7d 88                 	leaq	-120(%rbp), %rdi
100006964: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100006968: e8 c3 aa ff ff              	callq	-21821 <__ZNK2Go7idx_strEt>
10000696d: f6 45 88 01                 	testb	$1, -120(%rbp)
100006971: 74 06                       	je	6 <__ZNK2Go17consistency_checkEv+0xe09>
100006973: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100006977: eb 04                       	jmp	4 <__ZNK2Go17consistency_checkEv+0xe0d>
100006979: 48 8d 4d 89                 	leaq	-119(%rbp), %rcx
10000697d: 48 8d 3d 2c 4c 00 00        	leaq	19500(%rip), %rdi
100006984: 48 8d 15 2d 2d 00 00        	leaq	11565(%rip), %rdx
10000698b: be 00 04 00 00              	movl	$1024, %esi
100006990: 4c 8b 85 68 ff ff ff        	movq	-152(%rbp), %r8
100006997: 31 c0                       	xorl	%eax, %eax
100006999: e8 40 24 00 00              	callq	9280 <dyld_stub_binder+0x100008dde>
10000699e: f6 45 88 01                 	testb	$1, -120(%rbp)
1000069a2: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0xe3d>
1000069a4: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
1000069a8: e8 bf 23 00 00              	callq	9151 <dyld_stub_binder+0x100008d6c>
1000069ad: bf 10 00 00 00              	movl	$16, %edi
1000069b2: e8 c7 23 00 00              	callq	9159 <dyld_stub_binder+0x100008d7e>
1000069b7: 49 89 c6                    	movq	%rax, %r14
1000069ba: 48 8d 35 ef 4b 00 00        	leaq	19439(%rip), %rsi
1000069c1: 48 89 c7                    	movq	%rax, %rdi
1000069c4: e8 31 23 00 00              	callq	9009 <dyld_stub_binder+0x100008cfa>
1000069c9: 48 8b 35 78 36 00 00        	movq	13944(%rip), %rsi
1000069d0: 48 8b 15 31 36 00 00        	movq	13873(%rip), %rdx
1000069d7: 4c 89 f7                    	movq	%r14, %rdi
1000069da: e8 bd 23 00 00              	callq	9149 <dyld_stub_binder+0x100008d9c>
1000069df: e9 31 0a 00 00              	jmp	2609 <__ZNK2Go17consistency_checkEv+0x18a5>
1000069e4: 48 8d 7d 88                 	leaq	-120(%rbp), %rdi
1000069e8: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
1000069ec: e8 3f aa ff ff              	callq	-21953 <__ZNK2Go7idx_strEt>
1000069f1: f6 45 88 01                 	testb	$1, -120(%rbp)
1000069f5: 0f 84 d0 00 00 00           	je	208 <__ZNK2Go17consistency_checkEv+0xf5b>
1000069fb: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
1000069ff: e9 cb 00 00 00              	jmp	203 <__ZNK2Go17consistency_checkEv+0xf5f>
100006a04: 48 8d 7d 88                 	leaq	-120(%rbp), %rdi
100006a08: 48 8b 95 30 ff ff ff        	movq	-208(%rbp), %rdx
100006a0f: e8 1c aa ff ff              	callq	-21988 <__ZNK2Go7idx_strEt>
100006a14: 44 8a 7d 88                 	movb	-120(%rbp), %r15b
100006a18: 4c 8b 75 98                 	movq	-104(%rbp), %r14
100006a1c: 0f b7 d3                    	movzwl	%bx, %edx
100006a1f: 48 8d bd 10 ff ff ff        	leaq	-240(%rbp), %rdi
100006a26: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100006a2a: e8 01 aa ff ff              	callq	-22015 <__ZNK2Go7idx_strEt>
100006a2f: 41 f6 c7 01                 	testb	$1, %r15b
100006a33: 48 8d 45 89                 	leaq	-119(%rbp), %rax
100006a37: 4c 0f 44 f0                 	cmoveq	%rax, %r14
100006a3b: f6 85 10 ff ff ff 01        	testb	$1, -240(%rbp)
100006a42: 0f 84 e7 00 00 00           	je	231 <__ZNK2Go17consistency_checkEv+0xfbf>
100006a48: 4c 8b 85 20 ff ff ff        	movq	-224(%rbp), %r8
100006a4f: e9 e2 00 00 00              	jmp	226 <__ZNK2Go17consistency_checkEv+0xfc6>
100006a54: 48 8d 7d b8                 	leaq	-72(%rbp), %rdi
100006a58: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100006a5c: e8 cf a9 ff ff              	callq	-22065 <__ZNK2Go7idx_strEt>
100006a61: f6 45 b8 01                 	testb	$1, -72(%rbp)
100006a65: 0f 84 36 02 00 00           	je	566 <__ZNK2Go17consistency_checkEv+0x1131>
100006a6b: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100006a6f: e9 31 02 00 00              	jmp	561 <__ZNK2Go17consistency_checkEv+0x1135>
100006a74: 48 8d 1d 35 4b 00 00        	leaq	19253(%rip), %rbx
100006a7b: 48 8d 15 df 2c 00 00        	leaq	11487(%rip), %rdx
100006a82: be 00 04 00 00              	movl	$1024, %esi
100006a87: 48 89 df                    	movq	%rbx, %rdi
100006a8a: 48 8b 8d 68 ff ff ff        	movq	-152(%rbp), %rcx
100006a91: 31 c0                       	xorl	%eax, %eax
100006a93: e8 46 23 00 00              	callq	9030 <dyld_stub_binder+0x100008dde>
100006a98: bf 10 00 00 00              	movl	$16, %edi
100006a9d: e8 dc 22 00 00              	callq	8924 <dyld_stub_binder+0x100008d7e>
100006aa2: 49 89 c6                    	movq	%rax, %r14
100006aa5: 48 89 c7                    	movq	%rax, %rdi
100006aa8: 48 89 de                    	movq	%rbx, %rsi
100006aab: e8 4a 22 00 00              	callq	8778 <dyld_stub_binder+0x100008cfa>
100006ab0: 48 8b 35 91 35 00 00        	movq	13713(%rip), %rsi
100006ab7: 48 8b 15 4a 35 00 00        	movq	13642(%rip), %rdx
100006abe: 4c 89 f7                    	movq	%r14, %rdi
100006ac1: e8 d6 22 00 00              	callq	8918 <dyld_stub_binder+0x100008d9c>
100006ac6: e9 4a 09 00 00              	jmp	2378 <__ZNK2Go17consistency_checkEv+0x18a5>
100006acb: 48 8d 4d 89                 	leaq	-119(%rbp), %rcx
100006acf: 48 8d 3d da 4a 00 00        	leaq	19162(%rip), %rdi
100006ad6: 48 8d 15 07 2c 00 00        	leaq	11271(%rip), %rdx
100006add: be 00 04 00 00              	movl	$1024, %esi
100006ae2: 31 c0                       	xorl	%eax, %eax
100006ae4: e8 f5 22 00 00              	callq	8949 <dyld_stub_binder+0x100008dde>
100006ae9: f6 45 88 01                 	testb	$1, -120(%rbp)
100006aed: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0xf88>
100006aef: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100006af3: e8 74 22 00 00              	callq	8820 <dyld_stub_binder+0x100008d6c>
100006af8: bf 10 00 00 00              	movl	$16, %edi
100006afd: e8 7c 22 00 00              	callq	8828 <dyld_stub_binder+0x100008d7e>
100006b02: 49 89 c6                    	movq	%rax, %r14
100006b05: 48 8d 35 a4 4a 00 00        	leaq	19108(%rip), %rsi
100006b0c: 48 89 c7                    	movq	%rax, %rdi
100006b0f: e8 e6 21 00 00              	callq	8678 <dyld_stub_binder+0x100008cfa>
100006b14: 48 8b 35 2d 35 00 00        	movq	13613(%rip), %rsi
100006b1b: 48 8b 15 e6 34 00 00        	movq	13542(%rip), %rdx
100006b22: 4c 89 f7                    	movq	%r14, %rdi
100006b25: e8 72 22 00 00              	callq	8818 <dyld_stub_binder+0x100008d9c>
100006b2a: e9 e6 08 00 00              	jmp	2278 <__ZNK2Go17consistency_checkEv+0x18a5>
100006b2f: 4c 8d 85 11 ff ff ff        	leaq	-239(%rbp), %r8
100006b36: 48 8d 3d 73 4a 00 00        	leaq	19059(%rip), %rdi
100006b3d: 48 8d 15 c7 2b 00 00        	leaq	11207(%rip), %rdx
100006b44: be 00 04 00 00              	movl	$1024, %esi
100006b49: 4c 89 f1                    	movq	%r14, %rcx
100006b4c: 31 c0                       	xorl	%eax, %eax
100006b4e: e8 8b 22 00 00              	callq	8843 <dyld_stub_binder+0x100008dde>
100006b53: f6 85 10 ff ff ff 01        	testb	$1, -240(%rbp)
100006b5a: 74 0c                       	je	12 <__ZNK2Go17consistency_checkEv+0xff8>
100006b5c: 48 8b bd 20 ff ff ff        	movq	-224(%rbp), %rdi
100006b63: e8 04 22 00 00              	callq	8708 <dyld_stub_binder+0x100008d6c>
100006b68: f6 45 88 01                 	testb	$1, -120(%rbp)
100006b6c: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0x1007>
100006b6e: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100006b72: e8 f5 21 00 00              	callq	8693 <dyld_stub_binder+0x100008d6c>
100006b77: bf 10 00 00 00              	movl	$16, %edi
100006b7c: e8 fd 21 00 00              	callq	8701 <dyld_stub_binder+0x100008d7e>
100006b81: 49 89 c6                    	movq	%rax, %r14
100006b84: 48 8d 35 25 4a 00 00        	leaq	18981(%rip), %rsi
100006b8b: 48 89 c7                    	movq	%rax, %rdi
100006b8e: e8 67 21 00 00              	callq	8551 <dyld_stub_binder+0x100008cfa>
100006b93: 48 8b 35 ae 34 00 00        	movq	13486(%rip), %rsi
100006b9a: 48 8b 15 67 34 00 00        	movq	13415(%rip), %rdx
100006ba1: 4c 89 f7                    	movq	%r14, %rdi
100006ba4: e8 f3 21 00 00              	callq	8691 <dyld_stub_binder+0x100008d9c>
100006ba9: e9 67 08 00 00              	jmp	2151 <__ZNK2Go17consistency_checkEv+0x18a5>
100006bae: 41 8d 44 1f 01              	leal	1(%r15,%rbx), %eax
100006bb3: 0f b7 d0                    	movzwl	%ax, %edx
100006bb6: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
100006bba: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100006bbe: e8 6d a8 ff ff              	callq	-22419 <__ZNK2Go7idx_strEt>
100006bc3: 41 8d 44 1e 03              	leal	3(%r14,%rbx), %eax
100006bc8: 44 8a 75 a0                 	movb	-96(%rbp), %r14b
100006bcc: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
100006bd0: 0f b7 d0                    	movzwl	%ax, %edx
100006bd3: 48 8d 7d b8                 	leaq	-72(%rbp), %rdi
100006bd7: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100006bdb: e8 50 a8 ff ff              	callq	-22448 <__ZNK2Go7idx_strEt>
100006be0: 41 f6 c6 01                 	testb	$1, %r14b
100006be4: 48 8d 45 a1                 	leaq	-95(%rbp), %rax
100006be8: 48 0f 44 d8                 	cmoveq	%rax, %rbx
100006bec: f6 45 b8 01                 	testb	$1, -72(%rbp)
100006bf0: 0f 84 2b 01 00 00           	je	299 <__ZNK2Go17consistency_checkEv+0x11b1>
100006bf6: 4c 8b 45 c8                 	movq	-56(%rbp), %r8
100006bfa: e9 26 01 00 00              	jmp	294 <__ZNK2Go17consistency_checkEv+0x11b5>
100006bff: 41 8d 44 1e 02              	leal	2(%r14,%rbx), %eax
100006c04: 0f b7 d0                    	movzwl	%ax, %edx
100006c07: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
100006c0b: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100006c0f: e8 1c a8 ff ff              	callq	-22500 <__ZNK2Go7idx_strEt>
100006c14: 41 8d 44 1e 03              	leal	3(%r14,%rbx), %eax
100006c19: 44 8a 75 a0                 	movb	-96(%rbp), %r14b
100006c1d: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
100006c21: 0f b7 d0                    	movzwl	%ax, %edx
100006c24: 48 8d 7d b8                 	leaq	-72(%rbp), %rdi
100006c28: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100006c2c: e8 ff a7 ff ff              	callq	-22529 <__ZNK2Go7idx_strEt>
100006c31: 41 f6 c6 01                 	testb	$1, %r14b
100006c35: 48 8d 45 a1                 	leaq	-95(%rbp), %rax
100006c39: 48 0f 44 d8                 	cmoveq	%rax, %rbx
100006c3d: f6 45 b8 01                 	testb	$1, -72(%rbp)
100006c41: 0f 84 50 01 00 00           	je	336 <__ZNK2Go17consistency_checkEv+0x1227>
100006c47: 4c 8b 45 c8                 	movq	-56(%rbp), %r8
100006c4b: e9 4b 01 00 00              	jmp	331 <__ZNK2Go17consistency_checkEv+0x122b>
100006c50: 41 8d 44 1e 04              	leal	4(%r14,%rbx), %eax
100006c55: 0f b7 d0                    	movzwl	%ax, %edx
100006c58: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
100006c5c: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100006c60: e8 cb a7 ff ff              	callq	-22581 <__ZNK2Go7idx_strEt>
100006c65: 41 8d 44 1e 03              	leal	3(%r14,%rbx), %eax
100006c6a: 44 8a 75 a0                 	movb	-96(%rbp), %r14b
100006c6e: 48 8b 5d b0                 	movq	-80(%rbp), %rbx
100006c72: 0f b7 d0                    	movzwl	%ax, %edx
100006c75: 48 8d 7d b8                 	leaq	-72(%rbp), %rdi
100006c79: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100006c7d: e8 ae a7 ff ff              	callq	-22610 <__ZNK2Go7idx_strEt>
100006c82: 41 f6 c6 01                 	testb	$1, %r14b
100006c86: 48 8d 45 a1                 	leaq	-95(%rbp), %rax
100006c8a: 48 0f 44 d8                 	cmoveq	%rax, %rbx
100006c8e: f6 45 b8 01                 	testb	$1, -72(%rbp)
100006c92: 0f 84 75 01 00 00           	je	373 <__ZNK2Go17consistency_checkEv+0x129d>
100006c98: 4c 8b 45 c8                 	movq	-56(%rbp), %r8
100006c9c: e9 70 01 00 00              	jmp	368 <__ZNK2Go17consistency_checkEv+0x12a1>
100006ca1: 48 8d 4d b9                 	leaq	-71(%rbp), %rcx
100006ca5: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100006ca9: 48 8b 40 38                 	movq	56(%rax), %rax
100006cad: 41 0f b7 55 20              	movzwl	32(%r13), %edx
100006cb2: 44 8b 0c d0                 	movl	(%rax,%rdx,8), %r9d
100006cb6: 41 c1 e9 02                 	shrl	$2, %r9d
100006cba: 48 8d 3d ef 48 00 00        	leaq	18671(%rip), %rdi
100006cc1: 48 8d 15 64 29 00 00        	leaq	10596(%rip), %rdx
100006cc8: be 00 04 00 00              	movl	$1024, %esi
100006ccd: 4c 8b 85 68 ff ff ff        	movq	-152(%rbp), %r8
100006cd4: 31 c0                       	xorl	%eax, %eax
100006cd6: e8 03 21 00 00              	callq	8451 <dyld_stub_binder+0x100008dde>
100006cdb: f6 45 b8 01                 	testb	$1, -72(%rbp)
100006cdf: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0x117a>
100006ce1: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
100006ce5: e8 82 20 00 00              	callq	8322 <dyld_stub_binder+0x100008d6c>
100006cea: bf 10 00 00 00              	movl	$16, %edi
100006cef: e8 8a 20 00 00              	callq	8330 <dyld_stub_binder+0x100008d7e>
100006cf4: 49 89 c6                    	movq	%rax, %r14
100006cf7: 48 8d 35 b2 48 00 00        	leaq	18610(%rip), %rsi
100006cfe: 48 89 c7                    	movq	%rax, %rdi
100006d01: e8 f4 1f 00 00              	callq	8180 <dyld_stub_binder+0x100008cfa>
100006d06: 48 8b 35 3b 33 00 00        	movq	13115(%rip), %rsi
100006d0d: 48 8b 15 f4 32 00 00        	movq	13044(%rip), %rdx
100006d14: 4c 89 f7                    	movq	%r14, %rdi
100006d17: e8 80 20 00 00              	callq	8320 <dyld_stub_binder+0x100008d9c>
100006d1c: e9 f4 06 00 00              	jmp	1780 <__ZNK2Go17consistency_checkEv+0x18a5>
100006d21: 4c 8d 45 b9                 	leaq	-71(%rbp), %r8
100006d25: 48 8d 3d 84 48 00 00        	leaq	18564(%rip), %rdi
100006d2c: 48 8d 15 c3 28 00 00        	leaq	10435(%rip), %rdx
100006d33: be 00 04 00 00              	movl	$1024, %esi
100006d38: 48 89 d9                    	movq	%rbx, %rcx
100006d3b: 31 c0                       	xorl	%eax, %eax
100006d3d: e8 9c 20 00 00              	callq	8348 <dyld_stub_binder+0x100008dde>
100006d42: f6 45 b8 01                 	testb	$1, -72(%rbp)
100006d46: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0x11e1>
100006d48: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
100006d4c: e8 1b 20 00 00              	callq	8219 <dyld_stub_binder+0x100008d6c>
100006d51: f6 45 a0 01                 	testb	$1, -96(%rbp)
100006d55: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0x11f0>
100006d57: 48 8b 7d b0                 	movq	-80(%rbp), %rdi
100006d5b: e8 0c 20 00 00              	callq	8204 <dyld_stub_binder+0x100008d6c>
100006d60: bf 10 00 00 00              	movl	$16, %edi
100006d65: e8 14 20 00 00              	callq	8212 <dyld_stub_binder+0x100008d7e>
100006d6a: 49 89 c6                    	movq	%rax, %r14
100006d6d: 48 8d 35 3c 48 00 00        	leaq	18492(%rip), %rsi
100006d74: 48 89 c7                    	movq	%rax, %rdi
100006d77: e8 7e 1f 00 00              	callq	8062 <dyld_stub_binder+0x100008cfa>
100006d7c: 48 8b 35 c5 32 00 00        	movq	12997(%rip), %rsi
100006d83: 48 8b 15 7e 32 00 00        	movq	12926(%rip), %rdx
100006d8a: 4c 89 f7                    	movq	%r14, %rdi
100006d8d: e8 0a 20 00 00              	callq	8202 <dyld_stub_binder+0x100008d9c>
100006d92: e9 7e 06 00 00              	jmp	1662 <__ZNK2Go17consistency_checkEv+0x18a5>
100006d97: 4c 8d 45 b9                 	leaq	-71(%rbp), %r8
100006d9b: 48 8d 3d 0e 48 00 00        	leaq	18446(%rip), %rdi
100006da2: 48 8d 15 4d 28 00 00        	leaq	10317(%rip), %rdx
100006da9: be 00 04 00 00              	movl	$1024, %esi
100006dae: 48 89 d9                    	movq	%rbx, %rcx
100006db1: 31 c0                       	xorl	%eax, %eax
100006db3: e8 26 20 00 00              	callq	8230 <dyld_stub_binder+0x100008dde>
100006db8: f6 45 b8 01                 	testb	$1, -72(%rbp)
100006dbc: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0x1257>
100006dbe: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
100006dc2: e8 a5 1f 00 00              	callq	8101 <dyld_stub_binder+0x100008d6c>
100006dc7: f6 45 a0 01                 	testb	$1, -96(%rbp)
100006dcb: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0x1266>
100006dcd: 48 8b 7d b0                 	movq	-80(%rbp), %rdi
100006dd1: e8 96 1f 00 00              	callq	8086 <dyld_stub_binder+0x100008d6c>
100006dd6: bf 10 00 00 00              	movl	$16, %edi
100006ddb: e8 9e 1f 00 00              	callq	8094 <dyld_stub_binder+0x100008d7e>
100006de0: 49 89 c6                    	movq	%rax, %r14
100006de3: 48 8d 35 c6 47 00 00        	leaq	18374(%rip), %rsi
100006dea: 48 89 c7                    	movq	%rax, %rdi
100006ded: e8 08 1f 00 00              	callq	7944 <dyld_stub_binder+0x100008cfa>
100006df2: 48 8b 35 4f 32 00 00        	movq	12879(%rip), %rsi
100006df9: 48 8b 15 08 32 00 00        	movq	12808(%rip), %rdx
100006e00: 4c 89 f7                    	movq	%r14, %rdi
100006e03: e8 94 1f 00 00              	callq	8084 <dyld_stub_binder+0x100008d9c>
100006e08: e9 08 06 00 00              	jmp	1544 <__ZNK2Go17consistency_checkEv+0x18a5>
100006e0d: 4c 8d 45 b9                 	leaq	-71(%rbp), %r8
100006e11: 48 8d 3d 98 47 00 00        	leaq	18328(%rip), %rdi
100006e18: 48 8d 15 d7 27 00 00        	leaq	10199(%rip), %rdx
100006e1f: be 00 04 00 00              	movl	$1024, %esi
100006e24: 48 89 d9                    	movq	%rbx, %rcx
100006e27: 31 c0                       	xorl	%eax, %eax
100006e29: e8 b0 1f 00 00              	callq	8112 <dyld_stub_binder+0x100008dde>
100006e2e: f6 45 b8 01                 	testb	$1, -72(%rbp)
100006e32: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0x12cd>
100006e34: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
100006e38: e8 2f 1f 00 00              	callq	7983 <dyld_stub_binder+0x100008d6c>
100006e3d: f6 45 a0 01                 	testb	$1, -96(%rbp)
100006e41: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0x12dc>
100006e43: 48 8b 7d b0                 	movq	-80(%rbp), %rdi
100006e47: e8 20 1f 00 00              	callq	7968 <dyld_stub_binder+0x100008d6c>
100006e4c: bf 10 00 00 00              	movl	$16, %edi
100006e51: e8 28 1f 00 00              	callq	7976 <dyld_stub_binder+0x100008d7e>
100006e56: 49 89 c6                    	movq	%rax, %r14
100006e59: 48 8d 35 50 47 00 00        	leaq	18256(%rip), %rsi
100006e60: 48 89 c7                    	movq	%rax, %rdi
100006e63: e8 92 1e 00 00              	callq	7826 <dyld_stub_binder+0x100008cfa>
100006e68: 48 8b 35 d9 31 00 00        	movq	12761(%rip), %rsi
100006e6f: 48 8b 15 92 31 00 00        	movq	12690(%rip), %rdx
100006e76: 4c 89 f7                    	movq	%r14, %rdi
100006e79: e8 1e 1f 00 00              	callq	7966 <dyld_stub_binder+0x100008d9c>
100006e7e: e9 92 05 00 00              	jmp	1426 <__ZNK2Go17consistency_checkEv+0x18a5>
100006e83: 4c 8d 45 b9                 	leaq	-71(%rbp), %r8
100006e87: 48 8d 3d 22 47 00 00        	leaq	18210(%rip), %rdi
100006e8e: 48 8d 15 61 27 00 00        	leaq	10081(%rip), %rdx
100006e95: be 00 04 00 00              	movl	$1024, %esi
100006e9a: 48 89 d9                    	movq	%rbx, %rcx
100006e9d: 31 c0                       	xorl	%eax, %eax
100006e9f: e8 3a 1f 00 00              	callq	7994 <dyld_stub_binder+0x100008dde>
100006ea4: f6 45 b8 01                 	testb	$1, -72(%rbp)
100006ea8: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0x1343>
100006eaa: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
100006eae: e8 b9 1e 00 00              	callq	7865 <dyld_stub_binder+0x100008d6c>
100006eb3: f6 45 a0 01                 	testb	$1, -96(%rbp)
100006eb7: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0x1352>
100006eb9: 48 8b 7d b0                 	movq	-80(%rbp), %rdi
100006ebd: e8 aa 1e 00 00              	callq	7850 <dyld_stub_binder+0x100008d6c>
100006ec2: bf 10 00 00 00              	movl	$16, %edi
100006ec7: e8 b2 1e 00 00              	callq	7858 <dyld_stub_binder+0x100008d7e>
100006ecc: 49 89 c6                    	movq	%rax, %r14
100006ecf: 48 8d 35 da 46 00 00        	leaq	18138(%rip), %rsi
100006ed6: 48 89 c7                    	movq	%rax, %rdi
100006ed9: e8 1c 1e 00 00              	callq	7708 <dyld_stub_binder+0x100008cfa>
100006ede: 48 8b 35 63 31 00 00        	movq	12643(%rip), %rsi
100006ee5: 48 8b 15 1c 31 00 00        	movq	12572(%rip), %rdx
100006eec: 4c 89 f7                    	movq	%r14, %rdi
100006eef: e8 a8 1e 00 00              	callq	7848 <dyld_stub_binder+0x100008d9c>
100006ef4: e9 1c 05 00 00              	jmp	1308 <__ZNK2Go17consistency_checkEv+0x18a5>
100006ef9: 48 b8 73 20 6e 6f 74 20 67 72       	movabsq	$8243593327382765683, %rax
100006f03: 48 89 05 ae 46 00 00        	movq	%rax, 18094(%rip)
100006f0a: 48 b8 62 6f 72 64 65 72 20 69       	movabsq	$7575180353039658850, %rax
100006f14: 48 89 05 95 46 00 00        	movq	%rax, 18069(%rip)
100006f1b: c7 05 9a 46 00 00 72 61 79 00       	movl	$7954802, 18074(%rip)
100006f25: 48 8d 1d 84 46 00 00        	leaq	18052(%rip), %rbx
100006f2c: bf 10 00 00 00              	movl	$16, %edi
100006f31: e8 48 1e 00 00              	callq	7752 <dyld_stub_binder+0x100008d7e>
100006f36: 49 89 c6                    	movq	%rax, %r14
100006f39: 48 89 c7                    	movq	%rax, %rdi
100006f3c: 48 89 de                    	movq	%rbx, %rsi
100006f3f: e8 b6 1d 00 00              	callq	7606 <dyld_stub_binder+0x100008cfa>
100006f44: e9 02 02 00 00              	jmp	514 <__ZNK2Go17consistency_checkEv+0x15db>
100006f49: 48 8d 1d 60 46 00 00        	leaq	18016(%rip), %rbx
100006f50: 48 8d 15 1f 27 00 00        	leaq	10015(%rip), %rdx
100006f57: be 00 04 00 00              	movl	$1024, %esi
100006f5c: 48 89 df                    	movq	%rbx, %rdi
100006f5f: 31 c0                       	xorl	%eax, %eax
100006f61: e8 78 1e 00 00              	callq	7800 <dyld_stub_binder+0x100008dde>
100006f66: bf 10 00 00 00              	movl	$16, %edi
100006f6b: e8 0e 1e 00 00              	callq	7694 <dyld_stub_binder+0x100008d7e>
100006f70: 49 89 c6                    	movq	%rax, %r14
100006f73: 48 89 c7                    	movq	%rax, %rdi
100006f76: 48 89 de                    	movq	%rbx, %rsi
100006f79: e8 7c 1d 00 00              	callq	7548 <dyld_stub_binder+0x100008cfa>
100006f7e: 48 8b 35 c3 30 00 00        	movq	12483(%rip), %rsi
100006f85: 48 8b 15 7c 30 00 00        	movq	12412(%rip), %rdx
100006f8c: 4c 89 f7                    	movq	%r14, %rdi
100006f8f: e8 08 1e 00 00              	callq	7688 <dyld_stub_binder+0x100008d9c>
100006f94: e9 7c 04 00 00              	jmp	1148 <__ZNK2Go17consistency_checkEv+0x18a5>
100006f99: 0f b7 52 1a                 	movzwl	26(%rdx), %edx
100006f9d: 48 8d 7d 88                 	leaq	-120(%rbp), %rdi
100006fa1: 4c 89 fe                    	movq	%r15, %rsi
100006fa4: e8 87 a4 ff ff              	callq	-23417 <__ZNK2Go7idx_strEt>
100006fa9: f6 45 88 01                 	testb	$1, -120(%rbp)
100006fad: 0f 84 ae 01 00 00           	je	430 <__ZNK2Go17consistency_checkEv+0x15f1>
100006fb3: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100006fb7: e9 a9 01 00 00              	jmp	425 <__ZNK2Go17consistency_checkEv+0x15f5>
100006fbc: 48 8d 1d ed 45 00 00        	leaq	17901(%rip), %rbx
100006fc3: 48 8d 15 5c 27 00 00        	leaq	10076(%rip), %rdx
100006fca: be 00 04 00 00              	movl	$1024, %esi
100006fcf: 48 89 df                    	movq	%rbx, %rdi
100006fd2: 31 c0                       	xorl	%eax, %eax
100006fd4: e8 05 1e 00 00              	callq	7685 <dyld_stub_binder+0x100008dde>
100006fd9: bf 10 00 00 00              	movl	$16, %edi
100006fde: e8 9b 1d 00 00              	callq	7579 <dyld_stub_binder+0x100008d7e>
100006fe3: 49 89 c6                    	movq	%rax, %r14
100006fe6: 48 89 c7                    	movq	%rax, %rdi
100006fe9: 48 89 de                    	movq	%rbx, %rsi
100006fec: e8 09 1d 00 00              	callq	7433 <dyld_stub_binder+0x100008cfa>
100006ff1: 48 8b 35 50 30 00 00        	movq	12368(%rip), %rsi
100006ff8: 48 8b 15 09 30 00 00        	movq	12297(%rip), %rdx
100006fff: 4c 89 f7                    	movq	%r14, %rdi
100007002: e8 95 1d 00 00              	callq	7573 <dyld_stub_binder+0x100008d9c>
100007007: e9 09 04 00 00              	jmp	1033 <__ZNK2Go17consistency_checkEv+0x18a5>
10000700c: 48 8d 1d 9d 45 00 00        	leaq	17821(%rip), %rbx
100007013: 48 8d 15 84 26 00 00        	leaq	9860(%rip), %rdx
10000701a: be 00 04 00 00              	movl	$1024, %esi
10000701f: 48 89 df                    	movq	%rbx, %rdi
100007022: 48 8b 8d 68 ff ff ff        	movq	-152(%rbp), %rcx
100007029: 31 c0                       	xorl	%eax, %eax
10000702b: e8 ae 1d 00 00              	callq	7598 <dyld_stub_binder+0x100008dde>
100007030: bf 10 00 00 00              	movl	$16, %edi
100007035: e8 44 1d 00 00              	callq	7492 <dyld_stub_binder+0x100008d7e>
10000703a: 49 89 c6                    	movq	%rax, %r14
10000703d: 48 89 c7                    	movq	%rax, %rdi
100007040: 48 89 de                    	movq	%rbx, %rsi
100007043: e8 b2 1c 00 00              	callq	7346 <dyld_stub_binder+0x100008cfa>
100007048: 48 8b 35 f9 2f 00 00        	movq	12281(%rip), %rsi
10000704f: 48 8b 15 b2 2f 00 00        	movq	12210(%rip), %rdx
100007056: 4c 89 f7                    	movq	%r14, %rdi
100007059: e8 3e 1d 00 00              	callq	7486 <dyld_stub_binder+0x100008d9c>
10000705e: e9 b2 03 00 00              	jmp	946 <__ZNK2Go17consistency_checkEv+0x18a5>
100007063: 48 b8 73 20 6e 6f 74 20 67 72       	movabsq	$8243593327382765683, %rax
10000706d: 48 89 05 44 45 00 00        	movq	%rax, 17732(%rip)
100007074: 48 b8 62 6f 72 64 65 72 20 69       	movabsq	$7575180353039658850, %rax
10000707e: 48 89 05 2b 45 00 00        	movq	%rax, 17707(%rip)
100007085: c7 05 30 45 00 00 72 61 79 00       	movl	$7954802, 17712(%rip)
10000708f: 48 8d 1d 1a 45 00 00        	leaq	17690(%rip), %rbx
100007096: bf 10 00 00 00              	movl	$16, %edi
10000709b: e8 de 1c 00 00              	callq	7390 <dyld_stub_binder+0x100008d7e>
1000070a0: 49 89 c6                    	movq	%rax, %r14
1000070a3: 48 89 c7                    	movq	%rax, %rdi
1000070a6: 48 89 de                    	movq	%rbx, %rsi
1000070a9: e8 4c 1c 00 00              	callq	7244 <dyld_stub_binder+0x100008cfa>
1000070ae: e9 98 00 00 00              	jmp	152 <__ZNK2Go17consistency_checkEv+0x15db>
1000070b3: 48 b8 73 20 6e 6f 74 20 67 72       	movabsq	$8243593327382765683, %rax
1000070bd: 48 89 05 f4 44 00 00        	movq	%rax, 17652(%rip)
1000070c4: 48 b8 62 6f 72 64 65 72 20 69       	movabsq	$7575180353039658850, %rax
1000070ce: 48 89 05 db 44 00 00        	movq	%rax, 17627(%rip)
1000070d5: c7 05 e0 44 00 00 72 61 79 00       	movl	$7954802, 17632(%rip)
1000070df: 48 8d 1d ca 44 00 00        	leaq	17610(%rip), %rbx
1000070e6: bf 10 00 00 00              	movl	$16, %edi
1000070eb: e8 8e 1c 00 00              	callq	7310 <dyld_stub_binder+0x100008d7e>
1000070f0: 49 89 c6                    	movq	%rax, %r14
1000070f3: 48 89 c7                    	movq	%rax, %rdi
1000070f6: 48 89 de                    	movq	%rbx, %rsi
1000070f9: e8 fc 1b 00 00              	callq	7164 <dyld_stub_binder+0x100008cfa>
1000070fe: eb 4b                       	jmp	75 <__ZNK2Go17consistency_checkEv+0x15db>
100007100: 48 b8 73 20 6e 6f 74 20 67 72       	movabsq	$8243593327382765683, %rax
10000710a: 48 89 05 a7 44 00 00        	movq	%rax, 17575(%rip)
100007111: 48 b8 62 6f 72 64 65 72 20 69       	movabsq	$7575180353039658850, %rax
10000711b: 48 89 05 8e 44 00 00        	movq	%rax, 17550(%rip)
100007122: c7 05 93 44 00 00 72 61 79 00       	movl	$7954802, 17555(%rip)
10000712c: 48 8d 1d 7d 44 00 00        	leaq	17533(%rip), %rbx
100007133: bf 10 00 00 00              	movl	$16, %edi
100007138: e8 41 1c 00 00              	callq	7233 <dyld_stub_binder+0x100008d7e>
10000713d: 49 89 c6                    	movq	%rax, %r14
100007140: 48 89 c7                    	movq	%rax, %rdi
100007143: 48 89 de                    	movq	%rbx, %rsi
100007146: e8 af 1b 00 00              	callq	7087 <dyld_stub_binder+0x100008cfa>
10000714b: 48 8b 35 f6 2e 00 00        	movq	12022(%rip), %rsi
100007152: 48 8b 15 af 2e 00 00        	movq	11951(%rip), %rdx
100007159: 4c 89 f7                    	movq	%r14, %rdi
10000715c: e8 3b 1c 00 00              	callq	7227 <dyld_stub_binder+0x100008d9c>
100007161: 48 8d 4d 89                 	leaq	-119(%rbp), %rcx
100007165: 48 8d 3d 44 44 00 00        	leaq	17476(%rip), %rdi
10000716c: 48 8d 15 71 25 00 00        	leaq	9585(%rip), %rdx
100007173: be 00 04 00 00              	movl	$1024, %esi
100007178: 31 c0                       	xorl	%eax, %eax
10000717a: e8 5f 1c 00 00              	callq	7263 <dyld_stub_binder+0x100008dde>
10000717f: f6 45 88 01                 	testb	$1, -120(%rbp)
100007183: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0x161e>
100007185: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100007189: e8 de 1b 00 00              	callq	7134 <dyld_stub_binder+0x100008d6c>
10000718e: bf 10 00 00 00              	movl	$16, %edi
100007193: e8 e6 1b 00 00              	callq	7142 <dyld_stub_binder+0x100008d7e>
100007198: 49 89 c6                    	movq	%rax, %r14
10000719b: 48 8d 35 0e 44 00 00        	leaq	17422(%rip), %rsi
1000071a2: 48 89 c7                    	movq	%rax, %rdi
1000071a5: e8 50 1b 00 00              	callq	6992 <dyld_stub_binder+0x100008cfa>
1000071aa: 48 8b 35 97 2e 00 00        	movq	11927(%rip), %rsi
1000071b1: 48 8b 15 50 2e 00 00        	movq	11856(%rip), %rdx
1000071b8: 4c 89 f7                    	movq	%r14, %rdi
1000071bb: e8 dc 1b 00 00              	callq	7132 <dyld_stub_binder+0x100008d9c>
1000071c0: e9 50 02 00 00              	jmp	592 <__ZNK2Go17consistency_checkEv+0x18a5>
1000071c5: 0f b7 56 20                 	movzwl	32(%rsi), %edx
1000071c9: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
1000071cd: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
1000071d1: e8 5a a2 ff ff              	callq	-23974 <__ZNK2Go7idx_strEt>
1000071d6: f6 45 a0 01                 	testb	$1, -96(%rbp)
1000071da: 74 06                       	je	6 <__ZNK2Go17consistency_checkEv+0x1672>
1000071dc: 4c 8b 45 b0                 	movq	-80(%rbp), %r8
1000071e0: eb 04                       	jmp	4 <__ZNK2Go17consistency_checkEv+0x1676>
1000071e2: 4c 8d 45 a1                 	leaq	-95(%rbp), %r8
1000071e6: 48 8d 3d c3 43 00 00        	leaq	17347(%rip), %rdi
1000071ed: 48 8d 15 c6 23 00 00        	leaq	9158(%rip), %rdx
1000071f4: be 00 04 00 00              	movl	$1024, %esi
1000071f9: 89 d9                       	movl	%ebx, %ecx
1000071fb: 31 c0                       	xorl	%eax, %eax
1000071fd: e8 dc 1b 00 00              	callq	7132 <dyld_stub_binder+0x100008dde>
100007202: f6 45 a0 01                 	testb	$1, -96(%rbp)
100007206: 74 09                       	je	9 <__ZNK2Go17consistency_checkEv+0x16a1>
100007208: 48 8b 7d b0                 	movq	-80(%rbp), %rdi
10000720c: e8 5b 1b 00 00              	callq	7003 <dyld_stub_binder+0x100008d6c>
100007211: bf 10 00 00 00              	movl	$16, %edi
100007216: e8 63 1b 00 00              	callq	7011 <dyld_stub_binder+0x100008d7e>
10000721b: 49 89 c6                    	movq	%rax, %r14
10000721e: 48 8d 35 8b 43 00 00        	leaq	17291(%rip), %rsi
100007225: 48 89 c7                    	movq	%rax, %rdi
100007228: e8 cd 1a 00 00              	callq	6861 <dyld_stub_binder+0x100008cfa>
10000722d: 48 8b 35 14 2e 00 00        	movq	11796(%rip), %rsi
100007234: 48 8b 15 cd 2d 00 00        	movq	11725(%rip), %rdx
10000723b: 4c 89 f7                    	movq	%r14, %rdi
10000723e: e8 59 1b 00 00              	callq	7001 <dyld_stub_binder+0x100008d9c>
100007243: e9 cd 01 00 00              	jmp	461 <__ZNK2Go17consistency_checkEv+0x18a5>
100007248: 48 b8 65 6d 6f 72 79 20 6c 65       	movabsq	$7308252001298509157, %rax
100007252: 48 89 05 5f 43 00 00        	movq	%rax, 17247(%rip)
100007259: 48 b8 73 74 72 69 6e 67 20 6d       	movabsq	$7863398673302058099, %rax
100007263: 48 89 05 46 43 00 00        	movq	%rax, 17222(%rip)
10000726a: c7 05 4b 43 00 00 65 61 6b 00       	movl	$7037285, 17227(%rip)
100007274: 48 8d 1d 35 43 00 00        	leaq	17205(%rip), %rbx
10000727b: bf 10 00 00 00              	movl	$16, %edi
100007280: e8 f9 1a 00 00              	callq	6905 <dyld_stub_binder+0x100008d7e>
100007285: 49 89 c6                    	movq	%rax, %r14
100007288: 48 89 c7                    	movq	%rax, %rdi
10000728b: 48 89 de                    	movq	%rbx, %rsi
10000728e: e8 67 1a 00 00              	callq	6759 <dyld_stub_binder+0x100008cfa>
100007293: 48 8b 35 ae 2d 00 00        	movq	11694(%rip), %rsi
10000729a: 48 8b 15 67 2d 00 00        	movq	11623(%rip), %rdx
1000072a1: 4c 89 f7                    	movq	%r14, %rdi
1000072a4: e8 f3 1a 00 00              	callq	6899 <dyld_stub_binder+0x100008d9c>
1000072a9: e9 67 01 00 00              	jmp	359 <__ZNK2Go17consistency_checkEv+0x18a5>
1000072ae: 48 89 c3                    	movq	%rax, %rbx
1000072b1: e9 31 01 00 00              	jmp	305 <__ZNK2Go17consistency_checkEv+0x1877>
1000072b6: eb 47                       	jmp	71 <__ZNK2Go17consistency_checkEv+0x178f>
1000072b8: 48 89 c3                    	movq	%rax, %rbx
1000072bb: e9 27 01 00 00              	jmp	295 <__ZNK2Go17consistency_checkEv+0x1877>
1000072c0: eb 3d                       	jmp	61 <__ZNK2Go17consistency_checkEv+0x178f>
1000072c2: 48 89 c3                    	movq	%rax, %rbx
1000072c5: e9 1d 01 00 00              	jmp	285 <__ZNK2Go17consistency_checkEv+0x1877>
1000072ca: eb 1d                       	jmp	29 <__ZNK2Go17consistency_checkEv+0x1779>
1000072cc: eb 1b                       	jmp	27 <__ZNK2Go17consistency_checkEv+0x1779>
1000072ce: eb 19                       	jmp	25 <__ZNK2Go17consistency_checkEv+0x1779>
1000072d0: e9 d5 00 00 00              	jmp	213 <__ZNK2Go17consistency_checkEv+0x183a>
1000072d5: e9 98 00 00 00              	jmp	152 <__ZNK2Go17consistency_checkEv+0x1802>
1000072da: e9 cb 00 00 00              	jmp	203 <__ZNK2Go17consistency_checkEv+0x183a>
1000072df: e9 e6 00 00 00              	jmp	230 <__ZNK2Go17consistency_checkEv+0x185a>
1000072e4: e9 89 00 00 00              	jmp	137 <__ZNK2Go17consistency_checkEv+0x1802>
1000072e9: 48 89 c3                    	movq	%rax, %rbx
1000072ec: 4c 89 f7                    	movq	%r14, %rdi
1000072ef: e8 a2 1a 00 00              	callq	6818 <dyld_stub_binder+0x100008d96>
1000072f4: e9 14 01 00 00              	jmp	276 <__ZNK2Go17consistency_checkEv+0x189d>
1000072f9: eb 04                       	jmp	4 <__ZNK2Go17consistency_checkEv+0x178f>
1000072fb: eb 02                       	jmp	2 <__ZNK2Go17consistency_checkEv+0x178f>
1000072fd: eb 00                       	jmp	0 <__ZNK2Go17consistency_checkEv+0x178f>
1000072ff: 48 89 c3                    	movq	%rax, %rbx
100007302: 4c 89 f7                    	movq	%r14, %rdi
100007305: e8 8c 1a 00 00              	callq	6796 <dyld_stub_binder+0x100008d96>
10000730a: e9 d8 00 00 00              	jmp	216 <__ZNK2Go17consistency_checkEv+0x1877>
10000730f: 48 89 c3                    	movq	%rax, %rbx
100007312: f6 45 a0 01                 	testb	$1, -96(%rbp)
100007316: 75 46                       	jne	70 <__ZNK2Go17consistency_checkEv+0x17ee>
100007318: e9 ca 00 00 00              	jmp	202 <__ZNK2Go17consistency_checkEv+0x1877>
10000731d: 48 89 c3                    	movq	%rax, %rbx
100007320: e9 c2 00 00 00              	jmp	194 <__ZNK2Go17consistency_checkEv+0x1877>
100007325: 48 89 c3                    	movq	%rax, %rbx
100007328: f6 45 a0 01                 	testb	$1, -96(%rbp)
10000732c: 75 30                       	jne	48 <__ZNK2Go17consistency_checkEv+0x17ee>
10000732e: e9 b4 00 00 00              	jmp	180 <__ZNK2Go17consistency_checkEv+0x1877>
100007333: 48 89 c3                    	movq	%rax, %rbx
100007336: e9 ac 00 00 00              	jmp	172 <__ZNK2Go17consistency_checkEv+0x1877>
10000733b: 48 89 c3                    	movq	%rax, %rbx
10000733e: f6 45 a0 01                 	testb	$1, -96(%rbp)
100007342: 75 1a                       	jne	26 <__ZNK2Go17consistency_checkEv+0x17ee>
100007344: e9 9e 00 00 00              	jmp	158 <__ZNK2Go17consistency_checkEv+0x1877>
100007349: 48 89 c3                    	movq	%rax, %rbx
10000734c: e9 96 00 00 00              	jmp	150 <__ZNK2Go17consistency_checkEv+0x1877>
100007351: 48 89 c3                    	movq	%rax, %rbx
100007354: f6 45 a0 01                 	testb	$1, -96(%rbp)
100007358: 0f 84 89 00 00 00           	je	137 <__ZNK2Go17consistency_checkEv+0x1877>
10000735e: 48 8b 7d b0                 	movq	-80(%rbp), %rdi
100007362: e8 05 1a 00 00              	callq	6661 <dyld_stub_binder+0x100008d6c>
100007367: eb 7e                       	jmp	126 <__ZNK2Go17consistency_checkEv+0x1877>
100007369: 48 89 c3                    	movq	%rax, %rbx
10000736c: eb 79                       	jmp	121 <__ZNK2Go17consistency_checkEv+0x1877>
10000736e: eb 5a                       	jmp	90 <__ZNK2Go17consistency_checkEv+0x185a>
100007370: eb 38                       	jmp	56 <__ZNK2Go17consistency_checkEv+0x183a>
100007372: 48 89 c3                    	movq	%rax, %rbx
100007375: 4c 89 f7                    	movq	%r14, %rdi
100007378: e8 19 1a 00 00              	callq	6681 <dyld_stub_binder+0x100008d96>
10000737d: eb 5b                       	jmp	91 <__ZNK2Go17consistency_checkEv+0x186a>
10000737f: 48 89 c3                    	movq	%rax, %rbx
100007382: eb 56                       	jmp	86 <__ZNK2Go17consistency_checkEv+0x186a>
100007384: 48 89 c3                    	movq	%rax, %rbx
100007387: eb 51                       	jmp	81 <__ZNK2Go17consistency_checkEv+0x186a>
100007389: eb 1f                       	jmp	31 <__ZNK2Go17consistency_checkEv+0x183a>
10000738b: eb 1d                       	jmp	29 <__ZNK2Go17consistency_checkEv+0x183a>
10000738d: 48 89 c3                    	movq	%rax, %rbx
100007390: f6 45 88 01                 	testb	$1, -120(%rbp)
100007394: 74 37                       	je	55 <__ZNK2Go17consistency_checkEv+0x185d>
100007396: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
10000739a: e8 cd 19 00 00              	callq	6605 <dyld_stub_binder+0x100008d6c>
10000739f: eb 2c                       	jmp	44 <__ZNK2Go17consistency_checkEv+0x185d>
1000073a1: eb 27                       	jmp	39 <__ZNK2Go17consistency_checkEv+0x185a>
1000073a3: eb 25                       	jmp	37 <__ZNK2Go17consistency_checkEv+0x185a>
1000073a5: 48 89 c3                    	movq	%rax, %rbx
1000073a8: eb 3d                       	jmp	61 <__ZNK2Go17consistency_checkEv+0x1877>
1000073aa: 48 89 c3                    	movq	%rax, %rbx
1000073ad: 4c 89 f7                    	movq	%r14, %rdi
1000073b0: e8 e1 19 00 00              	callq	6625 <dyld_stub_binder+0x100008d96>
1000073b5: eb 16                       	jmp	22 <__ZNK2Go17consistency_checkEv+0x185d>
1000073b7: eb 11                       	jmp	17 <__ZNK2Go17consistency_checkEv+0x185a>
1000073b9: eb 0f                       	jmp	15 <__ZNK2Go17consistency_checkEv+0x185a>
1000073bb: 48 89 c3                    	movq	%rax, %rbx
1000073be: eb 27                       	jmp	39 <__ZNK2Go17consistency_checkEv+0x1877>
1000073c0: 48 89 c3                    	movq	%rax, %rbx
1000073c3: eb 15                       	jmp	21 <__ZNK2Go17consistency_checkEv+0x186a>
1000073c5: 48 89 c3                    	movq	%rax, %rbx
1000073c8: eb 30                       	jmp	48 <__ZNK2Go17consistency_checkEv+0x188a>
1000073ca: 48 89 c3                    	movq	%rax, %rbx
1000073cd: 48 8b 75 c0                 	movq	-64(%rbp), %rsi
1000073d1: 48 8d 7d b8                 	leaq	-72(%rbp), %rdi
1000073d5: e8 a6 12 00 00              	callq	4774 <__ZNSt3__16__treeItNS_4lessItEENS_9allocatorItEEE7destroyEPNS_11__tree_nodeItPvEE>
1000073da: 48 8b 75 a8                 	movq	-88(%rbp), %rsi
1000073de: 48 8d 7d a0                 	leaq	-96(%rbp), %rdi
1000073e2: e8 99 12 00 00              	callq	4761 <__ZNSt3__16__treeItNS_4lessItEENS_9allocatorItEEE7destroyEPNS_11__tree_nodeItPvEE>
1000073e7: 48 8b b5 58 ff ff ff        	movq	-168(%rbp), %rsi
1000073ee: 48 8d bd 50 ff ff ff        	leaq	-176(%rbp), %rdi
1000073f5: e8 86 12 00 00              	callq	4742 <__ZNSt3__16__treeItNS_4lessItEENS_9allocatorItEEE7destroyEPNS_11__tree_nodeItPvEE>
1000073fa: 48 8b b5 78 ff ff ff        	movq	-136(%rbp), %rsi
100007401: 48 8d bd 70 ff ff ff        	leaq	-144(%rbp), %rdi
100007408: e8 73 12 00 00              	callq	4723 <__ZNSt3__16__treeItNS_4lessItEENS_9allocatorItEEE7destroyEPNS_11__tree_nodeItPvEE>
10000740d: 48 89 df                    	movq	%rbx, %rdi
100007410: e8 cd 18 00 00              	callq	6349 <dyld_stub_binder+0x100008ce2>
100007415: 0f 0b                       	ud2
100007417: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100007420 __ZNK2Go5stripEv:
100007420: 55                          	pushq	%rbp
100007421: 48 89 e5                    	movq	%rsp, %rbp
100007424: 48 89 f8                    	movq	%rdi, %rax
100007427: 5d                          	popq	%rbp
100007428: c3                          	retq
100007429: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100007430 __ZNK2Go5widthEv:
100007430: 55                          	pushq	%rbp
100007431: 48 89 e5                    	movq	%rsp, %rbp
100007434: 0f b6 47 08                 	movzbl	8(%rdi), %eax
100007438: 5d                          	popq	%rbp
100007439: c3                          	retq
10000743a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100007440 __ZNK2Go6heightEv:
100007440: 55                          	pushq	%rbp
100007441: 48 89 e5                    	movq	%rsp, %rbp
100007444: 0f b6 47 09                 	movzbl	9(%rdi), %eax
100007448: 5d                          	popq	%rbp
100007449: c3                          	retq
10000744a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100007450 __ZNK2Go8get_turnEv:
100007450: 55                          	pushq	%rbp
100007451: 48 89 e5                    	movq	%rsp, %rbp
100007454: 0f b7 47 0a                 	movzwl	10(%rdi), %eax
100007458: 5d                          	popq	%rbp
100007459: c3                          	retq
10000745a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100007460 __ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev:
100007460: 55                          	pushq	%rbp
100007461: 48 89 e5                    	movq	%rsp, %rbp
100007464: 41 57                       	pushq	%r15
100007466: 41 56                       	pushq	%r14
100007468: 53                          	pushq	%rbx
100007469: 50                          	pushq	%rax
10000746a: 48 8b 07                    	movq	(%rdi), %rax
10000746d: 48 8b 40 e8                 	movq	-24(%rax), %rax
100007471: 4c 8d 3c 07                 	leaq	(%rdi,%rax), %r15
100007475: 48 8b 0d f4 2b 00 00        	movq	11252(%rip), %rcx
10000747c: 48 8d 51 18                 	leaq	24(%rcx), %rdx
100007480: 48 89 14 07                 	movq	%rdx, (%rdi,%rax)
100007484: 4c 8d 74 07 70              	leaq	112(%rdi,%rax), %r14
100007489: 48 83 c1 40                 	addq	$64, %rcx
10000748d: 48 89 4c 07 70              	movq	%rcx, 112(%rdi,%rax)
100007492: 48 8d 5c 07 08              	leaq	8(%rdi,%rax), %rbx
100007497: 48 8b 0d c2 2b 00 00        	movq	11202(%rip), %rcx
10000749e: 48 83 c1 10                 	addq	$16, %rcx
1000074a2: 48 89 4c 07 08              	movq	%rcx, 8(%rdi,%rax)
1000074a7: f6 44 07 48 01              	testb	$1, 72(%rdi,%rax)
1000074ac: 74 09                       	je	9 <__ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev+0x57>
1000074ae: 49 8b 7f 58                 	movq	88(%r15), %rdi
1000074b2: e8 b5 18 00 00              	callq	6325 <dyld_stub_binder+0x100008d6c>
1000074b7: 48 89 df                    	movq	%rbx, %rdi
1000074ba: e8 77 18 00 00              	callq	6263 <dyld_stub_binder+0x100008d36>
1000074bf: 48 8b 35 8a 2b 00 00        	movq	11146(%rip), %rsi
1000074c6: 48 83 c6 08                 	addq	$8, %rsi
1000074ca: 4c 89 ff                    	movq	%r15, %rdi
1000074cd: e8 46 18 00 00              	callq	6214 <dyld_stub_binder+0x100008d18>
1000074d2: 4c 89 f7                    	movq	%r14, %rdi
1000074d5: 48 83 c4 08                 	addq	$8, %rsp
1000074d9: 5b                          	popq	%rbx
1000074da: 41 5e                       	popq	%r14
1000074dc: 41 5f                       	popq	%r15
1000074de: 5d                          	popq	%rbp
1000074df: e9 76 18 00 00              	jmp	6262 <dyld_stub_binder+0x100008d5a>
1000074e4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000074ee: 66 90                       	nop

00000001000074f0 __ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev:
1000074f0: 55                          	pushq	%rbp
1000074f1: 48 89 e5                    	movq	%rsp, %rbp
1000074f4: 41 57                       	pushq	%r15
1000074f6: 41 56                       	pushq	%r14
1000074f8: 53                          	pushq	%rbx
1000074f9: 50                          	pushq	%rax
1000074fa: 48 89 fb                    	movq	%rdi, %rbx
1000074fd: 48 8b 05 6c 2b 00 00        	movq	11116(%rip), %rax
100007504: 48 8d 48 18                 	leaq	24(%rax), %rcx
100007508: 48 89 0f                    	movq	%rcx, (%rdi)
10000750b: 4c 8d 77 70                 	leaq	112(%rdi), %r14
10000750f: 48 83 c0 40                 	addq	$64, %rax
100007513: 48 89 47 70                 	movq	%rax, 112(%rdi)
100007517: 4c 8d 7f 08                 	leaq	8(%rdi), %r15
10000751b: 48 8b 05 3e 2b 00 00        	movq	11070(%rip), %rax
100007522: 48 83 c0 10                 	addq	$16, %rax
100007526: 48 89 47 08                 	movq	%rax, 8(%rdi)
10000752a: f6 47 48 01                 	testb	$1, 72(%rdi)
10000752e: 74 09                       	je	9 <__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev+0x49>
100007530: 48 8b 7b 58                 	movq	88(%rbx), %rdi
100007534: e8 33 18 00 00              	callq	6195 <dyld_stub_binder+0x100008d6c>
100007539: 4c 89 ff                    	movq	%r15, %rdi
10000753c: e8 f5 17 00 00              	callq	6133 <dyld_stub_binder+0x100008d36>
100007541: 48 8b 35 08 2b 00 00        	movq	11016(%rip), %rsi
100007548: 48 83 c6 08                 	addq	$8, %rsi
10000754c: 48 89 df                    	movq	%rbx, %rdi
10000754f: e8 c4 17 00 00              	callq	6084 <dyld_stub_binder+0x100008d18>
100007554: 4c 89 f7                    	movq	%r14, %rdi
100007557: e8 fe 17 00 00              	callq	6142 <dyld_stub_binder+0x100008d5a>
10000755c: 48 89 df                    	movq	%rbx, %rdi
10000755f: 48 83 c4 08                 	addq	$8, %rsp
100007563: 5b                          	popq	%rbx
100007564: 41 5e                       	popq	%r14
100007566: 41 5f                       	popq	%r15
100007568: 5d                          	popq	%rbp
100007569: e9 fe 17 00 00              	jmp	6142 <dyld_stub_binder+0x100008d6c>
10000756e: 66 90                       	nop

0000000100007570 __ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev:
100007570: 55                          	pushq	%rbp
100007571: 48 89 e5                    	movq	%rsp, %rbp
100007574: 41 57                       	pushq	%r15
100007576: 41 56                       	pushq	%r14
100007578: 53                          	pushq	%rbx
100007579: 50                          	pushq	%rax
10000757a: 48 8b 07                    	movq	(%rdi), %rax
10000757d: 48 8b 40 e8                 	movq	-24(%rax), %rax
100007581: 48 8d 1c 07                 	leaq	(%rdi,%rax), %rbx
100007585: 48 8b 0d e4 2a 00 00        	movq	10980(%rip), %rcx
10000758c: 48 8d 51 18                 	leaq	24(%rcx), %rdx
100007590: 48 89 14 07                 	movq	%rdx, (%rdi,%rax)
100007594: 4c 8d 74 07 70              	leaq	112(%rdi,%rax), %r14
100007599: 48 83 c1 40                 	addq	$64, %rcx
10000759d: 48 89 4c 07 70              	movq	%rcx, 112(%rdi,%rax)
1000075a2: 4c 8d 7c 07 08              	leaq	8(%rdi,%rax), %r15
1000075a7: 48 8b 0d b2 2a 00 00        	movq	10930(%rip), %rcx
1000075ae: 48 83 c1 10                 	addq	$16, %rcx
1000075b2: 48 89 4c 07 08              	movq	%rcx, 8(%rdi,%rax)
1000075b7: f6 44 07 48 01              	testb	$1, 72(%rdi,%rax)
1000075bc: 74 09                       	je	9 <__ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev+0x57>
1000075be: 48 8b 7b 58                 	movq	88(%rbx), %rdi
1000075c2: e8 a5 17 00 00              	callq	6053 <dyld_stub_binder+0x100008d6c>
1000075c7: 4c 89 ff                    	movq	%r15, %rdi
1000075ca: e8 67 17 00 00              	callq	5991 <dyld_stub_binder+0x100008d36>
1000075cf: 48 8b 35 7a 2a 00 00        	movq	10874(%rip), %rsi
1000075d6: 48 83 c6 08                 	addq	$8, %rsi
1000075da: 48 89 df                    	movq	%rbx, %rdi
1000075dd: e8 36 17 00 00              	callq	5942 <dyld_stub_binder+0x100008d18>
1000075e2: 4c 89 f7                    	movq	%r14, %rdi
1000075e5: e8 70 17 00 00              	callq	6000 <dyld_stub_binder+0x100008d5a>
1000075ea: 48 89 df                    	movq	%rbx, %rdi
1000075ed: 48 83 c4 08                 	addq	$8, %rsp
1000075f1: 5b                          	popq	%rbx
1000075f2: 41 5e                       	popq	%r14
1000075f4: 41 5f                       	popq	%r15
1000075f6: 5d                          	popq	%rbp
1000075f7: e9 70 17 00 00              	jmp	6000 <dyld_stub_binder+0x100008d6c>
1000075fc: 0f 1f 40 00                 	nopl	(%rax)

0000000100007600 __ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev:
100007600: 55                          	pushq	%rbp
100007601: 48 89 e5                    	movq	%rsp, %rbp
100007604: 53                          	pushq	%rbx
100007605: 50                          	pushq	%rax
100007606: 48 89 fb                    	movq	%rdi, %rbx
100007609: 48 8b 05 50 2a 00 00        	movq	10832(%rip), %rax
100007610: 48 83 c0 10                 	addq	$16, %rax
100007614: 48 89 07                    	movq	%rax, (%rdi)
100007617: f6 47 40 01                 	testb	$1, 64(%rdi)
10000761b: 74 09                       	je	9 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev+0x26>
10000761d: 48 8b 7b 50                 	movq	80(%rbx), %rdi
100007621: e8 46 17 00 00              	callq	5958 <dyld_stub_binder+0x100008d6c>
100007626: 48 89 df                    	movq	%rbx, %rdi
100007629: 48 83 c4 08                 	addq	$8, %rsp
10000762d: 5b                          	popq	%rbx
10000762e: 5d                          	popq	%rbp
10000762f: e9 02 17 00 00              	jmp	5890 <dyld_stub_binder+0x100008d36>
100007634: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000763e: 66 90                       	nop

0000000100007640 __ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev:
100007640: 55                          	pushq	%rbp
100007641: 48 89 e5                    	movq	%rsp, %rbp
100007644: 53                          	pushq	%rbx
100007645: 50                          	pushq	%rax
100007646: 48 89 fb                    	movq	%rdi, %rbx
100007649: 48 8b 05 10 2a 00 00        	movq	10768(%rip), %rax
100007650: 48 83 c0 10                 	addq	$16, %rax
100007654: 48 89 07                    	movq	%rax, (%rdi)
100007657: f6 47 40 01                 	testb	$1, 64(%rdi)
10000765b: 74 09                       	je	9 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED0Ev+0x26>
10000765d: 48 8b 7b 50                 	movq	80(%rbx), %rdi
100007661: e8 06 17 00 00              	callq	5894 <dyld_stub_binder+0x100008d6c>
100007666: 48 89 df                    	movq	%rbx, %rdi
100007669: e8 c8 16 00 00              	callq	5832 <dyld_stub_binder+0x100008d36>
10000766e: 48 89 df                    	movq	%rbx, %rdi
100007671: 48 83 c4 08                 	addq	$8, %rsp
100007675: 5b                          	popq	%rbx
100007676: 5d                          	popq	%rbp
100007677: e9 f0 16 00 00              	jmp	5872 <dyld_stub_binder+0x100008d6c>
10000767c: 0f 1f 40 00                 	nopl	(%rax)

0000000100007680 __ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj:
100007680: 55                          	pushq	%rbp
100007681: 48 89 e5                    	movq	%rsp, %rbp
100007684: 53                          	pushq	%rbx
100007685: 48 89 f8                    	movq	%rdi, %rax
100007688: 48 8b 7e 30                 	movq	48(%rsi), %rdi
10000768c: 4c 8b 56 58                 	movq	88(%rsi), %r10
100007690: 49 39 fa                    	cmpq	%rdi, %r10
100007693: 73 07                       	jae	7 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0x1c>
100007695: 48 89 7e 58                 	movq	%rdi, 88(%rsi)
100007699: 49 89 fa                    	movq	%rdi, %r10
10000769c: 44 89 c3                    	movl	%r8d, %ebx
10000769f: 49 c7 c1 ff ff ff ff        	movq	$-1, %r9
1000076a6: 83 e3 18                    	andl	$24, %ebx
1000076a9: 0f 84 c2 00 00 00           	je	194 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xf1>
1000076af: 83 f9 01                    	cmpl	$1, %ecx
1000076b2: 75 09                       	jne	9 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0x3d>
1000076b4: 83 fb 18                    	cmpl	$24, %ebx
1000076b7: 0f 84 b4 00 00 00           	je	180 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xf1>
1000076bd: 4d 85 d2                    	testq	%r10, %r10
1000076c0: 74 19                       	je	25 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0x5b>
1000076c2: f6 46 40 01                 	testb	$1, 64(%rsi)
1000076c6: 75 26                       	jne	38 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0x6e>
1000076c8: 48 8d 5e 40                 	leaq	64(%rsi), %rbx
1000076cc: 48 ff c3                    	incq	%rbx
1000076cf: 4d 89 d3                    	movq	%r10, %r11
1000076d2: 49 29 db                    	subq	%rbx, %r11
1000076d5: 85 c9                       	testl	%ecx, %ecx
1000076d7: 75 23                       	jne	35 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0x7c>
1000076d9: eb 07                       	jmp	7 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0x62>
1000076db: 45 31 db                    	xorl	%r11d, %r11d
1000076de: 85 c9                       	testl	%ecx, %ecx
1000076e0: 75 1a                       	jne	26 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0x7c>
1000076e2: 31 c9                       	xorl	%ecx, %ecx
1000076e4: 48 01 d1                    	addq	%rdx, %rcx
1000076e7: 79 3d                       	jns	61 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xa6>
1000076e9: e9 83 00 00 00              	jmp	131 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xf1>
1000076ee: 48 8b 5e 50                 	movq	80(%rsi), %rbx
1000076f2: 4d 89 d3                    	movq	%r10, %r11
1000076f5: 49 29 db                    	subq	%rbx, %r11
1000076f8: 85 c9                       	testl	%ecx, %ecx
1000076fa: 74 e6                       	je	-26 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0x62>
1000076fc: 83 f9 02                    	cmpl	$2, %ecx
1000076ff: 74 1d                       	je	29 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0x9e>
100007701: 83 f9 01                    	cmpl	$1, %ecx
100007704: 75 6b                       	jne	107 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xf1>
100007706: 41 f6 c0 08                 	testb	$8, %r8b
10000770a: 0f 85 ea 00 00 00           	jne	234 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0x17a>
100007710: 48 89 f9                    	movq	%rdi, %rcx
100007713: 48 2b 4e 28                 	subq	40(%rsi), %rcx
100007717: 48 01 d1                    	addq	%rdx, %rcx
10000771a: 79 0a                       	jns	10 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xa6>
10000771c: eb 53                       	jmp	83 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xf1>
10000771e: 4c 89 d9                    	movq	%r11, %rcx
100007721: 48 01 d1                    	addq	%rdx, %rcx
100007724: 78 4b                       	js	75 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xf1>
100007726: 49 39 cb                    	cmpq	%rcx, %r11
100007729: 7c 46                       	jl	70 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xf1>
10000772b: 48 85 c9                    	testq	%rcx, %rcx
10000772e: 74 18                       	je	24 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xc8>
100007730: 41 f6 c0 08                 	testb	$8, %r8b
100007734: 74 07                       	je	7 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xbd>
100007736: 48 83 7e 18 00              	cmpq	$0, 24(%rsi)
10000773b: 74 34                       	je	52 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xf1>
10000773d: 41 f6 c0 10                 	testb	$16, %r8b
100007741: 74 05                       	je	5 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xc8>
100007743: 48 85 ff                    	testq	%rdi, %rdi
100007746: 74 29                       	je	41 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xf1>
100007748: 41 f6 c0 08                 	testb	$8, %r8b
10000774c: 74 0f                       	je	15 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xdd>
10000774e: 48 8b 56 10                 	movq	16(%rsi), %rdx
100007752: 48 01 ca                    	addq	%rcx, %rdx
100007755: 48 89 56 18                 	movq	%rdx, 24(%rsi)
100007759: 4c 89 56 20                 	movq	%r10, 32(%rsi)
10000775d: 41 f6 c0 10                 	testb	$16, %r8b
100007761: 74 0b                       	je	11 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xee>
100007763: 48 63 d1                    	movslq	%ecx, %rdx
100007766: 48 03 56 28                 	addq	40(%rsi), %rdx
10000776a: 48 89 56 30                 	movq	%rdx, 48(%rsi)
10000776e: 49 89 c9                    	movq	%rcx, %r9
100007771: 48 c7 40 78 00 00 00 00     	movq	$0, 120(%rax)
100007779: 48 c7 40 70 00 00 00 00     	movq	$0, 112(%rax)
100007781: 48 c7 40 68 00 00 00 00     	movq	$0, 104(%rax)
100007789: 48 c7 40 60 00 00 00 00     	movq	$0, 96(%rax)
100007791: 48 c7 40 58 00 00 00 00     	movq	$0, 88(%rax)
100007799: 48 c7 40 50 00 00 00 00     	movq	$0, 80(%rax)
1000077a1: 48 c7 40 48 00 00 00 00     	movq	$0, 72(%rax)
1000077a9: 48 c7 40 40 00 00 00 00     	movq	$0, 64(%rax)
1000077b1: 48 c7 40 38 00 00 00 00     	movq	$0, 56(%rax)
1000077b9: 48 c7 40 30 00 00 00 00     	movq	$0, 48(%rax)
1000077c1: 48 c7 40 28 00 00 00 00     	movq	$0, 40(%rax)
1000077c9: 48 c7 40 20 00 00 00 00     	movq	$0, 32(%rax)
1000077d1: 48 c7 40 18 00 00 00 00     	movq	$0, 24(%rax)
1000077d9: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
1000077e1: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
1000077e9: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
1000077f0: 4c 89 88 80 00 00 00        	movq	%r9, 128(%rax)
1000077f7: 5b                          	popq	%rbx
1000077f8: 5d                          	popq	%rbp
1000077f9: c3                          	retq
1000077fa: 48 8b 4e 18                 	movq	24(%rsi), %rcx
1000077fe: 48 2b 4e 10                 	subq	16(%rsi), %rcx
100007802: 48 01 d1                    	addq	%rdx, %rcx
100007805: 0f 89 1b ff ff ff           	jns	-229 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xa6>
10000780b: e9 61 ff ff ff              	jmp	-159 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekoffExNS_8ios_base7seekdirEj+0xf1>

0000000100007810 __ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE7seekposENS_4fposI11__mbstate_tEEj:
100007810: 55                          	pushq	%rbp
100007811: 48 89 e5                    	movq	%rsp, %rbp
100007814: 53                          	pushq	%rbx
100007815: 50                          	pushq	%rax
100007816: 41 89 d0                    	movl	%edx, %r8d
100007819: 48 89 fb                    	movq	%rdi, %rbx
10000781c: 48 8b 95 90 00 00 00        	movq	144(%rbp), %rdx
100007823: 48 8b 06                    	movq	(%rsi), %rax
100007826: 31 c9                       	xorl	%ecx, %ecx
100007828: ff 50 20                    	callq	*32(%rax)
10000782b: 48 89 d8                    	movq	%rbx, %rax
10000782e: 48 83 c4 08                 	addq	$8, %rsp
100007832: 5b                          	popq	%rbx
100007833: 5d                          	popq	%rbp
100007834: c3                          	retq
100007835: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000783f: 90                          	nop

0000000100007840 __ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv:
100007840: 55                          	pushq	%rbp
100007841: 48 89 e5                    	movq	%rsp, %rbp
100007844: 48 8b 47 30                 	movq	48(%rdi), %rax
100007848: 48 8b 4f 58                 	movq	88(%rdi), %rcx
10000784c: 48 39 c1                    	cmpq	%rax, %rcx
10000784f: 73 07                       	jae	7 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv+0x18>
100007851: 48 89 47 58                 	movq	%rax, 88(%rdi)
100007855: 48 89 c1                    	movq	%rax, %rcx
100007858: b8 ff ff ff ff              	movl	$4294967295, %eax
10000785d: f6 47 60 08                 	testb	$8, 96(%rdi)
100007861: 74 1c                       	je	28 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv+0x3f>
100007863: 48 8b 57 20                 	movq	32(%rdi), %rdx
100007867: 48 39 ca                    	cmpq	%rcx, %rdx
10000786a: 73 07                       	jae	7 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv+0x33>
10000786c: 48 89 4f 20                 	movq	%rcx, 32(%rdi)
100007870: 48 89 ca                    	movq	%rcx, %rdx
100007873: 48 8b 4f 18                 	movq	24(%rdi), %rcx
100007877: 48 39 d1                    	cmpq	%rdx, %rcx
10000787a: 73 03                       	jae	3 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9underflowEv+0x3f>
10000787c: 0f b6 01                    	movzbl	(%rcx), %eax
10000787f: 5d                          	popq	%rbp
100007880: c3                          	retq
100007881: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000788b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007890 __ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi:
100007890: 55                          	pushq	%rbp
100007891: 48 89 e5                    	movq	%rsp, %rbp
100007894: 48 8b 47 30                 	movq	48(%rdi), %rax
100007898: 48 8b 4f 58                 	movq	88(%rdi), %rcx
10000789c: 48 39 c1                    	cmpq	%rax, %rcx
10000789f: 73 07                       	jae	7 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi+0x18>
1000078a1: 48 89 47 58                 	movq	%rax, 88(%rdi)
1000078a5: 48 89 c1                    	movq	%rax, %rcx
1000078a8: 48 8b 57 18                 	movq	24(%rdi), %rdx
1000078ac: b8 ff ff ff ff              	movl	$4294967295, %eax
1000078b1: 48 39 57 10                 	cmpq	%rdx, 16(%rdi)
1000078b5: 73 23                       	jae	35 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi+0x4a>
1000078b7: 83 fe ff                    	cmpl	$-1, %esi
1000078ba: 74 20                       	je	32 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi+0x4c>
1000078bc: f6 47 60 10                 	testb	$16, 96(%rdi)
1000078c0: 75 06                       	jne	6 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi+0x38>
1000078c2: 40 38 72 ff                 	cmpb	%sil, -1(%rdx)
1000078c6: 75 12                       	jne	18 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE9pbackfailEi+0x4a>
1000078c8: 48 8d 42 ff                 	leaq	-1(%rdx), %rax
1000078cc: 48 89 47 18                 	movq	%rax, 24(%rdi)
1000078d0: 48 89 4f 20                 	movq	%rcx, 32(%rdi)
1000078d4: 40 88 72 ff                 	movb	%sil, -1(%rdx)
1000078d8: 89 f0                       	movl	%esi, %eax
1000078da: 5d                          	popq	%rbp
1000078db: c3                          	retq
1000078dc: 48 ff ca                    	decq	%rdx
1000078df: 48 89 57 18                 	movq	%rdx, 24(%rdi)
1000078e3: 48 89 4f 20                 	movq	%rcx, 32(%rdi)
1000078e7: 31 c0                       	xorl	%eax, %eax
1000078e9: 5d                          	popq	%rbp
1000078ea: c3                          	retq
1000078eb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000078f0 __ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi:
1000078f0: 55                          	pushq	%rbp
1000078f1: 48 89 e5                    	movq	%rsp, %rbp
1000078f4: 41 57                       	pushq	%r15
1000078f6: 41 56                       	pushq	%r14
1000078f8: 41 55                       	pushq	%r13
1000078fa: 41 54                       	pushq	%r12
1000078fc: 53                          	pushq	%rbx
1000078fd: 48 83 ec 28                 	subq	$40, %rsp
100007901: 83 fe ff                    	cmpl	$-1, %esi
100007904: 74 24                       	je	36 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi+0x3a>
100007906: 41 89 f6                    	movl	%esi, %r14d
100007909: 48 89 fb                    	movq	%rdi, %rbx
10000790c: 4c 8b 7f 18                 	movq	24(%rdi), %r15
100007910: 4c 8b 6f 30                 	movq	48(%rdi), %r13
100007914: 4c 2b 7f 10                 	subq	16(%rdi), %r15
100007918: 48 8b 47 38                 	movq	56(%rdi), %rax
10000791c: 49 39 c5                    	cmpq	%rax, %r13
10000791f: 74 11                       	je	17 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi+0x42>
100007921: 48 8b 73 58                 	movq	88(%rbx), %rsi
100007925: e9 98 00 00 00              	jmp	152 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi+0xd2>
10000792a: 45 31 e4                    	xorl	%r12d, %r12d
10000792d: e9 e7 00 00 00              	jmp	231 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi+0x129>
100007932: 41 bc ff ff ff ff           	movl	$4294967295, %r12d
100007938: f6 43 60 10                 	testb	$16, 96(%rbx)
10000793c: 0f 84 d7 00 00 00           	je	215 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi+0x129>
100007942: 48 8b 43 28                 	movq	40(%rbx), %rax
100007946: 48 89 45 c8                 	movq	%rax, -56(%rbp)
10000794a: 48 8b 43 58                 	movq	88(%rbx), %rax
10000794e: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100007952: 48 8d 7b 40                 	leaq	64(%rbx), %rdi
100007956: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
10000795a: 31 f6                       	xorl	%esi, %esi
10000795c: e8 a5 13 00 00              	callq	5029 <dyld_stub_binder+0x100008d06>
100007961: be 16 00 00 00              	movl	$22, %esi
100007966: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000796a: f6 07 01                    	testb	$1, (%rdi)
10000796d: 74 0a                       	je	10 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi+0x89>
10000796f: 48 8b 37                    	movq	(%rdi), %rsi
100007972: 48 83 e6 fe                 	andq	$-2, %rsi
100007976: 48 ff ce                    	decq	%rsi
100007979: 31 d2                       	xorl	%edx, %edx
10000797b: e8 80 13 00 00              	callq	4992 <dyld_stub_binder+0x100008d00>
100007980: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100007984: 49 29 c5                    	subq	%rax, %r13
100007987: 48 8b 75 c0                 	movq	-64(%rbp), %rsi
10000798b: 48 29 c6                    	subq	%rax, %rsi
10000798e: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100007992: 0f b6 01                    	movzbl	(%rcx), %eax
100007995: a8 01                       	testb	$1, %al
100007997: 75 08                       	jne	8 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi+0xb1>
100007999: 48 ff c1                    	incq	%rcx
10000799c: 48 d1 e8                    	shrq	%rax
10000799f: eb 08                       	jmp	8 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi+0xb9>
1000079a1: 48 8b 43 48                 	movq	72(%rbx), %rax
1000079a5: 48 8b 4b 50                 	movq	80(%rbx), %rcx
1000079a9: 48 01 c8                    	addq	%rcx, %rax
1000079ac: 48 89 4b 28                 	movq	%rcx, 40(%rbx)
1000079b0: 48 89 43 38                 	movq	%rax, 56(%rbx)
1000079b4: 49 01 cd                    	addq	%rcx, %r13
1000079b7: 4c 89 6b 30                 	movq	%r13, 48(%rbx)
1000079bb: 48 01 ce                    	addq	%rcx, %rsi
1000079be: 48 89 73 58                 	movq	%rsi, 88(%rbx)
1000079c2: 49 8d 4d 01                 	leaq	1(%r13), %rcx
1000079c6: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000079ca: 48 8d 53 58                 	leaq	88(%rbx), %rdx
1000079ce: 48 39 f1                    	cmpq	%rsi, %rcx
1000079d1: 48 8d 75 b8                 	leaq	-72(%rbp), %rsi
1000079d5: 48 0f 42 f2                 	cmovbq	%rdx, %rsi
1000079d9: 48 8b 16                    	movq	(%rsi), %rdx
1000079dc: 48 89 53 58                 	movq	%rdx, 88(%rbx)
1000079e0: f6 43 60 08                 	testb	$8, 96(%rbx)
1000079e4: 74 22                       	je	34 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi+0x118>
1000079e6: f6 43 40 01                 	testb	$1, 64(%rbx)
1000079ea: 75 09                       	jne	9 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi+0x105>
1000079ec: 48 8d 73 40                 	leaq	64(%rbx), %rsi
1000079f0: 48 ff c6                    	incq	%rsi
1000079f3: eb 04                       	jmp	4 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi+0x109>
1000079f5: 48 8b 73 50                 	movq	80(%rbx), %rsi
1000079f9: 49 01 f7                    	addq	%rsi, %r15
1000079fc: 48 89 73 10                 	movq	%rsi, 16(%rbx)
100007a00: 4c 89 7b 18                 	movq	%r15, 24(%rbx)
100007a04: 48 89 53 20                 	movq	%rdx, 32(%rbx)
100007a08: 49 39 c5                    	cmpq	%rax, %r13
100007a0b: 74 1e                       	je	30 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi+0x13b>
100007a0d: 48 89 4b 30                 	movq	%rcx, 48(%rbx)
100007a11: 45 88 75 00                 	movb	%r14b, (%r13)
100007a15: 45 0f b6 e6                 	movzbl	%r14b, %r12d
100007a19: 44 89 e0                    	movl	%r12d, %eax
100007a1c: 48 83 c4 28                 	addq	$40, %rsp
100007a20: 5b                          	popq	%rbx
100007a21: 41 5c                       	popq	%r12
100007a23: 41 5d                       	popq	%r13
100007a25: 41 5e                       	popq	%r14
100007a27: 41 5f                       	popq	%r15
100007a29: 5d                          	popq	%rbp
100007a2a: c3                          	retq
100007a2b: 41 0f b6 f6                 	movzbl	%r14b, %esi
100007a2f: 48 8b 03                    	movq	(%rbx), %rax
100007a32: 48 8b 40 68                 	movq	104(%rax), %rax
100007a36: 48 89 df                    	movq	%rbx, %rdi
100007a39: 48 83 c4 28                 	addq	$40, %rsp
100007a3d: 5b                          	popq	%rbx
100007a3e: 41 5c                       	popq	%r12
100007a40: 41 5d                       	popq	%r13
100007a42: 41 5e                       	popq	%r14
100007a44: 41 5f                       	popq	%r15
100007a46: 5d                          	popq	%rbp
100007a47: ff e0                       	jmpq	*%rax
100007a49: 48 89 c7                    	movq	%rax, %rdi
100007a4c: e8 39 13 00 00              	callq	4921 <dyld_stub_binder+0x100008d8a>
100007a51: e8 3a 13 00 00              	callq	4922 <dyld_stub_binder+0x100008d90>
100007a56: eb c1                       	jmp	-63 <__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE8overflowEi+0x129>
100007a58: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100007a60 __ZNSt3__120__shared_ptr_emplaceI2GoNS_9allocatorIS1_EEE21__on_zero_shared_weakEv:
100007a60: 55                          	pushq	%rbp
100007a61: 48 89 e5                    	movq	%rsp, %rbp
100007a64: 5d                          	popq	%rbp
100007a65: e9 02 13 00 00              	jmp	4866 <dyld_stub_binder+0x100008d6c>
100007a6a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100007a70 __ZN6GoMoveaSER8GameMove:
100007a70: 55                          	pushq	%rbp
100007a71: 48 89 e5                    	movq	%rsp, %rbp
100007a74: 53                          	pushq	%rbx
100007a75: 50                          	pushq	%rax
100007a76: 48 89 f0                    	movq	%rsi, %rax
100007a79: 48 89 fb                    	movq	%rdi, %rbx
100007a7c: 48 8b 35 b5 25 00 00        	movq	9653(%rip), %rsi
100007a83: 48 8b 15 a6 25 00 00        	movq	9638(%rip), %rdx
100007a8a: 48 89 c7                    	movq	%rax, %rdi
100007a8d: 31 c9                       	xorl	%ecx, %ecx
100007a8f: e8 0e 13 00 00              	callq	4878 <dyld_stub_binder+0x100008da2>
100007a94: 48 85 c0                    	testq	%rax, %rax
100007a97: 74 1c                       	je	28 <__ZN6GoMoveaSER8GameMove+0x45>
100007a99: 8b 48 08                    	movl	8(%rax), %ecx
100007a9c: 89 4b 08                    	movl	%ecx, 8(%rbx)
100007a9f: 8a 48 0c                    	movb	12(%rax), %cl
100007aa2: 88 4b 0c                    	movb	%cl, 12(%rbx)
100007aa5: 8a 40 0d                    	movb	13(%rax), %al
100007aa8: 88 43 0d                    	movb	%al, 13(%rbx)
100007aab: 48 89 d8                    	movq	%rbx, %rax
100007aae: 48 83 c4 08                 	addq	$8, %rsp
100007ab2: 5b                          	popq	%rbx
100007ab3: 5d                          	popq	%rbp
100007ab4: c3                          	retq
100007ab5: e8 ca 12 00 00              	callq	4810 <dyld_stub_binder+0x100008d84>
100007aba: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100007ac0 __ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m:
100007ac0: 55                          	pushq	%rbp
100007ac1: 48 89 e5                    	movq	%rsp, %rbp
100007ac4: 41 57                       	pushq	%r15
100007ac6: 41 56                       	pushq	%r14
100007ac8: 41 55                       	pushq	%r13
100007aca: 41 54                       	pushq	%r12
100007acc: 53                          	pushq	%rbx
100007acd: 48 83 ec 28                 	subq	$40, %rsp
100007ad1: 49 89 d6                    	movq	%rdx, %r14
100007ad4: 49 89 f7                    	movq	%rsi, %r15
100007ad7: 48 89 fb                    	movq	%rdi, %rbx
100007ada: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100007ade: 48 89 de                    	movq	%rbx, %rsi
100007ae1: e8 26 12 00 00              	callq	4646 <dyld_stub_binder+0x100008d0c>
100007ae6: 80 7d b0 00                 	cmpb	$0, -80(%rbp)
100007aea: 0f 84 ae 00 00 00           	je	174 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xde>
100007af0: 48 8b 03                    	movq	(%rbx), %rax
100007af3: 48 8b 40 e8                 	movq	-24(%rax), %rax
100007af7: 4c 8d 24 03                 	leaq	(%rbx,%rax), %r12
100007afb: 48 8b 7c 03 28              	movq	40(%rbx,%rax), %rdi
100007b00: 44 8b 6c 03 08              	movl	8(%rbx,%rax), %r13d
100007b05: 8b 84 03 90 00 00 00        	movl	144(%rbx,%rax), %eax
100007b0c: 83 f8 ff                    	cmpl	$-1, %eax
100007b0f: 75 4a                       	jne	74 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x9b>
100007b11: 48 89 7d c0                 	movq	%rdi, -64(%rbp)
100007b15: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007b19: 4c 89 e6                    	movq	%r12, %rsi
100007b1c: e8 d3 11 00 00              	callq	4563 <dyld_stub_binder+0x100008cf4>
100007b21: 48 8b 35 f0 24 00 00        	movq	9456(%rip), %rsi
100007b28: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007b2c: e8 bd 11 00 00              	callq	4541 <dyld_stub_binder+0x100008cee>
100007b31: 48 8b 08                    	movq	(%rax), %rcx
100007b34: 48 89 c7                    	movq	%rax, %rdi
100007b37: be 20 00 00 00              	movl	$32, %esi
100007b3c: ff 51 38                    	callq	*56(%rcx)
100007b3f: 88 45 d7                    	movb	%al, -41(%rbp)
100007b42: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007b46: e8 f7 11 00 00              	callq	4599 <dyld_stub_binder+0x100008d42>
100007b4b: 0f be 45 d7                 	movsbl	-41(%rbp), %eax
100007b4f: 41 89 84 24 90 00 00 00     	movl	%eax, 144(%r12)
100007b57: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100007b5b: 4d 01 fe                    	addq	%r15, %r14
100007b5e: 41 81 e5 b0 00 00 00        	andl	$176, %r13d
100007b65: 41 83 fd 20                 	cmpl	$32, %r13d
100007b69: 4c 89 fa                    	movq	%r15, %rdx
100007b6c: 49 0f 44 d6                 	cmoveq	%r14, %rdx
100007b70: 44 0f be c8                 	movsbl	%al, %r9d
100007b74: 4c 89 fe                    	movq	%r15, %rsi
100007b77: 4c 89 f1                    	movq	%r14, %rcx
100007b7a: 4d 89 e0                    	movq	%r12, %r8
100007b7d: e8 9e 00 00 00              	callq	158 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
100007b82: 48 85 c0                    	testq	%rax, %rax
100007b85: 75 17                       	jne	23 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xde>
100007b87: 48 8b 03                    	movq	(%rbx), %rax
100007b8a: 48 8b 40 e8                 	movq	-24(%rax), %rax
100007b8e: 48 8d 3c 03                 	leaq	(%rbx,%rax), %rdi
100007b92: 8b 74 03 20                 	movl	32(%rbx,%rax), %esi
100007b96: 83 ce 05                    	orl	$5, %esi
100007b99: e8 b6 11 00 00              	callq	4534 <dyld_stub_binder+0x100008d54>
100007b9e: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100007ba2: e8 6b 11 00 00              	callq	4459 <dyld_stub_binder+0x100008d12>
100007ba7: 48 89 d8                    	movq	%rbx, %rax
100007baa: 48 83 c4 28                 	addq	$40, %rsp
100007bae: 5b                          	popq	%rbx
100007baf: 41 5c                       	popq	%r12
100007bb1: 41 5d                       	popq	%r13
100007bb3: 41 5e                       	popq	%r14
100007bb5: 41 5f                       	popq	%r15
100007bb7: 5d                          	popq	%rbp
100007bb8: c3                          	retq
100007bb9: eb 0e                       	jmp	14 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x109>
100007bbb: 49 89 c6                    	movq	%rax, %r14
100007bbe: 48 8d 7d c8                 	leaq	-56(%rbp), %rdi
100007bc2: e8 7b 11 00 00              	callq	4475 <dyld_stub_binder+0x100008d42>
100007bc7: eb 03                       	jmp	3 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x10c>
100007bc9: 49 89 c6                    	movq	%rax, %r14
100007bcc: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100007bd0: e8 3d 11 00 00              	callq	4413 <dyld_stub_binder+0x100008d12>
100007bd5: eb 03                       	jmp	3 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x11a>
100007bd7: 49 89 c6                    	movq	%rax, %r14
100007bda: 4c 89 f7                    	movq	%r14, %rdi
100007bdd: e8 a8 11 00 00              	callq	4520 <dyld_stub_binder+0x100008d8a>
100007be2: 48 8b 03                    	movq	(%rbx), %rax
100007be5: 48 8b 78 e8                 	movq	-24(%rax), %rdi
100007be9: 48 01 df                    	addq	%rbx, %rdi
100007bec: e8 57 11 00 00              	callq	4439 <dyld_stub_binder+0x100008d48>
100007bf1: e8 9a 11 00 00              	callq	4506 <dyld_stub_binder+0x100008d90>
100007bf6: eb af                       	jmp	-81 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xe7>
100007bf8: 48 89 c3                    	movq	%rax, %rbx
100007bfb: e8 90 11 00 00              	callq	4496 <dyld_stub_binder+0x100008d90>
100007c00: 48 89 df                    	movq	%rbx, %rdi
100007c03: e8 da 10 00 00              	callq	4314 <dyld_stub_binder+0x100008ce2>
100007c08: 0f 0b                       	ud2
100007c0a: 48 89 c7                    	movq	%rax, %rdi
100007c0d: e8 6e d0 ff ff              	callq	-12178 <___clang_call_terminate>
100007c12: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007c1c: 0f 1f 40 00                 	nopl	(%rax)

0000000100007c20 __ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_:
100007c20: 55                          	pushq	%rbp
100007c21: 48 89 e5                    	movq	%rsp, %rbp
100007c24: 41 57                       	pushq	%r15
100007c26: 41 56                       	pushq	%r14
100007c28: 41 55                       	pushq	%r13
100007c2a: 41 54                       	pushq	%r12
100007c2c: 53                          	pushq	%rbx
100007c2d: 48 83 ec 38                 	subq	$56, %rsp
100007c31: 48 85 ff                    	testq	%rdi, %rdi
100007c34: 0f 84 15 01 00 00           	je	277 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x12f>
100007c3a: 4d 89 c4                    	movq	%r8, %r12
100007c3d: 49 89 cf                    	movq	%rcx, %r15
100007c40: 49 89 fe                    	movq	%rdi, %r14
100007c43: 44 89 4d bc                 	movl	%r9d, -68(%rbp)
100007c47: 48 89 c8                    	movq	%rcx, %rax
100007c4a: 48 29 f0                    	subq	%rsi, %rax
100007c4d: 49 8b 48 18                 	movq	24(%r8), %rcx
100007c51: 45 31 ed                    	xorl	%r13d, %r13d
100007c54: 48 29 c1                    	subq	%rax, %rcx
100007c57: 4c 0f 4f e9                 	cmovgq	%rcx, %r13
100007c5b: 48 89 55 a8                 	movq	%rdx, -88(%rbp)
100007c5f: 48 89 d3                    	movq	%rdx, %rbx
100007c62: 48 29 f3                    	subq	%rsi, %rbx
100007c65: 48 85 db                    	testq	%rbx, %rbx
100007c68: 7e 15                       	jle	21 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x5f>
100007c6a: 49 8b 06                    	movq	(%r14), %rax
100007c6d: 4c 89 f7                    	movq	%r14, %rdi
100007c70: 48 89 da                    	movq	%rbx, %rdx
100007c73: ff 50 60                    	callq	*96(%rax)
100007c76: 48 39 d8                    	cmpq	%rbx, %rax
100007c79: 0f 85 d0 00 00 00           	jne	208 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x12f>
100007c7f: 4d 85 ed                    	testq	%r13, %r13
100007c82: 0f 8e 9f 00 00 00           	jle	159 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x107>
100007c88: 4c 89 65 b0                 	movq	%r12, -80(%rbp)
100007c8c: 0f 57 c0                    	xorps	%xmm0, %xmm0
100007c8f: 0f 29 45 c0                 	movaps	%xmm0, -64(%rbp)
100007c93: 48 c7 45 d0 00 00 00 00     	movq	$0, -48(%rbp)
100007c9b: 49 83 fd 17                 	cmpq	$23, %r13
100007c9f: 73 12                       	jae	18 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x93>
100007ca1: 43 8d 44 2d 00              	leal	(%r13,%r13), %eax
100007ca6: 88 45 c0                    	movb	%al, -64(%rbp)
100007ca9: 48 8d 5d c0                 	leaq	-64(%rbp), %rbx
100007cad: 4c 8d 65 c1                 	leaq	-63(%rbp), %r12
100007cb1: eb 27                       	jmp	39 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xba>
100007cb3: 49 8d 5d 10                 	leaq	16(%r13), %rbx
100007cb7: 48 83 e3 f0                 	andq	$-16, %rbx
100007cbb: 48 89 df                    	movq	%rbx, %rdi
100007cbe: e8 af 10 00 00              	callq	4271 <dyld_stub_binder+0x100008d72>
100007cc3: 49 89 c4                    	movq	%rax, %r12
100007cc6: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100007cca: 48 83 cb 01                 	orq	$1, %rbx
100007cce: 48 89 5d c0                 	movq	%rbx, -64(%rbp)
100007cd2: 4c 89 6d c8                 	movq	%r13, -56(%rbp)
100007cd6: 48 8d 5d c0                 	leaq	-64(%rbp), %rbx
100007cda: 0f b6 75 bc                 	movzbl	-68(%rbp), %esi
100007cde: 4c 89 e7                    	movq	%r12, %rdi
100007ce1: 4c 89 ea                    	movq	%r13, %rdx
100007ce4: e8 dd 10 00 00              	callq	4317 <dyld_stub_binder+0x100008dc6>
100007ce9: 43 c6 04 2c 00              	movb	$0, (%r12,%r13)
100007cee: f6 45 c0 01                 	testb	$1, -64(%rbp)
100007cf2: 74 06                       	je	6 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xda>
100007cf4: 48 8b 5d d0                 	movq	-48(%rbp), %rbx
100007cf8: eb 03                       	jmp	3 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdd>
100007cfa: 48 ff c3                    	incq	%rbx
100007cfd: 4c 8b 65 b0                 	movq	-80(%rbp), %r12
100007d01: 49 8b 06                    	movq	(%r14), %rax
100007d04: 4c 89 f7                    	movq	%r14, %rdi
100007d07: 48 89 de                    	movq	%rbx, %rsi
100007d0a: 4c 89 ea                    	movq	%r13, %rdx
100007d0d: ff 50 60                    	callq	*96(%rax)
100007d10: 48 89 c3                    	movq	%rax, %rbx
100007d13: f6 45 c0 01                 	testb	$1, -64(%rbp)
100007d17: 74 09                       	je	9 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x102>
100007d19: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100007d1d: e8 4a 10 00 00              	callq	4170 <dyld_stub_binder+0x100008d6c>
100007d22: 4c 39 eb                    	cmpq	%r13, %rbx
100007d25: 75 28                       	jne	40 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x12f>
100007d27: 48 8b 75 a8                 	movq	-88(%rbp), %rsi
100007d2b: 49 29 f7                    	subq	%rsi, %r15
100007d2e: 4d 85 ff                    	testq	%r15, %r15
100007d31: 7e 11                       	jle	17 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x124>
100007d33: 49 8b 06                    	movq	(%r14), %rax
100007d36: 4c 89 f7                    	movq	%r14, %rdi
100007d39: 4c 89 fa                    	movq	%r15, %rdx
100007d3c: ff 50 60                    	callq	*96(%rax)
100007d3f: 4c 39 f8                    	cmpq	%r15, %rax
100007d42: 75 0b                       	jne	11 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x12f>
100007d44: 49 c7 44 24 18 00 00 00 00  	movq	$0, 24(%r12)
100007d4d: eb 03                       	jmp	3 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x132>
100007d4f: 45 31 f6                    	xorl	%r14d, %r14d
100007d52: 4c 89 f0                    	movq	%r14, %rax
100007d55: 48 83 c4 38                 	addq	$56, %rsp
100007d59: 5b                          	popq	%rbx
100007d5a: 41 5c                       	popq	%r12
100007d5c: 41 5d                       	popq	%r13
100007d5e: 41 5e                       	popq	%r14
100007d60: 41 5f                       	popq	%r15
100007d62: 5d                          	popq	%rbp
100007d63: c3                          	retq
100007d64: 48 89 c3                    	movq	%rax, %rbx
100007d67: f6 45 c0 01                 	testb	$1, -64(%rbp)
100007d6b: 74 09                       	je	9 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x156>
100007d6d: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100007d71: e8 f6 0f 00 00              	callq	4086 <dyld_stub_binder+0x100008d6c>
100007d76: 48 89 df                    	movq	%rbx, %rdi
100007d79: e8 64 0f 00 00              	callq	3940 <dyld_stub_binder+0x100008ce2>
100007d7e: 0f 0b                       	ud2

0000000100007d80 __ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv:
100007d80: 55                          	pushq	%rbp
100007d81: 48 89 e5                    	movq	%rsp, %rbp
100007d84: 41 57                       	pushq	%r15
100007d86: 41 56                       	pushq	%r14
100007d88: 41 55                       	pushq	%r13
100007d8a: 41 54                       	pushq	%r12
100007d8c: 53                          	pushq	%rbx
100007d8d: 50                          	pushq	%rax
100007d8e: 49 89 fe                    	movq	%rdi, %r14
100007d91: 8b 46 60                    	movl	96(%rsi), %eax
100007d94: a8 10                       	testb	$16, %al
100007d96: 75 24                       	jne	36 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x3c>
100007d98: a8 08                       	testb	$8, %al
100007d9a: 0f 85 cc 00 00 00           	jne	204 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0xec>
100007da0: 49 c7 46 10 00 00 00 00     	movq	$0, 16(%r14)
100007da8: 49 c7 46 08 00 00 00 00     	movq	$0, 8(%r14)
100007db0: 49 c7 06 00 00 00 00        	movq	$0, (%r14)
100007db7: e9 27 03 00 00              	jmp	807 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x363>
100007dbc: 48 8b 46 30                 	movq	48(%rsi), %rax
100007dc0: 4c 8b 66 58                 	movq	88(%rsi), %r12
100007dc4: 49 39 c4                    	cmpq	%rax, %r12
100007dc7: 73 07                       	jae	7 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x50>
100007dc9: 48 89 46 58                 	movq	%rax, 88(%rsi)
100007dcd: 49 89 c4                    	movq	%rax, %r12
100007dd0: 48 8b 5e 28                 	movq	40(%rsi), %rbx
100007dd4: 49 c7 46 10 00 00 00 00     	movq	$0, 16(%r14)
100007ddc: 49 c7 46 08 00 00 00 00     	movq	$0, 8(%r14)
100007de4: 49 c7 06 00 00 00 00        	movq	$0, (%r14)
100007deb: 4d 89 e5                    	movq	%r12, %r13
100007dee: 49 29 dd                    	subq	%rbx, %r13
100007df1: 49 83 fd f0                 	cmpq	$-16, %r13
100007df5: 0f 83 fa 02 00 00           	jae	762 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x375>
100007dfb: 49 83 fd 16                 	cmpq	$22, %r13
100007dff: 0f 87 07 01 00 00           	ja	263 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x18c>
100007e05: 43 8d 44 2d 00              	leal	(%r13,%r13), %eax
100007e0a: 41 88 06                    	movb	%al, (%r14)
100007e0d: 4c 89 f0                    	movq	%r14, %rax
100007e10: 48 ff c0                    	incq	%rax
100007e13: 4c 39 e3                    	cmpq	%r12, %rbx
100007e16: 0f 84 c4 02 00 00           	je	708 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x360>
100007e1c: 49 83 fd 20                 	cmpq	$32, %r13
100007e20: 0f 82 ea 01 00 00           	jb	490 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x290>
100007e26: 4c 39 e0                    	cmpq	%r12, %rax
100007e29: 73 0d                       	jae	13 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0xb8>
100007e2b: 4a 8d 0c 28                 	leaq	(%rax,%r13), %rcx
100007e2f: 48 39 cb                    	cmpq	%rcx, %rbx
100007e32: 0f 82 d8 01 00 00           	jb	472 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x290>
100007e38: 4c 89 e9                    	movq	%r13, %rcx
100007e3b: 48 83 e1 e0                 	andq	$-32, %rcx
100007e3f: 48 8d 71 e0                 	leaq	-32(%rcx), %rsi
100007e43: 48 89 f7                    	movq	%rsi, %rdi
100007e46: 48 c1 ef 05                 	shrq	$5, %rdi
100007e4a: 48 ff c7                    	incq	%rdi
100007e4d: 89 fa                       	movl	%edi, %edx
100007e4f: 83 e2 03                    	andl	$3, %edx
100007e52: 48 83 fe 60                 	cmpq	$96, %rsi
100007e56: 0f 83 0a 01 00 00           	jae	266 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x1e6>
100007e5c: 31 f6                       	xorl	%esi, %esi
100007e5e: 48 85 d2                    	testq	%rdx, %rdx
100007e61: 0f 85 66 01 00 00           	jne	358 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x24d>
100007e67: e9 8f 01 00 00              	jmp	399 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x27b>
100007e6c: 48 8b 5e 10                 	movq	16(%rsi), %rbx
100007e70: 4c 8b 66 20                 	movq	32(%rsi), %r12
100007e74: 49 c7 46 10 00 00 00 00     	movq	$0, 16(%r14)
100007e7c: 49 c7 46 08 00 00 00 00     	movq	$0, 8(%r14)
100007e84: 49 c7 06 00 00 00 00        	movq	$0, (%r14)
100007e8b: 4d 89 e5                    	movq	%r12, %r13
100007e8e: 49 29 dd                    	subq	%rbx, %r13
100007e91: 49 83 fd f0                 	cmpq	$-16, %r13
100007e95: 0f 83 5a 02 00 00           	jae	602 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x375>
100007e9b: 49 83 fd 16                 	cmpq	$22, %r13
100007e9f: 0f 87 94 00 00 00           	ja	148 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x1b9>
100007ea5: 43 8d 44 2d 00              	leal	(%r13,%r13), %eax
100007eaa: 41 88 06                    	movb	%al, (%r14)
100007ead: 4c 89 f0                    	movq	%r14, %rax
100007eb0: 48 ff c0                    	incq	%rax
100007eb3: 4c 39 e3                    	cmpq	%r12, %rbx
100007eb6: 0f 84 24 02 00 00           	je	548 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x360>
100007ebc: 49 83 fd 20                 	cmpq	$32, %r13
100007ec0: 0f 82 0a 02 00 00           	jb	522 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x350>
100007ec6: 4c 39 e0                    	cmpq	%r12, %rax
100007ec9: 73 0d                       	jae	13 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x158>
100007ecb: 4a 8d 0c 28                 	leaq	(%rax,%r13), %rcx
100007ecf: 48 39 cb                    	cmpq	%rcx, %rbx
100007ed2: 0f 82 f8 01 00 00           	jb	504 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x350>
100007ed8: 4c 89 e9                    	movq	%r13, %rcx
100007edb: 48 83 e1 e0                 	andq	$-32, %rcx
100007edf: 48 8d 79 e0                 	leaq	-32(%rcx), %rdi
100007ee3: 48 89 fe                    	movq	%rdi, %rsi
100007ee6: 48 c1 ee 05                 	shrq	$5, %rsi
100007eea: 48 ff c6                    	incq	%rsi
100007eed: 89 f2                       	movl	%esi, %edx
100007eef: 83 e2 03                    	andl	$3, %edx
100007ef2: 48 83 ff 60                 	cmpq	$96, %rdi
100007ef6: 0f 83 29 01 00 00           	jae	297 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x2a5>
100007efc: 31 f6                       	xorl	%esi, %esi
100007efe: 48 85 d2                    	testq	%rdx, %rdx
100007f01: 0f 85 86 01 00 00           	jne	390 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x30d>
100007f07: e9 af 01 00 00              	jmp	431 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x33b>
100007f0c: 4d 8d 7d 10                 	leaq	16(%r13), %r15
100007f10: 49 83 e7 f0                 	andq	$-16, %r15
100007f14: 4c 89 ff                    	movq	%r15, %rdi
100007f17: e8 56 0e 00 00              	callq	3670 <dyld_stub_binder+0x100008d72>
100007f1c: 49 89 46 10                 	movq	%rax, 16(%r14)
100007f20: 49 83 cf 01                 	orq	$1, %r15
100007f24: 4d 89 3e                    	movq	%r15, (%r14)
100007f27: 4d 89 6e 08                 	movq	%r13, 8(%r14)
100007f2b: 4c 39 e3                    	cmpq	%r12, %rbx
100007f2e: 0f 85 e8 fe ff ff           	jne	-280 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x9c>
100007f34: e9 a7 01 00 00              	jmp	423 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x360>
100007f39: 4d 8d 7d 10                 	leaq	16(%r13), %r15
100007f3d: 49 83 e7 f0                 	andq	$-16, %r15
100007f41: 4c 89 ff                    	movq	%r15, %rdi
100007f44: e8 29 0e 00 00              	callq	3625 <dyld_stub_binder+0x100008d72>
100007f49: 49 89 46 10                 	movq	%rax, 16(%r14)
100007f4d: 49 83 cf 01                 	orq	$1, %r15
100007f51: 4d 89 3e                    	movq	%r15, (%r14)
100007f54: 4d 89 6e 08                 	movq	%r13, 8(%r14)
100007f58: 4c 39 e3                    	cmpq	%r12, %rbx
100007f5b: 0f 85 5b ff ff ff           	jne	-165 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x13c>
100007f61: e9 7a 01 00 00              	jmp	378 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x360>
100007f66: 48 29 d7                    	subq	%rdx, %rdi
100007f69: 31 f6                       	xorl	%esi, %esi
100007f6b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100007f70: 0f 10 04 33                 	movups	(%rbx,%rsi), %xmm0
100007f74: 0f 10 4c 33 10              	movups	16(%rbx,%rsi), %xmm1
100007f79: 0f 11 04 30                 	movups	%xmm0, (%rax,%rsi)
100007f7d: 0f 11 4c 30 10              	movups	%xmm1, 16(%rax,%rsi)
100007f82: 0f 10 44 33 20              	movups	32(%rbx,%rsi), %xmm0
100007f87: 0f 10 4c 33 30              	movups	48(%rbx,%rsi), %xmm1
100007f8c: 0f 11 44 30 20              	movups	%xmm0, 32(%rax,%rsi)
100007f91: 0f 11 4c 30 30              	movups	%xmm1, 48(%rax,%rsi)
100007f96: 0f 10 44 33 40              	movups	64(%rbx,%rsi), %xmm0
100007f9b: 0f 10 4c 33 50              	movups	80(%rbx,%rsi), %xmm1
100007fa0: 0f 11 44 30 40              	movups	%xmm0, 64(%rax,%rsi)
100007fa5: 0f 11 4c 30 50              	movups	%xmm1, 80(%rax,%rsi)
100007faa: 0f 10 44 33 60              	movups	96(%rbx,%rsi), %xmm0
100007faf: 0f 10 4c 33 70              	movups	112(%rbx,%rsi), %xmm1
100007fb4: 0f 11 44 30 60              	movups	%xmm0, 96(%rax,%rsi)
100007fb9: 0f 11 4c 30 70              	movups	%xmm1, 112(%rax,%rsi)
100007fbe: 48 83 ee 80                 	subq	$-128, %rsi
100007fc2: 48 83 c7 fc                 	addq	$-4, %rdi
100007fc6: 75 a8                       	jne	-88 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x1f0>
100007fc8: 48 85 d2                    	testq	%rdx, %rdx
100007fcb: 74 2e                       	je	46 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x27b>
100007fcd: 48 83 c6 10                 	addq	$16, %rsi
100007fd1: 48 f7 da                    	negq	%rdx
100007fd4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007fde: 66 90                       	nop
100007fe0: 0f 10 44 33 f0              	movups	-16(%rbx,%rsi), %xmm0
100007fe5: 0f 10 0c 33                 	movups	(%rbx,%rsi), %xmm1
100007fe9: 0f 11 44 30 f0              	movups	%xmm0, -16(%rax,%rsi)
100007fee: 0f 11 0c 30                 	movups	%xmm1, (%rax,%rsi)
100007ff2: 48 83 c6 20                 	addq	$32, %rsi
100007ff6: 48 ff c2                    	incq	%rdx
100007ff9: 75 e5                       	jne	-27 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x260>
100007ffb: 48 01 c8                    	addq	%rcx, %rax
100007ffe: 4c 39 e9                    	cmpq	%r13, %rcx
100008001: 0f 84 d9 00 00 00           	je	217 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x360>
100008007: 48 01 cb                    	addq	%rcx, %rbx
10000800a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)
100008010: 0f b6 0b                    	movzbl	(%rbx), %ecx
100008013: 88 08                       	movb	%cl, (%rax)
100008015: 48 ff c3                    	incq	%rbx
100008018: 48 ff c0                    	incq	%rax
10000801b: 49 39 dc                    	cmpq	%rbx, %r12
10000801e: 75 f0                       	jne	-16 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x290>
100008020: e9 bb 00 00 00              	jmp	187 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x360>
100008025: 48 89 d7                    	movq	%rdx, %rdi
100008028: 48 29 f7                    	subq	%rsi, %rdi
10000802b: 31 f6                       	xorl	%esi, %esi
10000802d: 0f 1f 00                    	nopl	(%rax)
100008030: 0f 10 04 33                 	movups	(%rbx,%rsi), %xmm0
100008034: 0f 10 4c 33 10              	movups	16(%rbx,%rsi), %xmm1
100008039: 0f 11 04 30                 	movups	%xmm0, (%rax,%rsi)
10000803d: 0f 11 4c 30 10              	movups	%xmm1, 16(%rax,%rsi)
100008042: 0f 10 44 33 20              	movups	32(%rbx,%rsi), %xmm0
100008047: 0f 10 4c 33 30              	movups	48(%rbx,%rsi), %xmm1
10000804c: 0f 11 44 30 20              	movups	%xmm0, 32(%rax,%rsi)
100008051: 0f 11 4c 30 30              	movups	%xmm1, 48(%rax,%rsi)
100008056: 0f 10 44 33 40              	movups	64(%rbx,%rsi), %xmm0
10000805b: 0f 10 4c 33 50              	movups	80(%rbx,%rsi), %xmm1
100008060: 0f 11 44 30 40              	movups	%xmm0, 64(%rax,%rsi)
100008065: 0f 11 4c 30 50              	movups	%xmm1, 80(%rax,%rsi)
10000806a: 0f 10 44 33 60              	movups	96(%rbx,%rsi), %xmm0
10000806f: 0f 10 4c 33 70              	movups	112(%rbx,%rsi), %xmm1
100008074: 0f 11 44 30 60              	movups	%xmm0, 96(%rax,%rsi)
100008079: 0f 11 4c 30 70              	movups	%xmm1, 112(%rax,%rsi)
10000807e: 48 83 ee 80                 	subq	$-128, %rsi
100008082: 48 83 c7 04                 	addq	$4, %rdi
100008086: 75 a8                       	jne	-88 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x2b0>
100008088: 48 85 d2                    	testq	%rdx, %rdx
10000808b: 74 2e                       	je	46 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x33b>
10000808d: 48 83 c6 10                 	addq	$16, %rsi
100008091: 48 f7 da                    	negq	%rdx
100008094: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000809e: 66 90                       	nop
1000080a0: 0f 10 44 33 f0              	movups	-16(%rbx,%rsi), %xmm0
1000080a5: 0f 10 0c 33                 	movups	(%rbx,%rsi), %xmm1
1000080a9: 0f 11 44 30 f0              	movups	%xmm0, -16(%rax,%rsi)
1000080ae: 0f 11 0c 30                 	movups	%xmm1, (%rax,%rsi)
1000080b2: 48 83 c6 20                 	addq	$32, %rsi
1000080b6: 48 ff c2                    	incq	%rdx
1000080b9: 75 e5                       	jne	-27 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x320>
1000080bb: 48 01 c8                    	addq	%rcx, %rax
1000080be: 49 39 cd                    	cmpq	%rcx, %r13
1000080c1: 74 1d                       	je	29 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x360>
1000080c3: 48 01 cb                    	addq	%rcx, %rbx
1000080c6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000080d0: 0f b6 0b                    	movzbl	(%rbx), %ecx
1000080d3: 88 08                       	movb	%cl, (%rax)
1000080d5: 48 ff c3                    	incq	%rbx
1000080d8: 48 ff c0                    	incq	%rax
1000080db: 49 39 dc                    	cmpq	%rbx, %r12
1000080de: 75 f0                       	jne	-16 <__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strEv+0x350>
1000080e0: c6 00 00                    	movb	$0, (%rax)
1000080e3: 4c 89 f0                    	movq	%r14, %rax
1000080e6: 48 83 c4 08                 	addq	$8, %rsp
1000080ea: 5b                          	popq	%rbx
1000080eb: 41 5c                       	popq	%r12
1000080ed: 41 5d                       	popq	%r13
1000080ef: 41 5e                       	popq	%r14
1000080f1: 41 5f                       	popq	%r15
1000080f3: 5d                          	popq	%rbp
1000080f4: c3                          	retq
1000080f5: 4c 89 f7                    	movq	%r14, %rdi
1000080f8: e8 eb 0b 00 00              	callq	3051 <dyld_stub_binder+0x100008ce8>
1000080fd: 0f 1f 00                    	nopl	(%rax)

0000000100008100 __ZNSt3__1L25__throw_bad_function_callEv:
100008100: 55                          	pushq	%rbp
100008101: 48 89 e5                    	movq	%rsp, %rbp
100008104: bf 08 00 00 00              	movl	$8, %edi
100008109: e8 70 0c 00 00              	callq	3184 <dyld_stub_binder+0x100008d7e>
10000810e: 48 8b 0d 53 1f 00 00        	movq	8019(%rip), %rcx
100008115: 48 83 c1 10                 	addq	$16, %rcx
100008119: 48 89 08                    	movq	%rcx, (%rax)
10000811c: 48 8b 35 1d 1f 00 00        	movq	7965(%rip), %rsi
100008123: 48 8b 15 e6 1e 00 00        	movq	7910(%rip), %rdx
10000812a: 48 89 c7                    	movq	%rax, %rdi
10000812d: e8 6a 0c 00 00              	callq	3178 <dyld_stub_binder+0x100008d9c>
100008132: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000813c: 0f 1f 40 00                 	nopl	(%rax)

0000000100008140 __ZNSt3__117bad_function_callD1Ev:
100008140: 55                          	pushq	%rbp
100008141: 48 89 e5                    	movq	%rsp, %rbp
100008144: 5d                          	popq	%rbp
100008145: e9 16 0c 00 00              	jmp	3094 <dyld_stub_binder+0x100008d60>
10000814a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100008150 __ZNSt3__117bad_function_callD0Ev:
100008150: 55                          	pushq	%rbp
100008151: 48 89 e5                    	movq	%rsp, %rbp
100008154: 53                          	pushq	%rbx
100008155: 50                          	pushq	%rax
100008156: 48 89 fb                    	movq	%rdi, %rbx
100008159: e8 02 0c 00 00              	callq	3074 <dyld_stub_binder+0x100008d60>
10000815e: 48 89 df                    	movq	%rbx, %rdi
100008161: 48 83 c4 08                 	addq	$8, %rsp
100008165: 5b                          	popq	%rbx
100008166: 5d                          	popq	%rbp
100008167: e9 00 0c 00 00              	jmp	3072 <dyld_stub_binder+0x100008d6c>
10000816c: 0f 1f 40 00                 	nopl	(%rax)

0000000100008170 __ZNSt3__120__shared_ptr_emplaceI2GoNS_9allocatorIS1_EEED1Ev:
100008170: 55                          	pushq	%rbp
100008171: 48 89 e5                    	movq	%rsp, %rbp
100008174: 53                          	pushq	%rbx
100008175: 50                          	pushq	%rax
100008176: 48 89 fb                    	movq	%rdi, %rbx
100008179: 48 8b 05 f8 1e 00 00        	movq	7928(%rip), %rax
100008180: 48 83 c0 10                 	addq	$16, %rax
100008184: 48 89 07                    	movq	%rax, (%rdi)
100008187: 48 8d 05 22 1f 00 00        	leaq	7970(%rip), %rax
10000818e: 48 89 47 18                 	movq	%rax, 24(%rdi)
100008192: 48 8b 7f 48                 	movq	72(%rdi), %rdi
100008196: 48 85 ff                    	testq	%rdi, %rdi
100008199: 74 05                       	je	5 <__ZNSt3__120__shared_ptr_emplaceI2GoNS_9allocatorIS1_EEED1Ev+0x30>
10000819b: e8 14 0c 00 00              	callq	3092 <dyld_stub_binder+0x100008db4>
1000081a0: 48 89 df                    	movq	%rbx, %rdi
1000081a3: 48 83 c4 08                 	addq	$8, %rsp
1000081a7: 5b                          	popq	%rbx
1000081a8: 5d                          	popq	%rbp
1000081a9: e9 8e 0b 00 00              	jmp	2958 <dyld_stub_binder+0x100008d3c>
1000081ae: 66 90                       	nop

00000001000081b0 __ZNSt3__120__shared_ptr_emplaceI2GoNS_9allocatorIS1_EEED0Ev:
1000081b0: 55                          	pushq	%rbp
1000081b1: 48 89 e5                    	movq	%rsp, %rbp
1000081b4: 53                          	pushq	%rbx
1000081b5: 50                          	pushq	%rax
1000081b6: 48 89 fb                    	movq	%rdi, %rbx
1000081b9: 48 8b 05 b8 1e 00 00        	movq	7864(%rip), %rax
1000081c0: 48 83 c0 10                 	addq	$16, %rax
1000081c4: 48 89 07                    	movq	%rax, (%rdi)
1000081c7: 48 8d 05 e2 1e 00 00        	leaq	7906(%rip), %rax
1000081ce: 48 89 47 18                 	movq	%rax, 24(%rdi)
1000081d2: 48 8b 7f 48                 	movq	72(%rdi), %rdi
1000081d6: 48 85 ff                    	testq	%rdi, %rdi
1000081d9: 74 05                       	je	5 <__ZNSt3__120__shared_ptr_emplaceI2GoNS_9allocatorIS1_EEED0Ev+0x30>
1000081db: e8 d4 0b 00 00              	callq	3028 <dyld_stub_binder+0x100008db4>
1000081e0: 48 89 df                    	movq	%rbx, %rdi
1000081e3: e8 54 0b 00 00              	callq	2900 <dyld_stub_binder+0x100008d3c>
1000081e8: 48 89 df                    	movq	%rbx, %rdi
1000081eb: 48 83 c4 08                 	addq	$8, %rsp
1000081ef: 5b                          	popq	%rbx
1000081f0: 5d                          	popq	%rbp
1000081f1: e9 76 0b 00 00              	jmp	2934 <dyld_stub_binder+0x100008d6c>
1000081f6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100008200 __ZNSt3__120__shared_ptr_emplaceI2GoNS_9allocatorIS1_EEE16__on_zero_sharedEv:
100008200: 55                          	pushq	%rbp
100008201: 48 89 e5                    	movq	%rsp, %rbp
100008204: 48 8b 47 18                 	movq	24(%rdi), %rax
100008208: 48 83 c7 18                 	addq	$24, %rdi
10000820c: 5d                          	popq	%rbp
10000820d: ff 20                       	jmpq	*(%rax)
10000820f: 90                          	nop

0000000100008210 __ZNSt3__110__function6__funcIZNK2Go10print_libsERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_0NS_9allocatorIS8_EEFPKciiEED1Ev:
100008210: 55                          	pushq	%rbp
100008211: 48 89 e5                    	movq	%rsp, %rbp
100008214: 5d                          	popq	%rbp
100008215: c3                          	retq
100008216: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100008220 __ZNSt3__110__function6__funcIZNK2Go10print_libsERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_0NS_9allocatorIS8_EEFPKciiEED0Ev:
100008220: 55                          	pushq	%rbp
100008221: 48 89 e5                    	movq	%rsp, %rbp
100008224: 5d                          	popq	%rbp
100008225: e9 42 0b 00 00              	jmp	2882 <dyld_stub_binder+0x100008d6c>
10000822a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100008230 __ZNKSt3__110__function6__funcIZNK2Go10print_libsERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_0NS_9allocatorIS8_EEFPKciiEE7__cloneEv:
100008230: 55                          	pushq	%rbp
100008231: 48 89 e5                    	movq	%rsp, %rbp
100008234: 53                          	pushq	%rbx
100008235: 50                          	pushq	%rax
100008236: 48 89 fb                    	movq	%rdi, %rbx
100008239: bf 10 00 00 00              	movl	$16, %edi
10000823e: e8 2f 0b 00 00              	callq	2863 <dyld_stub_binder+0x100008d72>
100008243: 48 8d 0d 8e 21 00 00        	leaq	8590(%rip), %rcx
10000824a: 48 89 08                    	movq	%rcx, (%rax)
10000824d: 48 8b 4b 08                 	movq	8(%rbx), %rcx
100008251: 48 89 48 08                 	movq	%rcx, 8(%rax)
100008255: 48 83 c4 08                 	addq	$8, %rsp
100008259: 5b                          	popq	%rbx
10000825a: 5d                          	popq	%rbp
10000825b: c3                          	retq
10000825c: 0f 1f 40 00                 	nopl	(%rax)

0000000100008260 __ZNKSt3__110__function6__funcIZNK2Go10print_libsERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_0NS_9allocatorIS8_EEFPKciiEE7__cloneEPNS0_6__baseISD_EE:
100008260: 55                          	pushq	%rbp
100008261: 48 89 e5                    	movq	%rsp, %rbp
100008264: 48 8d 05 6d 21 00 00        	leaq	8557(%rip), %rax
10000826b: 48 89 06                    	movq	%rax, (%rsi)
10000826e: 48 8b 47 08                 	movq	8(%rdi), %rax
100008272: 48 89 46 08                 	movq	%rax, 8(%rsi)
100008276: 5d                          	popq	%rbp
100008277: c3                          	retq
100008278: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100008280 __ZNSt3__110__function6__funcIZNK2Go10print_libsERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_0NS_9allocatorIS8_EEFPKciiEE7destroyEv:
100008280: 55                          	pushq	%rbp
100008281: 48 89 e5                    	movq	%rsp, %rbp
100008284: 5d                          	popq	%rbp
100008285: c3                          	retq
100008286: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100008290 __ZNSt3__110__function6__funcIZNK2Go10print_libsERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_0NS_9allocatorIS8_EEFPKciiEE18destroy_deallocateEv:
100008290: 55                          	pushq	%rbp
100008291: 48 89 e5                    	movq	%rsp, %rbp
100008294: 5d                          	popq	%rbp
100008295: e9 d2 0a 00 00              	jmp	2770 <dyld_stub_binder+0x100008d6c>
10000829a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000082a0 __ZNSt3__110__function6__funcIZNK2Go10print_libsERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_0NS_9allocatorIS8_EEFPKciiEEclEOiSF_:
1000082a0: 55                          	pushq	%rbp
1000082a1: 48 89 e5                    	movq	%rsp, %rbp
1000082a4: 41 57                       	pushq	%r15
1000082a6: 41 56                       	pushq	%r14
1000082a8: 41 55                       	pushq	%r13
1000082aa: 41 54                       	pushq	%r12
1000082ac: 53                          	pushq	%rbx
1000082ad: 50                          	pushq	%rax
1000082ae: 0f b6 1e                    	movzbl	(%rsi), %ebx
1000082b1: 44 0f b6 22                 	movzbl	(%rdx), %r12d
1000082b5: 4c 8b 7f 08                 	movq	8(%rdi), %r15
1000082b9: 4c 89 ff                    	movq	%r15, %rdi
1000082bc: 44 89 e6                    	movl	%r12d, %esi
1000082bf: 89 da                       	movl	%ebx, %edx
1000082c1: e8 3a b1 ff ff              	callq	-20166 <__ZNK2Go12tile_repr_atEhh>
1000082c6: 49 89 c5                    	movq	%rax, %r13
1000082c9: 4c 8d 35 e0 36 00 00        	leaq	14048(%rip), %r14
1000082d0: 4c 89 f7                    	movq	%r14, %rdi
1000082d3: 48 89 c6                    	movq	%rax, %rsi
1000082d6: e8 0f 0b 00 00              	callq	2831 <dyld_stub_binder+0x100008dea>
1000082db: 4c 89 ef                    	movq	%r13, %rdi
1000082de: e8 0d 0b 00 00              	callq	2829 <dyld_stub_binder+0x100008df0>
1000082e3: ff c3                       	incl	%ebx
1000082e5: 41 0f b6 4f 08              	movzbl	8(%r15), %ecx
1000082ea: 83 c1 02                    	addl	$2, %ecx
1000082ed: 0f af cb                    	imull	%ebx, %ecx
1000082f0: 41 8d 4c 0c 01              	leal	1(%r12,%rcx), %ecx
1000082f5: 49 8b 57 38                 	movq	56(%r15), %rdx
1000082f9: 0f b7 c9                    	movzwl	%cx, %ecx
1000082fc: 8b 0c ca                    	movl	(%rdx,%rcx,8), %ecx
1000082ff: f6 c1 03                    	testb	$3, %cl
100008302: 74 29                       	je	41 <__ZNSt3__110__function6__funcIZNK2Go10print_libsERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_0NS_9allocatorIS8_EEFPKciiEEclEOiSF_+0x8d>
100008304: 49 8b 57 40                 	movq	64(%r15), %rdx
100008308: 83 e1 fc                    	andl	$-4, %ecx
10000830b: 8b 4c ca 18                 	movl	24(%rdx,%rcx,8), %ecx
10000830f: 49 01 c6                    	addq	%rax, %r14
100008312: be 20 00 00 00              	movl	$32, %esi
100008317: 48 29 c6                    	subq	%rax, %rsi
10000831a: 48 8d 15 78 14 00 00        	leaq	5240(%rip), %rdx
100008321: 4c 89 f7                    	movq	%r14, %rdi
100008324: 31 c0                       	xorl	%eax, %eax
100008326: e8 b3 0a 00 00              	callq	2739 <dyld_stub_binder+0x100008dde>
10000832b: eb 1c                       	jmp	28 <__ZNSt3__110__function6__funcIZNK2Go10print_libsERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_0NS_9allocatorIS8_EEFPKciiEEclEOiSF_+0xa9>
10000832d: 49 01 c6                    	addq	%rax, %r14
100008330: be 20 00 00 00              	movl	$32, %esi
100008335: 48 29 c6                    	subq	%rax, %rsi
100008338: 48 8d 15 80 11 00 00        	leaq	4480(%rip), %rdx
10000833f: 4c 89 f7                    	movq	%r14, %rdi
100008342: 31 c0                       	xorl	%eax, %eax
100008344: e8 95 0a 00 00              	callq	2709 <dyld_stub_binder+0x100008dde>
100008349: 48 8d 05 60 36 00 00        	leaq	13920(%rip), %rax
100008350: 48 83 c4 08                 	addq	$8, %rsp
100008354: 5b                          	popq	%rbx
100008355: 41 5c                       	popq	%r12
100008357: 41 5d                       	popq	%r13
100008359: 41 5e                       	popq	%r14
10000835b: 41 5f                       	popq	%r15
10000835d: 5d                          	popq	%rbp
10000835e: c3                          	retq
10000835f: 90                          	nop

0000000100008360 __ZNKSt3__110__function6__funcIZNK2Go10print_libsERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_0NS_9allocatorIS8_EEFPKciiEE6targetERKSt9type_info:
100008360: 55                          	pushq	%rbp
100008361: 48 89 e5                    	movq	%rsp, %rbp
100008364: 53                          	pushq	%rbx
100008365: 50                          	pushq	%rax
100008366: 48 89 fb                    	movq	%rdi, %rbx
100008369: 48 8b 7e 08                 	movq	8(%rsi), %rdi
10000836d: 48 8d 05 4f 18 00 00        	leaq	6223(%rip), %rax
100008374: 48 39 c7                    	cmpq	%rax, %rdi
100008377: 74 14                       	je	20 <__ZNKSt3__110__function6__funcIZNK2Go10print_libsERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_0NS_9allocatorIS8_EEFPKciiEE6targetERKSt9type_info+0x2d>
100008379: 48 8d 35 43 18 00 00        	leaq	6211(%rip), %rsi
100008380: e8 5f 0a 00 00              	callq	2655 <dyld_stub_binder+0x100008de4>
100008385: 85 c0                       	testl	%eax, %eax
100008387: 74 04                       	je	4 <__ZNKSt3__110__function6__funcIZNK2Go10print_libsERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_0NS_9allocatorIS8_EEFPKciiEE6targetERKSt9type_info+0x2d>
100008389: 31 db                       	xorl	%ebx, %ebx
10000838b: eb 04                       	jmp	4 <__ZNKSt3__110__function6__funcIZNK2Go10print_libsERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_0NS_9allocatorIS8_EEFPKciiEE6targetERKSt9type_info+0x31>
10000838d: 48 83 c3 08                 	addq	$8, %rbx
100008391: 48 89 d8                    	movq	%rbx, %rax
100008394: 48 83 c4 08                 	addq	$8, %rsp
100008398: 5b                          	popq	%rbx
100008399: 5d                          	popq	%rbp
10000839a: c3                          	retq
10000839b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000083a0 __ZNKSt3__110__function6__funcIZNK2Go10print_libsERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_0NS_9allocatorIS8_EEFPKciiEE11target_typeEv:
1000083a0: 55                          	pushq	%rbp
1000083a1: 48 89 e5                    	movq	%rsp, %rbp
1000083a4: 48 8d 05 9d 20 00 00        	leaq	8349(%rip), %rax
1000083ab: 5d                          	popq	%rbp
1000083ac: c3                          	retq
1000083ad: 0f 1f 00                    	nopl	(%rax)

00000001000083b0 __ZNSt3__110__function6__funcIZNK2Go13print_str_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_1NS_9allocatorIS8_EEFPKciiEED1Ev:
1000083b0: 55                          	pushq	%rbp
1000083b1: 48 89 e5                    	movq	%rsp, %rbp
1000083b4: 5d                          	popq	%rbp
1000083b5: c3                          	retq
1000083b6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000083c0 __ZNSt3__110__function6__funcIZNK2Go13print_str_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_1NS_9allocatorIS8_EEFPKciiEED0Ev:
1000083c0: 55                          	pushq	%rbp
1000083c1: 48 89 e5                    	movq	%rsp, %rbp
1000083c4: 5d                          	popq	%rbp
1000083c5: e9 a2 09 00 00              	jmp	2466 <dyld_stub_binder+0x100008d6c>
1000083ca: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000083d0 __ZNKSt3__110__function6__funcIZNK2Go13print_str_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_1NS_9allocatorIS8_EEFPKciiEE7__cloneEv:
1000083d0: 55                          	pushq	%rbp
1000083d1: 48 89 e5                    	movq	%rsp, %rbp
1000083d4: 53                          	pushq	%rbx
1000083d5: 50                          	pushq	%rax
1000083d6: 48 89 fb                    	movq	%rdi, %rbx
1000083d9: bf 10 00 00 00              	movl	$16, %edi
1000083de: e8 8f 09 00 00              	callq	2447 <dyld_stub_binder+0x100008d72>
1000083e3: 48 8d 0d 7e 20 00 00        	leaq	8318(%rip), %rcx
1000083ea: 48 89 08                    	movq	%rcx, (%rax)
1000083ed: 48 8b 4b 08                 	movq	8(%rbx), %rcx
1000083f1: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000083f5: 48 83 c4 08                 	addq	$8, %rsp
1000083f9: 5b                          	popq	%rbx
1000083fa: 5d                          	popq	%rbp
1000083fb: c3                          	retq
1000083fc: 0f 1f 40 00                 	nopl	(%rax)

0000000100008400 __ZNKSt3__110__function6__funcIZNK2Go13print_str_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_1NS_9allocatorIS8_EEFPKciiEE7__cloneEPNS0_6__baseISD_EE:
100008400: 55                          	pushq	%rbp
100008401: 48 89 e5                    	movq	%rsp, %rbp
100008404: 48 8d 05 5d 20 00 00        	leaq	8285(%rip), %rax
10000840b: 48 89 06                    	movq	%rax, (%rsi)
10000840e: 48 8b 47 08                 	movq	8(%rdi), %rax
100008412: 48 89 46 08                 	movq	%rax, 8(%rsi)
100008416: 5d                          	popq	%rbp
100008417: c3                          	retq
100008418: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100008420 __ZNSt3__110__function6__funcIZNK2Go13print_str_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_1NS_9allocatorIS8_EEFPKciiEE7destroyEv:
100008420: 55                          	pushq	%rbp
100008421: 48 89 e5                    	movq	%rsp, %rbp
100008424: 5d                          	popq	%rbp
100008425: c3                          	retq
100008426: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100008430 __ZNSt3__110__function6__funcIZNK2Go13print_str_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_1NS_9allocatorIS8_EEFPKciiEE18destroy_deallocateEv:
100008430: 55                          	pushq	%rbp
100008431: 48 89 e5                    	movq	%rsp, %rbp
100008434: 5d                          	popq	%rbp
100008435: e9 32 09 00 00              	jmp	2354 <dyld_stub_binder+0x100008d6c>
10000843a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100008440 __ZNSt3__110__function6__funcIZNK2Go13print_str_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_1NS_9allocatorIS8_EEFPKciiEEclEOiSF_:
100008440: 55                          	pushq	%rbp
100008441: 48 89 e5                    	movq	%rsp, %rbp
100008444: 41 57                       	pushq	%r15
100008446: 41 56                       	pushq	%r14
100008448: 41 55                       	pushq	%r13
10000844a: 41 54                       	pushq	%r12
10000844c: 53                          	pushq	%rbx
10000844d: 50                          	pushq	%rax
10000844e: 0f b6 1e                    	movzbl	(%rsi), %ebx
100008451: 44 0f b6 3a                 	movzbl	(%rdx), %r15d
100008455: 4c 8b 67 08                 	movq	8(%rdi), %r12
100008459: 4c 89 e7                    	movq	%r12, %rdi
10000845c: 44 89 fe                    	movl	%r15d, %esi
10000845f: 89 da                       	movl	%ebx, %edx
100008461: e8 9a af ff ff              	callq	-20582 <__ZNK2Go12tile_repr_atEhh>
100008466: 49 89 c5                    	movq	%rax, %r13
100008469: 4c 8d 35 60 35 00 00        	leaq	13664(%rip), %r14
100008470: 4c 89 f7                    	movq	%r14, %rdi
100008473: 48 89 c6                    	movq	%rax, %rsi
100008476: e8 6f 09 00 00              	callq	2415 <dyld_stub_binder+0x100008dea>
10000847b: 4c 89 ef                    	movq	%r13, %rdi
10000847e: e8 6d 09 00 00              	callq	2413 <dyld_stub_binder+0x100008df0>
100008483: ff c3                       	incl	%ebx
100008485: 41 0f b6 4c 24 08           	movzbl	8(%r12), %ecx
10000848b: 83 c1 02                    	addl	$2, %ecx
10000848e: 0f af cb                    	imull	%ebx, %ecx
100008491: 41 8d 4c 0f 01              	leal	1(%r15,%rcx), %ecx
100008496: 49 8b 54 24 38              	movq	56(%r12), %rdx
10000849b: 0f b7 c9                    	movzwl	%cx, %ecx
10000849e: 8b 0c ca                    	movl	(%rdx,%rcx,8), %ecx
1000084a1: f6 c1 03                    	testb	$3, %cl
1000084a4: 74 21                       	je	33 <__ZNSt3__110__function6__funcIZNK2Go13print_str_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_1NS_9allocatorIS8_EEFPKciiEEclEOiSF_+0x87>
1000084a6: c1 e9 02                    	shrl	$2, %ecx
1000084a9: 49 01 c6                    	addq	%rax, %r14
1000084ac: be 20 00 00 00              	movl	$32, %esi
1000084b1: 48 29 c6                    	subq	%rax, %rsi
1000084b4: 48 8d 15 de 12 00 00        	leaq	4830(%rip), %rdx
1000084bb: 4c 89 f7                    	movq	%r14, %rdi
1000084be: 31 c0                       	xorl	%eax, %eax
1000084c0: e8 19 09 00 00              	callq	2329 <dyld_stub_binder+0x100008dde>
1000084c5: eb 1c                       	jmp	28 <__ZNSt3__110__function6__funcIZNK2Go13print_str_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_1NS_9allocatorIS8_EEFPKciiEEclEOiSF_+0xa3>
1000084c7: 49 01 c6                    	addq	%rax, %r14
1000084ca: be 20 00 00 00              	movl	$32, %esi
1000084cf: 48 29 c6                    	subq	%rax, %rsi
1000084d2: 48 8d 15 e6 0f 00 00        	leaq	4070(%rip), %rdx
1000084d9: 4c 89 f7                    	movq	%r14, %rdi
1000084dc: 31 c0                       	xorl	%eax, %eax
1000084de: e8 fb 08 00 00              	callq	2299 <dyld_stub_binder+0x100008dde>
1000084e3: 48 8d 05 e6 34 00 00        	leaq	13542(%rip), %rax
1000084ea: 48 83 c4 08                 	addq	$8, %rsp
1000084ee: 5b                          	popq	%rbx
1000084ef: 41 5c                       	popq	%r12
1000084f1: 41 5d                       	popq	%r13
1000084f3: 41 5e                       	popq	%r14
1000084f5: 41 5f                       	popq	%r15
1000084f7: 5d                          	popq	%rbp
1000084f8: c3                          	retq
1000084f9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100008500 __ZNKSt3__110__function6__funcIZNK2Go13print_str_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_1NS_9allocatorIS8_EEFPKciiEE6targetERKSt9type_info:
100008500: 55                          	pushq	%rbp
100008501: 48 89 e5                    	movq	%rsp, %rbp
100008504: 53                          	pushq	%rbx
100008505: 50                          	pushq	%rax
100008506: 48 89 fb                    	movq	%rdi, %rbx
100008509: 48 8b 7e 08                 	movq	8(%rsi), %rdi
10000850d: 48 8d 05 76 17 00 00        	leaq	6006(%rip), %rax
100008514: 48 39 c7                    	cmpq	%rax, %rdi
100008517: 74 14                       	je	20 <__ZNKSt3__110__function6__funcIZNK2Go13print_str_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_1NS_9allocatorIS8_EEFPKciiEE6targetERKSt9type_info+0x2d>
100008519: 48 8d 35 6a 17 00 00        	leaq	5994(%rip), %rsi
100008520: e8 bf 08 00 00              	callq	2239 <dyld_stub_binder+0x100008de4>
100008525: 85 c0                       	testl	%eax, %eax
100008527: 74 04                       	je	4 <__ZNKSt3__110__function6__funcIZNK2Go13print_str_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_1NS_9allocatorIS8_EEFPKciiEE6targetERKSt9type_info+0x2d>
100008529: 31 db                       	xorl	%ebx, %ebx
10000852b: eb 04                       	jmp	4 <__ZNKSt3__110__function6__funcIZNK2Go13print_str_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_1NS_9allocatorIS8_EEFPKciiEE6targetERKSt9type_info+0x31>
10000852d: 48 83 c3 08                 	addq	$8, %rbx
100008531: 48 89 d8                    	movq	%rbx, %rax
100008534: 48 83 c4 08                 	addq	$8, %rsp
100008538: 5b                          	popq	%rbx
100008539: 5d                          	popq	%rbp
10000853a: c3                          	retq
10000853b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008540 __ZNKSt3__110__function6__funcIZNK2Go13print_str_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_1NS_9allocatorIS8_EEFPKciiEE11target_typeEv:
100008540: 55                          	pushq	%rbp
100008541: 48 89 e5                    	movq	%rsp, %rbp
100008544: 48 8d 05 7d 1f 00 00        	leaq	8061(%rip), %rax
10000854b: 5d                          	popq	%rbp
10000854c: c3                          	retq
10000854d: 0f 1f 00                    	nopl	(%rax)

0000000100008550 __ZNSt3__110__function6__funcIZNK2Go14print_tile_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_2NS_9allocatorIS8_EEFPKciiEED1Ev:
100008550: 55                          	pushq	%rbp
100008551: 48 89 e5                    	movq	%rsp, %rbp
100008554: 5d                          	popq	%rbp
100008555: c3                          	retq
100008556: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100008560 __ZNSt3__110__function6__funcIZNK2Go14print_tile_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_2NS_9allocatorIS8_EEFPKciiEED0Ev:
100008560: 55                          	pushq	%rbp
100008561: 48 89 e5                    	movq	%rsp, %rbp
100008564: 5d                          	popq	%rbp
100008565: e9 02 08 00 00              	jmp	2050 <dyld_stub_binder+0x100008d6c>
10000856a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100008570 __ZNKSt3__110__function6__funcIZNK2Go14print_tile_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_2NS_9allocatorIS8_EEFPKciiEE7__cloneEv:
100008570: 55                          	pushq	%rbp
100008571: 48 89 e5                    	movq	%rsp, %rbp
100008574: 53                          	pushq	%rbx
100008575: 50                          	pushq	%rax
100008576: 48 89 fb                    	movq	%rdi, %rbx
100008579: bf 10 00 00 00              	movl	$16, %edi
10000857e: e8 ef 07 00 00              	callq	2031 <dyld_stub_binder+0x100008d72>
100008583: 48 8d 0d 5e 1f 00 00        	leaq	8030(%rip), %rcx
10000858a: 48 89 08                    	movq	%rcx, (%rax)
10000858d: 48 8b 4b 08                 	movq	8(%rbx), %rcx
100008591: 48 89 48 08                 	movq	%rcx, 8(%rax)
100008595: 48 83 c4 08                 	addq	$8, %rsp
100008599: 5b                          	popq	%rbx
10000859a: 5d                          	popq	%rbp
10000859b: c3                          	retq
10000859c: 0f 1f 40 00                 	nopl	(%rax)

00000001000085a0 __ZNKSt3__110__function6__funcIZNK2Go14print_tile_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_2NS_9allocatorIS8_EEFPKciiEE7__cloneEPNS0_6__baseISD_EE:
1000085a0: 55                          	pushq	%rbp
1000085a1: 48 89 e5                    	movq	%rsp, %rbp
1000085a4: 48 8d 05 3d 1f 00 00        	leaq	7997(%rip), %rax
1000085ab: 48 89 06                    	movq	%rax, (%rsi)
1000085ae: 48 8b 47 08                 	movq	8(%rdi), %rax
1000085b2: 48 89 46 08                 	movq	%rax, 8(%rsi)
1000085b6: 5d                          	popq	%rbp
1000085b7: c3                          	retq
1000085b8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

00000001000085c0 __ZNSt3__110__function6__funcIZNK2Go14print_tile_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_2NS_9allocatorIS8_EEFPKciiEE7destroyEv:
1000085c0: 55                          	pushq	%rbp
1000085c1: 48 89 e5                    	movq	%rsp, %rbp
1000085c4: 5d                          	popq	%rbp
1000085c5: c3                          	retq
1000085c6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000085d0 __ZNSt3__110__function6__funcIZNK2Go14print_tile_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_2NS_9allocatorIS8_EEFPKciiEE18destroy_deallocateEv:
1000085d0: 55                          	pushq	%rbp
1000085d1: 48 89 e5                    	movq	%rsp, %rbp
1000085d4: 5d                          	popq	%rbp
1000085d5: e9 92 07 00 00              	jmp	1938 <dyld_stub_binder+0x100008d6c>
1000085da: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000085e0 __ZNSt3__110__function6__funcIZNK2Go14print_tile_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_2NS_9allocatorIS8_EEFPKciiEEclEOiSF_:
1000085e0: 55                          	pushq	%rbp
1000085e1: 48 89 e5                    	movq	%rsp, %rbp
1000085e4: 53                          	pushq	%rbx
1000085e5: 50                          	pushq	%rax
1000085e6: 0f b6 06                    	movzbl	(%rsi), %eax
1000085e9: 0f b6 0a                    	movzbl	(%rdx), %ecx
1000085ec: 48 8b 57 08                 	movq	8(%rdi), %rdx
1000085f0: 0f b6 52 08                 	movzbl	8(%rdx), %edx
1000085f4: ff c0                       	incl	%eax
1000085f6: 83 c2 02                    	addl	$2, %edx
1000085f9: 0f af d0                    	imull	%eax, %edx
1000085fc: 8d 44 11 01                 	leal	1(%rcx,%rdx), %eax
100008600: 0f b7 c8                    	movzwl	%ax, %ecx
100008603: 48 8d 1d e6 33 00 00        	leaq	13286(%rip), %rbx
10000860a: 48 8d 15 8c 11 00 00        	leaq	4492(%rip), %rdx
100008611: be 04 00 00 00              	movl	$4, %esi
100008616: 48 89 df                    	movq	%rbx, %rdi
100008619: 31 c0                       	xorl	%eax, %eax
10000861b: e8 be 07 00 00              	callq	1982 <dyld_stub_binder+0x100008dde>
100008620: 48 89 d8                    	movq	%rbx, %rax
100008623: 48 83 c4 08                 	addq	$8, %rsp
100008627: 5b                          	popq	%rbx
100008628: 5d                          	popq	%rbp
100008629: c3                          	retq
10000862a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100008630 __ZNKSt3__110__function6__funcIZNK2Go14print_tile_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_2NS_9allocatorIS8_EEFPKciiEE6targetERKSt9type_info:
100008630: 55                          	pushq	%rbp
100008631: 48 89 e5                    	movq	%rsp, %rbp
100008634: 53                          	pushq	%rbx
100008635: 50                          	pushq	%rax
100008636: 48 89 fb                    	movq	%rdi, %rbx
100008639: 48 8b 7e 08                 	movq	8(%rsi), %rdi
10000863d: 48 8d 05 11 17 00 00        	leaq	5905(%rip), %rax
100008644: 48 39 c7                    	cmpq	%rax, %rdi
100008647: 74 14                       	je	20 <__ZNKSt3__110__function6__funcIZNK2Go14print_tile_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_2NS_9allocatorIS8_EEFPKciiEE6targetERKSt9type_info+0x2d>
100008649: 48 8d 35 05 17 00 00        	leaq	5893(%rip), %rsi
100008650: e8 8f 07 00 00              	callq	1935 <dyld_stub_binder+0x100008de4>
100008655: 85 c0                       	testl	%eax, %eax
100008657: 74 04                       	je	4 <__ZNKSt3__110__function6__funcIZNK2Go14print_tile_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_2NS_9allocatorIS8_EEFPKciiEE6targetERKSt9type_info+0x2d>
100008659: 31 db                       	xorl	%ebx, %ebx
10000865b: eb 04                       	jmp	4 <__ZNKSt3__110__function6__funcIZNK2Go14print_tile_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_2NS_9allocatorIS8_EEFPKciiEE6targetERKSt9type_info+0x31>
10000865d: 48 83 c3 08                 	addq	$8, %rbx
100008661: 48 89 d8                    	movq	%rbx, %rax
100008664: 48 83 c4 08                 	addq	$8, %rsp
100008668: 5b                          	popq	%rbx
100008669: 5d                          	popq	%rbp
10000866a: c3                          	retq
10000866b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008670 __ZNKSt3__110__function6__funcIZNK2Go14print_tile_idxERNS_13basic_ostreamIcNS_11char_traitsIcEEEEE3$_2NS_9allocatorIS8_EEFPKciiEE11target_typeEv:
100008670: 55                          	pushq	%rbp
100008671: 48 89 e5                    	movq	%rsp, %rbp
100008674: 48 8d 05 cd 1e 00 00        	leaq	7885(%rip), %rax
10000867b: 5d                          	popq	%rbp
10000867c: c3                          	retq
10000867d: 0f 1f 00                    	nopl	(%rax)

0000000100008680 __ZNSt3__16__treeItNS_4lessItEENS_9allocatorItEEE7destroyEPNS_11__tree_nodeItPvEE:
100008680: 48 85 f6                    	testq	%rsi, %rsi
100008683: 74 2d                       	je	45 <__ZNSt3__16__treeItNS_4lessItEENS_9allocatorItEEE7destroyEPNS_11__tree_nodeItPvEE+0x32>
100008685: 55                          	pushq	%rbp
100008686: 48 89 e5                    	movq	%rsp, %rbp
100008689: 41 56                       	pushq	%r14
10000868b: 53                          	pushq	%rbx
10000868c: 48 89 f3                    	movq	%rsi, %rbx
10000868f: 49 89 fe                    	movq	%rdi, %r14
100008692: 48 8b 36                    	movq	(%rsi), %rsi
100008695: e8 e6 ff ff ff              	callq	-26 <__ZNSt3__16__treeItNS_4lessItEENS_9allocatorItEEE7destroyEPNS_11__tree_nodeItPvEE>
10000869a: 48 8b 73 08                 	movq	8(%rbx), %rsi
10000869e: 4c 89 f7                    	movq	%r14, %rdi
1000086a1: e8 da ff ff ff              	callq	-38 <__ZNSt3__16__treeItNS_4lessItEENS_9allocatorItEEE7destroyEPNS_11__tree_nodeItPvEE>
1000086a6: 48 89 df                    	movq	%rbx, %rdi
1000086a9: 5b                          	popq	%rbx
1000086aa: 41 5e                       	popq	%r14
1000086ac: 5d                          	popq	%rbp
1000086ad: e9 ba 06 00 00              	jmp	1722 <dyld_stub_binder+0x100008d6c>
1000086b2: c3                          	retq
1000086b3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000086bd: 0f 1f 00                    	nopl	(%rax)

00000001000086c0 __ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_:
1000086c0: 55                          	pushq	%rbp
1000086c1: 48 89 e5                    	movq	%rsp, %rbp
1000086c4: 48 39 fe                    	cmpq	%rdi, %rsi
1000086c7: 0f 94 46 18                 	sete	24(%rsi)
1000086cb: 75 2e                       	jne	46 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x3b>
1000086cd: e9 67 01 00 00              	jmp	359 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x179>
1000086d2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000086dc: 0f 1f 40 00                 	nopl	(%rax)
1000086e0: 48 83 c2 18                 	addq	$24, %rdx
1000086e4: c6 41 18 01                 	movb	$1, 24(%rcx)
1000086e8: 48 89 c6                    	movq	%rax, %rsi
1000086eb: 48 39 f8                    	cmpq	%rdi, %rax
1000086ee: 0f 94 40 18                 	sete	24(%rax)
1000086f2: c6 02 01                    	movb	$1, (%rdx)
1000086f5: 0f 84 3e 01 00 00           	je	318 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x179>
1000086fb: 48 8b 4e 10                 	movq	16(%rsi), %rcx
1000086ff: 80 79 18 00                 	cmpb	$0, 24(%rcx)
100008703: 0f 85 30 01 00 00           	jne	304 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x179>
100008709: 48 8b 41 10                 	movq	16(%rcx), %rax
10000870d: 48 8b 10                    	movq	(%rax), %rdx
100008710: 48 39 ca                    	cmpq	%rcx, %rdx
100008713: 74 1b                       	je	27 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x70>
100008715: 48 85 d2                    	testq	%rdx, %rdx
100008718: 74 68                       	je	104 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0xc2>
10000871a: 80 7a 18 00                 	cmpb	$0, 24(%rdx)
10000871e: 74 c0                       	je	-64 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x20>
100008720: eb 60                       	jmp	96 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0xc2>
100008722: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000872c: 0f 1f 40 00                 	nopl	(%rax)
100008730: 48 8b 50 08                 	movq	8(%rax), %rdx
100008734: 48 85 d2                    	testq	%rdx, %rdx
100008737: 74 06                       	je	6 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x7f>
100008739: 80 7a 18 00                 	cmpb	$0, 24(%rdx)
10000873d: 74 a1                       	je	-95 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x20>
10000873f: 48 39 31                    	cmpq	%rsi, (%rcx)
100008742: 0f 84 b2 00 00 00           	je	178 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x13a>
100008748: 48 8b 51 08                 	movq	8(%rcx), %rdx
10000874c: 48 8b 32                    	movq	(%rdx), %rsi
10000874f: 48 89 71 08                 	movq	%rsi, 8(%rcx)
100008753: 48 85 f6                    	testq	%rsi, %rsi
100008756: 74 08                       	je	8 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0xa0>
100008758: 48 89 4e 10                 	movq	%rcx, 16(%rsi)
10000875c: 48 8b 41 10                 	movq	16(%rcx), %rax
100008760: 48 89 42 10                 	movq	%rax, 16(%rdx)
100008764: 48 8b 41 10                 	movq	16(%rcx), %rax
100008768: 31 f6                       	xorl	%esi, %esi
10000876a: 48 39 08                    	cmpq	%rcx, (%rax)
10000876d: 40 0f 95 c6                 	setne	%sil
100008771: 48 89 14 f0                 	movq	%rdx, (%rax,%rsi,8)
100008775: 48 89 0a                    	movq	%rcx, (%rdx)
100008778: 48 89 51 10                 	movq	%rdx, 16(%rcx)
10000877c: 48 8b 42 10                 	movq	16(%rdx), %rax
100008780: eb 7b                       	jmp	123 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x13d>
100008782: 48 39 31                    	cmpq	%rsi, (%rcx)
100008785: 74 05                       	je	5 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0xcc>
100008787: 48 89 ce                    	movq	%rcx, %rsi
10000878a: eb 34                       	jmp	52 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x100>
10000878c: 48 8b 56 08                 	movq	8(%rsi), %rdx
100008790: 48 89 11                    	movq	%rdx, (%rcx)
100008793: 48 85 d2                    	testq	%rdx, %rdx
100008796: 74 08                       	je	8 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0xe0>
100008798: 48 89 4a 10                 	movq	%rcx, 16(%rdx)
10000879c: 48 8b 41 10                 	movq	16(%rcx), %rax
1000087a0: 48 89 46 10                 	movq	%rax, 16(%rsi)
1000087a4: 48 8b 41 10                 	movq	16(%rcx), %rax
1000087a8: 31 d2                       	xorl	%edx, %edx
1000087aa: 48 39 08                    	cmpq	%rcx, (%rax)
1000087ad: 0f 95 c2                    	setne	%dl
1000087b0: 48 89 34 d0                 	movq	%rsi, (%rax,%rdx,8)
1000087b4: 48 89 4e 08                 	movq	%rcx, 8(%rsi)
1000087b8: 48 89 71 10                 	movq	%rsi, 16(%rcx)
1000087bc: 48 8b 46 10                 	movq	16(%rsi), %rax
1000087c0: c6 46 18 01                 	movb	$1, 24(%rsi)
1000087c4: c6 40 18 00                 	movb	$0, 24(%rax)
1000087c8: 48 8b 48 08                 	movq	8(%rax), %rcx
1000087cc: 48 8b 11                    	movq	(%rcx), %rdx
1000087cf: 48 89 50 08                 	movq	%rdx, 8(%rax)
1000087d3: 48 85 d2                    	testq	%rdx, %rdx
1000087d6: 74 04                       	je	4 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x11c>
1000087d8: 48 89 42 10                 	movq	%rax, 16(%rdx)
1000087dc: 48 8b 50 10                 	movq	16(%rax), %rdx
1000087e0: 48 89 51 10                 	movq	%rdx, 16(%rcx)
1000087e4: 48 8b 50 10                 	movq	16(%rax), %rdx
1000087e8: 31 f6                       	xorl	%esi, %esi
1000087ea: 48 39 02                    	cmpq	%rax, (%rdx)
1000087ed: 40 0f 95 c6                 	setne	%sil
1000087f1: 48 89 0c f2                 	movq	%rcx, (%rdx,%rsi,8)
1000087f5: 48 89 01                    	movq	%rax, (%rcx)
1000087f8: eb 3b                       	jmp	59 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x175>
1000087fa: 48 89 ca                    	movq	%rcx, %rdx
1000087fd: c6 42 18 01                 	movb	$1, 24(%rdx)
100008801: c6 40 18 00                 	movb	$0, 24(%rax)
100008805: 48 8b 08                    	movq	(%rax), %rcx
100008808: 48 8b 51 08                 	movq	8(%rcx), %rdx
10000880c: 48 89 10                    	movq	%rdx, (%rax)
10000880f: 48 85 d2                    	testq	%rdx, %rdx
100008812: 74 04                       	je	4 <__ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_+0x158>
100008814: 48 89 42 10                 	movq	%rax, 16(%rdx)
100008818: 48 8b 50 10                 	movq	16(%rax), %rdx
10000881c: 48 89 51 10                 	movq	%rdx, 16(%rcx)
100008820: 48 8b 50 10                 	movq	16(%rax), %rdx
100008824: 31 f6                       	xorl	%esi, %esi
100008826: 48 39 02                    	cmpq	%rax, (%rdx)
100008829: 40 0f 95 c6                 	setne	%sil
10000882d: 48 89 0c f2                 	movq	%rcx, (%rdx,%rsi,8)
100008831: 48 89 41 08                 	movq	%rax, 8(%rcx)
100008835: 48 89 48 10                 	movq	%rcx, 16(%rax)
100008839: 5d                          	popq	%rbp
10000883a: c3                          	retq
10000883b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008840 ___rand_hash:
100008840: 55                          	pushq	%rbp
100008841: 48 89 e5                    	movq	%rsp, %rbp
100008844: 89 f8                       	movl	%edi, %eax
100008846: 48 89 c1                    	movq	%rax, %rcx
100008849: 48 f7 d1                    	notq	%rcx
10000884c: 48 c1 e0 12                 	shlq	$18, %rax
100008850: 48 01 c8                    	addq	%rcx, %rax
100008853: 48 89 c1                    	movq	%rax, %rcx
100008856: 48 c1 e9 1f                 	shrq	$31, %rcx
10000885a: 48 31 c1                    	xorq	%rax, %rcx
10000885d: 48 8d 04 89                 	leaq	(%rcx,%rcx,4), %rax
100008861: 48 8d 04 81                 	leaq	(%rcx,%rax,4), %rax
100008865: 48 89 c1                    	movq	%rax, %rcx
100008868: 48 c1 e9 0b                 	shrq	$11, %rcx
10000886c: 48 21 c1                    	andq	%rax, %rcx
10000886f: 48 89 ca                    	movq	%rcx, %rdx
100008872: 48 c1 e2 06                 	shlq	$6, %rdx
100008876: 48 01 ca                    	addq	%rcx, %rdx
100008879: 48 89 d0                    	movq	%rdx, %rax
10000887c: 48 c1 e8 16                 	shrq	$22, %rax
100008880: 31 d0                       	xorl	%edx, %eax
100008882: 5d                          	popq	%rbp
100008883: c3                          	retq
100008884: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000888e: 66 90                       	nop

0000000100008890 _seed_rand:
100008890: 55                          	pushq	%rbp
100008891: 48 89 e5                    	movq	%rsp, %rbp
100008894: 48 89 f9                    	movq	%rdi, %rcx
100008897: 48 8d 54 36 01              	leaq	1(%rsi,%rsi), %rdx
10000889c: 48 8d 3d d5 28 00 00        	leaq	10453(%rip), %rdi
1000088a3: ff 17                       	callq	*(%rdi)
1000088a5: 48 89 50 08                 	movq	%rdx, 8(%rax)
1000088a9: 48 8d 4c 71 01              	leaq	1(%rcx,%rsi,2), %rcx
1000088ae: 48 ba 2d 7f 95 4c 2d f4 51 58       	movabsq	$6364136223846793005, %rdx
1000088b8: 48 0f af d1                 	imulq	%rcx, %rdx
1000088bc: 48 8d 4c 72 01              	leaq	1(%rdx,%rsi,2), %rcx
1000088c1: 48 89 08                    	movq	%rcx, (%rax)
1000088c4: 5d                          	popq	%rbp
1000088c5: c3                          	retq
1000088c6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000088d0 _gen_rand:
1000088d0: 55                          	pushq	%rbp
1000088d1: 48 89 e5                    	movq	%rsp, %rbp
1000088d4: 48 8d 3d 9d 28 00 00        	leaq	10397(%rip), %rdi
1000088db: ff 17                       	callq	*(%rdi)
1000088dd: 48 8b 08                    	movq	(%rax), %rcx
1000088e0: 48 ba 2d 7f 95 4c 2d f4 51 58       	movabsq	$6364136223846793005, %rdx
1000088ea: 48 0f af d1                 	imulq	%rcx, %rdx
1000088ee: 48 03 50 08                 	addq	8(%rax), %rdx
1000088f2: 48 89 10                    	movq	%rdx, (%rax)
1000088f5: 48 89 c8                    	movq	%rcx, %rax
1000088f8: 48 c1 e8 12                 	shrq	$18, %rax
1000088fc: 48 31 c8                    	xorq	%rcx, %rax
1000088ff: 48 c1 e8 1b                 	shrq	$27, %rax
100008903: 48 c1 e9 3b                 	shrq	$59, %rcx
100008907: d3 c8                       	rorl	%cl, %eax
100008909: 5d                          	popq	%rbp
10000890a: c3                          	retq
10000890b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008910 _gen_rand64:
100008910: 55                          	pushq	%rbp
100008911: 48 89 e5                    	movq	%rsp, %rbp
100008914: 48 8d 3d 5d 28 00 00        	leaq	10333(%rip), %rdi
10000891b: ff 17                       	callq	*(%rdi)
10000891d: 48 8b 08                    	movq	(%rax), %rcx
100008920: 4c 8b 40 08                 	movq	8(%rax), %r8
100008924: 49 b9 2d 7f 95 4c 2d f4 51 58       	movabsq	$6364136223846793005, %r9
10000892e: 48 89 ca                    	movq	%rcx, %rdx
100008931: 49 0f af d1                 	imulq	%r9, %rdx
100008935: 4c 01 c2                    	addq	%r8, %rdx
100008938: 48 89 cf                    	movq	%rcx, %rdi
10000893b: 48 c1 ef 12                 	shrq	$18, %rdi
10000893f: 48 31 cf                    	xorq	%rcx, %rdi
100008942: 48 c1 ef 1b                 	shrq	$27, %rdi
100008946: 48 c1 e9 3b                 	shrq	$59, %rcx
10000894a: d3 cf                       	rorl	%cl, %edi
10000894c: 4c 0f af ca                 	imulq	%rdx, %r9
100008950: 48 89 d6                    	movq	%rdx, %rsi
100008953: 48 c1 ee 12                 	shrq	$18, %rsi
100008957: 48 31 d6                    	xorq	%rdx, %rsi
10000895a: 48 c1 ee 1b                 	shrq	$27, %rsi
10000895e: 48 c1 ea 3b                 	shrq	$59, %rdx
100008962: 89 d1                       	movl	%edx, %ecx
100008964: d3 ce                       	rorl	%cl, %esi
100008966: 4d 01 c1                    	addq	%r8, %r9
100008969: 4c 89 08                    	movq	%r9, (%rax)
10000896c: 48 c1 e7 20                 	shlq	$32, %rdi
100008970: 48 09 fe                    	orq	%rdi, %rsi
100008973: 48 89 f0                    	movq	%rsi, %rax
100008976: 5d                          	popq	%rbp
100008977: c3                          	retq
100008978: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100008980 _gen_rand_r:
100008980: 55                          	pushq	%rbp
100008981: 48 89 e5                    	movq	%rsp, %rbp
100008984: 41 89 f8                    	movl	%edi, %r8d
100008987: 89 f8                       	movl	%edi, %eax
100008989: f7 d8                       	negl	%eax
10000898b: 31 d2                       	xorl	%edx, %edx
10000898d: f7 f7                       	divl	%edi
10000898f: 48 8d 3d e2 27 00 00        	leaq	10210(%rip), %rdi
100008996: ff 17                       	callq	*(%rdi)
100008998: 4c 8b 08                    	movq	(%rax), %r9
10000899b: 48 8b 40 08                 	movq	8(%rax), %rax
10000899f: 48 bf 2d 7f 95 4c 2d f4 51 58       	movabsq	$6364136223846793005, %rdi
1000089a9: 4c 89 c9                    	movq	%r9, %rcx
1000089ac: 4c 0f af cf                 	imulq	%rdi, %r9
1000089b0: 49 01 c1                    	addq	%rax, %r9
1000089b3: 48 89 ce                    	movq	%rcx, %rsi
1000089b6: 48 c1 ee 12                 	shrq	$18, %rsi
1000089ba: 48 31 ce                    	xorq	%rcx, %rsi
1000089bd: 48 c1 ee 1b                 	shrq	$27, %rsi
1000089c1: 48 c1 e9 3b                 	shrq	$59, %rcx
1000089c5: d3 ce                       	rorl	%cl, %esi
1000089c7: 39 d6                       	cmpl	%edx, %esi
1000089c9: 72 de                       	jb	-34 <_gen_rand_r+0x29>
1000089cb: 48 8d 3d a6 27 00 00        	leaq	10150(%rip), %rdi
1000089d2: ff 17                       	callq	*(%rdi)
1000089d4: 4c 89 08                    	movq	%r9, (%rax)
1000089d7: 89 f0                       	movl	%esi, %eax
1000089d9: 31 d2                       	xorl	%edx, %edx
1000089db: 41 f7 f0                    	divl	%r8d
1000089de: 89 d0                       	movl	%edx, %eax
1000089e0: 5d                          	popq	%rbp
1000089e1: c3                          	retq
1000089e2: 90                          	nop
1000089e3: 90                          	nop
1000089e4: 90                          	nop
1000089e5: 90                          	nop
1000089e6: 90                          	nop
1000089e7: 90                          	nop
1000089e8: 90                          	nop
1000089e9: 90                          	nop
1000089ea: 90                          	nop
1000089eb: 90                          	nop
1000089ec: 90                          	nop
1000089ed: 90                          	nop
1000089ee: 90                          	nop
1000089ef: 90                          	nop

00000001000089f0 _uf_init:
1000089f0: 55                          	pushq	%rbp
1000089f1: 48 89 e5                    	movq	%rsp, %rbp
1000089f4: 41 57                       	pushq	%r15
1000089f6: 41 56                       	pushq	%r14
1000089f8: 53                          	pushq	%rbx
1000089f9: 50                          	pushq	%rax
1000089fa: 49 89 f7                    	movq	%rsi, %r15
1000089fd: 49 89 fe                    	movq	%rdi, %r14
100008a00: 48 89 f3                    	movq	%rsi, %rbx
100008a03: 48 c1 e3 04                 	shlq	$4, %rbx
100008a07: 48 89 df                    	movq	%rbx, %rdi
100008a0a: e8 ab 03 00 00              	callq	939 <dyld_stub_binder+0x100008dba>
100008a0f: 48 85 c0                    	testq	%rax, %rax
100008a12: 74 21                       	je	33 <_uf_init+0x45>
100008a14: 4d 85 ff                    	testq	%r15, %r15
100008a17: 0f 84 94 00 00 00           	je	148 <_uf_init+0xc1>
100008a1d: 44 89 f9                    	movl	%r15d, %ecx
100008a20: 83 e1 01                    	andl	$1, %ecx
100008a23: 49 83 ff 01                 	cmpq	$1, %r15
100008a27: 75 33                       	jne	51 <_uf_init+0x6c>
100008a29: 31 d2                       	xorl	%edx, %edx
100008a2b: 48 85 c9                    	testq	%rcx, %rcx
100008a2e: 75 6d                       	jne	109 <_uf_init+0xad>
100008a30: e9 7c 00 00 00              	jmp	124 <_uf_init+0xc1>
100008a35: 48 8b 05 54 16 00 00        	movq	5716(%rip), %rax
100008a3c: 48 8b 38                    	movq	(%rax), %rdi
100008a3f: 48 8d 35 5b 0d 00 00        	leaq	3419(%rip), %rsi
100008a46: ba 19 00 00 00              	movl	$25, %edx
100008a4b: 48 89 d9                    	movq	%rbx, %rcx
100008a4e: 31 c0                       	xorl	%eax, %eax
100008a50: e8 59 03 00 00              	callq	857 <dyld_stub_binder+0x100008dae>
100008a55: b8 ff ff ff ff              	movl	$4294967295, %eax
100008a5a: eb 62                       	jmp	98 <_uf_init+0xce>
100008a5c: 4c 89 fe                    	movq	%r15, %rsi
100008a5f: 48 29 ce                    	subq	%rcx, %rsi
100008a62: 48 89 c7                    	movq	%rax, %rdi
100008a65: 48 83 c7 18                 	addq	$24, %rdi
100008a69: 31 d2                       	xorl	%edx, %edx
100008a6b: 0f 1f 44 00 00              	nopl	(%rax,%rax)
100008a70: 48 89 57 e8                 	movq	%rdx, -24(%rdi)
100008a74: 48 c7 47 f0 01 00 00 00     	movq	$1, -16(%rdi)
100008a7c: 48 8d 5a 01                 	leaq	1(%rdx), %rbx
100008a80: 48 89 5f f8                 	movq	%rbx, -8(%rdi)
100008a84: 48 c7 07 01 00 00 00        	movq	$1, (%rdi)
100008a8b: 48 83 c2 02                 	addq	$2, %rdx
100008a8f: 48 83 c7 20                 	addq	$32, %rdi
100008a93: 48 39 d6                    	cmpq	%rdx, %rsi
100008a96: 75 d8                       	jne	-40 <_uf_init+0x80>
100008a98: 48 85 c9                    	testq	%rcx, %rcx
100008a9b: 74 14                       	je	20 <_uf_init+0xc1>
100008a9d: 48 89 d1                    	movq	%rdx, %rcx
100008aa0: 48 c1 e1 04                 	shlq	$4, %rcx
100008aa4: 48 89 14 08                 	movq	%rdx, (%rax,%rcx)
100008aa8: 48 c7 44 08 08 01 00 00 00  	movq	$1, 8(%rax,%rcx)
100008ab1: 49 89 46 10                 	movq	%rax, 16(%r14)
100008ab5: 4d 89 3e                    	movq	%r15, (%r14)
100008ab8: 4d 89 7e 08                 	movq	%r15, 8(%r14)
100008abc: 31 c0                       	xorl	%eax, %eax
100008abe: 48 83 c4 08                 	addq	$8, %rsp
100008ac2: 5b                          	popq	%rbx
100008ac3: 41 5e                       	popq	%r14
100008ac5: 41 5f                       	popq	%r15
100008ac7: 5d                          	popq	%rbp
100008ac8: c3                          	retq
100008ac9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100008ad0 _uf_destroy:
100008ad0: 55                          	pushq	%rbp
100008ad1: 48 89 e5                    	movq	%rsp, %rbp
100008ad4: 48 8b 7f 10                 	movq	16(%rdi), %rdi
100008ad8: 48 85 ff                    	testq	%rdi, %rdi
100008adb: 74 06                       	je	6 <_uf_destroy+0x13>
100008add: 5d                          	popq	%rbp
100008ade: e9 d1 02 00 00              	jmp	721 <dyld_stub_binder+0x100008db4>
100008ae3: 5d                          	popq	%rbp
100008ae4: c3                          	retq
100008ae5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008aef: 90                          	nop

0000000100008af0 _uf_copy:
100008af0: 55                          	pushq	%rbp
100008af1: 48 89 e5                    	movq	%rsp, %rbp
100008af4: 41 57                       	pushq	%r15
100008af6: 41 56                       	pushq	%r14
100008af8: 53                          	pushq	%rbx
100008af9: 50                          	pushq	%rax
100008afa: 49 89 f6                    	movq	%rsi, %r14
100008afd: 49 89 ff                    	movq	%rdi, %r15
100008b00: f3 0f 6f 06                 	movdqu	(%rsi), %xmm0
100008b04: f3 0f 7f 07                 	movdqu	%xmm0, (%rdi)
100008b08: 66 48 0f 7e c3              	movq	%xmm0, %rbx
100008b0d: 48 c1 e3 04                 	shlq	$4, %rbx
100008b11: 48 89 df                    	movq	%rbx, %rdi
100008b14: e8 a1 02 00 00              	callq	673 <dyld_stub_binder+0x100008dba>
100008b19: 49 89 47 10                 	movq	%rax, 16(%r15)
100008b1d: 48 85 c0                    	testq	%rax, %rax
100008b20: 74 13                       	je	19 <_uf_copy+0x45>
100008b22: 49 8b 76 10                 	movq	16(%r14), %rsi
100008b26: 48 89 c7                    	movq	%rax, %rdi
100008b29: 48 89 da                    	movq	%rbx, %rdx
100008b2c: e8 8f 02 00 00              	callq	655 <dyld_stub_binder+0x100008dc0>
100008b31: 31 c0                       	xorl	%eax, %eax
100008b33: eb 25                       	jmp	37 <_uf_copy+0x6a>
100008b35: 48 8b 05 54 15 00 00        	movq	5460(%rip), %rax
100008b3c: 48 8b 38                    	movq	(%rax), %rdi
100008b3f: 48 8d 35 5b 0c 00 00        	leaq	3163(%rip), %rsi
100008b46: ba 38 00 00 00              	movl	$56, %edx
100008b4b: 48 89 d9                    	movq	%rbx, %rcx
100008b4e: 31 c0                       	xorl	%eax, %eax
100008b50: e8 59 02 00 00              	callq	601 <dyld_stub_binder+0x100008dae>
100008b55: b8 ff ff ff ff              	movl	$4294967295, %eax
100008b5a: 48 83 c4 08                 	addq	$8, %rsp
100008b5e: 5b                          	popq	%rbx
100008b5f: 41 5e                       	popq	%r14
100008b61: 41 5f                       	popq	%r15
100008b63: 5d                          	popq	%rbp
100008b64: c3                          	retq
100008b65: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008b6f: 90                          	nop

0000000100008b70 _uf_find:
100008b70: 55                          	pushq	%rbp
100008b71: 48 89 e5                    	movq	%rsp, %rbp
100008b74: 48 89 f0                    	movq	%rsi, %rax
100008b77: 48 8b 4f 10                 	movq	16(%rdi), %rcx
100008b7b: 48 89 f2                    	movq	%rsi, %rdx
100008b7e: 48 c1 e2 04                 	shlq	$4, %rdx
100008b82: 48 8b 34 11                 	movq	(%rcx,%rdx), %rsi
100008b86: 48 39 c6                    	cmpq	%rax, %rsi
100008b89: 74 20                       	je	32 <_uf_find+0x3b>
100008b8b: 48 01 ca                    	addq	%rcx, %rdx
100008b8e: 66 90                       	nop
100008b90: 48 89 f0                    	movq	%rsi, %rax
100008b93: 48 c1 e6 04                 	shlq	$4, %rsi
100008b97: 48 8b 3c 31                 	movq	(%rcx,%rsi), %rdi
100008b9b: 48 89 3a                    	movq	%rdi, (%rdx)
100008b9e: 48 8d 14 31                 	leaq	(%rcx,%rsi), %rdx
100008ba2: 48 8b 34 31                 	movq	(%rcx,%rsi), %rsi
100008ba6: 48 39 c6                    	cmpq	%rax, %rsi
100008ba9: 75 e5                       	jne	-27 <_uf_find+0x20>
100008bab: 5d                          	popq	%rbp
100008bac: c3                          	retq
100008bad: 0f 1f 00                    	nopl	(%rax)

0000000100008bb0 _uf_union:
100008bb0: 55                          	pushq	%rbp
100008bb1: 48 89 e5                    	movq	%rsp, %rbp
100008bb4: 48 89 f0                    	movq	%rsi, %rax
100008bb7: 4c 8b 47 10                 	movq	16(%rdi), %r8
100008bbb: 49 89 f1                    	movq	%rsi, %r9
100008bbe: 49 c1 e1 04                 	shlq	$4, %r9
100008bc2: 4b 8b 0c 08                 	movq	(%r8,%r9), %rcx
100008bc6: 48 39 f1                    	cmpq	%rsi, %rcx
100008bc9: 74 20                       	je	32 <_uf_union+0x3b>
100008bcb: 4d 01 c1                    	addq	%r8, %r9
100008bce: 66 90                       	nop
100008bd0: 48 89 c8                    	movq	%rcx, %rax
100008bd3: 48 c1 e1 04                 	shlq	$4, %rcx
100008bd7: 49 8b 34 08                 	movq	(%r8,%rcx), %rsi
100008bdb: 49 89 31                    	movq	%rsi, (%r9)
100008bde: 4d 8d 0c 08                 	leaq	(%r8,%rcx), %r9
100008be2: 49 8b 0c 08                 	movq	(%r8,%rcx), %rcx
100008be6: 48 39 c1                    	cmpq	%rax, %rcx
100008be9: 75 e5                       	jne	-27 <_uf_union+0x20>
100008beb: 49 89 d1                    	movq	%rdx, %r9
100008bee: 49 c1 e1 04                 	shlq	$4, %r9
100008bf2: 4b 8b 0c 08                 	movq	(%r8,%r9), %rcx
100008bf6: 48 39 d1                    	cmpq	%rdx, %rcx
100008bf9: 74 20                       	je	32 <_uf_union+0x6b>
100008bfb: 4d 01 c1                    	addq	%r8, %r9
100008bfe: 66 90                       	nop
100008c00: 48 89 ca                    	movq	%rcx, %rdx
100008c03: 48 c1 e1 04                 	shlq	$4, %rcx
100008c07: 49 8b 34 08                 	movq	(%r8,%rcx), %rsi
100008c0b: 49 89 31                    	movq	%rsi, (%r9)
100008c0e: 4d 8d 0c 08                 	leaq	(%r8,%rcx), %r9
100008c12: 49 8b 0c 08                 	movq	(%r8,%rcx), %rcx
100008c16: 48 39 d1                    	cmpq	%rdx, %rcx
100008c19: 75 e5                       	jne	-27 <_uf_union+0x50>
100008c1b: 48 39 d0                    	cmpq	%rdx, %rax
100008c1e: 74 46                       	je	70 <_uf_union+0xb6>
100008c20: 48 89 c1                    	movq	%rax, %rcx
100008c23: 48 c1 e1 04                 	shlq	$4, %rcx
100008c27: 4d 8d 4c 08 08              	leaq	8(%r8,%rcx), %r9
100008c2c: 4d 8b 54 08 08              	movq	8(%r8,%rcx), %r10
100008c31: 48 89 d6                    	movq	%rdx, %rsi
100008c34: 48 c1 e6 04                 	shlq	$4, %rsi
100008c38: 4d 8d 5c 30 08              	leaq	8(%r8,%rsi), %r11
100008c3d: 49 8b 74 30 08              	movq	8(%r8,%rsi), %rsi
100008c42: 49 39 f2                    	cmpq	%rsi, %r10
100008c45: 48 89 d1                    	movq	%rdx, %rcx
100008c48: 48 0f 42 c8                 	cmovbq	%rax, %rcx
100008c4c: 48 0f 42 c2                 	cmovbq	%rdx, %rax
100008c50: 4d 0f 43 d9                 	cmovaeq	%r9, %r11
100008c54: 48 c1 e1 04                 	shlq	$4, %rcx
100008c58: 49 89 04 08                 	movq	%rax, (%r8,%rcx)
100008c5c: 4c 01 d6                    	addq	%r10, %rsi
100008c5f: 49 89 33                    	movq	%rsi, (%r11)
100008c62: 48 ff 4f 08                 	decq	8(%rdi)
100008c66: 5d                          	popq	%rbp
100008c67: c3                          	retq
100008c68: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100008c70 _uf_disjoin_unsafe:
100008c70: 55                          	pushq	%rbp
100008c71: 48 89 e5                    	movq	%rsp, %rbp
100008c74: 48 8b 47 10                 	movq	16(%rdi), %rax
100008c78: 48 89 f1                    	movq	%rsi, %rcx
100008c7b: 48 c1 e1 04                 	shlq	$4, %rcx
100008c7f: 48 89 34 08                 	movq	%rsi, (%rax,%rcx)
100008c83: 48 c7 44 08 08 01 00 00 00  	movq	$1, 8(%rax,%rcx)
100008c8c: 5d                          	popq	%rbp
100008c8d: c3                          	retq
100008c8e: 90                          	nop
100008c8f: 90                          	nop

0000000100008c90 __ZNK2Go10print_libsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE.cold.1:
100008c90: 48 85 ff                    	testq	%rdi, %rdi
100008c93: 74 0b                       	je	11 <__ZNK2Go10print_libsERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE.cold.1+0x10>
100008c95: 55                          	pushq	%rbp
100008c96: 48 89 e5                    	movq	%rsp, %rbp
100008c99: 48 8b 07                    	movq	(%rdi), %rax
100008c9c: ff 50 28                    	callq	*40(%rax)
100008c9f: 5d                          	popq	%rbp
100008ca0: c3                          	retq
100008ca1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008cab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008cb0 __ZNK2Go13print_str_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE.cold.1:
100008cb0: 48 85 ff                    	testq	%rdi, %rdi
100008cb3: 74 0b                       	je	11 <__ZNK2Go13print_str_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE.cold.1+0x10>
100008cb5: 55                          	pushq	%rbp
100008cb6: 48 89 e5                    	movq	%rsp, %rbp
100008cb9: 48 8b 07                    	movq	(%rdi), %rax
100008cbc: ff 50 28                    	callq	*40(%rax)
100008cbf: 5d                          	popq	%rbp
100008cc0: c3                          	retq
100008cc1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008ccb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008cd0 __ZNK2Go14print_tile_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE.cold.1:
100008cd0: 48 85 ff                    	testq	%rdi, %rdi
100008cd3: 74 0b                       	je	11 <__ZNK2Go14print_tile_idxERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEE.cold.1+0x10>
100008cd5: 55                          	pushq	%rbp
100008cd6: 48 89 e5                    	movq	%rsp, %rbp
100008cd9: 48 8b 07                    	movq	(%rdi), %rax
100008cdc: ff 50 28                    	callq	*40(%rax)
100008cdf: 5d                          	popq	%rbp
100008ce0: c3                          	retq

Disassembly of section __TEXT,__stubs:

0000000100008ce2 __stubs:
100008ce2: ff 25 18 23 00 00           	jmpq	*8984(%rip)
100008ce8: ff 25 1a 23 00 00           	jmpq	*8986(%rip)
100008cee: ff 25 1c 23 00 00           	jmpq	*8988(%rip)
100008cf4: ff 25 1e 23 00 00           	jmpq	*8990(%rip)
100008cfa: ff 25 20 23 00 00           	jmpq	*8992(%rip)
100008d00: ff 25 22 23 00 00           	jmpq	*8994(%rip)
100008d06: ff 25 24 23 00 00           	jmpq	*8996(%rip)
100008d0c: ff 25 26 23 00 00           	jmpq	*8998(%rip)
100008d12: ff 25 28 23 00 00           	jmpq	*9000(%rip)
100008d18: ff 25 2a 23 00 00           	jmpq	*9002(%rip)
100008d1e: ff 25 2c 23 00 00           	jmpq	*9004(%rip)
100008d24: ff 25 2e 23 00 00           	jmpq	*9006(%rip)
100008d2a: ff 25 30 23 00 00           	jmpq	*9008(%rip)
100008d30: ff 25 32 23 00 00           	jmpq	*9010(%rip)
100008d36: ff 25 34 23 00 00           	jmpq	*9012(%rip)
100008d3c: ff 25 36 23 00 00           	jmpq	*9014(%rip)
100008d42: ff 25 38 23 00 00           	jmpq	*9016(%rip)
100008d48: ff 25 3a 23 00 00           	jmpq	*9018(%rip)
100008d4e: ff 25 3c 23 00 00           	jmpq	*9020(%rip)
100008d54: ff 25 3e 23 00 00           	jmpq	*9022(%rip)
100008d5a: ff 25 40 23 00 00           	jmpq	*9024(%rip)
100008d60: ff 25 42 23 00 00           	jmpq	*9026(%rip)
100008d66: ff 25 44 23 00 00           	jmpq	*9028(%rip)
100008d6c: ff 25 46 23 00 00           	jmpq	*9030(%rip)
100008d72: ff 25 48 23 00 00           	jmpq	*9032(%rip)
100008d78: ff 25 4a 23 00 00           	jmpq	*9034(%rip)
100008d7e: ff 25 4c 23 00 00           	jmpq	*9036(%rip)
100008d84: ff 25 4e 23 00 00           	jmpq	*9038(%rip)
100008d8a: ff 25 50 23 00 00           	jmpq	*9040(%rip)
100008d90: ff 25 52 23 00 00           	jmpq	*9042(%rip)
100008d96: ff 25 54 23 00 00           	jmpq	*9044(%rip)
100008d9c: ff 25 56 23 00 00           	jmpq	*9046(%rip)
100008da2: ff 25 58 23 00 00           	jmpq	*9048(%rip)
100008da8: ff 25 5a 23 00 00           	jmpq	*9050(%rip)
100008dae: ff 25 5c 23 00 00           	jmpq	*9052(%rip)
100008db4: ff 25 5e 23 00 00           	jmpq	*9054(%rip)
100008dba: ff 25 60 23 00 00           	jmpq	*9056(%rip)
100008dc0: ff 25 62 23 00 00           	jmpq	*9058(%rip)
100008dc6: ff 25 64 23 00 00           	jmpq	*9060(%rip)
100008dcc: ff 25 66 23 00 00           	jmpq	*9062(%rip)
100008dd2: ff 25 68 23 00 00           	jmpq	*9064(%rip)
100008dd8: ff 25 6a 23 00 00           	jmpq	*9066(%rip)
100008dde: ff 25 6c 23 00 00           	jmpq	*9068(%rip)
100008de4: ff 25 6e 23 00 00           	jmpq	*9070(%rip)
100008dea: ff 25 70 23 00 00           	jmpq	*9072(%rip)
100008df0: ff 25 72 23 00 00           	jmpq	*9074(%rip)
100008df6: ff 25 74 23 00 00           	jmpq	*9076(%rip)

Disassembly of section __TEXT,__stub_helper:

0000000100008dfc __stub_helper:
100008dfc: 4c 8d 1d 8d 23 00 00        	leaq	9101(%rip), %r11
100008e03: 41 53                       	pushq	%r11
100008e05: ff 25 8d 12 00 00           	jmpq	*4749(%rip)
100008e0b: 90                          	nop
100008e0c: 68 16 00 00 00              	pushq	$22
100008e11: e9 e6 ff ff ff              	jmp	-26 <__stub_helper>
100008e16: 68 5d 00 00 00              	pushq	$93
100008e1b: e9 dc ff ff ff              	jmp	-36 <__stub_helper>
100008e20: 68 8a 00 00 00              	pushq	$138
100008e25: e9 d2 ff ff ff              	jmp	-46 <__stub_helper>
100008e2a: 68 ae 00 00 00              	pushq	$174
100008e2f: e9 c8 ff ff ff              	jmp	-56 <__stub_helper>
100008e34: 68 d0 00 00 00              	pushq	$208
100008e39: e9 be ff ff ff              	jmp	-66 <__stub_helper>
100008e3e: 68 21 01 00 00              	pushq	$289
100008e43: e9 b4 ff ff ff              	jmp	-76 <__stub_helper>
100008e48: 68 74 01 00 00              	pushq	$372
100008e4d: e9 aa ff ff ff              	jmp	-86 <__stub_helper>
100008e52: 68 b9 01 00 00              	pushq	$441
100008e57: e9 a0 ff ff ff              	jmp	-96 <__stub_helper>
100008e5c: 68 fb 01 00 00              	pushq	$507
100008e61: e9 96 ff ff ff              	jmp	-106 <__stub_helper>
100008e66: 68 36 02 00 00              	pushq	$566
100008e6b: e9 8c ff ff ff              	jmp	-116 <__stub_helper>
100008e70: 68 71 02 00 00              	pushq	$625
100008e75: e9 82 ff ff ff              	jmp	-126 <__stub_helper>
100008e7a: 68 ac 02 00 00              	pushq	$684
100008e7f: e9 78 ff ff ff              	jmp	-136 <__stub_helper>
100008e84: 68 e7 02 00 00              	pushq	$743
100008e89: e9 6e ff ff ff              	jmp	-146 <__stub_helper>
100008e8e: 68 24 03 00 00              	pushq	$804
100008e93: e9 64 ff ff ff              	jmp	-156 <__stub_helper>
100008e98: 68 61 03 00 00              	pushq	$865
100008e9d: e9 5a ff ff ff              	jmp	-166 <__stub_helper>
100008ea2: 68 8b 03 00 00              	pushq	$907
100008ea7: e9 50 ff ff ff              	jmp	-176 <__stub_helper>
100008eac: 68 a8 03 00 00              	pushq	$936
100008eb1: e9 46 ff ff ff              	jmp	-186 <__stub_helper>
100008eb6: 68 e8 03 00 00              	pushq	$1000
100008ebb: e9 3c ff ff ff              	jmp	-196 <__stub_helper>
100008ec0: 68 0b 04 00 00              	pushq	$1035
100008ec5: e9 32 ff ff ff              	jmp	-206 <__stub_helper>
100008eca: 68 2e 04 00 00              	pushq	$1070
100008ecf: e9 28 ff ff ff              	jmp	-216 <__stub_helper>
100008ed4: 68 65 04 00 00              	pushq	$1125
100008ed9: e9 1e ff ff ff              	jmp	-226 <__stub_helper>
100008ede: 68 81 04 00 00              	pushq	$1153
100008ee3: e9 14 ff ff ff              	jmp	-236 <__stub_helper>
100008ee8: 68 a9 04 00 00              	pushq	$1193
100008eed: e9 0a ff ff ff              	jmp	-246 <__stub_helper>
100008ef2: 68 ca 04 00 00              	pushq	$1226
100008ef7: e9 00 ff ff ff              	jmp	-256 <__stub_helper>
100008efc: 68 e1 04 00 00              	pushq	$1249
100008f01: e9 f6 fe ff ff              	jmp	-266 <__stub_helper>
100008f06: 68 fb 04 00 00              	pushq	$1275
100008f0b: e9 ec fe ff ff              	jmp	-276 <__stub_helper>
100008f10: 68 13 05 00 00              	pushq	$1299
100008f15: e9 e2 fe ff ff              	jmp	-286 <__stub_helper>
100008f1a: 68 30 05 00 00              	pushq	$1328
100008f1f: e9 d8 fe ff ff              	jmp	-296 <__stub_helper>
100008f24: 68 44 05 00 00              	pushq	$1348
100008f29: e9 ce fe ff ff              	jmp	-306 <__stub_helper>
100008f2e: 68 00 00 00 00              	pushq	$0
100008f33: e9 c4 fe ff ff              	jmp	-316 <__stub_helper>
100008f38: 68 99 04 00 00              	pushq	$1177
100008f3d: e9 ba fe ff ff              	jmp	-326 <__stub_helper>
100008f42: 68 5b 05 00 00              	pushq	$1371
100008f47: e9 b0 fe ff ff              	jmp	-336 <__stub_helper>
100008f4c: 68 74 05 00 00              	pushq	$1396
100008f51: e9 a6 fe ff ff              	jmp	-346 <__stub_helper>
100008f56: 68 84 05 00 00              	pushq	$1412
100008f5b: e9 9c fe ff ff              	jmp	-356 <__stub_helper>
100008f60: 68 91 05 00 00              	pushq	$1425
100008f65: e9 92 fe ff ff              	jmp	-366 <__stub_helper>
100008f6a: 68 a0 05 00 00              	pushq	$1440
100008f6f: e9 88 fe ff ff              	jmp	-376 <__stub_helper>
100008f74: 68 af 05 00 00              	pushq	$1455
100008f79: e9 7e fe ff ff              	jmp	-386 <__stub_helper>
100008f7e: 68 be 05 00 00              	pushq	$1470
100008f83: e9 74 fe ff ff              	jmp	-396 <__stub_helper>
100008f88: 68 cd 05 00 00              	pushq	$1485
100008f8d: e9 6a fe ff ff              	jmp	-406 <__stub_helper>
100008f92: 68 dd 05 00 00              	pushq	$1501
100008f97: e9 60 fe ff ff              	jmp	-416 <__stub_helper>
100008f9c: 68 ea 05 00 00              	pushq	$1514
100008fa1: e9 56 fe ff ff              	jmp	-426 <__stub_helper>
100008fa6: 68 fb 05 00 00              	pushq	$1531
100008fab: e9 4c fe ff ff              	jmp	-436 <__stub_helper>
100008fb0: 68 0a 06 00 00              	pushq	$1546
100008fb5: e9 42 fe ff ff              	jmp	-446 <__stub_helper>
100008fba: 68 19 06 00 00              	pushq	$1561
100008fbf: e9 38 fe ff ff              	jmp	-456 <__stub_helper>
100008fc4: 68 28 06 00 00              	pushq	$1576
100008fc9: e9 2e fe ff ff              	jmp	-466 <__stub_helper>
