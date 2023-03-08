	.text
	.file	"bio.c"
	.globl	bioInit                 # -- Begin function bioInit
	.p2align	4, 0x90
	.type	bioInit,@function
bioInit:                                # @bioInit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movl	$bio_mutex, %edi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	movl	$bio_newjob_cond, %edi
	xorl	%esi, %esi
	callq	pthread_cond_init
	movl	$bio_step_cond, %edi
	xorl	%esi, %esi
	callq	pthread_cond_init
	callq	listCreate
	movq	%rax, bio_jobs(%rip)
	movq	$0, bio_pending(%rip)
	movl	$bio_mutex+8, %edi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	movl	$bio_newjob_cond+8, %edi
	xorl	%esi, %esi
	callq	pthread_cond_init
	movl	$bio_step_cond+8, %edi
	xorl	%esi, %esi
	callq	pthread_cond_init
	callq	listCreate
	movq	%rax, bio_jobs+8(%rip)
	movq	$0, bio_pending+8(%rip)
	movl	$bio_mutex+16, %edi
	xorl	%esi, %esi
	callq	pthread_mutex_init
	movl	$bio_newjob_cond+16, %edi
	xorl	%esi, %esi
	callq	pthread_cond_init
	movl	$bio_step_cond+16, %edi
	xorl	%esi, %esi
	callq	pthread_cond_init
	callq	listCreate
	movq	%rax, bio_jobs+16(%rip)
	movq	$0, bio_pending+16(%rip)
	leaq	-24(%rbp), %rbx
	movq	%rbx, %rdi
	callq	pthread_attr_init
	leaq	-16(%rbp), %rsi
	movq	%rbx, %rdi
	callq	pthread_attr_getstacksize
	movq	-16(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.2:
	cmpq	$4194303, %rsi          # imm = 0x3FFFFF
	jbe	.LBB0_3
	jmp	.LBB0_5
.LBB0_1:
	movq	$1, -16(%rbp)
	movl	$1, %esi
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	addq	%rsi, %rsi
	cmpq	$4194304, %rsi          # imm = 0x400000
	jb	.LBB0_3
# %bb.4:
	movq	%rsi, -16(%rbp)
.LBB0_5:
	leaq	-24(%rbp), %rbx
	movq	%rbx, %rdi
	callq	pthread_attr_setstacksize
	leaq	-40(%rbp), %rdi
	movl	$bioProcessBackgroundJobs, %edx
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	callq	pthread_create
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.6:
	movups	-40(%rbp), %xmm0
	movaps	%xmm0, bio_threads(%rip)
	leaq	-40(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movl	$bioProcessBackgroundJobs, %edx
	movl	$1, %ecx
	callq	pthread_create
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.7:
	movups	-40(%rbp), %xmm0
	movaps	%xmm0, bio_threads+16(%rip)
	leaq	-40(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movl	$bioProcessBackgroundJobs, %edx
	movl	$2, %ecx
	callq	pthread_create
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.8:
	movups	-40(%rbp), %xmm0
	movaps	%xmm0, bio_threads+32(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_9:
	movl	$.L.str, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end0:
	.size	bioInit, .Lfunc_end0-bioInit
                                        # -- End function
	.globl	bioProcessBackgroundJobs # -- Begin function bioProcessBackgroundJobs
	.p2align	4, 0x90
	.type	bioProcessBackgroundJobs,@function
bioProcessBackgroundJobs:               # @bioProcessBackgroundJobs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	cmpq	$3, %rdi
	jb	.LBB1_1
# %bb.20:
	movl	$.L.str.1, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_1:
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	pthread_setcancelstate
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	pthread_setcanceltype
	leaq	bio_mutex(,%rbx,8), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	leaq	-56(%rbp), %r15
	movq	%r15, %rdi
	callq	sigemptyset
	movq	%r15, %rdi
	movl	$14, %esi
	callq	sigaddset
	xorl	%edi, %edi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	pthread_sigmask
	testl	%eax, %eax
	je	.LBB1_3
# %bb.2:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.2, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB1_3:
	leaq	bio_newjob_cond(,%rbx,8), %r15
	leaq	bio_step_cond(,%rbx,8), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_4
.LBB1_18:                               #   in Loop: Header=BB1_4 Depth=1
	movl	8(%r12), %edi
	callq	fsync
.LBB1_19:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r12, %rdi
	callq	zfree
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movq	bio_jobs(,%rbx,8), %rdi
	movq	%r13, %rsi
	callq	listDelNode
	addq	$-1, bio_pending(,%rbx,8)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	pthread_cond_broadcast
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movq	bio_jobs(,%rbx,8), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	pthread_cond_wait
	jmp	.LBB1_4
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=1
	movq	(%rax), %r13
	movq	16(%r13), %r12
	movq	%r14, %rdi
	callq	pthread_mutex_unlock
	cmpq	$2, %rbx
	je	.LBB1_10
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	cmpq	$1, %rbx
	je	.LBB1_18
# %bb.8:                                #   in Loop: Header=BB1_4 Depth=1
	testq	%rbx, %rbx
	jne	.LBB1_17
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	movl	8(%r12), %edi
	callq	close
	jmp	.LBB1_19
.LBB1_10:                               #   in Loop: Header=BB1_4 Depth=1
	movq	8(%r12), %rdi
	testq	%rdi, %rdi
	jne	.LBB1_11
# %bb.12:                               #   in Loop: Header=BB1_4 Depth=1
	movq	16(%r12), %rdi
	movq	24(%r12), %rsi
	testq	%rdi, %rdi
	jne	.LBB1_13
# %bb.15:                               #   in Loop: Header=BB1_4 Depth=1
	testq	%rsi, %rsi
	je	.LBB1_19
# %bb.16:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rsi, %rdi
	callq	lazyfreeFreeSlotsMapFromBioThread
	jmp	.LBB1_19
.LBB1_11:                               #   in Loop: Header=BB1_4 Depth=1
	callq	lazyfreeFreeObjectFromBioThread
	jmp	.LBB1_19
.LBB1_13:                               #   in Loop: Header=BB1_4 Depth=1
	testq	%rsi, %rsi
	je	.LBB1_19
# %bb.14:                               #   in Loop: Header=BB1_4 Depth=1
	callq	lazyfreeFreeDatabaseFromBioThread
	jmp	.LBB1_19
.LBB1_17:
	movl	$.L.str.3, %edi
	movl	$.L.str.4, %edx
	movl	$203, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end1:
	.size	bioProcessBackgroundJobs, .Lfunc_end1-bioProcessBackgroundJobs
                                        # -- End function
	.globl	bioCreateBackgroundJob  # -- Begin function bioCreateBackgroundJob
	.p2align	4, 0x90
	.type	bioCreateBackgroundJob,@function
bioCreateBackgroundJob:                 # @bioCreateBackgroundJob
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r13
	movl	%edi, %r12d
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %rbx
	xorl	%edi, %edi
	callq	time
	movq	%rax, (%rbx)
	movq	%r13, 8(%rbx)
	movq	%r15, 16(%rbx)
	movq	%r14, 24(%rbx)
	movslq	%r12d, %r15
	leaq	bio_mutex(,%r15,8), %r14
	movq	%r14, %rdi
	callq	pthread_mutex_lock
	movq	bio_jobs(,%r15,8), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
	addq	$1, bio_pending(,%r15,8)
	leaq	bio_newjob_cond(,%r15,8), %rdi
	callq	pthread_cond_signal
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pthread_mutex_unlock    # TAILCALL
.Lfunc_end2:
	.size	bioCreateBackgroundJob, .Lfunc_end2-bioCreateBackgroundJob
                                        # -- End function
	.globl	bioPendingJobsOfType    # -- Begin function bioPendingJobsOfType
	.p2align	4, 0x90
	.type	bioPendingJobsOfType,@function
bioPendingJobsOfType:                   # @bioPendingJobsOfType
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movslq	%edi, %rbx
	leaq	bio_mutex(,%rbx,8), %r15
	movq	%r15, %rdi
	callq	pthread_mutex_lock
	movq	bio_pending(,%rbx,8), %r14
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	bioPendingJobsOfType, .Lfunc_end3-bioPendingJobsOfType
                                        # -- End function
	.globl	bioWaitStepOfType       # -- Begin function bioWaitStepOfType
	.p2align	4, 0x90
	.type	bioWaitStepOfType,@function
bioWaitStepOfType:                      # @bioWaitStepOfType
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movslq	%edi, %rbx
	leaq	bio_mutex(,%rbx,8), %r15
	movq	%r15, %rdi
	callq	pthread_mutex_lock
	cmpq	$0, bio_pending(,%rbx,8)
	je	.LBB4_1
# %bb.2:
	leaq	bio_step_cond(,%rbx,8), %rdi
	movq	%r15, %rsi
	callq	pthread_cond_wait
	movq	bio_pending(,%rbx,8), %r14
	jmp	.LBB4_3
.LBB4_1:
	xorl	%r14d, %r14d
.LBB4_3:
	movq	%r15, %rdi
	callq	pthread_mutex_unlock
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	bioWaitStepOfType, .Lfunc_end4-bioWaitStepOfType
                                        # -- End function
	.globl	bioKillThreads          # -- Begin function bioKillThreads
	.p2align	4, 0x90
	.type	bioKillThreads,@function
bioKillThreads:                         # @bioKillThreads
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	bio_threads(%rip), %rdi
	movl	bio_threads+8(%rip), %esi
	callq	pthread_cancel
	testl	%eax, %eax
	jne	.LBB5_4
# %bb.1:
	movq	bio_threads(%rip), %rdi
	movl	bio_threads+8(%rip), %esi
	xorl	%edx, %edx
	callq	pthread_join
	testl	%eax, %eax
	je	.LBB5_3
# %bb.2:
	movl	%eax, %edi
	callq	strerror
	movl	$.L.str.5, %esi
	movl	$3, %edi
	xorl	%edx, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB5_4
.LBB5_3:
	movl	$.L.str.6, %esi
	movl	$3, %edi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	serverLog
.LBB5_4:
	movq	bio_threads+16(%rip), %rdi
	movl	bio_threads+24(%rip), %esi
	callq	pthread_cancel
	testl	%eax, %eax
	jne	.LBB5_8
# %bb.5:
	movq	bio_threads+16(%rip), %rdi
	movl	bio_threads+24(%rip), %esi
	xorl	%edx, %edx
	callq	pthread_join
	testl	%eax, %eax
	je	.LBB5_7
# %bb.6:
	movl	%eax, %edi
	callq	strerror
	movl	$.L.str.5, %esi
	movl	$3, %edi
	movl	$1, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB5_8
.LBB5_7:
	movl	$.L.str.6, %esi
	movl	$3, %edi
	movl	$1, %edx
	xorl	%eax, %eax
	callq	serverLog
.LBB5_8:
	movq	bio_threads+32(%rip), %rdi
	movl	bio_threads+40(%rip), %esi
	callq	pthread_cancel
	testl	%eax, %eax
	je	.LBB5_9
# %bb.11:
	popq	%rbp
	retq
.LBB5_9:
	movq	bio_threads+32(%rip), %rdi
	movl	bio_threads+40(%rip), %esi
	xorl	%edx, %edx
	callq	pthread_join
	testl	%eax, %eax
	je	.LBB5_10
# %bb.12:
	movl	%eax, %edi
	callq	strerror
	movl	$.L.str.5, %esi
	movl	$3, %edi
	movl	$2, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	popq	%rbp
	jmp	serverLog               # TAILCALL
.LBB5_10:
	movl	$.L.str.6, %esi
	movl	$3, %edi
	movl	$2, %edx
	xorl	%eax, %eax
	popq	%rbp
	jmp	serverLog               # TAILCALL
.Lfunc_end5:
	.size	bioKillThreads, .Lfunc_end5-bioKillThreads
                                        # -- End function
	.type	bio_mutex,@object       # @bio_mutex
	.local	bio_mutex
	.comm	bio_mutex,24,16
	.type	bio_newjob_cond,@object # @bio_newjob_cond
	.local	bio_newjob_cond
	.comm	bio_newjob_cond,24,16
	.type	bio_step_cond,@object   # @bio_step_cond
	.local	bio_step_cond
	.comm	bio_step_cond,24,16
	.type	bio_jobs,@object        # @bio_jobs
	.local	bio_jobs
	.comm	bio_jobs,24,16
	.type	bio_pending,@object     # @bio_pending
	.local	bio_pending
	.comm	bio_pending,24,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Fatal: Can't initialize Background Jobs."
	.size	.L.str, 41

	.type	bio_threads,@object     # @bio_threads
	.local	bio_threads
	.comm	bio_threads,48,16
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Warning: bio thread started with wrong type %lu"
	.size	.L.str.1, 48

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Warning: can't mask SIGALRM in bio.c thread: %s"
	.size	.L.str.2, 48

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/bio.c"
	.size	.L.str.3, 71

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Wrong job type in bioProcessBackgroundJobs()."
	.size	.L.str.4, 46

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Bio thread for job type #%d can be joined: %s"
	.size	.L.str.5, 46

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Bio thread for job type #%d terminated"
	.size	.L.str.6, 39

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
