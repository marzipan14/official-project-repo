	.text
	.file	"sys.c"
	.globl	sys_msleep              # -- Begin function sys_msleep
	.p2align	4, 0x90
	.type	sys_msleep,@function
sys_msleep:                             # @sys_msleep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	testl	%edi, %edi
	je	.LBB0_3
# %bb.1:
	movl	%edi, %ebx
	leaq	-48(%rbp), %rdi
	xorl	%esi, %esi
	callq	sys_sem_new
	testb	%al, %al
	jne	.LBB0_3
# %bb.2:
	leaq	-48(%rbp), %r14
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	sys_arch_sem_wait
	movq	%r14, %rdi
	callq	sys_sem_free
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sys_msleep, .Lfunc_end0-sys_msleep
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
