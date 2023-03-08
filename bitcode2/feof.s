	.text
	.file	"feof.c"
	.globl	feof                    # -- Begin function feof
	.p2align	4, 0x90
	.type	feof,@function
feof:                                   # @feof
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	callq	__getreent
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	movq	%rax, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	leaq	-28(%rbp), %r15
	movl	$1, %edi
	movq	%r15, %rsi
	callq	pthread_setcancelstate
	movl	16(%r14), %ebx
	shrl	$5, %ebx
	andl	$1, %ebx
	movl	-28(%rbp), %edi
	movq	%r15, %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	feof, .Lfunc_end0-feof
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
