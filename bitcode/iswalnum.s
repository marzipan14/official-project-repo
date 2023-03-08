	.text
	.file	"iswalnum.c"
	.globl	iswalnum                # -- Begin function iswalnum
	.p2align	4, 0x90
	.type	iswalnum,@function
iswalnum:                               # @iswalnum
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	iswalpha
	movl	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_2
# %bb.1:
	movl	%ebx, %edi
	callq	iswdigit
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	iswalnum, .Lfunc_end0-iswalnum
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
