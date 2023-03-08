	.text
	.file	"s_copysign.c"
	.globl	copysign                # -- Begin function copysign
	.p2align	4, 0x90
	.type	copysign,@function
copysign:                               # @copysign
# %bb.0:
	movq	%xmm0, %rax
	movmskpd	%xmm1, %ecx
	shlq	$63, %rcx
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	andq	%rax, %rdx
	orq	%rcx, %rdx
	movq	%rdx, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	copysign, .Lfunc_end0-copysign
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
