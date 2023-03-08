	.text
	.file	"isxdigit.c"
	.globl	isxdigit                # -- Begin function isxdigit
	.p2align	4, 0x90
	.type	isxdigit,@function
isxdigit:                               # @isxdigit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__locale_ctype_ptr
	movslq	%ebx, %rcx
	movzbl	1(%rcx,%rax), %eax
	andl	$68, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	isxdigit, .Lfunc_end0-isxdigit
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
