	.text
	.file	"semaphore.c"
	.globl	sys_sem_new             # -- Begin function sys_sem_new
	.p2align	4, 0x90
	.type	sys_sem_new,@function
sys_sem_new:                            # @sys_sem_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%rbx
	movq	%rdi, %rbx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB0_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB0_2
.LBB0_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%sil, %esi
	movq	%rbx, %rdi
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp1, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp1, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp0:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp0
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_semaphore_init
.Ltmp1:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp1
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp1, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB0_4
.LBB0_2:
	movzbl	%sil, %esi
	movq	%rbx, %rdi
	callq	uk_semaphore_init
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sys_sem_new, .Lfunc_end0-sys_sem_new
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ukarch_read_sp
	.type	ukarch_read_sp,@function
ukarch_read_sp:                         # @ukarch_read_sp
# %bb.0:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	ukarch_read_sp, .Lfunc_end1-ukarch_read_sp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_thread_get_tid
	.type	uk_thread_get_tid,@function
uk_thread_get_tid:                      # @uk_thread_get_tid
# %bb.0:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end2:
	.size	uk_thread_get_tid, .Lfunc_end2-uk_thread_get_tid
                                        # -- End function
	.globl	sys_sem_valid           # -- Begin function sys_sem_valid
	.p2align	4, 0x90
	.type	sys_sem_valid,@function
sys_sem_valid:                          # @sys_sem_valid
# %bb.0:
	xorl	%eax, %eax
	cmpl	$1, 24(%rdi)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	sys_sem_valid, .Lfunc_end3-sys_sem_valid
                                        # -- End function
	.globl	sys_sem_set_invalid     # -- Begin function sys_sem_set_invalid
	.p2align	4, 0x90
	.type	sys_sem_set_invalid,@function
sys_sem_set_invalid:                    # @sys_sem_set_invalid
# %bb.0:
	movl	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	sys_sem_set_invalid, .Lfunc_end4-sys_sem_set_invalid
                                        # -- End function
	.globl	sys_sem_free            # -- Begin function sys_sem_free
	.p2align	4, 0x90
	.type	sys_sem_free,@function
sys_sem_free:                           # @sys_sem_free
# %bb.0:
	movl	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end5:
	.size	sys_sem_free, .Lfunc_end5-sys_sem_free
                                        # -- End function
	.globl	sys_sem_signal          # -- Begin function sys_sem_signal
	.p2align	4, 0x90
	.type	sys_sem_signal,@function
sys_sem_signal:                         # @sys_sem_signal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB6_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB6_2
.LBB6_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp1, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp1, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp2:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp2
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_semaphore_up
.Ltmp3:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp3
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp1, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB6_8
.LBB6_2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB6_9
# %bb.3:
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	addq	$1, (%rbx)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	8(%rbx), %rbx
	.p2align	4, 0x90
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB6_6
# %bb.4:                                #   in Loop: Header=BB6_5 Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rbx
	callq	uk_thread_wake
	jmp	.LBB6_5
.LBB6_6:
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
.LBB6_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_9:
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end6:
	.size	sys_sem_signal, .Lfunc_end6-sys_sem_signal
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_semaphore_up
	.type	uk_semaphore_up,@function
uk_semaphore_up:                        # @uk_semaphore_up
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB7_5
# %bb.1:
	movq	%rdi, %rbx
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	addq	$1, (%rbx)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	8(%rbx), %rbx
	.p2align	4, 0x90
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_4
# %bb.2:                                #   in Loop: Header=BB7_3 Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rbx
	callq	uk_thread_wake
	jmp	.LBB7_3
.LBB7_4:
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_5:
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end7:
	.size	uk_semaphore_up, .Lfunc_end7-uk_semaphore_up
                                        # -- End function
	.globl	sys_arch_sem_wait       # -- Begin function sys_arch_sem_wait
	.p2align	4, 0x90
	.type	sys_arch_sem_wait,@function
