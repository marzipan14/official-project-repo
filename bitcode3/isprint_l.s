	.text
	.file	"isprint_l.c"
	.globl	isgraph_l               # -- Begin function isgraph_l
	.p2align	4, 0x90
	.type	isgraph_l,@function
isgraph_l:                              # @isgraph_l
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
	andl	$23, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	isgraph_l, .Lfunc_end0-isgraph_l
                                        # -- End function
	.globl	isprint_l               # -- Begin function isprint_l
	.p2align	4, 0x90
	.type	isprint_l,@function
isprint_l:                              # @isprint_l
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
	andl	$-105, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	isprint_l, .Lfunc_end1-isprint_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
