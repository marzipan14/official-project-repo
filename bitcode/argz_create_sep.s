	.text
	.file	"argz_create_sep.c"
	.globl	argz_create_sep         # -- Begin function argz_create_sep
	.p2align	4, 0x90
	.type	argz_create_sep,@function
argz_create_sep:                        # @argz_create_sep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	$0, -56(%rbp)
	movq	$0, (%rcx)
	testq	%rdi, %rdi
	je	.LBB0_2
# %bb.1:
	cmpb	$0, (%rdi)
	je	.LBB0_2
# %bb.3:
	movq	%rcx, %rbx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movb	%sil, -42(%rbp)
	movb	$0, -41(%rbp)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	strdup
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-42(%rbp), %rsi
	callq	strsep
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB0_6
# %bb.4:                                # %.preheader
	leaq	-56(%rbp), %r13
	leaq	-42(%rbp), %r12
	movabsq	$4294967296, %r15       # imm = 0x100000000
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdi
	callq	strlen
	shlq	$32, %rax
	addq	%r15, %rax
	sarq	$32, %rax
	addq	%rax, (%rbx)
	addl	$1, %r14d
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	strsep
	testq	%rax, %rax
	jne	.LBB0_5
.LBB0_6:
	movq	(%rbx), %rdi
	callq	malloc
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB0_7
# %bb.8:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	free
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	strdup
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)
	testl	%r14d, %r14d
	je	.LBB0_11
# %bb.9:
	movq	(%rbx), %rbx
	leaq	-42(%rbp), %r12
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	callq	strsep
	movq	%rax, %r13
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, %r15
	shlq	$32, %r15
	movabsq	$4294967296, %rax       # imm = 0x100000000
	addq	%rax, %r15
	sarq	$32, %r15
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, %rbx
	addl	$-1, %r14d
	jne	.LBB0_10
.LBB0_11:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	free
	jmp	.LBB0_12
.LBB0_2:
	movq	$0, (%rdx)
.LBB0_12:
	xorl	%eax, %eax
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_7:
	movl	$12, %eax
	jmp	.LBB0_13
.Lfunc_end0:
	.size	argz_create_sep, .Lfunc_end0-argz_create_sep
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