sys_arch_sem_wait:                      # @sys_arch_sem_wait
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r12
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$42, __A_VARIABLE
# %bb.1:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_4
# %bb.2:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
	movabsq	$_end, %rcx
	cmpq	%rcx, %rax
	ja	.LBB8_4
# %bb.3:
	movabsq	$sys_arch_sem_wait.__str, %rax
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rsi
	movl	-20(%rbp), %edx
	movb	$0, %al
	callq	uk_pr_debug
	movl	$42, __A_VARIABLE
	jmp	.LBB8_11
.LBB8_4:
	movl	$42, __A_VARIABLE
# %bb.5:
	movl	$42, __A_VARIABLE
# %bb.6:
	callq	uk_thread_get_tid
	movl	%eax, -72(%rbp)
	movl	-20(%rbp), %eax
	movq	%rax, -104(%rbp)
	movabsq	$sys_arch_sem_wait.__str.1, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-104(%rbp), %r12
	movl	-72(%rbp), %r15d
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp1, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp1, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp4:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp4
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_pr_debug
.Ltmp5:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp5
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp1, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movl	$42, __A_VARIABLE
# %bb.7:
	movl	$42, __A_VARIABLE
# %bb.8:
	movl	$42, __A_VARIABLE
# %bb.9:
	movl	$42, __A_VARIABLE
# %bb.10:
	movl	$42, __A_VARIABLE
.LBB8_11:
	movl	$42, __A_VARIABLE
# %bb.12:
	movl	$42, __A_VARIABLE
# %bb.13:
	movl	-20(%rbp), %eax
	movl	$42, __A_VARIABLE
	cmpl	$0, %eax
	jne	.LBB8_28
# %bb.14:
	movl	$42, __A_VARIABLE
# %bb.15:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_18
# %bb.16:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
	movabsq	$_end, %rcx
	cmpq	%rcx, %rax
	ja	.LBB8_18
# %bb.17:
	movq	-48(%rbp), %rdi
	callq	sys_arch_sem_wait_helper
	movq	%rax, -32(%rbp)
	movl	$42, __A_VARIABLE
	jmp	.LBB8_25
.LBB8_18:
	movl	$42, __A_VARIABLE
# %bb.19:
	movl	$42, __A_VARIABLE
# %bb.20:
	callq	uk_thread_get_tid
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rdi
	movl	-68(%rbp), %r15d
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp1, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp1, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp6:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp6
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sys_arch_sem_wait_helper
	movq	%rax, %rsi
.Ltmp7:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp7
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp1, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movq	%r11, -88(%rbp)
	movq	-88(%rbp), %r11
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE
# %bb.21:
	movl	$42, __A_VARIABLE
# %bb.22:
	movl	$42, __A_VARIABLE
# %bb.23:
	movl	$42, __A_VARIABLE
# %bb.24:
	movl	$42, __A_VARIABLE
.LBB8_25:
	movl	$42, __A_VARIABLE
# %bb.26:
	movl	$42, __A_VARIABLE
# %bb.27:
	movl	$42, __A_VARIABLE
	jmp	.LBB8_44
.LBB8_28:
	movl	$42, __A_VARIABLE
# %bb.29:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
	movabsq	$_intrstack_start, %rcx
	cmpq	%rcx, %rax
	jb	.LBB8_32
# %bb.30:
	callq	ukarch_read_sp
	movl	$42, __A_VARIABLE
	movabsq	$_end, %rcx
	cmpq	%rcx, %rax
	ja	.LBB8_32
# %bb.31:
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %eax
	imulq	$1000000, %rax, %rsi    # imm = 0xF4240
	callq	uk_semaphore_down_to
	movq	%rax, -32(%rbp)
	movl	$42, __A_VARIABLE
	jmp	.LBB8_39
.LBB8_32:
	movl	$42, __A_VARIABLE
# %bb.33:
	movl	$42, __A_VARIABLE
