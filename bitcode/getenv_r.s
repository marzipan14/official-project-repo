	.text
	.file	"getenv_r.c"
	.globl	_findenv_r              # -- Begin function _findenv_r
	.p2align	4, 0x90
	.type	_findenv_r,@function
_findenv_r:                             # @_findenv_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %r12
	movq	%rdi, %r15
	callq	__env_lock
	movq	environ(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB0_11
# %bb.1:
	movq	%r12, %rax
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	testb	%cl, %cl
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	cmpb	$61, %cl
	je	.LBB0_11
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$1, %rax
	jmp	.LBB0_2
.LBB0_5:
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_11
# %bb.6:
	subl	%r12d, %eax
	movslq	%eax, %r13
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	movq	8(%rbx), %rdi
	addq	$8, %rbx
	testq	%rdi, %rdi
	je	.LBB0_11
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	(%rbx), %r14
	cmpb	$61, (%r14,%r13)
	jne	.LBB0_10
# %bb.9:
	subq	environ(%rip), %rbx
	shrq	$3, %rbx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%ebx, (%rax)
	movq	%r15, %rdi
	callq	__env_unlock
	leaq	(%r14,%r13), %rax
	addq	$1, %rax
	jmp	.LBB0_12
.LBB0_11:
	movq	%r15, %rdi
	callq	__env_unlock
	xorl	%eax, %eax
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_findenv_r, .Lfunc_end0-_findenv_r
                                        # -- End function
	.globl	_getenv_r               # -- Begin function _getenv_r
	.p2align	4, 0x90
	.type	_getenv_r,@function
_getenv_r:                              # @_getenv_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-4(%rbp), %rdx
	callq	_findenv_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_getenv_r, .Lfunc_end1-_getenv_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
