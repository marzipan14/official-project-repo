	.text
	.file	"api_msg.c"
	.globl	lwip_netconn_is_err_msg # -- Begin function lwip_netconn_is_err_msg
	.p2align	4, 0x90
	.type	lwip_netconn_is_err_msg,@function
lwip_netconn_is_err_msg:                # @lwip_netconn_is_err_msg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rsi, %rsi
	je	.LBB0_9
# %bb.1:
	movl	$netconn_aborted, %eax
	cmpq	%rax, %rdi
	je	.LBB0_2
# %bb.3:
	movl	$netconn_reset, %eax
	cmpq	%rax, %rdi
	je	.LBB0_4
# %bb.5:
	xorl	%eax, %eax
	movl	$netconn_closed, %ecx
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
	jne	.LBB2_13
# %bb.1:
	movq	%rdi, %rbx
	movl	(%rax), %ecx
	movl	%ecx, %edx
	andl	$8, %edx
	movl	$46, %eax
	cmovel	%edx, %eax
	andb	$-16, %cl
	cmpb	$16, %cl
	je	.LBB2_7
# %bb.2:
	movb	$-6, %dl
	cmpb	$32, %cl
	jne	.LBB2_11
# %bb.3:
	movzbl	%al, %edi
	callq	udp_new_ip_type
	movq	(%rbx), %rcx
	movq	%rax, 8(%rcx)
	movq	(%rbx), %rdx
	movq	8(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_9
# %bb.4:
	movl	$243, %eax
	andl	(%rdx), %eax
	cmpl	$34, %eax
	jne	.LBB2_6
# %bb.5:
	movb	$1, 64(%rdi)
	movq	8(%rdx), %rdi
.LBB2_6:
	movl	$recv_udp, %esi
	callq	udp_recv
	jmp	.LBB2_9
.LBB2_7:
	movzbl	%al, %edi
	callq	tcp_new_ip_type
	movq	(%rbx), %rcx
	movq	%rax, 8(%rcx)
	movq	(%rbx), %rsi
	movq	8(%rsi), %r14
	testq	%r14, %r14
	je	.LBB2_9
# %bb.8:
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
.LBB2_9:
	movq	(%rbx), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB2_12
# %bb.10:
	movb	$-1, %dl
.LBB2_11:
	movb	%dl, 8(%rbx)
.LBB2_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_13:
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
	testq	%rdi, %rdi
	je	.LBB3_1
# %bb.2:
	movq	%rsi, %r14
	movl	$1, %esi
	movl	$128, %edx
	callq	*8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_14
# %bb.3:
	movq	%rax, %rbx
	movb	$0, 16(%rax)
	movl	%r15d, (%rax)
	movq	$0, 8(%rax)
	andb	$-16, %r15b
	cmpb	$16, %r15b
	je	.LBB3_6
# %bb.4:
	cmpb	$32, %r15b
	jne	.LBB3_5
.LBB3_6:
	leaq	56(%rbx), %r15
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	sys_mbox_new
	testb	%al, %al
	jne	.LBB3_9
# %bb.7:
	leaq	24(%rbx), %rdi
	xorl	%esi, %esi
	callq	sys_sem_new
	testb	%al, %al
	je	.LBB3_16
# %bb.8:
	movq	%r15, %rdi
	callq	sys_mbox_free
.LBB3_9:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB3_10
# %bb.12:
	movq	%rbx, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_14:
	xorl	%ebx, %ebx
.LBB3_15:
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
	jne	.LBB4_1
# %bb.3:
	movq	%rdi, %r14
	addq	$56, %rdi
	callq	sys_mbox_valid
	testl	%eax, %eax
	jne	.LBB4_4
# %bb.5:
	leaq	80(%r14), %rdi
	callq	sys_mbox_valid
	testl	%eax, %eax
	jne	.LBB4_6
# %bb.7:
	leaq	24(%r14), %rbx
	movq	%rbx, %rdi
	callq	sys_sem_free
	movq	%rbx, %rdi
	callq	sys_sem_set_invalid
	movq	flexos_shared_alloc(%rip), %rdi
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
	testl	%eax, %eax
	je	.LBB5_9
# %bb.1:
	movl	$240, %ecx
	andl	(%rdi), %ecx
	cmpl	$16, %ecx
	jne	.LBB5_2
# %bb.4:
	cmpl	$2, %eax
	je	.LBB5_9
# %bb.5:
	cmpl	$3, %eax
	jne	.LBB5_7
# %bb.6:
	testb	$4, 108(%rdi)
	jne	.LBB5_9
.LBB5_7:
	movb	$-5, 8(%rbx)
	jmp	.LBB5_8
.LBB5_9:
	movb	$0, 8(%rbx)
	callq	netconn_drain
	movq	(%rbx), %rdi
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB5_14
# %bb.10:
	movb	(%rdi), %cl
	andb	$-16, %cl
	cmpb	$16, %cl
	je	.LBB5_17
# %bb.11:
	addq	$8, %rdi
	cmpb	$32, %cl
	jne	.LBB5_13
# %bb.12:
	movq	$0, 88(%rax)
	movq	(%rdi), %rdi
	callq	udp_remove
	movq	(%rbx), %rdi
	addq	$8, %rdi
.LBB5_13:
	movq	$0, (%rdi)
	movq	(%rbx), %rdi
.LBB5_14:
	movq	120(%rdi), %rax
	testq	%rax, %rax
	je	.LBB5_8
# %bb.15:
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*%rax
	movq	(%rbx), %rdi
	movq	120(%rdi), %rax
	testq	%rax, %rax
	je	.LBB5_8
# %bb.16:
	movl	$2, %esi
	xorl	%edx, %edx
	callq	*%rax
	movq	(%rbx), %rdi
.LBB5_8:
	addq	$24, %rdi
	callq	sys_sem_valid
.LBB5_23:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB5_17:
	cmpq	$0, 112(%rdi)
	jne	.LBB5_18
# %bb.19:
	movl	$4, 4(%rdi)
	movb	$3, 16(%rbx)
	movq	%rbx, 112(%rdi)
	xorl	%esi, %esi
	callq	lwip_netconn_do_close_internal
	testb	%al, %al
	je	.LBB5_23
# %bb.20:
	movq	(%rbx), %rax
	cmpl	$4, 4(%rax)
	jne	.LBB5_21
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
	je	.LBB5_23
.LBB5_21:
	movl	$.L.str.10, %edi
	jmp	.LBB5_3
.LBB5_2:
	movl	$.L.str.7, %edi
	jmp	.LBB5_3
.LBB5_18:
	movl	$.L.str.9, %edi
.LBB5_3:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
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
	testl	%eax, %eax
	je	.LBB6_11
# %bb.1:
	leaq	-48(%rbp), %rsi
	movq	%r14, %rdi
	callq	sys_arch_mbox_tryfetch
	cmpl	$-1, %eax
	je	.LBB6_10
# %bb.2:
	movl	$240, %ebx
	movl	$netconn_closed, %r13d
	leaq	-48(%rbp), %r15
	jmp	.LBB6_3
	.p2align	4, 0x90
.LBB6_8:                                #   in Loop: Header=BB6_3 Depth=1
	movq	-48(%rbp), %rdi
	callq	netbuf_delete
.LBB6_9:                                #   in Loop: Header=BB6_3 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	sys_arch_mbox_tryfetch
	cmpl	$-1, %eax
	je	.LBB6_10
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	movl	(%r12), %eax
	andl	%ebx, %eax
	cmpl	$16, %eax
	jne	.LBB6_8
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	movq	-48(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rdi
	je	.LBB6_9
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	movl	$netconn_aborted, %eax
	cmpq	%rax, %rdi
	je	.LBB6_9
# %bb.6:                                #   in Loop: Header=BB6_3 Depth=1
	movl	$netconn_reset, %eax
	cmpq	%rax, %rdi
	je	.LBB6_9
# %bb.7:                                #   in Loop: Header=BB6_3 Depth=1
	callq	pbuf_free
	jmp	.LBB6_9
.LBB6_10:
	movq	%r14, %rdi
	callq	sys_mbox_free
	movq	%r14, %rdi
	callq	sys_mbox_set_invalid
.LBB6_11:
	addq	$80, %r12
	movq	%r12, %rdi
	callq	sys_mbox_valid
	testl	%eax, %eax
	je	.LBB6_22
# %bb.12:
	leaq	-48(%rbp), %rsi
	movq	%r12, %rdi
	callq	sys_arch_mbox_tryfetch
	cmpl	$-1, %eax
	je	.LBB6_21
# %bb.13:                               # %.preheader
	movl	$netconn_closed, %r15d
	leaq	-48(%rbp), %r14
	movl	$netconn_aborted, %r13d
	jmp	.LBB6_14
	.p2align	4, 0x90
.LBB6_19:                               #   in Loop: Header=BB6_14 Depth=1
	movq	%rbx, %rdi
	callq	netconn_free
.LBB6_20:                               #   in Loop: Header=BB6_14 Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	sys_arch_mbox_tryfetch
	cmpl	$-1, %eax
	je	.LBB6_21
.LBB6_14:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	je	.LBB6_20
# %bb.15:                               #   in Loop: Header=BB6_14 Depth=1
	cmpq	%r13, %rbx
	je	.LBB6_20
# %bb.16:                               #   in Loop: Header=BB6_14 Depth=1
	movl	$netconn_reset, %eax
	cmpq	%rax, %rbx
	je	.LBB6_20
# %bb.17:                               #   in Loop: Header=BB6_14 Depth=1
	movq	%rbx, %rdi
	callq	netconn_drain
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB6_19
# %bb.18:                               #   in Loop: Header=BB6_14 Depth=1
	callq	tcp_abort
	movq	$0, 8(%rbx)
	jmp	.LBB6_19
.LBB6_21:
	movq	%r12, %rdi
	callq	sys_mbox_free
	movq	%r12, %rdi
	callq	sys_mbox_set_invalid
.LBB6_22:
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
	testq	%rdi, %rdi
	je	.LBB7_46
# %bb.1:
	movq	%rdi, %r12
	movl	$240, %eax
	andl	(%rdi), %eax
	cmpl	$16, %eax
	jne	.LBB7_47
# %bb.2:
	cmpl	$4, 4(%r12)
	jne	.LBB7_48
# %bb.3:
	movq	8(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB7_49
# %bb.4:
	movq	112(%r12), %rax
	testq	%rax, %rax
	je	.LBB7_50
# %bb.5:
	movzbl	16(%rax), %eax
	movl	%eax, %r13d
	andl	$1, %r13d
	movl	%eax, %r15d
	andl	$2, %r15d
	cmpl	$3, %eax
	movl	%esi, -44(%rbp)         # 4-byte Spill
	je	.LBB7_12
# %bb.6:
	testb	%r13b, %r13b
	je	.LBB7_9
# %bb.7:
	movl	72(%rbx), %eax
	cmpl	$8, %eax
	ja	.LBB7_9
# %bb.8:
	movl	$352, %ecx              # imm = 0x160
	btl	%eax, %ecx
	jb	.LBB7_12
.LBB7_9:
	testb	%r15b, %r15b
	je	.LBB7_14
# %bb.10:
	testb	$16, 82(%rbx)
	jne	.LBB7_12
.LBB7_14:
	xorl	%r14d, %r14d
	cmpl	$1, 72(%rbx)
	je	.LBB7_13
.LBB7_15:
	testb	%r13b, %r13b
	je	.LBB7_17
# %bb.16:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_recv
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_accept
.LBB7_17:
	testb	%r15b, %r15b
	je	.LBB7_19
# %bb.18:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_sent
.LBB7_19:
	testb	%r14b, %r14b
	je	.LBB7_22
# %bb.20:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	tcp_poll
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_err
	jmp	.LBB7_21
.LBB7_12:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_arg
	movb	$1, %r14b
	cmpl	$1, 72(%rbx)
	jne	.LBB7_15
.LBB7_13:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	tcp_accept
	testb	%r14b, %r14b
	je	.LBB7_22
.LBB7_21:
	movq	%rbx, %rdi
	callq	tcp_close
                                        # kill: def $al killed $al def $eax
	movb	$1, %r14b
	cmpb	$-1, %al
	jne	.LBB7_32
	jmp	.LBB7_23
.LBB7_22:
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movl	%r15d, %edx
	callq	tcp_shutdown
                                        # kill: def $al killed $al def $eax
	xorl	%r14d, %r14d
	cmpb	$-1, %al
	jne	.LBB7_32
.LBB7_23:
	movq	112(%r12), %rax
	movb	17(%rax), %al
	testb	%al, %al
	jne	.LBB7_26
# %bb.24:
	movl	%r14d, %ecx
	xorb	$1, %cl
	jne	.LBB7_26
# %bb.25:
	movq	%rbx, %rdi
	callq	tcp_abort
	xorl	%eax, %eax
	jmp	.LBB7_32
.LBB7_26:
	testb	%al, %al
	je	.LBB7_31
# %bb.27:
	cmpl	$1, 72(%rbx)
	je	.LBB7_52
# %bb.28:
	testb	%r15b, %r15b
	je	.LBB7_30
# %bb.29:
	movl	$sent_tcp, %esi
	movq	%rbx, %rdi
	callq	tcp_sent
.LBB7_30:
	movl	$poll_tcp, %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	tcp_poll
	movl	$err_tcp, %esi
	movq	%rbx, %rdi
	callq	tcp_err
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	tcp_arg
	movb	$-1, %al
	jmp	.LBB7_45
.LBB7_31:
	movb	$-1, %al
.LBB7_32:
	movq	112(%r12), %rcx
	movq	(%rcx), %rbx
	movb	%al, 8(%rcx)
	movq	$0, 112(%r12)
	movl	$0, 4(%r12)
	testb	%al, %al
	je	.LBB7_35
.LBB7_33:
	cmpb	$0, -44(%rbp)           # 1-byte Folded Reload
	je	.LBB7_44
# %bb.34:
	addq	$24, %rbx
	movq	%rbx, %rdi
	callq	sys_sem_signal
.LBB7_44:
	xorl	%eax, %eax
.LBB7_45:
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
.LBB7_35:
	testb	%r14b, %r14b
	je	.LBB7_38
# %bb.36:
	movq	$0, 8(%r12)
	movq	120(%r12), %rax
	testq	%rax, %rax
	je	.LBB7_38
# %bb.37:
	movq	%r12, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	*%rax
.LBB7_38:
	testb	%r13b, %r13b
	je	.LBB7_41
# %bb.39:
	movq	120(%r12), %rax
	testq	%rax, %rax
	je	.LBB7_41
# %bb.40:
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*%rax
.LBB7_41:
	testb	%r15b, %r15b
	je	.LBB7_33
# %bb.42:
	movq	120(%r12), %rax
	testq	%rax, %rax
	je	.LBB7_33
# %bb.43:
	movq	%r12, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	*%rax
	jmp	.LBB7_33
.LBB7_46:
	movl	$.L.str.21, %edi
	jmp	.LBB7_51
.LBB7_47:
	movl	$.L.str.22, %edi
	jmp	.LBB7_51
.LBB7_48:
	movl	$.L.str.23, %edi
	jmp	.LBB7_51
.LBB7_49:
	movl	$.L.str.24, %edi
	jmp	.LBB7_51
.LBB7_50:
	movl	$.L.str.25, %edi
.LBB7_51:
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
	jmp	.LBB7_51
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
	movb	$-6, %al
	testq	%rdi, %rdi
	je	.LBB8_5
# %bb.1:
	movb	(%rcx), %cl
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
	movb	$-6, %cl
	testq	%rax, %rax
	je	.LBB9_7
# %bb.1:
	movq	(%rbx), %rdx
	movq	8(%rdx), %rdi
	testq	%rdi, %rdi
	je	.LBB9_7
# %bb.2:
	movb	(%rdx), %dl
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
	testq	%rbx, %rbx
	je	.LBB10_1
# %bb.2:
	movb	(%rsi), %al
	andb	$-16, %al
	cmpb	$16, %al
	je	.LBB10_5
# %bb.3:
	cmpb	$32, %al
	jne	.LBB10_15
# %bb.4:
	movq	16(%r14), %rsi
	movzwl	24(%r14), %edx
	movq	%rbx, %rdi
	callq	udp_connect
	jmp	.LBB10_8
.LBB10_1:
	movb	$-15, %al
	jmp	.LBB10_8
.LBB10_5:
	movl	4(%rsi), %ecx
	testl	%ecx, %ecx
	je	.LBB10_10
# %bb.6:
	movb	$-9, %al
	cmpl	$3, %ecx
	je	.LBB10_8
# %bb.7:
	movb	$-10, %al
	jmp	.LBB10_8
.LBB10_10:
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
	testb	%al, %al
	jne	.LBB10_8
# %bb.11:
	movq	(%r14), %rcx
	movb	108(%rcx), %bl
	movl	$3, 4(%rcx)
	movl	%ebx, %eax
	andb	$-5, %al
	movl	%ebx, %edx
	orb	$4, %dl
	movzbl	%dl, %edx
	movzbl	%al, %esi
	movb	$-5, %al
	testb	$2, %bl
	cmovnel	%edx, %esi
	movb	%sil, 108(%rcx)
	je	.LBB10_12
.LBB10_8:
	movb	%al, 8(%r14)
.LBB10_9:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB10_12:
	movq	%r14, 112(%rcx)
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
	jne	.LBB10_9
# %bb.13:
	movl	$.L.str.10, %edi
	jmp	.LBB10_14
.LBB10_15:
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
	testq	%rdi, %rdi
	je	.LBB11_1
# %bb.2:
	movq	%rdi, %rbx
	cmpl	$3, 4(%rdi)
	jne	.LBB11_3
# %bb.5:
	movq	112(%rbx), %rax
	testq	%rax, %rax
	je	.LBB11_6
# %bb.9:
	movb	%dl, 8(%rax)
	movq	(%rax), %r14
	addq	$24, %r14
	testb	%dl, %dl
	je	.LBB11_11
	jmp	.LBB11_13
.LBB11_1:
	movb	$-6, %al
	jmp	.LBB11_23
.LBB11_6:
	testb	$4, 108(%rbx)
	je	.LBB11_8
# %bb.7:
	xorl	%r14d, %r14d
	testb	%dl, %dl
	jne	.LBB11_13
.LBB11_11:
	movl	$240, %eax
	andl	(%rbx), %eax
	cmpl	$16, %eax
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
.LBB11_13:
	movb	108(%rbx), %r15b
	movl	%r15d, %eax
	andb	$4, %al
	movl	%r15d, %ecx
	andb	$-5, %cl
	movb	%cl, 108(%rbx)
	testq	%r14, %r14
	je	.LBB11_15
# %bb.14:
	testb	%al, %al
	je	.LBB11_18
.LBB11_15:
	testq	%r14, %r14
	jne	.LBB11_17
# %bb.16:
	testb	%al, %al
	je	.LBB11_17
.LBB11_18:
	movq	$0, 112(%rbx)
	movl	$0, 4(%rbx)
	movq	120(%rbx), %rax
	testq	%rax, %rax
	je	.LBB11_20
# %bb.19:
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	*%rax
.LBB11_20:
	testb	$4, %r15b
	jne	.LBB11_22
# %bb.21:
	movq	%r14, %rdi
	callq	sys_sem_signal
.LBB11_22:
	xorl	%eax, %eax
.LBB11_23:
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
	movb	$-6, %cl
	cmpl	$32, %edx
	jne	.LBB12_2
# %bb.1:
	movq	8(%rax), %rdi
	callq	udp_disconnect
	xorl	%ecx, %ecx
.LBB12_2:
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
	testq	%rdi, %rdi
	je	.LBB13_27
# %bb.1:
	movl	$240, %ecx
	andl	(%rax), %ecx
	cmpl	$16, %ecx
	jne	.LBB13_26
# %bb.2:
	movl	4(%rax), %ecx
	cmpl	$2, %ecx
	je	.LBB13_25
# %bb.3:
	testl	%ecx, %ecx
	jne	.LBB13_27
# %bb.4:
	cmpl	$0, 72(%rdi)
	je	.LBB13_6
# %bb.5:
	movb	$-6, -17(%rbp)
	jmp	.LBB13_28
.LBB13_27:
	movb	$-11, -17(%rbp)
	jmp	.LBB13_28
.LBB13_26:
	movb	$-16, -17(%rbp)
	jmp	.LBB13_28
.LBB13_25:
	movb	$0, -17(%rbp)
.LBB13_28:
	movb	-17(%rbp), %al
	movb	%al, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB13_6:
	movb	20(%rdi), %cl
	cmpb	ip6_addr_any+20(%rip), %cl
	jne	.LBB13_16
# %bb.7:
	movl	(%rdi), %edx
	movl	ip6_addr_any(%rip), %esi
	cmpb	$6, %cl
	jne	.LBB13_13
# %bb.8:
	cmpl	%esi, %edx
	jne	.LBB13_16
# %bb.9:
	movl	4(%rdi), %ecx
	cmpl	ip6_addr_any+4(%rip), %ecx
	jne	.LBB13_16
# %bb.10:
	movl	8(%rdi), %ecx
	cmpl	ip6_addr_any+8(%rip), %ecx
	jne	.LBB13_16
# %bb.11:
	movl	12(%rdi), %ecx
	cmpl	ip6_addr_any+12(%rip), %ecx
	jne	.LBB13_16
# %bb.12:
	movb	16(%rdi), %cl
	cmpb	ip6_addr_any+16(%rip), %cl
	je	.LBB13_14
	jmp	.LBB13_16
.LBB13_13:
	cmpl	%esi, %edx
	jne	.LBB13_16
.LBB13_14:
	testb	$32, 108(%rax)
	jne	.LBB13_16
# %bb.15:
	movb	$46, 20(%rdi)
	movq	8(%rax), %rcx
	movb	$46, 44(%rcx)
	movq	8(%rax), %rdi
.LBB13_16:
	leaq	-17(%rbp), %rdx
	movl	$255, %esi
	callq	tcp_listen_with_backlog_and_err
	testq	%rax, %rax
	je	.LBB13_28
# %bb.17:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	addq	$56, %rdi
	callq	sys_mbox_valid
	testl	%eax, %eax
	je	.LBB13_19
# %bb.18:
	movq	(%rbx), %rdi
	addq	$56, %rdi
	callq	sys_mbox_free
	movq	(%rbx), %rdi
	addq	$56, %rdi
	callq	sys_mbox_set_invalid
.LBB13_19:
	movb	$0, -17(%rbp)
	movq	(%rbx), %rdi
	addq	$80, %rdi
	callq	sys_mbox_valid
	testl	%eax, %eax
	je	.LBB13_20
# %bb.21:
	movb	-17(%rbp), %al
	jmp	.LBB13_22
.LBB13_20:
	movq	(%rbx), %rdi
	addq	$80, %rdi
	xorl	%esi, %esi
	callq	sys_mbox_new
	movb	%al, -17(%rbp)
.LBB13_22:
	testb	%al, %al
	je	.LBB13_23
# %bb.24:
	movq	%r14, %rdi
	callq	tcp_close
	movq	(%rbx), %rax
	movq	$0, 8(%rax)
	jmp	.LBB13_28
.LBB13_23:
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
	jmp	.LBB13_28
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
	testl	%eax, %eax
	je	.LBB14_14
# %bb.2:
	testq	%r13, %r13
	je	.LBB14_3
# %bb.6:
	testb	%bl, %bl
	jne	.LBB14_15
# %bb.7:
	movl	(%r12), %edi
	movq	120(%r12), %rsi
	callq	netconn_alloc
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
	movl	$netconn_aborted, %esi
	movq	%r15, %rdi
	callq	sys_mbox_trypost
	testb	%al, %al
	jne	.LBB14_14
	jmp	.LBB14_5
.LBB14_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$netconn_aborted, %esi
	movq	%r15, %rdi
	callq	sys_mbox_trypost
	movb	$-1, %r14b
	testb	%al, %al
	jne	.LBB14_14
.LBB14_5:
	movq	120(%r12), %rax
	testq	%rax, %rax
	je	.LBB14_14
.LBB14_13:
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*%rax
.LBB14_14:
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
	testb	%al, %al
	je	.LBB15_1
.LBB15_12:
	movb	%al, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB15_1:
	movq	(%rbx), %rcx
	movq	8(%rcx), %rdi
	movb	$-11, %al
	testq	%rdi, %rdi
	je	.LBB15_12
# %bb.2:
	movl	$240, %edx
	andl	(%rcx), %edx
	cmpl	$32, %edx
	jne	.LBB15_12
# %bb.3:
	movq	16(%rbx), %rax
	movb	36(%rax), %dl
	movl	16(%rax), %ecx
	cmpb	$6, %dl
	jne	.LBB15_9
# %bb.4:
	testl	%ecx, %ecx
	jne	.LBB15_8
# %bb.5:
	cmpl	$0, 20(%rax)
	jne	.LBB15_8
# %bb.6:
	cmpl	$0, 24(%rax)
	jne	.LBB15_8
# %bb.7:
	cmpl	$0, 28(%rax)
	jne	.LBB15_8
	jmp	.LBB15_11
.LBB15_9:
	cmpb	$46, %dl
	je	.LBB15_11
# %bb.10:
	testl	%ecx, %ecx
	je	.LBB15_11
.LBB15_8:
	movq	(%rax), %rsi
	movzwl	40(%rax), %ecx
	leaq	16(%rax), %rdx
	callq	udp_sendto
	jmp	.LBB15_12
.LBB15_11:
	movq	(%rax), %rsi
	callq	udp_send
	jmp	.LBB15_12
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
	testq	%rdi, %rdi
	je	.LBB16_4
# %bb.1:
	movl	$240, %ecx
	andl	(%rax), %ecx
	cmpl	$16, %ecx
	jne	.LBB16_4
# %bb.2:
	movq	16(%r14), %r12
	cmpq	$65535, %r12            # imm = 0xFFFF
	movl	$65535, %r15d           # imm = 0xFFFF
	cmovbq	%r12, %r15
	movzwl	%r15w, %esi
	callq	tcp_recved
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
	subq	%rbx, %r12
	jne	.LBB16_3
.LBB16_4:
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
	testb	%al, %al
	jne	.LBB17_5
# %bb.1:
	movq	(%rbx), %rdi
	movl	$240, %ecx
	andl	(%rdi), %ecx
	movb	$-6, %al
	cmpl	$16, %ecx
	jne	.LBB17_5
# %bb.2:
	movb	$-5, %al
	cmpl	$0, 4(%rdi)
	je	.LBB17_3
.LBB17_5:
	movb	%al, 8(%rbx)
.LBB17_15:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB17_3:
	cmpq	$0, 8(%rdi)
	je	.LBB17_4
# %bb.6:
	movl	$1, 4(%rdi)
	cmpq	$0, 112(%rdi)
	jne	.LBB17_7
# %bb.9:
	cmpq	$0, 40(%rbx)
	je	.LBB17_10
# %bb.11:
	movq	%rbx, 112(%rdi)
	xorl	%esi, %esi
	callq	lwip_netconn_do_writemore
	testb	%al, %al
	je	.LBB17_15
# %bb.12:
	movq	(%rbx), %rax
	cmpl	$1, 4(%rax)
	jne	.LBB17_13
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
	cmpl	$1, 4(%rax)
	jne	.LBB17_15
.LBB17_13:
	movl	$.L.str.10, %edi
	jmp	.LBB17_8
.LBB17_4:
	movb	$-11, %al
	jmp	.LBB17_5
.LBB17_10:
	movl	$.L.str.12, %edi
	jmp	.LBB17_8
.LBB17_7:
	movl	$.L.str.9, %edi
.LBB17_8:
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
	testq	%rdi, %rdi
	je	.LBB18_1
# %bb.3:
	movq	%rdi, %r15
	cmpl	$1, 4(%rdi)
	jne	.LBB18_4
# %bb.5:
	movq	112(%r15), %r8
	testq	%r8, %r8
	je	.LBB18_6
# %bb.7:
	movq	8(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB18_8
# %bb.9:
	movq	48(%r8), %rax
	cmpq	40(%r8), %rax
	jae	.LBB18_10
# %bb.11:
	cmpw	$0, 24(%r8)
	je	.LBB18_12
# %bb.13:
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movb	56(%r8), %r14b
	movb	108(%r15), %al
	andb	$2, %al
	movl	%r14d, %ecx
	andb	$4, %cl
	orb	%al, %cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
	sete	-42(%rbp)               # 1-byte Folded Spill
	.p2align	4, 0x90
.LBB18_14:                              # =>This Inner Loop Header: Depth=1
	movq	16(%r8), %rcx
	movq	32(%r8), %r12
	movq	(%rcx), %rsi
	addq	%r12, %rsi
	movq	8(%rcx), %r9
	movq	%r9, %r11
	subq	%r12, %r11
	movzbl	%r14b, %ebx
	movl	%r14d, %r10d
	orb	$2, %r10b
	cmpq	$65535, %r11            # imm = 0xFFFF
	movzbl	%r10b, %r14d
	cmoval	%r14d, %ebx
	movl	$65535, %edx            # imm = 0xFFFF
	cmovbq	%r11, %rdx
	movl	168(%rdi), %ecx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movl	$65535, %eax            # imm = 0xFFFF
	cmovael	%eax, %ecx
	cmpl	%edx, %ecx
	cmovael	%ebx, %r14d
	setae	%al
	cmovbl	%ecx, %edx
	orb	-42(%rbp), %al          # 1-byte Folded Reload
	je	.LBB18_18
# %bb.15:                               #   in Loop: Header=BB18_14 Depth=1
	movl	%edx, %ecx
	jmp	.LBB18_16
	.p2align	4, 0x90
.LBB18_18:                              #   in Loop: Header=BB18_14 Depth=1
	movl	%ebx, %r14d
	testw	%cx, %cx
	je	.LBB18_19
.LBB18_16:                              #   in Loop: Header=BB18_14 Depth=1
	movzwl	%cx, %ebx
	addq	%rbx, %r12
	cmpq	%r9, %r12
	ja	.LBB18_17
# %bb.20:                               #   in Loop: Header=BB18_14 Depth=1
	cmpq	$65536, %r11            # imm = 0x10000
	jb	.LBB18_22
# %bb.21:                               #   in Loop: Header=BB18_14 Depth=1
	cmpw	$-1, %bx
	jne	.LBB18_22
.LBB18_24:                              #   in Loop: Header=BB18_14 Depth=1
	movl	$1, %r13d
	movl	%r10d, %r14d
	jmp	.LBB18_25
	.p2align	4, 0x90
.LBB18_22:                              #   in Loop: Header=BB18_14 Depth=1
	xorl	%r13d, %r13d
	cmpw	%r11w, %bx
	jne	.LBB18_25
# %bb.23:                               #   in Loop: Header=BB18_14 Depth=1
	cmpw	$2, 24(%r8)
	jae	.LBB18_24
	.p2align	4, 0x90
.LBB18_25:                              #   in Loop: Header=BB18_14 Depth=1
	movzbl	%r14b, %ecx
	movl	%ebx, %edx
	callq	tcp_write
	testb	%al, %al
	jne	.LBB18_26
# %bb.27:                               #   in Loop: Header=BB18_14 Depth=1
	movq	112(%r15), %rax
	addq	%rbx, 48(%rax)
	movq	112(%r15), %rax
	addq	%rbx, 32(%rax)
	movq	112(%r15), %rax
	movq	16(%rax), %rcx
	movq	32(%rax), %rdx
	cmpq	8(%rcx), %rdx
	jne	.LBB18_30
# %bb.28:                               #   in Loop: Header=BB18_14 Depth=1
	addw	$-1, 24(%rax)
	movq	112(%r15), %rax
	cmpw	$0, 24(%rax)
	je	.LBB18_30
# %bb.29:                               #   in Loop: Header=BB18_14 Depth=1
	addq	$16, 16(%rax)
	movq	112(%r15), %rax
	movq	$0, 32(%rax)
.LBB18_30:                              #   in Loop: Header=BB18_14 Depth=1
	testl	%r13d, %r13d
	je	.LBB18_31
# %bb.54:                               #   in Loop: Header=BB18_14 Depth=1
	movq	8(%r15), %rdi
	movq	112(%r15), %r8
	jmp	.LBB18_14
.LBB18_26:
	movl	%eax, %r12d
	cmpb	$-1, %al
	jne	.LBB18_43
# %bb.32:
	cmpb	$0, -41(%rbp)           # 1-byte Folded Reload
	jne	.LBB18_33
	jmp	.LBB18_38
.LBB18_31:
	xorl	%r12d, %r12d
	cmpb	$0, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB18_38
.LBB18_33:
	movq	112(%r15), %r8
	movq	48(%r8), %rax
	cmpq	40(%r8), %rax
	jae	.LBB18_38
.LBB18_35:
	movq	120(%r15), %rax
	testq	%rax, %rax
	je	.LBB18_37
# %bb.36:
	movq	%r15, %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	*%rax
.LBB18_37:
	orb	$16, 108(%r15)
	jmp	.LBB18_43
.LBB18_19:
	movq	48(%r8), %rax
	xorl	%ecx, %ecx
	testq	%rax, %rax
	movl	$249, %r12d
	cmovnel	%ecx, %r12d
	cmpq	40(%r8), %rax
	jb	.LBB18_35
.LBB18_38:
	movq	8(%r15), %rax
	movl	168(%rax), %ecx
	cmpl	$65534, %ecx            # imm = 0xFFFE
	ja	.LBB18_40
# %bb.39:
	movzwl	%cx, %ecx
	cmpl	$5841, %ecx             # imm = 0x16D1
	jb	.LBB18_41
.LBB18_40:
	movzwl	172(%rax), %eax
	cmpl	$718, %eax              # imm = 0x2CE
	jb	.LBB18_43
.LBB18_41:
	movq	120(%r15), %rax
	testq	%rax, %rax
	je	.LBB18_43
# %bb.42:
	movq	%r15, %rdi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	*%rax
.LBB18_43:
	cmpb	$-1, %r12b
	je	.LBB18_47
# %bb.44:
	testb	%r12b, %r12b
	jne	.LBB18_50
# %bb.45:
	cmpb	$0, -41(%rbp)           # 1-byte Folded Reload
	setne	%bl
	movq	8(%r15), %rdi
	movq	112(%r15), %rax
	movq	48(%rax), %rcx
	cmpq	40(%rax), %rcx
	sete	%r14b
	callq	tcp_output
	movb	$-4, %r12b
	cmpb	$-4, %al
	je	.LBB18_50
# %bb.46:
	orb	%r14b, %bl
	xorl	%r12d, %r12d
	jmp	.LBB18_49
.LBB18_47:
	movq	8(%r15), %rdi
	callq	tcp_output
	xorl	%ecx, %ecx
	cmpb	$-4, %al
	sete	%bl
	setne	%al
	orb	%bl, -42(%rbp)          # 1-byte Folded Spill
	je	.LBB18_55
# %bb.48:
	movb	%al, %cl
	leal	(%rcx,%rcx,2), %r12d
	addl	$252, %r12d
.LBB18_49:
	movb	$-1, %al
	testb	%bl, %bl
	jne	.LBB18_50
	jmp	.LBB18_53
.LBB18_55:
	movq	112(%r15), %rax
	xorl	%ecx, %ecx
	cmpq	$0, 48(%rax)
	movl	$249, %r12d
	cmovnel	%ecx, %r12d
.LBB18_50:
	movq	112(%r15), %rax
	movq	(%rax), %rdi
	movb	%r12b, 8(%rax)
	movq	$0, 112(%r15)
	movl	$0, 4(%r15)
	cmpb	$0, -48(%rbp)           # 1-byte Folded Reload
	je	.LBB18_52
# %bb.51:
	addq	$24, %rdi
	callq	sys_sem_signal
.LBB18_52:
	xorl	%eax, %eax
.LBB18_53:
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
.LBB18_17:
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
	testq	%rcx, %rcx
	je	.LBB19_18
# %bb.1:
	cmpb	$0, 32(%rdi)
	je	.LBB19_4
# %bb.2:
	movb	20(%rcx), %cl
	movq	16(%rdi), %rdx
	movb	%cl, 20(%rdx)
	movq	8(%rax), %rax
	cmpb	$6, 20(%rax)
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
	movb	$0, 8(%rdi)
	movq	(%rdi), %rax
	movb	(%rax), %cl
	andb	$-16, %cl
	cmpb	$16, %cl
	je	.LBB19_14
# %bb.8:
	cmpb	$32, %cl
	jne	.LBB19_17
# %bb.9:
	cmpb	$0, 32(%rdi)
	movq	8(%rax), %rax
	je	.LBB19_12
# %bb.10:
	movzwl	66(%rax), %eax
	jmp	.LBB19_11
.LBB19_14:
	movb	32(%rdi), %cl
	movq	8(%rax), %rax
	testb	%cl, %cl
	jne	.LBB19_16
# %bb.15:
	cmpl	$1, 72(%rax)
	jbe	.LBB19_18
.LBB19_16:
	xorl	%edx, %edx
	testb	%cl, %cl
	sete	%dl
	movzwl	78(%rax,%rdx,2), %eax
.LBB19_11:
	movq	24(%rdi), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB19_19
.LBB19_12:
	testb	$4, 64(%rax)
	jne	.LBB19_13
.LBB19_18:
	movb	$-11, 8(%rdi)
.LBB19_19:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB19_13:
	movzwl	68(%rax), %eax
	jmp	.LBB19_11
.LBB19_17:
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
	cmpq	$0, 8(%rdi)
	je	.LBB20_15
# %bb.1:
	movl	$240, %eax
	andl	(%rdi), %eax
	cmpl	$16, %eax
	jne	.LBB20_15
# %bb.2:
	movl	4(%rdi), %ecx
	movb	16(%rbx), %al
	cmpl	$2, %ecx
	jne	.LBB20_4
# %bb.3:
	cmpb	$3, %al
	jne	.LBB20_15
.LBB20_4:
	cmpl	$1, %ecx
	je	.LBB20_17
# %bb.5:
	cmpl	$3, %ecx
	jne	.LBB20_6
.LBB20_15:
	movb	$-11, 8(%rbx)
.LBB20_16:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB20_17:
	movb	$-5, 8(%rbx)
	jmp	.LBB20_16
.LBB20_6:
	testb	$1, %al
	je	.LBB20_8
# %bb.7:
	callq	netconn_drain
	movq	(%rbx), %rdi
.LBB20_8:
	cmpq	$0, 112(%rdi)
	jne	.LBB20_9
# %bb.11:
	movl	$4, 4(%rdi)
	movq	%rbx, 112(%rdi)
	xorl	%esi, %esi
	callq	lwip_netconn_do_close_internal
	testb	%al, %al
	je	.LBB20_16
# %bb.12:
	movq	(%rbx), %rax
	cmpl	$4, 4(%rax)
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
	je	.LBB21_7
# %bb.1:
	movq	%rdi, %rbx
	movl	(%rax), %eax
	movl	%eax, %ecx
	andl	$240, %ecx
	cmpl	$32, %ecx
	jne	.LBB21_6
# %bb.2:
	testb	$8, %al
	je	.LBB21_7
# %bb.3:
	cmpl	$0, 36(%rbx)
	movq	16(%rbx), %rsi
	movq	24(%rbx), %rdi
	je	.LBB21_4
# %bb.5:
	callq	mld6_leavegroup
	movb	%al, 8(%rbx)
	jmp	.LBB21_7
.LBB21_6:
	movb	$-6, 8(%rbx)
.LBB21_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB21_4:
	callq	mld6_joingroup
	movb	%al, 8(%rbx)
	jmp	.LBB21_7
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
	testq	%rax, %rax
	je	.LBB22_1
# %bb.2:
	movb	$-11, 8(%rbx)
	movq	(%rbx), %rcx
	cmpq	$0, 8(%rcx)
	je	.LBB22_9
# %bb.3:
	movl	(%rcx), %ecx
	movl	%ecx, %edx
	andl	$240, %edx
	cmpl	$32, %edx
	jne	.LBB22_8
# %bb.4:
	testb	$8, %cl
	je	.LBB22_9
# %bb.5:
	cmpl	$0, 36(%rbx)
	movq	16(%rbx), %rsi
	movq	%rax, %rdi
	je	.LBB22_6
# %bb.7:
	callq	mld6_leavegroup_netif
	movb	%al, 8(%rbx)
	jmp	.LBB22_9
.LBB22_1:
	movb	$-12, 8(%rbx)
	jmp	.LBB22_9
.LBB22_8:
	movb	$-6, 8(%rbx)
.LBB22_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB22_6:
	callq	mld6_joingroup_netif
	movb	%al, 8(%rbx)
	jmp	.LBB22_9
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
	testq	%rsi, %rsi
	je	.LBB25_1
# %bb.3:
	movq	%rdi, %r13
	testq	%rdi, %rdi
	je	.LBB25_4
# %bb.5:
	cmpq	%rsi, 8(%r13)
	jne	.LBB25_6
# %bb.7:
	movl	%r8d, %ebx
	movq	%rcx, %r15
	movq	%rdx, %r14
	leaq	56(%r13), %r12
	movq	%r12, %rdi
	callq	sys_mbox_valid
	testl	%eax, %eax
	je	.LBB25_8
# %bb.9:
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movl	$6, %edi
	callq	memp_malloc
	testq	%rax, %rax
	je	.LBB25_8
# %bb.10:
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movq	%r14, 8(%rax)
	movb	20(%r15), %al
	movb	%al, 36(%rbx)
	testq	%r15, %r15
	je	.LBB25_11
# %bb.13:
	cmpb	$6, 20(%r15)
	movl	(%r15), %eax
	jne	.LBB25_12
# %bb.14:
	movl	%eax, 16(%rbx)
	movl	4(%r15), %eax
	movl	%eax, 20(%rbx)
	movl	8(%r15), %eax
	movl	%eax, 24(%rbx)
	movl	12(%r15), %eax
	movl	%eax, 28(%rbx)
	movb	16(%r15), %al
	jmp	.LBB25_15
.LBB25_8:
	movq	%r14, %rdi
	callq	pbuf_free
	jmp	.LBB25_19
.LBB25_11:
	xorl	%eax, %eax
.LBB25_12:
	movl	%eax, 16(%rbx)
	movl	$0, 28(%rbx)
	movq	$0, 20(%rbx)
	xorl	%eax, %eax
.LBB25_15:
	movb	%al, 32(%rbx)
	movl	-44(%rbp), %eax         # 4-byte Reload
	movw	%ax, 40(%rbx)
	movzwl	16(%r14), %r14d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	sys_mbox_trypost
	testb	%al, %al
	je	.LBB25_17
# %bb.16:
	movq	%rbx, %rdi
	callq	netbuf_delete
	jmp	.LBB25_19
.LBB25_17:
	movq	120(%r13), %rax
	testq	%rax, %rax
	je	.LBB25_19
# %bb.18:
	movzwl	%r14w, %edx
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	*%rax
.LBB25_19:
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
	testq	%rdi, %rdi
	je	.LBB26_12
# %bb.1:
	movl	%edx, %r14d
	movq	%rdi, %rbx
	movl	4(%rdi), %eax
	cmpl	$4, %eax
	je	.LBB26_4
# %bb.2:
	cmpl	$1, %eax
	jne	.LBB26_5
# %bb.3:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lwip_netconn_do_writemore
	jmp	.LBB26_5
.LBB26_4:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lwip_netconn_do_close_internal
.LBB26_5:
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.LBB26_11
# %bb.6:
	movl	168(%rax), %ecx
	cmpl	$65534, %ecx            # imm = 0xFFFE
	ja	.LBB26_8
# %bb.7:
	movzwl	%cx, %ecx
	cmpl	$5841, %ecx             # imm = 0x16D1
	jb	.LBB26_11
.LBB26_8:
	movzwl	172(%rax), %eax
	cmpl	$717, %eax              # imm = 0x2CD
	ja	.LBB26_11
# %bb.9:
	andb	$-17, 108(%rbx)
	movq	120(%rbx), %rax
	testq	%rax, %rax
	je	.LBB26_11
# %bb.10:
	movzwl	%r14w, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	*%rax
.LBB26_11:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB26_12:
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
	testq	%rdi, %rdi
	je	.LBB27_16
# %bb.1:
	movq	%rdi, %rbx
	movl	4(%rdi), %eax
	cmpl	$4, %eax
	je	.LBB27_4
# %bb.2:
	cmpl	$1, %eax
	jne	.LBB27_8
# %bb.3:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lwip_netconn_do_writemore
	jmp	.LBB27_8
.LBB27_4:
	movq	112(%rbx), %rax
	testq	%rax, %rax
	je	.LBB27_7
# %bb.5:
	movb	17(%rax), %cl
	testb	%cl, %cl
	je	.LBB27_7
# %bb.6:
	addb	$-1, %cl
	movb	%cl, 17(%rax)
.LBB27_7:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	lwip_netconn_do_close_internal
.LBB27_8:
	movb	108(%rbx), %al
	testb	$16, %al
	je	.LBB27_15
# %bb.9:
	movq	8(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB27_15
# %bb.10:
	movl	168(%rcx), %edx
	cmpl	$65534, %edx            # imm = 0xFFFE
	ja	.LBB27_12
# %bb.11:
	movzwl	%dx, %edx
	cmpl	$5841, %edx             # imm = 0x16D1
	jb	.LBB27_15
.LBB27_12:
	movzwl	172(%rcx), %ecx
	cmpl	$717, %ecx              # imm = 0x2CD
	ja	.LBB27_15
# %bb.13:
	andb	$-17, %al
	movb	%al, 108(%rbx)
	movq	120(%rbx), %rax
	testq	%rax, %rax
	je	.LBB27_15
# %bb.14:
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	*%rax
.LBB27_15:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB27_16:
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
	testq	%rax, %rax
	je	.LBB28_7
# %bb.4:
	movq	%rbx, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	*%rax
	movq	120(%rbx), %rax
	testq	%rax, %rax
	je	.LBB28_7
# %bb.5:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*%rax
	movq	120(%rbx), %rax
	testq	%rax, %rax
	je	.LBB28_7
# %bb.6:
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	*%rax
.LBB28_7:
	movsbl	%r14b, %eax
	addl	$15, %eax
	cmpl	$3, %eax
	jae	.LBB28_8
# %bb.11:
	cltq
	movq	.Lswitch.table.err_tcp(,%rax,8), %r15
	jmp	.LBB28_12
.LBB28_8:
	testb	%r14b, %r14b
	jne	.LBB28_10
# %bb.9:
	xorl	%r15d, %r15d
.LBB28_12:
	movl	$42, __A_VARIABLE(%rip)
	leaq	56(%rbx), %r12
	movq	%r12, %rdi
	callq	sys_mbox_valid
	testl	%eax, %eax
	je	.LBB28_14
# %bb.13:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	sys_mbox_trypost
.LBB28_14:
	leaq	80(%rbx), %r12
	movq	%r12, %rdi
	callq	sys_mbox_valid
	testl	%eax, %eax
	je	.LBB28_16
# %bb.15:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	sys_mbox_trypost
.LBB28_16:
	cmpl	$4, %r13d
	ja	.LBB28_23
# %bb.17:
	movl	$26, %eax
	btl	%r13d, %eax
	jae	.LBB28_23
# %bb.18:
	movb	108(%rbx), %al
	movl	%eax, %ecx
	andb	$-5, %cl
	movb	%cl, 108(%rbx)
	testb	$4, %al
	jne	.LBB28_26
# %bb.19:
	movq	112(%rbx), %rax
	testq	%rax, %rax
	je	.LBB28_20
# %bb.21:
	xorl	%ecx, %ecx
	cmpl	$4, %r13d
	movzbl	%r14b, %edx
	cmovel	%ecx, %edx
	movb	%dl, 8(%rax)
	movq	(%rax), %r14
	addq	$24, %r14
	movq	%r14, %rdi
	callq	sys_sem_valid
	testl	%eax, %eax
	je	.LBB28_22
# %bb.25:
	movq	$0, 112(%rbx)
	movq	%r14, %rdi
	callq	sys_sem_signal
	jmp	.LBB28_26
.LBB28_23:
	cmpq	$0, 112(%rbx)
	jne	.LBB28_24
.LBB28_26:
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
.LBB28_10:
	movl	$.L.str.31, %edi
	jmp	.LBB28_2
.LBB28_20:
	movl	$.L.str.25, %edi
	jmp	.LBB28_2
.LBB28_22:
	movl	$.L.str.29, %edi
	jmp	.LBB28_2
.LBB28_24:
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
	testq	%rsi, %rsi
	je	.LBB29_16
# %bb.1:
	movq	%rdi, %r15
	testq	%rdi, %rdi
	je	.LBB29_17
# %bb.2:
	testb	%cl, %cl
	jne	.LBB29_18
# %bb.3:
	movq	%rsi, %rbx
	cmpq	%rsi, 8(%r15)
	jne	.LBB29_19
# %bb.4:
	movq	%rdx, %r14
	leaq	56(%r15), %r12
	movq	%r12, %rdi
	callq	sys_mbox_valid
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
	jmp	.LBB29_14
.LBB29_9:
	movl	$netconn_closed, %r14d
	xorl	%r13d, %r13d
.LBB29_10:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	sys_mbox_trypost
	movb	$-1, %bl
	testb	%al, %al
	jne	.LBB29_15
# %bb.11:
	movq	120(%r15), %rax
	testq	%rax, %rax
	je	.LBB29_14
# %bb.12:
	movzwl	%r13w, %edx
	xorl	%ebx, %ebx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	*%rax
	jmp	.LBB29_15
.LBB29_14:
	xorl	%ebx, %ebx
.LBB29_15:
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
