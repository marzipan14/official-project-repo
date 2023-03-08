	.text
	.file	"encrypt.c"
	.globl	setkey                  # -- Begin function setkey
	.p2align	4, 0x90
	.type	setkey,@function
setkey:                                 # @setkey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, -8(%rbp,%rax)
	movzbl	(%rdi,%rax,8), %ecx
	shlb	$7, %cl
	movb	%cl, -8(%rbp,%rax)
	movzbl	1(%rdi,%rax,8), %edx
	shlb	$6, %dl
	andb	$64, %dl
	orb	%cl, %dl
	movb	%dl, -8(%rbp,%rax)
	movzbl	2(%rdi,%rax,8), %ecx
	shlb	$5, %cl
	andb	$32, %cl
	orb	%dl, %cl
	movb	%cl, -8(%rbp,%rax)
	movzbl	3(%rdi,%rax,8), %edx
	shlb	$4, %dl
	andb	$16, %dl
	orb	%cl, %dl
	movb	%dl, -8(%rbp,%rax)
	movzbl	4(%rdi,%rax,8), %ecx
	shlb	$3, %cl
	andb	$8, %cl
	orb	%dl, %cl
	movb	%cl, -8(%rbp,%rax)
	movzbl	5(%rdi,%rax,8), %edx
	shlb	$2, %dl
	andb	$4, %dl
	orb	%cl, %dl
	movb	%dl, -8(%rbp,%rax)
	movzbl	6(%rdi,%rax,8), %ecx
	addb	%cl, %cl
	andb	$2, %cl
	orb	%dl, %cl
	movb	%cl, -8(%rbp,%rax)
	movzbl	7(%rdi,%rax,8), %edx
	andb	$1, %dl
	orb	%cl, %dl
	movb	%dl, -8(%rbp,%rax)
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB0_1
# %bb.2:
	leaq	-8(%rbp), %rdi
	movl	$__encrypt_key, %esi
	callq	__des_setkey
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	setkey, .Lfunc_end0-setkey
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function encrypt
.LCPI1_0:
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
.LCPI1_1:
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.text
	.globl	encrypt
	.p2align	4, 0x90
	.type	encrypt,@function
encrypt:                                # @encrypt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	movq	%rdi, %r15
	movl	$0, -48(%rbp)
	movl	$31, %ecx
	xorl	%edi, %edi
	movq	%r15, %rax
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edx
	andl	$1, %edx
	shll	%cl, %edx
	orl	%edi, %edx
	movl	%edx, -48(%rbp)
	movzbl	1(%rax), %edi
	andl	$1, %edi
	addl	$-1, %ecx
	shll	%cl, %edi
	orl	%edx, %edi
	movl	%edi, -48(%rbp)
	addq	$2, %rax
	subl	$1, %ecx
	jae	.LBB1_1
# %bb.2:
	leaq	32(%r15), %r13
	leaq	-44(%rbp), %r14
	movl	$0, -44(%rbp)
	movl	$31, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdx
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %ebx
	andl	$1, %ebx
	shll	%cl, %ebx
	orl	%eax, %ebx
	movl	%ebx, -44(%rbp)
	movzbl	1(%rdx), %eax
	andl	$1, %eax
	addl	$-1, %ecx
	shll	%cl, %eax
	orl	%ebx, %eax
	movl	%eax, -44(%rbp)
	addq	$2, %rdx
	subl	$1, %ecx
	jae	.LBB1_3
# %bb.4:
	testl	%esi, %esi
	je	.LBB1_15
# %bb.5:
	pshufd	$27, __encrypt_key+48(%rip), %xmm0 # xmm0 = mem[3,2,1,0]
	movdqa	%xmm0, -176(%rbp)
	pshufd	$27, __encrypt_key+112(%rip), %xmm0 # xmm0 = mem[3,2,1,0]
	movdqa	%xmm0, -112(%rbp)
	pshufd	$27, __encrypt_key+32(%rip), %xmm0 # xmm0 = mem[3,2,1,0]
	movdqa	%xmm0, -160(%rbp)
	pshufd	$27, __encrypt_key+96(%rip), %xmm0 # xmm0 = mem[3,2,1,0]
	pshufd	$27, __encrypt_key+16(%rip), %xmm1 # xmm1 = mem[3,2,1,0]
	movdqa	%xmm0, -96(%rbp)
	movdqa	%xmm1, -144(%rbp)
	pshufd	$27, __encrypt_key+80(%rip), %xmm0 # xmm0 = mem[3,2,1,0]
	movdqa	%xmm0, -80(%rbp)
	pshufd	$27, __encrypt_key(%rip), %xmm0 # xmm0 = mem[3,2,1,0]
	movdqa	%xmm0, -128(%rbp)
	pshufd	$27, __encrypt_key+64(%rip), %xmm0 # xmm0 = mem[3,2,1,0]
	movdqa	%xmm0, -64(%rbp)
	leaq	-176(%rbp), %rcx
	jmp	.LBB1_6
.LBB1_15:
	movl	$__encrypt_key, %ecx
.LBB1_6:
	movq	%rcx, (%rsp)
	leaq	-48(%rbp), %r12
	movl	%eax, %esi
	movq	%r12, %rdx
	movq	%r14, %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	__do_des
	leaq	-47(%rbp), %rax
	cmpq	%r15, %rax
	jbe	.LBB1_16
# %bb.7:
	leaq	32(%r15), %rax
	cmpq	%r12, %rax
	jbe	.LBB1_16
