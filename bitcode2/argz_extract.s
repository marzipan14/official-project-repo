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
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	argz_count
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rbx
	jb	.LBB0_6
# %bb.1:
	movq	%rbx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-2, %rcx
	je	.LBB0_6
# %bb.2:                                # %.preheader
	leaq	(%rbx,%r14), %rdx
	addq	$-1, %rdx
	xorl	%esi, %esi
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$-1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	je	.LBB0_6
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, -1(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	addl	$1, %esi
	movslq	%esi, %rdi
	movq	%rax, %rbx
	subq	%rdi, %rbx
	movq	%rdx, (%r15,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_5
.LBB0_6:
	movq	%r14, (%r15)
	movq	$0, (%r15,%rax,8)
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
