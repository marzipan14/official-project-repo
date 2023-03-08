	.text
	.file	"getdelim.c"
	.globl	__getdelim              # -- Begin function __getdelim
	.p2align	4, 0x90
	.type	__getdelim,@function
__getdelim:                             # @__getdelim
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	testq	%rsi, %rsi
	je	.LBB0_17
# %bb.1:
	movq	%rdi, %r13
	testq	%rdi, %rdi
	je	.LBB0_17
# %bb.2:
	movq	%rcx, %rbx
	testq	%rcx, %rcx
	je	.LBB0_17
# %bb.3:
	movl	%edx, %r14d
	movq	%rsi, %r12
	movq	(%r13), %r15
	testq	%r15, %r15
	je	.LBB0_5
# %bb.4:
	cmpq	$3, (%r12)
	ja	.LBB0_7
.LBB0_5:
	movl	$128, %esi
	movq	%r15, %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB0_22
# %bb.6:
	movq	%rax, %r15
	movq	%rax, (%r13)
	movq	$128, (%r12)
.LBB0_7:
	movq	%r13, -64(%rbp)         # 8-byte Spill
	callq	__getreent
	testq	%rax, %rax
	je	.LBB0_10
# %bb.8:
	cmpl	$0, 80(%rax)
	jne	.LBB0_10
# %bb.9:
	movq	%rax, %rdi
	callq	__sinit
.LBB0_10:
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movq	(%r12), %r12
	movq	%r15, %r13
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	addq	$-1, %r12
	.p2align	4, 0x90
.LBB0_12:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%r12, %r12
	je	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	movq	%rbx, %rdi
	callq	getc_unlocked
	cmpl	$-1, %eax
	je	.LBB0_20
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	movb	%al, (%r13)
	addq	$1, %r13
	addq	$-1, %r12
	cmpl	%r14d, %eax
	jne	.LBB0_12
	jmp	.LBB0_20
.LBB0_15:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r12
	addq	%r12, %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_11 Depth=1
	subl	%r15d, %r13d
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%r12, (%rcx)
	movslq	%r13d, %rcx
	movq	%rax, %r13
	addq	%rcx, %r13
	subq	%rcx, %r12
	movq	%rax, %r15
	jmp	.LBB0_11
.LBB0_17:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB0_22
.LBB0_19:
	xorl	%r15d, %r15d
.LBB0_20:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movq	%r13, %rax
	subq	%r15, %rax
	je	.LBB0_22
# %bb.21:
	movb	$0, (%r13)
	jmp	.LBB0_23
.LBB0_22:
	movq	$-1, %rax
.LBB0_23:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__getdelim, .Lfunc_end0-__getdelim
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
