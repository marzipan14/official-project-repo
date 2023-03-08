	.text
	.file	"lseekr.c"
	.globl	_lseek_r                # -- Begin function _lseek_r
	.p2align	4, 0x90
	.type	_lseek_r,@function
_lseek_r:                               # @_lseek_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$0, errno(%rip)
	movl	%esi, %edi
	movq	%rdx, %rsi
	movl	%ecx, %edx
	callq	lseek
	movl	errno(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	jne	.LBB0_3
# %bb.1:
	testl	%ecx, %ecx
	je	.LBB0_3
# %bb.2:
	movl	%ecx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_lseek_r, .Lfunc_end0-_lseek_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
