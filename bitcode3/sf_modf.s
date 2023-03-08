	.text
	.file	"sf_modf.c"
	.globl	modff                   # -- Begin function modff
	.p2align	4, 0x90
	.type	modff,@function
modff:                                  # @modff
# %bb.0:
	movd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %ecx
	cmpl	$149, %ecx
	ja	.LBB0_5
# %bb.1:
	cmpl	$126, %ecx
	ja	.LBB0_3
# %bb.2:
	andl	$-2147483648, %eax      # imm = 0x80000000
	movl	%eax, (%rdi)
	retq
.LBB0_3:
	addl	$-127, %ecx
	movl	%eax, %edx
	shll	%cl, %edx
	testl	$8388607, %edx          # imm = 0x7FFFFF
	je	.LBB0_5
# %bb.4:
	movl	$-8388608, %edx         # imm = 0xFF800000
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %edx
	andl	%eax, %edx
	movd	%edx, %xmm1
	movl	%edx, (%rdi)
	subss	%xmm1, %xmm0
	retq
.LBB0_5:
	movss	%xmm0, (%rdi)
	andl	$-2147483648, %eax      # imm = 0x80000000
	movd	%eax, %xmm0
	retq
.Lfunc_end0:
	.size	modff, .Lfunc_end0-modff
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
