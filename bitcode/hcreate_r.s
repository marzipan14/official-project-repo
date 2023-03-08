	.text
	.file	"hcreate_r.c"
	.globl	hcreate_r               # -- Begin function hcreate_r
	.p2align	4, 0x90
	.type	hcreate_r,@function
hcreate_r:                              # @hcreate_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	cmpq	$0, (%rsi)
	je	.LBB0_4
# %bb.1:
	callq	__errno
	movl	$22, (%rax)
.LBB0_2:
	xorl	%eax, %eax
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_4:
	movq	%rsi, %rbx
	cmpq	$16, %rdi
	movl	$16, %eax
	cmovaq	%rdi, %rax
	movq	%rax, %rcx
	shrq	$58, %rcx
	movabsq	$288230376151711744, %rdi # imm = 0x400000000000000
	cmoveq	%rax, %rdi
	movabsq	$576460752303423487, %rax # imm = 0x7FFFFFFFFFFFFFF
	addq	%rdi, %rax
	testq	%rdi, %rax
	je	.LBB0_8
# %bb.5:
	xorl	%ecx, %ecx
	testq	%rdi, %rdi
	je	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	shrq	%rdi
	addl	$1, %ecx
	testq	%rdi, %rdi
	jne	.LBB0_6
.LBB0_7:
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movslq	%eax, %rdi
.LBB0_8:
	movq	%rdi, 8(%rbx)
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB0_12
# %bb.9:
	movq	%rax, %rcx
	movq	8(%rbx), %r8
	movl	$1, %eax
	testq	%r8, %r8
	je	.LBB0_3
# %bb.10:
	cmpq	$3, %r8
	ja	.LBB0_13
# %bb.11:
	xorl	%esi, %esi
	jmp	.LBB0_21
.LBB0_12:
	callq	__errno
	movl	$12, (%rax)
	jmp	.LBB0_2
.LBB0_13:
	movq	%r8, %rsi
	andq	$-4, %rsi
	leaq	-4(%rsi), %rdx
	movq	%rdx, %rdi
	shrq	$2, %rdi
	addq	$1, %rdi
	movl	%edi, %ebx
	andl	$7, %ebx
	cmpq	$28, %rdx
	jae	.LBB0_15
# %bb.14:
	xorl	%edx, %edx
	jmp	.LBB0_17
.LBB0_15:
	subq	%rbx, %rdi
	xorl	%edx, %edx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rcx,%rdx,8)
	movups	%xmm0, 16(%rcx,%rdx,8)
	movups	%xmm0, 32(%rcx,%rdx,8)
	movups	%xmm0, 48(%rcx,%rdx,8)
	movups	%xmm0, 64(%rcx,%rdx,8)
	movups	%xmm0, 80(%rcx,%rdx,8)
	movups	%xmm0, 96(%rcx,%rdx,8)
	movups	%xmm0, 112(%rcx,%rdx,8)
	movups	%xmm0, 128(%rcx,%rdx,8)
	movups	%xmm0, 144(%rcx,%rdx,8)
	movups	%xmm0, 160(%rcx,%rdx,8)
	movups	%xmm0, 176(%rcx,%rdx,8)
	movups	%xmm0, 192(%rcx,%rdx,8)
	movups	%xmm0, 208(%rcx,%rdx,8)
	movups	%xmm0, 224(%rcx,%rdx,8)
	movups	%xmm0, 240(%rcx,%rdx,8)
	addq	$32, %rdx
	addq	$-8, %rdi
	jne	.LBB0_16
.LBB0_17:
	testq	%rbx, %rbx
	je	.LBB0_20
# %bb.18:                               # %.preheader
	leaq	(%rcx,%rdx,8), %rdx
	addq	$16, %rdx
	negq	%rbx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, (%rdx)
	addq	$32, %rdx
	incq	%rbx
	jne	.LBB0_19
.LBB0_20:
	cmpq	%rsi, %r8
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movq	$0, (%rcx,%rsi,8)
	addq	$1, %rsi
	cmpq	%r8, %rsi
	jb	.LBB0_21
	jmp	.LBB0_3
.Lfunc_end0:
	.size	hcreate_r, .Lfunc_end0-hcreate_r
                                        # -- End function
	.globl	hdestroy_r              # -- Begin function hdestroy_r
	.p2align	4, 0x90
	.type	hdestroy_r,@function
hdestroy_r:                             # @hdestroy_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB1_2
# %bb.1:
	callq	free
	movq	$0, (%rbx)
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	hdestroy_r, .Lfunc_end1-hdestroy_r
                                        # -- End function
	.globl	hsearch_r               # -- Begin function hsearch_r
	.p2align	4, 0x90
	.type	hsearch_r,@function
hsearch_r:                              # @hsearch_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%r8, %r13
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%edx, %r12d
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdi, %rbx
	callq	strlen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*__default_hash(%rip)
	movq	(%r13), %r14
	movl	8(%r13), %r13d
	addl	$-1, %r13d
	andl	%eax, %r13d
	movq	(%r14,%r13,8), %r15
	testq	%r15, %r15
	je	.LBB2_4
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rdi
	movq	%rbx, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_10
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	movq	(%r15), %r15
	testq	%r15, %r15
	jne	.LBB2_2
.LBB2_4:
	testl	%r12d, %r12d
	je	.LBB2_5
# %bb.6:
	movl	$24, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB2_5
# %bb.7:
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rbx, 8(%rax)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, 16(%rax)
	movq	(%r14,%r13,8), %rdx
	movq	%rdx, (%rax)
	movq	%rax, (%r14,%r13,8)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, (%rax)
	jmp	.LBB2_8
.LBB2_5:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	xorl	%eax, %eax
	jmp	.LBB2_9
.LBB2_10:
	addq	$8, %r15
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r15, (%rax)
.LBB2_8:
	movl	$1, %eax
.LBB2_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	hsearch_r, .Lfunc_end2-hsearch_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
