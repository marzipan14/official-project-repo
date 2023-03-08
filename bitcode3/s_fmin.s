	.text
	.file	"s_fmin.c"
	.globl	fmin                    # -- Begin function fmin
	.p2align	4, 0x90
	.type	fmin,@function
fmin:                                   # @fmin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movsd	%xmm1, -8(%rbp)         # 8-byte Spill
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB0_3
# %bb.4:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	minsd	-8(%rbp), %xmm0         # 8-byte Folded Reload
	jmp	.LBB0_5
.LBB0_1:
	movsd	-8(%rbp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_5
.LBB0_3:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_5:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fmin, .Lfunc_end0-fmin
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
