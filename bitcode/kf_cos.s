	.text
	.file	"kf_cos.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __kernel_cosf
.LCPI0_0:
	.long	1065353216              # float 1
.LCPI0_1:
	.long	2907166542              # float -1.13596476E-11
.LCPI0_2:
	.long	823096566               # float 2.08757234E-9
.LCPI0_3:
	.long	3029594748              # float -2.75573143E-7
.LCPI0_4:
	.long	936381697               # float 2.48015876E-5
.LCPI0_5:
	.long	3132492641              # float -0.00138888892
.LCPI0_6:
	.long	1026206379              # float 0.0416666679
.LCPI0_7:
	.long	1049624576              # float 0.28125
.LCPI0_8:
	.long	1056964608              # float 0.5
.LCPI0_9:
	.long	3204448256              # float -0.5
	.text
	.globl	__kernel_cosf
	.p2align	4, 0x90
	.type	__kernel_cosf,@function
__kernel_cosf:                          # @__kernel_cosf
# %bb.0:
	movd	%xmm0, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cvttss2si	%xmm0, %ecx
	testl	%ecx, %ecx
	jne	.LBB0_3
# %bb.1:
	cmpl	$838860800, %eax        # imm = 0x32000000
	jae	.LBB0_3
# %bb.2:
	movss	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	jmp	.LBB0_9
.LBB0_3:
	movaps	%xmm0, %xmm4
	mulss	%xmm0, %xmm4
	movss	.LCPI0_1(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm3
	addss	.LCPI0_2(%rip), %xmm3
	mulss	%xmm4, %xmm3
	addss	.LCPI0_3(%rip), %xmm3
	mulss	%xmm4, %xmm3
	addss	.LCPI0_4(%rip), %xmm3
	mulss	%xmm4, %xmm3
	addss	.LCPI0_5(%rip), %xmm3
	mulss	%xmm4, %xmm3
	addss	.LCPI0_6(%rip), %xmm3
	mulss	%xmm4, %xmm3
	cmpl	$1050253721, %eax       # imm = 0x3E999999
	ja	.LBB0_5
# %bb.4:
	movss	.LCPI0_9(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm2
	mulss	%xmm4, %xmm3
	mulss	%xmm1, %xmm0
	subss	%xmm0, %xmm3
	addss	%xmm2, %xmm3
	addss	.LCPI0_0(%rip), %xmm3
	movaps	%xmm3, %xmm2
	jmp	.LBB0_9
.LBB0_5:
	cmpl	$1061683200, %eax       # imm = 0x3F480000
	ja	.LBB0_6
# %bb.7:
	addl	$-16777216, %eax        # imm = 0xFF000000
	movd	%eax, %xmm5
	jmp	.LBB0_8
.LBB0_6:
	movd	.LCPI0_7(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
.LBB0_8:
	movss	.LCPI0_8(%rip), %xmm6   # xmm6 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm6
	subss	%xmm5, %xmm6
	movss	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	subss	%xmm5, %xmm2
	mulss	%xmm4, %xmm3
	mulss	%xmm1, %xmm0
	subss	%xmm0, %xmm3
	subss	%xmm3, %xmm6
	subss	%xmm6, %xmm2
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm2, %xmm0
	retq
.Lfunc_end0:
	.size	__kernel_cosf, .Lfunc_end0-__kernel_cosf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
