	.text
	.file	"w_tgamma.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function tgamma
.LCPI0_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	tgamma
	.p2align	4, 0x90
	.type	tgamma,@function
tgamma:                                 # @tgamma
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	-12(%rbp), %rdi
	movsd	%xmm0, -8(%rbp)         # 8-byte Spill
	callq	__ieee754_gamma_r
	cmpl	$0, -12(%rbp)
	jns	.LBB0_2
# %bb.1:
	xorpd	.LCPI0_0(%rip), %xmm0
.LBB0_2:
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_11
# %bb.3:
	movapd	%xmm0, -32(%rbp)        # 16-byte Spill
	callq	finite
	testl	%eax, %eax
	je	.LBB0_5
# %bb.4:
	movapd	-32(%rbp), %xmm0        # 16-byte Reload
	jmp	.LBB0_11
.LBB0_5:
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	finite
	testl	%eax, %eax
	movapd	-32(%rbp), %xmm0        # 16-byte Reload
	je	.LBB0_11
# %bb.6:
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	floor
	xorpd	%xmm1, %xmm1
	movsd	-8(%rbp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	movapd	%xmm2, %xmm1
	jb	.LBB0_9
# %bb.7:
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_9
	jp	.LBB0_9
# %bb.8:
	movapd	%xmm1, %xmm0
	movl	$41, %edi
	jmp	.LBB0_10
.LBB0_9:
	movapd	%xmm1, %xmm0
	movl	$40, %edi
.LBB0_10:
	callq	__kernel_standard
.LBB0_11:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tgamma, .Lfunc_end0-tgamma
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
