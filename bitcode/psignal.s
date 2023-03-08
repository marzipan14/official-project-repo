	.text
	.file	"psignal.c"
	.globl	psignal                 # -- Begin function psignal
	.p2align	4, 0x90
	.type	psignal,@function
psignal:                                # @psignal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edi, %r14d
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.1:
	movq	%rsi, %rbx
	cmpb	$0, (%rsi)
	je	.LBB0_3
# %bb.2:
	callq	__getreent
	movq	24(%rax), %r15
	movl	%r14d, %edi
	callq	strsignal
	movl	$.L.str, %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB0_4
.LBB0_3:
	callq	__getreent
	movq	24(%rax), %rbx
	movl	%r14d, %edi
	callq	strsignal
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	fprintf
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	psignal, .Lfunc_end0-psignal
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: %s\n"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s\n"
	.size	.L.str.1, 4

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
