	.text
	.file	"sf_round.c"
	.globl	roundf                  # -- Begin function roundf
	.p2align	4, 0x90
	.type	roundf,@function
roundf:                                 # @roundf
# %bb.0:
	movd	%xmm0, %eax
	movl	%eax, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %edx
	leal	-127(%rdx), %ecx
	cmpl	$149, %edx
	ja	.LBB0_7
# %bb.1:
	cmpl	$126, %edx
	ja	.LBB0_3
# %bb.2:
	andl	$-2147483648, %eax      # imm = 0x80000000
	leal	1065353216(%rax), %edx
	cmpl	$-1, %ecx
	cmovnel	%eax, %edx
	jmp	.LBB0_5
.LBB0_7:
	cmpl	$128, %ecx
	jne	.LBB0_9
# %bb.8:
	addss	%xmm0, %xmm0
.LBB0_9:
	retq
.LBB0_3:
	movl	%eax, %edx
	shll	%cl, %edx
	testl	$8388607, %edx          # imm = 0x7FFFFF
	je	.LBB0_6
# %bb.4:
	movl	$4194304, %esi          # imm = 0x400000
	shrl	%cl, %esi
	addl	%eax, %esi
	movl	$-8388608, %edx         # imm = 0xFF800000
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %edx
	andl	%esi, %edx
.LBB0_5:
	movd	%edx, %xmm0
.LBB0_6:
	retq
.Lfunc_end0:
	.size	roundf, .Lfunc_end0-roundf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
