	.text
	.file	"towlower.c"
	.globl	towlower                # -- Begin function towlower
	.p2align	4, 0x90
	.type	towlower,@function
towlower:                               # @towlower
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
	leal	32(%rbx), %ecx
	cmpb	$1, %al
	cmovnel	%ebx, %ecx
	movl	%ecx, %ebx
.LBB0_2:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	towlower, .Lfunc_end0-towlower
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
