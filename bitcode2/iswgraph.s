	.text
	.file	"iswgraph.c"
	.globl	iswgraph                # -- Begin function iswgraph
	.p2align	4, 0x90
	.type	iswgraph,@function
iswgraph:                               # @iswgraph
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	iswprint
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	movl	%ebx, %edi
	callq	iswspace
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_3
.LBB0_1:
	xorl	%eax, %eax
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	iswgraph, .Lfunc_end0-iswgraph
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
