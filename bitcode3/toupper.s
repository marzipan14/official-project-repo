	.text
	.file	"toupper.c"
	.globl	toupper                 # -- Begin function toupper
	.p2align	4, 0x90
	.type	toupper,@function
toupper:                                # @toupper
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__locale_ctype_ptr
	movslq	%ebx, %rcx
	movb	1(%rax,%rcx), %dl
	andb	$3, %dl
	leal	-32(%rcx), %eax
	cmpb	$2, %dl
	cmovnel	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	toupper, .Lfunc_end0-toupper
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits