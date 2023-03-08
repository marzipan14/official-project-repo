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
	testq	%rsi, %rsi
	je	.LBB0_2
# %bb.1:
	callq	cleanup_glue
.LBB0_2:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	free                    # TAILCALL
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
	je	.LBB1_17
# %bb.1:
	movq	%rdi, %r14
	movq	120(%rdi), %rax
	testq	%rax, %rax
	je	.LBB1_8
# %bb.2:                                # %.preheader3
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	movq	(%rax,%r15,8), %rdi
	testq	%rdi, %rdi
	je	.LBB1_5
	.p2align	4, 0x90
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi), %rbx
	callq	free
	movq	%rbx, %rdi
	testq	%rbx, %rbx
	jne	.LBB1_4
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=1
	addq	$1, %r15
	cmpq	$64, %r15
	je	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	movq	120(%r14), %rax
	jmp	.LBB1_3
.LBB1_7:
	movq	120(%r14), %rdi
	callq	free
.LBB1_8:
	movq	96(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB1_10
# %bb.9:
	callq	free
.LBB1_10:
	movq	504(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB1_13
# %bb.11:
	leaq	512(%r14), %r15
	cmpq	%r15, %rdi
	je	.LBB1_13
	.p2align	4, 0x90
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rbx
	callq	free
	movq	%rbx, %rdi
	cmpq	%r15, %rbx
	jne	.LBB1_12
.LBB1_13:
	movq	136(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB1_15
# %bb.14:
	callq	free
.LBB1_15:
	cmpl	$0, 80(%r14)
	je	.LBB1_17
# %bb.16:
	movq	%r14, %rdi
	callq	*88(%r14)
	movq	1312(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB1_17
# %bb.18:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	cleanup_glue            # TAILCALL
.LBB1_17:
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
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
