	.text
	.file	"pthread_init.c"
	.globl	pthread_init            # -- Begin function pthread_init
	.p2align	4, 0x90
	.type	pthread_init,@function
pthread_init:                           # @pthread_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %eax
	cmpl	$0, pte_processInitialized(%rip)
	je	.LBB0_1
# %bb.5:
	popq	%rbp
	retq
.LBB0_1:
	movl	$1, pte_processInitialized(%rip)
	callq	pte_osInit
	movl	$pte_selfThreadKey, %edi
	xorl	%esi, %esi
	callq	pthread_key_create
	testl	%eax, %eax
	jne	.LBB0_3
# %bb.2:
	movl	$pte_cleanupKey, %edi
	xorl	%esi, %esi
	callq	pthread_key_create
	testl	%eax, %eax
	je	.LBB0_4
.LBB0_3:
	callq	pthread_terminate
.LBB0_4:
	movl	$pte_thread_reuse_lock, %edi
	callq	pte_osMutexCreate
	movl	$pte_mutex_test_init_lock, %edi
	callq	pte_osMutexCreate
	movl	$pte_cond_list_lock, %edi
	callq	pte_osMutexCreate
	movl	$pte_cond_test_init_lock, %edi
	callq	pte_osMutexCreate
	movl	$pte_rwlock_test_init_lock, %edi
	callq	pte_osMutexCreate
	movl	$pte_spinlock_test_init_lock, %edi
	callq	pte_osMutexCreate
	movl	pte_processInitialized(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_init, .Lfunc_end0-pthread_init
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
