	.text
	.file	"pte_relmillisecs.c"
	.globl	pte_relmillisecs        # -- Begin function pte_relmillisecs
	.p2align	4, 0x90
	.type	pte_relmillisecs,@function
pte_relmillisecs:                       # @pte_relmillisecs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	imulq	$1000, (%rdi), %rcx     # imm = 0x3E8
	movl	$500000, %eax           # imm = 0x7A120
	addq	8(%rdi), %rax
	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
	imulq	%rdx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rbx
	addq	%rax, %rbx
	addq	%rcx, %rbx
	leaq	-24(%rbp), %rdi
	callq	ftime
	imulq	$1000, -24(%rbp), %rax  # imm = 0x3E8
	movzwl	-16(%rbp), %ecx
	addq	%rax, %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rbx
	jle	.LBB0_2
# %bb.1:
	subl	%ecx, %ebx
	xorl	%eax, %eax
	cmpl	$-1, %ebx
	sete	%al
	subl	%eax, %ebx
	movl	%ebx, %eax
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pte_relmillisecs, .Lfunc_end0-pte_relmillisecs
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