# %bb.34:
	callq	uk_thread_get_tid
	movl	%eax, -64(%rbp)
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %eax
	imulq	$1000000, %rax, %rsi    # imm = 0xF4240
	movl	-64(%rbp), %r15d
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp1, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp1, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp8:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp8
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_semaphore_down_to
	movq	%rax, %rsi
.Ltmp9:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp9
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp1, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movq	%r11, -80(%rbp)
	movq	-80(%rbp), %r11
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE
# %bb.35:
	movl	$42, __A_VARIABLE
# %bb.36:
	movl	$42, __A_VARIABLE
# %bb.37:
	movl	$42, __A_VARIABLE
# %bb.38:
	movl	$42, __A_VARIABLE
.LBB8_39:
	movl	$42, __A_VARIABLE
# %bb.40:
	movl	$42, __A_VARIABLE
# %bb.41:
	cmpq	$-1, -32(%rbp)
	sete	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	movl	$42, __A_VARIABLE
	cmpq	$0, %rax
	je	.LBB8_43
# %bb.42:
	movl	$-1, -36(%rbp)
	movl	$1, -60(%rbp)
	movl	$42, __A_VARIABLE
	jmp	.LBB8_45
.LBB8_43:
	movl	$42, __A_VARIABLE
.LBB8_44:
	movq	-32(%rbp), %rax
	xorl	%edx, %edx
	movl	$1000000, %ecx          # imm = 0xF4240
	divq	%rcx
	movl	%eax, -36(%rbp)
	movl	$1, -60(%rbp)
	movl	$42, __A_VARIABLE
.LBB8_45:
	movl	-36(%rbp), %eax
	movl	$42, __A_VARIABLE
	addq	$96, %rsp
	popq	%r12
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	sys_arch_sem_wait, .Lfunc_end8-sys_arch_sem_wait
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_debug
	.type	uk_pr_debug,@function
uk_pr_debug:                            # @uk_pr_debug
# %bb.0:
	subq	$200, %rsp
	testb	%al, %al
	je	.LBB9_2
