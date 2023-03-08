	.text
	.file	"ef_acosh.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_acoshf
.LCPI0_0:
	.long	3212836864              # float -1
.LCPI0_1:
	.long	1060205080              # float 0.693147182
	.text
	.globl	__ieee754_acoshf
	.p2align	4, 0x90
	.type	__ieee754_acoshf,@function
__ieee754_acoshf:                       # @__ieee754_acoshf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %eax
	cmpl	$1065353215, %eax       # imm = 0x3F7FFFFF
	jg	.LBB0_2
# %bb.1:
	subss	%xmm1, %xmm1
	divss	%xmm1, %xmm1
	movaps	%xmm1, %xmm0
	jmp	.LBB0_10
.LBB0_2:
	cmpl	$1300234240, %eax       # imm = 0x4D800000
	jl	.LBB0_6
# %bb.3:
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	jge	.LBB0_4
# %bb.5:
	movaps	%xmm1, %xmm0
	callq	__ieee754_logf
	addss	.LCPI0_1(%rip), %xmm0
	jmp	.LBB0_10
.LBB0_6:
	pxor	%xmm0, %xmm0
	cmpl	$1065353216, %eax       # imm = 0x3F800000
	je	.LBB0_10
# %bb.7:
	cmpl	$1073741825, %eax       # imm = 0x40000001
	jl	.LBB0_9
# %bb.8:
	movaps	%xmm1, %xmm0
	mulss	%xmm1, %xmm0
	movaps	%xmm1, %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, -8(%rbp)         # 4-byte Spill
	addss	.LCPI0_0(%rip), %xmm0
	movss	%xmm1, -4(%rbp)         # 4-byte Spill
	callq	__ieee754_sqrtf
	addss	-4(%rbp), %xmm0         # 4-byte Folded Reload
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	addss	-8(%rbp), %xmm1         # 4-byte Folded Reload
	movaps	%xmm1, %xmm0
	callq	__ieee754_logf
	jmp	.LBB0_10
.LBB0_4:
	addss	%xmm1, %xmm1
	movaps	%xmm1, %xmm0
	jmp	.LBB0_10
.LBB0_9:
	addss	.LCPI0_0(%rip), %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm1, -4(%rbp)         # 4-byte Spill
	addss	%xmm1, %xmm1
	mulss	%xmm0, %xmm0
	addss	%xmm1, %xmm0
	callq	__ieee754_sqrtf
	addss	-4(%rbp), %xmm0         # 4-byte Folded Reload
	callq	log1pf
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_acoshf, .Lfunc_end0-__ieee754_acoshf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
