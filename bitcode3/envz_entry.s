	.text
	.file	"envz_entry.c"
	.globl	envz_entry              # -- Begin function envz_entry
	.p2align	4, 0x90
	.type	envz_entry,@function
envz_entry:                             # @envz_entry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	testq	%rsi, %rsi
	je	.LBB0_13
# %bb.1:                                # %.preheader
	movq	%rdx, %rbx
	movq	%rdi, %r14
	leaq	-40(%rbp), %r15
	leaq	-48(%rbp), %r12
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_13
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	_buf_findstr
	testl	%eax, %eax
	je	.LBB0_12
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.LBB0_12
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	(%rax), %ecx
	cmpb	$61, %cl
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	testb	%cl, %cl
	jne	.LBB0_12
.LBB0_6:
	addq	$-1, %rax
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, -40(%rbp)
	movzbl	(%rax), %ecx
	cmpq	%rax, %r14
	leaq	-1(%rax), %rax
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	testb	%cl, %cl
	jne	.LBB0_7
.LBB0_9:
	testb	%cl, %cl
	je	.LBB0_11
# %bb.10:
	addq	$1, %rax
	jmp	.LBB0_14
.LBB0_13:
	xorl	%eax, %eax
.LBB0_14:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_11:
	addq	$2, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_14
.Lfunc_end0:
	.size	envz_entry, .Lfunc_end0-envz_entry
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
