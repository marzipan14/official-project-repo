	.text
	.file	"w_sincos.c"
	.globl	sincos                  # -- Begin function sincos
	.p2align	4, 0x90
	.type	sincos,@function
sincos:                                 # @sincos
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	sin
	movsd	%xmm0, (%rbx)
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cos
	movsd	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sincos, .Lfunc_end0-sincos
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
