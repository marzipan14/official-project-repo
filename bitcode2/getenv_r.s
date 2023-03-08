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
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	callq	__env_lock
	movq	environ(%rip), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_12
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r12), %cl
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	testb	%cl, %cl
	je	.LBB0_6
# %bb.2:                                # %.preheader
	movq	%r12, %rax
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$61, %cl
	je	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rax), %ecx
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB0_3
.LBB0_6:
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_12
# %bb.7:
	subl	%r12d, %eax
	movslq	%eax, %r13
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	addq	$8, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_12
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	(%rbx), %r14
	cmpb	$61, (%r14,%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_11
# %bb.10:
	subq	environ(%rip), %rbx
	shrq	$3, %rbx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%ebx, (%rax)
	movq	%r15, %rdi
	callq	__env_unlock
	leaq	(%r14,%r13), %rax
	addq	$1, %rax
	jmp	.LBB0_13
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movq	%r15, %rdi
	callq	__env_unlock
	xorl	%eax, %eax
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
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