# %bb.8:                                # %.preheader1
	movl	$31, %eax
	movq	%r15, %rdx
	.p2align	4, 0x90
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %esi
	movl	%eax, %ecx
	shrl	%cl, %esi
	andb	$1, %sil
	movb	%sil, (%rdx)
	movl	-48(%rbp), %esi
	leal	-1(%rax), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %esi
	andb	$1, %sil
	movb	%sil, 1(%rdx)
	movl	-48(%rbp), %esi
	leal	-2(%rax), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %esi
	andb	$1, %sil
	movb	%sil, 2(%rdx)
	movl	-48(%rbp), %esi
	addl	$-3, %eax
	movl	%eax, %ecx
	shrl	%cl, %esi
	andb	$1, %sil
	movb	%sil, 3(%rdx)
	addq	$4, %rdx
	subl	$1, %eax
	jae	.LBB1_9
	jmp	.LBB1_10
.LBB1_16:
	movd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	pshufd	$80, %xmm0, %xmm0       # xmm0 = xmm0[0,0,1,1]
	movdqa	%xmm0, %xmm2
	psrld	$31, %xmm2
	psrld	$30, %xmm0
	pshufd	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqa	.LCPI1_0(%rip), %xmm0   # xmm0 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	pand	%xmm0, %xmm2
	packuswb	%xmm0, %xmm2
	packuswb	%xmm0, %xmm2
	movdqa	.LCPI1_1(%rip), %xmm1   # xmm1 = <1,1,u,u,u,u,u,u,u,u,u,u,u,u,u,u>
	pand	%xmm1, %xmm2
	movd	%xmm2, %eax
	movw	%ax, (%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$29, %xmm3
	psrld	$28, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 2(%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$27, %xmm3
	psrld	$26, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 4(%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$25, %xmm3
	psrld	$24, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 6(%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$23, %xmm3
	psrld	$22, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 8(%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$21, %xmm3
	psrld	$20, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 10(%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$19, %xmm3
	psrld	$18, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 12(%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$17, %xmm3
	psrld	$16, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 14(%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$15, %xmm3
	psrld	$14, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 16(%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$13, %xmm3
	psrld	$12, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 18(%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$11, %xmm3
	psrld	$10, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 20(%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$9, %xmm3
	psrld	$8, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 22(%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$7, %xmm3
	psrld	$6, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 24(%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$5, %xmm3
	psrld	$4, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 26(%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$3, %xmm3
	psrld	$2, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 28(%r15)
	movd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$1, %xmm3
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 30(%r15)
.LBB1_10:
	leaq	-43(%rbp), %rax
	cmpq	%rax, %r13
	jae	.LBB1_17
# %bb.11:
	leaq	64(%r15), %rax
	cmpq	%r14, %rax
	jbe	.LBB1_17
# %bb.12:                               # %.preheader
	movl	$31, %eax
	.p2align	4, 0x90
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	andb	$1, %dl
	movb	%dl, (%r13)
	movl	-44(%rbp), %edx
	leal	-1(%rax), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	andb	$1, %dl
	movb	%dl, 1(%r13)
	movl	-44(%rbp), %edx
	leal	-2(%rax), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	andb	$1, %dl
	movb	%dl, 2(%r13)
	movl	-44(%rbp), %edx
	addl	$-3, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	andb	$1, %dl
	movb	%dl, 3(%r13)
	addq	$4, %r13
	subl	$1, %eax
	jae	.LBB1_13
	jmp	.LBB1_14
.LBB1_17:
	movd	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	pshufd	$80, %xmm0, %xmm0       # xmm0 = xmm0[0,0,1,1]
	movdqa	%xmm0, %xmm2
	psrld	$31, %xmm2
	psrld	$30, %xmm0
	pshufd	$229, %xmm0, %xmm0      # xmm0 = xmm0[1,1,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqa	.LCPI1_0(%rip), %xmm0   # xmm0 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	pand	%xmm0, %xmm2
	packuswb	%xmm0, %xmm2
	packuswb	%xmm0, %xmm2
	movdqa	.LCPI1_1(%rip), %xmm1   # xmm1 = <1,1,u,u,u,u,u,u,u,u,u,u,u,u,u,u>
	pand	%xmm1, %xmm2
	movd	%xmm2, %eax
	movw	%ax, 32(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$29, %xmm3
	psrld	$28, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 34(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$27, %xmm3
	psrld	$26, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 36(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$25, %xmm3
	psrld	$24, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 38(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$23, %xmm3
	psrld	$22, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 40(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$21, %xmm3
	psrld	$20, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 42(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$19, %xmm3
	psrld	$18, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 44(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$17, %xmm3
	psrld	$16, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 46(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$15, %xmm3
	psrld	$14, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 48(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$13, %xmm3
	psrld	$12, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 50(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$11, %xmm3
	psrld	$10, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 52(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$9, %xmm3
	psrld	$8, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 54(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$7, %xmm3
	psrld	$6, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 56(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$5, %xmm3
	psrld	$4, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 58(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$3, %xmm3
	psrld	$2, %xmm2
	pshufd	$229, %xmm2, %xmm2      # xmm2 = xmm2[1,1,2,3]
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 60(%r15)
	movd	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	pshufd	$80, %xmm2, %xmm2       # xmm2 = xmm2[0,0,1,1]
	movdqa	%xmm2, %xmm3
	psrld	$1, %xmm3
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	pand	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	packuswb	%xmm0, %xmm3
	pand	%xmm1, %xmm3
	movd	%xmm3, %eax
	movw	%ax, 62(%r15)
.LBB1_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	encrypt, .Lfunc_end1-encrypt
                                        # -- End function
	.type	__encrypt_key,@object   # @__encrypt_key
	.local	__encrypt_key
	.comm	__encrypt_key,128,16
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
