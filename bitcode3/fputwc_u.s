	.text
	.file	"fputwc_u.c"
	.globl	_fputwc_unlocked_r      # -- Begin function _fputwc_unlocked_r
	.p2align	4, 0x90
	.type	_fputwc_unlocked_r,@function
_fputwc_unlocked_r:                     # @_fputwc_unlocked_r
# %bb.0:
	jmp	__fputwc                # TAILCALL
.Lfunc_end0:
	.size	_fputwc_unlocked_r, .Lfunc_end0-_fputwc_unlocked_r
                                        # -- End function
	.globl	fputwc_unlocked         # -- Begin function fputwc_unlocked
	.p2align	4, 0x90
	.type	fputwc_unlocked,@function
fputwc_unlocked:                        # @fputwc_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movl	%edi, %r15d
	callq	__getreent
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	jne	.LBB1_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
.LBB1_3:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__fputwc                # TAILCALL
.Lfunc_end1:
	.size	fputwc_unlocked, .Lfunc_end1-fputwc_unlocked
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
