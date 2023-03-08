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
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rsi, %r15
	movq	(%r13), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_5
# %bb.4:
	cmpq	$3, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_7
.LBB0_5:
	movl	$128, %esi
	movq	%r12, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_22
# %bb.6:
	movq	%rax, %r12
	movq	%rax, (%r13)
	movq	$128, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movq	%r13, -64(%rbp)         # 8-byte Spill
	callq	__getreent
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_10
# %bb.8:
	cmpl	$0, 80(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_10
# %bb.9:
	movq	%rax, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movq	(%r15), %r13
	movq	%r12, %r15
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r13
	.p2align	4, 0x90
.LBB0_12:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	movq	%rbx, %rdi
	callq	getc_unlocked
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_18
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	movb	%al, (%r15)
	addq	$1, %r15
	addq	$-1, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %eax
	jne	.LBB0_12
	jmp	.LBB0_18
.LBB0_15:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r13
	addq	%r13, %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_24
# %bb.16:                               #   in Loop: Header=BB0_11 Depth=1
	subl	%r12d, %r15d
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%r13, (%rcx)
	movslq	%r15d, %rcx
	movq	%rax, %r15
	addq	%rcx, %r15
	subq	%rcx, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r12
	jmp	.LBB0_11
.LBB0_17:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB0_22
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movq	%r15, %rax
	movl	$42, __A_VARIABLE(%rip)
	subq	%r12, %rax
	je	.LBB0_22
# %bb.20:
	movb	$0, (%r15)
	jmp	.LBB0_23
.LBB0_22:
	movq	$-1, %rax
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_24:
	xorl	%r12d, %r12d
	jmp	.LBB0_19
.Lfunc_end0:
	.size	__getdelim, .Lfunc_end0-__getdelim
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
