	.text
	.file	"fileno.c"
	.globl	fileno                  # -- Begin function fileno
	.p2align	4, 0x90
	.type	fileno,@function
fileno:                                 # @fileno
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rax)
	jne	.LBB0_3
# %bb.2:
	movq	%rax, %rdi
	callq	__sinit
.LBB0_3:
	leaq	-12(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	cmpw	$0, 16(%rbx)
	je	.LBB0_5
# %bb.4:
	movswl	18(%rbx), %ebx
	jmp	.LBB0_6
.LBB0_5:
	callq	__getreent
	movl	$9, (%rax)
	movl	$-1, %ebx
.LBB0_6:
	movl	-12(%rbp), %edi
	leaq	-12(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fileno, .Lfunc_end0-fileno
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
