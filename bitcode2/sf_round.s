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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$149, %edx
	ja	.LBB0_9
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$126, %edx
	ja	.LBB0_4
# %bb.2:
	andl	$-2147483648, %eax      # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB0_7
# %bb.3:
	orl	$1065353216, %eax       # imm = 0x3F800000
	jmp	.LBB0_6
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ecx
	jne	.LBB0_11
# %bb.10:
	addss	%xmm0, %xmm0
	jmp	.LBB0_11
.LBB0_4:
	movl	%eax, %edx
	shll	%cl, %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	$8388607, %edx          # imm = 0x7FFFFF
	je	.LBB0_8
# %bb.5:
	movl	$4194304, %edx          # imm = 0x400000
	shrl	%cl, %edx
	addl	%eax, %edx
	movl	$-8388608, %eax         # imm = 0xFF800000
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %eax
	andl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movd	%eax, %xmm0
	jmp	.LBB0_11
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
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
