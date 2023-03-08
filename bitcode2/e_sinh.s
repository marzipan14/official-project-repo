	.text
	.file	"e_sinh.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_sinh
.LCPI0_0:
	.quad	4602678819172646912     # double 0.5
.LCPI0_1:
	.quad	-4620693217682128896    # double -0.5
.LCPI0_2:
	.quad	9199863512903218227     # double 9.9999999999999999E+306
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435072, %ebx       # imm = 0x7FF00000
	jb	.LBB0_2
# %bb.1:
	addsd	%xmm0, %xmm0
	jmp	.LBB0_19
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	js	.LBB0_4
# %bb.3:
	movsd	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero
	jmp	.LBB0_5
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movsd	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1077280767, %ebx       # imm = 0x4035FFFF
	ja	.LBB0_11
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1043333119, %ebx       # imm = 0x3E2FFFFF
	ja	.LBB0_8
# %bb.7:
	movsd	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	ucomisd	.LCPI0_3(%rip), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_19
.LBB0_8:
	movsd	%xmm2, -16(%rbp)        # 8-byte Spill
	callq	fabs
	callq	expm1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1072693247, %ebx       # imm = 0x3FEFFFFF
	ja	.LBB0_10
# %bb.9:
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
	jmp	.LBB0_19
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1082535489, %ebx       # imm = 0x40862E41
	ja	.LBB0_14
# %bb.12:
	movsd	%xmm2, -16(%rbp)        # 8-byte Spill
	callq	fabs
	callq	__ieee754_exp
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB0_13
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1082536910, %ebx       # imm = 0x408633CE
	jb	.LBB0_17
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1883637635, %eax      # imm = 0x8FB9F87D
	ja	.LBB0_18
# %bb.16:
	cmpl	$1082536910, %ebx       # imm = 0x408633CE
	jne	.LBB0_18
.LBB0_17:
	movsd	%xmm2, -16(%rbp)        # 8-byte Spill
	callq	fabs
	mulsd	.LCPI0_0(%rip), %xmm0
	callq	__ieee754_exp
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
.LBB0_13:
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	jmp	.LBB0_19
.LBB0_10:
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	jmp	.LBB0_19
.LBB0_18:
	mulsd	.LCPI0_2(%rip), %xmm0
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_sinh, .Lfunc_end0-__ieee754_sinh
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
