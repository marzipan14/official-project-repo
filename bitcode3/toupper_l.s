	.text
	.file	"toupper_l.c"
	.globl	toupper_l               # -- Begin function toupper_l
	.p2align	4, 0x90
	.type	toupper_l,@function
toupper_l:                              # @toupper_l
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
	leal	-32(%rcx), %eax
	cmpb	$2, %dl
	cmovnel	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	toupper_l, .Lfunc_end0-toupper_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
