	.text
	.file	"argz_count.c"
	.globl	argz_count              # -- Begin function argz_count
	.p2align	4, 0x90
	.type	argz_count,@function
argz_count:                             # @argz_count
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.2:
	leaq	-1(%rsi), %rax
	movl	%esi, %ecx
	andl	$3, %ecx
	cmpq	$3, %rax
	jae	.LBB0_4
# %bb.3:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB0_6
.LBB0_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_4:
	subq	%rcx, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpb	$1, (%rdi,%rdx)
	adcq	$0, %rax
	cmpb	$1, 1(%rdi,%rdx)
	adcq	$0, %rax
	cmpb	$1, 2(%rdi,%rdx)
	adcq	$0, %rax
	cmpb	$1, 3(%rdi,%rdx)
	adcq	$0, %rax
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB0_5
.LBB0_6:
	testq	%rcx, %rcx
	je	.LBB0_9
# %bb.7:                                # %.preheader
	addq	%rdx, %rdi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	cmpb	$1, (%rdi,%rdx)
	adcq	$0, %rax
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_8
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	argz_count, .Lfunc_end0-argz_count
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
