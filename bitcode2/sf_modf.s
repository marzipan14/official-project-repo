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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$149, %ecx
	ja	.LBB0_5
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$126, %ecx
	ja	.LBB0_3
# %bb.2:
	andl	$-2147483648, %eax      # imm = 0x80000000
	movl	%eax, (%rdi)
	jmp	.LBB0_6
.LBB0_3:
	addl	$-127, %ecx
	movl	%eax, %edx
	shll	%cl, %edx
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB0_6
.LBB0_5:
	movss	%xmm0, (%rdi)
	andl	$-2147483648, %eax      # imm = 0x80000000
	movd	%eax, %xmm0
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	modff, .Lfunc_end0-modff
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
