	.text
	.file	"__ten_mu.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ten_mul
.LCPI0_0:
	.quad	4621819117588971520     # double 10
	.text
	.globl	__ten_mul
	.p2align	4, 0x90
	.type	__ten_mul,@function
__ten_mul:                              # @__ten_mul
# %bb.0:
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	mulsd	.LCPI0_0(%rip), %xmm0
	cvtsi2sd	%esi, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	__ten_mul, .Lfunc_end0-__ten_mul
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
