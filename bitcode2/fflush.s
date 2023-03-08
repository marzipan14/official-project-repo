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
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	jne	.LBB0_10
# %bb.1:
	cmpl	$0, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB0_3
# %bb.2:
	cmpl	$0, 112(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_39
.LBB0_3:
	movq	72(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_39
# %bb.4:
	movl	(%r14), %r15d
	movl	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	testl	$4096, %eax             # imm = 0x1000
	jne	.LBB0_19
# %bb.5:
	movq	48(%r12), %rsi
	movq	%r14, %rdi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	*%rbx
	movq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	jne	.LBB0_20
# %bb.6:
	movl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_41
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$29, %eax
	je	.LBB0_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$22, %eax
	jne	.LBB0_42
.LBB0_9:
	movl	%r15d, (%r14)
	xorl	%r15d, %r15d
	jmp	.LBB0_43
.LBB0_10:
	movq	24(%r12), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB0_39
# %bb.11:
	movq	(%r12), %rbx
	subq	%r13, %rbx
	movq	%r13, (%r12)
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %ecx
	testb	$3, %al
	jne	.LBB0_13
# %bb.12:
	movl	32(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movl	%ecx, 12(%r12)
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB0_40
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	movq	48(%r12), %rsi
	movq	%r14, %rdi
	movq	%r13, %rdx
	movl	%ebx, %ecx
	callq	*64(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB0_27
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	addq	%rax, %r13
	movslq	%ebx, %rbx
	subq	%rax, %rbx
	jmp	.LBB0_14
.LBB0_19:
	movq	144(%r12), %rdx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	movzwl	16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	je	.LBB0_23
# %bb.21:
	movslq	8(%r12), %rax
	subq	%rax, %rdx
	cmpq	$0, 88(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_23
# %bb.22:
	movslq	112(%r12), %rax
	subq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_23:
	movq	48(%r12), %rsi
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	*72(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_28
.LBB0_24:
	movl	$0, 8(%r12)
	movq	24(%r12), %rcx
	movq	%rcx, (%r12)
	movzwl	16(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	$4096, %ecx             # imm = 0x1000
	je	.LBB0_34
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_33
.LBB0_26:
	movq	%rax, 144(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_34
.LBB0_27:
	orb	$64, 16(%r12)
	movl	$-1, %r15d
	jmp	.LBB0_40
.LBB0_28:
	movl	(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_24
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$29, %ecx
	je	.LBB0_24
# %bb.30:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$22, %ecx
	je	.LBB0_24
# %bb.31:
	orb	$64, 16(%r12)
	movl	$-1, %r15d
	jmp	.LBB0_44
.LBB0_33:
	cmpl	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_26
.LBB0_34:
	movl	%r15d, (%r14)
	movq	88(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_38
# %bb.35:
	leaq	116(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB0_37
# %bb.36:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_37:
	movq	$0, 88(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_39:
	xorl	%r15d, %r15d
.LBB0_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_41:
	movq	$-1, %rdx
	jmp	.LBB0_20
.LBB0_42:
	orb	$64, 16(%r12)
	movl	$-1, %r15d
.LBB0_43:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_44:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_40
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	cmpw	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_4
# %bb.5:
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
.LBB1_4:
	xorl	%ebx, %ebx
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_1
# %bb.2:
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_5
# %bb.3:
	cmpl	$0, 80(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_5
# %bb.4:
	movq	%r14, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB2_5:
	cmpw	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_6
# %bb.7:
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
	jmp	.LBB2_8
.LBB2_1:
	movq	_global_impure_ptr(%rip), %rdi
	movl	$_fflush_r, %esi
	callq	_fwalk_reent
	movl	%eax, %ebx
	jmp	.LBB2_9
.LBB2_6:
	xorl	%ebx, %ebx
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
