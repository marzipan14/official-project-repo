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
	ja	.LBB0_4
# %bb.1:
	cmpl	$126, %edx
	ja	.LBB0_6
# %bb.2:
	andl	$-2147483648, %eax      # imm = 0x80000000
	leal	1065353216(%rax), %edx
	cmpl	$-1, %ecx
	cmovnel	%eax, %edx
	jmp	.LBB0_3
.LBB0_4:
	cmpl	$128, %ecx
	jne	.LBB0_8
# %bb.5:
	addss	%xmm0, %xmm0
	jmp	.LBB0_8
.LBB0_6:
	movl	%eax, %edx
	shll	%cl, %edx
	testl	$8388607, %edx          # imm = 0x7FFFFF
	je	.LBB0_8
# %bb.7:
	movl	$4194304, %esi          # imm = 0x400000
	shrl	%cl, %esi
	addl	%eax, %esi
	movl	$-8388608, %edx         # imm = 0xFF800000
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %edx
	andl	%esi, %edx
.LBB0_3:
	movd	%edx, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	roundf, .Lfunc_end0-roundf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
