	.text
	.file	"quick_exit.c"
	.globl	at_quick_exit           # -- Begin function at_quick_exit
	.p2align	4, 0x90
	.type	at_quick_exit,@function
at_quick_exit:                          # @at_quick_exit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$16, %edi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	movq	%rbx, 8(%rax)
	movq	handlers(%rip), %rcx
	movq	%rcx, (%rax)
	movq	%rax, handlers(%rip)
	xorl	%eax, %eax
	jmp	.LBB0_3
.LBB0_1:
	movl	$1, %eax
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	at_quick_exit, .Lfunc_end0-at_quick_exit
                                        # -- End function
	.globl	quick_exit              # -- Begin function quick_exit
	.p2align	4, 0x90
	.type	quick_exit,@function
quick_exit:                             # @quick_exit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %r14d
	movq	handlers(%rip), %rbx
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB1_3
# %bb.1:                                #   in Loop: Header=BB1_2 Depth=1
	callq	*8(%rbx)
	movq	(%rbx), %rbx
	jmp	.LBB1_2
.LBB1_3:
	movl	%r14d, %edi
	callq	_exit
.Lfunc_end1:
	.size	quick_exit, .Lfunc_end1-quick_exit
                                        # -- End function
	.type	handlers,@object        # @handlers
	.local	handlers
	.comm	handlers,8,8
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
