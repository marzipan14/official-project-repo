	.text
	.file	"towupper.c"
	.globl	towupper                # -- Begin function towupper
	.p2align	4, 0x90
	.type	towupper,@function
towupper:                               # @towupper
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	cmpl	$254, %edi
	ja	.LBB0_2
# %bb.1:
	callq	__locale_ctype_ptr
	movslq	%ebx, %rcx
	movb	1(%rax,%rcx), %al
	andb	$3, %al
	leal	-32(%rbx), %ecx
	cmpb	$2, %al
	cmovnel	%ebx, %ecx
	movl	%ecx, %ebx
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	towupper, .Lfunc_end0-towupper
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
