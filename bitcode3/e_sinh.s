	.text
	.file	"e_sinh.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function __ieee754_sinh
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
	.quad	-4620693217682128896    # double -0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	9199863512903218227     # double 9.9999999999999999E+306
.LCPI0_2:
	.quad	4602678819172646912     # double 0.5
.LCPI0_3:
	.quad	4607182418800017408     # double 1
	.text
	.globl	__ieee754_sinh
	.p2align	4, 0x90
	.type	__ieee754_sinh,@function
__ieee754_sinh:                         # @__ieee754_sinh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%xmm0, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%ecx, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$2146435072, %ebx       # imm = 0x7FF00000
	jb	.LBB0_2
# %bb.1:
	addsd	%xmm0, %xmm0
	jmp	.LBB0_16
.LBB0_2:
	xorl	%edx, %edx
	testl	%ecx, %ecx
	sets	%dl
	movsd	.LCPI0_0(,%rdx,8), %xmm2 # xmm2 = mem[0],zero
	cmpl	$1077280767, %ebx       # imm = 0x4035FFFF
	ja	.LBB0_8
# %bb.3:
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	ucomisd	.LCPI0_3(%rip), %xmm1
	jbe	.LBB0_5
# %bb.4:
	cmpl	$1043333120, %ebx       # imm = 0x3E300000
	jb	.LBB0_16
.LBB0_5:
	movsd	%xmm2, -16(%rbp)        # 8-byte Spill
	callq	fabs
	callq	expm1
	cmpl	$1072693247, %ebx       # imm = 0x3FEFFFFF
	ja	.LBB0_7
# %bb.6:
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movapd	%xmm0, %xmm2
	addsd	.LCPI0_3(%rip), %xmm0
	mulsd	%xmm2, %xmm2
	divsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	jmp	.LBB0_16
.LBB0_8:
	cmpl	$1082535489, %ebx       # imm = 0x40862E41
	ja	.LBB0_11
# %bb.9:
	movsd	%xmm2, -16(%rbp)        # 8-byte Spill
	callq	fabs
	callq	__ieee754_exp
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB0_10
.LBB0_11:
	cmpl	$1082536910, %ebx       # imm = 0x408633CE
	jb	.LBB0_14
# %bb.12:
	cmpl	$-1883637635, %eax      # imm = 0x8FB9F87D
	ja	.LBB0_15
# %bb.13:
	cmpl	$1082536910, %ebx       # imm = 0x408633CE
	jne	.LBB0_15
.LBB0_14:
	movsd	%xmm2, -16(%rbp)        # 8-byte Spill
	callq	fabs
	mulsd	.LCPI0_2(%rip), %xmm0
	callq	__ieee754_exp
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
.LBB0_10:
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	jmp	.LBB0_16
.LBB0_7:
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	jmp	.LBB0_16
.LBB0_15:
	mulsd	.LCPI0_1(%rip), %xmm0
.LBB0_16:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_sinh, .Lfunc_end0-__ieee754_sinh
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
