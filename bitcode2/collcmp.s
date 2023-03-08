	.text
	.file	"collcmp.c"
	.globl	__collate_range_cmp     # -- Begin function __collate_range_cmp
	.p2align	4, 0x90
	.type	__collate_range_cmp,@function
__collate_range_cmp:                    # @__collate_range_cmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movzbl	%dil, %ebx
	movzbl	%sil, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %ebx
	je	.LBB0_2
# %bb.1:
	movb	%dil, __collate_range_cmp.s1(%rip)
	movb	%sil, __collate_range_cmp.s2(%rip)
	movl	$__collate_range_cmp.s1, %edi
	movl	$__collate_range_cmp.s2, %esi
	callq	strcoll
	testl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%eax, %ebx
	movl	%ebx, %eax
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__collate_range_cmp, .Lfunc_end0-__collate_range_cmp
                                        # -- End function
	.type	__collate_range_cmp.s1,@object # @__collate_range_cmp.s1
	.local	__collate_range_cmp.s1
	.comm	__collate_range_cmp.s1,2,1
	.type	__collate_range_cmp.s2,@object # @__collate_range_cmp.s2
	.local	__collate_range_cmp.s2
	.comm	__collate_range_cmp.s2,2,1
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
