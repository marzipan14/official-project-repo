	.text
	.file	"s_round.c"
	.globl	round                   # -- Begin function round
	.p2align	4, 0x90
	.type	round,@function
round:                                  # @round
# %bb.0:
	movq	%xmm0, %rdx
	movq	%rdx, %rax
	shrq	$32, %rax
	movq	%rdx, %rsi
	shrq	$52, %rsi
	andl	$2047, %esi             # imm = 0x7FF
	leal	-1023(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1042, %esi             # imm = 0x412
	ja	.LBB0_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1022, %esi             # imm = 0x3FE
	ja	.LBB0_7
# %bb.2:
	andl	$-2147483648, %eax      # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB0_10
# %bb.3:
	orl	$1072693248, %eax       # imm = 0x3FF00000
	jmp	.LBB0_9
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1075, %esi             # imm = 0x433
	jb	.LBB0_11
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB0_16
# %bb.6:
	addsd	%xmm0, %xmm0
	jmp	.LBB0_16
.LBB0_7:
	movl	$1048575, %esi          # imm = 0xFFFFF
	shrl	%cl, %esi
	andl	%eax, %esi
	orl	%edx, %esi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_18
# %bb.8:
	movl	$524288, %edx           # imm = 0x80000
	shrl	%cl, %edx
	addl	%eax, %edx
	movl	$-1048576, %eax         # imm = 0xFFF00000
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %eax
	andl	%edx, %eax
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB0_15
.LBB0_11:
	leal	-19(%rsi), %ecx
	movl	$-1, %edi
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edi
	je	.LBB0_18
# %bb.12:
	movb	$50, %cl
	subb	%sil, %cl
	movl	$1, %esi
	shll	%cl, %esi
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %esi
	jae	.LBB0_14
# %bb.13:
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
	notl	%edi
	andl	%edi, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	shlq	$32, %rax
	orq	%rsi, %rax
	movq	%rax, %xmm0
	jmp	.LBB0_16
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	round, .Lfunc_end0-round
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
