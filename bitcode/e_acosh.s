	.text
	.file	"e_acosh.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __ieee754_acosh
.LCPI0_0:
	.quad	-4616189618054758400    # double -1
.LCPI0_1:
	.quad	4604418534313441775     # double 0.69314718055994529
	.text
	.globl	__ieee754_acosh
	.p2align	4, 0x90
	.type	__ieee754_acosh,@function
__ieee754_acosh:                        # @__ieee754_acosh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%xmm0, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	cmpl	$1072693247, %eax       # imm = 0x3FEFFFFF
	jg	.LBB0_2
# %bb.1:
	subsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm0
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB0_2:
	cmpl	$1102053376, %eax       # imm = 0x41B00000
	jl	.LBB0_6
# %bb.3:
	cmpl	$2146435072, %eax       # imm = 0x7FF00000
	jl	.LBB0_5
# %bb.4:
	addsd	%xmm0, %xmm0
	jmp	.LBB0_11
.LBB0_6:
	leal	-1072693248(%rax), %edx
	orl	%ecx, %edx
	je	.LBB0_7
# %bb.8:
	cmpl	$1073741825, %eax       # imm = 0x40000001
	jl	.LBB0_10
# %bb.9:
	movapd	%xmm0, %xmm1
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm1
	movsd	%xmm1, -16(%rbp)        # 8-byte Spill
	addsd	.LCPI0_0(%rip), %xmm0
	callq	__ieee754_sqrt
	addsd	-8(%rbp), %xmm0         # 8-byte Folded Reload
	movsd	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	addsd	-16(%rbp), %xmm1        # 8-byte Folded Reload
	movapd	%xmm1, %xmm0
	callq	__ieee754_log
	jmp	.LBB0_11
.LBB0_5:
	callq	__ieee754_log
	addsd	.LCPI0_1(%rip), %xmm0
	jmp	.LBB0_11
.LBB0_7:
	xorpd	%xmm0, %xmm0
	jmp	.LBB0_11
.LBB0_10:
	addsd	.LCPI0_0(%rip), %xmm0
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	callq	__ieee754_sqrt
	addsd	-8(%rbp), %xmm0         # 8-byte Folded Reload
	callq	log1p
	jmp	.LBB0_11
.Lfunc_end0:
	.size	__ieee754_acosh, .Lfunc_end0-__ieee754_acosh
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
