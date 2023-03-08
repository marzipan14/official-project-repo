	.text
	.file	"isupper.c"
	.globl	isupper                 # -- Begin function isupper
	.p2align	4, 0x90
	.type	isupper,@function
isupper:                                # @isupper
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__locale_ctype_ptr
	movslq	%ebx, %rcx
	movb	1(%rcx,%rax), %cl
	andb	$3, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sete	%al
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	isupper, .Lfunc_end0-isupper
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
