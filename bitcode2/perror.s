	.text
	.file	"perror.c"
	.globl	_perror_r               # -- Begin function _perror_r
	.p2align	4, 0x90
	.type	_perror_r,@function
_perror_r:                              # @_perror_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.1:
	cmpb	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_3
# %bb.2:
	movq	24(%rbx), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	fputs
	movq	24(%rbx), %rsi
	movl	$.L.str, %edi
	callq	fputs
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movl	(%rbx), %esi
	leaq	-12(%rbp), %rcx
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	_strerror_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_5
# %bb.4:
	movq	24(%rbx), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movq	24(%rbx), %rsi
	movl	$10, %edi
	callq	fputc
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_perror_r, .Lfunc_end0-_perror_r
                                        # -- End function
	.globl	perror                  # -- Begin function perror
	.p2align	4, 0x90
	.type	perror,@function
perror:                                 # @perror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_perror_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	perror, .Lfunc_end1-perror
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	": "
	.size	.L.str, 3

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
