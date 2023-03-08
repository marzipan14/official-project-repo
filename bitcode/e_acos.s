	.text
	.file	"e_acos.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_acos
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	4602678819172646912     # double 0.5
.LCPI0_2:
	.quad	-4294967296             # double NaN
.LCPI0_3:
	.quad	4540259411154564873     # double 3.4793310759602117E-5
.LCPI0_4:
	.quad	4560439845004096136     # double 7.9153499428981453E-4
.LCPI0_5:
	.quad	-4637438604930937029    # double -0.040055534500679411
.LCPI0_6:
	.quad	4596417465768494165     # double 0.20121253213486293
.LCPI0_7:
	.quad	-4623835544539140227    # double -0.32556581862240092
.LCPI0_8:
	.quad	4595172819793696085     # double 0.16666666666666666
.LCPI0_9:
	.quad	4590215604441354882     # double 0.077038150555901935
.LCPI0_10:
	.quad	-4618997306433404583    # double -0.68828397160545329
.LCPI0_11:
	.quad	4611733184086379208     # double 2.0209457602335057
.LCPI0_12:
	.quad	-4610777653840302773    # double -2.4033949117344142
.LCPI0_13:
	.quad	-4858919839960114169    # double -6.123233995736766E-17
.LCPI0_14:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI0_15:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI0_16:
	.quad	4364452196894661639     # double 6.123233995736766E-17
	.text
	.globl	__ieee754_acos
	.p2align	4, 0x90
	.type	__ieee754_acos,@function
__ieee754_acos:                         # @__ieee754_acos
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%xmm0, %rdx
	movq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	cmpl	$1072693248, %ecx       # imm = 0x3FF00000
	jb	.LBB0_5
# %bb.1:
	addl	$-1072693248, %ecx      # imm = 0xC0100000
	orl	%edx, %ecx
	je	.LBB0_2
# %bb.4:
	subsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm0
	jmp	.LBB0_12
.LBB0_5:
	cmpl	$1071644671, %ecx       # imm = 0x3FDFFFFF
	ja	.LBB0_9
# %bb.6:
	cmpl	$1012924417, %ecx       # imm = 0x3C600001
	jae	.LBB0_8
# %bb.7:
	movsd	.LCPI0_15(%rip), %xmm0  # xmm0 = mem[0],zero
	jmp	.LBB0_12
.LBB0_9:
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	testl	%eax, %eax
	js	.LBB0_10
# %bb.11:
	subsd	%xmm0, %xmm1
	mulsd	.LCPI0_1(%rip), %xmm1
	movsd	%xmm1, -8(%rbp)         # 8-byte Spill
	movapd	%xmm1, %xmm0
	callq	__ieee754_sqrt
	movapd	%xmm0, %xmm1
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm0
	addsd	.LCPI0_4(%rip), %xmm0
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm5, %xmm0
	addsd	.LCPI0_5(%rip), %xmm0
	andpd	%xmm1, %xmm2
	movapd	%xmm2, %xmm4
	mulsd	%xmm5, %xmm0
	addsd	.LCPI0_6(%rip), %xmm0
	mulsd	%xmm2, %xmm4
	movapd	%xmm5, %xmm3
	mulsd	%xmm5, %xmm0
	addsd	.LCPI0_7(%rip), %xmm0
	subsd	%xmm4, %xmm3
	mulsd	%xmm5, %xmm0
	addsd	.LCPI0_8(%rip), %xmm0
	movsd	.LCPI0_9(%rip), %xmm4   # xmm4 = mem[0],zero
	mulsd	%xmm5, %xmm4
	addsd	.LCPI0_10(%rip), %xmm4
	mulsd	%xmm5, %xmm0
	mulsd	%xmm5, %xmm4
	addsd	.LCPI0_11(%rip), %xmm4
	mulsd	%xmm5, %xmm4
	addsd	.LCPI0_12(%rip), %xmm4
	mulsd	%xmm5, %xmm4
	addsd	.LCPI0_0(%rip), %xmm4
	divsd	%xmm4, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm3
	addsd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.LBB0_12
.LBB0_2:
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	jg	.LBB0_12
# %bb.3:
	movsd	.LCPI0_14(%rip), %xmm0  # xmm0 = mem[0],zero
	jmp	.LBB0_12
.LBB0_8:
	movapd	%xmm0, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_4(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_5(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_6(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_7(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	addsd	.LCPI0_8(%rip), %xmm1
	movsd	.LCPI0_9(%rip), %xmm3   # xmm3 = mem[0],zero
	mulsd	%xmm2, %xmm3
	addsd	.LCPI0_10(%rip), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	.LCPI0_11(%rip), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	.LCPI0_12(%rip), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	.LCPI0_0(%rip), %xmm3
	mulsd	%xmm2, %xmm1
	divsd	%xmm3, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LCPI0_16(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	addsd	.LCPI0_15(%rip), %xmm2
	movapd	%xmm2, %xmm0
	jmp	.LBB0_12
.LBB0_10:
	addsd	%xmm1, %xmm0
	mulsd	.LCPI0_1(%rip), %xmm0
	movsd	.LCPI0_3(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	addsd	.LCPI0_4(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI0_5(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI0_6(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI0_7(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI0_8(%rip), %xmm2
	movapd	%xmm2, %xmm3
	movsd	.LCPI0_9(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	addsd	.LCPI0_10(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI0_11(%rip), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI0_12(%rip), %xmm2
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -8(%rbp)         # 8-byte Spill
	callq	__ieee754_sqrt
	movsd	-8(%rbp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	addsd	.LCPI0_13(%rip), %xmm1
	addsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm1
	movsd	.LCPI0_14(%rip), %xmm0  # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_acos, .Lfunc_end0-__ieee754_acos
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
