	.text
	.file	"__adjust.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function __adjust
.LCPI0_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
.LCPI0_1:
	.quad	-4503599627370496       # double -Inf
	.quad	9218868437227405312     # double +Inf
	.text
	.globl	__adjust
	.p2align	4, 0x90
	.type	__adjust,@function
__adjust:                               # @__adjust
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	cmpl	$309, %edx              # imm = 0x135
	jl	.LBB0_2
# %bb.1:
	movl	$34, (%rdi)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	movsd	.LCPI0_1(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	jmp	.LBB0_11
.LBB0_2:
	cmpl	$-309, %edx             # imm = 0xFECB
	jg	.LBB0_4
# %bb.3:
	movl	$34, (%rdi)
	xorpd	%xmm0, %xmm0
	jmp	.LBB0_11
.LBB0_4:
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	testl	%ecx, %ecx
	je	.LBB0_6
# %bb.5:
	xorpd	.LCPI0_0(%rip), %xmm0
.LBB0_6:
	testl	%edx, %edx
	je	.LBB0_11
# %bb.7:
	movapd	%xmm0, -16(%rbp)        # 16-byte Spill
	js	.LBB0_8
# %bb.9:
	movl	%edx, %edi
	callq	__exp10
	movapd	-16(%rbp), %xmm1        # 16-byte Reload
	mulsd	%xmm0, %xmm1
	jmp	.LBB0_10
.LBB0_8:
	negl	%edx
	movl	%edx, %edi
	callq	__exp10
	movapd	-16(%rbp), %xmm1        # 16-byte Reload
	divsd	%xmm0, %xmm1
.LBB0_10:
	movapd	%xmm1, -16(%rbp)        # 16-byte Spill
	movapd	-16(%rbp), %xmm0        # 16-byte Reload
.LBB0_11:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__adjust, .Lfunc_end0-__adjust
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
