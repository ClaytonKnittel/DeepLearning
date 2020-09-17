
.obj/zobrist.o:	file format Mach-O 64-bit x86-64


Disassembly of section __TEXT,__text:

0000000000000000 __ZN11ZobristHash3rotEy:
       0: 55                           	pushq	%rbp
       1: 48 89 e5                     	movq	%rsp, %rbp
       4: 48 89 f9                     	movq	%rdi, %rcx
       7: 48 c1 e1 08                  	shlq	$8, %rcx
       b: 48 b8 00 ff ff 00 ff ff ff 00	movabsq	$72057589759737600, %rax
      15: 48 21 c8                     	andq	%rcx, %rax
      18: 48 c1 ef 18                  	shrq	$24, %rdi
      1c: 81 e7 00 00 00 ff            	andl	$4278190080, %edi
      22: 48 09 f8                     	orq	%rdi, %rax
      25: 5d                           	popq	%rbp
      26: c3                           	retq
      27: 66 0f 1f 84 00 00 00 00 00   	nopw	(%rax,%rax)

0000000000000030 __ZN11ZobristHash3mirEy:
      30: 55                           	pushq	%rbp
      31: 48 89 e5                     	movq	%rsp, %rbp
      34: 48 89 f8                     	movq	%rdi, %rax
      37: 48 c1 e0 08                  	shlq	$8, %rax
      3b: 48 b9 00 ff 00 ff 00 ff 00 ff	movabsq	$-71777214294589696, %rcx
      45: 48 21 c1                     	andq	%rax, %rcx
      48: 48 c1 ef 08                  	shrq	$8, %rdi
      4c: 48 ba ff 00 ff 00 ff 00 ff 00	movabsq	$71777214294589695, %rdx
      56: 48 21 fa                     	andq	%rdi, %rdx
      59: 48 09 ca                     	orq	%rcx, %rdx
      5c: 48 89 d0                     	movq	%rdx, %rax
      5f: 48 c1 e0 10                  	shlq	$16, %rax
      63: 48 b9 00 00 ff ff 00 00 ff ff	movabsq	$-281470681808896, %rcx
      6d: 48 21 c1                     	andq	%rax, %rcx
      70: 48 c1 ea 10                  	shrq	$16, %rdx
      74: 48 b8 ff ff 00 00 ff ff 00 00	movabsq	$281470681808895, %rax
      7e: 48 21 d0                     	andq	%rdx, %rax
      81: 48 09 c8                     	orq	%rcx, %rax
      84: 5d                           	popq	%rbp
      85: c3                           	retq
      86: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000000000090 __ZN11ZobristHash5col_xEy:
      90: 55                           	pushq	%rbp
      91: 48 89 e5                     	movq	%rsp, %rbp
      94: 48 89 f8                     	movq	%rdi, %rax
      97: 48 c1 c0 20                  	rolq	$32, %rax
      9b: 5d                           	popq	%rbp
      9c: c3                           	retq
      9d: 0f 1f 00                     	nopl	(%rax)

00000000000000a0 __ZNK11ZobristHash6to_idxEhhh:
      a0: 55                           	pushq	%rbp
      a1: 48 89 e5                     	movq	%rsp, %rbp
      a4: 0f b6 07                     	movzbl	(%rdi), %eax
      a7: 0f af c2                     	imull	%edx, %eax
      aa: 01 f0                        	addl	%esi, %eax
      ac: 8d 04 40                     	leal	(%rax,%rax,2), %eax
      af: 01 c8                        	addl	%ecx, %eax
      b1: 0f b7 c0                     	movzwl	%ax, %eax
      b4: 5d                           	popq	%rbp
      b5: c3                           	retq
      b6: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

00000000000000c0 __ZNK11ZobristHash10rot_coordsERhS0_:
      c0: 55                           	pushq	%rbp
      c1: 48 89 e5                     	movq	%rsp, %rbp
      c4: 8a 06                        	movb	(%rsi), %al
      c6: 8a 0a                        	movb	(%rdx), %cl
      c8: f6 d1                        	notb	%cl
      ca: 02 0f                        	addb	(%rdi), %cl
      cc: 88 0e                        	movb	%cl, (%rsi)
      ce: 88 02                        	movb	%al, (%rdx)
      d0: 5d                           	popq	%rbp
      d1: c3                           	retq
      d2: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
      dc: 0f 1f 40 00                  	nopl	(%rax)

