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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.2:
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_5
# %bb.3:
	cmpl	$0, 80(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_5
# %bb.4:
	movq	%r15, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	leaq	-28(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	cmpw	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_6
# %bb.7:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	__sflush_r
	movl	%eax, %r14d
	movq	80(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_10
# %bb.8:
	movq	48(%rbx), %rsi
	movq	%r15, %rdi
	callq	*%rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB0_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
.LBB0_10:
	cmpb	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB0_12
# %bb.11:
	movq	24(%rbx), %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movq	88(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_16
# %bb.13:
	leaq	116(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB0_15
# %bb.14:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movq	$0, 88(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_16:
	movq	120(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_18
# %bb.17:
	callq	free
	movq	$0, 120(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_18:
	callq	__sfp_lock_acquire
	movw	$0, 16(%rbx)
	callq	__sfp_lock_release
	movl	-28(%rbp), %edi
	leaq	-28(%rbp), %rsi
	callq	pthread_setcancelstate
	jmp	.LBB0_19
.LBB0_1:
	xorl	%r14d, %r14d
	jmp	.LBB0_20
.LBB0_6:
	movl	-28(%rbp), %edi
	leaq	-28(%rbp), %rsi
	callq	pthread_setcancelstate
	xorl	%r14d, %r14d
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	callq	_fclose_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fclose, .Lfunc_end1-fclose
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
