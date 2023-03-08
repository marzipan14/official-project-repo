	.text
	.file	"isxdigit_l.c"
	.globl	isxdigit_l              # -- Begin function isxdigit_l
	.p2align	4, 0x90
	.type	isxdigit_l,@function
isxdigit_l:                             # @isxdigit_l
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
	andl	$68, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	isxdigit_l, .Lfunc_end0-isxdigit_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
