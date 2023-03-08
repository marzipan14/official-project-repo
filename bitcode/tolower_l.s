	.text
	.file	"tolower_l.c"
	.globl	tolower_l               # -- Begin function tolower_l
	.p2align	4, 0x90
	.type	tolower_l,@function
tolower_l:                              # @tolower_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	movq	%rsi, %rdi
	callq	__locale_ctype_ptr_l
	movslq	%ebx, %rcx
	movb	1(%rax,%rcx), %dl
	andb	$3, %dl
	leal	32(%rcx), %eax
	cmpb	$1, %dl
	cmovnel	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tolower_l, .Lfunc_end0-tolower_l
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
