	.text
	.file	"mutex.c"
	.globl	sys_mutex_new           # -- Begin function sys_mutex_new
	.p2align	4, 0x90
	.type	sys_mutex_new,@function
sys_mutex_new:                          # @sys_mutex_new
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
	cmpq	%rcx, %rax
	jb	.LBB0_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	uk_mutex_init
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
	movq	%rbx, %rdi
	callq	uk_mutex_init
.LBB0_4:
	movl	$1, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sys_mutex_new, .Lfunc_end0-sys_mutex_new
                                        # -- End function
	.globl	sys_mutex_valid         # -- Begin function sys_mutex_valid
	.p2align	4, 0x90
	.type	sys_mutex_valid,@function
sys_mutex_valid:                        # @sys_mutex_valid
# %bb.0:
	xorl	%eax, %eax
	cmpl	$1, 32(%rdi)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	sys_mutex_valid, .Lfunc_end1-sys_mutex_valid
                                        # -- End function
	.globl	sys_mutex_set_invalid   # -- Begin function sys_mutex_set_invalid
	.p2align	4, 0x90
	.type	sys_mutex_set_invalid,@function
sys_mutex_set_invalid:                  # @sys_mutex_set_invalid
# %bb.0:
	movl	$0, 32(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end2:
	.size	sys_mutex_set_invalid, .Lfunc_end2-sys_mutex_set_invalid
                                        # -- End function
	.globl	sys_mutex_free          # -- Begin function sys_mutex_free
	.p2align	4, 0x90
	.type	sys_mutex_free,@function
sys_mutex_free:                         # @sys_mutex_free
# %bb.0:
	movl	$0, 32(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	sys_mutex_free, .Lfunc_end3-sys_mutex_free
                                        # -- End function
	.globl	sys_mutex_lock          # -- Begin function sys_mutex_lock
	.p2align	4, 0x90
	.type	sys_mutex_lock,@function
sys_mutex_lock:                         # @sys_mutex_lock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%rax
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB4_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_2
.LBB4_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	callq	uk_mutex_lock
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
	jmp	.LBB4_4
.LBB4_2:
	callq	uk_mutex_lock
.LBB4_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sys_mutex_lock, .Lfunc_end4-sys_mutex_lock
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_mutex_lock
	.type	uk_mutex_lock,@function
uk_mutex_lock:                          # @uk_mutex_lock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	(%rdi), %eax
	movl	%eax, -44(%rbp)
	testq	%rdi, %rdi
	je	.LBB5_1
# %bb.3:
	movq	%rdi, %r14
	movq	8(%rdi), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	leaq	16(%rdi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r13, -64(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #     Child Loop BB5_21 Depth 2
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
	leaq	(%rbx,%rbx,2), %r15
	addq	$wq_entries, %r15
	movl	$24, %edx
	movq	%r15, %rdi
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
	je	.LBB5_27
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	cmpq	%r13, -72(%rbp)         # 8-byte Folded Reload
	je	.LBB5_27
# %bb.6:                                #   in Loop: Header=BB5_4 Depth=1
	leaq	(%r12,%r12,2), %rax
	leaq	wq_entries+16(,%rax,8), %r13
	.p2align	4, 0x90
.LBB5_7:                                #   Parent Loop BB5_4 Depth=1
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
	cmpl	$0, (%r15)
	jne	.LBB5_9
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=2
	movq	$0, (%r13)
	movq	24(%r14), %rax
	movq	%r15, (%rax)
	movq	%r13, 24(%r14)
	movl	$1, (%r15)
.LBB5_9:                                #   in Loop: Header=BB5_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 56(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	andb	$-2, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB5_10
# %bb.11:                               #   in Loop: Header=BB5_7 Depth=2
	movq	88(%rbx), %rdi
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	ukplat_lcpu_restore_irqf
	cmpl	$0, -44(%rbp)
	je	.LBB5_17
# %bb.12:                               #   in Loop: Header=BB5_7 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_13
# %bb.14:                               #   in Loop: Header=BB5_7 Depth=2
	movq	88(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB5_15
# %bb.16:                               #   in Loop: Header=BB5_7 Depth=2
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_7
	.p2align	4, 0x90
.LBB5_17:                               #   in Loop: Header=BB5_4 Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	uk_thread_wake
	cmpl	$0, (%r15)
	je	.LBB5_26
# %bb.18:                               #   in Loop: Header=BB5_4 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	cmpq	%r15, %rcx
	je	.LBB5_19
	.p2align	4, 0x90
.LBB5_21:                               #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	movq	16(%rcx), %rcx
	cmpq	%r15, %rcx
	jne	.LBB5_21
# %bb.22:                               #   in Loop: Header=BB5_4 Depth=1
	movq	(%r13), %rcx
	movq	%rcx, 16(%rax)
	testq	%rcx, %rcx
	jne	.LBB5_25
# %bb.23:                               #   in Loop: Header=BB5_4 Depth=1
	addq	$16, %rax
	jmp	.LBB5_24
.LBB5_19:                               #   in Loop: Header=BB5_4 Depth=1
	movq	(%r13), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	testq	%rax, %rax
	jne	.LBB5_25
# %bb.20:                               #   in Loop: Header=BB5_4 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
.LBB5_24:                               #   in Loop: Header=BB5_4 Depth=1
	movq	%rax, 24(%r14)
.LBB5_25:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$0, (%r15)
.LBB5_26:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	-64(%rbp), %r13         # 8-byte Reload
.LBB5_27:                               #   in Loop: Header=BB5_4 Depth=1
	callq	ukplat_lcpu_save_irqf
	movl	(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB5_30
# %bb.28:                               #   in Loop: Header=BB5_4 Depth=1
	cmpq	%r13, 8(%r14)
	je	.LBB5_30
# %bb.29:                               #   in Loop: Header=BB5_4 Depth=1
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	jmp	.LBB5_4
.LBB5_30:
	addl	$1, %ecx
	movl	%ecx, (%r14)
	movq	%r13, 8(%r14)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_10:
	movl	$.L.str.3, %esi
	jmp	.LBB5_2
.LBB5_13:
	movl	$.L.str.4, %esi
	jmp	.LBB5_2
.LBB5_15:
	movl	$.L.str.5, %esi
.LBB5_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB5_1:
	movl	$.L.str.1, %esi
	jmp	.LBB5_2
.Lfunc_end5:
	.size	uk_mutex_lock, .Lfunc_end5-uk_mutex_lock
                                        # -- End function
	.globl	sys_mutex_unlock        # -- Begin function sys_mutex_unlock
	.p2align	4, 0x90
	.type	sys_mutex_unlock,@function
sys_mutex_unlock:                       # @sys_mutex_unlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%rax
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB6_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB6_2
.LBB6_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_mutex_unlock
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
	jmp	.LBB6_4
.LBB6_2:
	callq	uk_mutex_unlock
.LBB6_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	sys_mutex_unlock, .Lfunc_end6-sys_mutex_unlock
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_mutex_unlock
	.type	uk_mutex_unlock,@function
uk_mutex_unlock:                        # @uk_mutex_unlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB7_1
# %bb.3:
	movq	%rdi, %rbx
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	movl	(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB7_4
# %bb.5:
	addl	$-1, %eax
	movl	%eax, (%rbx)
	jne	.LBB7_10
# %bb.6:
	movq	$0, 8(%rbx)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB7_9
	.p2align	4, 0x90
.LBB7_7:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rbx
	callq	uk_thread_wake
	testq	%rbx, %rbx
	jne	.LBB7_7
.LBB7_9:
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
.LBB7_10:
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_1:
	movl	$.L.str.1, %esi
	jmp	.LBB7_2
.LBB7_4:
	movl	$.L.str.6, %esi
.LBB7_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end7:
	.size	uk_mutex_unlock, .Lfunc_end7-uk_mutex_unlock
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB8_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB8_2:
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
	movl	$uk_pr_crit.__str.2, %edx
	movl	$.L.str, %r8d
	xorl	%edi, %edi
	movl	$198, %ecx
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	uk_pr_crit, .Lfunc_end8-uk_pr_crit
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"m"
	.size	.L.str.1, 2

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.2,@object # @uk_pr_crit.__str.2
uk_pr_crit.__str.2:
	.asciz	"mutex.c"
	.size	uk_pr_crit.__str.2, 8

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"t"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"current"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"s"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"m->lock_count > 0"
	.size	.L.str.6, 18

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
