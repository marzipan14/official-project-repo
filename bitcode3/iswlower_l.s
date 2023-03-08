	.text
	.file	"iswlower_l.c"
	.globl	iswlower_l              # -- Begin function iswlower_l
	.p2align	4, 0x90
	.type	iswlower_l,@function
iswlower_l:                             # @iswlower_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	towupper
	xorl	%ecx, %ecx
	cmpl	%ebx, %eax
	setne	%cl
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	iswlower_l, .Lfunc_end0-iswlower_l
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
