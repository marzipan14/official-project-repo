	.text
	.file	"isblank_l.c"
	.globl	isblank_l               # -- Begin function isblank_l
	.p2align	4, 0x90
	.type	isblank_l,@function
isblank_l:                              # @isblank_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	movq	%rsi, %rdi
	callq	__locale_ctype_ptr_l
	movslq	%ebx, %rcx
	movzbl	1(%rcx,%rax), %eax
	xorl	%edx, %edx
	cmpl	$9, %ecx
	sete	%dl
	shrl	$7, %eax
	orl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	isblank_l, .Lfunc_end0-isblank_l
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
