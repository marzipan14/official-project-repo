	.text
	.file	"sf_trunc.c"
	.globl	truncf                  # -- Begin function truncf
	.p2align	4, 0x90
	.type	truncf,@function
truncf:                                 # @truncf
# %bb.0:
	movd	%xmm0, %edx
	movl	%edx, %eax
	shrl	$23, %eax
	movzbl	%al, %ecx
	cmpl	$149, %ecx
	ja	.LBB0_4
# %bb.1:
	movl	%edx, %eax
	andl	$-2147483648, %eax      # imm = 0x80000000
	cmpl	$127, %ecx
	jb	.LBB0_3
# %bb.2:
	addl	$-127, %ecx
	movl	$-8388608, %esi         # imm = 0xFF800000
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %esi
	andl	%edx, %esi
	orl	%esi, %eax
.LBB0_3:
	movd	%eax, %xmm0
.LBB0_4:
	retq
.Lfunc_end0:
	.size	truncf, .Lfunc_end0-truncf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
