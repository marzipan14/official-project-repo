	.text
	.file	"fflush.c"
	.globl	__sflush_r              # -- Begin function __sflush_r
	.p2align	4, 0x90
	.type	__sflush_r,@function
__sflush_r:                             # @__sflush_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r12
	movq	%rdi, %r14
	movswl	16(%rsi), %eax
	testb	$8, %al
	jne	.LBB0_10
# %bb.1:
	cmpl	$0, 8(%r12)
	jg	.LBB0_3
# %bb.2:
	cmpl	$0, 112(%r12)
	jle	.LBB0_29
.LBB0_3:
	movq	72(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB0_29
# %bb.4:
	movl	(%r14), %r15d
	movl	$0, (%r14)
	testl	$4096, %eax             # imm = 0x1000
	jne	.LBB0_18
# %bb.5:
	movq	48(%r12), %rsi
	movq	%r14, %rdi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	*%rbx
	movq	%rax, %rdx
	cmpq	$-1, %rax
	jne	.LBB0_19
# %bb.6:
	movl	(%r14), %eax
	testl	%eax, %eax
	je	.LBB0_36
# %bb.7:
	cmpl	$29, %eax
	je	.LBB0_9
# %bb.8:
	cmpl	$22, %eax
	jne	.LBB0_28
.LBB0_9:
	movl	%r15d, (%r14)
	xorl	%r15d, %r15d
	jmp	.LBB0_35
.LBB0_10:
	movq	24(%r12), %r13
	testq	%r13, %r13
	je	.LBB0_29
# %bb.11:
	movq	(%r12), %rbx
	subq	%r13, %rbx
	movq	%r13, (%r12)
	xorl	%r15d, %r15d
	movl	$0, %ecx
	testb	$3, %al
	jne	.LBB0_13
# %bb.12:
	movl	32(%r12), %ecx
.LBB0_13:
	movl	%ecx, 12(%r12)
	testl	%ebx, %ebx
	jle	.LBB0_35
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movq	48(%r12), %rsi
	movq	%r14, %rdi
	movq	%r13, %rdx
	movl	%ebx, %ecx
	callq	*64(%r12)
	testq	%rax, %rax
	jle	.LBB0_28
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	addq	%rax, %r13
	movslq	%ebx, %rbx
	subq	%rax, %rbx
	testl	%ebx, %ebx
	jg	.LBB0_14
	jmp	.LBB0_35
.LBB0_29:
	xorl	%r15d, %r15d
	jmp	.LBB0_35
.LBB0_18:
	movq	144(%r12), %rdx
.LBB0_19:
	testb	$4, 16(%r12)
	je	.LBB0_22
.LBB0_20:
	movslq	8(%r12), %rax
	subq	%rax, %rdx
	cmpq	$0, 88(%r12)
	je	.LBB0_22
# %bb.21:
	movslq	112(%r12), %rax
	subq	%rax, %rdx
.LBB0_22:
	movq	48(%r12), %rsi
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	*72(%r12)
	cmpq	$-1, %rax
	jne	.LBB0_25
# %bb.23:
	movl	(%r14), %ecx
	cmpl	$29, %ecx
	ja	.LBB0_28
# %bb.24:
	movl	$541065217, %edx        # imm = 0x20400001
	btl	%ecx, %edx
	jae	.LBB0_28
.LBB0_25:
	movl	$0, 8(%r12)
	movq	24(%r12), %rcx
	movq	%rcx, (%r12)
	testb	$16, 17(%r12)
	je	.LBB0_31
# %bb.26:
	cmpq	$-1, %rax
	je	.LBB0_30
.LBB0_27:
	movq	%rax, 144(%r12)
	jmp	.LBB0_31
.LBB0_28:
	orb	$64, 16(%r12)
	movl	$-1, %r15d
	jmp	.LBB0_35
.LBB0_30:
	cmpl	$0, (%r14)
	je	.LBB0_27
.LBB0_31:
	movl	%r15d, (%r14)
	movq	88(%r12), %rdi
	xorl	%r15d, %r15d
	testq	%rdi, %rdi
	je	.LBB0_35
# %bb.32:
	leaq	116(%r12), %rax
	cmpq	%rax, %rdi
	je	.LBB0_34
# %bb.33:
	callq	free
.LBB0_34:
	movq	$0, 88(%r12)
.LBB0_35:
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_36:
	movq	$-1, %rdx
	testb	$4, 16(%r12)
	jne	.LBB0_20
	jmp	.LBB0_22
.Lfunc_end0:
	.size	__sflush_r, .Lfunc_end0-__sflush_r
                                        # -- End function
	.globl	_fflush_r               # -- Begin function _fflush_r
	.p2align	4, 0x90
	.type	_fflush_r,@function
_fflush_r:                              # @_fflush_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testq	%rdi, %rdi
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	je	.LBB1_2
.LBB1_3:
	cmpw	$0, 16(%r14)
	je	.LBB1_4
.LBB1_5:
	leaq	-28(%rbp), %r15
	movl	$1, %edi
	movq	%r15, %rsi
	callq	pthread_setcancelstate
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__sflush_r
	movl	%eax, %ebx
	movl	-28(%rbp), %edi
	movq	%r15, %rsi
	callq	pthread_setcancelstate
	jmp	.LBB1_6
.LBB1_2:
	movq	%rbx, %rdi
	callq	__sinit
	cmpw	$0, 16(%r14)
	jne	.LBB1_5
.LBB1_4:
	xorl	%ebx, %ebx
.LBB1_6:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_fflush_r, .Lfunc_end1-_fflush_r
                                        # -- End function
	.globl	fflush                  # -- Begin function fflush
	.p2align	4, 0x90
	.type	fflush,@function
fflush:                                 # @fflush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB2_8
# %bb.1:
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %r14
	testq	%rax, %rax
	je	.LBB2_4
# %bb.2:
	cmpl	$0, 80(%r14)
	je	.LBB2_3
.LBB2_4:
	cmpw	$0, 16(%rbx)
	je	.LBB2_5
.LBB2_6:
	leaq	-28(%rbp), %r15
	movl	$1, %edi
	movq	%r15, %rsi
	callq	pthread_setcancelstate
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__sflush_r
	movl	%eax, %ebx
	movl	-28(%rbp), %edi
	movq	%r15, %rsi
	callq	pthread_setcancelstate
	jmp	.LBB2_7
.LBB2_8:
	movq	_global_impure_ptr(%rip), %rdi
	movl	$_fflush_r, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_fwalk_reent            # TAILCALL
.LBB2_3:
	movq	%r14, %rdi
	callq	__sinit
	cmpw	$0, 16(%rbx)
	jne	.LBB2_6
.LBB2_5:
	xorl	%ebx, %ebx
.LBB2_7:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fflush, .Lfunc_end2-fflush
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
