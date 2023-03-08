	.text
	.file	"fcntlr.c"
	.globl	_fcntl_r                # -- Begin function _fcntl_r
	.p2align	4, 0x90
	.type	_fcntl_r,@function
_fcntl_r:                               # @_fcntl_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$0, errno(%rip)
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%ecx, %edx
	xorl	%eax, %eax
	callq	fcntl
	cmpl	$-1, %eax
	jne	.LBB0_3
# %bb.1:
	movl	errno(%rip), %ecx
	testl	%ecx, %ecx
	je	.LBB0_3
# %bb.2:
	movl	%ecx, (%rbx)
.LBB0_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fcntl_r, .Lfunc_end0-_fcntl_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
