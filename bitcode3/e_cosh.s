	.text
	.file	"e_cosh.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_cosh
.LCPI0_0:
	.quad	9218868437227405312     # double +Inf
.LCPI0_1:
	.quad	4602678819172646912     # double 0.5
.LCPI0_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	__ieee754_cosh
	.p2align	4, 0x90
	.type	__ieee754_cosh,@function
__ieee754_cosh:                         # @__ieee754_cosh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%xmm0, %rax
	movq	%rax, %rbx
	shrq	$32, %rbx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$2146435072, %ebx       # imm = 0x7FF00000
	jb	.LBB0_4
# %bb.1:
	mulsd	%xmm0, %xmm0
.LBB0_2:
	movapd	%xmm0, %xmm2
.LBB0_3:
	movapd	%xmm2, %xmm0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_4:
	cmpl	$1071001154, %ebx       # imm = 0x3FD62E42
	ja	.LBB0_7
# %bb.5:
	callq	fabs
	callq	expm1
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	cmpl	$1015021568, %ebx       # imm = 0x3C800000
	jb	.LBB0_3
# %bb.6:
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm2
	divsd	%xmm2, %xmm0
	addsd	.LCPI0_2(%rip), %xmm0
	jmp	.LBB0_2
.LBB0_7:
	cmpl	$1077280767, %ebx       # imm = 0x4035FFFF
	ja	.LBB0_9
# %bb.8:
	callq	fabs
	callq	__ieee754_exp
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movapd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	jmp	.LBB0_3
.LBB0_9:
	cmpl	$1082535489, %ebx       # imm = 0x40862E41
	ja	.LBB0_11
# %bb.10:
	callq	fabs
	callq	__ieee754_exp
	movapd	%xmm0, %xmm2
	mulsd	.LCPI0_1(%rip), %xmm2
	jmp	.LBB0_3
.LBB0_11:
	cmpl	$1082536910, %ebx       # imm = 0x408633CE
	jb	.LBB0_14
# %bb.12:
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	cmpl	$-1883637635, %eax      # imm = 0x8FB9F87D
	ja	.LBB0_3
# %bb.13:
	cmpl	$1082536910, %ebx       # imm = 0x408633CE
	jne	.LBB0_3
.LBB0_14:
	callq	fabs
	mulsd	.LCPI0_1(%rip), %xmm0
	callq	__ieee754_exp
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	jmp	.LBB0_3
.Lfunc_end0:
	.size	__ieee754_cosh, .Lfunc_end0-__ieee754_cosh
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
