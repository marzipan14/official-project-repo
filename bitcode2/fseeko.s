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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	movq	%r15, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movswl	16(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %eax              # imm = 0x100
	je	.LBB0_6
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB0_6
# %bb.5:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_fflush_r
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movq	72(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_7
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB0_23
# %bb.9:
	cmpl	$2, %r12d
	je	.LBB0_23
# %bb.10:
	cmpl	$1, %r12d
	jne	.LBB0_34
# %bb.11:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_fflush_r
	movzwl	16(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	$4096, %ecx             # imm = 0x1000
	jne	.LBB0_12
# %bb.13:
	movq	48(%r13), %rsi
	movq	%r15, %rdi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	*%rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_27
# %bb.14:
	movzwl	16(%r13), %ecx
	jmp	.LBB0_15
.LBB0_7:
	movl	$29, (%r15)
	jmp	.LBB0_27
.LBB0_34:
	movl	$22, (%r15)
	jmp	.LBB0_27
.LBB0_12:
	movq	144(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movswl	%cx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	jne	.LBB0_16
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %cl
	je	.LBB0_22
# %bb.19:
	movq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_22
# %bb.20:
	addq	%rcx, %rax
	subq	24(%r13), %rax
	jmp	.LBB0_21
.LBB0_16:
	movslq	8(%r13), %rcx
	subq	%rcx, %rax
	cmpq	$0, 88(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_22
# %bb.17:
	movslq	112(%r13), %rcx
	subq	%rcx, %rax
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_22:
	addq	%rax, %r14
	xorl	%r12d, %r12d
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 24(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_25
# %bb.24:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	__smakebuf_r
	movl	$42, __A_VARIABLE(%rip)
.LBB0_25:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_fflush_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_26
.LBB0_27:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
.LBB0_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_26:
	movq	48(%r13), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	movl	%r12d, %ecx
	callq	*%rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_27
# %bb.28:
	movq	88(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_32
# %bb.29:
	leaq	116(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB0_31
# %bb.30:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_31:
	movq	$0, 88(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_32:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_33
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
	callq	_fseeko_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fseeko, .Lfunc_end1-fseeko
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
