	.text
	.file	"ctime_r.c"
	.globl	ctime_r                 # -- Begin function ctime_r
	.p2align	4, 0x90
	.type	ctime_r,@function
ctime_r:                                # @ctime_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %rbx
	leaq	-64(%rbp), %rsi
	callq	localtime_r
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	asctime_r
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ctime_r, .Lfunc_end0-ctime_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
