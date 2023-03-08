	.text
	.file	"isblank.c"
	.globl	isblank                 # -- Begin function isblank
	.p2align	4, 0x90
	.type	isblank,@function
isblank:                                # @isblank
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__locale_ctype_ptr
	movslq	%ebx, %rcx
	movzbl	1(%rcx,%rax), %eax
	xorl	%edx, %edx
	cmpl	$9, %ecx
	sete	%dl
	shrl	$7, %eax
	orl	%edx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	isblank, .Lfunc_end0-isblank
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
