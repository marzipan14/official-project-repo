	.text
	.file	"iswcntrl.c"
	.globl	iswcntrl                # -- Begin function iswcntrl
	.p2align	4, 0x90
	.type	iswcntrl,@function
iswcntrl:                               # @iswcntrl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	xorl	%eax, %eax
	cmpl	$255, %edi
	ja	.LBB0_2
# %bb.1:
	movl	%edi, %ebx
	callq	__locale_ctype_ptr
	movslq	%ebx, %rcx
	movzbl	1(%rax,%rcx), %eax
	andl	$32, %eax
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	iswcntrl, .Lfunc_end0-iswcntrl
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
