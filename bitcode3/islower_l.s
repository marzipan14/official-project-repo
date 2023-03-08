	.text
	.file	"islower_l.c"
	.globl	islower_l               # -- Begin function islower_l
	.p2align	4, 0x90
	.type	islower_l,@function
islower_l:                              # @islower_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	movq	%rsi, %rdi
	callq	__locale_ctype_ptr_l
	movslq	%ebx, %rcx
	movb	1(%rcx,%rax), %cl
	andb	$3, %cl
	xorl	%eax, %eax
	cmpb	$2, %cl
	sete	%al
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	islower_l, .Lfunc_end0-islower_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
