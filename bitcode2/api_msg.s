	.text
	.file	"api_msg.c"
	.globl	lwip_netconn_is_err_msg # -- Begin function lwip_netconn_is_err_msg
	.p2align	4, 0x90
	.type	lwip_netconn_is_err_msg,@function
lwip_netconn_is_err_msg:                # @lwip_netconn_is_err_msg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_9
# %bb.1:
	movl	$netconn_aborted, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB0_2
# %bb.3:
	movl	$netconn_reset, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB0_4
# %bb.5:
	movl	$netconn_closed, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdi
	jne	.LBB0_8
# %bb.6:
	movb	$-15, %al
	jmp	.LBB0_7
.LBB0_2:
	movb	$-13, %al
	jmp	.LBB0_7
.LBB0_4:
	movb	$-14, %al
.LBB0_7:
	movb	%al, (%rsi)
	movl	$1, %eax
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB0_9:
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
	.size	lwip_netconn_is_err_msg, .Lfunc_end0-lwip_netconn_is_err_msg
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
	movl	$uk_pr_crit.__str.15, %edx
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
	.globl	lwip_netconn_do_newconn # -- Begin function lwip_netconn_do_newconn
	.p2align	4, 0x90
	.type	lwip_netconn_do_newconn,@function
lwip_netconn_do_newconn:                # @lwip_netconn_do_newconn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movb	$0, 8(%rdi)
	movq	(%rdi), %rax
	cmpq	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_16
# %bb.1:
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	jne	.LBB2_3
# %bb.2:
	xorl	%ecx, %ecx
	jmp	.LBB2_4
.LBB2_3:
	movl	$42, __A_VARIABLE(%rip)
	movb	$46, %cl
.LBB2_4:
	movl	$42, __A_VARIABLE(%rip)
	andb	$-16, %al
	cmpb	$16, %al
	je	.LBB2_10
# %bb.5:
	cmpb	$32, %al
	jne	.LBB2_17
