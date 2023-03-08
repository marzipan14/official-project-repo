	.text
	.file	"fseeko.c"
	.globl	_fseeko_r               # -- Begin function _fseeko_r
	.p2align	4, 0x90
	.type	_fseeko_r,@function
_fseeko_r:                              # @_fseeko_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, %r12d
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r15
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r15)
	jne	.LBB0_3
# %bb.2:
	movq	%r15, %rdi
	callq	__sinit
.LBB0_3:
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movzwl	16(%r13), %eax
	andl	$264, %eax              # imm = 0x108
	cmpl	$264, %eax              # imm = 0x108
	jne	.LBB0_5
# %bb.4:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_fflush_r
.LBB0_5:
	movq	72(%r13), %rbx
	testq	%rbx, %rbx
	je	.LBB0_6
# %bb.7:
	testl	%r12d, %r12d
	je	.LBB0_21
# %bb.8:
	cmpl	$2, %r12d
	je	.LBB0_21
# %bb.9:
	cmpl	$1, %r12d
	jne	.LBB0_32
# %bb.10:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_fflush_r
	movzwl	16(%r13), %ecx
	testl	$4096, %ecx             # imm = 0x1000
	jne	.LBB0_11
# %bb.12:
	movq	48(%r13), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	*%rbx
	cmpq	$-1, %rax
	je	.LBB0_25
# %bb.13:
	movzwl	16(%r13), %ecx
	jmp	.LBB0_14
.LBB0_6:
	movl	$29, (%r15)
	jmp	.LBB0_25
.LBB0_32:
	movl	$22, (%r15)
	jmp	.LBB0_25
.LBB0_11:
	movq	144(%r13), %rax
.LBB0_14:
	movswl	%cx, %ecx
	testb	$4, %cl
	jne	.LBB0_15
# %bb.17:
	testb	$8, %cl
	je	.LBB0_20
# %bb.18:
	movq	(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB0_20
# %bb.19:
	addq	%rcx, %rax
	subq	24(%r13), %rax
	jmp	.LBB0_20
.LBB0_15:
	movslq	8(%r13), %rcx
	subq	%rcx, %rax
	cmpq	$0, 88(%r13)
	je	.LBB0_20
# %bb.16:
	movslq	112(%r13), %rcx
	subq	%rcx, %rax
.LBB0_20:
	addq	%rax, %r14
	xorl	%r12d, %r12d
.LBB0_21:
	cmpq	$0, 24(%r13)
	jne	.LBB0_23
# %bb.22:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	__smakebuf_r
.LBB0_23:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_fflush_r
	testl	%eax, %eax
	je	.LBB0_24
.LBB0_25:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$-1, %ebx
.LBB0_31:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_24:
	movq	48(%r13), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	movl	%r12d, %ecx
	callq	*%rbx
	cmpq	$-1, %rax
	je	.LBB0_25
# %bb.26:
	movq	88(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB0_30
# %bb.27:
	leaq	116(%r13), %rax
	cmpq	%rax, %rdi
	je	.LBB0_29
# %bb.28:
	callq	free
.LBB0_29:
	movq	$0, 88(%r13)
.LBB0_30:
	movq	24(%r13), %rax
	movq	%rax, (%r13)
	movl	$0, 8(%r13)
	andw	$-2081, 16(%r13)        # imm = 0xF7DF
	addq	$164, %r13
	xorl	%ebx, %ebx
	movl	$8, %edx
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	jmp	.LBB0_31
.Lfunc_end0:
	.size	_fseeko_r, .Lfunc_end0-_fseeko_r
                                        # -- End function
	.globl	fseeko                  # -- Begin function fseeko
	.p2align	4, 0x90
	.type	fseeko,@function
fseeko:                                 # @fseeko
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_fseeko_r               # TAILCALL
.Lfunc_end1:
	.size	fseeko, .Lfunc_end1-fseeko
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
