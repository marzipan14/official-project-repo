	.text
	.file	"strlcat.c"
	.globl	strlcat                 # -- Begin function strlcat
	.p2align	4, 0x90
	.type	strlcat,@function
strlcat:                                # @strlcat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rcx
	testq	%rdx, %rdx
	je	.LBB0_4
# %bb.1:                                # %.preheader1
	movq	%rdx, %rax
	movq	%rdi, %rcx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$-1, %rax
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_2
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movq	%rcx, %r14
	subq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	subq	%r14, %rdx
	je	.LBB0_14
# %bb.6:
	movb	(%rsi), %bl
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rax
	testb	%bl, %bl
	je	.LBB0_12
# %bb.7:
	movl	$1, %edi
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	movb	%bl, (%rcx)
	addq	$1, %rcx
	addq	$-1, %rdx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rax), %ebx
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB0_12
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rdx
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	%rdi, %rdx
	jmp	.LBB0_11
.LBB0_12:
	movb	$0, (%rcx)
	subq	%rsi, %rax
	jmp	.LBB0_13
.LBB0_14:
	movq	%rsi, %rdi
	callq	strlen
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strlcat, .Lfunc_end0-strlcat
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
