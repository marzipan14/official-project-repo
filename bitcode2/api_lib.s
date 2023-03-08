	.text
	.file	"api_lib.c"
	.globl	netconn_new_with_proto_and_callback # -- Begin function netconn_new_with_proto_and_callback
	.p2align	4, 0x90
	.type	netconn_new_with_proto_and_callback,@function
netconn_new_with_proto_and_callback:    # @netconn_new_with_proto_and_callback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	movl	%esi, %r14d
	movq	%rdx, %rsi
	callq	netconn_alloc
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_18
# %bb.1:
	movb	%r14b, -72(%rbp)
	movq	%rbx, -88(%rbp)
	leaq	24(%rbx), %r14
	leaq	-88(%rbp), %rsi
	movl	$lwip_netconn_do_newconn, %edi
	movq	%r14, %rdx
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_4
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_17
.LBB0_4:
	cmpq	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_5
# %bb.7:
	leaq	56(%rbx), %r15
	movq	%r15, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_8
# %bb.9:
	movq	%rbx, %rdi
	addq	$80, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_10
# %bb.11:
	movq	%r14, %rdi
	callq	sys_sem_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_12
# %bb.13:
	movq	%r14, %rdi
	callq	sys_sem_free
	movq	%r15, %rdi
	callq	sys_mbox_free
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_14
# %bb.16:
	movq	%rbx, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_5:
	movl	$.L.str, %edi
	jmp	.LBB0_6
.LBB0_8:
	movl	$.L.str.3, %edi
	jmp	.LBB0_6
.LBB0_10:
	movl	$.L.str.4, %edi
	jmp	.LBB0_6
.LBB0_12:
	movl	$.L.str.5, %edi
.LBB0_6:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	jmp	.LBB0_15
.LBB0_14:
	movl	$.L.str.1, %edi
	movl	$.L.str.29, %esi
.LBB0_15:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end0:
	.size	netconn_new_with_proto_and_callback, .Lfunc_end0-netconn_new_with_proto_and_callback
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
	movl	$uk_pr_crit.__str.28, %edx
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
	.globl	netconn_prepare_delete  # -- Begin function netconn_prepare_delete
	.p2align	4, 0x90
	.type	netconn_prepare_delete,@function
netconn_prepare_delete:                 # @netconn_prepare_delete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_1
# %bb.2:
	movq	%rdi, %rdx
	movq	%rdi, -64(%rbp)
	movb	$41, -47(%rbp)
	addq	$24, %rdx
	leaq	-64(%rbp), %rsi
	movl	$lwip_netconn_do_delconn, %edi
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB2_3
# %bb.4:
	movl	-56(%rbp), %eax
	jmp	.LBB2_5
.LBB2_1:
	xorl	%eax, %eax
	jmp	.LBB2_6
.LBB2_3:
	movzbl	%al, %eax
.LBB2_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	netconn_prepare_delete, .Lfunc_end2-netconn_prepare_delete
                                        # -- End function
	.globl	netconn_delete          # -- Begin function netconn_delete
	.p2align	4, 0x90
	.type	netconn_delete,@function
netconn_delete:                         # @netconn_delete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_1
# %bb.2:
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, -80(%rbp)
	movb	$41, -63(%rbp)
	leaq	24(%rdi), %rdx
	leaq	-80(%rbp), %rsi
	movl	$lwip_netconn_do_delconn, %edi
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB3_3
# %bb.4:
	movl	-72(%rbp), %r14d
	jmp	.LBB3_5
.LBB3_1:
	xorl	%r14d, %r14d
	jmp	.LBB3_7
.LBB3_3:
	movzbl	%al, %r14d
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	jne	.LBB3_7
# %bb.6:
	movq	%rbx, %rdi
	callq	netconn_free
	movl	$42, __A_VARIABLE(%rip)
.LBB3_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	netconn_delete, .Lfunc_end3-netconn_delete
                                        # -- End function
	.globl	netconn_getaddr         # -- Begin function netconn_getaddr
	.p2align	4, 0x90
	.type	netconn_getaddr,@function
