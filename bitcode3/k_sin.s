	.text
	.file	"k_sin.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __kernel_sin
.LCPI0_0:
	.quad	4460209850635244924     # double 1.5896909952115501E-10
.LCPI0_1:
	.quad	-4730215680275931925    # double -2.5050760253406863E-8
.LCPI0_2:
	.quad	4523617212983017085     # double 2.7557313707070068E-6
.LCPI0_3:
	.quad	-4671919876304969259    # double -1.9841269829857949E-4
.LCPI0_4:
	.quad	4575957461383575718     # double 0.0083333333333224895
.LCPI0_5:
	.quad	4602678819172646912     # double 0.5
.LCPI0_6:
	.quad	4595172819793696073     # double 0.16666666666666632
.LCPI0_7:
	.quad	-4628199217061079735    # double -0.16666666666666632
	.text
	.globl	__kernel_sin
	.p2align	4, 0x90
	.type	__kernel_sin,@function
__kernel_sin:                           # @__kernel_sin
# %bb.0:
	cvttsd2si	%xmm0, %eax
	testl	%eax, %eax
	jne	.LBB0_2
# %bb.1:
	movq	%xmm0, %rax
	movabsq	$9205357638345293824, %rcx # imm = 0x7FC0000000000000
	andq	%rax, %rcx
	shrq	$54, %rcx
	cmpl	$249, %ecx
	jae	.LBB0_2
# %bb.5:
	retq
.LBB0_2:
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	.LCPI0_0(%rip), %xmm4   # xmm4 = mem[0],zero
	mulsd	%xmm2, %xmm4
	addsd	.LCPI0_1(%rip), %xmm4
	movapd	%xmm2, %xmm3
	mulsd	%xmm2, %xmm4
	addsd	.LCPI0_2(%rip), %xmm4
	mulsd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm4
	addsd	.LCPI0_3(%rip), %xmm4
	mulsd	%xmm2, %xmm4
	addsd	.LCPI0_4(%rip), %xmm4
	testl	%edi, %edi
	je	.LBB0_3
# %bb.4:
	movsd	.LCPI0_5(%rip), %xmm5   # xmm5 = mem[0],zero
	mulsd	%xmm1, %xmm5
	mulsd	%xmm3, %xmm4
	subsd	%xmm4, %xmm5
	mulsd	%xmm5, %xmm2
	subsd	%xmm1, %xmm2
	mulsd	.LCPI0_6(%rip), %xmm3
	addsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm0
	retq
.LBB0_3:
	mulsd	%xmm4, %xmm2
	addsd	.LCPI0_7(%rip), %xmm2
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm0
	retq
.Lfunc_end0:
	.size	__kernel_sin, .Lfunc_end0-__kernel_sin
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
