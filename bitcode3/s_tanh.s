	.text
	.file	"s_tanh.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function tanh
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	-4611686018427387904    # double -2
.LCPI0_3:
	.quad	4611686018427387904     # double 2
.LCPI0_4:
	.quad	-4616189618054758400    # double -1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_2:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	tanh
	.p2align	4, 0x90
	.type	tanh,@function
tanh:                                   # @tanh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movdqa	%xmm0, %xmm1
	movq	%xmm0, %r14
	shrq	$32, %r14
	movl	%r14d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$2146435072, %ebx       # imm = 0x7FF00000
	jb	.LBB0_4
# %bb.1:
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	testl	%r14d, %r14d
	js	.LBB0_3
# %bb.2:
	addsd	.LCPI0_0(%rip), %xmm0
	jmp	.LBB0_13
.LBB0_4:
	cmpl	$1077280767, %ebx       # imm = 0x4035FFFF
	ja	.LBB0_5
# %bb.6:
	cmpl	$1015021567, %ebx       # imm = 0x3C7FFFFF
	ja	.LBB0_8
# %bb.7:
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	jmp	.LBB0_13
.LBB0_5:
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	testl	%r14d, %r14d
	js	.LBB0_12
	jmp	.LBB0_13
.LBB0_3:
	addsd	.LCPI0_4(%rip), %xmm0
	jmp	.LBB0_13
.LBB0_8:
	movdqa	%xmm1, %xmm0
	callq	fabs
	cmpl	$1072693248, %ebx       # imm = 0x3FF00000
	jb	.LBB0_10
# %bb.9:
	addsd	%xmm0, %xmm0
	callq	expm1
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	testl	%r14d, %r14d
	js	.LBB0_12
	jmp	.LBB0_13
.LBB0_10:
	mulsd	.LCPI0_1(%rip), %xmm0
	callq	expm1
	movapd	%xmm0, %xmm1
	movapd	.LCPI0_2(%rip), %xmm0   # xmm0 = [-0.0E+0,-0.0E+0]
	xorpd	%xmm1, %xmm0
	addsd	.LCPI0_3(%rip), %xmm1
	divsd	%xmm1, %xmm0
	testl	%r14d, %r14d
	jns	.LBB0_13
.LBB0_12:
	xorpd	.LCPI0_2(%rip), %xmm0
.LBB0_13:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tanh, .Lfunc_end0-tanh
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
