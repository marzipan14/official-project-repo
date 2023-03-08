	.text
	.file	"tcpip.c"
	.globl	__tcpip_thread          # -- Begin function __tcpip_thread
	.p2align	4, 0x90
	.type	__tcpip_thread,@function
__tcpip_thread:                         # @__tcpip_thread
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	tcpip_init_done(%rip), %rax
	testq	%rax, %rax
	je	.LBB0_2
# %bb.1:
	movq	tcpip_init_done_arg(%rip), %rdi
	callq	*%rax
.LBB0_2:
	leaq	65512(%rbp), %r14
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	callq	sys_check_timeouts
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	callq	sys_timeouts_sleeptime
	testl	%eax, %eax
	je	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%eax, %ebx
	movl	$lock_tcpip_core, %edi
	cmpl	$-1, %eax
	jne	.LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	callq	sys_mutex_unlock
	movl	$tcpip_mbox, %edi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	sys_arch_mbox_fetch
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	callq	sys_mutex_unlock
	movl	$tcpip_mbox, %edi
	movq	%r14, %rsi
	movl	%ebx, %edx
	callq	sys_arch_mbox_fetch
	movl	%eax, %ebx
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	cmpl	$-1, %ebx
	je	.LBB0_10
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	65512(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB0_7
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	movl	(%rbx), %eax
	cmpl	$2, %eax
	je	.LBB0_19
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	cmpl	$1, %eax
	je	.LBB0_18
# %bb.13:                               #   in Loop: Header=BB0_3 Depth=1
	testl	%eax, %eax
	jne	.LBB0_7
# %bb.14:                               #   in Loop: Header=BB0_3 Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	callq	*24(%rbx)
	testb	%al, %al
	je	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	movq	8(%rbx), %rdi
	callq	pbuf_free
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$9, %edi
	jmp	.LBB0_17
.LBB0_18:                               #   in Loop: Header=BB0_3 Depth=1
	movq	16(%rbx), %rdi
	callq	*8(%rbx)
	movl	$8, %edi
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_3
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	movq	16(%rbx), %rdi
	callq	*8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_3
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	callq	sys_check_timeouts
	jmp	.LBB0_3
.LBB0_7:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end0:
	.size	__tcpip_thread, .Lfunc_end0-__tcpip_thread
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdi, %r10
	testb	%al, %al
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB1_2:
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
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	uk_pr_crit, .Lfunc_end1-uk_pr_crit
                                        # -- End function
	.globl	tcpip_thread            # -- Begin function tcpip_thread
	.p2align	4, 0x90
	.type	tcpip_thread,@function
tcpip_thread:                           # @tcpip_thread
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%rax
	movl	$1073741820, %esi       # imm = 0x3FFFFFFC
	#APP
	movl	%esi, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	wrpkru
	lfence
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB2_2
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB2_3
.LBB2_2:
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
	addq	$tsb_comp0, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp0:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp0
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	__tcpip_thread
.Ltmp1:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp1
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp0, %r12
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%r15
	popq	%rbp
	retq
.LBB2_3:
	callq	__tcpip_thread
.Lfunc_end2:
	.size	tcpip_thread, .Lfunc_end2-tcpip_thread
                                        # -- End function
	.globl	tcpip_inpkt             # -- Begin function tcpip_inpkt
	.p2align	4, 0x90
	.type	tcpip_inpkt,@function
tcpip_inpkt:                            # @tcpip_inpkt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	movl	$tcpip_mbox, %edi
	callq	sys_mbox_valid
	testl	%eax, %eax
	je	.LBB3_6
# %bb.1:
	movl	$9, %edi
	callq	memp_malloc
	movb	$-1, %r12b
	testq	%rax, %rax
	je	.LBB3_5
# %bb.2:
	movq	%rax, %rbx
	movl	$0, (%rax)
	movq	%r13, 8(%rax)
	movq	%r15, 16(%rax)
	movq	%r14, 24(%rax)
	movl	$tcpip_mbox, %edi
	movq	%rax, %rsi
	callq	sys_mbox_trypost
	testb	%al, %al
	je	.LBB3_3
# %bb.4:
	movl	$9, %edi
	movq	%rbx, %rsi
	callq	memp_free
	jmp	.LBB3_5
.LBB3_3:
	xorl	%r12d, %r12d
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_6:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end3:
	.size	tcpip_inpkt, .Lfunc_end3-tcpip_inpkt
                                        # -- End function
	.globl	tcpip_input             # -- Begin function tcpip_input
	.p2align	4, 0x90
	.type	tcpip_input,@function
tcpip_input:                            # @tcpip_input
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testb	$24, 261(%rsi)
	movl	$ip_input, %eax
	movl	$ethernet_input, %edx
	cmoveq	%rax, %rdx
	callq	tcpip_inpkt
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tcpip_input, .Lfunc_end4-tcpip_input
                                        # -- End function
	.globl	tcpip_callback          # -- Begin function tcpip_callback
	.p2align	4, 0x90
	.type	tcpip_callback,@function
tcpip_callback:                         # @tcpip_callback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$tcpip_mbox, %edi
	callq	sys_mbox_valid
	testl	%eax, %eax
	je	.LBB5_5
# %bb.1:
	movl	$8, %edi
	callq	memp_malloc
	testq	%rax, %rax
	je	.LBB5_2
# %bb.3:
	movl	$1, (%rax)
	movq	%rbx, 8(%rax)
	movq	%r14, 16(%rax)
	movl	$tcpip_mbox, %edi
	movq	%rax, %rsi
	callq	sys_mbox_post
	xorl	%eax, %eax
	jmp	.LBB5_4
.LBB5_2:
	movb	$-1, %al
.LBB5_4:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB5_5:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end5:
	.size	tcpip_callback, .Lfunc_end5-tcpip_callback
                                        # -- End function
	.globl	tcpip_try_callback      # -- Begin function tcpip_try_callback
	.p2align	4, 0x90
	.type	tcpip_try_callback,@function
tcpip_try_callback:                     # @tcpip_try_callback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$tcpip_mbox, %edi
	callq	sys_mbox_valid
	testl	%eax, %eax
	je	.LBB6_6
# %bb.1:
	movl	$8, %edi
	callq	memp_malloc
	movb	$-1, %r12b
	testq	%rax, %rax
	je	.LBB6_5
# %bb.2:
	movq	%rax, %rbx
	movl	$1, (%rax)
	movq	%r15, 8(%rax)
	movq	%r14, 16(%rax)
	movl	$tcpip_mbox, %edi
	movq	%rax, %rsi
	callq	sys_mbox_trypost
	testb	%al, %al
	je	.LBB6_3
# %bb.4:
	movl	$8, %edi
	movq	%rbx, %rsi
	callq	memp_free
	jmp	.LBB6_5
.LBB6_3:
	xorl	%r12d, %r12d
.LBB6_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_6:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end6:
	.size	tcpip_try_callback, .Lfunc_end6-tcpip_try_callback
                                        # -- End function
	.globl	tcpip_send_msg_wait_sem # -- Begin function tcpip_send_msg_wait_sem
	.p2align	4, 0x90
	.type	tcpip_send_msg_wait_sem,@function
tcpip_send_msg_wait_sem:                # @tcpip_send_msg_wait_sem
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	%rbx, %rdi
	callq	*%r14
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	tcpip_send_msg_wait_sem, .Lfunc_end7-tcpip_send_msg_wait_sem
                                        # -- End function
	.globl	tcpip_api_call          # -- Begin function tcpip_api_call
	.p2align	4, 0x90
	.type	tcpip_api_call,@function
tcpip_api_call:                         # @tcpip_api_call
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	%rbx, %rdi
	callq	*%r14
	movl	%eax, %ebx
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	tcpip_api_call, .Lfunc_end8-tcpip_api_call
                                        # -- End function
	.globl	tcpip_callbackmsg_new   # -- Begin function tcpip_callbackmsg_new
	.p2align	4, 0x90
	.type	tcpip_callbackmsg_new,@function
tcpip_callbackmsg_new:                  # @tcpip_callbackmsg_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$8, %edi
	callq	memp_malloc
	testq	%rax, %rax
	je	.LBB9_1
# %bb.2:
	movl	$2, (%rax)
	movq	%rbx, 8(%rax)
	movq	%r14, 16(%rax)
	jmp	.LBB9_3
.LBB9_1:
	xorl	%eax, %eax
.LBB9_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	tcpip_callbackmsg_new, .Lfunc_end9-tcpip_callbackmsg_new
                                        # -- End function
	.globl	tcpip_callbackmsg_delete # -- Begin function tcpip_callbackmsg_delete
	.p2align	4, 0x90
	.type	tcpip_callbackmsg_delete,@function
tcpip_callbackmsg_delete:               # @tcpip_callbackmsg_delete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	movl	$8, %edi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tcpip_callbackmsg_delete, .Lfunc_end10-tcpip_callbackmsg_delete
                                        # -- End function
	.globl	tcpip_callbackmsg_trycallback # -- Begin function tcpip_callbackmsg_trycallback
	.p2align	4, 0x90
	.type	tcpip_callbackmsg_trycallback,@function
tcpip_callbackmsg_trycallback:          # @tcpip_callbackmsg_trycallback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$tcpip_mbox, %edi
	callq	sys_mbox_valid
	testl	%eax, %eax
	je	.LBB11_2
# %bb.1:
	movl	$tcpip_mbox, %edi
	movq	%rbx, %rsi
	callq	sys_mbox_trypost
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB11_2:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end11:
	.size	tcpip_callbackmsg_trycallback, .Lfunc_end11-tcpip_callbackmsg_trycallback
                                        # -- End function
	.globl	tcpip_callbackmsg_trycallback_fromisr # -- Begin function tcpip_callbackmsg_trycallback_fromisr
	.p2align	4, 0x90
	.type	tcpip_callbackmsg_trycallback_fromisr,@function
tcpip_callbackmsg_trycallback_fromisr:  # @tcpip_callbackmsg_trycallback_fromisr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$tcpip_mbox, %edi
	callq	sys_mbox_valid
	testl	%eax, %eax
	je	.LBB12_2
# %bb.1:
	movl	$tcpip_mbox, %edi
	movq	%rbx, %rsi
	callq	sys_mbox_trypost_fromisr
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB12_2:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end12:
	.size	tcpip_callbackmsg_trycallback_fromisr, .Lfunc_end12-tcpip_callbackmsg_trycallback_fromisr
                                        # -- End function
	.globl	tcpip_init              # -- Begin function tcpip_init
	.p2align	4, 0x90
	.type	tcpip_init,@function
tcpip_init:                             # @tcpip_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	lwip_init
	movq	%rbx, tcpip_init_done(%rip)
	movq	%r14, tcpip_init_done_arg(%rip)
	movl	$tcpip_mbox, %edi
	movl	$256, %esi              # imm = 0x100
	callq	sys_mbox_new
	testb	%al, %al
	jne	.LBB13_1
# %bb.3:
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_new
	testb	%al, %al
	jne	.LBB13_4
# %bb.5:
	movl	$tcpip_init.__str, %edi
	movl	$tcpip_thread, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	sys_thread_new
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB13_1:
	movl	$.L.str.4, %edi
	jmp	.LBB13_2
.LBB13_4:
	movl	$.L.str.5, %edi
.LBB13_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end13:
	.size	tcpip_init, .Lfunc_end13-tcpip_init
                                        # -- End function
	.globl	pbuf_free_callback      # -- Begin function pbuf_free_callback
	.p2align	4, 0x90
	.type	pbuf_free_callback,@function
pbuf_free_callback:                     # @pbuf_free_callback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	movl	$pbuf_free_int, %edi
	callq	tcpip_try_callback
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pbuf_free_callback, .Lfunc_end14-pbuf_free_callback
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function pbuf_free_int
	.type	pbuf_free_int,@function
pbuf_free_int:                          # @pbuf_free_int
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	pbuf_free_int, .Lfunc_end15-pbuf_free_int
                                        # -- End function
	.globl	mem_free_callback       # -- Begin function mem_free_callback
	.p2align	4, 0x90
	.type	mem_free_callback,@function
mem_free_callback:                      # @mem_free_callback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	movl	$mem_free, %edi
	callq	tcpip_try_callback
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end16:
	.size	mem_free_callback, .Lfunc_end16-mem_free_callback
                                        # -- End function
	.type	lock_tcpip_core,@object # @lock_tcpip_core
	.section	.data_shared,"aw",@progbits
	.globl	lock_tcpip_core
	.p2align	3
lock_tcpip_core:
	.zero	40
	.size	lock_tcpip_core, 40

	.type	tcpip_init_done,@object # @tcpip_init_done
	.local	tcpip_init_done
	.comm	tcpip_init_done,8,8
	.type	tcpip_init_done_arg,@object # @tcpip_init_done_arg
	.local	tcpip_init_done_arg
	.comm	tcpip_init_done_arg,8,8
	.type	tcpip_mbox,@object      # @tcpip_mbox
	.p2align	3
tcpip_mbox:
	.zero	24
	.size	tcpip_mbox, 24

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tcpip_thread: invalid message"
	.size	.L.str, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"!(1)"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Invalid mbox"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"failed to create tcpip_thread mbox"
	.size	.L.str.4, 35

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"failed to create lock_tcpip_core"
	.size	.L.str.5, 33

	.type	tcpip_init.__str,@object # @tcpip_init.__str
	.section	.data_shared,"aw",@progbits
tcpip_init.__str:
	.asciz	"lwip"
	.size	tcpip_init.__str, 5

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.6,@object # @uk_pr_crit.__str.6
uk_pr_crit.__str.6:
	.asciz	"tcpip.c"
	.size	uk_pr_crit.__str.6, 8

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
