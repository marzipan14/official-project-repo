	.text
	.file	"fgetc.c"
	.globl	_fgetc_r                # -- Begin function _fgetc_r
	.p2align	4, 0x90
	.type	_fgetc_r,@function
_fgetc_r:                               # @_fgetc_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	movq	%r14, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	leaq	-20(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	8(%rbx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_4
# %bb.5:
	movq	(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbx)
	movzbl	(%rax), %ebx
	jmp	.LBB0_6
.LBB0_4:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__srget_r
	movl	%eax, %ebx
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	-20(%rbp), %edi
	leaq	-20(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fgetc_r, .Lfunc_end0-_fgetc_r
                                        # -- End function
	.globl	fgetc                   # -- Begin function fgetc
	.p2align	4, 0x90
	.type	fgetc,@function
fgetc:                                  # @fgetc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.2:
	movq	%r14, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	leaq	-20(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	8(%rbx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB1_4
# %bb.5:
	movq	(%rbx), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%rbx)
	movzbl	(%rax), %ebx
	jmp	.LBB1_6
.LBB1_4:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__srget_r
	movl	%eax, %ebx
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	-20(%rbp), %edi
	leaq	-20(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fgetc, .Lfunc_end1-fgetc
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
