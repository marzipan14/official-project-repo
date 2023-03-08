	.text
	.file	"s_atan.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function atan
.LCPI0_0:
	.quad	-4616189618054758400    # double -1
.LCPI0_1:
	.quad	-4613937818241073152    # double -1.5
.LCPI0_2:
	.quad	4609434218613702656     # double 1.5
.LCPI0_3:
	.quad	4607182418800017408     # double 1
.LCPI0_4:
	.quad	4611686018427387904     # double 2
.LCPI0_5:
	.quad	9094988921128908188     # double 1.0000000000000001E+300
.LCPI0_6:
	.quad	4580351289466214929     # double 0.016285820115365782
.LCPI0_7:
	.quad	4587333258118041067     # double 0.049768779946159324
.LCPI0_8:
	.quad	4589464229703073105     # double 0.066610731373875312
.LCPI0_9:
	.quad	4591215095208222830     # double 0.090908871334365065
.LCPI0_10:
	.quad	4594314991288484863     # double 0.14285714272503466
.LCPI0_11:
	.quad	4599676419421066509     # double 0.33333333333332932
.LCPI0_12:
	.quad	-4637946461342241745    # double -0.036531572744216916
.LCPI0_13:
	.quad	-4634804155249132134    # double -0.058335701337905735
.LCPI0_14:
	.quad	-4633165035261879699    # double -0.0769187620504483
.LCPI0_15:
	.quad	-4630701217362536847    # double -0.11111110405462356
.LCPI0_16:
	.quad	-4626998257160492092    # double -0.19999999999876483
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_17:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
.LCPI0_18:
	.quad	-4613618979930100456    # double -1.5707963267948966
	.quad	4609753056924675352     # double 1.5707963267948966
	.text
	.globl	atan
	.p2align	4, 0x90
	.type	atan,@function
atan:                                   # @atan
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%xmm0, %rax
	movq	%rax, %r14
	shrq	$32, %r14
	movl	%r14d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$1141899264, %ebx       # imm = 0x44100000
	jb	.LBB0_6
# %bb.1:
	cmpl	$2146435072, %ebx       # imm = 0x7FF00000
	ja	.LBB0_4
# %bb.2:
	testl	%eax, %eax
	je	.LBB0_5
# %bb.3:
	cmpl	$2146435072, %ebx       # imm = 0x7FF00000
	jne	.LBB0_5
.LBB0_4:
	addsd	%xmm0, %xmm0
	jmp	.LBB0_21
.LBB0_6:
	cmpl	$1071382527, %ebx       # imm = 0x3FDBFFFF
	ja	.LBB0_9
# %bb.7:
	movsd	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	ucomisd	.LCPI0_3(%rip), %xmm1
	movl	$-1, %eax
	jbe	.LBB0_16
# %bb.8:
	cmpl	$1042284544, %ebx       # imm = 0x3E200000
	jb	.LBB0_21
	jmp	.LBB0_16
.LBB0_9:
	callq	fabs
	movdqa	%xmm0, %xmm1
	cmpl	$1072889855, %ebx       # imm = 0x3FF2FFFF
	ja	.LBB0_13
# %bb.10:
	cmpl	$1072037887, %ebx       # imm = 0x3FE5FFFF
	ja	.LBB0_12
# %bb.11:
	movapd	%xmm1, %xmm0
	addsd	%xmm1, %xmm0
	addsd	.LCPI0_0(%rip), %xmm0
	addsd	.LCPI0_4(%rip), %xmm1
	divsd	%xmm1, %xmm0
	xorl	%eax, %eax
	jmp	.LBB0_16
.LBB0_5:
	xorl	%eax, %eax
	testl	%r14d, %r14d
	setg	%al
	movsd	.LCPI0_18(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB0_21
.LBB0_13:
	cmpl	$1073971199, %ebx       # imm = 0x40037FFF
	ja	.LBB0_15
# %bb.14:
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	mulsd	.LCPI0_2(%rip), %xmm1
	addsd	.LCPI0_3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movl	$2, %eax
	jmp	.LBB0_16
.LBB0_12:
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	addsd	.LCPI0_3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movl	$1, %eax
	jmp	.LBB0_16
.LBB0_15:
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	$3, %eax
.LBB0_16:
	movapd	%xmm0, %xmm4
	mulsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm2
	mulsd	%xmm4, %xmm2
	movsd	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_7(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_8(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_9(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_10(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_11(%rip), %xmm1
	movsd	.LCPI0_12(%rip), %xmm3  # xmm3 = mem[0],zero
	mulsd	%xmm2, %xmm3
	addsd	.LCPI0_13(%rip), %xmm3
	mulsd	%xmm4, %xmm1
	mulsd	%xmm2, %xmm3
	addsd	.LCPI0_14(%rip), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	.LCPI0_15(%rip), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	.LCPI0_16(%rip), %xmm3
	mulsd	%xmm2, %xmm3
	testl	%eax, %eax
	js	.LBB0_17
# %bb.18:
	cltq
	addsd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	subsd	atanlo(,%rax,8), %xmm3
	movsd	atanhi(,%rax,8), %xmm1  # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm1
	testl	%r14d, %r14d
	jns	.LBB0_20
# %bb.19:
	xorpd	.LCPI0_17(%rip), %xmm1
.LBB0_20:
	movapd	%xmm1, %xmm0
	jmp	.LBB0_21
.LBB0_17:
	addsd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm0
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	atan, .Lfunc_end0-atan
                                        # -- End function
	.type	atanhi,@object          # @atanhi
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4
atanhi:
	.quad	4602023952714414927     # double 0.46364760900080609
	.quad	4605249457297304856     # double 0.78539816339744828
	.quad	4607027438436873883     # double 0.98279372324732905
	.quad	4609753056924675352     # double 1.5707963267948966
	.size	atanhi, 32

	.type	atanlo,@object          # @atanlo
	.p2align	4
atanlo:
	.quad	4357843414468748770     # double 2.2698777452961687E-17
	.quad	4359948597267291143     # double 3.061616997868383E-17
	.quad	4354989122426817469     # double 1.3903311031230998E-17
	.quad	4364452196894661639     # double 6.123233995736766E-17
	.size	atanlo, 32

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
