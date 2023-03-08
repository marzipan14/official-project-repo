	.text
	.file	"wcslen.c"
	.globl	wcslen                  # -- Begin function wcslen
	.p2align	4, 0x90
	.type	wcslen,@function
wcslen:                                 # @wcslen
# %bb.0:
	leaq	-4(%rdi), %rax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, 4(%rax)
	leaq	4(%rax), %rax
	jne	.LBB0_1
# %bb.2:
	subq	%rdi, %rax
	sarq	$2, %rax
	retq
.Lfunc_end0:
	.size	wcslen, .Lfunc_end0-wcslen
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
