	.text
	.file	"refill.c"
	.globl	__srefill_r             # -- Begin function __srefill_r
	.p2align	4, 0x90
	.type	__srefill_r,@function
__srefill_r:                            # @__srefill_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r14)
	jne	.LBB0_3
# %bb.2:
	movq	%r14, %rdi
	callq	__sinit
.LBB0_3:
	movl	$0, 8(%rbx)
	movzwl	16(%rbx), %eax
	movswl	%ax, %ecx
	movl	$-1, %r15d
	testb	$32, %cl
	jne	.LBB0_26
# %bb.4:
	testb	$4, %cl
	jne	.LBB0_19
# %bb.5:
	testb	$16, %cl
	jne	.LBB0_7
# %bb.6:
	movl	$9, (%r14)
	orl	$64, %eax
	movw	%ax, 16(%rbx)
	jmp	.LBB0_26
.LBB0_19:
	movq	88(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_11
# %bb.20:
	leaq	116(%rbx), %rax
	cmpq	%rax, %rdi
	je	.LBB0_22
# %bb.21:
	callq	free
.LBB0_22:
	movq	$0, 88(%rbx)
	movl	112(%rbx), %eax
	movl	%eax, 8(%rbx)
	testl	%eax, %eax
	je	.LBB0_11
# %bb.23:
	movq	104(%rbx), %rax
	movq	%rax, (%rbx)
	xorl	%r15d, %r15d
	jmp	.LBB0_26
.LBB0_7:
	testb	$8, %cl
	je	.LBB0_10
# %bb.8:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_fflush_r
	testl	%eax, %eax
	jne	.LBB0_26
# %bb.9:
	movzwl	16(%rbx), %eax
	andl	$-9, %eax
	movw	%ax, 16(%rbx)
	movl	$0, 12(%rbx)
	movl	$0, 40(%rbx)
.LBB0_10:
	orl	$4, %eax
	movw	%ax, 16(%rbx)
.LBB0_11:
	cmpq	$0, 24(%rbx)
	jne	.LBB0_13
# %bb.12:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__smakebuf_r
.LBB0_13:
	movzwl	16(%rbx), %eax
	movswl	%ax, %r15d
	testb	$3, %r15b
	je	.LBB0_16
# %bb.14:
	movw	$1, 16(%rbx)
	movq	_global_impure_ptr(%rip), %rdi
	movl	$lflush, %esi
	callq	_fwalk
	movw	%r15w, 16(%rbx)
	andl	$9, %r15d
	cmpl	$9, %r15d
	jne	.LBB0_16
# %bb.15:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__sflush_r
.LBB0_16:
	movq	24(%rbx), %rdx
	movq	%rdx, (%rbx)
	movq	48(%rbx), %rsi
	movl	32(%rbx), %ecx
	movq	%r14, %rdi
	callq	*56(%rbx)
	movl	%eax, 8(%rbx)
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jg	.LBB0_26
# %bb.17:
	je	.LBB0_18
# %bb.24:
	movl	$0, 8(%rbx)
	movw	$64, %ax
	jmp	.LBB0_25
.LBB0_18:
	movw	$32, %ax
.LBB0_25:
	orw	%ax, 16(%rbx)
	movl	$-1, %r15d
.LBB0_26:
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__srefill_r, .Lfunc_end0-__srefill_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lflush
	.type	lflush,@function
lflush:                                 # @lflush
# %bb.0:
	movzwl	16(%rdi), %eax
	andl	$9, %eax
	cmpw	$9, %ax
	jne	.LBB1_1
# %bb.2:
	jmp	fflush                  # TAILCALL
.LBB1_1:
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	lflush, .Lfunc_end1-lflush
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
