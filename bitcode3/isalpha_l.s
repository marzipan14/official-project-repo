	.text
	.file	"isalpha_l.c"
	.globl	isalpha_l               # -- Begin function isalpha_l
	.p2align	4, 0x90
	.type	isalpha_l,@function
isalpha_l:                              # @isalpha_l
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
	andl	$3, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	isalpha_l, .Lfunc_end0-isalpha_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
