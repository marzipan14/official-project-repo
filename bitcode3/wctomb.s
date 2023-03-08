	.text
	.file	"wctomb.c"
	.globl	wctomb                  # -- Begin function wctomb
	.p2align	4, 0x90
	.type	wctomb,@function
wctomb:                                 # @wctomb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	cmpl	$256, %esi              # imm = 0x100
	jb	.LBB0_4
# %bb.3:
	callq	__errno
	movl	$138, (%rax)
	movl	$-1, %eax
	popq	%rbp
	retq
.LBB0_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
.LBB0_4:
	movb	%sil, (%rdi)
	movl	$1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	wctomb, .Lfunc_end0-wctomb
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
