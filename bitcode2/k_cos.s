	.text
	.file	"k_cos.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __kernel_cos
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	-4780295122622859052    # double -1.1359647557788195E-11
.LCPI0_2:
	.quad	4477121870137962948     # double 2.0875723212981748E-9
.LCPI0_3:
	.quad	-4714566979978243411    # double -2.7557314351390663E-7
.LCPI0_4:
	.quad	4537941361668330896     # double 2.4801587289476729E-5
.LCPI0_5:
	.quad	-4659324094485802633    # double -0.001388888888887411
.LCPI0_6:
	.quad	4586165620538955084     # double 0.041666666666666602
.LCPI0_7:
	.quad	4598738169498697728     # double 0.28125
.LCPI0_8:
	.quad	4602678819172646912     # double 0.5
.LCPI0_9:
	.quad	-4620693217682128896    # double -0.5
	.text
	.globl	__kernel_cos
	.p2align	4, 0x90
	.type	__kernel_cos,@function
__kernel_cos:                           # @__kernel_cos
# %bb.0:
	movq	%xmm0, %rax
	shrq	$32, %rax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1044381695, %eax       # imm = 0x3E3FFFFF
	ja	.LBB0_3
# %bb.1:
	cvttsd2si	%xmm0, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_2
.LBB0_3:
	movapd	%xmm0, %xmm4
	mulsd	%xmm0, %xmm4
	movsd	.LCPI0_1(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm4, %xmm3
	addsd	.LCPI0_2(%rip), %xmm3
	mulsd	%xmm4, %xmm3
	addsd	.LCPI0_3(%rip), %xmm3
	mulsd	%xmm4, %xmm3
	addsd	.LCPI0_4(%rip), %xmm3
	mulsd	%xmm4, %xmm3
	addsd	.LCPI0_5(%rip), %xmm3
	mulsd	%xmm4, %xmm3
	addsd	.LCPI0_6(%rip), %xmm3
	mulsd	%xmm4, %xmm3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1070805810, %eax       # imm = 0x3FD33332
	ja	.LBB0_5
# %bb.4:
	movsd	.LCPI0_9(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm4, %xmm2
	mulsd	%xmm4, %xmm3
	mulsd	%xmm1, %xmm0
	subsd	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	addsd	.LCPI0_0(%rip), %xmm3
	movapd	%xmm3, %xmm2
	jmp	.LBB0_9
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1072234496, %eax       # imm = 0x3FE90000
	jbe	.LBB0_7
# %bb.6:
	movq	.LCPI0_7(%rip), %xmm5   # xmm5 = mem[0],zero
	jmp	.LBB0_8
.LBB0_2:
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB0_9
.LBB0_7:
	addl	$-2097152, %eax         # imm = 0xFFE00000
	shlq	$32, %rax
	movq	%rax, %xmm5
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI0_8(%rip), %xmm6   # xmm6 = mem[0],zero
	mulsd	%xmm4, %xmm6
	subsd	%xmm5, %xmm6
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	subsd	%xmm5, %xmm2
	mulsd	%xmm4, %xmm3
	mulsd	%xmm1, %xmm0
	subsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm6
	subsd	%xmm6, %xmm2
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm2, %xmm0
	retq
.Lfunc_end0:
	.size	__kernel_cos, .Lfunc_end0-__kernel_cos
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
