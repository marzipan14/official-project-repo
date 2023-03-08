	.text
	.file	"wcswidth.c"
	.globl	wcswidth                # -- Begin function wcswidth
	.p2align	4, 0x90
	.type	wcswidth,@function
wcswidth:                               # @wcswidth
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_7
# %bb.1:
	movq	%rsi, %r14
	testq	%rsi, %rsi
	je	.LBB0_7
# %bb.2:                                # %.preheader
	movq	%rdi, %r15
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rbx,4), %edi
	callq	__wcwidth
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	addl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, (%r15,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	cmpq	%rbx, %r14
	jne	.LBB0_3
	jmp	.LBB0_7
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r12d
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	wcswidth, .Lfunc_end0-wcswidth
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
