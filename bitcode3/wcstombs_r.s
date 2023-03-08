	.text
	.file	"wcstombs_r.c"
	.globl	_wcstombs_r             # -- Begin function _wcstombs_r
	.p2align	4, 0x90
	.type	_wcstombs_r,@function
_wcstombs_r:                            # @_wcstombs_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rdx, %r13
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	testq	%rsi, %rsi
	je	.LBB0_26
# %bb.1:
	movq	%rcx, %r12
	testq	%rcx, %rcx
	je	.LBB0_30
# %bb.2:                                # %.preheader8
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %r15
	movq	%r12, %r14
	.p2align	4, 0x90
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_13 Depth 2
	callq	__getreent
	movq	72(%rax), %rbx
	testq	%rbx, %rbx
	movl	$__global_locale, %eax
	cmoveq	%rax, %rbx
	movl	(%r13), %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	-48(%rbp), %rsi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	*224(%rbx)
                                        # kill: def $eax killed $eax def $rax
	cmpl	$-1, %eax
	je	.LBB0_34
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movslq	%eax, %r9
	cmpq	%r9, %r14
	cmovbel	%r14d, %eax
	testl	%eax, %eax
	jle	.LBB0_23
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	leal	-1(%rax), %r8d
	movl	%eax, %r11d
	cmpl	$32, %eax
	jb	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	leaq	(%r11,%rbp), %rcx
	addq	$-48, %rcx
	cmpq	%rcx, %r15
	jae	.LBB0_14
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	leaq	(%r15,%r11), %rcx
	leaq	-48(%rbp), %rdx
	cmpq	%rcx, %rdx
	jae	.LBB0_14
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movq	%r15, %rdx
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%rdi, %r10
	notq	%r10
	addq	%r11, %r10
	movq	%r11, %rsi
	andq	$7, %rsi
	je	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-48(%rbp,%rdi), %ecx
	movb	%cl, (%rdx)
	addq	$1, %rdx
	addq	$1, %rdi
	addq	$-1, %rsi
	jne	.LBB0_10
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	cmpq	$7, %r10
	jb	.LBB0_22
# %bb.12:                               # %.preheader1
                                        #   in Loop: Header=BB0_3 Depth=1
	subq	%rdi, %r11
	leaq	-41(%rbp), %rcx
	addq	%rcx, %rdi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_13:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-7(%rdi,%rcx), %ebx
	movb	%bl, (%rdx,%rcx)
	movzbl	-6(%rdi,%rcx), %ebx
	movb	%bl, 1(%rdx,%rcx)
	movzbl	-5(%rdi,%rcx), %ebx
	movb	%bl, 2(%rdx,%rcx)
	movzbl	-4(%rdi,%rcx), %ebx
	movb	%bl, 3(%rdx,%rcx)
	movzbl	-3(%rdi,%rcx), %ebx
	movb	%bl, 4(%rdx,%rcx)
	movzbl	-2(%rdi,%rcx), %ebx
	movb	%bl, 5(%rdx,%rcx)
	movzbl	-1(%rdi,%rcx), %ebx
	movb	%bl, 6(%rdx,%rcx)
	movzbl	(%rdi,%rcx), %ebx
	movb	%bl, 7(%rdx,%rcx)
	addq	$8, %rcx
	cmpq	%rcx, %r11
	jne	.LBB0_13
	jmp	.LBB0_22
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	movl	%r11d, %edi
	andl	$-32, %edi
	leaq	-32(%rdi), %rdx
	movq	%rdx, %rcx
	shrq	$5, %rcx
	addq	$1, %rcx
	movl	%ecx, %r10d
	andl	$3, %r10d
	cmpq	$96, %rdx
	jae	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%r10, %rdx
	subq	%rcx, %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_17:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rbp,%rcx), %xmm0
	movups	-32(%rbp,%rcx), %xmm1
	movups	%xmm0, (%r15,%rcx)
	movups	%xmm1, 16(%r15,%rcx)
	movups	-16(%rbp,%rcx), %xmm0
	movups	(%rbp,%rcx), %xmm1
	movups	%xmm0, 32(%r15,%rcx)
	movups	%xmm1, 48(%r15,%rcx)
	movups	16(%rbp,%rcx), %xmm0
	movups	32(%rbp,%rcx), %xmm1
	movups	%xmm0, 64(%r15,%rcx)
	movups	%xmm1, 80(%r15,%rcx)
	movups	48(%rbp,%rcx), %xmm0
	movups	64(%rbp,%rcx), %xmm1
	movups	%xmm0, 96(%r15,%rcx)
	movups	%xmm1, 112(%r15,%rcx)
	subq	$-128, %rcx
	addq	$4, %rdx
	jne	.LBB0_17
.LBB0_18:                               #   in Loop: Header=BB0_3 Depth=1
	testq	%r10, %r10
	je	.LBB0_21
# %bb.19:                               # %.preheader5
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	addq	%r15, %rcx
	addq	$16, %rcx
	shlq	$5, %r10
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_20:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-16(%rdx,%rsi), %xmm0
	movups	(%rdx,%rsi), %xmm1
	movups	%xmm0, -16(%rcx,%rsi)
	movups	%xmm1, (%rcx,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %r10
	jne	.LBB0_20
.LBB0_21:                               #   in Loop: Header=BB0_3 Depth=1
	cmpq	%r11, %rdi
	jne	.LBB0_25
	.p2align	4, 0x90
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=1
	addq	%r8, %r15
	addq	$1, %r15
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, (%r13)
	je	.LBB0_33
# %bb.24:                               #   in Loop: Header=BB0_3 Depth=1
	addq	$4, %r13
	cltq
	subq	%rax, %r14
	jne	.LBB0_3
	jmp	.LBB0_35
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
	leaq	(%r15,%rdi), %rdx
	jmp	.LBB0_9
.LBB0_26:
	cmpl	$0, (%r13)
	je	.LBB0_30
# %bb.27:                               # %.preheader
	addq	$4, %r13
	xorl	%r12d, %r12d
	movl	$__global_locale, %r14d
	leaq	-48(%rbp), %r15
	.p2align	4, 0x90
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	callq	__getreent
	movq	72(%rax), %rbx
	testq	%rbx, %rbx
	cmoveq	%r14, %rbx
	movl	-4(%r13), %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	*224(%rbx)
	cmpl	$-1, %eax
	je	.LBB0_34
# %bb.29:                               #   in Loop: Header=BB0_28 Depth=1
	cltq
	addq	%rax, %r12
	cmpl	$0, (%r13)
	leaq	4(%r13), %r13
	jne	.LBB0_28
	jmp	.LBB0_35
.LBB0_30:
	xorl	%r12d, %r12d
	jmp	.LBB0_35
.LBB0_34:
	movq	$-1, %r12
	jmp	.LBB0_35
.LBB0_33:
	xorl	%eax, %eax
	cmpq	%r9, %r14
	setae	%al
	addq	-72(%rbp), %rax         # 8-byte Folded Reload
	subq	%rax, %r15
	movq	%r15, %r12
.LBB0_35:
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_wcstombs_r, .Lfunc_end0-_wcstombs_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