netconn_getaddr:                        # @netconn_getaddr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_1
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB4_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB4_6
# %bb.7:
	movq	%rdi, %rax
	movq	%rdi, -64(%rbp)
	movb	%cl, -32(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -40(%rbp)
	addq	$24, %rax
	leaq	-64(%rbp), %rsi
	movl	$lwip_netconn_do_getaddr, %edi
	movq	%rax, %rdx
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB4_8
# %bb.9:
	movl	-56(%rbp), %eax
	jmp	.LBB4_10
.LBB4_8:
	movzbl	%al, %eax
.LBB4_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB4_1:
	movl	$.L.str.6, %edi
	jmp	.LBB4_2
.LBB4_4:
	movl	$.L.str.7, %edi
	jmp	.LBB4_2
.LBB4_6:
	movl	$.L.str.8, %edi
.LBB4_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end4:
	.size	netconn_getaddr, .Lfunc_end4-netconn_getaddr
                                        # -- End function
	.globl	netconn_bind            # -- Begin function netconn_bind
	.p2align	4, 0x90
	.type	netconn_bind,@function
netconn_bind:                           # @netconn_bind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_17
# %bb.1:
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB5_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$ip_addr_any, %esi
.LBB5_3:
	testb	$32, 108(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_13
# %bb.4:
	movb	20(%rsi), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	ip6_addr_any+20(%rip), %cl
	jne	.LBB5_13
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %edi
	movl	ip6_addr_any(%rip), %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %cl
	jne	.LBB5_11
# %bb.6:
	cmpl	%r8d, %edi
	jne	.LBB5_13
# %bb.7:
	movl	4(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	ip6_addr_any+4(%rip), %ecx
	jne	.LBB5_13
# %bb.8:
	movl	8(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	ip6_addr_any+8(%rip), %ecx
	jne	.LBB5_13
# %bb.9:
	movl	12(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	ip6_addr_any+12(%rip), %ecx
	jne	.LBB5_13
# %bb.10:
	movb	16(%rsi), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	ip6_addr_any+16(%rip), %cl
	je	.LBB5_12
	jmp	.LBB5_13
.LBB5_11:
	cmpl	%r8d, %edi
	jne	.LBB5_13
.LBB5_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$ip_addr_any_type, %esi
.LBB5_13:
	movq	%rax, -64(%rbp)
	movq	%rsi, -48(%rbp)
	movw	%dx, -40(%rbp)
	addq	$24, %rax
	leaq	-64(%rbp), %rsi
	movl	$lwip_netconn_do_bind, %edi
	movq	%rax, %rdx
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB5_14
# %bb.15:
	movl	-56(%rbp), %eax
	jmp	.LBB5_16
.LBB5_14:
	movzbl	%al, %eax
.LBB5_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB5_17:
	movl	$.L.str.9, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end5:
	.size	netconn_bind, .Lfunc_end5-netconn_bind
                                        # -- End function
	.globl	netconn_bind_if         # -- Begin function netconn_bind_if
	.p2align	4, 0x90
	.type	netconn_bind_if,@function
netconn_bind_if:                        # @netconn_bind_if
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB6_5
# %bb.1:
	movq	%rdi, %rdx
	movq	%rdi, -64(%rbp)
	movb	%sil, -38(%rbp)
	addq	$24, %rdx
	leaq	-64(%rbp), %rsi
	movl	$lwip_netconn_do_bind_if, %edi
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB6_2
# %bb.3:
	movl	-56(%rbp), %eax
	jmp	.LBB6_4
.LBB6_2:
	movzbl	%al, %eax
.LBB6_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB6_5:
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end6:
	.size	netconn_bind_if, .Lfunc_end6-netconn_bind_if
                                        # -- End function
	.globl	netconn_connect         # -- Begin function netconn_connect
	.p2align	4, 0x90
	.type	netconn_connect,@function
netconn_connect:                        # @netconn_connect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB7_7
# %bb.1:
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB7_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$ip_addr_any, %esi
.LBB7_3:
	movq	%rax, -64(%rbp)
	movq	%rsi, -48(%rbp)
	movw	%dx, -40(%rbp)
	addq	$24, %rax
	leaq	-64(%rbp), %rsi
	movl	$lwip_netconn_do_connect, %edi
	movq	%rax, %rdx
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB7_4
# %bb.5:
	movl	-56(%rbp), %eax
	jmp	.LBB7_6
.LBB7_4:
	movzbl	%al, %eax
.LBB7_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB7_7:
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end7:
	.size	netconn_connect, .Lfunc_end7-netconn_connect
                                        # -- End function
	.globl	netconn_disconnect      # -- Begin function netconn_disconnect
	.p2align	4, 0x90
	.type	netconn_disconnect,@function
netconn_disconnect:                     # @netconn_disconnect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_5
# %bb.1:
	movq	%rdi, %rdx
	movq	%rdi, -64(%rbp)
	addq	$24, %rdx
	leaq	-64(%rbp), %rsi
	movl	$lwip_netconn_do_disconnect, %edi
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB8_2
# %bb.3:
	movl	-56(%rbp), %eax
	jmp	.LBB8_4
.LBB8_2:
	movzbl	%al, %eax
.LBB8_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB8_5:
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end8:
	.size	netconn_disconnect, .Lfunc_end8-netconn_disconnect
                                        # -- End function
	.globl	netconn_listen_with_backlog # -- Begin function netconn_listen_with_backlog
	.p2align	4, 0x90
	.type	netconn_listen_with_backlog,@function
netconn_listen_with_backlog:            # @netconn_listen_with_backlog
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB9_5
# %bb.1:
	movq	%rdi, %rdx
	movq	%rdi, -64(%rbp)
	addq	$24, %rdx
	leaq	-64(%rbp), %rsi
	movl	$lwip_netconn_do_listen, %edi
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB9_2
# %bb.3:
	movl	-56(%rbp), %eax
	jmp	.LBB9_4
.LBB9_2:
	movzbl	%al, %eax
.LBB9_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB9_5:
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end9:
	.size	netconn_listen_with_backlog, .Lfunc_end9-netconn_listen_with_backlog
                                        # -- End function
	.globl	netconn_accept          # -- Begin function netconn_accept
	.p2align	4, 0x90
	.type	netconn_accept,@function
netconn_accept:                         # @netconn_accept
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB10_1
# %bb.3:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB10_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movb	16(%rbx), %r15b
	movb	$0, 16(%rbx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%r15b, -33(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testb	%r15b, %r15b
	je	.LBB10_6
.LBB10_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_6:
	leaq	80(%rbx), %r12
	movq	%r12, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	movb	$-15, %r15b
	testl	%eax, %eax
	je	.LBB10_18
# %bb.7:
	movzbl	108(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB10_18
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %rsi
	movq	%r12, %rdi
	testb	$2, %al
	jne	.LBB10_9
# %bb.11:
	xorl	%edx, %edx
	callq	sys_arch_mbox_fetch
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_12
.LBB10_9:
	callq	sys_arch_mbox_tryfetch
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB10_10
.LBB10_12:
	movq	120(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_14
# %bb.13:
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB10_14:
	movq	-48(%rbp), %rdi
	leaq	-33(%rbp), %rsi
	callq	lwip_netconn_is_err_msg
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_16
# %bb.15:
	movb	-33(%rbp), %r15b
	jmp	.LBB10_18
.LBB10_16:
	movq	-48(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_18
# %bb.17:
	movq	%rax, (%r14)
	xorl	%r15d, %r15d
	jmp	.LBB10_18
.LBB10_10:
	movb	$-7, %r15b
	jmp	.LBB10_18
.LBB10_1:
	movl	$.L.str.14, %edi
	jmp	.LBB10_2
.LBB10_4:
	movl	$.L.str.15, %edi
.LBB10_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end10:
	.size	netconn_accept, .Lfunc_end10-netconn_accept
                                        # -- End function
	.globl	netconn_err             # -- Begin function netconn_err
	.p2align	4, 0x90
	.type	netconn_err,@function
netconn_err:                            # @netconn_err
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_1
# %bb.2:
	movq	%rdi, %rbx
	callq	ukplat_lcpu_save_irqf
	movb	16(%rbx), %r14b
	movb	$0, 16(%rbx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	jmp	.LBB11_3
.LBB11_1:
	xorl	%r14d, %r14d
.LBB11_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	netconn_err, .Lfunc_end11-netconn_err
                                        # -- End function
	.globl	netconn_tcp_recvd       # -- Begin function netconn_tcp_recvd
	.p2align	4, 0x90
	.type	netconn_tcp_recvd,@function
netconn_tcp_recvd:                      # @netconn_tcp_recvd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB12_6
# %bb.1:
	movq	%rdi, %rdx
	movl	$240, %eax
	andl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB12_6
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -64(%rbp)
	movq	%rsi, -48(%rbp)
	addq	$24, %rdx
	leaq	-64(%rbp), %rsi
	movl	$lwip_netconn_do_recv, %edi
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB12_3
# %bb.4:
	movl	-56(%rbp), %eax
	jmp	.LBB12_5
.LBB12_3:
	movzbl	%al, %eax
.LBB12_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB12_6:
	movl	$.L.str.16, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end12:
	.size	netconn_tcp_recvd, .Lfunc_end12-netconn_tcp_recvd
                                        # -- End function
	.globl	netconn_recv_tcp_pbuf   # -- Begin function netconn_recv_tcp_pbuf
	.p2align	4, 0x90
	.type	netconn_recv_tcp_pbuf,@function
netconn_recv_tcp_pbuf:                  # @netconn_recv_tcp_pbuf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB13_3
# %bb.1:
	movl	$240, %eax
	andl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB13_3
# %bb.2:
	xorl	%edx, %edx
	callq	netconn_recv_data_tcp
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB13_3:
	movl	$.L.str.16, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end13:
	.size	netconn_recv_tcp_pbuf, .Lfunc_end13-netconn_recv_tcp_pbuf
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function netconn_recv_data_tcp
	.type	netconn_recv_data_tcp,@function
netconn_recv_data_tcp:                  # @netconn_recv_data_tcp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	addq	$56, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB14_1
# %bb.2:
	movb	108(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	js	.LBB14_3
# %bb.8:
	movzbl	%r14b, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	netconn_recv_data
                                        # kill: def $al killed $al def $eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB14_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_21
.LBB14_1:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-11, %al
	jmp	.LBB14_21
.LBB14_3:
	andb	$127, %al
	movb	%al, 108(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_4:
	movq	120(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_6
# %bb.5:
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB14_6:
	cmpq	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_7
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -152(%rbp)
	movw	$10497, -136(%rbp)      # imm = 0x2901
	addq	$24, %rbx
	leaq	-152(%rbp), %rsi
	movl	$lwip_netconn_do_close, %edi
	movq	%rbx, %rdx
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-15, %al
	jmp	.LBB14_21
.LBB14_10:
	movq	(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r14b
	jne	.LBB14_16
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB14_12
# %bb.13:
	movzwl	16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_14
.LBB14_7:
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movl	16(%rbx), %r14d
	movb	$0, 16(%rbx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$242, %eax
	cmovnel	%r14d, %eax
	jmp	.LBB14_21
.LBB14_12:
	movl	$1, %eax
.LBB14_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$240, %ecx
	andl	(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ecx
	jne	.LBB14_22
# %bb.15:
	movq	%rbx, -88(%rbp)
	movq	%rax, -72(%rbp)
	leaq	24(%rbx), %rdx
	leaq	-88(%rbp), %rsi
	movl	$lwip_netconn_do_recv, %edi
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_16:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB14_17
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB14_21
.LBB14_17:
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	je	.LBB14_4
# %bb.18:
	orb	$-128, 108(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-7, %al
.LBB14_21:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_22:
	movl	$.L.str.16, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end14:
	.size	netconn_recv_data_tcp, .Lfunc_end14-netconn_recv_data_tcp
                                        # -- End function
	.globl	netconn_recv_tcp_pbuf_flags # -- Begin function netconn_recv_tcp_pbuf_flags
	.p2align	4, 0x90
	.type	netconn_recv_tcp_pbuf_flags,@function
netconn_recv_tcp_pbuf_flags:            # @netconn_recv_tcp_pbuf_flags
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB15_3
# %bb.1:
	movl	$240, %eax
	andl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB15_3
# %bb.2:
	movzbl	%dl, %edx
	callq	netconn_recv_data_tcp
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB15_3:
	movl	$.L.str.16, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end15:
	.size	netconn_recv_tcp_pbuf_flags, .Lfunc_end15-netconn_recv_tcp_pbuf_flags
                                        # -- End function
	.globl	netconn_recv_udp_raw_netbuf # -- Begin function netconn_recv_udp_raw_netbuf
	.p2align	4, 0x90
	.type	netconn_recv_udp_raw_netbuf,@function
netconn_recv_udp_raw_netbuf:            # @netconn_recv_udp_raw_netbuf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB16_3
# %bb.1:
	movl	$240, %eax
	andl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	je	.LBB16_3
# %bb.2:
	xorl	%edx, %edx
	callq	netconn_recv_data
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB16_3:
	movl	$.L.str.17, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end16:
	.size	netconn_recv_udp_raw_netbuf, .Lfunc_end16-netconn_recv_udp_raw_netbuf
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function netconn_recv_data
	.type	netconn_recv_data,@function
netconn_recv_data:                      # @netconn_recv_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB17_1
# %bb.3:
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB17_4
# %bb.5:
	movl	%edx, %r12d
	leaq	56(%r15), %rbx
	movq	%rbx, %rdi
	callq	sys_mbox_valid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_6
# %bb.7:
	movzbl	108(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB17_11
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r12b
	jne	.LBB17_11
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB17_11
# %bb.10:
	cmpb	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_15
.LBB17_11:
	leaq	-48(%rbp), %rsi
	movq	%rbx, %rdi
	callq	sys_arch_mbox_tryfetch
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB17_12
.LBB17_16:
	movl	$240, %eax
	andl	(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB17_20
# %bb.17:
	movq	-48(%rbp), %rdi
	leaq	-33(%rbp), %rsi
	callq	lwip_netconn_is_err_msg
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_18
# %bb.19:
	movzbl	-33(%rbp), %eax
	xorl	%ebx, %ebx
	cmpb	$-15, %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovnel	%eax, %ebx
	jmp	.LBB17_26
.LBB17_6:
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movl	16(%r15), %r14d
	movb	$0, 16(%r15)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$245, %ebx
	cmovnel	%r14d, %ebx
	jmp	.LBB17_26
.LBB17_12:
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	movb	16(%r15), %bl
	movb	$0, 16(%r15)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB17_14
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_26
.LBB17_20:
	movq	-48(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_21
# %bb.22:
	movq	(%rax), %rcx
	movzwl	16(%rcx), %ecx
	jmp	.LBB17_23
.LBB17_14:
	testb	$1, 108(%r15)
	sete	%bl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlb	$2, %bl
	addb	$-11, %bl
	jmp	.LBB17_26
.LBB17_18:
	movq	-48(%rbp), %rax
	movzwl	16(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB17_23:
	movl	$42, __A_VARIABLE(%rip)
	movq	120(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB17_25
# %bb.24:
	movzwl	%cx, %edx
	movq	%r15, %rdi
	movl	$1, %esi
	callq	*%rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax
.LBB17_25:
	movq	%rax, (%r14)
	xorl	%ebx, %ebx
.LBB17_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_15:
	leaq	-48(%rbp), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	sys_arch_mbox_fetch
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_16
.LBB17_1:
	movl	$.L.str.18, %edi
	jmp	.LBB17_2
.LBB17_4:
	movl	$.L.str.19, %edi
.LBB17_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB17_21:
	movl	$.L.str.30, %edi
	jmp	.LBB17_2
.Lfunc_end17:
	.size	netconn_recv_data, .Lfunc_end17-netconn_recv_data
                                        # -- End function
	.globl	netconn_recv_udp_raw_netbuf_flags # -- Begin function netconn_recv_udp_raw_netbuf_flags
	.p2align	4, 0x90
	.type	netconn_recv_udp_raw_netbuf_flags,@function
netconn_recv_udp_raw_netbuf_flags:      # @netconn_recv_udp_raw_netbuf_flags
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB18_3
# %bb.1:
	movl	$240, %eax
	andl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	je	.LBB18_3
# %bb.2:
	movzbl	%dl, %edx
	callq	netconn_recv_data
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB18_3:
	movl	$.L.str.17, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end18:
	.size	netconn_recv_udp_raw_netbuf_flags, .Lfunc_end18-netconn_recv_udp_raw_netbuf_flags
                                        # -- End function
	.globl	netconn_recv            # -- Begin function netconn_recv
	.p2align	4, 0x90
	.type	netconn_recv,@function
netconn_recv:                           # @netconn_recv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB19_12
# %bb.1:
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB19_13
# %bb.2:
	movl	$240, %eax
	andl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB19_6
# %bb.3:
	movq	$0, -32(%rbp)
	movl	$6, %edi
	callq	memp_malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_7
# %bb.4:
	movq	%rax, %r14
	leaq	-32(%rbp), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	netconn_recv_data_tcp
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB19_8
# %bb.5:
	movl	%eax, %ebx
	movl	$6, %edi
	movq	%r14, %rsi
	callq	memp_free
	jmp	.LBB19_10
.LBB19_6:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	netconn_recv_data
	movl	%eax, %ebx
	jmp	.LBB19_11
.LBB19_7:
	movb	$-1, %bl
	jmp	.LBB19_10
.LBB19_8:
	movq	-32(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_15
# %bb.9:
	movq	%rax, (%r14)
	movq	-32(%rbp), %rax
	movq	%rax, 8(%r14)
	movw	$0, 40(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r14)
	movb	$0, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 36(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, (%r15)
	xorl	%ebx, %ebx
.LBB19_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB19_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_12:
	movl	$.L.str.18, %edi
	jmp	.LBB19_14
.LBB19_13:
	movl	$.L.str.19, %edi
.LBB19_14:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB19_15:
	movl	$.L.str.20, %edi
	jmp	.LBB19_14
.Lfunc_end19:
	.size	netconn_recv, .Lfunc_end19-netconn_recv
                                        # -- End function
	.globl	netconn_sendto          # -- Begin function netconn_sendto
	.p2align	4, 0x90
	.type	netconn_sendto,@function
netconn_sendto:                         # @netconn_sendto
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB20_1
# %bb.2:
	movq	%rdi, %r8
	movl	$42, __A_VARIABLE(%rip)
	movb	20(%rdx), %al
	movb	%al, 36(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB20_3
# %bb.5:
	cmpb	$6, 20(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdx), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_4
# %bb.6:
	movl	%edi, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 20(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 24(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 28(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movb	16(%rdx), %dl
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_7
.LBB20_1:
	movb	$-6, %al
	jmp	.LBB20_12
.LBB20_3:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
.LBB20_4:
	movl	%edi, 16(%rsi)
	movl	$0, 28(%rsi)
	movq	$0, 20(%rsi)
	xorl	%edx, %edx
.LBB20_7:
	movb	%dl, 32(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movw	%cx, 40(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB20_13
# %bb.8:
	movq	%r8, -64(%rbp)
	movq	%rsi, -48(%rbp)
	addq	$24, %r8
	leaq	-64(%rbp), %rsi
	movl	$lwip_netconn_do_send, %edi
	movq	%r8, %rdx
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB20_9
# %bb.10:
	movl	-56(%rbp), %eax
	jmp	.LBB20_11
.LBB20_9:
	movzbl	%al, %eax
.LBB20_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB20_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB20_13:
	movl	$.L.str.21, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end20:
	.size	netconn_sendto, .Lfunc_end20-netconn_sendto
                                        # -- End function
	.globl	netconn_send            # -- Begin function netconn_send
	.p2align	4, 0x90
	.type	netconn_send,@function
netconn_send:                           # @netconn_send
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB21_5
# %bb.1:
	movq	%rdi, %rdx
	movq	%rdi, -64(%rbp)
	movq	%rsi, -48(%rbp)
	addq	$24, %rdx
	leaq	-64(%rbp), %rsi
	movl	$lwip_netconn_do_send, %edi
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB21_2
# %bb.3:
	movl	-56(%rbp), %eax
	jmp	.LBB21_4
.LBB21_2:
	movzbl	%al, %eax
.LBB21_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB21_5:
	movl	$.L.str.21, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end21:
	.size	netconn_send, .Lfunc_end21-netconn_send
                                        # -- End function
	.globl	netconn_write_partly    # -- Begin function netconn_write_partly
	.p2align	4, 0x90
	.type	netconn_write_partly,@function
netconn_write_partly:                   # @netconn_write_partly
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	leaq	-16(%rbp), %rsi
	movl	$1, %edx
	callq	netconn_write_vectors_partly
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	netconn_write_partly, .Lfunc_end22-netconn_write_partly
                                        # -- End function
	.globl	netconn_write_vectors_partly # -- Begin function netconn_write_vectors_partly
	.p2align	4, 0x90
	.type	netconn_write_vectors_partly,@function
netconn_write_vectors_partly:           # @netconn_write_vectors_partly
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB23_1
# %bb.3:
	movq	%r8, %r14
	movq	%rdi, %r8
	movl	$240, %eax
	andl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB23_4
# %bb.5:
	testb	$2, 108(%r8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_6
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	sete	%r15b
	jmp	.LBB23_8
.LBB23_6:
	xorl	%r15d, %r15d
.LBB23_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-6, %al
	testq	%r14, %r14
	jne	.LBB23_10
# %bb.9:
	testb	%r15b, %r15b
	je	.LBB23_29
.LBB23_10:
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	je	.LBB23_11
# %bb.12:
	movzwl	%dx, %r9d
	leaq	8(%rsi), %rdi
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB23_13:                              # =>This Inner Loop Header: Depth=1
	addq	(%rdi), %r12
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB23_28
# %bb.14:                               #   in Loop: Header=BB23_13 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rdi
	cmpq	%r9, %rbx
	jb	.LBB23_13
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB23_16
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB23_20
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB23_29
# %bb.19:
	movabsq	$9223372036854775807, %r12 # imm = 0x7FFFFFFFFFFFFFFF
.LBB23_20:
	movq	%r8, -96(%rbp)
	movq	%rsi, -80(%rbp)
	movw	%dx, -72(%rbp)
	movq	$0, -64(%rbp)
	movb	%cl, -40(%rbp)
	movq	%r12, -56(%rbp)
	movq	$0, -48(%rbp)
	addq	$24, %r8
	leaq	-96(%rbp), %rsi
	movl	$lwip_netconn_do_write, %edi
	movq	%r8, %rdx
	callq	tcpip_send_msg_wait_sem
                                        # kill: def $al killed $al def $eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB23_22
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_28
.LBB23_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB23_16:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB23_29
.LBB23_22:
	movb	-88(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB23_28
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB23_25
# %bb.24:
	movq	-48(%rbp), %rax
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_25:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r15b, %r15b
	je	.LBB23_27
# %bb.26:
	cmpq	%r12, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_30
.LBB23_27:
	xorl	%eax, %eax
.LBB23_28:
	movl	$42, __A_VARIABLE(%rip)
.LBB23_29:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_1:
	movl	$.L.str.22, %edi
	jmp	.LBB23_2
.LBB23_4:
	movl	$.L.str.23, %edi
.LBB23_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB23_30:
	movl	$.L.str.24, %edi
	jmp	.LBB23_2
.Lfunc_end23:
	.size	netconn_write_vectors_partly, .Lfunc_end23-netconn_write_vectors_partly
                                        # -- End function
	.globl	netconn_close           # -- Begin function netconn_close
	.p2align	4, 0x90
	.type	netconn_close,@function
netconn_close:                          # @netconn_close
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB24_5
# %bb.1:
	movq	%rdi, %rdx
	movq	%rdi, -64(%rbp)
	movw	$10499, -48(%rbp)       # imm = 0x2903
	addq	$24, %rdx
	leaq	-64(%rbp), %rsi
	movl	$lwip_netconn_do_close, %edi
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB24_2
# %bb.3:
	movl	-56(%rbp), %eax
	jmp	.LBB24_4
.LBB24_2:
	movzbl	%al, %eax
.LBB24_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB24_5:
	movl	$.L.str.31, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end24:
	.size	netconn_close, .Lfunc_end24-netconn_close
                                        # -- End function
	.globl	netconn_shutdown        # -- Begin function netconn_shutdown
	.p2align	4, 0x90
	.type	netconn_shutdown,@function
netconn_shutdown:                       # @netconn_shutdown
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB25_5
# %bb.1:
	movq	%rdi, %rax
	testb	%dl, %dl
	setne	%cl
	addb	%cl, %cl
	testb	%sil, %sil
	setne	%dl
	orb	%cl, %dl
	movq	%rdi, -64(%rbp)
	movb	%dl, -48(%rbp)
	movb	$41, -47(%rbp)
	addq	$24, %rax
	leaq	-64(%rbp), %rsi
	movl	$lwip_netconn_do_close, %edi
	movq	%rax, %rdx
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB25_2
# %bb.3:
	movl	-56(%rbp), %eax
	jmp	.LBB25_4
.LBB25_2:
	movzbl	%al, %eax
.LBB25_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB25_5:
	movl	$.L.str.31, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end25:
	.size	netconn_shutdown, .Lfunc_end25-netconn_shutdown
                                        # -- End function
	.globl	netconn_join_leave_group # -- Begin function netconn_join_leave_group
	.p2align	4, 0x90
	.type	netconn_join_leave_group,@function
netconn_join_leave_group:               # @netconn_join_leave_group
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB26_9
# %bb.1:
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB26_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$ip_addr_any, %esi
.LBB26_3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB26_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$ip_addr_any, %edx
.LBB26_5:
	movq	%rax, -64(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -28(%rbp)
	addq	$24, %rax
	leaq	-64(%rbp), %rsi
	movl	$lwip_netconn_do_join_leave_group, %edi
	movq	%rax, %rdx
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB26_6
# %bb.7:
	movl	-56(%rbp), %eax
	jmp	.LBB26_8
.LBB26_6:
	movzbl	%al, %eax
.LBB26_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB26_9:
	movl	$.L.str.25, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end26:
	.size	netconn_join_leave_group, .Lfunc_end26-netconn_join_leave_group
                                        # -- End function
	.globl	netconn_join_leave_group_netif # -- Begin function netconn_join_leave_group_netif
	.p2align	4, 0x90
	.type	netconn_join_leave_group_netif,@function
netconn_join_leave_group_netif:         # @netconn_join_leave_group_netif
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB27_10
# %bb.1:
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB27_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$ip_addr_any, %esi
.LBB27_3:
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	je	.LBB27_4
# %bb.5:
	movq	%rax, -64(%rbp)
	movq	%rsi, -48(%rbp)
	movb	%dl, -32(%rbp)
	movl	%ecx, -28(%rbp)
	addq	$24, %rax
	leaq	-64(%rbp), %rsi
	movl	$lwip_netconn_do_join_leave_group_netif, %edi
	movq	%rax, %rdx
	callq	tcpip_send_msg_wait_sem
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB27_6
# %bb.7:
	movl	-56(%rbp), %eax
	jmp	.LBB27_8
.LBB27_4:
	movb	$-12, %al
	jmp	.LBB27_9
.LBB27_6:
	movzbl	%al, %eax
.LBB27_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB27_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB27_10:
	movl	$.L.str.25, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end27:
	.size	netconn_join_leave_group_netif, .Lfunc_end27-netconn_join_leave_group_netif
                                        # -- End function
	.globl	netconn_gethostbyname_addrtype # -- Begin function netconn_gethostbyname_addrtype
	.p2align	4, 0x90
	.type	netconn_gethostbyname_addrtype,@function
netconn_gethostbyname_addrtype:         # @netconn_gethostbyname_addrtype
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$88, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB28_1
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB28_4
# %bb.5:
	leaq	-9(%rbp), %rax
	movq	%rax, -24(%rbp)
	leaq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movb	%dl, -40(%rbp)
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	sys_sem_new
                                        # kill: def $al killed $al def $eax
	movb	%al, -9(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB28_7
# %bb.6:
	leaq	-56(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movl	$lwip_netconn_do_gethostbyname, %edi
	callq	tcpip_send_msg_wait_sem
	movl	%eax, %ebx
	movq	-32(%rbp), %rdi
	callq	sys_sem_free
	testb	%bl, %bl
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%bl, %ecx
	movzbl	-9(%rbp), %eax
	cmovnel	%ecx, %eax
.LBB28_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB28_1:
	movl	$.L.str.26, %edi
	jmp	.LBB28_2
.LBB28_4:
	movl	$.L.str.27, %edi
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
	.size	netconn_gethostbyname_addrtype, .Lfunc_end28-netconn_gethostbyname_addrtype
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"freeing conn without freeing pcb"
	.size	.L.str, 33

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
	.asciz	"conn has no recvmbox"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"conn->acceptmbox shouldn't exist"
	.size	.L.str.4, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"conn has no op_completed"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"netconn_getaddr: invalid conn"
	.size	.L.str.6, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"netconn_getaddr: invalid addr"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"netconn_getaddr: invalid port"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"netconn_bind: invalid conn"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"netconn_bind_if: invalid conn"
	.size	.L.str.10, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"netconn_connect: invalid conn"
	.size	.L.str.11, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"netconn_disconnect: invalid conn"
	.size	.L.str.12, 33

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"netconn_listen: invalid conn"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"netconn_accept: invalid pointer"
	.size	.L.str.14, 32

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"netconn_accept: invalid conn"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"netconn_recv_tcp_pbuf: invalid conn"
	.size	.L.str.16, 36

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"netconn_recv_udp_raw_netbuf: invalid conn"
	.size	.L.str.17, 42

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"netconn_recv: invalid pointer"
	.size	.L.str.18, 30

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"netconn_recv: invalid conn"
	.size	.L.str.19, 27

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"p != NULL"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"netconn_send: invalid conn"
	.size	.L.str.21, 27

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"netconn_write: invalid conn"
	.size	.L.str.22, 28

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"netconn_write: invalid conn->type"
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"do_write failed to write all bytes"
	.size	.L.str.24, 35

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"netconn_join_leave_group: invalid conn"
	.size	.L.str.25, 39

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"netconn_gethostbyname: invalid name"
	.size	.L.str.26, 36

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"netconn_gethostbyname: invalid addr"
	.size	.L.str.27, 36

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.28,@object # @uk_pr_crit.__str.28
uk_pr_crit.__str.28:
	.asciz	"api_lib.c"
	.size	uk_pr_crit.__str.28, 10

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"a"
	.size	.L.str.29, 2

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"buf != NULL"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"netconn_close: invalid conn"
	.size	.L.str.31, 28

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits