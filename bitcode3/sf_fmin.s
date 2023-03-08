	.text
	.file	"sf_fmin.c"
	.globl	fminf                   # -- Begin function fminf
	.p2align	4, 0x90
	.type	fminf,@function
fminf:                                  # @fminf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movss	%xmm1, -4(%rbp)         # 4-byte Spill
	movss	%xmm0, -8(%rbp)         # 4-byte Spill
	callq	__fpclassifyf
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	movss	-4(%rbp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__fpclassifyf
	testl	%eax, %eax
	je	.LBB0_3
# %bb.4:
	movss	-8(%rbp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	minss	-4(%rbp), %xmm0         # 4-byte Folded Reload
	jmp	.LBB0_5
.LBB0_1:
	movss	-4(%rbp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_5
.LBB0_3:
	movss	-8(%rbp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
.LBB0_5:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fminf, .Lfunc_end0-fminf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
