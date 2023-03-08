	.text
	.file	"pte_throw.c"
	.globl	pte_throw               # -- Begin function pte_throw
	.p2align	4, 0x90
	.type	pte_throw,@function
pte_throw:                              # @pte_throw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %r14d
	movq	pte_selfThreadKey(%rip), %rdi
	callq	pthread_getspecific
	movq	%rax, %rbx
	leal	-1(%r14), %eax
	cmpl	$2, %eax
	jb	.LBB0_1
# %bb.5:
	movl	$1, %edi
	callq	exit
.LBB0_1:
	testq	%rbx, %rbx
	je	.LBB0_3
# %bb.2:
	testb	$1, 168(%rbx)
	je	.LBB0_4
.LBB0_3:
	xorl	%eax, %eax
	callq	pte_thread_detach_and_exit_np
.LBB0_4:
	movl	$1, %edi
	callq	pte_pop_cleanup_all
	addq	$104, %rbx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	longjmp
.Lfunc_end0:
	.size	pte_throw, .Lfunc_end0-pte_throw
                                        # -- End function
	.globl	pte_pop_cleanup_all     # -- Begin function pte_pop_cleanup_all
	.p2align	4, 0x90
	.type	pte_pop_cleanup_all,@function
pte_pop_cleanup_all:                    # @pte_pop_cleanup_all
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edi
	callq	pte_pop_cleanup
	testq	%rax, %rax
	jne	.LBB1_1
# %bb.2:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pte_pop_cleanup_all, .Lfunc_end1-pte_pop_cleanup_all
                                        # -- End function
	.globl	pte_get_exception_services_code # -- Begin function pte_get_exception_services_code
	.p2align	4, 0x90
	.type	pte_get_exception_services_code,@function
pte_get_exception_services_code:        # @pte_get_exception_services_code
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	pte_get_exception_services_code, .Lfunc_end2-pte_get_exception_services_code
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
