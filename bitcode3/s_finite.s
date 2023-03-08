	.text
	.file	"s_finite.c"
	.globl	finite                  # -- Begin function finite
	.p2align	4, 0x90
	.type	finite,@function
finite:                                 # @finite
# %bb.0:
	movq	%xmm0, %rax
	shrq	$32, %rax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	addl	$-2146435072, %eax      # imm = 0x80100000
	shrl	$31, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end0:
	.size	finite, .Lfunc_end0-finite
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
