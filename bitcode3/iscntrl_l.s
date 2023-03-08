	.text
	.file	"iscntrl_l.c"
	.globl	iscntrl_l               # -- Begin function iscntrl_l
	.p2align	4, 0x90
	.type	iscntrl_l,@function
iscntrl_l:                              # @iscntrl_l
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
	andl	$32, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	iscntrl_l, .Lfunc_end0-iscntrl_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
