	.text
	.file	"el_hypot.c"
	.globl	__ieee754_hypotl        # -- Begin function __ieee754_hypotl
	.p2align	4, 0x90
	.type	__ieee754_hypotl,@function
__ieee754_hypotl:                       # @__ieee754_hypotl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	fldt	32(%rbp)
	fldt	16(%rbp)
	fstpl	-24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	fstpl	-16(%rbp)
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	__ieee754_hypot
	movsd	%xmm0, -8(%rbp)
	fldl	-8(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_hypotl, .Lfunc_end0-__ieee754_hypotl
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
