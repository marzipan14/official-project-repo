	.text
	.file	"ef_cosh.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_coshf
.LCPI0_0:
	.long	2139095040              # float +Inf
.LCPI0_1:
	.long	1056964608              # float 0.5
.LCPI0_2:
	.long	1065353216              # float 1
	.text
	.globl	__ieee754_coshf
	.p2align	4, 0x90
	.type	__ieee754_coshf,@function
__ieee754_coshf:                        # @__ieee754_coshf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movdqa	%xmm0, %xmm2
	movd	%xmm0, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095040, %ebx       # imm = 0x7F800000
	jae	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1051816471, %ebx       # imm = 0x3EB17217
	ja	.LBB0_5
# %bb.3:
	movaps	%xmm2, %xmm0
	callq	fabsf
	callq	expm1f
	movss	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$603979776, %ebx        # imm = 0x24000000
	jb	.LBB0_12
# %bb.4:
	mulss	%xmm0, %xmm0
	addss	%xmm2, %xmm2
	divss	%xmm2, %xmm0
	addss	.LCPI0_2(%rip), %xmm0
	movaps	%xmm0, %xmm2
	jmp	.LBB0_12
.LBB0_1:
	mulss	%xmm2, %xmm2
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm2, %xmm0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1102053375, %ebx       # imm = 0x41AFFFFF
	ja	.LBB0_7
# %bb.6:
	movaps	%xmm2, %xmm0
	callq	fabsf
	callq	__ieee754_expf
	movss	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	mulss	%xmm2, %xmm1
	divss	%xmm0, %xmm2
	addss	%xmm1, %xmm2
	jmp	.LBB0_12
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1118925335, %ebx       # imm = 0x42B17217
	ja	.LBB0_9
# %bb.8:
	movaps	%xmm2, %xmm0
	callq	fabsf
	callq	__ieee754_expf
	movaps	%xmm0, %xmm2
	mulss	.LCPI0_1(%rip), %xmm2
	jmp	.LBB0_12
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1119016188, %ebx       # imm = 0x42B2D4FC
	ja	.LBB0_10
# %bb.11:
	movaps	%xmm2, %xmm0
	callq	fabsf
	mulss	.LCPI0_1(%rip), %xmm0
	callq	__ieee754_expf
	movss	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm2
	mulss	%xmm0, %xmm2
	jmp	.LBB0_12
.LBB0_10:
	movss	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB0_12
.Lfunc_end0:
	.size	__ieee754_coshf, .Lfunc_end0-__ieee754_coshf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
