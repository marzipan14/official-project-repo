	.text
	.file	"fclose.c"
	.globl	_fclose_r               # -- Begin function _fclose_r
	.p2align	4, 0x90
	.type	_fclose_r,@function
_fclose_r:                              # @_fclose_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testq	%rsi, %rsi
	je	.LBB0_18
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	%rdi, %rdi
	je	.LBB0_4
# %bb.2:
	cmpl	$0, 80(%r15)
	jne	.LBB0_4
# %bb.3:
	movq	%r15, %rdi
	callq	__sinit
.LBB0_4:
	leaq	-28(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	cmpw	$0, 16(%rbx)
	je	.LBB0_17
# %bb.5:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	__sflush_r
	movl	%eax, %r14d
	movq	80(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB0_7
# %bb.6:
	movq	48(%rbx), %rsi
	movq	%r15, %rdi
	callq	*%rcx
	testl	%eax, %eax
	movl	$-1, %eax
	cmovsl	%eax, %r14d
.LBB0_7:
	cmpb	$0, 16(%rbx)
	jns	.LBB0_9
# %bb.8:
	movq	24(%rbx), %rdi
	callq	free
.LBB0_9:
	movq	88(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_13
# %bb.10:
	leaq	116(%rbx), %rax
	cmpq	%rax, %rdi
	je	.LBB0_12
# %bb.11:
	callq	free
.LBB0_12:
	movq	$0, 88(%rbx)
.LBB0_13:
	movq	120(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_15
# %bb.14:
	callq	free
	movq	$0, 120(%rbx)
.LBB0_15:
	callq	__sfp_lock_acquire
	movw	$0, 16(%rbx)
	callq	__sfp_lock_release
	movl	-28(%rbp), %edi
	leaq	-28(%rbp), %rsi
	callq	pthread_setcancelstate
	jmp	.LBB0_19
.LBB0_17:
	movl	-28(%rbp), %edi
	leaq	-28(%rbp), %rsi
	callq	pthread_setcancelstate
.LBB0_18:
	xorl	%r14d, %r14d
.LBB0_19:
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fclose_r, .Lfunc_end0-_fclose_r
                                        # -- End function
	.globl	fclose                  # -- Begin function fclose
	.p2align	4, 0x90
	.type	fclose,@function
fclose:                                 # @fclose
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_fclose_r               # TAILCALL
.Lfunc_end1:
	.size	fclose, .Lfunc_end1-fclose
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
