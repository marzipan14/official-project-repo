	.text
	.file	"fflush_u.c"
	.globl	_fflush_unlocked_r      # -- Begin function _fflush_unlocked_r
	.p2align	4, 0x90
	.type	_fflush_unlocked_r,@function
_fflush_unlocked_r:                     # @_fflush_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	je	.LBB0_2
.LBB0_3:
	cmpw	$0, 16(%r14)
	je	.LBB0_4
.LBB0_5:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__sflush_r              # TAILCALL
.LBB0_2:
	movq	%rbx, %rdi
	callq	__sinit
	cmpw	$0, 16(%r14)
	jne	.LBB0_5
.LBB0_4:
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fflush_unlocked_r, .Lfunc_end0-_fflush_unlocked_r
                                        # -- End function
	.globl	fflush_unlocked         # -- Begin function fflush_unlocked
	.p2align	4, 0x90
	.type	fflush_unlocked,@function
fflush_unlocked:                        # @fflush_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB1_6
# %bb.1:
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %r14
	testq	%rax, %rax
	je	.LBB1_4
# %bb.2:
	cmpl	$0, 80(%r14)
	je	.LBB1_3
.LBB1_4:
	cmpw	$0, 16(%rbx)
	je	.LBB1_5
.LBB1_7:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__sflush_r              # TAILCALL
.LBB1_6:
	movq	_global_impure_ptr(%rip), %rdi
	movl	$_fflush_unlocked_r, %esi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_fwalk_reent            # TAILCALL
.LBB1_3:
	movq	%r14, %rdi
	callq	__sinit
	cmpw	$0, 16(%rbx)
	jne	.LBB1_7
.LBB1_5:
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fflush_unlocked, .Lfunc_end1-fflush_unlocked
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
