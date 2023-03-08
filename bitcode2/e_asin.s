	.text
	.file	"e_asin.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_asin
.LCPI0_0:
	.quad	4540259411154564873     # double 3.4793310759602117E-5
.LCPI0_1:
	.quad	4560439845004096136     # double 7.9153499428981453E-4
.LCPI0_2:
	.quad	-4637438604930937029    # double -0.040055534500679411
.LCPI0_3:
	.quad	4596417465768494165     # double 0.20121253213486293
.LCPI0_4:
	.quad	-4623835544539140227    # double -0.32556581862240092
.LCPI0_5:
	.quad	4595172819793696085     # double 0.16666666666666666
.LCPI0_6:
	.quad	4590215604441354882     # double 0.077038150555901935
.LCPI0_7:
	.quad	-4618997306433404583    # double -0.68828397160545329
.LCPI0_8:
	.quad	4611733184086379208     # double 2.0209457602335057
.LCPI0_9:
	.quad	-4610777653840302773    # double -2.4033949117344142
.LCPI0_10:
	.quad	4607182418800017408     # double 1
.LCPI0_11:
	.quad	9094988921128908188     # double 1.0000000000000001E+300
.LCPI0_12:
	.quad	4602678819172646912     # double 0.5
.LCPI0_13:
	.quad	-4294967296             # double NaN
.LCPI0_14:
	.quad	4364452196894661639     # double 6.123233995736766E-17
.LCPI0_15:
	.quad	4605249457297304856     # double 0.78539816339744828
.LCPI0_16:
	.quad	-4858919839960114169    # double -6.123233995736766E-17
.LCPI0_17:
	.quad	4609753056924675352     # double 1.5707963267948966
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_18:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	__ieee754_asin
	.p2align	4, 0x90
	.type	__ieee754_asin,@function
__ieee754_asin:                         # @__ieee754_asin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	movq	%xmm0, %rax
	movq	%rax, %r14
	shrq	$32, %r14
	movl	%r14d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1072693248, %ebx       # imm = 0x3FF00000
	jb	.LBB0_4
# %bb.1:
	addl	$-1072693248, %ebx      # imm = 0xC0100000
	orl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_2
# %bb.3:
	subsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_12
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1071644671, %ebx       # imm = 0x3FDFFFFF
	ja	.LBB0_7
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1044381695, %ebx       # imm = 0x3E3FFFFF
	ja	.LBB0_13
# %bb.6:
	movsd	.LCPI0_11(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	ucomisd	.LCPI0_10(%rip), %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_12
.LBB0_7:
	callq	fabs
	movsd	.LCPI0_10(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	mulsd	.LCPI0_12(%rip), %xmm2
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	.LCPI0_1(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	.LCPI0_2(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	.LCPI0_3(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	.LCPI0_4(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	.LCPI0_5(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	.LCPI0_7(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	.LCPI0_8(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	.LCPI0_9(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	%xmm2, -40(%rbp)        # 8-byte Spill
	movapd	%xmm2, %xmm0
	callq	__ieee754_sqrt
	movapd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1072640819, %ebx       # imm = 0x3FEF3333
	jb	.LBB0_9
# %bb.8:
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	-24(%rbp), %xmm2        # 8-byte Folded Reload
	mulsd	%xmm1, %xmm2
	addsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm2
	addsd	.LCPI0_16(%rip), %xmm2
	movsd	.LCPI0_17(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	jmp	.LBB0_10
.LBB0_2:
	movsd	.LCPI0_17(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	.LCPI0_14(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_12
.LBB0_9:
	movsd	.LCPI0_13(%rip), %xmm2  # xmm2 = mem[0],zero
	andpd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
	mulsd	%xmm2, %xmm0
	movsd	-40(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	movapd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	divsd	%xmm0, %xmm3
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	-24(%rbp), %xmm0        # 8-byte Folded Reload
	addsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm3, %xmm3
	movsd	.LCPI0_14(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm3, %xmm0
	subsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm2
	movsd	.LCPI0_15(%rip), %xmm3  # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm0
	subsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	addsd	%xmm3, %xmm0
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jg	.LBB0_12
# %bb.11:
	xorpd	.LCPI0_18(%rip), %xmm0
	jmp	.LBB0_12
.LBB0_13:
	movdqa	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_1(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_2(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_3(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_4(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_5(%rip), %xmm1
	movsd	.LCPI0_6(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm2, %xmm3
	addsd	.LCPI0_7(%rip), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	.LCPI0_8(%rip), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	.LCPI0_9(%rip), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	.LCPI0_10(%rip), %xmm3
	mulsd	%xmm2, %xmm1
	divsd	%xmm3, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm0
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_asin, .Lfunc_end0-__ieee754_asin
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
