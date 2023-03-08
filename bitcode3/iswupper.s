	.text
	.file	"iswupper.c"
	.globl	iswupper                # -- Begin function iswupper
	.p2align	4, 0x90
	.type	iswupper,@function
iswupper:                               # @iswupper
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	towlower
	xorl	%ecx, %ecx
	cmpl	%ebx, %eax
	setne	%cl
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	iswupper, .Lfunc_end0-iswupper
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
