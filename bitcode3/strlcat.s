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
	movq	%rdi, %rcx
	testq	%rdx, %rdx
	je	.LBB0_4
# %bb.1:                                # %.preheader1
	movq	%rdx, %rax
	movq	%rdi, %rcx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rcx)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$-1, %rax
	addq	$1, %rcx
	testq	%rax, %rax
	jne	.LBB0_2
.LBB0_4:
	movq	%rcx, %r14
	subq	%rdi, %r14
	subq	%r14, %rdx
	je	.LBB0_13
# %bb.5:
	movb	(%rsi), %bl
	movq	%rsi, %rax
	testb	%bl, %bl
	je	.LBB0_11
# %bb.6:
	movl	$1, %edi
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	movb	%bl, (%rcx)
	addq	$1, %rcx
	addq	$-1, %rdx
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	movzbl	1(%rax), %ebx
	addq	$1, %rax
	testb	%bl, %bl
	je	.LBB0_11
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	cmpq	$1, %rdx
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	%rdi, %rdx
	jmp	.LBB0_10
.LBB0_11:
	movb	$0, (%rcx)
	subq	%rsi, %rax
	jmp	.LBB0_12
.LBB0_13:
	movq	%rsi, %rdi
	callq	strlen
.LBB0_12:
	addq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strlcat, .Lfunc_end0-strlcat
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
