	.text
	.file	"s_modf.c"
	.globl	modf                    # -- Begin function modf
	.p2align	4, 0x90
	.type	modf,@function
modf:                                   # @modf
# %bb.0:
	movq	%xmm0, %rax
	movq	%rax, %rcx
	shrq	$52, %rcx
	andl	$2047, %ecx             # imm = 0x7FF
	cmpl	$1042, %ecx             # imm = 0x412
	ja	.LBB0_6
# %bb.1:
	cmpl	$1022, %ecx             # imm = 0x3FE
	ja	.LBB0_3
# %bb.2:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	andq	%rcx, %rax
	movq	%rax, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_6:
	cmpl	$1075, %ecx             # imm = 0x433
	jae	.LBB0_4
# %bb.7:
	addb	$-19, %cl
	movl	$-1, %edx
                                        # kill: def $cl killed $cl killed $rcx
	shrl	%cl, %edx
	testl	%eax, %edx
	je	.LBB0_4
# %bb.8:
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movq	%rax, %rsi
	andq	%rcx, %rsi
	notl	%edx
	andl	%eax, %edx
	orq	%rsi, %rdx
	movq	%rdx, %xmm1
	movq	%rdx, (%rdi)
	jmp	.LBB0_9
.LBB0_3:
	addl	$-1023, %ecx            # imm = 0xFC01
	movl	$1048575, %esi          # imm = 0xFFFFF
	shrl	%cl, %esi
	movq	%rax, %rdx
	shrq	$32, %rdx
	andl	%edx, %esi
	orl	%eax, %esi
	je	.LBB0_4
# %bb.5:
	movl	$-1048576, %eax         # imm = 0xFFF00000
                                        # kill: def $cl killed $cl killed $rcx
	sarl	%cl, %eax
	andl	%edx, %eax
	shlq	$32, %rax
	movq	%rax, %xmm1
	movq	%rax, (%rdi)
.LBB0_9:
	subsd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_4:
	movsd	%xmm0, (%rdi)
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	andq	%rcx, %rax
	movq	%rax, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	modf, .Lfunc_end0-modf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
