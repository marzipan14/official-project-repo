	.text
	.file	"iswupper_l.c"
	.globl	iswupper_l              # -- Begin function iswupper_l
	.p2align	4, 0x90
	.type	iswupper_l,@function
iswupper_l:                             # @iswupper_l
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
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	iswupper_l, .Lfunc_end0-iswupper_l
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
