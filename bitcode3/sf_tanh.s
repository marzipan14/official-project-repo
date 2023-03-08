	.text
	.file	"sf_tanh.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function tanhf
.LCPI0_0:
	.long	1065353216              # float 1
.LCPI0_1:
	.long	3212836864              # float -1
.LCPI0_2:
	.long	3221225472              # float -2
.LCPI0_4:
	.long	1073741824              # float 2
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_3:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	tanhf
	.p2align	4, 0x90
	.type	tanhf,@function
tanhf:                                  # @tanhf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movdqa	%xmm0, %xmm1
	movd	%xmm0, %r14d
	movl	%r14d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$2139095040, %ebx       # imm = 0x7F800000
	jae	.LBB0_1
# %bb.4:
	cmpl	$1102053375, %ebx       # imm = 0x41AFFFFF
	ja	.LBB0_5
# %bb.6:
	cmpl	$603979775, %ebx        # imm = 0x23FFFFFF
	ja	.LBB0_8
# %bb.7:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	mulss	%xmm1, %xmm0
	jmp	.LBB0_13
.LBB0_1:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	testl	%r14d, %r14d
	js	.LBB0_3
# %bb.2:
	addss	.LCPI0_0(%rip), %xmm0
	jmp	.LBB0_13
.LBB0_5:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	testl	%r14d, %r14d
	js	.LBB0_12
	jmp	.LBB0_13
.LBB0_3:
	addss	.LCPI0_1(%rip), %xmm0
	jmp	.LBB0_13
.LBB0_8:
	movaps	%xmm1, %xmm0
	callq	fabsf
	cmpl	$1065353216, %ebx       # imm = 0x3F800000
	jb	.LBB0_10
# %bb.9:
	addss	%xmm0, %xmm0
	callq	expm1f
	movss	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	divss	%xmm0, %xmm1
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	testl	%r14d, %r14d
	js	.LBB0_12
	jmp	.LBB0_13
.LBB0_10:
	mulss	.LCPI0_2(%rip), %xmm0
	callq	expm1f
	movaps	%xmm0, %xmm1
	movaps	.LCPI0_3(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	xorps	%xmm1, %xmm0
	addss	.LCPI0_4(%rip), %xmm1
	divss	%xmm1, %xmm0
	testl	%r14d, %r14d
	jns	.LBB0_13
.LBB0_12:
	xorps	.LCPI0_3(%rip), %xmm0
.LBB0_13:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tanhf, .Lfunc_end0-tanhf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
