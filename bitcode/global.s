	.text
	.file	"global.c"
	.type	pte_processInitialized,@object # @pte_processInitialized
	.bss
	.globl	pte_processInitialized
	.p2align	2
pte_processInitialized:
	.long	0                       # 0x0
	.size	pte_processInitialized, 4

	.type	pte_threadReuseTop,@object # @pte_threadReuseTop
	.data
	.globl	pte_threadReuseTop
	.p2align	3
pte_threadReuseTop:
	.quad	1
	.size	pte_threadReuseTop, 8

	.type	pte_threadReuseBottom,@object # @pte_threadReuseBottom
	.globl	pte_threadReuseBottom
	.p2align	3
pte_threadReuseBottom:
	.quad	1
	.size	pte_threadReuseBottom, 8

	.type	pte_selfThreadKey,@object # @pte_selfThreadKey
	.bss
	.globl	pte_selfThreadKey
	.p2align	3
pte_selfThreadKey:
	.quad	0
	.size	pte_selfThreadKey, 8

	.type	pte_cleanupKey,@object  # @pte_cleanupKey
	.globl	pte_cleanupKey
	.p2align	3
pte_cleanupKey:
	.quad	0
	.size	pte_cleanupKey, 8

	.type	pte_cond_list_head,@object # @pte_cond_list_head
	.globl	pte_cond_list_head
	.p2align	3
pte_cond_list_head:
	.quad	0
	.size	pte_cond_list_head, 8

	.type	pte_cond_list_tail,@object # @pte_cond_list_tail
	.globl	pte_cond_list_tail
	.p2align	3
pte_cond_list_tail:
	.quad	0
	.size	pte_cond_list_tail, 8

	.type	pte_concurrency,@object # @pte_concurrency
	.globl	pte_concurrency
	.p2align	2
pte_concurrency:
	.long	0                       # 0x0
	.size	pte_concurrency, 4

	.type	pte_features,@object    # @pte_features
	.globl	pte_features
	.p2align	2
pte_features:
	.long	0                       # 0x0
	.size	pte_features, 4

	.type	pte_smp_system,@object  # @pte_smp_system
	.data
	.globl	pte_smp_system
pte_smp_system:
	.byte	1                       # 0x1
	.size	pte_smp_system, 1

	.type	pte_thread_reuse_lock,@object # @pte_thread_reuse_lock
	.comm	pte_thread_reuse_lock,8,8
	.type	pte_mutex_test_init_lock,@object # @pte_mutex_test_init_lock
	.comm	pte_mutex_test_init_lock,8,8
	.type	pte_cond_test_init_lock,@object # @pte_cond_test_init_lock
	.comm	pte_cond_test_init_lock,8,8
	.type	pte_rwlock_test_init_lock,@object # @pte_rwlock_test_init_lock
	.comm	pte_rwlock_test_init_lock,8,8
	.type	pte_spinlock_test_init_lock,@object # @pte_spinlock_test_init_lock
	.comm	pte_spinlock_test_init_lock,8,8
	.type	pte_cond_list_lock,@object # @pte_cond_list_lock
	.comm	pte_cond_list_lock,8,8
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
