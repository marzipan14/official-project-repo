	.text
	.file	"kf_sin.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __kernel_sinf
.LCPI0_0:
	.long	791595475               # float 1.58969102E-10
.LCPI0_1:
	.long	3000446772              # float -2.50507597E-8
.LCPI0_2:
	.long	909700891               # float 2.75573143E-6
.LCPI0_3:
	.long	3109031169              # float -1.98412701E-4
.LCPI0_4:
	.long	1007192201              # float 0.00833333377
.LCPI0_5:
	.long	1056964608              # float 0.5
.LCPI0_6:
	.long	1042983595              # float 0.166666672
.LCPI0_7:
	.long	3190467243              # float -0.166666672
	.text
	.globl	__kernel_sinf
	.p2align	4, 0x90
	.type	__kernel_sinf,@function
__kernel_sinf:                          # @__kernel_sinf
# %bb.0:
	movd	%xmm0, %eax
	andl	$2113929216, %eax       # imm = 0x7E000000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$838860799, %eax        # imm = 0x31FFFFFF
	ja	.LBB0_2
# %bb.1:
	cvttss2si	%xmm0, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_5
.LBB0_2:
	movaps	%xmm0, %xmm3
	mulss	%xmm0, %xmm3
	movaps	%xmm3, %xmm2
	movss	.LCPI0_0(%rip), %xmm4   # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm4
	addss	.LCPI0_1(%rip), %xmm4
	mulss	%xmm0, %xmm2
	mulss	%xmm3, %xmm4
	addss	.LCPI0_2(%rip), %xmm4
	mulss	%xmm3, %xmm4
	addss	.LCPI0_3(%rip), %xmm4
	mulss	%xmm3, %xmm4
	addss	.LCPI0_4(%rip), %xmm4
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB0_3
# %bb.4:
	movss	.LCPI0_5(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm5
	mulss	%xmm2, %xmm4
	subss	%xmm4, %xmm5
	mulss	%xmm5, %xmm3
	subss	%xmm1, %xmm3
	mulss	.LCPI0_6(%rip), %xmm2
	addss	%xmm3, %xmm2
	subss	%xmm2, %xmm0
	jmp	.LBB0_5
.LBB0_3:
	mulss	%xmm4, %xmm3
	addss	.LCPI0_7(%rip), %xmm3
	mulss	%xmm3, %xmm2
	addss	%xmm2, %xmm0
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__kernel_sinf, .Lfunc_end0-__kernel_sinf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
