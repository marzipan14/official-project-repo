	.text
	.file	"s_asinh.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function asinh
.LCPI0_0:
	.quad	9094988921128908188     # double 1.0000000000000001E+300
.LCPI0_1:
	.quad	4607182418800017408     # double 1
.LCPI0_2:
	.quad	4604418534313441775     # double 0.69314718055994529
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_3:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	asinh
	.p2align	4, 0x90
	.type	asinh,@function
asinh:                                  # @asinh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%xmm0, %rbx
	shrq	$32, %rbx
	movl	%ebx, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$2146435072, %eax       # imm = 0x7FF00000
	jb	.LBB0_2
# %bb.1:
	addsd	%xmm0, %xmm0
	jmp	.LBB0_11
.LBB0_2:
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	ucomisd	.LCPI0_1(%rip), %xmm1
	jbe	.LBB0_4
# %bb.3:
	cmpl	$1043333120, %eax       # imm = 0x3E300000
	jb	.LBB0_11
.LBB0_4:
	cmpl	$1102053377, %eax       # imm = 0x41B00001
	jb	.LBB0_6
# %bb.5:
	callq	fabs
	callq	__ieee754_log
	addsd	.LCPI0_2(%rip), %xmm0
	testl	%ebx, %ebx
	jle	.LBB0_10
	jmp	.LBB0_11
.LBB0_6:
	cmpl	$1073741825, %eax       # imm = 0x40000001
	jb	.LBB0_8
# %bb.7:
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	callq	fabs
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	.LCPI0_1(%rip), %xmm0
	callq	__ieee754_sqrt
	addsd	-24(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	__ieee754_log
	testl	%ebx, %ebx
	jle	.LBB0_10
	jmp	.LBB0_11
.LBB0_8:
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)        # 8-byte Spill
	callq	fabs
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI0_1(%rip), %xmm0
	callq	__ieee754_sqrt
	addsd	.LCPI0_1(%rip), %xmm0
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	log1p
	testl	%ebx, %ebx
	jg	.LBB0_11
.LBB0_10:
	xorpd	.LCPI0_3(%rip), %xmm0
.LBB0_11:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	asinh, .Lfunc_end0-asinh
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