00000000000000e0 __ZNK11ZobristHash10mir_coordsERhS0_:
      e0: 55                           	pushq	%rbp
      e1: 48 89 e5                     	movq	%rsp, %rbp
      e4: 8a 06                        	movb	(%rsi), %al
      e6: f6 d0                        	notb	%al
      e8: 02 07                        	addb	(%rdi), %al
      ea: 88 06                        	movb	%al, (%rsi)
      ec: 5d                           	popq	%rbp
      ed: c3                           	retq
      ee: 66 90                        	nop

00000000000000f0 __ZN11ZobristHash10initializeEv:
      f0: 55                           	pushq	%rbp
      f1: 48 89 e5                     	movq	%rsp, %rbp
      f4: 41 57                        	pushq	%r15
      f6: 41 56                        	pushq	%r14
      f8: 41 55                        	pushq	%r13
      fa: 41 54                        	pushq	%r12
      fc: 53                           	pushq	%rbx
      fd: 48 83 ec 38                  	subq	$56, %rsp
     101: 49 89 fe                     	movq	%rdi, %r14
     104: 0f b6 0f                     	movzbl	(%rdi), %ecx
     107: 8d 41 ff                     	leal	-1(%rcx), %eax
     10a: c1 e8 1f                     	shrl	$31, %eax
     10d: 48 89 4d a8                  	movq	%rcx, -88(%rbp)
     111: 44 8d 7c 01 ff               	leal	-1(%rcx,%rax), %r15d
     116: 41 d1 ef                     	shrl	%r15d
     119: 0f b6 47 01                  	movzbl	1(%rdi), %eax
     11d: 89 c1                        	movl	%eax, %ecx
     11f: ff c9                        	decl	%ecx
     121: c1 e9 1f                     	shrl	$31, %ecx
     124: 8d 5c 08 ff                  	leal	-1(%rax,%rcx), %ebx
     128: d1 eb                        	shrl	%ebx
     12a: 45 31 ed                     	xorl	%r13d, %r13d
     12d: 31 ff                        	xorl	%edi, %edi
     12f: e8 00 00 00 00               	callq	0 <__ZN11ZobristHash10initializeEv+0x44>
     134: be 01 00 00 00               	movl	$1, %esi
     139: 48 89 c7                     	movq	%rax, %rdi
     13c: e8 00 00 00 00               	callq	0 <__ZN11ZobristHash10initializeEv+0x51>
     141: 0f b6 c3                     	movzbl	%bl, %eax
     144: 41 0f b6 cf                  	movzbl	%r15b, %ecx
     148: 48 89 4d c8                  	movq	%rcx, -56(%rbp)
     14c: 48 81 f1 ff ff 00 00         	xorq	$65535, %rcx
     153: 48 89 4d b0                  	movq	%rcx, -80(%rbp)
     157: 48 89 45 d0                  	movq	%rax, -48(%rbp)
     15b: eb 18                        	jmp	24 <__ZN11ZobristHash10initializeEv+0x85>
     15d: 0f 1f 00                     	nopl	(%rax)
     160: 41 8d 45 01                  	leal	1(%r13), %eax
     164: 44 0f b6 e8                  	movzbl	%al, %r13d
     168: 48 8b 45 d0                  	movq	-48(%rbp), %rax
     16c: 44 39 e8                     	cmpl	%r13d, %eax
     16f: 0f 82 22 04 00 00            	jb	1058 <__ZN11ZobristHash10initializeEv+0x4a7>
     175: 44 89 e8                     	movl	%r13d, %eax
     178: f7 d0                        	notl	%eax
     17a: 48 89 45 b8                  	movq	%rax, -72(%rbp)
     17e: 45 89 ef                     	movl	%r13d, %r15d
     181: 49 8d 47 01                  	leaq	1(%r15), %rax
     185: 48 89 45 c0                  	movq	%rax, -64(%rbp)
     189: 49 81 f7 ff ff 00 00         	xorq	$65535, %r15
     190: 45 31 e4                     	xorl	%r12d, %r12d
     193: e9 b1 00 00 00               	jmp	177 <__ZN11ZobristHash10initializeEv+0x159>
     198: 0f 1f 84 00 00 00 00 00      	nopl	(%rax,%rax)
     1a0: 66 0f 6c c8                  	punpcklqdq	%xmm0, %xmm1
     1a4: 66 0f 6f d1                  	movdqa	%xmm1, %xmm2
     1a8: 66 0f 73 f2 10               	psllq	$16, %xmm2
     1ad: 66 0f 6f 05 6b 05 00 00      	movdqa	1387(%rip), %xmm0
     1b5: 66 0f 38 10 d1               	pblendvb	%xmm0, %xmm1, %xmm2
     1ba: 41 0f b6 36                  	movzbl	(%r14), %esi
     1be: 44 89 e9                     	movl	%r13d, %ecx
     1c1: 0f af ce                     	imull	%esi, %ecx
     1c4: 44 01 e1                     	addl	%r12d, %ecx
     1c7: 49 8b 46 08                  	movq	8(%r14), %rax
     1cb: 0f b7 c9                     	movzwl	%cx, %ecx
     1ce: 48 8d 3c 49                  	leaq	(%rcx,%rcx,2), %rdi
     1d2: 66 48 0f 3a 16 d1 01         	pextrq	$1, %xmm2, %rcx
     1d9: f3 0f 7f 14 f8               	movdqu	%xmm2, (%rax,%rdi,8)
     1de: 48 c1 c1 20                  	rolq	$32, %rcx
     1e2: 48 89 4c f8 10               	movq	%rcx, 16(%rax,%rdi,8)
     1e7: 44 89 e7                     	movl	%r12d, %edi
     1ea: ff c7                        	incl	%edi
     1ec: 0f af fe                     	imull	%esi, %edi
     1ef: 44 01 ff                     	addl	%r15d, %edi
     1f2: 0f b7 ff                     	movzwl	%di, %edi
     1f5: 48 8d 3c 7f                  	leaq	(%rdi,%rdi,2), %rdi
     1f9: f3 0f 7f 14 f8               	movdqu	%xmm2, (%rax,%rdi,8)
     1fe: 48 89 4c f8 10               	movq	%rcx, 16(%rax,%rdi,8)
     203: 89 f7                        	movl	%esi, %edi
     205: 44 29 ef                     	subl	%r13d, %edi
     208: 0f af fe                     	imull	%esi, %edi
     20b: 01 d7                        	addl	%edx, %edi
     20d: 0f b7 ff                     	movzwl	%di, %edi
     210: 8d 3c 7f                     	leal	(%rdi,%rdi,2), %edi
     213: f3 0f 7f 14 f8               	movdqu	%xmm2, (%rax,%rdi,8)
     218: 48 89 4c f8 10               	movq	%rcx, 16(%rax,%rdi,8)
     21d: 01 f2                        	addl	%esi, %edx
     21f: 0f af d6                     	imull	%esi, %edx
     222: 44 01 ea                     	addl	%r13d, %edx
     225: 0f b7 d2                     	movzwl	%dx, %edx
     228: 8d 14 52                     	leal	(%rdx,%rdx,2), %edx
     22b: f3 0f 7f 14 d0               	movdqu	%xmm2, (%rax,%rdx,8)
     230: 89 d2                        	movl	%edx, %edx
     232: 48 89 4c d0 10               	movq	%rcx, 16(%rax,%rdx,8)
     237: 41 8d 44 24 01               	leal	1(%r12), %eax
     23c: 44 0f b6 e0                  	movzbl	%al, %r12d
     240: 45 38 ec                     	cmpb	%r13b, %r12b
     243: 0f 87 17 ff ff ff            	ja	-233 <__ZN11ZobristHash10initializeEv+0x70>
     249: e8 00 00 00 00               	callq	0 <__ZN11ZobristHash10initializeEv+0x15e>
     24e: 48 89 c3                     	movq	%rax, %rbx
     251: e8 00 00 00 00               	callq	0 <__ZN11ZobristHash10initializeEv+0x166>
     256: 89 c0                        	movl	%eax, %eax
     258: 48 89 c7                     	movq	%rax, %rdi
     25b: 48 c1 e7 20                  	shlq	$32, %rdi
     25f: 48 09 c7                     	orq	%rax, %rdi
     262: 66 48 0f 6e c3               	movq	%rbx, %xmm0
     267: 66 48 0f 6e cf               	movq	%rdi, %xmm1
     26c: f6 45 a8 01                  	testb	$1, -88(%rbp)
     270: 0f 85 ba 00 00 00            	jne	186 <__ZN11ZobristHash10initializeEv+0x240>
     276: 44 89 e2                     	movl	%r12d, %edx
     279: f7 d2                        	notl	%edx
     27b: 45 38 e5                     	cmpb	%r12b, %r13b
     27e: 0f 84 1c ff ff ff            	je	-228 <__ZN11ZobristHash10initializeEv+0xb0>
     284: 45 0f b6 0e                  	movzbl	(%r14), %r9d
     288: 48 8b 45 b8                  	movq	-72(%rbp), %rax
     28c: 45 8d 04 01                  	leal	(%r9,%rax), %r8d
     290: 45 39 e0                     	cmpl	%r12d, %r8d
     293: 0f 85 83 01 00 00            	jne	387 <__ZN11ZobristHash10initializeEv+0x32c>
     299: 66 0f 6c c8                  	punpcklqdq	%xmm0, %xmm1
     29d: 66 0f 6f d1                  	movdqa	%xmm1, %xmm2
     2a1: 66 0f 73 f2 10               	psllq	$16, %xmm2
     2a6: 66 0f 6f 05 62 04 00 00      	movdqa	1122(%rip), %xmm0
     2ae: 66 0f 38 10 d1               	pblendvb	%xmm0, %xmm1, %xmm2
     2b3: 44 89 e9                     	movl	%r13d, %ecx
     2b6: 41 0f af c9                  	imull	%r9d, %ecx
     2ba: 44 01 e1                     	addl	%r12d, %ecx
     2bd: 49 8b 46 08                  	movq	8(%r14), %rax
     2c1: 0f b7 c9                     	movzwl	%cx, %ecx
     2c4: 48 8d 3c 49                  	leaq	(%rcx,%rcx,2), %rdi
     2c8: 66 48 0f 3a 16 d1 01         	pextrq	$1, %xmm2, %rcx
     2cf: f3 0f 7f 14 f8               	movdqu	%xmm2, (%rax,%rdi,8)
     2d4: 48 c1 c1 20                  	rolq	$32, %rcx
     2d8: 48 89 4c f8 10               	movq	%rcx, 16(%rax,%rdi,8)
     2dd: 44 89 e7                     	movl	%r12d, %edi
     2e0: ff c7                        	incl	%edi
     2e2: 41 0f af f9                  	imull	%r9d, %edi
     2e6: 44 01 ff                     	addl	%r15d, %edi
     2e9: 0f b7 ff                     	movzwl	%di, %edi
     2ec: 48 8d 3c 7f                  	leaq	(%rdi,%rdi,2), %rdi
     2f0: f3 0f 7f 14 f8               	movdqu	%xmm2, (%rax,%rdi,8)
     2f5: 48 89 4c f8 10               	movq	%rcx, 16(%rax,%rdi,8)
     2fa: 44 89 cf                     	movl	%r9d, %edi
     2fd: 44 29 ef                     	subl	%r13d, %edi
     300: 41 0f af f9                  	imull	%r9d, %edi
     304: 01 d7                        	addl	%edx, %edi
     306: 0f b7 ff                     	movzwl	%di, %edi
     309: 8d 3c 7f                     	leal	(%rdi,%rdi,2), %edi
     30c: f3 0f 7f 14 f8               	movdqu	%xmm2, (%rax,%rdi,8)
     311: 48 89 4c f8 10               	movq	%rcx, 16(%rax,%rdi,8)
     316: 44 01 ca                     	addl	%r9d, %edx
     319: 41 0f af d1                  	imull	%r9d, %edx
     31d: e9 00 ff ff ff               	jmp	-256 <__ZN11ZobristHash10initializeEv+0x132>
     322: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
     32c: 0f 1f 40 00                  	nopl	(%rax)
     330: 44 39 65 c8                  	cmpl	%r12d, -56(%rbp)
     334: 75 6a                        	jne	106 <__ZN11ZobristHash10initializeEv+0x2b0>
     336: 66 0f 6c c8                  	punpcklqdq	%xmm0, %xmm1
     33a: 48 8b 4d d0                  	movq	-48(%rbp), %rcx
     33e: 44 39 e9                     	cmpl	%r13d, %ecx
     341: 0f 85 e5 01 00 00            	jne	485 <__ZN11ZobristHash10initializeEv+0x43c>
     347: 66 0f db 0d b1 03 00 00      	pand	945(%rip), %xmm1
     34f: 66 0f 6f c1                  	movdqa	%xmm1, %xmm0
     353: 66 0f 73 f0 10               	psllq	$16, %xmm0
     358: 66 0f eb c1                  	por	%xmm1, %xmm0
     35c: 66 0f 6f c8                  	movdqa	%xmm0, %xmm1
     360: 66 0f 73 f1 08               	psllq	$8, %xmm1
     365: 66 0f eb c8                  	por	%xmm0, %xmm1
     369: 41 0f b6 06                  	movzbl	(%r14), %eax
     36d: 0f af c1                     	imull	%ecx, %eax
     370: 48 8b 4d c8                  	movq	-56(%rbp), %rcx
     374: 01 c1                        	addl	%eax, %ecx
     376: 49 8b 46 08                  	movq	8(%r14), %rax
     37a: 0f b7 c9                     	movzwl	%cx, %ecx
     37d: 48 8d 14 49                  	leaq	(%rcx,%rcx,2), %rdx
     381: f3 0f 7f 0c d0               	movdqu	%xmm1, (%rax,%rdx,8)
     386: 66 48 0f 3a 16 c9 01         	pextrq	$1, %xmm1, %rcx
     38d: 48 c1 c1 20                  	rolq	$32, %rcx
     391: e9 9a fe ff ff               	jmp	-358 <__ZN11ZobristHash10initializeEv+0x140>
     396: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
     3a0: 44 39 6d d0                  	cmpl	%r13d, -48(%rbp)
     3a4: 0f 85 cc fe ff ff            	jne	-308 <__ZN11ZobristHash10initializeEv+0x186>
     3aa: 48 b8 ff 00 ff 00 ff 00 ff 00	movabsq	$71777214294589695, %rax
     3b4: 48 21 c3                     	andq	%rax, %rbx
     3b7: 48 89 de                     	movq	%rbx, %rsi
     3ba: 48 c1 e6 08                  	shlq	$8, %rsi
     3be: 48 09 de                     	orq	%rbx, %rsi
     3c1: 48 21 c7                     	andq	%rax, %rdi
     3c4: 48 89 fb                     	movq	%rdi, %rbx
     3c7: 48 c1 e3 08                  	shlq	$8, %rbx
     3cb: 48 09 fb                     	orq	%rdi, %rbx
     3ce: 41 0f b6 16                  	movzbl	(%r14), %edx
     3d2: 48 8b 4d d0                  	movq	-48(%rbp), %rcx
     3d6: 0f af ca                     	imull	%edx, %ecx
     3d9: 44 01 e1                     	addl	%r12d, %ecx
     3dc: 49 8b 46 08                  	movq	8(%r14), %rax
     3e0: 0f b7 c9                     	movzwl	%cx, %ecx
     3e3: 48 8d 3c 49                  	leaq	(%rcx,%rcx,2), %rdi
     3e7: 48 89 1c f8                  	movq	%rbx, (%rax,%rdi,8)
     3eb: 48 89 74 f8 08               	movq	%rsi, 8(%rax,%rdi,8)
     3f0: 48 89 f1                     	movq	%rsi, %rcx
     3f3: 48 c1 c1 20                  	rolq	$32, %rcx
     3f7: 48 89 4c f8 10               	movq	%rcx, 16(%rax,%rdi,8)
     3fc: 48 8b 7d b8                  	movq	-72(%rbp), %rdi
     400: 01 d7                        	addl	%edx, %edi
     402: 0f af fa                     	imull	%edx, %edi
     405: 44 01 e7                     	addl	%r12d, %edi
     408: 0f b7 d7                     	movzwl	%di, %edx
     40b: 8d 14 52                     	leal	(%rdx,%rdx,2), %edx
     40e: 48 89 1c d0                  	movq	%rbx, (%rax,%rdx,8)
     412: 48 89 74 d0 08               	movq	%rsi, 8(%rax,%rdx,8)
     417: e9 14 fe ff ff               	jmp	-492 <__ZN11ZobristHash10initializeEv+0x140>
     41c: 44 89 e9                     	movl	%r13d, %ecx
     41f: 41 0f af c9                  	imull	%r9d, %ecx
     423: 44 01 e1                     	addl	%r12d, %ecx
     426: 49 8b 46 08                  	movq	8(%r14), %rax
     42a: 0f b7 c9                     	movzwl	%cx, %ecx
     42d: 48 8d 34 49                  	leaq	(%rcx,%rcx,2), %rsi
     431: 48 89 3c f0                  	movq	%rdi, (%rax,%rsi,8)
     435: 48 89 5c f0 08               	movq	%rbx, 8(%rax,%rsi,8)
     43a: 48 89 d9                     	movq	%rbx, %rcx
     43d: 48 c1 c1 20                  	rolq	$32, %rcx
     441: 48 89 4c f0 10               	movq	%rcx, 16(%rax,%rsi,8)
     446: 41 8d 74 24 01               	leal	1(%r12), %esi
     44b: 41 0f af f1                  	imull	%r9d, %esi
     44f: 44 01 fe                     	addl	%r15d, %esi
     452: 0f b7 f6                     	movzwl	%si, %esi
     455: 48 8d 34 76                  	leaq	(%rsi,%rsi,2), %rsi
     459: 48 89 3c f0                  	movq	%rdi, (%rax,%rsi,8)
     45d: 48 89 5c f0 08               	movq	%rbx, 8(%rax,%rsi,8)
     462: 48 89 4c f0 10               	movq	%rcx, 16(%rax,%rsi,8)
     467: 44 89 ce                     	movl	%r9d, %esi
     46a: 44 29 ee                     	subl	%r13d, %esi
     46d: 41 0f af f1                  	imull	%r9d, %esi
     471: 45 89 e2                     	movl	%r12d, %r10d
     474: 41 81 f2 ff ff 00 00         	xorl	$65535, %r10d
     47b: 44 01 d6                     	addl	%r10d, %esi
     47e: 0f b7 f6                     	movzwl	%si, %esi
     481: 8d 34 76                     	leal	(%rsi,%rsi,2), %esi
     484: 48 89 3c f0                  	movq	%rdi, (%rax,%rsi,8)
     488: 48 89 5c f0 08               	movq	%rbx, 8(%rax,%rsi,8)
     48d: 48 89 4c f0 10               	movq	%rcx, 16(%rax,%rsi,8)
     492: 44 01 ca                     	addl	%r9d, %edx
     495: 41 0f af d1                  	imull	%r9d, %edx
     499: 44 01 ea                     	addl	%r13d, %edx
     49c: 0f b7 d2                     	movzwl	%dx, %edx
     49f: 8d 14 52                     	leal	(%rdx,%rdx,2), %edx
     4a2: 48 89 3c d0                  	movq	%rdi, (%rax,%rdx,8)
     4a6: 48 89 5c d0 08               	movq	%rbx, 8(%rax,%rdx,8)
     4ab: 48 89 4c d0 10               	movq	%rcx, 16(%rax,%rdx,8)
     4b0: 48 8b 55 c0                  	movq	-64(%rbp), %rdx
     4b4: 41 0f af d1                  	imull	%r9d, %edx
     4b8: 44 01 d2                     	addl	%r10d, %edx
     4bb: 0f b7 d2                     	movzwl	%dx, %edx
     4be: 48 8d 14 52                  	leaq	(%rdx,%rdx,2), %rdx
     4c2: 48 89 3c d0                  	movq	%rdi, (%rax,%rdx,8)
     4c6: 48 89 5c d0 08               	movq	%rbx, 8(%rax,%rdx,8)
     4cb: 48 89 4c d0 10               	movq	%rcx, 16(%rax,%rdx,8)
     4d0: 44 89 ca                     	movl	%r9d, %edx
     4d3: 41 0f af d4                  	imull	%r12d, %edx
     4d7: 44 01 ea                     	addl	%r13d, %edx
     4da: 0f b7 d2                     	movzwl	%dx, %edx
     4dd: 48 8d 14 52                  	leaq	(%rdx,%rdx,2), %rdx
     4e1: 48 89 3c d0                  	movq	%rdi, (%rax,%rdx,8)
     4e5: 48 89 5c d0 08               	movq	%rbx, 8(%rax,%rdx,8)
     4ea: 48 89 4c d0 10               	movq	%rcx, 16(%rax,%rdx,8)
     4ef: 45 0f af c1                  	imull	%r9d, %r8d
     4f3: 45 01 e0                     	addl	%r12d, %r8d
     4f6: 41 0f b7 d0                  	movzwl	%r8w, %edx
     4fa: 8d 14 52                     	leal	(%rdx,%rdx,2), %edx
     4fd: 48 89 3c d0                  	movq	%rdi, (%rax,%rdx,8)
     501: 48 89 5c d0 08               	movq	%rbx, 8(%rax,%rdx,8)
     506: 48 89 4c d0 10               	movq	%rcx, 16(%rax,%rdx,8)
     50b: 44 89 ca                     	movl	%r9d, %edx
     50e: 44 29 e2                     	subl	%r12d, %edx
     511: 41 0f af d1                  	imull	%r9d, %edx
     515: 44 01 fa                     	addl	%r15d, %edx
     518: 0f b7 d2                     	movzwl	%dx, %edx
     51b: 8d 14 52                     	leal	(%rdx,%rdx,2), %edx
     51e: 48 89 3c d0                  	movq	%rdi, (%rax,%rdx,8)
     522: 48 89 5c d0 08               	movq	%rbx, 8(%rax,%rdx,8)
     527: e9 04 fd ff ff               	jmp	-764 <__ZN11ZobristHash10initializeEv+0x140>
     52c: 66 0f 6f c1                  	movdqa	%xmm1, %xmm0
     530: 66 0f db 05 a8 01 00 00      	pand	424(%rip), %xmm0
     538: 66 0f 6f d1                  	movdqa	%xmm1, %xmm2
     53c: 66 0f 72 f2 18               	pslld	$24, %xmm2
     541: 66 0f eb d0                  	por	%xmm0, %xmm2
     545: 66 0f 38 00 0d a2 01 00 00   	pshufb	418(%rip), %xmm1
     54e: 66 0f eb ca                  	por	%xmm2, %xmm1
     552: 41 0f b6 16                  	movzbl	(%r14), %edx
     556: 44 89 e9                     	movl	%r13d, %ecx
     559: 0f af ca                     	imull	%edx, %ecx
     55c: 03 4d c8                     	addl	-56(%rbp), %ecx
     55f: 49 8b 46 08                  	movq	8(%r14), %rax
     563: 0f b7 c9                     	movzwl	%cx, %ecx
     566: 48 8d 34 49                  	leaq	(%rcx,%rcx,2), %rsi
     56a: f3 0f 7f 0c f0               	movdqu	%xmm1, (%rax,%rsi,8)
     56f: 66 48 0f 3a 16 c9 01         	pextrq	$1, %xmm1, %rcx
     576: 48 c1 c1 20                  	rolq	$32, %rcx
     57a: 48 89 4c f0 10               	movq	%rcx, 16(%rax,%rsi,8)
     57f: 0f af 55 c0                  	imull	-64(%rbp), %edx
     583: 03 55 b0                     	addl	-80(%rbp), %edx
     586: 0f b7 d2                     	movzwl	%dx, %edx
     589: 48 8d 14 52                  	leaq	(%rdx,%rdx,2), %rdx
     58d: f3 0f 7f 0c d0               	movdqu	%xmm1, (%rax,%rdx,8)
     592: e9 99 fc ff ff               	jmp	-871 <__ZN11ZobristHash10initializeEv+0x140>
     597: 48 83 c4 38                  	addq	$56, %rsp
     59b: 5b                           	popq	%rbx
     59c: 41 5c                        	popq	%r12
     59e: 41 5d                        	popq	%r13
     5a0: 41 5e                        	popq	%r14
     5a2: 41 5f                        	popq	%r15
     5a4: 5d                           	popq	%rbp
     5a5: c3                           	retq
     5a6: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

