	.text
	.file	"ispunct_l.c"
	.globl	ispunct_l               # -- Begin function ispunct_l
	.p2align	4, 0x90
	.type	ispunct_l,@function
ispunct_l:                              # @ispunct_l
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
	andl	$16, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ispunct_l, .Lfunc_end0-ispunct_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
