	.text
	.file	"fstatr.c"
	.globl	_fstat_r                # -- Begin function _fstat_r
	.p2align	4, 0x90
	.type	_fstat_r,@function
_fstat_r:                               # @_fstat_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	movq	%rdx, %r15
	movq	%rdi, %r14
	movl	$0, errno(%rip)
	leaq	65416(%rbp), %r12
	movl	%esi, %edi
	movq	%r12, %rsi
	callq	fstat
	movl	%eax, %ebx
	movl	$88, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy
	cmpl	$-1, %ebx
	jne	.LBB0_3
# %bb.1:
	movl	errno(%rip), %eax
	testl	%eax, %eax
	je	.LBB0_3
# %bb.2:
	movl	%eax, (%r14)
.LBB0_3:
	movl	%ebx, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fstat_r, .Lfunc_end0-_fstat_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