# %bb.6:
	movzbl	%cl, %edi
	callq	udp_new_ip_type
	movq	(%rbx), %rcx
	movq	%rax, 8(%rcx)
	movq	(%rbx), %rdx
	movq	8(%rdx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_13
# %bb.7:
	movl	$243, %eax
	andl	(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$34, %eax
	jne	.LBB2_9
# %bb.8:
	movb	$1, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rdx), %rdi
.LBB2_9:
	movl	$recv_udp, %esi
	callq	udp_recv
	jmp	.LBB2_12
.LBB2_10:
	movzbl	%cl, %edi
	callq	tcp_new_ip_type
	movq	(%rbx), %rcx
	movq	%rax, 8(%rcx)
	movq	(%rbx), %rsi
	movq	8(%rsi), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB2_13
# %bb.11:
	movq	%r14, %rdi
	callq	tcp_arg
	movl	$recv_tcp, %esi
	movq	%r14, %rdi
	callq	tcp_recv
	movl	$sent_tcp, %esi
	movq	%r14, %rdi
	callq	tcp_sent
	movl	$poll_tcp, %esi
	movq	%r14, %rdi
	movl	$2, %edx
	callq	tcp_poll
	movl	$err_tcp, %esi
	movq	%r14, %rdi
	callq	tcp_err
	movl	$42, __A_VARIABLE(%rip)
.LBB2_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_13:
	movq	(%rbx), %rax
	cmpq	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_15
# %bb.14:
	movb	$-1, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_15
.LBB2_17:
	movb	$-6, 8(%rbx)
.LBB2_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_16:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	lwip_netconn_do_newconn, .Lfunc_end2-lwip_netconn_do_newconn
                                        # -- End function
	.globl	netconn_alloc           # -- Begin function netconn_alloc
	.p2align	4, 0x90
	.type	netconn_alloc,@function
netconn_alloc:                          # @netconn_alloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edi, %r15d
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_1
# %bb.2:
	movq	%rsi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
	movl	$128, %edx
	callq	*8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_14
# %bb.3:
	movq	%rax, %rbx
	movb	$0, 16(%rax)
	movl	%r15d, (%rax)
	movq	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	andb	$-16, %r15b
	cmpb	$16, %r15b
	je	.LBB3_6
# %bb.4:
	cmpb	$32, %r15b
	jne	.LBB3_5
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
	leaq	56(%rbx), %r15
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	sys_mbox_new
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB3_9
# %bb.7:
	leaq	24(%rbx), %rdi
	xorl	%esi, %esi
	callq	sys_sem_new
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB3_16
# %bb.8:
	movq	%r15, %rdi
	callq	sys_mbox_free
	movl	$42, __A_VARIABLE(%rip)
.LBB3_9:
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_10
# %bb.12:
	movq	%rbx, %rsi
	callq	*40(%rdi)
.LBB3_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_14:
	xorl	%ebx, %ebx
.LBB3_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_16:
	movq	%rbx, %rdi
	addq	$80, %rdi
	callq	sys_mbox_set_invalid
	movl	$0, 4(%rbx)
	movl	$-1, 104(%rbx)
	movq	%r14, 120(%rbx)
	movq	$0, 112(%rbx)
	movb	$0, 108(%rbx)
	jmp	.LBB3_15
.LBB3_1:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_13
.LBB3_5:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	jmp	.LBB3_11
.LBB3_10:
	movl	$.L.str.1, %edi
	movl	$.L.str.20, %esi
.LBB3_11:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end3:
	.size	netconn_alloc, .Lfunc_end3-netconn_alloc
                                        # -- End function
	.globl	netconn_free            # -- Begin function netconn_free
	.p2align	4, 0x90
	.type	netconn_free,@function
netconn_free:                           # @netconn_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	cmpq	$0, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_1
# %bb.3:
	movq	%rdi, %r14
	addq	$56, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB4_4
# %bb.5:
	leaq	80(%r14), %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB4_6
# %bb.7:
	leaq	24(%r14), %rbx
	movq	%rbx, %rdi
	callq	sys_sem_free
	movq	%rbx, %rdi
	callq	sys_sem_set_invalid
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_8
# %bb.10:
	movq	%r14, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB4_1:
	movl	$.L.str.4, %edi
	jmp	.LBB4_2
.LBB4_4:
	movl	$.L.str.5, %edi
	jmp	.LBB4_2
.LBB4_6:
	movl	$.L.str.6, %edi
.LBB4_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	jmp	.LBB4_9
.LBB4_8:
	movl	$.L.str.1, %edi
	movl	$.L.str.20, %esi
.LBB4_9:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end4:
	.size	netconn_free, .Lfunc_end4-netconn_free
                                        # -- End function
	.globl	lwip_netconn_do_delconn # -- Begin function lwip_netconn_do_delconn
	.p2align	4, 0x90
	.type	lwip_netconn_do_delconn,@function
lwip_netconn_do_delconn:                # @lwip_netconn_do_delconn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movl	4(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_6
# %bb.1:
	movl	$240, %ecx
	andl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ecx
	jne	.LBB5_26
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andl	$-2, %ecx
	cmpl	$2, %ecx
	jne	.LBB5_5
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB5_7
# %bb.4:
	testb	$4, 108(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_24
.LBB5_5:
	movb	$-5, 8(%rbx)
	jmp	.LBB5_16
.LBB5_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_8:
	movb	$0, 8(%rbx)
	callq	netconn_drain
	movq	(%rbx), %rdi
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_13
# %bb.9:
	movb	(%rdi), %cl
	movl	$42, __A_VARIABLE(%rip)
	andb	$-16, %cl
	cmpb	$16, %cl
	je	.LBB5_19
# %bb.10:
	addq	$8, %rdi
	cmpb	$32, %cl
	jne	.LBB5_12
# %bb.11:
	movq	$0, 88(%rax)
	movq	(%rdi), %rdi
	callq	udp_remove
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	addq	$8, %rdi
.LBB5_12:
	movq	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
.LBB5_13:
	movq	120(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_16
# %bb.14:
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	movq	120(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_17
# %bb.15:
	movl	$2, %esi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	jmp	.LBB5_17
.LBB5_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_17:
	addq	$24, %rdi
	callq	sys_sem_valid
.LBB5_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB5_19:
	cmpq	$0, 112(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_28
# %bb.20:
	movl	$4, 4(%rdi)
	movb	$3, 16(%rbx)
	movq	%rbx, 112(%rdi)
	xorl	%esi, %esi
	callq	lwip_netconn_do_close_internal
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB5_18
# %bb.21:
	movq	(%rbx), %rax
	cmpl	$4, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_23
# %bb.22:
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	movq	(%rbx), %rdi
	addq	$24, %rdi
	xorl	%esi, %esi
	callq	sys_arch_sem_wait
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	(%rbx), %rax
	cmpl	$0, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_18
.LBB5_23:
	movl	$.L.str.10, %edi
	jmp	.LBB5_27
.LBB5_24:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, 108(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_8
# %bb.25:
	movl	$.L.str.8, %edi
	jmp	.LBB5_27
.LBB5_26:
	movl	$.L.str.7, %edi
.LBB5_27:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB5_28:
	movl	$.L.str.9, %edi
	jmp	.LBB5_27
.Lfunc_end5:
	.size	lwip_netconn_do_delconn, .Lfunc_end5-lwip_netconn_do_delconn
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function netconn_drain
	.type	netconn_drain,@function
netconn_drain:                          # @netconn_drain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r12
	leaq	56(%rdi), %r14
	movq	%r14, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB6_13
# %bb.1:
	leaq	-48(%rbp), %rsi
	movq	%r14, %rdi
	callq	sys_arch_mbox_tryfetch
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB6_12
# %bb.2:
	movl	$240, %ebx
	movl	$netconn_aborted, %r13d
	leaq	-48(%rbp), %r15
	jmp	.LBB6_3
	.p2align	4, 0x90
.LBB6_10:                               #   in Loop: Header=BB6_3 Depth=1
	movq	-48(%rbp), %rdi
	callq	netbuf_delete
.LBB6_11:                               #   in Loop: Header=BB6_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	sys_arch_mbox_tryfetch
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB6_12
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	movl	(%r12), %eax
	andl	%ebx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB6_10
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	movq	-48(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rdi
	je	.LBB6_8
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$netconn_reset, %eax
	cmpq	%rax, %rdi
	je	.LBB6_8
# %bb.6:                                #   in Loop: Header=BB6_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$netconn_closed, %eax
	cmpq	%rax, %rdi
	je	.LBB6_9
# %bb.7:                                #   in Loop: Header=BB6_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_11
	.p2align	4, 0x90
.LBB6_8:                                #   in Loop: Header=BB6_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB6_9:                                #   in Loop: Header=BB6_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_11
.LBB6_12:
	movq	%r14, %rdi
	callq	sys_mbox_free
	movq	%r14, %rdi
	callq	sys_mbox_set_invalid
	movl	$42, __A_VARIABLE(%rip)
.LBB6_13:
	addq	$80, %r12
	movq	%r12, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB6_26
# %bb.14:
	leaq	-48(%rbp), %rsi
	movq	%r12, %rdi
	callq	sys_arch_mbox_tryfetch
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB6_25
# %bb.15:                               # %.preheader
	movl	$netconn_aborted, %r15d
	leaq	-48(%rbp), %r14
	movl	$netconn_reset, %r13d
	jmp	.LBB6_16
	.p2align	4, 0x90
.LBB6_22:                               #   in Loop: Header=BB6_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB6_23:                               #   in Loop: Header=BB6_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB6_24:                               #   in Loop: Header=BB6_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	sys_arch_mbox_tryfetch
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB6_25
.LBB6_16:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	je	.LBB6_22
# %bb.17:                               #   in Loop: Header=BB6_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	je	.LBB6_22
# %bb.18:                               #   in Loop: Header=BB6_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$netconn_closed, %eax
	cmpq	%rax, %rbx
	je	.LBB6_23
# %bb.19:                               #   in Loop: Header=BB6_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	netconn_drain
	movq	8(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB6_21
# %bb.20:                               #   in Loop: Header=BB6_16 Depth=1
	callq	tcp_abort
	movq	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_21:                               #   in Loop: Header=BB6_16 Depth=1
	movq	%rbx, %rdi
	callq	netconn_free
	jmp	.LBB6_24
.LBB6_25:
	movq	%r12, %rdi
	callq	sys_mbox_free
	movq	%r12, %rdi
	callq	sys_mbox_set_invalid
	movl	$42, __A_VARIABLE(%rip)
.LBB6_26:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	netconn_drain, .Lfunc_end6-netconn_drain
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lwip_netconn_do_close_internal
	.type	lwip_netconn_do_close_internal,@function
lwip_netconn_do_close_internal:         # @lwip_netconn_do_close_internal
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
	je	.LBB7_1
# %bb.3:
	movq	%rdi, %r13
	movl	$240, %eax
	andl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB7_4
# %bb.5:
	cmpl	$4, 4(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_6
# %bb.7:
	movq	8(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_8
# %bb.9:
	movq	112(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_10
# %bb.11:
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movzbl	16(%rax), %eax
	movl	%eax, %r12d
	andl	$1, %r12d
	movl	%eax, %r15d
	andl	$2, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	je	.LBB7_19
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r12b, %r12b
	je	.LBB7_16
# %bb.13:
	movl	72(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	je	.LBB7_19
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	je	.LBB7_19
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	je	.LBB7_19
.LBB7_16:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r15b, %r15b
	je	.LBB7_18
# %bb.17:
	movzwl	82(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB7_19
.LBB7_18:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	jmp	.LBB7_20
.LBB7_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_arg
	movb	$1, %r14b
.LBB7_20:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_21
# %bb.27:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_accept
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	jne	.LBB7_28
	jmp	.LBB7_30
.LBB7_21:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r12b, %r12b
	je	.LBB7_23
# %bb.22:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_recv
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_accept
	movl	$42, __A_VARIABLE(%rip)
.LBB7_23:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r15b, %r15b
	je	.LBB7_25
# %bb.24:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_sent
	movl	$42, __A_VARIABLE(%rip)
.LBB7_25:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB7_29
# %bb.26:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	tcp_poll
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_err
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_28:
	movq	%rbx, %rdi
	callq	tcp_close
                                        # kill: def $al killed $al def $eax
	movb	$1, %r14b
	jmp	.LBB7_31
.LBB7_29:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_30:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	callq	tcp_shutdown
                                        # kill: def $al killed $al def $eax
	xorl	%r14d, %r14d
.LBB7_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB7_36
# %bb.32:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	jne	.LBB7_37
# %bb.33:
	movq	112(%r13), %rax
	cmpb	$0, 17(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_34
# %bb.51:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_52
# %bb.53:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r15b, %r15b
	je	.LBB7_55
# %bb.54:
	movl	$sent_tcp, %esi
	movq	%rbx, %rdi
	callq	tcp_sent
	movl	$42, __A_VARIABLE(%rip)
.LBB7_55:
	movl	$poll_tcp, %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	tcp_poll
	movl	$err_tcp, %esi
	movq	%rbx, %rdi
	callq	tcp_err
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	tcp_arg
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %al
	jmp	.LBB7_56
.LBB7_34:
	movb	$-1, %al
	testb	%r14b, %r14b
	je	.LBB7_38
# %bb.35:
	movq	%rbx, %rdi
	callq	tcp_abort
.LBB7_36:
	xorl	%eax, %eax
.LBB7_37:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_38:
	movl	$42, __A_VARIABLE(%rip)
	movq	112(%r13), %rcx
	movq	(%rcx), %rbx
	movb	%al, 8(%rcx)
	movq	$0, 112(%r13)
	movl	$0, 4(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB7_39
.LBB7_48:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -44(%rbp)           # 1-byte Folded Reload
	je	.LBB7_49
# %bb.50:
	addq	$24, %rbx
	movq	%rbx, %rdi
	callq	sys_sem_signal
	xorl	%eax, %eax
.LBB7_56:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_57
.LBB7_39:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB7_42
# %bb.40:
	movq	$0, 8(%r13)
	movq	120(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_42
# %bb.41:
	movq	%r13, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB7_42:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r12b, %r12b
	je	.LBB7_45
# %bb.43:
	movq	120(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_45
# %bb.44:
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB7_45:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r15b, %r15b
	je	.LBB7_48
# %bb.46:
	movq	120(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_48
# %bb.47:
	movq	%r13, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_48
.LBB7_49:
	xorl	%eax, %eax
.LBB7_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_1:
	movl	$.L.str.21, %edi
	jmp	.LBB7_2
.LBB7_4:
	movl	$.L.str.22, %edi
	jmp	.LBB7_2
.LBB7_6:
	movl	$.L.str.23, %edi
	jmp	.LBB7_2
.LBB7_8:
	movl	$.L.str.24, %edi
	jmp	.LBB7_2
.LBB7_10:
	movl	$.L.str.25, %edi
.LBB7_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB7_52:
	movl	$.L.str.26, %edi
	jmp	.LBB7_2
.Lfunc_end7:
	.size	lwip_netconn_do_close_internal, .Lfunc_end7-lwip_netconn_do_close_internal
                                        # -- End function
	.globl	lwip_netconn_do_bind    # -- Begin function lwip_netconn_do_bind
	.p2align	4, 0x90
	.type	lwip_netconn_do_bind,@function
lwip_netconn_do_bind:                   # @lwip_netconn_do_bind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rcx
	movq	8(%rcx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movb	$-6, %al
	testq	%rdi, %rdi
	je	.LBB8_5
# %bb.1:
	movb	(%rcx), %cl
	movl	$42, __A_VARIABLE(%rip)
	andb	$-16, %cl
	cmpb	$16, %cl
	je	.LBB8_4
# %bb.2:
	cmpb	$32, %cl
	jne	.LBB8_5
# %bb.3:
	movq	16(%rbx), %rsi
	movzwl	24(%rbx), %edx
	callq	udp_bind
	jmp	.LBB8_5
.LBB8_4:
	movq	16(%rbx), %rsi
	movzwl	24(%rbx), %edx
	callq	tcp_bind
.LBB8_5:
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	lwip_netconn_do_bind, .Lfunc_end8-lwip_netconn_do_bind
                                        # -- End function
	.globl	lwip_netconn_do_bind_if # -- Begin function lwip_netconn_do_bind_if
	.p2align	4, 0x90
	.type	lwip_netconn_do_bind_if,@function
lwip_netconn_do_bind_if:                # @lwip_netconn_do_bind_if
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movzbl	26(%rdi), %edi
	callq	netif_get_by_index
	movl	$42, __A_VARIABLE(%rip)
	movb	$-6, %cl
	testq	%rax, %rax
	je	.LBB9_7
# %bb.1:
	movq	(%rbx), %rdx
	movq	8(%rdx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB9_7
# %bb.2:
	movb	(%rdx), %dl
	movl	$42, __A_VARIABLE(%rip)
	andb	$-16, %dl
	cmpb	$16, %dl
	je	.LBB9_5
# %bb.3:
	cmpb	$32, %dl
	jne	.LBB9_7
# %bb.4:
	movq	%rax, %rsi
	callq	udp_bind_netif
	jmp	.LBB9_6
.LBB9_5:
	movq	%rax, %rsi
	callq	tcp_bind_netif
.LBB9_6:
	xorl	%ecx, %ecx
.LBB9_7:
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	lwip_netconn_do_bind_if, .Lfunc_end9-lwip_netconn_do_bind_if
                                        # -- End function
	.globl	lwip_netconn_do_connect # -- Begin function lwip_netconn_do_connect
	.p2align	4, 0x90
	.type	lwip_netconn_do_connect,@function
lwip_netconn_do_connect:                # @lwip_netconn_do_connect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	(%rdi), %rsi
	movq	8(%rsi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB10_1
# %bb.2:
	movb	(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	andb	$-16, %al
	cmpb	$16, %al
	je	.LBB10_5
# %bb.3:
	cmpb	$32, %al
	jne	.LBB10_17
# %bb.4:
	movq	16(%r14), %rsi
	movzwl	24(%r14), %edx
	movq	%rbx, %rdi
	callq	udp_connect
	jmp	.LBB10_10
.LBB10_1:
	movb	$-15, %al
	jmp	.LBB10_10
.LBB10_5:
	movl	4(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movb	$-9, %al
	cmpl	$3, %ecx
	je	.LBB10_10
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-10, %al
	testl	%ecx, %ecx
	je	.LBB10_7
.LBB10_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_11:
	movb	%al, 8(%r14)
.LBB10_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB10_7:
	movq	%rbx, %rdi
	callq	tcp_arg
	movl	$recv_tcp, %esi
	movq	%rbx, %rdi
	callq	tcp_recv
	movl	$sent_tcp, %esi
	movq	%rbx, %rdi
	callq	tcp_sent
	movl	$poll_tcp, %esi
	movq	%rbx, %rdi
	movl	$2, %edx
	callq	tcp_poll
	movl	$err_tcp, %esi
	movq	%rbx, %rdi
	callq	tcp_err
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rax
	movq	16(%r14), %rsi
	movq	8(%rax), %rdi
	movzwl	24(%r14), %edx
	movl	$lwip_netconn_do_connected, %ecx
	callq	tcp_connect
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB10_11
# %bb.8:
	movq	(%r14), %rax
	movb	108(%rax), %cl
	movl	$3, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB10_9
# %bb.12:
	andb	$-5, %cl
	movb	%cl, 108(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, 112(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	movq	(%r14), %rdi
	addq	$24, %rdi
	xorl	%esi, %esi
	callq	sys_arch_sem_wait
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	(%r14), %rax
	cmpl	$3, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_13
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_16
.LBB10_9:
	orb	$4, %cl
	movb	%cl, 108(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-5, %al
	jmp	.LBB10_10
.LBB10_17:
	movl	$.L.str.11, %edi
.LBB10_14:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB10_13:
	movl	$.L.str.10, %edi
	jmp	.LBB10_14
.Lfunc_end10:
	.size	lwip_netconn_do_connect, .Lfunc_end10-lwip_netconn_do_connect
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lwip_netconn_do_connected
	.type	lwip_netconn_do_connected,@function
lwip_netconn_do_connected:              # @lwip_netconn_do_connected
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_1
# %bb.2:
	movq	%rdi, %rbx
	cmpl	$3, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_3
# %bb.5:
	movq	112(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_6
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movb	%dl, 8(%rax)
	movq	(%rax), %r14
	addq	$24, %r14
	jmp	.LBB11_10
.LBB11_1:
	movb	$-6, %al
	jmp	.LBB11_23
.LBB11_6:
	testb	$4, 108(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_8
# %bb.7:
	xorl	%r14d, %r14d
.LBB11_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$240, %eax
	andl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB11_13
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	jne	.LBB11_13
# %bb.12:
	movq	8(%rbx), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	tcp_arg
	movl	$recv_tcp, %esi
	movq	%r15, %rdi
	callq	tcp_recv
	movl	$sent_tcp, %esi
	movq	%r15, %rdi
	callq	tcp_sent
	movl	$poll_tcp, %esi
	movq	%r15, %rdi
	movl	$2, %edx
	callq	tcp_poll
	movl	$err_tcp, %esi
	movq	%r15, %rdi
	callq	tcp_err
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_13:
	movb	108(%rbx), %r15b
	movl	%r15d, %eax
	andb	$4, %al
	movl	%r15d, %ecx
	andb	$-5, %cl
	movb	%cl, 108(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB11_15
# %bb.14:
	testb	%al, %al
	je	.LBB11_18
.LBB11_15:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB11_17
# %bb.16:
	testb	%al, %al
	je	.LBB11_17
.LBB11_18:
	movq	$0, 112(%rbx)
	movl	$0, 4(%rbx)
	movq	120(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_20
# %bb.19:
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB11_20:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r15b
	jne	.LBB11_22
# %bb.21:
	movq	%r14, %rdi
	callq	sys_sem_signal
	movl	$42, __A_VARIABLE(%rip)
.LBB11_22:
	xorl	%eax, %eax
.LBB11_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_3:
	movl	$.L.str.36, %edi
	jmp	.LBB11_4
.LBB11_17:
	movl	$.L.str.38, %edi
	jmp	.LBB11_4
.LBB11_8:
	movl	$.L.str.37, %edi
.LBB11_4:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end11:
	.size	lwip_netconn_do_connected, .Lfunc_end11-lwip_netconn_do_connected
                                        # -- End function
	.globl	lwip_netconn_do_disconnect # -- Begin function lwip_netconn_do_disconnect
	.p2align	4, 0x90
	.type	lwip_netconn_do_disconnect,@function
lwip_netconn_do_disconnect:             # @lwip_netconn_do_disconnect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movl	$240, %edx
	andl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movb	$-6, %cl
	cmpl	$32, %edx
	jne	.LBB12_2
# %bb.1:
	movq	8(%rax), %rdi
	callq	udp_disconnect
	xorl	%ecx, %ecx
.LBB12_2:
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	lwip_netconn_do_disconnect, .Lfunc_end12-lwip_netconn_do_disconnect
                                        # -- End function
	.globl	lwip_netconn_do_listen  # -- Begin function lwip_netconn_do_listen
	.p2align	4, 0x90
	.type	lwip_netconn_do_listen,@function
lwip_netconn_do_listen:                 # @lwip_netconn_do_listen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movq	8(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB13_29
# %bb.1:
	movl	$240, %ecx
	andl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ecx
	jne	.LBB13_28
# %bb.2:
	movl	4(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB13_3
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB13_29
# %bb.27:
	movb	$0, -17(%rbp)
	xorl	%eax, %eax
	jmp	.LBB13_30
.LBB13_29:
	movb	$-11, -17(%rbp)
	movb	$-11, %al
	jmp	.LBB13_30
.LBB13_28:
	movb	$-16, -17(%rbp)
	movb	$-16, %al
.LBB13_30:
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB13_3:
	cmpl	$0, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB13_5
# %bb.4:
	movb	$-6, -17(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-6, %al
	jmp	.LBB13_30
.LBB13_5:
	movb	20(%rdi), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	ip6_addr_any+20(%rip), %cl
	jne	.LBB13_15
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %edx
	movl	ip6_addr_any(%rip), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %cl
	jne	.LBB13_12
# %bb.7:
	cmpl	%esi, %edx
	jne	.LBB13_15
# %bb.8:
	movl	4(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	ip6_addr_any+4(%rip), %ecx
	jne	.LBB13_15
# %bb.9:
	movl	8(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	ip6_addr_any+8(%rip), %ecx
	jne	.LBB13_15
# %bb.10:
	movl	12(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	ip6_addr_any+12(%rip), %ecx
	jne	.LBB13_15
# %bb.11:
	movb	16(%rdi), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	ip6_addr_any+16(%rip), %cl
	je	.LBB13_13
	jmp	.LBB13_15
.LBB13_12:
	cmpl	%esi, %edx
	jne	.LBB13_15
.LBB13_13:
	testb	$32, 108(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_15
# %bb.14:
	movb	$46, 20(%rdi)
	movq	8(%rax), %rcx
	movb	$46, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rax), %rdi
.LBB13_15:
	leaq	-17(%rbp), %rdx
	movl	$255, %esi
	callq	tcp_listen_with_backlog_and_err
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_25
# %bb.16:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	addq	$56, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_18
# %bb.17:
	movq	(%rbx), %rdi
	addq	$56, %rdi
	callq	sys_mbox_free
	movq	(%rbx), %rdi
	addq	$56, %rdi
	callq	sys_mbox_set_invalid
	movl	$42, __A_VARIABLE(%rip)
.LBB13_18:
	movb	$0, -17(%rbp)
	movq	(%rbx), %rdi
	addq	$80, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_19
# %bb.20:
	movb	-17(%rbp), %al
	jmp	.LBB13_21
.LBB13_19:
	movq	(%rbx), %rdi
	addq	$80, %rdi
	xorl	%esi, %esi
	callq	sys_mbox_new
	movb	%al, -17(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_21:
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB13_22
# %bb.23:
	movq	%r14, %rdi
	callq	tcp_close
	movq	(%rbx), %rax
	movq	$0, 8(%rax)
	jmp	.LBB13_24
.LBB13_22:
	movq	(%rbx), %rax
	movl	$2, 4(%rax)
	movq	%r14, 8(%rax)
	movq	(%rbx), %rsi
	movq	8(%rsi), %rdi
	callq	tcp_arg
	movq	(%rbx), %rax
	movq	8(%rax), %rdi
	movl	$accept_function, %esi
	callq	tcp_accept
.LBB13_24:
	movl	$42, __A_VARIABLE(%rip)
.LBB13_25:
	movl	$42, __A_VARIABLE(%rip)
	movb	-17(%rbp), %al
	jmp	.LBB13_30
.Lfunc_end13:
	.size	lwip_netconn_do_listen, .Lfunc_end13-lwip_netconn_do_listen
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function accept_function
	.type	accept_function,@function
accept_function:                        # @accept_function
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
	movb	$-6, %r14b
	testq	%rdi, %rdi
	je	.LBB14_14
# %bb.1:
	movl	%edx, %ebx
	movq	%rsi, %r13
	movq	%rdi, %r12
	leaq	80(%rdi), %r15
	movq	%r15, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB14_14
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB14_3
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	jne	.LBB14_15
# %bb.7:
	movl	(%r12), %edi
	movq	120(%r12), %rsi
	callq	netconn_alloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_8
# %bb.9:
	movq	%rax, %r14
	movq	%r13, 8(%rax)
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	tcp_arg
	movl	$recv_tcp, %esi
	movq	%r13, %rdi
	callq	tcp_recv
	movl	$sent_tcp, %esi
	movq	%r13, %rdi
	callq	tcp_sent
	movl	$poll_tcp, %esi
	movq	%r13, %rdi
	movl	$2, %edx
	callq	tcp_poll
	movl	$err_tcp, %esi
	movq	%r13, %rdi
	callq	tcp_err
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	sys_mbox_trypost
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB14_11
# %bb.10:
	movq	8(%r14), %rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_arg
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_recv
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_sent
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	tcp_poll
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_err
	movq	$0, 8(%r14)
	movq	%r14, %rbx
	addq	$56, %rbx
	movq	%rbx, %rdi
	callq	sys_mbox_free
	movq	%rbx, %rdi
	callq	sys_mbox_set_invalid
	movq	%r14, %rdi
	callq	netconn_free
	movb	$-1, %r14b
	jmp	.LBB14_14
.LBB14_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$netconn_aborted, %esi
	movq	%r15, %rdi
	callq	sys_mbox_trypost
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB14_14
	jmp	.LBB14_5
.LBB14_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$netconn_aborted, %esi
	movq	%r15, %rdi
	callq	sys_mbox_trypost
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %r14b
	testb	%al, %al
	jne	.LBB14_14
.LBB14_5:
	movq	120(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_14
.LBB14_13:
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB14_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_11:
	movq	120(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	testq	%rax, %rax
	jne	.LBB14_13
	jmp	.LBB14_14
.LBB14_15:
	movl	$.L.str.39, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end14:
	.size	accept_function, .Lfunc_end14-accept_function
                                        # -- End function
	.globl	lwip_netconn_do_send    # -- Begin function lwip_netconn_do_send
	.p2align	4, 0x90
	.type	lwip_netconn_do_send,@function
lwip_netconn_do_send:                   # @lwip_netconn_do_send
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	callq	netconn_err
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB15_14
# %bb.1:
	movq	(%rbx), %rcx
	movq	8(%rcx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movb	$-11, %al
	testq	%rdi, %rdi
	je	.LBB15_13
# %bb.2:
	movl	$240, %edx
	andl	(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %edx
	jne	.LBB15_13
# %bb.3:
	movq	16(%rbx), %rax
	movb	36(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %cl
	jne	.LBB15_10
# %bb.4:
	testl	%edx, %edx
	jne	.LBB15_8
# %bb.5:
	cmpl	$0, 20(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_8
# %bb.6:
	cmpl	$0, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_8
# %bb.7:
	cmpl	$0, 28(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_12
.LBB15_8:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_9
.LBB15_10:
	testl	%edx, %edx
	je	.LBB15_12
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %cl
	jne	.LBB15_9
.LBB15_12:
	movq	(%rax), %rsi
	callq	udp_send
	jmp	.LBB15_13
.LBB15_9:
	movq	(%rax), %rsi
	movzwl	40(%rax), %ecx
	leaq	16(%rax), %rdx
	callq	udp_sendto
.LBB15_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_14:
	movb	%al, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	lwip_netconn_do_send, .Lfunc_end15-lwip_netconn_do_send
                                        # -- End function
	.globl	lwip_netconn_do_recv    # -- Begin function lwip_netconn_do_recv
	.p2align	4, 0x90
	.type	lwip_netconn_do_recv,@function
lwip_netconn_do_recv:                   # @lwip_netconn_do_recv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movb	$0, 8(%rdi)
	movq	(%rdi), %rax
	movq	8(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB16_5
# %bb.1:
	movl	$240, %ecx
	andl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ecx
	jne	.LBB16_5
# %bb.2:
	movq	16(%r14), %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$65535, %r12            # imm = 0xFFFF
	movl	$65535, %r15d           # imm = 0xFFFF
	cmovbq	%r12, %r15
	movzwl	%r15w, %esi
	callq	tcp_recved
	movl	$42, __A_VARIABLE(%rip)
	subq	%r15, %r12
	je	.LBB16_4
	.p2align	4, 0x90
.LBB16_3:                               # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	8(%rax), %rdi
	cmpq	$65535, %r12            # imm = 0xFFFF
	movl	$65535, %ebx            # imm = 0xFFFF
	cmovbq	%r12, %rbx
	movzwl	%bx, %esi
	callq	tcp_recved
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r12
	jne	.LBB16_3
.LBB16_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB16_5:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	lwip_netconn_do_recv, .Lfunc_end16-lwip_netconn_do_recv
                                        # -- End function
	.globl	lwip_netconn_do_write   # -- Begin function lwip_netconn_do_write
	.p2align	4, 0x90
	.type	lwip_netconn_do_write,@function
lwip_netconn_do_write:                  # @lwip_netconn_do_write
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	callq	netconn_err
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB17_6
# %bb.1:
	movq	(%rbx), %rdi
	movl	$240, %ecx
	andl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movb	$-6, %al
	cmpl	$16, %ecx
	jne	.LBB17_5
# %bb.2:
	cmpl	$0, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-5, %al
	je	.LBB17_3
.LBB17_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB17_6:
	movb	%al, 8(%rbx)
.LBB17_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB17_3:
	cmpq	$0, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_4
# %bb.7:
	movl	$1, 4(%rdi)
	cmpq	$0, 112(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_8
# %bb.10:
	cmpq	$0, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_11
# %bb.12:
	movq	%rbx, 112(%rdi)
	xorl	%esi, %esi
	callq	lwip_netconn_do_writemore
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB17_16
# %bb.13:
	movq	(%rbx), %rax
	cmpl	$1, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_14
# %bb.15:
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	movq	(%rbx), %rdi
	addq	$24, %rdi
	xorl	%esi, %esi
	callq	sys_arch_sem_wait
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	(%rbx), %rax
	cmpl	$1, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_16
.LBB17_14:
	movl	$.L.str.10, %edi
	jmp	.LBB17_9
.LBB17_4:
	movb	$-11, %al
	jmp	.LBB17_5
.LBB17_11:
	movl	$.L.str.12, %edi
	jmp	.LBB17_9
.LBB17_8:
	movl	$.L.str.9, %edi
.LBB17_9:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end17:
	.size	lwip_netconn_do_write, .Lfunc_end17-lwip_netconn_do_write
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lwip_netconn_do_writemore
	.type	lwip_netconn_do_writemore,@function
lwip_netconn_do_writemore:              # @lwip_netconn_do_writemore
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
	je	.LBB18_1
# %bb.3:
	movq	%rdi, %r15
	cmpl	$1, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB18_4
# %bb.5:
	movq	112(%r15), %r8
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB18_6
# %bb.7:
	movl	%esi, -48(%rbp)         # 4-byte Spill
	cmpq	$0, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_8
# %bb.9:
	movq	48(%r8), %rax
	cmpq	40(%r8), %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB18_10
# %bb.11:
	cmpw	$0, 24(%r8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_12
# %bb.13:
	movb	56(%r8), %r14b
	testb	$2, 108(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, -41(%rbp)           # 1-byte Folded Spill
	jne	.LBB18_15
# %bb.14:
	movl	%r14d, %eax
	andb	$4, %al
	shrb	$2, %al
	movb	%al, -41(%rbp)          # 1-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB18_15:
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB18_16:                              # =>This Inner Loop Header: Depth=1
	movq	16(%r8), %rcx
	movq	32(%r8), %rax
	movq	(%rcx), %rsi
	addq	%rax, %rsi
	movq	8(%rcx), %r9
	movq	%r9, %r11
	subq	%rax, %r11
	movzbl	%r14b, %ecx
	movl	%r14d, %r10d
	orb	$2, %r10b
	cmpq	$65535, %r11            # imm = 0xFFFF
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r10b, %r14d
	cmovbel	%ecx, %r14d
	movl	$65535, %ecx            # imm = 0xFFFF
	cmovbq	%r11, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r15), %rdi
	movl	168(%rdi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$65535, %edx            # imm = 0xFFFF
	cmpl	$65534, %ebx            # imm = 0xFFFE
	ja	.LBB18_18
# %bb.17:                               #   in Loop: Header=BB18_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %edx
.LBB18_18:                              #   in Loop: Header=BB18_16 Depth=1
	movzwl	%dx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %ebx
	jae	.LBB18_19
# %bb.20:                               #   in Loop: Header=BB18_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB18_23
# %bb.21:                               #   in Loop: Header=BB18_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jne	.LBB18_24
	jmp	.LBB18_22
	.p2align	4, 0x90
.LBB18_19:                              #   in Loop: Header=BB18_16 Depth=1
	movl	%ecx, %edx
	jmp	.LBB18_24
	.p2align	4, 0x90
.LBB18_23:                              #   in Loop: Header=BB18_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r10d, %r14d
.LBB18_24:                              #   in Loop: Header=BB18_16 Depth=1
	movzwl	%dx, %ebx
	addq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rax
	ja	.LBB18_25
# %bb.26:                               #   in Loop: Header=BB18_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$65536, %r11            # imm = 0x10000
	jb	.LBB18_28
# %bb.27:                               #   in Loop: Header=BB18_16 Depth=1
	cmpw	$-1, %bx
	jne	.LBB18_28
.LBB18_30:                              #   in Loop: Header=BB18_16 Depth=1
	movl	$1, %r13d
	movl	%r10d, %r14d
	jmp	.LBB18_31
	.p2align	4, 0x90
.LBB18_28:                              #   in Loop: Header=BB18_16 Depth=1
	xorl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r11w, %bx
	jne	.LBB18_31
# %bb.29:                               #   in Loop: Header=BB18_16 Depth=1
	cmpw	$2, 24(%r8)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB18_30
	.p2align	4, 0x90
.LBB18_31:                              #   in Loop: Header=BB18_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r14b, %ecx
	movl	%ebx, %edx
	callq	tcp_write
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB18_37
# %bb.32:                               #   in Loop: Header=BB18_16 Depth=1
	movq	112(%r15), %rax
	addq	%rbx, 48(%rax)
	movq	112(%r15), %rax
	addq	%rbx, 32(%rax)
	movq	112(%r15), %rax
	movq	16(%rax), %rcx
	movq	32(%rax), %rdx
	cmpq	8(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB18_35
# %bb.33:                               #   in Loop: Header=BB18_16 Depth=1
	addw	$-1, 24(%rax)
	movq	112(%r15), %rax
	cmpw	$0, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_35
# %bb.34:                               #   in Loop: Header=BB18_16 Depth=1
	addq	$16, 16(%rax)
	movq	112(%r15), %rax
	movq	$0, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_35:                              #   in Loop: Header=BB18_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB18_39
# %bb.36:                               #   in Loop: Header=BB18_16 Depth=1
	movq	112(%r15), %r8
	jmp	.LBB18_16
.LBB18_37:
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	je	.LBB18_38
# %bb.63:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_64
.LBB18_39:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB18_40
.LBB18_38:
	movb	$-1, %r12b
.LBB18_40:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB18_46
# %bb.41:
	movq	112(%r15), %r8
	movq	48(%r8), %rax
	jmp	.LBB18_42
.LBB18_22:
	movq	48(%r8), %rax
	xorl	%ecx, %ecx
	testq	%rax, %rax
	movl	$249, %r12d
	cmovnel	%ecx, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_42:
	cmpq	40(%r8), %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB18_46
# %bb.43:
	movq	120(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB18_45
# %bb.44:
	movq	%r15, %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB18_45:
	orb	$16, 108(%r15)
	jmp	.LBB18_51
.LBB18_46:
	movq	8(%r15), %rax
	movl	168(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65534, %ecx            # imm = 0xFFFE
	ja	.LBB18_48
# %bb.47:
	movzwl	%cx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5841, %ecx             # imm = 0x16D1
	jb	.LBB18_49
.LBB18_48:
	movzwl	172(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$718, %eax              # imm = 0x2CE
	jb	.LBB18_52
.LBB18_49:
	movq	120(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB18_52
# %bb.50:
	movq	%r15, %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	*%rax
.LBB18_51:
	movl	$42, __A_VARIABLE(%rip)
.LBB18_52:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r12b, %r12b
	je	.LBB18_53
# %bb.59:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %r12b
	je	.LBB18_60
.LBB18_64:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_65
.LBB18_53:
	movq	112(%r15), %rax
	movq	48(%rax), %rcx
	cmpq	40(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_56
# %bb.54:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB18_55
.LBB18_56:
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %bl
	jmp	.LBB18_57
.LBB18_60:
	movq	8(%r15), %rdi
	callq	tcp_output
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-4, %al
	sete	%bl
	setne	%cl
	leal	252(%rcx,%rcx,2), %r12d
	je	.LBB18_70
# %bb.61:
	xorb	$1, -41(%rbp)           # 1-byte Folded Spill
	jne	.LBB18_70
# %bb.62:
	movq	112(%r15), %rax
	xorl	%ecx, %ecx
	cmpq	$0, 48(%rax)
	movl	$249, %r12d
	cmovnel	%ecx, %r12d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_69
.LBB18_55:
	xorl	%ebx, %ebx
.LBB18_57:
	movq	8(%r15), %rdi
	callq	tcp_output
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-4, %al
	jne	.LBB18_58
# %bb.68:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-4, %r12b
.LBB18_69:
	movb	$1, %bl
	jmp	.LBB18_70
.LBB18_58:
	xorl	%r12d, %r12d
.LBB18_70:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB18_71
.LBB18_65:
	movq	112(%r15), %rax
	movq	(%rax), %rdi
	movb	%r12b, 8(%rax)
	movq	$0, 112(%r15)
	movl	$0, 4(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -48(%rbp)           # 1-byte Folded Reload
	je	.LBB18_67
# %bb.66:
	addq	$24, %rdi
	callq	sys_sem_signal
	movl	$42, __A_VARIABLE(%rip)
.LBB18_67:
	xorl	%eax, %eax
.LBB18_72:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_71:
	movb	$-1, %al
	jmp	.LBB18_72
.LBB18_25:
	movl	$.L.str.44, %edi
.LBB18_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB18_1:
	movl	$.L.str.28, %edi
	jmp	.LBB18_2
.LBB18_4:
	movl	$.L.str.40, %edi
	jmp	.LBB18_2
.LBB18_6:
	movl	$.L.str.25, %edi
	jmp	.LBB18_2
.LBB18_8:
	movl	$.L.str.41, %edi
	jmp	.LBB18_2
.LBB18_10:
	movl	$.L.str.42, %edi
	jmp	.LBB18_2
.LBB18_12:
	movl	$.L.str.43, %edi
	jmp	.LBB18_2
.Lfunc_end18:
	.size	lwip_netconn_do_writemore, .Lfunc_end18-lwip_netconn_do_writemore
                                        # -- End function
	.globl	lwip_netconn_do_getaddr # -- Begin function lwip_netconn_do_getaddr
	.p2align	4, 0x90
	.type	lwip_netconn_do_getaddr,@function
lwip_netconn_do_getaddr:                # @lwip_netconn_do_getaddr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rax
	movq	8(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB19_20
# %bb.1:
	cmpb	$0, 32(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB19_4
# %bb.2:
	movb	20(%rcx), %cl
	movq	16(%rdi), %rdx
	movb	%cl, 20(%rdx)
	movq	8(%rax), %rax
	cmpb	$6, 20(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %eax
	jne	.LBB19_6
# %bb.3:
	movq	16(%rdi), %rcx
	movl	%eax, (%rcx)
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	movq	8(%rax), %rax
	movl	4(%rax), %eax
	movl	%eax, 4(%rcx)
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	movq	8(%rax), %rax
	movl	8(%rax), %eax
	movl	%eax, 8(%rcx)
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	movq	8(%rax), %rax
	movl	12(%rax), %eax
	movl	%eax, 12(%rcx)
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	movb	16(%rax), %al
	jmp	.LBB19_7
.LBB19_4:
	movb	44(%rcx), %cl
	movq	16(%rdi), %rdx
	movb	%cl, 20(%rdx)
	movq	8(%rax), %rax
	cmpb	$6, 44(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	24(%rax), %eax
	jne	.LBB19_6
# %bb.5:
	movq	16(%rdi), %rcx
	movl	%eax, (%rcx)
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	movq	8(%rax), %rax
	movl	28(%rax), %eax
	movl	%eax, 4(%rcx)
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	movq	8(%rax), %rax
	movl	32(%rax), %eax
	movl	%eax, 8(%rcx)
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	movq	8(%rax), %rax
	movl	36(%rax), %eax
	movl	%eax, 12(%rcx)
	movq	(%rdi), %rax
	movq	8(%rax), %rax
	movb	40(%rax), %al
	jmp	.LBB19_7
.LBB19_6:
	movq	16(%rdi), %rcx
	movl	%eax, (%rcx)
	movq	16(%rdi), %rax
	movl	$0, 12(%rax)
	movq	16(%rdi), %rax
	movl	$0, 8(%rax)
	movq	16(%rdi), %rax
	movl	$0, 4(%rax)
	xorl	%eax, %eax
.LBB19_7:
	movq	16(%rdi), %rcx
	movb	%al, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 8(%rdi)
	movq	(%rdi), %rax
	movb	(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	andb	$-16, %cl
	cmpb	$16, %cl
	je	.LBB19_14
# %bb.8:
	cmpb	$32, %cl
	jne	.LBB19_19
# %bb.9:
	cmpb	$0, 32(%rdi)
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB19_12
# %bb.10:
	movzwl	66(%rax), %eax
	jmp	.LBB19_11
.LBB19_14:
	cmpb	$0, 32(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rax), %rax
	je	.LBB19_15
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	addq	$78, %rax
.LBB19_18:
	movzwl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB19_11
.LBB19_12:
	testb	$4, 64(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB19_20
# %bb.13:
	movzwl	68(%rax), %eax
.LBB19_11:
	movq	24(%rdi), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB19_21
.LBB19_15:
	movl	72(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB19_20
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB19_17
.LBB19_20:
	movb	$-11, 8(%rdi)
.LBB19_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB19_17:
	movl	$42, __A_VARIABLE(%rip)
	addq	$80, %rax
	jmp	.LBB19_18
.LBB19_19:
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end19:
	.size	lwip_netconn_do_getaddr, .Lfunc_end19-lwip_netconn_do_getaddr
                                        # -- End function
	.globl	lwip_netconn_do_close   # -- Begin function lwip_netconn_do_close
	.p2align	4, 0x90
	.type	lwip_netconn_do_close,@function
lwip_netconn_do_close:                  # @lwip_netconn_do_close
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movl	4(%rdi), %ecx
	cmpq	$0, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-11, %al
	je	.LBB20_15
# %bb.1:
	movl	$240, %edx
	andl	(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %edx
	jne	.LBB20_15
# %bb.2:
	movb	16(%rbx), %dl
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB20_4
# %bb.3:
	cmpb	$3, %dl
	jne	.LBB20_15
.LBB20_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	je	.LBB20_15
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-5, %al
	cmpl	$1, %ecx
	jne	.LBB20_6
.LBB20_15:
	movb	%al, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB20_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB20_6:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB20_8
# %bb.7:
	callq	netconn_drain
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
.LBB20_8:
	cmpq	$0, 112(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_9
# %bb.11:
	movl	$4, 4(%rdi)
	movq	%rbx, 112(%rdi)
	xorl	%esi, %esi
	callq	lwip_netconn_do_close_internal
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB20_16
# %bb.12:
	movq	(%rbx), %rax
	cmpl	$4, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_13
# %bb.14:
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	movq	(%rbx), %rdi
	addq	$24, %rdi
	xorl	%esi, %esi
	callq	sys_arch_sem_wait
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	(%rbx), %rax
	cmpl	$0, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB20_16
.LBB20_13:
	movl	$.L.str.10, %edi
	jmp	.LBB20_10
.LBB20_9:
	movl	$.L.str.9, %edi
.LBB20_10:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end20:
	.size	lwip_netconn_do_close, .Lfunc_end20-lwip_netconn_do_close
                                        # -- End function
	.globl	lwip_netconn_do_join_leave_group # -- Begin function lwip_netconn_do_join_leave_group
	.p2align	4, 0x90
	.type	lwip_netconn_do_join_leave_group,@function
lwip_netconn_do_join_leave_group:       # @lwip_netconn_do_join_leave_group
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movb	$-11, 8(%rdi)
	movq	(%rdi), %rax
	cmpq	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB21_9
# %bb.1:
	movq	%rdi, %rbx
	movl	(%rax), %eax
	movl	%eax, %ecx
	andl	$240, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %ecx
	jne	.LBB21_7
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB21_9
# %bb.3:
	cmpl	$0, 36(%rbx)
	movq	16(%rbx), %rsi
	movq	24(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB21_4
# %bb.6:
	callq	mld6_leavegroup
	movb	%al, 8(%rbx)
	jmp	.LBB21_8
.LBB21_7:
	movb	$-6, 8(%rbx)
.LBB21_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB21_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB21_4:
	callq	mld6_joingroup
	movb	%al, 8(%rbx)
	jmp	.LBB21_8
.Lfunc_end21:
	.size	lwip_netconn_do_join_leave_group, .Lfunc_end21-lwip_netconn_do_join_leave_group
                                        # -- End function
	.globl	lwip_netconn_do_join_leave_group_netif # -- Begin function lwip_netconn_do_join_leave_group_netif
	.p2align	4, 0x90
	.type	lwip_netconn_do_join_leave_group_netif,@function
lwip_netconn_do_join_leave_group_netif: # @lwip_netconn_do_join_leave_group_netif
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movzbl	32(%rdi), %edi
	callq	netif_get_by_index
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_1
# %bb.2:
	movb	$-11, 8(%rbx)
	movq	(%rbx), %rcx
	cmpq	$0, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB22_11
# %bb.3:
	movl	(%rcx), %ecx
	movl	%ecx, %edx
	andl	$240, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %edx
	jne	.LBB22_9
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %cl
	je	.LBB22_11
# %bb.5:
	cmpl	$0, 36(%rbx)
	movq	16(%rbx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	je	.LBB22_6
# %bb.8:
	callq	mld6_leavegroup_netif
	movb	%al, 8(%rbx)
	jmp	.LBB22_10
.LBB22_1:
	movb	$-12, 8(%rbx)
	jmp	.LBB22_10
.LBB22_9:
	movb	$-6, 8(%rbx)
.LBB22_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB22_6:
	callq	mld6_joingroup_netif
	movb	%al, 8(%rbx)
	jmp	.LBB22_10
.Lfunc_end22:
	.size	lwip_netconn_do_join_leave_group_netif, .Lfunc_end22-lwip_netconn_do_join_leave_group_netif
                                        # -- End function
	.globl	lwip_netconn_do_gethostbyname # -- Begin function lwip_netconn_do_gethostbyname
	.p2align	4, 0x90
	.type	lwip_netconn_do_gethostbyname,@function
lwip_netconn_do_gethostbyname:          # @lwip_netconn_do_gethostbyname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movzbl	16(%rdi), %r8d
	movq	(%rdi), %rdi
	movq	8(%rbx), %rsi
	movl	$lwip_netconn_do_dns_found, %edx
	movq	%rbx, %rcx
	callq	dns_gethostbyname_addrtype
	movq	32(%rbx), %rcx
	movb	%al, (%rcx)
	movq	32(%rbx), %rax
	cmpb	$-5, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_2
# %bb.1:
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	movq	24(%rbx), %rdi
	xorl	%esi, %esi
	callq	sys_arch_sem_wait
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	32(%rbx), %rax
	cmpb	$-5, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_3
.LBB23_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB23_3:
	movl	$.L.str.14, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end23:
	.size	lwip_netconn_do_gethostbyname, .Lfunc_end23-lwip_netconn_do_gethostbyname
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lwip_netconn_do_dns_found
	.type	lwip_netconn_do_dns_found,@function
lwip_netconn_do_dns_found:              # @lwip_netconn_do_dns_found
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	32(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB24_1
# %bb.2:
	movb	$0, (%rax)
	movq	8(%rdx), %rax
	movq	16(%rsi), %rcx
	movq	%rcx, 16(%rax)
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB24_3
.LBB24_1:
	movb	$-6, (%rax)
.LBB24_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rdx), %rdi
	callq	sys_sem_signal
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end24:
	.size	lwip_netconn_do_dns_found, .Lfunc_end24-lwip_netconn_do_dns_found
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function recv_udp
	.type	recv_udp,@function
recv_udp:                               # @recv_udp
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
	testq	%rsi, %rsi
	je	.LBB25_1
# %bb.3:
	movq	%rdi, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB25_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB25_6
# %bb.7:
	movl	%r8d, %ebx
	movq	%rcx, %r15
	movq	%rdx, %r14
	leaq	56(%r13), %r12
	movq	%r12, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_8
# %bb.9:
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movl	$6, %edi
	callq	memp_malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB25_8
# %bb.10:
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movq	%r14, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movb	20(%r15), %al
	movb	%al, 36(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB25_11
# %bb.13:
	cmpb	$6, 20(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB25_12
# %bb.14:
	movl	%eax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 28(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movb	16(%r15), %al
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_15
.LBB25_8:
	movq	%r14, %rdi
	callq	pbuf_free
	jmp	.LBB25_19
.LBB25_11:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB25_12:
	movl	%eax, 16(%rbx)
	movl	$0, 28(%rbx)
	movq	$0, 20(%rbx)
	xorl	%eax, %eax
.LBB25_15:
	movb	%al, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	movw	%ax, 40(%rbx)
	movzwl	16(%r14), %r14d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	sys_mbox_trypost
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB25_17
# %bb.16:
	movq	%rbx, %rdi
	callq	netbuf_delete
	jmp	.LBB25_19
.LBB25_17:
	movq	120(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB25_19
# %bb.18:
	movzwl	%r14w, %edx
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB25_19:
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
.LBB25_1:
	movl	$.L.str.17, %edi
	jmp	.LBB25_2
.LBB25_4:
	movl	$.L.str.18, %edi
	jmp	.LBB25_2
.LBB25_6:
	movl	$.L.str.19, %edi
.LBB25_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end25:
	.size	recv_udp, .Lfunc_end25-recv_udp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sent_tcp
	.type	sent_tcp,@function
sent_tcp:                               # @sent_tcp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB26_13
# %bb.1:
	movl	%edx, %r14d
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB26_3
# %bb.2:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lwip_netconn_do_writemore
	jmp	.LBB26_5
.LBB26_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB26_6
# %bb.4:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lwip_netconn_do_close_internal
.LBB26_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB26_6:
	movq	8(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB26_12
# %bb.7:
	movl	168(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65534, %ecx            # imm = 0xFFFE
	ja	.LBB26_9
# %bb.8:
	movzwl	%cx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5841, %ecx             # imm = 0x16D1
	jb	.LBB26_12
.LBB26_9:
	movzwl	172(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$717, %eax              # imm = 0x2CD
	ja	.LBB26_12
# %bb.10:
	andb	$-17, 108(%rbx)
	movq	120(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB26_12
# %bb.11:
	movzwl	%r14w, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB26_12:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB26_13:
	movl	$.L.str.28, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end26:
	.size	sent_tcp, .Lfunc_end26-sent_tcp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function poll_tcp
	.type	poll_tcp,@function
poll_tcp:                               # @poll_tcp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB27_17
# %bb.1:
	movq	%rdi, %rbx
	movl	4(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB27_3
# %bb.2:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lwip_netconn_do_writemore
	jmp	.LBB27_8
.LBB27_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB27_9
# %bb.4:
	movq	112(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB27_7
# %bb.5:
	movb	17(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB27_7
# %bb.6:
	addb	$-1, %cl
	movb	%cl, 17(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB27_7:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lwip_netconn_do_close_internal
.LBB27_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB27_9:
	movb	108(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	je	.LBB27_16
# %bb.10:
	movq	8(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB27_16
# %bb.11:
	movl	168(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65534, %edx            # imm = 0xFFFE
	ja	.LBB27_13
# %bb.12:
	movzwl	%dx, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5841, %edx             # imm = 0x16D1
	jb	.LBB27_16
.LBB27_13:
	movzwl	172(%rcx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$717, %ecx              # imm = 0x2CD
	ja	.LBB27_16
# %bb.14:
	andb	$-17, %al
	movb	%al, 108(%rbx)
	movq	120(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB27_16
# %bb.15:
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB27_16:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB27_17:
	movl	$.L.str.28, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end27:
	.size	poll_tcp, .Lfunc_end27-poll_tcp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function err_tcp
	.type	err_tcp,@function
err_tcp:                                # @err_tcp
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
	je	.LBB28_1
# %bb.3:
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	ukplat_lcpu_save_irqf
	movq	$0, 8(%rbx)
	movb	%r14b, 16(%rbx)
	orb	$1, 108(%rbx)
	movl	4(%rbx), %r13d
	movl	$0, 4(%rbx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	120(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_4
# %bb.5:
	movq	%rbx, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movq	120(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_8
# %bb.6:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movq	120(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_9
# %bb.7:
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	*%rax
	jmp	.LBB28_8
.LBB28_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB28_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB28_9:
	movsbl	%r14b, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	$15, %eax
	cmpl	$3, %eax
	jae	.LBB28_10
# %bb.13:
	cltq
	movq	.Lswitch.table.err_tcp(,%rax,8), %r15
	jmp	.LBB28_14
.LBB28_10:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	jne	.LBB28_12
# %bb.11:
	xorl	%r15d, %r15d
.LBB28_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	56(%rbx), %r12
	movq	%r12, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB28_16
# %bb.15:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	sys_mbox_trypost
	movl	$42, __A_VARIABLE(%rip)
.LBB28_16:
	leaq	80(%rbx), %r12
	movq	%r12, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB28_18
# %bb.17:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	sys_mbox_trypost
	movl	$42, __A_VARIABLE(%rip)
.LBB28_18:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r13d
	ja	.LBB28_28
# %bb.19:
	movl	$26, %eax
	btl	%r13d, %eax
	jae	.LBB28_28
# %bb.20:
	movb	108(%rbx), %al
	movl	%eax, %ecx
	andb	$-5, %cl
	movb	%cl, 108(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB28_26
# %bb.21:
	movq	112(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_22
# %bb.23:
	xorl	%ecx, %ecx
	cmpl	$4, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r14b, %edx
	cmovel	%ecx, %edx
	movb	%dl, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r14
	addq	$24, %r14
	movq	%r14, %rdi
	callq	sys_sem_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB28_24
# %bb.25:
	movq	$0, 112(%rbx)
	movq	%r14, %rdi
	callq	sys_sem_signal
	movl	$42, __A_VARIABLE(%rip)
.LBB28_26:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB28_27
.LBB28_28:
	cmpq	$0, 112(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB28_29
.LBB28_27:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB28_1:
	movl	$.L.str.28, %edi
	jmp	.LBB28_2
.LBB28_12:
	movl	$.L.str.31, %edi
	jmp	.LBB28_2
.LBB28_22:
	movl	$.L.str.25, %edi
	jmp	.LBB28_2
.LBB28_24:
	movl	$.L.str.29, %edi
	jmp	.LBB28_2
.LBB28_29:
	movl	$.L.str.30, %edi
.LBB28_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end28:
	.size	err_tcp, .Lfunc_end28-err_tcp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function recv_tcp
	.type	recv_tcp,@function
recv_tcp:                               # @recv_tcp
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
	testq	%rsi, %rsi
	je	.LBB29_16
# %bb.1:
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB29_17
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB29_18
# %bb.3:
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB29_19
# %bb.4:
	movq	%rdx, %r14
	leaq	56(%r15), %r12
	movq	%r12, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_7
# %bb.5:
	testq	%r14, %r14
	je	.LBB29_9
# %bb.6:
	movzwl	16(%r14), %r13d
	jmp	.LBB29_10
.LBB29_7:
	testq	%r14, %r14
	je	.LBB29_14
# %bb.8:
	movzwl	16(%r14), %esi
	movq	%rbx, %rdi
	callq	tcp_recved
	movq	%r14, %rdi
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_14
.LBB29_9:
	movl	$netconn_closed, %r14d
	xorl	%r13d, %r13d
.LBB29_10:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	sys_mbox_trypost
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %bl
	testb	%al, %al
	jne	.LBB29_15
# %bb.11:
	movq	120(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_14
# %bb.12:
	movzwl	%r13w, %edx
	xorl	%ebx, %ebx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_15
.LBB29_14:
	xorl	%ebx, %ebx
.LBB29_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB29_16:
	movl	$.L.str.32, %edi
	jmp	.LBB29_20
.LBB29_17:
	movl	$.L.str.33, %edi
	jmp	.LBB29_20
.LBB29_18:
	movl	$.L.str.34, %edi
	jmp	.LBB29_20
.LBB29_19:
	movl	$.L.str.35, %edi
.LBB29_20:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end29:
	.size	recv_tcp, .Lfunc_end29-recv_tcp
                                        # -- End function
	.type	netconn_aborted,@object # @netconn_aborted
	.section	.rodata,"a",@progbits
	.globl	netconn_aborted
netconn_aborted:
	.byte	0                       # 0x0
	.size	netconn_aborted, 1

	.type	netconn_reset,@object   # @netconn_reset
	.globl	netconn_reset
netconn_reset:
	.byte	0                       # 0x0
	.size	netconn_reset, 1

	.type	netconn_closed,@object  # @netconn_closed
	.globl	netconn_closed
netconn_closed:
	.byte	0                       # 0x0
	.size	netconn_closed, 1

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"err != NULL"
	.size	.L.str, 12

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
	.asciz	"netconn_alloc: undefined netconn_type"
	.size	.L.str.3, 38

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"PCB must be deallocated outside this function"
	.size	.L.str.4, 46

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"recvmbox must be deallocated before calling this function"
	.size	.L.str.5, 58

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"acceptmbox must be deallocated before calling this function"
	.size	.L.str.6, 60

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"netconn state error"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"blocking connect in progress"
	.size	.L.str.8, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"already writing or closing"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"state!"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Invalid netconn type"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"msg->msg.w.len != 0"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"invalid netconn_type"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"do_gethostbyname still in progress!!"
	.size	.L.str.14, 37

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.15,@object # @uk_pr_crit.__str.15
uk_pr_crit.__str.15:
	.asciz	"api_msg.c"
	.size	uk_pr_crit.__str.15, 10

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"recv_udp must have a pcb argument"
	.size	.L.str.17, 34

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"recv_udp must have an argument"
	.size	.L.str.18, 31

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"recv_udp: recv for wrong pcb!"
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"a"
	.size	.L.str.20, 2

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"invalid conn"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"this is for tcp netconns only"
	.size	.L.str.22, 30

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"conn must be in state NETCONN_CLOSE"
	.size	.L.str.23, 36

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"pcb already closed"
	.size	.L.str.24, 19

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"conn->current_msg != NULL"
	.size	.L.str.25, 26

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Closing a listen pcb may not fail!"
	.size	.L.str.26, 35

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"conn != NULL"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"inavlid op_completed_sem"
	.size	.L.str.29, 25

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"conn->current_msg == NULL"
	.size	.L.str.30, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"unhandled error"
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"recv_tcp must have a pcb argument"
	.size	.L.str.32, 34

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"recv_tcp must have an argument"
	.size	.L.str.33, 31

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"err != ERR_OK unhandled"
	.size	.L.str.34, 24

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"recv_tcp: recv for wrong pcb!"
	.size	.L.str.35, 30

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"conn->state == NETCONN_CONNECT"
	.size	.L.str.36, 31

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"(conn->current_msg != NULL) || conn->in_non_blocking_connect"
	.size	.L.str.37, 61

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"blocking connect state error"
	.size	.L.str.38, 29

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"expect newpcb == NULL or err == ERR_OK"
	.size	.L.str.39, 39

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"conn->state == NETCONN_WRITE"
	.size	.L.str.40, 29

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"conn->pcb.tcp != NULL"
	.size	.L.str.41, 22

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"conn->current_msg->msg.w.offset < conn->current_msg->msg.w.len"
	.size	.L.str.42, 63

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"conn->current_msg->msg.w.vector_cnt > 0"
	.size	.L.str.43, 40

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"lwip_netconn_do_writemore: invalid length!"
	.size	.L.str.44, 43

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.type	.Lswitch.table.err_tcp,@object # @switch.table.err_tcp
	.section	.rodata,"a",@progbits
	.p2align	4
.Lswitch.table.err_tcp:
	.quad	netconn_closed
	.quad	netconn_reset
	.quad	netconn_aborted
	.size	.Lswitch.table.err_tcp, 24

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
