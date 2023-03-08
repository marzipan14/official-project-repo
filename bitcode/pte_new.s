	.text
	.file	"pte_new.c"
	.globl	pte_new                 # -- Begin function pte_new
	.p2align	4, 0x90
	.type	pte_new,@function
pte_new:                                # @pte_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	pte_threadReusePop
	testq	%rax, %rax
	je	.LBB0_2
# %bb.1:
	movq	%rax, %rbx
	movl	%edx, %r14d
	jmp	.LBB0_5
.LBB0_2:
	movl	$1, %edi
	movl	$192, %esi
	callq	calloc
	testq	%rax, %rax
	je	.LBB0_3
# %bb.4:
	movq	%rax, %rbx
	movq	%rax, 8(%rax)
	movl	$0, 16(%rax)
	xorl	%r14d, %r14d
.LBB0_5:
	xorl	%eax, %eax
	callq	pte_osThreadGetMinPriority
	movl	%eax, 72(%rbx)
	movl	$0, 60(%rbx)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 88(%rbx)
	movq	$-1, 80(%rbx)
	movq	$-1, 64(%rbx)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB0_3:
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB0_6
.Lfunc_end0:
	.size	pte_new, .Lfunc_end0-pte_new
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
