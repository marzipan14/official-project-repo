	.text
	.file	"iswblank.c"
	.globl	iswblank                # -- Begin function iswblank
	.p2align	4, 0x90
	.type	iswblank,@function
iswblank:                               # @iswblank
# %bb.0:
	xorl	%eax, %eax
	cmpl	$255, %edi
	ja	.LBB0_2
# %bb.1:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__locale_ctype_ptr
	movslq	%ebx, %rcx
	movzbl	1(%rax,%rcx), %eax
	xorl	%ecx, %ecx
	cmpl	$9, %ebx
	sete	%cl
	shrl	$7, %eax
	orl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
.LBB0_2:
	retq
.Lfunc_end0:
	.size	iswblank, .Lfunc_end0-iswblank
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