# %bb.1:
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB9_2:
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r9, 40(%rsp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$200, %rsp
	retq
.Lfunc_end9:
	.size	uk_pr_debug, .Lfunc_end9-uk_pr_debug
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sys_arch_sem_wait_helper
	.type	sys_arch_sem_wait_helper,@function
sys_arch_sem_wait_helper:               # @sys_arch_sem_wait_helper
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r15
	callq	ukplat_monotonic_clock
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB10_8
# %bb.1:
	leaq	8(%r15), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB10_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_4 Depth 2
                                        #     Child Loop BB10_21 Depth 2
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
	movslq	4096(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	leaq	(,%r14,8), %rbx
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
	jg	.LBB10_27
# %bb.3:                                #   in Loop: Header=BB10_2 Depth=1
	leaq	(%r14,%r14,2), %rax
	leaq	wq_entries+16(,%rax,8), %r14
	.p2align	4, 0x90
.LBB10_4:                               #   Parent Loop BB10_2 Depth=1
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
	jne	.LBB10_6
# %bb.5:                                #   in Loop: Header=BB10_4 Depth=2
	movq	$0, (%r14)
	movq	16(%r15), %rax
	movq	%r13, (%rax)
	movq	%r14, 16(%r15)
	movl	$1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_6:                               #   in Loop: Header=BB10_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 56(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	andb	$-2, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB10_7
# %bb.10:                               #   in Loop: Header=BB10_4 Depth=2
	movq	88(%rbx), %rdi
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	ukplat_lcpu_restore_irqf
	cmpq	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB10_15
# %bb.11:                               #   in Loop: Header=BB10_4 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_12
# %bb.13:                               #   in Loop: Header=BB10_4 Depth=2
	movq	88(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB10_8
# %bb.14:                               #   in Loop: Header=BB10_4 Depth=2
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_4
	.p2align	4, 0x90
.LBB10_15:                              #   in Loop: Header=BB10_2 Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	uk_thread_wake
	cmpl	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_26
# %bb.16:                               #   in Loop: Header=BB10_2 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	je	.LBB10_17
# %bb.19:                               #   in Loop: Header=BB10_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax), %rcx
	.p2align	4, 0x90
.LBB10_21:                              #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rcx
	je	.LBB10_22
# %bb.20:                               #   in Loop: Header=BB10_21 Depth=2
	movq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rcx), %rcx
	jmp	.LBB10_21
.LBB10_22:                              #   in Loop: Header=BB10_2 Depth=1
	addq	$16, %rax
	movq	(%r14), %rcx
	movq	%rcx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB10_24
# %bb.23:                               #   in Loop: Header=BB10_2 Depth=1
	movq	%rax, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_24
.LBB10_17:                              #   in Loop: Header=BB10_2 Depth=1
	movq	(%r14), %rax
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB10_25
# %bb.18:                               #   in Loop: Header=BB10_2 Depth=1
	movq	%rcx, 16(%r15)
.LBB10_24:                              #   in Loop: Header=BB10_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB10_25:                              #   in Loop: Header=BB10_2 Depth=1
	movl	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_26:                              #   in Loop: Header=BB10_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	ukplat_lcpu_restore_irqf
.LBB10_27:                              #   in Loop: Header=BB10_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB10_29
# %bb.28:                               #   in Loop: Header=BB10_2 Depth=1
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_2
.LBB10_29:
	addq	$-1, %rcx
	movq	%rcx, (%r15)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_monotonic_clock
	subq	-48(%rbp), %rax         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_7:
	movl	$.L.str.4, %esi
	jmp	.LBB10_9
.LBB10_12:
	movl	$.L.str.5, %esi
	jmp	.LBB10_9
.LBB10_8:
	movl	$.L.str.2, %esi
.LBB10_9:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end10:
	.size	sys_arch_sem_wait_helper, .Lfunc_end10-sys_arch_sem_wait_helper
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_semaphore_down_to
	.type	uk_semaphore_down_to,@function
uk_semaphore_down_to:                   # @uk_semaphore_down_to
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r12
	movq	%rdi, %r15
	callq	ukplat_monotonic_clock
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB11_1
# %bb.3:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r15), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB11_4
	.p2align	4, 0x90
.LBB11_32:                              #   in Loop: Header=BB11_4 Depth=1
	movq	%rbx, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
.LBB11_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_6 Depth 2
                                        #     Child Loop BB11_23 Depth 2
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
	movslq	4096(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	leaq	(,%r14,8), %rbx
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
	jg	.LBB11_29
# %bb.5:                                #   in Loop: Header=BB11_4 Depth=1
	leaq	(%r14,%r14,2), %rax
	leaq	wq_entries+16(,%rax,8), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB11_6:                               #   Parent Loop BB11_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %rbx
	cmpl	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_8
# %bb.7:                                #   in Loop: Header=BB11_6 Depth=2
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	$0, (%rcx)
	movq	16(%r15), %rax
	movq	%r13, (%rax)
	movq	%rcx, 16(%r15)
	movl	$1, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_8:                               #   in Loop: Header=BB11_6 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, 56(%r14)
	movl	$42, __A_VARIABLE(%rip)
	andb	$-2, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB11_9
# %bb.10:                               #   in Loop: Header=BB11_6 Depth=2
	movq	88(%r14), %rdi
	movq	%r14, %rsi
	callq	*24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	ukplat_lcpu_restore_irqf
	cmpq	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB11_17
# %bb.11:                               #   in Loop: Header=BB11_6 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB11_13
# %bb.12:                               #   in Loop: Header=BB11_6 Depth=2
	callq	ukplat_monotonic_clock
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jae	.LBB11_17
.LBB11_13:                              #   in Loop: Header=BB11_6 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_14
# %bb.15:                               #   in Loop: Header=BB11_6 Depth=2
	movq	88(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_1
# %bb.16:                               #   in Loop: Header=BB11_6 Depth=2
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_6
	.p2align	4, 0x90
.LBB11_17:                              #   in Loop: Header=BB11_4 Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	uk_thread_wake
	cmpl	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_28
# %bb.18:                               #   in Loop: Header=BB11_4 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	je	.LBB11_19
# %bb.21:                               #   in Loop: Header=BB11_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax), %rcx
	.p2align	4, 0x90
.LBB11_23:                              #   Parent Loop BB11_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rcx
	je	.LBB11_24
# %bb.22:                               #   in Loop: Header=BB11_23 Depth=2
	movq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rcx), %rcx
	jmp	.LBB11_23
.LBB11_24:                              #   in Loop: Header=BB11_4 Depth=1
	addq	$16, %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB11_26
# %bb.25:                               #   in Loop: Header=BB11_4 Depth=1
	movq	%rax, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_26
.LBB11_19:                              #   in Loop: Header=BB11_4 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB11_27
# %bb.20:                               #   in Loop: Header=BB11_4 Depth=1
	movq	%rcx, 16(%r15)
.LBB11_26:                              #   in Loop: Header=BB11_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB11_27:                              #   in Loop: Header=BB11_4 Depth=1
	movl	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_28:                              #   in Loop: Header=BB11_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	ukplat_lcpu_restore_irqf
.LBB11_29:                              #   in Loop: Header=BB11_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %rbx
	movq	(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jg	.LBB11_34
# %bb.30:                               #   in Loop: Header=BB11_4 Depth=1
	testq	%r12, %r12
	je	.LBB11_32
# %bb.31:                               #   in Loop: Header=BB11_4 Depth=1
	callq	ukplat_monotonic_clock
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jb	.LBB11_32
# %bb.33:
	movq	(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB11_35
.LBB11_34:
	addq	$-1, %rax
	movq	%rax, (%r15)
	movq	%rbx, %rdi
	callq	ukplat_lcpu_restore_irqf
	callq	ukplat_monotonic_clock
	subq	-56(%rbp), %rax         # 8-byte Folded Reload
.LBB11_36:
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
.LBB11_35:
	movq	%rbx, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	$-1, %rax
	jmp	.LBB11_36
.LBB11_9:
	movl	$.L.str.4, %esi
	jmp	.LBB11_2
.LBB11_14:
	movl	$.L.str.5, %esi
	jmp	.LBB11_2
.LBB11_1:
	movl	$.L.str.2, %esi
.LBB11_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end11:
	.size	uk_semaphore_down_to, .Lfunc_end11-uk_semaphore_down_to
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB12_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB12_2:
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
	movl	$uk_pr_crit.__str.3, %edx
	movl	$.L.str, %r8d
	xorl	%edi, %edi
	movl	$198, %ecx
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	uk_pr_crit, .Lfunc_end12-uk_pr_crit
                                        # -- End function
	.type	sys_arch_sem_wait.__str,@object # @sys_arch_sem_wait.__str
	.section	.data_shared,"aw",@progbits
	.p2align	4
sys_arch_sem_wait.__str:
	.asciz	"sys_arch_sem_wait(%p, %lu)\n"
	.size	sys_arch_sem_wait.__str, 28

	.type	sys_arch_sem_wait.__str.1,@object # @sys_arch_sem_wait.__str.1
	.p2align	4
sys_arch_sem_wait.__str.1:
	.asciz	"sys_arch_sem_wait(%p, %lu)\n"
	.size	sys_arch_sem_wait.__str.1, 28

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"s"
	.size	.L.str.2, 2

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.3,@object # @uk_pr_crit.__str.3
uk_pr_crit.__str.3:
	.asciz	"semaphore.c"
	.size	uk_pr_crit.__str.3, 12

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"t"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"current"
	.size	.L.str.5, 8

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
