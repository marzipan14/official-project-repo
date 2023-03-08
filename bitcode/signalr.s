	.text
	.file	"signalr.c"
	.globl	_kill_r                 # -- Begin function _kill_r
	.p2align	4, 0x90
	.type	_kill_r,@function
_kill_r:                                # @_kill_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$0, errno(%rip)
	movl	%esi, %edi
	movl	%edx, %esi
	callq	kill
	cmpl	$-1, %eax
	jne	.LBB0_3
# %bb.1:
	movl	errno(%rip), %ecx
	testl	%ecx, %ecx
	je	.LBB0_3
# %bb.2:
	movl	%ecx, (%rbx)
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_kill_r, .Lfunc_end0-_kill_r
                                        # -- End function
	.globl	_getpid_r               # -- Begin function _getpid_r
	.p2align	4, 0x90
	.type	_getpid_r,@function
_getpid_r:                              # @_getpid_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	getpid
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_getpid_r, .Lfunc_end1-_getpid_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
