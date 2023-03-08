	.text
	.file	"pthread_self.c"
	.globl	pthread_self            # -- Begin function pthread_self
	.p2align	4, 0x90
	.type	pthread_self,@function
pthread_self:                           # @pthread_self
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	pte_selfThreadKey(%rip), %rdi
	callq	pthread_getspecific
	testq	%rax, %rax
	je	.LBB0_2
# %bb.1:
	movq	8(%rax), %rbx
	movl	16(%rax), %r14d
	jmp	.LBB0_5
.LBB0_2:
	callq	pte_new
	movl	%edx, %r14d
	testq	%rax, %rax
	je	.LBB0_3
# %bb.4:
	movq	%rax, %rbx
	orb	$1, 168(%rax)
	movl	$1, 60(%rax)
	callq	pte_osThreadGetHandle
	movq	%rax, (%rbx)
	movl	$0, 72(%rbx)
	movq	pte_selfThreadKey(%rip), %rdi
	movq	%rbx, %rsi
	callq	pthread_setspecific
	jmp	.LBB0_5
.LBB0_3:
	xorl	%ebx, %ebx
.LBB0_5:
	movq	%rbx, %rax
	movl	%r14d, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_self, .Lfunc_end0-pthread_self
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
