	.text
	.file	"argz_extract.c"
	.globl	argz_extract            # -- Begin function argz_extract
	.p2align	4, 0x90
	.type	argz_extract,@function
argz_extract:                           # @argz_extract
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	argz_count
	cmpq	$2, %rbx
	jb	.LBB0_13
# %bb.1:
	movq	%rbx, %rsi
	addq	$-2, %rsi
	je	.LBB0_13
# %bb.2:
	movl	%esi, %r8d
	andl	$1, %r8d
	xorl	%ecx, %ecx
	cmpq	$3, %rbx
	je	.LBB0_10
# %bb.3:
	leaq	2(%r8), %r9
	xorl	%ecx, %ecx
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	addq	$-2, %rbx
	cmpq	%rbx, %r9
	je	.LBB0_9
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, -2(%r15,%rbx)
	je	.LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	cmpb	$0, -3(%r15,%rbx)
	jne	.LBB0_8
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	addl	$1, %ecx
	leaq	(%r15,%rbx), %rdi
	addq	$-1, %rdi
	movslq	%ecx, %rdx
	movq	%rax, %rsi
	subq	%rdx, %rsi
	movq	%rdi, (%r14,%rsi,8)
	cmpb	$0, -3(%r15,%rbx)
	jne	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	addl	$1, %ecx
	leaq	(%r15,%rbx), %rdx
	addq	$-2, %rdx
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	subq	%rsi, %rdi
	movq	%rdx, (%r14,%rdi,8)
	jmp	.LBB0_8
.LBB0_9:                                # %.loopexit
	addq	$-2, %rbx
	movq	%rbx, %rsi
.LBB0_10:
	testq	%r8, %r8
	je	.LBB0_13
# %bb.11:
	cmpb	$0, (%r15,%rsi)
	jne	.LBB0_13
# %bb.12:
	addl	$1, %ecx
	leaq	(%rsi,%r15), %rdx
	addq	$1, %rdx
	movslq	%ecx, %rcx
	movq	%rax, %rsi
	subq	%rcx, %rsi
	movq	%rdx, (%r14,%rsi,8)
.LBB0_13:
	movq	%r15, (%r14)
	movq	$0, (%r14,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	argz_extract, .Lfunc_end0-argz_extract
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
