	.text
	.file	"isprint.c"
	.globl	isgraph                 # -- Begin function isgraph
	.p2align	4, 0x90
	.type	isgraph,@function
isgraph:                                # @isgraph
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__locale_ctype_ptr
	movslq	%ebx, %rcx
	movzbl	1(%rcx,%rax), %eax
	andl	$23, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	isgraph, .Lfunc_end0-isgraph
                                        # -- End function
	.globl	isprint                 # -- Begin function isprint
	.p2align	4, 0x90
	.type	isprint,@function
isprint:                                # @isprint
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__locale_ctype_ptr
	movslq	%ebx, %rcx
	movzbl	1(%rcx,%rax), %eax
	andl	$-105, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	isprint, .Lfunc_end1-isprint
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
