	.text
	.file	"exit.c"
	.globl	exit                    # -- Begin function exit
	.p2align	4, 0x90
	.type	exit,@function
exit:                                   # @exit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	xorl	%esi, %esi
	callq	__call_exitprocs
	movq	_global_impure_ptr(%rip), %rdi
	movq	88(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_2
# %bb.1:
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_2:
	movl	%ebx, %edi
	callq	_exit
.Lfunc_end0:
	.size	exit, .Lfunc_end0-exit
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
