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
	movq	%rdx, %rdi
	shrq	$52, %rdi
	andl	$2047, %edi             # imm = 0x7FF
	leal	-1023(%rdi), %ecx
	cmpl	$1042, %edi             # imm = 0x412
	ja	.LBB0_5
# %bb.1:
	cmpl	$1022, %edi             # imm = 0x3FE
	ja	.LBB0_3
# %bb.2:
	andl	$-2147483648, %eax      # imm = 0x80000000
	leal	1072693248(%rax), %edx
	cmpl	$-1, %ecx
	cmovnel	%eax, %edx
	xorl	%esi, %esi
	jmp	.LBB0_11
.LBB0_5:
	cmpl	$1075, %edi             # imm = 0x433
	jb	.LBB0_9
# %bb.6:
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB0_8
# %bb.7:
	addsd	%xmm0, %xmm0
.LBB0_8:
	retq
.LBB0_3:
	movl	$1048575, %esi          # imm = 0xFFFFF
	shrl	%cl, %esi
	andl	%eax, %esi
	orl	%edx, %esi
	je	.LBB0_12
# %bb.4:
	movl	$524288, %esi           # imm = 0x80000
	shrl	%cl, %esi
	movl	$-1048576, %edx         # imm = 0xFFF00000
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %edx
	addl	%eax, %esi
	andl	%esi, %edx
	xorl	%esi, %esi
	jmp	.LBB0_11
.LBB0_9:
	leal	-19(%rdi), %ecx
	movl	$-1, %esi
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %esi
	testl	%edx, %esi
	je	.LBB0_12
# %bb.10:
	movb	$50, %cl
	subb	%dil, %cl
	movl	$1, %edi
	shll	%cl, %edi
	addl	%edx, %edi
	adcl	$0, %eax
	notl	%esi
	andl	%edi, %esi
	movl	%eax, %edx
.LBB0_11:
	shlq	$32, %rdx
	orq	%rsi, %rdx
	movq	%rdx, %xmm0
.LBB0_12:
	retq
.Lfunc_end0:
	.size	round, .Lfunc_end0-round
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
