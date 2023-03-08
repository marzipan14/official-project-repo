	.text
	.file	"wcscasecmp.c"
	.globl	wcscasecmp              # -- Begin function wcscasecmp
	.p2align	4, 0x90
	.type	wcscasecmp,@function
wcscasecmp:                             # @wcscasecmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%r15,%r12), %edi
	callq	towlower
	movl	%eax, %ebx
	movl	(%r14,%r12), %edi
	callq	towlower
	subl	%eax, %ebx
	testl	%eax, %eax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$4, %r12
	testl	%ebx, %ebx
	je	.LBB0_1
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	wcscasecmp, .Lfunc_end0-wcscasecmp
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
