	.text
	.file	"reent.c"
	.globl	cleanup_glue            # -- Begin function cleanup_glue
	.p2align	4, 0x90
	.type	cleanup_glue,@function
cleanup_glue:                           # @cleanup_glue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	(%rsi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_2
# %bb.1:
	callq	cleanup_glue
	movl	$42, __A_VARIABLE(%rip)
.LBB0_2:
	movq	%rbx, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cleanup_glue, .Lfunc_end0-cleanup_glue
                                        # -- End function
	.globl	_reclaim_reent          # -- Begin function _reclaim_reent
	.p2align	4, 0x90
	.type	_reclaim_reent,@function
_reclaim_reent:                         # @_reclaim_reent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	cmpq	%rdi, _impure_ptr(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_20
# %bb.1:
	movq	%rdi, %r14
	movq	120(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_8
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	movq	(%rax,%r15,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_5
	.p2align	4, 0x90
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %rbx
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	testq	%rbx, %rbx
	jne	.LBB1_4
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=1
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$64, %r15
	je	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	movq	120(%r14), %rax
	jmp	.LBB1_3
.LBB1_7:
	movq	120(%r14), %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB1_8:
	movq	96(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_10
# %bb.9:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB1_10:
	movq	504(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_15
# %bb.11:
	leaq	512(%r14), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rdi
	je	.LBB1_15
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rbx
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	cmpq	%r15, %rbx
	jne	.LBB1_13
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_15:
	movq	136(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_17
# %bb.16:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB1_17:
	cmpl	$0, 80(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_20
# %bb.18:
	movq	%r14, %rdi
	callq	*88(%r14)
	movq	1312(%r14), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB1_20
# %bb.19:
	movq	%r14, %rdi
	callq	cleanup_glue
	movl	$42, __A_VARIABLE(%rip)
.LBB1_20:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_reclaim_reent, .Lfunc_end1-_reclaim_reent
                                        # -- End function
	.type	errno,@object           # @errno
	.comm	errno,4,4
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
