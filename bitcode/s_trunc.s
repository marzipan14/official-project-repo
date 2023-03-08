	.text
	.file	"s_trunc.c"
	.globl	trunc                   # -- Begin function trunc
	.p2align	4, 0x90
	.type	trunc,@function
trunc:                                  # @trunc
# %bb.0:
	movq	%xmm0, %rdx
	movq	%rdx, %rcx
	shrq	$52, %rcx
	andl	$2047, %ecx             # imm = 0x7FF
	leal	-1023(%rcx), %eax
	cmpl	$1042, %ecx             # imm = 0x412
	ja	.LBB0_4
# %bb.1:
	shrq	$32, %rdx
	movl	%edx, %esi
	andl	$-2147483648, %esi      # imm = 0x80000000
	cmpl	$1022, %ecx             # imm = 0x3FE
	ja	.LBB0_3
# %bb.2:
	shlq	$32, %rsi
	jmp	.LBB0_8
.LBB0_4:
	cmpl	$1075, %ecx             # imm = 0x433
	jb	.LBB0_7
# %bb.5:
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB0_9
# %bb.6:
	addsd	%xmm0, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_3:
	movl	$-1048576, %edi         # imm = 0xFFF00000
	movl	%eax, %ecx
	sarl	%cl, %edi
	andl	%edx, %edi
	orl	%esi, %edi
	shlq	$32, %rdi
	movq	%rdi, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_7:
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	andq	%rdx, %rax
	addb	$-19, %cl
	movl	$-1, %esi
                                        # kill: def $cl killed $cl killed $rcx
	shrl	%cl, %esi
	notl	%esi
	andl	%edx, %esi
	orq	%rax, %rsi
.LBB0_8:
	movq	%rsi, %xmm0
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	trunc, .Lfunc_end0-trunc
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