00000000000005b0 __ZN11ZobristHashC2Ehh:
     5b0: 55                           	pushq	%rbp
     5b1: 48 89 e5                     	movq	%rsp, %rbp
     5b4: 41 56                        	pushq	%r14
     5b6: 53                           	pushq	%rbx
     5b7: 40 88 37                     	movb	%sil, (%rdi)
     5ba: 88 57 01                     	movb	%dl, 1(%rdi)
     5bd: 40 38 d6                     	cmpb	%dl, %sil
     5c0: 75 31                        	jne	49 <__ZN11ZobristHashC2Ehh+0x43>
     5c2: 48 89 fb                     	movq	%rdi, %rbx
     5c5: 40 0f b6 c6                  	movzbl	%sil, %eax
     5c9: 48 0f af c0                  	imulq	%rax, %rax
     5cd: 48 c1 e0 03                  	shlq	$3, %rax
     5d1: 48 8d 3c 40                  	leaq	(%rax,%rax,2), %rdi
     5d5: e8 00 00 00 00               	callq	0 <__ZN11ZobristHashC2Ehh+0x2a>
     5da: 48 89 43 08                  	movq	%rax, 8(%rbx)
     5de: 48 85 c0                     	testq	%rax, %rax
     5e1: 0f 84 93 00 00 00            	je	147 <__ZN11ZobristHashC2Ehh+0xca>
     5e7: 48 89 df                     	movq	%rbx, %rdi
     5ea: 5b                           	popq	%rbx
     5eb: 41 5e                        	popq	%r14
     5ed: 5d                           	popq	%rbp
     5ee: e9 00 00 00 00               	jmp	0 <__ZN11ZobristHashC2Ehh+0x43>
     5f3: 48 b8 73 74 20 68 61 73 68 00	movabsq	$29400259773887603, %rax
     5fd: 48 89 05 25 00 00 00         	movq	%rax, 37(%rip)
     604: 48 b8 5a 6f 62 72 69 73 74 20	movabsq	$2338621003239944026, %rax
     60e: 48 89 05 20 00 00 00         	movq	%rax, 32(%rip)
     615: 48 b8 74 63 68 20 66 6f 72 20	movabsq	$2338053640979768180, %rax
     61f: 48 89 05 18 00 00 00         	movq	%rax, 24(%rip)
     626: 48 b8 20 6d 75 73 74 20 6d 61	movabsq	$7020303078665841952, %rax
     630: 48 89 05 10 00 00 00         	movq	%rax, 16(%rip)
     637: 48 b8 64 20 68 65 69 67 68 74	movabsq	$8388068008348098660, %rax
     641: 48 89 05 08 00 00 00         	movq	%rax, 8(%rip)
     648: 48 b8 77 69 64 74 68 20 61 6e	movabsq	$7953674049914431863, %rax
     652: 48 89 05 00 00 00 00         	movq	%rax, (%rip)
     659: 4c 8d 35 00 00 00 00         	leaq	(%rip), %r14
     660: bf 10 00 00 00               	movl	$16, %edi
     665: e8 00 00 00 00               	callq	0 <__ZN11ZobristHashC2Ehh+0xba>
     66a: 48 89 c3                     	movq	%rax, %rbx
     66d: 48 89 c7                     	movq	%rax, %rdi
     670: 4c 89 f6                     	movq	%r14, %rsi
     673: e8 00 00 00 00               	callq	0 <__ZN11ZobristHashC2Ehh+0xc8>
     678: eb 1c                        	jmp	28 <__ZN11ZobristHashC2Ehh+0xe6>
     67a: bf 10 00 00 00               	movl	$16, %edi
     67f: e8 00 00 00 00               	callq	0 <__ZN11ZobristHashC2Ehh+0xd4>
     684: 48 89 c3                     	movq	%rax, %rbx
     687: 48 8d 35 ef 00 00 00         	leaq	239(%rip), %rsi
     68e: 48 89 c7                     	movq	%rax, %rdi
     691: e8 00 00 00 00               	callq	0 <__ZN11ZobristHashC2Ehh+0xe6>
     696: 48 8b 35 00 00 00 00         	movq	(%rip), %rsi
     69d: 48 8b 15 00 00 00 00         	movq	(%rip), %rdx
     6a4: 48 89 df                     	movq	%rbx, %rdi
     6a7: e8 00 00 00 00               	callq	0 <__ZN11ZobristHashC2Ehh+0xfc>
     6ac: eb 00                        	jmp	0 <__ZN11ZobristHashC2Ehh+0xfe>
     6ae: 49 89 c6                     	movq	%rax, %r14
     6b1: 48 89 df                     	movq	%rbx, %rdi
     6b4: e8 00 00 00 00               	callq	0 <__ZN11ZobristHashC2Ehh+0x109>
     6b9: 4c 89 f7                     	movq	%r14, %rdi
     6bc: e8 00 00 00 00               	callq	0 <__ZN11ZobristHashC2Ehh+0x111>
     6c1: 0f 0b                        	ud2
     6c3: 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)
     6cd: 0f 1f 00                     	nopl	(%rax)

00000000000006d0 __ZN11ZobristHashC1Ehh:
     6d0: 55                           	pushq	%rbp
     6d1: 48 89 e5                     	movq	%rsp, %rbp
     6d4: 5d                           	popq	%rbp
     6d5: e9 00 00 00 00               	jmp	0 <__ZN11ZobristHashC1Ehh+0xa>
