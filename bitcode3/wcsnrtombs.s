	.text
	.file	"wcsnrtombs.c"
	.globl	_wcsnrtombs_l           # -- Begin function _wcsnrtombs_l
	.p2align	4, 0x90
	.type	_wcsnrtombs_l,@function
_wcsnrtombs_l:                          # @_wcsnrtombs_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	cmpq	$1, %rsi
	movl	$0, %r13d
	sbbq	%r13, %r13
	orq	%r8, %r13
	je	.LBB0_35
# %bb.1:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdx
	xorl	%r14d, %r14d
	movq	-80(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_26 Depth 2
	subq	$1, %rcx
	jb	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %ebx
	movl	4(%rcx), %r15d
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	(%rdx), %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	leaq	-50(%rbp), %rsi
	movq	16(%rbp), %rax
	callq	*224(%rax)
	cmpl	$-1, %eax
	je	.LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	%eax, %ecx
	cltq
	addq	%r14, %rax
	cmpq	%r13, %rax
	ja	.LBB0_33
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	je	.LBB0_29
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	testl	%ecx, %ecx
	jle	.LBB0_28
# %bb.9:                                #   in Loop: Header=BB0_2 Depth=1
	leal	-1(%rcx), %r8d
	movl	%ecx, %r10d
	cmpl	$32, %ecx
	jb	.LBB0_10
# %bb.11:                               #   in Loop: Header=BB0_2 Depth=1
	leaq	(%r10,%rbp), %rcx
	addq	$-50, %rcx
	cmpq	%rcx, %r12
	jae	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%r10, %rcx
	addq	%r12, %rcx
	leaq	-50(%rbp), %rdx
	cmpq	%rcx, %rdx
	jae	.LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	xorl	%ecx, %ecx
	movq	%r12, %rdi
.LBB0_22:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rcx, %r9
	notq	%r9
	addq	%r10, %r9
	movq	%r10, %rsi
	andq	$7, %rsi
	je	.LBB0_24
	.p2align	4, 0x90
.LBB0_23:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-50(%rbp,%rcx), %edx
	movb	%dl, (%rdi)
	addq	$1, %rdi
	addq	$1, %rcx
	addq	$-1, %rsi
	jne	.LBB0_23
.LBB0_24:                               #   in Loop: Header=BB0_2 Depth=1
	cmpq	$7, %r9
	jb	.LBB0_27
# %bb.25:                               # %.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	subq	%rcx, %r10
	leaq	-43(%rbp), %rdx
	addq	%rdx, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_26:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-7(%rcx,%rdx), %ebx
	movb	%bl, (%rdi,%rdx)
	movzbl	-6(%rcx,%rdx), %ebx
	movb	%bl, 1(%rdi,%rdx)
	movzbl	-5(%rcx,%rdx), %ebx
	movb	%bl, 2(%rdi,%rdx)
	movzbl	-4(%rcx,%rdx), %ebx
	movb	%bl, 3(%rdi,%rdx)
	movzbl	-3(%rcx,%rdx), %ebx
	movb	%bl, 4(%rdi,%rdx)
	movzbl	-2(%rcx,%rdx), %ebx
	movb	%bl, 5(%rdi,%rdx)
	movzbl	-1(%rcx,%rdx), %ebx
	movb	%bl, 6(%rdi,%rdx)
	movzbl	(%rcx,%rdx), %ebx
	movb	%bl, 7(%rdi,%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %r10
	jne	.LBB0_26
	jmp	.LBB0_27
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%r10d, %ecx
	andl	$-32, %ecx
	leaq	-32(%rcx), %rsi
	movq	%rsi, %rdx
	shrq	$5, %rdx
	addq	$1, %rdx
	movl	%edx, %r9d
	andl	$3, %r9d
	cmpq	$96, %rsi
	jae	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	xorl	%edx, %edx
	jmp	.LBB0_17
.LBB0_15:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%r9, %rdi
	subq	%rdx, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_16:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-50(%rbp,%rdx), %xmm0
	movups	-34(%rbp,%rdx), %xmm1
	movups	%xmm0, (%r12,%rdx)
	movups	%xmm1, 16(%r12,%rdx)
	movups	-18(%rbp,%rdx), %xmm0
	movups	-2(%rbp,%rdx), %xmm1
	movups	%xmm0, 32(%r12,%rdx)
	movups	%xmm1, 48(%r12,%rdx)
	movups	14(%rbp,%rdx), %xmm0
	movups	30(%rbp,%rdx), %xmm1
	movups	%xmm0, 64(%r12,%rdx)
	movups	%xmm1, 80(%r12,%rdx)
	movups	46(%rbp,%rdx), %xmm0
	movups	62(%rbp,%rdx), %xmm1
	movups	%xmm0, 96(%r12,%rdx)
	movups	%xmm1, 112(%r12,%rdx)
	subq	$-128, %rdx
	addq	$4, %rdi
	jne	.LBB0_16
.LBB0_17:                               #   in Loop: Header=BB0_2 Depth=1
	testq	%r9, %r9
	je	.LBB0_20
# %bb.18:                               # %.preheader3
                                        #   in Loop: Header=BB0_2 Depth=1
	leaq	-34(%rbp), %rsi
	leaq	(%rsi,%rdx), %rdi
	addq	%r12, %rdx
	addq	$16, %rdx
	shlq	$5, %r9
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_19:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-16(%rdi,%rsi), %xmm0
	movups	(%rdi,%rsi), %xmm1
	movups	%xmm0, -16(%rdx,%rsi)
	movups	%xmm1, (%rdx,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %r9
	jne	.LBB0_19
.LBB0_20:                               #   in Loop: Header=BB0_2 Depth=1
	cmpq	%r10, %rcx
	jne	.LBB0_21
	.p2align	4, 0x90
.LBB0_27:                               #   in Loop: Header=BB0_2 Depth=1
	addq	%r8, %r12
	addq	$1, %r12
.LBB0_28:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	$4, (%rcx)
.LBB0_29:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpl	$0, (%rdx)
	movq	-104(%rbp), %rcx        # 8-byte Reload
	je	.LBB0_30
# %bb.34:                               #   in Loop: Header=BB0_2 Depth=1
	addq	$4, %rdx
	movq	%rax, %r14
	cmpq	%r13, %rax
	jb	.LBB0_2
	jmp	.LBB0_35
.LBB0_21:                               #   in Loop: Header=BB0_2 Depth=1
	leaq	(%r12,%rcx), %rdi
	jmp	.LBB0_22
.LBB0_3:
	movq	%r14, %rax
	jmp	.LBB0_35
.LBB0_5:
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	$138, (%rax)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movq	$-1, %rax
	jmp	.LBB0_35
.LBB0_33:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%ebx, (%rax)
	movl	%r15d, 4(%rax)
	movq	%r14, %rax
	jmp	.LBB0_35
.LBB0_30:
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	je	.LBB0_32
# %bb.31:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	$0, (%rcx)
.LBB0_32:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	$0, (%rcx)
	addq	$-1, %rax
.LBB0_35:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_wcsnrtombs_l, .Lfunc_end0-_wcsnrtombs_l
                                        # -- End function
	.globl	_wcsnrtombs_r           # -- Begin function _wcsnrtombs_r
	.p2align	4, 0x90
	.type	_wcsnrtombs_r,@function
_wcsnrtombs_r:                          # @_wcsnrtombs_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rbx
	callq	__getreent
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__getreent
	movq	%rax, %rcx
	xorl	%eax, %eax
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	cmpq	$1, %rbx
	movl	$0, %r12d
	sbbq	%r12, %r12
	orq	%r14, %r12
	je	.LBB1_35
# %bb.1:
	movq	72(%rcx), %rax
	testq	%rax, %rax
	movl	$__global_locale, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdx
	xorl	%ebx, %ebx
	movq	-80(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
                                        #     Child Loop BB1_19 Depth 2
                                        #     Child Loop BB1_23 Depth 2
                                        #     Child Loop BB1_26 Depth 2
	subq	$1, %r15
	jb	.LBB1_3
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	4(%rcx), %r13d
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	(%rdx), %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	leaq	-50(%rbp), %rsi
	movq	-112(%rbp), %rax        # 8-byte Reload
	callq	*224(%rax)
	cmpl	$-1, %eax
	je	.LBB1_5
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %ecx
	cltq
	addq	%rbx, %rax
	cmpq	%r12, %rax
	ja	.LBB1_33
# %bb.7:                                #   in Loop: Header=BB1_2 Depth=1
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	je	.LBB1_29
# %bb.8:                                #   in Loop: Header=BB1_2 Depth=1
	testl	%ecx, %ecx
	jle	.LBB1_28
# %bb.9:                                #   in Loop: Header=BB1_2 Depth=1
	leal	-1(%rcx), %r8d
	movl	%ecx, %r10d
	cmpl	$32, %ecx
	jb	.LBB1_10
# %bb.11:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	(%r10,%rbp), %rcx
	addq	$-50, %rcx
	cmpq	%rcx, %r14
	jae	.LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%r10, %rcx
	addq	%r14, %rcx
	leaq	-50(%rbp), %rdx
	cmpq	%rcx, %rdx
	jae	.LBB1_13
.LBB1_10:                               #   in Loop: Header=BB1_2 Depth=1
	xorl	%ecx, %ecx
	movq	%r14, %rdi
.LBB1_22:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%rcx, %r9
	notq	%r9
	addq	%r10, %r9
	movq	%r10, %rsi
	andq	$7, %rsi
	je	.LBB1_24
	.p2align	4, 0x90
.LBB1_23:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-50(%rbp,%rcx), %edx
	movb	%dl, (%rdi)
	addq	$1, %rdi
	addq	$1, %rcx
	addq	$-1, %rsi
	jne	.LBB1_23
.LBB1_24:                               #   in Loop: Header=BB1_2 Depth=1
	cmpq	$7, %r9
	jb	.LBB1_27
# %bb.25:                               # %.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	subq	%rcx, %r10
	leaq	-43(%rbp), %rdx
	addq	%rdx, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_26:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-7(%rcx,%rdx), %ebx
	movb	%bl, (%rdi,%rdx)
	movzbl	-6(%rcx,%rdx), %ebx
	movb	%bl, 1(%rdi,%rdx)
	movzbl	-5(%rcx,%rdx), %ebx
	movb	%bl, 2(%rdi,%rdx)
	movzbl	-4(%rcx,%rdx), %ebx
	movb	%bl, 3(%rdi,%rdx)
	movzbl	-3(%rcx,%rdx), %ebx
	movb	%bl, 4(%rdi,%rdx)
	movzbl	-2(%rcx,%rdx), %ebx
	movb	%bl, 5(%rdi,%rdx)
	movzbl	-1(%rcx,%rdx), %ebx
	movb	%bl, 6(%rdi,%rdx)
	movzbl	(%rcx,%rdx), %ebx
	movb	%bl, 7(%rdi,%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %r10
	jne	.LBB1_26
	jmp	.LBB1_27
.LBB1_13:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r10d, %ecx
	andl	$-32, %ecx
	leaq	-32(%rcx), %rsi
	movq	%rsi, %rdx
	shrq	$5, %rdx
	addq	$1, %rdx
	movl	%edx, %r9d
	andl	$3, %r9d
	cmpq	$96, %rsi
	jae	.LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_2 Depth=1
	xorl	%edx, %edx
	jmp	.LBB1_17
.LBB1_15:                               #   in Loop: Header=BB1_2 Depth=1
	movq	%r9, %rdi
	subq	%rdx, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_16:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-50(%rbp,%rdx), %xmm0
	movups	-34(%rbp,%rdx), %xmm1
	movups	%xmm0, (%r14,%rdx)
	movups	%xmm1, 16(%r14,%rdx)
	movups	-18(%rbp,%rdx), %xmm0
	movups	-2(%rbp,%rdx), %xmm1
	movups	%xmm0, 32(%r14,%rdx)
	movups	%xmm1, 48(%r14,%rdx)
	movups	14(%rbp,%rdx), %xmm0
	movups	30(%rbp,%rdx), %xmm1
	movups	%xmm0, 64(%r14,%rdx)
	movups	%xmm1, 80(%r14,%rdx)
	movups	46(%rbp,%rdx), %xmm0
	movups	62(%rbp,%rdx), %xmm1
	movups	%xmm0, 96(%r14,%rdx)
	movups	%xmm1, 112(%r14,%rdx)
	subq	$-128, %rdx
	addq	$4, %rdi
	jne	.LBB1_16
.LBB1_17:                               #   in Loop: Header=BB1_2 Depth=1
	testq	%r9, %r9
	je	.LBB1_20
# %bb.18:                               # %.preheader3
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	-34(%rbp), %rsi
	leaq	(%rsi,%rdx), %rdi
	addq	%r14, %rdx
	addq	$16, %rdx
	shlq	$5, %r9
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_19:                               #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-16(%rdi,%rsi), %xmm0
	movups	(%rdi,%rsi), %xmm1
	movups	%xmm0, -16(%rdx,%rsi)
	movups	%xmm1, (%rdx,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %r9
	jne	.LBB1_19
.LBB1_20:                               #   in Loop: Header=BB1_2 Depth=1
	cmpq	%r10, %rcx
	jne	.LBB1_21
	.p2align	4, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%r8d, %ecx
	addq	%rcx, %r14
	addq	$1, %r14
.LBB1_28:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addq	$4, (%rcx)
.LBB1_29:                               #   in Loop: Header=BB1_2 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpl	$0, (%rdx)
	je	.LBB1_30
# %bb.34:                               #   in Loop: Header=BB1_2 Depth=1
	addq	$4, %rdx
	movq	%rax, %rbx
	cmpq	%r12, %rax
	jb	.LBB1_2
	jmp	.LBB1_35
.LBB1_21:                               #   in Loop: Header=BB1_2 Depth=1
	leaq	(%r14,%rcx), %rdi
	jmp	.LBB1_22
.LBB1_3:
	movq	%rbx, %rax
	jmp	.LBB1_35
.LBB1_5:
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	$138, (%rax)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movq	$-1, %rax
	jmp	.LBB1_35
.LBB1_33:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	movl	%r13d, 4(%rax)
	movq	%rbx, %rax
	jmp	.LBB1_35
.LBB1_30:
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	je	.LBB1_32
# %bb.31:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	$0, (%rcx)
.LBB1_32:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	$0, (%rcx)
	addq	$-1, %rax
.LBB1_35:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_wcsnrtombs_r, .Lfunc_end1-_wcsnrtombs_r
                                        # -- End function
	.globl	wcsnrtombs              # -- Begin function wcsnrtombs
	.p2align	4, 0x90
	.type	wcsnrtombs,@function
wcsnrtombs:                             # @wcsnrtombs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rcx, %r13
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__getreent
	movq	%rax, %rcx
	xorl	%eax, %eax
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	cmpq	$1, %rbx
	movl	$0, %r11d
	sbbq	%r11, %r11
	orq	%r13, %r11
	je	.LBB2_36
# %bb.1:
	movq	72(%rcx), %rax
	testq	%rax, %rax
	movl	$__global_locale, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	(%r14), %rdx
	xorl	%ebx, %ebx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_17 Depth 2
                                        #     Child Loop BB2_20 Depth 2
                                        #     Child Loop BB2_24 Depth 2
                                        #     Child Loop BB2_27 Depth 2
	movq	-112(%rbp), %rax        # 8-byte Reload
	subq	$1, %rax
	jb	.LBB2_3
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%r11, %r12
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	4(%rcx), %r13d
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	(%rdx), %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	leaq	-50(%rbp), %rsi
	movq	-120(%rbp), %rax        # 8-byte Reload
	callq	*224(%rax)
	cmpl	$-1, %eax
	je	.LBB2_5
# %bb.6:                                #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, %ecx
	cltq
	addq	%rbx, %rax
	cmpq	%r12, %rax
	ja	.LBB2_34
# %bb.7:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %r11
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB2_30
# %bb.8:                                #   in Loop: Header=BB2_2 Depth=1
	testl	%ecx, %ecx
	jle	.LBB2_9
# %bb.10:                               #   in Loop: Header=BB2_2 Depth=1
	leal	-1(%rcx), %r8d
	movl	%ecx, %r10d
	cmpl	$32, %ecx
	jb	.LBB2_11
# %bb.12:                               #   in Loop: Header=BB2_2 Depth=1
	leaq	(%r10,%rbp), %rcx
	addq	$-50, %rcx
	cmpq	%rcx, %r15
	jae	.LBB2_14
# %bb.13:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r10, %rcx
	addq	%r15, %rcx
	leaq	-50(%rbp), %rdx
	cmpq	%rcx, %rdx
	jae	.LBB2_14
.LBB2_11:                               #   in Loop: Header=BB2_2 Depth=1
	xorl	%ecx, %ecx
	movq	%r15, %rdi
.LBB2_23:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rcx, %r9
	notq	%r9
	addq	%r10, %r9
	movq	%r10, %rsi
	andq	$7, %rsi
	je	.LBB2_25
	.p2align	4, 0x90
.LBB2_24:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-50(%rbp,%rcx), %edx
	movb	%dl, (%rdi)
	addq	$1, %rdi
	addq	$1, %rcx
	addq	$-1, %rsi
	jne	.LBB2_24
.LBB2_25:                               #   in Loop: Header=BB2_2 Depth=1
	cmpq	$7, %r9
	jb	.LBB2_28
# %bb.26:                               # %.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	subq	%rcx, %r10
	leaq	-43(%rbp), %rdx
	addq	%rdx, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB2_27:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-7(%rcx,%rdx), %ebx
	movb	%bl, (%rdi,%rdx)
	movzbl	-6(%rcx,%rdx), %ebx
	movb	%bl, 1(%rdi,%rdx)
	movzbl	-5(%rcx,%rdx), %ebx
	movb	%bl, 2(%rdi,%rdx)
	movzbl	-4(%rcx,%rdx), %ebx
	movb	%bl, 3(%rdi,%rdx)
	movzbl	-3(%rcx,%rdx), %ebx
	movb	%bl, 4(%rdi,%rdx)
	movzbl	-2(%rcx,%rdx), %ebx
	movb	%bl, 5(%rdi,%rdx)
	movzbl	-1(%rcx,%rdx), %ebx
	movb	%bl, 6(%rdi,%rdx)
	movzbl	(%rcx,%rdx), %ebx
	movb	%bl, 7(%rdi,%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %r10
	jne	.LBB2_27
	jmp	.LBB2_28
	.p2align	4, 0x90
.LBB2_9:                                #   in Loop: Header=BB2_2 Depth=1
	movq	-88(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB2_29
.LBB2_14:                               #   in Loop: Header=BB2_2 Depth=1
	movl	%r10d, %ecx
	andl	$-32, %ecx
	leaq	-32(%rcx), %rsi
	movq	%rsi, %rdx
	shrq	$5, %rdx
	addq	$1, %rdx
	movl	%edx, %r9d
	andl	$3, %r9d
	cmpq	$96, %rsi
	jae	.LBB2_16
# %bb.15:                               #   in Loop: Header=BB2_2 Depth=1
	xorl	%edx, %edx
	jmp	.LBB2_18
.LBB2_16:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %rdi
	subq	%rdx, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB2_17:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-50(%rbp,%rdx), %xmm0
	movups	-34(%rbp,%rdx), %xmm1
	movups	%xmm0, (%r15,%rdx)
	movups	%xmm1, 16(%r15,%rdx)
	movups	-18(%rbp,%rdx), %xmm0
	movups	-2(%rbp,%rdx), %xmm1
	movups	%xmm0, 32(%r15,%rdx)
	movups	%xmm1, 48(%r15,%rdx)
	movups	14(%rbp,%rdx), %xmm0
	movups	30(%rbp,%rdx), %xmm1
	movups	%xmm0, 64(%r15,%rdx)
	movups	%xmm1, 80(%r15,%rdx)
	movups	46(%rbp,%rdx), %xmm0
	movups	62(%rbp,%rdx), %xmm1
	movups	%xmm0, 96(%r15,%rdx)
	movups	%xmm1, 112(%r15,%rdx)
	subq	$-128, %rdx
	addq	$4, %rdi
	jne	.LBB2_17
.LBB2_18:                               #   in Loop: Header=BB2_2 Depth=1
	testq	%r9, %r9
	je	.LBB2_21
# %bb.19:                               # %.preheader3
                                        #   in Loop: Header=BB2_2 Depth=1
	leaq	-34(%rbp), %rsi
	leaq	(%rsi,%rdx), %rdi
	addq	%r15, %rdx
	addq	$16, %rdx
	shlq	$5, %r9
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB2_20:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-16(%rdi,%rsi), %xmm0
	movups	(%rdi,%rsi), %xmm1
	movups	%xmm0, -16(%rdx,%rsi)
	movups	%xmm1, (%rdx,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %r9
	jne	.LBB2_20
.LBB2_21:                               #   in Loop: Header=BB2_2 Depth=1
	cmpq	%r10, %rcx
	jne	.LBB2_22
	.p2align	4, 0x90
.LBB2_28:                               #   in Loop: Header=BB2_2 Depth=1
	movl	%r8d, %ecx
	addq	%rcx, %r15
	addq	$1, %r15
	movq	(%r14), %rcx
.LBB2_29:                               #   in Loop: Header=BB2_2 Depth=1
	addq	$4, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, (%r14)
.LBB2_30:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpl	$0, (%rdx)
	je	.LBB2_31
# %bb.35:                               #   in Loop: Header=BB2_2 Depth=1
	addq	$4, %rdx
	movq	%rax, %rbx
	cmpq	%r11, %rax
	jb	.LBB2_2
	jmp	.LBB2_36
.LBB2_22:                               #   in Loop: Header=BB2_2 Depth=1
	leaq	(%r15,%rcx), %rdi
	jmp	.LBB2_23
.LBB2_3:
	movq	%rbx, %rax
	jmp	.LBB2_36
.LBB2_5:
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	$138, (%rax)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movq	$-1, %rax
	jmp	.LBB2_36
.LBB2_34:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	movl	%r13d, 4(%rax)
	movq	%rbx, %rax
	jmp	.LBB2_36
.LBB2_31:
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB2_33
# %bb.32:
	movq	$0, (%r14)
.LBB2_33:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	$0, (%rcx)
	addq	$-1, %rax
.LBB2_36:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	wcsnrtombs, .Lfunc_end2-wcsnrtombs
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
