	.text
	.file	"putw.c"
	.globl	putw                    # -- Begin function putw
	.p2align	4, 0x90
	.type	putw,@function
putw:                                   # @putw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rsi, %rcx
	movl	%edi, -4(%rbp)
	leaq	-4(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	xorl	%ecx, %ecx
	cmpq	$1, %rax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	putw, .Lfunc_end0-putw
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
