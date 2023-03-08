	.text
	.file	"pte_osal.c"
	.p2align	4, 0x90         # -- Begin function pthread_initcall
	.type	pthread_initcall,@function
pthread_initcall:                       # @pthread_initcall
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	callq	uk_pr_debug
	callq	pthread_init
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pthread_initcall, .Lfunc_end0-pthread_initcall
                                        # -- End function
	.globl	pte_osInit              # -- Begin function pte_osInit
	.p2align	4, 0x90
	.type	pte_osInit,@function
pte_osInit:                             # @pte_osInit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$32, %edi
	callq	pteTlsGlobalInit
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_2
# %bb.1:
	movl	%eax, %ebx
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	uk_pr_err
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB1_2:
	movl	$1, %edi
	movl	$88, %esi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	testq	%rax, %rax
	je	.LBB1_6
# %bb.3:
	movq	%rax, %r14
	callq	pteTlsThreadInit
	movq	%rax, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_4
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, 96(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 16(%r14)
	xorl	%ebx, %ebx
	jmp	.LBB1_6
.LBB1_4:
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	uk_pr_err
	movq	%r14, %rdi
	callq	free
	jmp	.LBB1_6
.Lfunc_end1:
	.size	pte_osInit, .Lfunc_end1-pte_osInit
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_err
	.type	uk_pr_err,@function
uk_pr_err:                              # @uk_pr_err
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdi, %r10
	testb	%al, %al
	je	.LBB2_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB2_2:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %r9
	movl	$uk_pr_err.__str, %esi
	movl	$uk_pr_err.__str.4, %edx
	movl	$1, %edi
	movl	$190, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	uk_pr_err, .Lfunc_end2-uk_pr_err
                                        # -- End function
	.globl	pte_kill                # -- Begin function pte_kill
	.p2align	4, 0x90
	.type	pte_kill,@function
pte_kill:                               # @pte_kill
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	uk_sig_thread_kill
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pte_kill, .Lfunc_end3-pte_kill
                                        # -- End function
	.globl	pte_osThreadCreate      # -- Begin function pte_osThreadCreate
	.p2align	4, 0x90
	.type	pte_osThreadCreate,@function
pte_osThreadCreate:                     # @pte_osThreadCreate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r13
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_1
# %bb.2:
	movq	%r8, %r14
	movq	%rcx, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$88, %esi
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	testq	%rax, %rax
	je	.LBB4_9
# %bb.3:
	movq	%rax, %rbx
	movq	%r13, (%rax)
	movq	%r12, 8(%rax)
	callq	pteTlsThreadInit
	movq	%rax, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_4
# %bb.6:
	leaq	32(%rbx), %rdi
	xorl	%esi, %esi
	callq	uk_semaphore_init
	movq	%rbx, %rdi
	addq	$56, %rdi
	xorl	%esi, %esi
	callq	uk_semaphore_init
	movl	$0, 80(%rbx)
	callq	uk_sched_get_default
	movl	$uk_stub_thread_entry, %ecx
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %r8
	callq	uk_sched_thread_create
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_7
# %bb.8:
	movq	%rax, %rdi
	callq	uk_thread_inherit_signal_mask
	movq	16(%rbx), %rax
	movq	%rbx, 96(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r14)
	xorl	%r15d, %r15d
	jmp	.LBB4_9
.LBB4_4:
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	uk_pr_err
	jmp	.LBB4_5
.LBB4_7:
	movq	24(%rbx), %rdi
	callq	pteTlsThreadDestroy
.LBB4_5:
	movq	%rbx, %rdi
	callq	free
.LBB4_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_1:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	jmp	.LBB4_9
.Lfunc_end4:
	.size	pte_osThreadCreate, .Lfunc_end4-pte_osThreadCreate
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_stub_thread_entry
	.type	uk_stub_thread_entry,@function
uk_stub_thread_entry:                   # @uk_stub_thread_entry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$1073741820, %esi       # imm = 0x3FFFFFFC
	#APP
	movl	%esi, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	wrpkru
	lfence
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rdi
	callq	uk_semaphore_down
	movq	8(%rbx), %rdi
	callq	*(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	uk_stub_thread_entry, .Lfunc_end5-uk_stub_thread_entry
                                        # -- End function
	.globl	pte_osThreadStart       # -- Begin function pte_osThreadStart
	.p2align	4, 0x90
	.type	pte_osThreadStart,@function
pte_osThreadStart:                      # @pte_osThreadStart
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	96(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	addq	$1, 32(%rbx)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	40(%rbx), %rbx
	.p2align	4, 0x90
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB6_3
# %bb.1:                                #   in Loop: Header=BB6_2 Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rbx
	callq	uk_thread_wake
	jmp	.LBB6_2
.LBB6_3:
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pte_osThreadStart, .Lfunc_end6-pte_osThreadStart
                                        # -- End function
	.globl	pte_osThreadDelete      # -- Begin function pte_osThreadDelete
	.p2align	4, 0x90
	.type	pte_osThreadDelete,@function
pte_osThreadDelete:                     # @pte_osThreadDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	96(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %rdi
	callq	pteTlsThreadDestroy
	movq	%rbx, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	pte_osThreadDelete, .Lfunc_end7-pte_osThreadDelete
                                        # -- End function
	.globl	pte_osThreadExitAndDelete # -- Begin function pte_osThreadExitAndDelete
	.p2align	4, 0x90
	.type	pte_osThreadExitAndDelete,@function
pte_osThreadExitAndDelete:              # @pte_osThreadExitAndDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	88(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_2
# %bb.1:
	movq	%rbx, %rsi
	callq	uk_sched_thread_kill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_2:
	movq	96(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %rdi
	callq	pteTlsThreadDestroy
	movq	%rbx, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pte_osThreadExitAndDelete, .Lfunc_end8-pte_osThreadExitAndDelete
                                        # -- End function
	.globl	pte_osThreadExit        # -- Begin function pte_osThreadExit
	.p2align	4, 0x90
	.type	pte_osThreadExit,@function
pte_osThreadExit:                       # @pte_osThreadExit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	current_ptd
	movl	$1, 80(%rax)
	callq	uk_sched_thread_exit
.Lfunc_end9:
	.size	pte_osThreadExit, .Lfunc_end9-pte_osThreadExit
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function current_ptd
	.type	current_ptd,@function
current_ptd:                            # @current_ptd
# %bb.0:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	96(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end10:
	.size	current_ptd, .Lfunc_end10-current_ptd
                                        # -- End function
	.globl	pte_osThreadWaitForEnd  # -- Begin function pte_osThreadWaitForEnd
	.p2align	4, 0x90
	.type	pte_osThreadWaitForEnd,@function
pte_osThreadWaitForEnd:                 # @pte_osThreadWaitForEnd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	96(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	96(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 80(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_2
# %bb.5:                                #   in Loop: Header=BB11_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB11_8
# %bb.6:                                #   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, 56(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB11_7
.LBB11_8:                               #   in Loop: Header=BB11_1 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_9
# %bb.11:                               #   in Loop: Header=BB11_1 Depth=1
	movq	88(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_12
# %bb.4:                                #   in Loop: Header=BB11_1 Depth=1
	callq	*(%rdi)
	jmp	.LBB11_1
.LBB11_2:
	movq	16(%r14), %rdi
	callq	uk_thread_wait
	xorl	%eax, %eax
.LBB11_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB11_7:
	movl	$4, %eax
	jmp	.LBB11_3
.LBB11_9:
	movl	$.L.str.9, %esi
	jmp	.LBB11_10
.LBB11_12:
	movl	$.L.str.8, %esi
.LBB11_10:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end11:
	.size	pte_osThreadWaitForEnd, .Lfunc_end11-pte_osThreadWaitForEnd
                                        # -- End function
	.globl	pte_osThreadCancel      # -- Begin function pte_osThreadCancel
	.p2align	4, 0x90
	.type	pte_osThreadCancel,@function
pte_osThreadCancel:                     # @pte_osThreadCancel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	96(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	addq	$1, 56(%rbx)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	64(%rbx), %rbx
	.p2align	4, 0x90
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB12_3
# %bb.1:                                #   in Loop: Header=BB12_2 Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rbx
	callq	uk_thread_wake
	jmp	.LBB12_2
.LBB12_3:
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	pte_osThreadCancel, .Lfunc_end12-pte_osThreadCancel
                                        # -- End function
	.globl	pte_osThreadCheckCancel # -- Begin function pte_osThreadCheckCancel
	.p2align	4, 0x90
	.type	pte_osThreadCheckCancel,@function
pte_osThreadCheckCancel:                # @pte_osThreadCheckCancel
# %bb.0:
	movq	96(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_2
# %bb.1:
	cmpq	$0, 56(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
	jg	.LBB13_3
.LBB13_2:
	xorl	%eax, %eax
.LBB13_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end13:
	.size	pte_osThreadCheckCancel, .Lfunc_end13-pte_osThreadCheckCancel
                                        # -- End function
	.globl	pte_osThreadGetHandle   # -- Begin function pte_osThreadGetHandle
	.p2align	4, 0x90
	.type	pte_osThreadGetHandle,@function
pte_osThreadGetHandle:                  # @pte_osThreadGetHandle
# %bb.0:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end14:
	.size	pte_osThreadGetHandle, .Lfunc_end14-pte_osThreadGetHandle
                                        # -- End function
	.globl	pte_osThreadGetPriority # -- Begin function pte_osThreadGetPriority
	.p2align	4, 0x90
	.type	pte_osThreadGetPriority,@function
pte_osThreadGetPriority:                # @pte_osThreadGetPriority
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	96(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax), %rdi
	leaq	-4(%rbp), %rsi
	callq	uk_thread_get_prio
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	pte_osThreadGetPriority, .Lfunc_end15-pte_osThreadGetPriority
                                        # -- End function
	.globl	pte_osThreadSetPriority # -- Begin function pte_osThreadSetPriority
	.p2align	4, 0x90
	.type	pte_osThreadSetPriority,@function
pte_osThreadSetPriority:                # @pte_osThreadSetPriority
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	96(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax), %rdi
	callq	uk_thread_set_prio
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	pte_osThreadSetPriority, .Lfunc_end16-pte_osThreadSetPriority
                                        # -- End function
	.globl	pte_osThreadSleep       # -- Begin function pte_osThreadSleep
	.p2align	4, 0x90
	.type	pte_osThreadSleep,@function
pte_osThreadSleep:                      # @pte_osThreadSleep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	imulq	$1000000, %rax, %rdi    # imm = 0xF4240
	callq	uk_sched_thread_sleep
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	pte_osThreadSleep, .Lfunc_end17-pte_osThreadSleep
                                        # -- End function
	.globl	pte_osThreadGetMinPriority # -- Begin function pte_osThreadGetMinPriority
	.p2align	4, 0x90
	.type	pte_osThreadGetMinPriority,@function
pte_osThreadGetMinPriority:             # @pte_osThreadGetMinPriority
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end18:
	.size	pte_osThreadGetMinPriority, .Lfunc_end18-pte_osThreadGetMinPriority
                                        # -- End function
	.globl	pte_osThreadGetMaxPriority # -- Begin function pte_osThreadGetMaxPriority
	.p2align	4, 0x90
	.type	pte_osThreadGetMaxPriority,@function
pte_osThreadGetMaxPriority:             # @pte_osThreadGetMaxPriority
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$255, %eax
	retq
.Lfunc_end19:
	.size	pte_osThreadGetMaxPriority, .Lfunc_end19-pte_osThreadGetMaxPriority
                                        # -- End function
	.globl	pte_osThreadGetDefaultPriority # -- Begin function pte_osThreadGetDefaultPriority
	.p2align	4, 0x90
	.type	pte_osThreadGetDefaultPriority,@function
pte_osThreadGetDefaultPriority:         # @pte_osThreadGetDefaultPriority
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$127, %eax
	retq
.Lfunc_end20:
	.size	pte_osThreadGetDefaultPriority, .Lfunc_end20-pte_osThreadGetDefaultPriority
                                        # -- End function
	.globl	pte_osMutexCreate       # -- Begin function pte_osMutexCreate
	.p2align	4, 0x90
	.type	pte_osMutexCreate,@function
pte_osMutexCreate:                      # @pte_osMutexCreate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB21_4
# %bb.1:
	movq	%rdi, %r14
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB21_7
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$32, %esi
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_5
# %bb.3:
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	uk_mutex_init
	movq	%rbx, (%r14)
	xorl	%eax, %eax
	jmp	.LBB21_6
.LBB21_4:
	movl	$5, %eax
	jmp	.LBB21_6
.LBB21_7:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_5:
	movl	$1, %eax
.LBB21_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	pte_osMutexCreate, .Lfunc_end21-pte_osMutexCreate
                                        # -- End function
	.globl	pte_osMutexDelete       # -- Begin function pte_osMutexDelete
	.p2align	4, 0x90
	.type	pte_osMutexDelete,@function
pte_osMutexDelete:                      # @pte_osMutexDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB22_1
# %bb.2:
	callq	free
	xorl	%eax, %eax
	jmp	.LBB22_3
.LBB22_1:
	movl	$5, %eax
.LBB22_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end22:
	.size	pte_osMutexDelete, .Lfunc_end22-pte_osMutexDelete
                                        # -- End function
	.globl	pte_osMutexLock         # -- Begin function pte_osMutexLock
	.p2align	4, 0x90
	.type	pte_osMutexLock,@function
pte_osMutexLock:                        # @pte_osMutexLock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB23_1
# %bb.2:
	movq	%rdi, %r14
	movl	(%rdi), %eax
	movl	%eax, -44(%rbp)
	movq	8(%rdi), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	16(%rdi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r13, -64(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB23_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_6 Depth 2
                                        #     Child Loop BB23_23 Depth 2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movslq	4096(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	leaq	(,%r15,8), %rbx
	leaq	(%rbx,%rbx,2), %r12
	addq	$wq_entries, %r12
	movl	$24, %edx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	memset
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, wq_entries+8(%rbx,%rbx,2)
	cmpl	$0, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_29
# %bb.4:                                #   in Loop: Header=BB23_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, -72(%rbp)         # 8-byte Folded Reload
	je	.LBB23_29
# %bb.5:                                #   in Loop: Header=BB23_3 Depth=1
	leaq	(%r15,%r15,2), %rax
	leaq	wq_entries+16(,%rax,8), %r13
	.p2align	4, 0x90
.LBB23_6:                               #   Parent Loop BB23_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	cmpl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_8
# %bb.7:                                #   in Loop: Header=BB23_6 Depth=2
	movq	$0, (%r13)
	movq	24(%r14), %rax
	movq	%r12, (%rax)
	movq	%r13, 24(%r14)
	movl	$1, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_8:                               #   in Loop: Header=BB23_6 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 56(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	andb	$-2, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB23_9
# %bb.11:                               #   in Loop: Header=BB23_6 Depth=2
	movq	88(%rbx), %rdi
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	cmpl	$0, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_17
# %bb.12:                               #   in Loop: Header=BB23_6 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_13
# %bb.14:                               #   in Loop: Header=BB23_6 Depth=2
	movq	88(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB23_15
# %bb.16:                               #   in Loop: Header=BB23_6 Depth=2
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_6
	.p2align	4, 0x90
.LBB23_17:                              #   in Loop: Header=BB23_3 Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	uk_thread_wake
	cmpl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_28
# %bb.18:                               #   in Loop: Header=BB23_3 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	je	.LBB23_19
# %bb.21:                               #   in Loop: Header=BB23_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax), %rcx
	.p2align	4, 0x90
.LBB23_23:                              #   Parent Loop BB23_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rcx
	je	.LBB23_24
# %bb.22:                               #   in Loop: Header=BB23_23 Depth=2
	movq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rcx), %rcx
	jmp	.LBB23_23
.LBB23_24:                              #   in Loop: Header=BB23_3 Depth=1
	addq	$16, %rax
	movq	(%r13), %rcx
	movq	%rcx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB23_26
# %bb.25:                               #   in Loop: Header=BB23_3 Depth=1
	movq	%rax, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_26
.LBB23_19:                              #   in Loop: Header=BB23_3 Depth=1
	movq	(%r13), %rax
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB23_27
# %bb.20:                               #   in Loop: Header=BB23_3 Depth=1
	movq	%rcx, 24(%r14)
.LBB23_26:                              #   in Loop: Header=BB23_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB23_27:                              #   in Loop: Header=BB23_3 Depth=1
	movl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_28:                              #   in Loop: Header=BB23_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	-64(%rbp), %r13         # 8-byte Reload
.LBB23_29:                              #   in Loop: Header=BB23_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movl	(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB23_32
# %bb.30:                               #   in Loop: Header=BB23_3 Depth=1
	cmpq	%r13, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_32
# %bb.31:                               #   in Loop: Header=BB23_3 Depth=1
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_3
.LBB23_32:
	addl	$1, %ecx
	movl	%ecx, (%r14)
	movq	%r13, 8(%r14)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB23_33
.LBB23_1:
	movl	$5, %eax
.LBB23_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_9:
	movl	$.L.str.11, %esi
	jmp	.LBB23_10
.LBB23_13:
	movl	$.L.str.9, %esi
	jmp	.LBB23_10
.LBB23_15:
	movl	$.L.str.8, %esi
.LBB23_10:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end23:
	.size	pte_osMutexLock, .Lfunc_end23-pte_osMutexLock
                                        # -- End function
	.globl	pte_osMutexTimedLock    # -- Begin function pte_osMutexTimedLock
	.p2align	4, 0x90
	.type	pte_osMutexTimedLock,@function
pte_osMutexTimedLock:                   # @pte_osMutexTimedLock
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	retq
.Lfunc_end24:
	.size	pte_osMutexTimedLock, .Lfunc_end24-pte_osMutexTimedLock
                                        # -- End function
	.globl	pte_osMutexUnlock       # -- Begin function pte_osMutexUnlock
	.p2align	4, 0x90
	.type	pte_osMutexUnlock,@function
pte_osMutexUnlock:                      # @pte_osMutexUnlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB25_1
# %bb.2:
	movq	%rdi, %rbx
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB25_10
# %bb.3:
	addl	$-1, %eax
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB25_8
# %bb.4:
	movq	$0, 8(%rbx)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	16(%rbx), %rbx
	.p2align	4, 0x90
.LBB25_6:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB25_7
# %bb.5:                                #   in Loop: Header=BB25_6 Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rbx
	callq	uk_thread_wake
	jmp	.LBB25_6
.LBB25_1:
	movl	$5, %eax
	jmp	.LBB25_9
.LBB25_7:
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_8:
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB25_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_10:
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end25:
	.size	pte_osMutexUnlock, .Lfunc_end25-pte_osMutexUnlock
                                        # -- End function
	.globl	pte_osSemaphoreCreate   # -- Begin function pte_osSemaphoreCreate
	.p2align	4, 0x90
	.type	pte_osSemaphoreCreate,@function
pte_osSemaphoreCreate:                  # @pte_osSemaphoreCreate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB26_4
# %bb.1:
	movl	%edi, %r14d
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB26_7
# %bb.2:
	movq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$24, %esi
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB26_5
# %bb.3:
	movq	%rax, %rbx
	movslq	%r14d, %rsi
	movq	%rax, %rdi
	callq	uk_semaphore_init
	movq	%rbx, (%r15)
	xorl	%eax, %eax
	jmp	.LBB26_6
.LBB26_4:
	movl	$5, %eax
	jmp	.LBB26_6
.LBB26_7:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB26_5:
	movl	$1, %eax
.LBB26_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	pte_osSemaphoreCreate, .Lfunc_end26-pte_osSemaphoreCreate
                                        # -- End function
	.globl	pte_osSemaphoreDelete   # -- Begin function pte_osSemaphoreDelete
	.p2align	4, 0x90
	.type	pte_osSemaphoreDelete,@function
pte_osSemaphoreDelete:                  # @pte_osSemaphoreDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB27_1
# %bb.2:
	movq	%rdi, %rsi
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB27_5
# %bb.3:
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB27_4
.LBB27_1:
	movl	$5, %eax
.LBB27_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB27_5:
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end27:
	.size	pte_osSemaphoreDelete, .Lfunc_end27-pte_osSemaphoreDelete
                                        # -- End function
	.globl	pte_osSemaphorePost     # -- Begin function pte_osSemaphorePost
	.p2align	4, 0x90
	.type	pte_osSemaphorePost,@function
pte_osSemaphorePost:                    # @pte_osSemaphorePost
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	testq	%rdi, %rdi
	je	.LBB28_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB28_8
# %bb.3:
	xorl	%r15d, %r15d
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB28_4
	.p2align	4, 0x90
.LBB28_7:                               #   in Loop: Header=BB28_4 Depth=1
	movq	%r13, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %esi         # 4-byte Reload
	cmpl	%esi, %r15d
	je	.LBB28_8
.LBB28_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_6 Depth 2
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r12
	addq	$1, (%rbx)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r13
	movq	8(%rbx), %r14
	.p2align	4, 0x90
.LBB28_6:                               #   Parent Loop BB28_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB28_7
# %bb.5:                                #   in Loop: Header=BB28_6 Depth=2
	movq	8(%r14), %rdi
	movq	16(%r14), %r14
	callq	uk_thread_wake
	jmp	.LBB28_6
.LBB28_8:
	xorl	%eax, %eax
	jmp	.LBB28_9
.LBB28_1:
	movl	$5, %eax
.LBB28_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	pte_osSemaphorePost, .Lfunc_end28-pte_osSemaphorePost
                                        # -- End function
	.globl	pte_osSemaphorePend     # -- Begin function pte_osSemaphorePend
	.p2align	4, 0x90
	.type	pte_osSemaphorePend,@function
pte_osSemaphorePend:                    # @pte_osSemaphorePend
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB29_1
# %bb.2:
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB29_39
# %bb.3:
	movl	(%rsi), %eax
	imulq	$1000000, %rax, %r14    # imm = 0xF4240
	callq	ukplat_monotonic_clock
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r15), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB29_4
	.p2align	4, 0x90
.LBB29_34:                              #   in Loop: Header=BB29_4 Depth=1
	movq	%rbx, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
.LBB29_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_6 Depth 2
                                        #     Child Loop BB29_25 Depth 2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movslq	4096(%rax), %r12
	movl	$42, __A_VARIABLE(%rip)
	leaq	(,%r12,8), %rbx
	leaq	(%rbx,%rbx,2), %r13
	addq	$wq_entries, %r13
	movl	$24, %edx
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	memset
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, wq_entries+8(%rbx,%rbx,2)
	cmpq	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB29_31
# %bb.5:                                #   in Loop: Header=BB29_4 Depth=1
	leaq	(%r12,%r12,2), %rax
	leaq	wq_entries+16(,%rax,8), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB29_6:                               #   Parent Loop BB29_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r12
	cmpl	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB29_8
# %bb.7:                                #   in Loop: Header=BB29_6 Depth=2
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	$0, (%rcx)
	movq	16(%r15), %rax
	movq	%r13, (%rax)
	movq	%rcx, 16(%r15)
	movl	$1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_8:                               #   in Loop: Header=BB29_6 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, 56(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	andb	$-2, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB29_9
# %bb.11:                               #   in Loop: Header=BB29_6 Depth=2
	movq	88(%rbx), %rdi
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	ukplat_lcpu_restore_irqf
	cmpq	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB29_19
# %bb.12:                               #   in Loop: Header=BB29_6 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB29_14
# %bb.13:                               #   in Loop: Header=BB29_6 Depth=2
	callq	ukplat_monotonic_clock
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jae	.LBB29_19
.LBB29_14:                              #   in Loop: Header=BB29_6 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_15
# %bb.16:                               #   in Loop: Header=BB29_6 Depth=2
	movq	88(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB29_17
# %bb.18:                               #   in Loop: Header=BB29_6 Depth=2
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_6
	.p2align	4, 0x90
.LBB29_19:                              #   in Loop: Header=BB29_4 Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	uk_thread_wake
	cmpl	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB29_30
# %bb.20:                               #   in Loop: Header=BB29_4 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	je	.LBB29_21
# %bb.23:                               #   in Loop: Header=BB29_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax), %rcx
	.p2align	4, 0x90
.LBB29_25:                              #   Parent Loop BB29_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rcx
	je	.LBB29_26
# %bb.24:                               #   in Loop: Header=BB29_25 Depth=2
	movq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rcx), %rcx
	jmp	.LBB29_25
.LBB29_26:                              #   in Loop: Header=BB29_4 Depth=1
	addq	$16, %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB29_28
# %bb.27:                               #   in Loop: Header=BB29_4 Depth=1
	movq	%rax, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_28
.LBB29_21:                              #   in Loop: Header=BB29_4 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB29_29
# %bb.22:                               #   in Loop: Header=BB29_4 Depth=1
	movq	%rcx, 16(%r15)
.LBB29_28:                              #   in Loop: Header=BB29_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB29_29:                              #   in Loop: Header=BB29_4 Depth=1
	movl	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_30:                              #   in Loop: Header=BB29_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	ukplat_lcpu_restore_irqf
.LBB29_31:                              #   in Loop: Header=BB29_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %rbx
	movq	(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jg	.LBB29_37
# %bb.32:                               #   in Loop: Header=BB29_4 Depth=1
	testq	%r14, %r14
	je	.LBB29_34
# %bb.33:                               #   in Loop: Header=BB29_4 Depth=1
	callq	ukplat_monotonic_clock
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jb	.LBB29_34
# %bb.35:
	movq	(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB29_36
.LBB29_37:
	addq	$-1, %rax
	movq	%rax, (%r15)
	movq	%rbx, %rdi
	callq	ukplat_lcpu_restore_irqf
	callq	ukplat_monotonic_clock
	subq	-56(%rbp), %rax         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	jne	.LBB29_40
# %bb.38:
	movl	$3, %eax
	jmp	.LBB29_41
.LBB29_1:
	movl	$5, %eax
	jmp	.LBB29_41
.LBB29_39:
	movq	%r15, %rdi
	callq	uk_semaphore_down
	movl	$42, __A_VARIABLE(%rip)
.LBB29_40:
	xorl	%eax, %eax
.LBB29_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_36:
	movq	%rbx, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	jmp	.LBB29_41
.LBB29_9:
	movl	$.L.str.11, %esi
	jmp	.LBB29_10
.LBB29_15:
	movl	$.L.str.9, %esi
	jmp	.LBB29_10
.LBB29_17:
	movl	$.L.str.8, %esi
.LBB29_10:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end29:
	.size	pte_osSemaphorePend, .Lfunc_end29-pte_osSemaphorePend
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_semaphore_down
	.type	uk_semaphore_down,@function
uk_semaphore_down:                      # @uk_semaphore_down
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB30_8
# %bb.1:
	movq	%rdi, %r14
	leaq	8(%rdi), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB30_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_4 Depth 2
                                        #     Child Loop BB30_21 Depth 2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movslq	4096(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	leaq	(,%r15,8), %rbx
	leaq	(%rbx,%rbx,2), %r12
	addq	$wq_entries, %r12
	movl	$24, %edx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	memset
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, wq_entries+8(%rbx,%rbx,2)
	cmpq	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB30_27
# %bb.3:                                #   in Loop: Header=BB30_2 Depth=1
	leaq	(%r15,%r15,2), %rax
	leaq	wq_entries+16(,%rax,8), %r13
	.p2align	4, 0x90
.LBB30_4:                               #   Parent Loop BB30_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	cmpl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB30_6
# %bb.5:                                #   in Loop: Header=BB30_4 Depth=2
	movq	$0, (%r13)
	movq	16(%r14), %rax
	movq	%r12, (%rax)
	movq	%r13, 16(%r14)
	movl	$1, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB30_6:                               #   in Loop: Header=BB30_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 56(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	andb	$-2, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB30_7
# %bb.10:                               #   in Loop: Header=BB30_4 Depth=2
	movq	88(%rbx), %rdi
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	cmpq	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB30_15
# %bb.11:                               #   in Loop: Header=BB30_4 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_12
# %bb.13:                               #   in Loop: Header=BB30_4 Depth=2
	movq	88(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB30_8
# %bb.14:                               #   in Loop: Header=BB30_4 Depth=2
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB30_4
	.p2align	4, 0x90
.LBB30_15:                              #   in Loop: Header=BB30_2 Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	uk_thread_wake
	cmpl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB30_26
# %bb.16:                               #   in Loop: Header=BB30_2 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	je	.LBB30_17
# %bb.19:                               #   in Loop: Header=BB30_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax), %rcx
	.p2align	4, 0x90
.LBB30_21:                              #   Parent Loop BB30_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rcx
	je	.LBB30_22
# %bb.20:                               #   in Loop: Header=BB30_21 Depth=2
	movq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rcx), %rcx
	jmp	.LBB30_21
.LBB30_22:                              #   in Loop: Header=BB30_2 Depth=1
	addq	$16, %rax
	movq	(%r13), %rcx
	movq	%rcx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB30_24
# %bb.23:                               #   in Loop: Header=BB30_2 Depth=1
	movq	%rax, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB30_24
.LBB30_17:                              #   in Loop: Header=BB30_2 Depth=1
	movq	(%r13), %rax
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB30_25
# %bb.18:                               #   in Loop: Header=BB30_2 Depth=1
	movq	%rcx, 16(%r14)
.LBB30_24:                              #   in Loop: Header=BB30_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB30_25:                              #   in Loop: Header=BB30_2 Depth=1
	movl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB30_26:                              #   in Loop: Header=BB30_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
.LBB30_27:                              #   in Loop: Header=BB30_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB30_29
# %bb.28:                               #   in Loop: Header=BB30_2 Depth=1
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB30_2
.LBB30_29:
	addq	$-1, %rcx
	movq	%rcx, (%r14)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_7:
	movl	$.L.str.11, %esi
	jmp	.LBB30_9
.LBB30_12:
	movl	$.L.str.9, %esi
	jmp	.LBB30_9
.LBB30_8:
	movl	$.L.str.8, %esi
.LBB30_9:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end30:
	.size	uk_semaphore_down, .Lfunc_end30-uk_semaphore_down
                                        # -- End function
	.globl	pte_osSemaphoreCancellablePend # -- Begin function pte_osSemaphoreCancellablePend
	.p2align	4, 0x90
	.type	pte_osSemaphoreCancellablePend,@function
pte_osSemaphoreCancellablePend:         # @pte_osSemaphoreCancellablePend
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %r12
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	96(%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_monotonic_clock
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB31_1
# %bb.2:
	movl	(%r15), %eax
	imulq	$1000000, %rax, %rbx    # imm = 0xF4240
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB31_3
.LBB31_1:
	xorl	%ebx, %ebx
.LBB31_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB31_8
	.p2align	4, 0x90
.LBB31_4:                               # =>This Inner Loop Header: Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB31_17
# %bb.5:                                #   in Loop: Header=BB31_4 Depth=1
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB31_10
# %bb.6:                                #   in Loop: Header=BB31_4 Depth=1
	callq	ukplat_monotonic_clock
	subq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	ja	.LBB31_7
.LBB31_10:                              #   in Loop: Header=BB31_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB31_13
# %bb.11:                               #   in Loop: Header=BB31_4 Depth=1
	cmpq	$0, 56(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB31_12
.LBB31_13:                              #   in Loop: Header=BB31_4 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB31_14
# %bb.15:                               #   in Loop: Header=BB31_4 Depth=1
	movq	88(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB31_8
# %bb.16:                               #   in Loop: Header=BB31_4 Depth=1
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB31_4
.LBB31_17:
	addq	$-1, %rcx
	movq	%rcx, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB31_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB31_7:
	movl	$3, %eax
	jmp	.LBB31_18
.LBB31_12:
	movl	$4, %eax
	jmp	.LBB31_18
.LBB31_8:
	movl	$.L.str.8, %esi
	jmp	.LBB31_9
.LBB31_14:
	movl	$.L.str.9, %esi
.LBB31_9:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end31:
	.size	pte_osSemaphoreCancellablePend, .Lfunc_end31-pte_osSemaphoreCancellablePend
                                        # -- End function
	.globl	pte_osTlsSetValue       # -- Begin function pte_osTlsSetValue
	.p2align	4, 0x90
	.type	pte_osTlsSetValue,@function
pte_osTlsSetValue:                      # @pte_osTlsSetValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdx
	movl	%edi, %esi
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	96(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_1
# %bb.2:
	movq	24(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB32_3
.LBB32_1:
	xorl	%edi, %edi
.LBB32_3:
	movl	$42, __A_VARIABLE(%rip)
	callq	pteTlsSetValue
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end32:
	.size	pte_osTlsSetValue, .Lfunc_end32-pte_osTlsSetValue
                                        # -- End function
	.globl	pte_osTlsGetValue       # -- Begin function pte_osTlsGetValue
	.p2align	4, 0x90
	.type	pte_osTlsGetValue,@function
pte_osTlsGetValue:                      # @pte_osTlsGetValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %esi
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	96(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_1
# %bb.2:
	movq	24(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB33_3
.LBB33_1:
	xorl	%edi, %edi
.LBB33_3:
	movl	$42, __A_VARIABLE(%rip)
	callq	pteTlsGetValue
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end33:
	.size	pte_osTlsGetValue, .Lfunc_end33-pte_osTlsGetValue
                                        # -- End function
	.globl	pte_osTlsAlloc          # -- Begin function pte_osTlsAlloc
	.p2align	4, 0x90
	.type	pte_osTlsAlloc,@function
pte_osTlsAlloc:                         # @pte_osTlsAlloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	pteTlsAlloc
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end34:
	.size	pte_osTlsAlloc, .Lfunc_end34-pte_osTlsAlloc
                                        # -- End function
	.globl	pte_osTlsFree           # -- Begin function pte_osTlsFree
	.p2align	4, 0x90
	.type	pte_osTlsFree,@function
pte_osTlsFree:                          # @pte_osTlsFree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	pteTlsFree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end35:
	.size	pte_osTlsFree, .Lfunc_end35-pte_osTlsFree
                                        # -- End function
	.globl	ftime                   # -- Begin function ftime
	.p2align	4, 0x90
	.type	ftime,@function
ftime:                                  # @ftime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	ukplat_monotonic_clock
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB36_2
# %bb.1:
	movq	%rax, %rcx
	shrq	$9, %rax
	movabsq	$19342813113834067, %rdx # imm = 0x44B82FA09B5A53
	mulq	%rdx
	movq	%rdx, %rsi
	shrq	$11, %rsi
	imulq	$1000000000, %rsi, %rax # imm = 0x3B9ACA00
	subq	%rax, %rcx
	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rsi, (%rbx)
	shrq	$18, %rdx
	movw	%dx, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB36_2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end36:
	.size	ftime, .Lfunc_end36-ftime
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_debug
	.type	uk_pr_debug,@function
uk_pr_debug:                            # @uk_pr_debug
# %bb.0:
	subq	$200, %rsp
	testb	%al, %al
	je	.LBB37_2
# %bb.1:
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB37_2:
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r9, 40(%rsp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$200, %rsp
	retq
.Lfunc_end37:
	.size	uk_pr_debug, .Lfunc_end37-uk_pr_debug
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB38_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB38_2:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %r9
	movl	$uk_pr_crit.__str, %esi
	movl	$uk_pr_crit.__str.7, %edx
	movl	$.L.str.5, %r8d
	xorl	%edi, %edi
	movl	$198, %ecx
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	uk_pr_crit, .Lfunc_end38-uk_pr_crit
                                        # -- End function
	.type	__uk_inittab39_pthread_initcall,@object # @__uk_inittab39_pthread_initcall
	.section	.uk_inittab39,"a",@progbits
	.p2align	3
__uk_inittab39_pthread_initcall:
	.quad	pthread_initcall
	.size	__uk_inittab39_pthread_initcall, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Could not init global TLS"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Could not init TLS"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Could not allocate TLS\n"
	.size	.L.str.2, 24

	.type	uk_pr_err.__str,@object # @uk_pr_err.__str
	.section	.data_shared,"aw",@progbits
	.p2align	4
uk_pr_err.__str:
	.asciz	"libpthread-embedded"
	.size	uk_pr_err.__str, 20

	.type	uk_pr_err.__str.4,@object # @uk_pr_err.__str.4
uk_pr_err.__str.4:
	.asciz	"pte_osal.c"
	.size	uk_pr_err.__str.4, 11

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"a"
	.size	.L.str.6, 2

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
	.p2align	4
uk_pr_crit.__str:
	.asciz	"libpthread-embedded"
	.size	uk_pr_crit.__str, 20

	.type	uk_pr_crit.__str.7,@object # @uk_pr_crit.__str.7
uk_pr_crit.__str.7:
	.asciz	"pte_osal.c"
	.size	uk_pr_crit.__str.7, 11

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"s"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"current"
	.size	.L.str.9, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"t"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"m->lock_count > 0"
	.size	.L.str.12, 18

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
