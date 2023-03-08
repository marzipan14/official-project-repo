	.text
	.file	"envz_strip.c"
	.globl	envz_strip              # -- Begin function envz_strip
	.p2align	4, 0x90
	.type	envz_strip,@function
envz_strip:                             # @envz_strip
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	callq	argz_next
	testq	%rax, %rax
	je	.LBB0_10
# %bb.1:                                # %.preheader
	movq	%rax, %rbx
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15), %rsi
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	movq	(%r14), %rdi
	movq	%rbx, %rdx
	callq	argz_next
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB0_8
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	$61, %esi
	callq	strchr
	testq	%rax, %rax
	jne	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	(%r15), %rsi
	movq	(%r14), %rdx
	addq	%rsi, %rdx
	addl	$1, %eax
	movslq	%eax, %r12
	leaq	(%rbx,%r12), %rax
	addq	$-1, %rax
	cmpq	%rax, %rdx
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	leaq	(%rbx,%r12), %rsi
	subq	%rsi, %rdx
	movq	%rbx, %rdi
	callq	memmove
	movq	(%r15), %rsi
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	subq	%r12, %rsi
	movq	%rsi, (%r15)
	movl	$1, %r12d
	jmp	.LBB0_7
.LBB0_8:
	testl	%r12d, %r12d
	je	.LBB0_10
# %bb.9:
	movq	(%r14), %rdi
	movq	(%r15), %rsi
	callq	realloc
	movq	%rax, (%r14)
.LBB0_10:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	envz_strip, .Lfunc_end0-envz_strip
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
