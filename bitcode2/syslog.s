	.text
	.file	"syslog.c"
	.globl	openlog                 # -- Begin function openlog
	.p2align	4, 0x90
	.type	openlog,@function
openlog:                                # @openlog
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	callq	uk_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_2
# %bb.1:
	movl	$31, %esi
	movq	%rbx, %rdi
	callq	strnlen
	movq	%rax, %r12
	movl	$log_ident, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	memcpy
	movb	$0, log_ident(%r12)
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, log_ident(%rip)
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, log_opt(%rip)
	movl	%r14d, log_facility(%rip)
	callq	uk_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	openlog, .Lfunc_end0-openlog
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
	subq	$24, %rsp
	movl	lock(%rip), %eax
	movl	%eax, -44(%rbp)
	movq	lock+8(%rip), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_21 Depth 2
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_27
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, -56(%rbp)         # 8-byte Folded Reload
	je	.LBB1_27
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r14,%r14,2), %rax
	leaq	wq_entries+16(,%rax,8), %r12
	.p2align	4, 0x90
.LBB1_4:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	cmpl	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=2
	movq	$0, (%r12)
	movq	lock+24(%rip), %rax
	movq	%r15, (%rax)
	movq	%r12, lock+24(%rip)
	movl	$1, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 56(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	andb	$-2, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB1_7
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=2
	movq	88(%rbx), %rdi
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	cmpl	$0, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_15
# %bb.10:                               #   in Loop: Header=BB1_4 Depth=2
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
	je	.LBB1_11
# %bb.12:                               #   in Loop: Header=BB1_4 Depth=2
	movq	88(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_13
# %bb.14:                               #   in Loop: Header=BB1_4 Depth=2
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_15:                               #   in Loop: Header=BB1_1 Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	uk_thread_wake
	cmpl	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_26
# %bb.16:                               #   in Loop: Header=BB1_1 Depth=1
	movq	lock+16(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	je	.LBB1_17
# %bb.19:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax), %rcx
	.p2align	4, 0x90
.LBB1_21:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	je	.LBB1_22
# %bb.20:                               #   in Loop: Header=BB1_21 Depth=2
	movq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rcx), %rcx
	jmp	.LBB1_21
.LBB1_22:                               #   in Loop: Header=BB1_1 Depth=1
	addq	$16, %rax
	movq	(%r12), %rcx
	movq	%rcx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB1_24
# %bb.23:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%rax, lock+24(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_24
.LBB1_17:                               #   in Loop: Header=BB1_1 Depth=1
	movq	(%r12), %rax
	movq	%rax, lock+16(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB1_25
# %bb.18:                               #   in Loop: Header=BB1_1 Depth=1
	movq	$lock+16, lock+24(%rip)
.LBB1_24:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_25:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_26:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
.LBB1_27:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movl	lock(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB1_30
# %bb.28:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r13, lock+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_30
# %bb.29:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	jmp	.LBB1_1
.LBB1_30:
	addl	$1, %ecx
	movl	%ecx, lock(%rip)
	movq	%r13, lock+8(%rip)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_7:
	movl	$.L.str.7, %esi
	jmp	.LBB1_8
.LBB1_13:
	movl	$.L.str.9, %esi
	jmp	.LBB1_8
.LBB1_11:
	movl	$.L.str.8, %esi
.LBB1_8:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end1:
	.size	uk_mutex_lock, .Lfunc_end1-uk_mutex_lock
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
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movl	lock(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB2_7
# %bb.1:
	addl	$-1, %eax
	movl	%eax, lock(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_6
# %bb.2:
	movq	$0, lock+8(%rip)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	movq	lock+16(%rip), %rbx
	.p2align	4, 0x90
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB2_5
# %bb.3:                                #   in Loop: Header=BB2_4 Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rbx
	callq	uk_thread_wake
	jmp	.LBB2_4
.LBB2_5:
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_6:
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_7:
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end2:
	.size	uk_mutex_unlock, .Lfunc_end2-uk_mutex_unlock
                                        # -- End function
	.globl	closelog                # -- Begin function closelog
	.p2align	4, 0x90
	.type	closelog,@function
closelog:                               # @closelog
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	closelog, .Lfunc_end3-closelog
                                        # -- End function
	.globl	setlogmask              # -- Begin function setlogmask
	.p2align	4, 0x90
	.type	setlogmask,@function
setlogmask:                             # @setlogmask
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %ebx
	callq	uk_mutex_lock
	movl	log_mask(%rip), %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB4_2
# %bb.1:
	movl	%ebx, log_mask(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_2:
	callq	uk_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	setlogmask, .Lfunc_end4-setlogmask
                                        # -- End function
	.globl	syslog                  # -- Begin function syslog
	.p2align	4, 0x90
	.type	syslog,@function
syslog:                                 # @syslog
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
	movq	%rsi, %r14
	movl	%edi, %r13d
	testb	%al, %al
	je	.LBB5_2
# %bb.1:
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm1, -208(%rbp)
	movaps	%xmm2, -192(%rbp)
	movaps	%xmm3, -176(%rbp)
	movaps	%xmm4, -160(%rbp)
	movaps	%xmm5, -144(%rbp)
	movaps	%xmm6, -128(%rbp)
	movaps	%xmm7, -112(%rbp)
.LBB5_2:
	movq	%rdx, -256(%rbp)
	movq	%rcx, -248(%rbp)
	movq	%r8, -240(%rbp)
	movq	%r9, -232(%rbp)
	movl	log_mask(%rip), %eax
	movl	%r13d, %ecx
	andb	$7, %cl
	movzbl	%cl, %ecx
	btl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB5_13
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1023, %r13d            # imm = 0x3FF
	ja	.LBB5_13
# %bb.4:
	callq	uk_mutex_lock
	leaq	-272(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	$1016, %r13d            # imm = 0x3F8
	jne	.LBB5_6
# %bb.5:
	orl	log_facility(%rip), %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB5_6:
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	callq	time
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-584(%rbp), %rbx
	movq	%rbx, %rsi
	callq	gmtime_r
	leaq	-96(%rbp), %rdi
	movl	$16, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rcx
	callq	strftime
	testb	$1, log_opt(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_8
# %bb.7:
	callq	getpid
	movl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB5_8:
	xorl	%eax, %eax
	testl	%r15d, %r15d
	sete	%al
	leaq	.L.str.2(%rax), %r10
	leaq	.L.str.3(%rax), %rbx
	subq	$8, %rsp
	leaq	-528(%rbp), %rdi
	movl	$256, %r12d             # imm = 0x100
	leaq	-96(%rbp), %r8
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.1, %edx
	movl	$log_ident, %r9d
	movl	%r13d, %ecx
	xorl	%eax, %eax
	pushq	%rbx
	pushq	%r15
	pushq	%r10
	callq	snprintf
	addq	$32, %rsp
	movl	%eax, %ebx
	cltq
	leaq	(%rax,%rbp), %rdi
	addq	$-528, %rdi             # imm = 0xFDF0
	subq	%rax, %r12
	leaq	-80(%rbp), %rcx
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	vsnprintf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB5_12
# %bb.9:
	movl	$256, %ecx              # imm = 0x100
	subl	%ebx, %ecx
	addl	%eax, %ebx
	cmpl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$255, %eax
	cmovll	%ebx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rcx
	leaq	-528(%rbp), %rdx
	cmpb	$10, -1(%rcx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_11
# %bb.10:
	leal	1(%rcx), %eax
	movb	$10, -528(%rbp,%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_11:
	movslq	%eax, %r14
	andl	$7, %r13d
	xorl	%ebx, %ebx
	cmpl	$2, %r13d
	seta	%bl
	callq	__getreent
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax,%rbx,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-528(%rbp), %rdi
	movl	$1, %esi
	movq	%r14, %rdx
	callq	fwrite
	movl	$42, __A_VARIABLE(%rip)
.LBB5_12:
	callq	uk_mutex_unlock
.LBB5_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	syslog, .Lfunc_end5-syslog
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB6_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB6_2:
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
	movl	$uk_pr_crit.__str.6, %edx
	movl	$.L.str.4, %r8d
	xorl	%edi, %edi
	movl	$198, %ecx
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	uk_pr_crit, .Lfunc_end6-uk_pr_crit
                                        # -- End function
	.type	lock,@object            # @lock
	.data
	.p2align	3
lock:
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.quad	lock+16
	.size	lock, 32

	.type	log_ident,@object       # @log_ident
	.local	log_ident
	.comm	log_ident,32,16
	.type	log_opt,@object         # @log_opt
	.local	log_opt
	.comm	log_opt,4,4
	.type	log_facility,@object    # @log_facility
	.p2align	2
log_facility:
	.long	8                       # 0x8
	.size	log_facility, 4

	.type	log_mask,@object        # @log_mask
	.p2align	2
log_mask:
	.long	255                     # 0xff
	.size	log_mask, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%b %e %T"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"<%d>%s %s%s%.0d%s: "
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"["
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"]"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.4, 23

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"libnewlibglue"
	.size	uk_pr_crit.__str, 14

	.type	uk_pr_crit.__str.6,@object # @uk_pr_crit.__str.6
uk_pr_crit.__str.6:
	.asciz	"syslog.c"
	.size	uk_pr_crit.__str.6, 9

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"t"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"current"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"s"
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"m->lock_count > 0"
	.size	.L.str.10, 18

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
