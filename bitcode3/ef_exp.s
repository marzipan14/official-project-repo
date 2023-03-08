	.text
	.file	"ef_exp.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_expf
.LCPI0_0:
	.long	2139095040              # float +Inf
.LCPI0_1:
	.long	1900671690              # float 1.00000002E+30
.LCPI0_2:
	.long	1065353216              # float 1
.LCPI0_3:
	.long	1069066811              # float 1.44269502
.LCPI0_4:
	.long	1060204928              # float 0.693138123
.LCPI0_5:
	.long	924317649               # float 9.05800061E-6
.LCPI0_6:
	.long	858897228               # float 4.13813694E-8
.LCPI0_7:
	.long	3051219470              # float -1.6533902E-6
.LCPI0_8:
	.long	948613973               # float 6.61375597E-5
.LCPI0_9:
	.long	3140881249              # float -0.00277777785
.LCPI0_10:
	.long	1042983595              # float 0.166666672
.LCPI0_11:
	.long	1073741824              # float 2
.LCPI0_12:
	.long	226492416               # float 7.88860905E-31
.LCPI0_13:
	.long	3221225472              # float -2
	.text
	.globl	__ieee754_expf
	.p2align	4, 0x90
	.type	__ieee754_expf,@function
__ieee754_expf:                         # @__ieee754_expf
# %bb.0:
	movd	%xmm0, %eax
	movl	%eax, %edx
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	cmpl	$2139095041, %edx       # imm = 0x7F800001
	jb	.LBB0_2
# %bb.1:
	addss	%xmm0, %xmm0
	retq
.LBB0_2:
	movl	%eax, %ecx
	shrl	$31, %ecx
	cmpl	$2139095040, %edx       # imm = 0x7F800000
	jne	.LBB0_6
# %bb.3:
	testl	%ecx, %ecx
	je	.LBB0_5
# %bb.4:
	xorps	%xmm0, %xmm0
.LBB0_5:
	retq
.LBB0_6:
	cmpl	$1118925335, %eax       # imm = 0x42B17217
	jle	.LBB0_8
# %bb.7:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	retq
.LBB0_8:
	testl	%eax, %eax
	jns	.LBB0_10
# %bb.9:
	xorps	%xmm1, %xmm1
	cmpl	$1120924085, %edx       # imm = 0x42CFF1B5
	jbe	.LBB0_10
# %bb.24:
	movaps	%xmm1, %xmm0
	retq
.LBB0_10:
	cmpl	$1051816473, %edx       # imm = 0x3EB17219
	jb	.LBB0_17
# %bb.11:
	cmpl	$1065686417, %edx       # imm = 0x3F851591
	ja	.LBB0_13
# %bb.12:
	movl	%ecx, %eax
	movss	ln2HI(,%rax,4), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movss	ln2LO(,%rax,4), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movl	%ecx, %eax
	xorl	$1, %eax
	subl	%ecx, %eax
	jmp	.LBB0_14
.LBB0_17:
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	xorl	%eax, %eax
	ucomiss	.LCPI0_2(%rip), %xmm1
	jbe	.LBB0_18
# %bb.19:
	cmpl	$830472191, %edx        # imm = 0x317FFFFF
	jbe	.LBB0_20
.LBB0_18:
                                        # implicit-def: $xmm1
                                        # implicit-def: $xmm2
	jmp	.LBB0_15
.LBB0_13:
	movss	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movl	%ecx, %eax
	addss	halF(,%rax,4), %xmm1
	cvttss2si	%xmm1, %eax
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	movss	.LCPI0_4(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm2
	mulss	.LCPI0_5(%rip), %xmm1
.LBB0_14:
	subss	%xmm2, %xmm0
	movaps	%xmm0, %xmm2
	subss	%xmm1, %xmm0
.LBB0_15:
	movaps	%xmm0, %xmm3
	mulss	%xmm0, %xmm3
	movss	.LCPI0_6(%rip), %xmm5   # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm5
	addss	.LCPI0_7(%rip), %xmm5
	mulss	%xmm3, %xmm5
	addss	.LCPI0_8(%rip), %xmm5
	mulss	%xmm3, %xmm5
	addss	.LCPI0_9(%rip), %xmm5
	mulss	%xmm3, %xmm5
	addss	.LCPI0_10(%rip), %xmm5
	mulss	%xmm3, %xmm5
	movaps	%xmm0, %xmm4
	subss	%xmm5, %xmm4
	movaps	%xmm0, %xmm3
	mulss	%xmm4, %xmm3
	testl	%eax, %eax
	je	.LBB0_16
# %bb.21:
	movss	.LCPI0_11(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	subss	%xmm4, %xmm0
	divss	%xmm0, %xmm3
	subss	%xmm3, %xmm1
	subss	%xmm1, %xmm2
	addss	.LCPI0_2(%rip), %xmm2
	movd	%xmm2, %edx
	movl	%eax, %ecx
	shll	$23, %ecx
	addl	%edx, %ecx
	cmpl	$-125, %eax
	jl	.LBB0_23
# %bb.22:
	movd	%ecx, %xmm0
	retq
.LBB0_16:
	addss	.LCPI0_13(%rip), %xmm4
	divss	%xmm4, %xmm3
	subss	%xmm3, %xmm0
.LBB0_20:
	addss	.LCPI0_2(%rip), %xmm0
	retq
.LBB0_23:
	addl	$838860800, %ecx        # imm = 0x32000000
	movd	%ecx, %xmm1
	mulss	.LCPI0_12(%rip), %xmm1
	movaps	%xmm1, %xmm0
	retq
.Lfunc_end0:
	.size	__ieee754_expf, .Lfunc_end0-__ieee754_expf
                                        # -- End function
	.type	ln2HI,@object           # @ln2HI
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
ln2HI:
	.long	1060204928              # float 0.693138123
	.long	3207688576              # float -0.693138123
	.size	ln2HI, 8

	.type	ln2LO,@object           # @ln2LO
	.p2align	2
ln2LO:
	.long	924317649               # float 9.05800061E-6
	.long	3071801297              # float -9.05800061E-6
	.size	ln2LO, 8

	.type	halF,@object            # @halF
	.p2align	2
halF:
	.long	1056964608              # float 0.5
	.long	3204448256              # float -0.5
	.size	halF, 8

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
