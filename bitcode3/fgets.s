	.text
	.file	"fgets.c"
	.globl	_fgets_r                # -- Begin function _fgets_r
	.p2align	4, 0x90
	.type	_fgets_r,@function
_fgets_r:                               # @_fgets_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	cmpl	$2, %edx
	jge	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	jmp	.LBB0_16
.LBB0_2:
	movq	%rcx, %r15
	movl	%edx, %ebx
	movq	%rsi, %r13
	movq	%rdi, %r12
	testq	%rdi, %rdi
	je	.LBB0_5
# %bb.3:
	cmpl	$0, 80(%r12)
	jne	.LBB0_5
# %bb.4:
	movq	%r12, %rdi
	callq	__sinit
.LBB0_5:
	movq	%r12, -64(%rbp)         # 8-byte Spill
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	addl	$-1, %ebx
	movq	%r13, -56(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	8(%r15), %eax
	testl	%eax, %eax
	jne	.LBB0_11
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__srefill_r
	testl	%eax, %eax
	jne	.LBB0_8
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	movl	8(%r15), %eax
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=1
	movq	(%r15), %r14
	cmpl	%ebx, %eax
	cmoval	%ebx, %eax
	movslq	%eax, %r12
	movq	%r14, %rdi
	movl	$10, %esi
	movq	%r12, %rdx
	callq	memchr
	testq	%rax, %rax
	jne	.LBB0_12
# %bb.13:                               #   in Loop: Header=BB0_6 Depth=1
	subl	%r12d, 8(%r15)
	addq	%r12, (%r15)
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	memcpy
	addq	%r12, %r13
	subl	%r12d, %ebx
	jne	.LBB0_6
	jmp	.LBB0_14
.LBB0_12:
	addq	$1, %rax
	movq	%rax, %rbx
	subq	%r14, %rbx
	subl	%ebx, 8(%r15)
	movq	%rax, (%r15)
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, (%r13,%rbx)
	jmp	.LBB0_15
.LBB0_8:
	cmpq	-56(%rbp), %r13         # 8-byte Folded Reload
	je	.LBB0_9
.LBB0_14:
	movb	$0, (%r13)
.LBB0_15:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movq	-56(%rbp), %rax         # 8-byte Reload
.LBB0_16:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_9:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	xorl	%eax, %eax
	jmp	.LBB0_16
.Lfunc_end0:
	.size	_fgets_r, .Lfunc_end0-_fgets_r
                                        # -- End function
	.globl	fgets                   # -- Begin function fgets
	.p2align	4, 0x90
	.type	fgets,@function
fgets:                                  # @fgets
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_fgets_r                # TAILCALL
.Lfunc_end1:
	.size	fgets, .Lfunc_end1-fgets
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
