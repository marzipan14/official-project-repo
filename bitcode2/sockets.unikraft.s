	.text
	.file	"sockets.c"
	.globl	_sock_net_close         # -- Begin function _sock_net_close
	.p2align	4, 0x90
	.type	_sock_net_close,@function
_sock_net_close:                        # @_sock_net_close
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	112(%rdi), %rbx
	cmpl	$1, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_1
# %bb.3:
	movl	8(%rbx), %edi
	callq	lwip_close
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_4
# %bb.5:
	movl	%eax, %r14d
	movq	%rbx, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jns	.LBB0_11
# %bb.6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB0_9
# %bb.7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB0_8
.LBB0_9:
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
	callq	_SOCK_NET_GET_ERRNO
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -28(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	-28(%rbp), %r14d
	jmp	.LBB0_10
.LBB0_8:
	callq	__errno
	movl	(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_1:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	jmp	.LBB0_2
.LBB0_4:
	movl	$.L.str, %edi
	movl	$.L.str.21, %esi
.LBB0_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end0:
	.size	_sock_net_close, .Lfunc_end0-_sock_net_close
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
	movl	$uk_pr_crit.__str.20, %edx
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function lwip_close
.LCPI2_0:
	.zero	16
	.text
	.globl	lwip_close
	.p2align	4, 0x90
	.type	lwip_close,@function
lwip_close:                             # @lwip_close
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edi, %ebx
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_1
# %bb.2:
	movq	%rax, %r15
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_4
# %bb.3:
	movl	$240, %ecx
	andl	(%rax), %ecx
	xorl	%r14d, %r14d
	cmpl	$16, %ecx
	sete	%r14b
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_5
.LBB2_1:
	movl	$-1, %esi
	jmp	.LBB2_21
.LBB2_4:
	xorl	%r14d, %r14d
	cmpq	$0, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_22
.LBB2_5:
	movl	%ebx, %edi
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_11
# %bb.6:
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	$-2048, %rbx            # imm = 0xF800
	leaq	-64(%rbp), %r12
	jmp	.LBB2_7
	.p2align	4, 0x90
.LBB2_9:                                #   in Loop: Header=BB2_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rbx
	je	.LBB2_10
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	cmpq	%r13, socket_ipv6_multicast_memberships+2048(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	movups	socket_ipv6_multicast_memberships+2060(%rbx), %xmm0
	movaps	%xmm0, -64(%rbp)
	movzbl	socket_ipv6_multicast_memberships+2076(%rbx), %eax
	movb	%al, -48(%rbp)
	movb	$6, -44(%rbp)
	movzbl	socket_ipv6_multicast_memberships+2056(%rbx), %edx
	movq	$0, socket_ipv6_multicast_memberships+2048(%rbx)
	movb	$0, socket_ipv6_multicast_memberships+2056(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, socket_ipv6_multicast_memberships+2060(%rbx)
	movb	$0, socket_ipv6_multicast_memberships+2076(%rbx)
	movq	(%r13), %rdi
	movq	%r12, %rsi
	movl	$1, %ecx
	callq	netconn_join_leave_group_netif
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_9
.LBB2_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rdi
	callq	netconn_prepare_delete
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB2_16
# %bb.12:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB2_15
# %bb.13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB2_14
.LBB2_15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
	callq	_SOCK_NET_SET_ERRNO
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
	movl	$-1, %esi
	jmp	.LBB2_20
.LBB2_16:
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	free_socket
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB2_19
# %bb.17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB2_18
.LBB2_19:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	xorl	%edi, %edi
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
	callq	_SOCK_NET_SET_ERRNO
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
	jmp	.LBB2_20
.LBB2_14:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %esi
	jmp	.LBB2_20
.LBB2_18:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
.LBB2_20:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_22:
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end2:
	.size	lwip_close, .Lfunc_end2-lwip_close
                                        # -- End function
	.globl	_sock_net_write         # -- Begin function _sock_net_write
	.p2align	4, 0x90
	.type	_sock_net_write,@function
_sock_net_write:                        # @_sock_net_write
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %rbx
	movq	112(%rdi), %rax
	movl	8(%rax), %edi
	movq	(%rsi), %rax
	movl	8(%rsi), %ecx
	movq	$0, -72(%rbp)
	movl	$0, -64(%rbp)
	movq	%rax, -56(%rbp)
	movl	%ecx, -48(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -40(%rbp)
	leaq	-72(%rbp), %rsi
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	callq	lwip_sendmsg
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB3_2
# %bb.1:
	cltq
	subq	%rax, 24(%rbx)
	jmp	.LBB3_7
.LBB3_2:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB3_4
# %bb.3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB3_5
.LBB3_4:
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
	callq	_SOCK_NET_GET_ERRNO
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
	#APP
	movl	%r11d, -72(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	-72(%rbp), %r14d
	jmp	.LBB3_6
.LBB3_5:
	callq	__errno
	movl	(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_sock_net_write, .Lfunc_end3-_sock_net_write
                                        # -- End function
	.globl	lwip_writev             # -- Begin function lwip_writev
	.p2align	4, 0x90
	.type	lwip_writev,@function
lwip_writev:                            # @lwip_writev
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	$0, -48(%rbp)
	movl	$0, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -16(%rbp)
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	callq	lwip_sendmsg
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	lwip_writev, .Lfunc_end4-lwip_writev
                                        # -- End function
	.globl	_sock_net_read          # -- Begin function _sock_net_read
	.p2align	4, 0x90
	.type	_sock_net_read,@function
_sock_net_read:                         # @_sock_net_read
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %rbx
	movq	112(%rdi), %rax
	movl	8(%rax), %edi
	movq	(%rdx), %rax
	movl	8(%rdx), %ecx
	movq	$0, -72(%rbp)
	movl	$0, -64(%rbp)
	movq	%rax, -56(%rbp)
	movl	%ecx, -48(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -40(%rbp)
	leaq	-72(%rbp), %rsi
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	callq	lwip_recvmsg
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB5_2
# %bb.1:
	cltq
	subq	%rax, 24(%rbx)
	jmp	.LBB5_7
.LBB5_2:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB5_4
# %bb.3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB5_5
.LBB5_4:
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
	callq	_SOCK_NET_GET_ERRNO
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
	#APP
	movl	%r11d, -72(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	-72(%rbp), %r14d
	jmp	.LBB5_6
.LBB5_5:
	callq	__errno
	movl	(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_sock_net_read, .Lfunc_end5-_sock_net_read
                                        # -- End function
	.globl	lwip_readv              # -- Begin function lwip_readv
	.p2align	4, 0x90
	.type	lwip_readv,@function
lwip_readv:                             # @lwip_readv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	$0, -48(%rbp)
	movl	$0, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -16(%rbp)
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	callq	lwip_recvmsg
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	lwip_readv, .Lfunc_end6-lwip_readv
                                        # -- End function
	.globl	_sock_net_ioctl         # -- Begin function _sock_net_ioctl
	.p2align	4, 0x90
	.type	_sock_net_ioctl,@function
_sock_net_ioctl:                        # @_sock_net_ioctl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	112(%rdi), %rax
	movl	8(%rax), %edi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	callq	lwip_ioctl
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_sock_net_ioctl, .Lfunc_end7-_sock_net_ioctl
                                        # -- End function
	.globl	lwip_ioctl              # -- Begin function lwip_ioctl
	.p2align	4, 0x90
	.type	lwip_ioctl,@function
lwip_ioctl:                             # @lwip_ioctl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %rbx
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$21537, %rbx            # imm = 0x5421
	jne	.LBB8_11
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB8_6
# %bb.4:
	cmpl	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movb	108(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	orb	$2, %cl
	jmp	.LBB8_7
.LBB8_1:
	movl	$-1, %esi
	jmp	.LBB8_17
.LBB8_11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB8_14
# %bb.12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB8_13
.LBB8_14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-88, %rdi
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
.Ltmp10:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp10
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp11:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp11
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
	jmp	.LBB8_15
.LBB8_6:
	movq	(%rax), %rax
	movb	108(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	andb	$-3, %cl
.LBB8_7:
	movb	%cl, 108(%rax)
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB8_10
# %bb.8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB8_9
.LBB8_10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	xorl	%edi, %edi
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
.Ltmp12:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp12
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp13:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp13
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
	jmp	.LBB8_16
.LBB8_13:
	callq	__errno
	movl	$88, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_15:
	movl	$-1, %esi
	jmp	.LBB8_16
.LBB8_9:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
.LBB8_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	lwip_ioctl, .Lfunc_end8-lwip_ioctl
                                        # -- End function
	.globl	socket                  # -- Begin function socket
	.p2align	4, 0x90
	.type	socket,@function
socket:                                 # @socket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	callq	lwip_socket
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	testl	%eax, %eax
	js	.LBB9_7
# %bb.1:
	movl	%eax, %r14d
	movl	%eax, %edi
	callq	sock_fd_alloc
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB9_7
# %bb.2:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB9_5
# %bb.3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB9_4
.LBB9_5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%ebx, %rdi
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
.Ltmp14:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp14
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp15:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp15
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
	jmp	.LBB9_6
.LBB9_4:
	negl	%ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %edi
	callq	lwip_close
	movl	$-1, %ebx
.LBB9_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	socket, .Lfunc_end9-socket
                                        # -- End function
	.globl	lwip_socket             # -- Begin function lwip_socket
	.p2align	4, 0x90
	.type	lwip_socket,@function
lwip_socket:                            # @lwip_socket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %esi
	je	.LBB10_4
# %bb.1:
	cmpl	$2, %esi
	je	.LBB10_5
# %bb.2:
	cmpl	$3, %esi
	jne	.LBB10_15
# %bb.3:
	xorl	%eax, %eax
	cmpl	$2, %edi
	setne	%al
	leal	64(,%rax,8), %edi
	movzbl	%dl, %esi
	movl	$event_callback, %edx
	jmp	.LBB10_7
.LBB10_4:
	xorl	%eax, %eax
	cmpl	$2, %edi
	setne	%al
	leal	16(,%rax,8), %edi
	movl	$event_callback, %edx
	jmp	.LBB10_6
.LBB10_5:
	xorl	%eax, %eax
	cmpl	$136, %edx
	sete	%al
	leal	32(%rax), %ecx
	orl	$40, %eax
	cmpl	$2, %edi
	cmovel	%ecx, %eax
	movl	$event_callback, %edx
	movl	%eax, %edi
.LBB10_6:
	xorl	%esi, %esi
.LBB10_7:
	callq	netconn_new_with_proto_and_callback
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_12
# %bb.8:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	alloc_socket
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB10_18
# %bb.9:
	movl	%eax, %r14d
	movl	%eax, 104(%rbx)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB10_11
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB10_21
.LBB10_11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
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
.Ltmp16:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp16
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp17:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp17
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
	jmp	.LBB10_27
.LBB10_12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB10_14
# %bb.13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB10_22
.LBB10_14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-105, %rdi
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
.Ltmp18:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp18
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp19:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp19
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
	jmp	.LBB10_26
.LBB10_15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB10_17
# %bb.16:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB10_23
.LBB10_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-22, %rdi
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
.Ltmp20:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp20
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp21:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp21
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
	jmp	.LBB10_26
.LBB10_18:
	movq	%rbx, %rdi
	callq	netconn_delete
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB10_20
# %bb.19:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB10_24
.LBB10_20:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-23, %rdi
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
.Ltmp22:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp22
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp23:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp23
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
	jmp	.LBB10_26
.LBB10_21:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_27
.LBB10_22:
	callq	__errno
	movl	$105, (%rax)
	jmp	.LBB10_25
.LBB10_23:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB10_25
.LBB10_24:
	callq	__errno
	movl	$23, (%rax)
.LBB10_25:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_26:
	movl	$-1, %r14d
.LBB10_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	lwip_socket, .Lfunc_end10-lwip_socket
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sock_fd_alloc
	.type	sock_fd_alloc,@function
sock_fd_alloc:                          # @sock_fd_alloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edi, %r13d
	movl	$0, -44(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB11_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB11_2
.LBB11_3:
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
.Ltmp24:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp24
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_alloc_fd
	movq	%rax, %rsi
.Ltmp25:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp25
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
	#APP
	movl	%r11d, -48(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
	jmp	.LBB11_4
.LBB11_2:
	callq	vfscore_alloc_fd
	movl	%eax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB11_5
# %bb.6:
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_7
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
	movl	$16, %edx
	callq	*8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_9
# %bb.10:
	movq	%rax, %rbx
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_11
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
	movl	$80, %edx
	callq	*8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_13
# %bb.14:
	movq	%rax, %r14
	leaq	65480(%rbp), %r12
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB11_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB11_16
.LBB11_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	s_inode(%rip), %rsi
	leaq	1(%rsi), %rax
	movq	%rax, s_inode(%rip)
	movl	$s_mount, %edi
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
.Ltmp26:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp26
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_vget
	movq	%rax, %rsi
.Ltmp27:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp27
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
	#APP
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax
	jmp	.LBB11_18
.LBB11_5:
	movl	$-23, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-23, %eax
	jmp	.LBB11_43
.LBB11_9:
	movl	$-12, -44(%rbp)
	jmp	.LBB11_57
.LBB11_13:
	movl	$-12, -44(%rbp)
	jmp	.LBB11_55
.LBB11_16:
	movq	s_inode(%rip), %rsi
	leaq	1(%rsi), %rax
	movq	%rax, s_inode(%rip)
	movl	$s_mount, %edi
	movq	%r12, %rdx
	callq	vfscore_vget
	movl	%eax, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_18:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB11_19
# %bb.21:
	cmpq	$0, 65480(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_22
# %bb.23:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB11_26
# %bb.24:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB11_25
.LBB11_26:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	65480(%rbp), %rdi
	addq	$64, %rdi
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
.Ltmp28:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp28
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_mutex_unlock
.Ltmp29:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp29
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
	jmp	.LBB11_27
.LBB11_22:
	movl	$-12, -44(%rbp)
	jmp	.LBB11_52
.LBB11_25:
	movq	65480(%rbp), %rdi
	addq	$64, %rdi
	callq	uk_mutex_unlock
.LBB11_27:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB11_30
# %bb.28:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB11_29
.LBB11_30:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	65480(%rbp), %rsi
	movl	$sock_fd_alloc.__str.23, %r12d
	xorl	%edi, %edi
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
.Ltmp30:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp30
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	dentry_alloc
	movq	%rax, %rsi
.Ltmp31:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp31
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
	#APP
	movq	%r11, -64(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax
	jmp	.LBB11_31
.LBB11_29:
	movq	65480(%rbp), %rsi
	movl	$sock_fd_alloc.__str, %edx
	xorl	%edi, %edi
	callq	dentry_alloc
	movq	%rax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_31:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_32
# %bb.33:
	movl	-48(%rbp), %ecx
	movl	%ecx, (%r14)
	movabsq	$4294967299, %rcx       # imm = 0x100000003
	movq	%rcx, 4(%r14)
	movq	%rbx, 24(%r14)
	movq	%rax, 40(%r14)
	movl	$1, 32(%r14)
	movq	65480(%rbp), %rax
	movq	%rbx, 112(%rax)
	movq	65480(%rbp), %rax
	movl	$6, 44(%rax)
	movq	%r14, (%rbx)
	movl	%r13d, 8(%rbx)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB11_36
# %bb.34:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB11_35
.LBB11_36:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-48(%rbp), %rdi
	movq	(%rbx), %rsi
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
.Ltmp32:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp32
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_install_fd
	movq	%rax, %rsi
.Ltmp33:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp33
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
	#APP
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax
	jmp	.LBB11_37
.LBB11_32:
	movl	$-12, -44(%rbp)
	jmp	.LBB11_48
.LBB11_35:
	movl	-48(%rbp), %edi
	movq	(%rbx), %rsi
	callq	vfscore_install_fd
	movl	%eax, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_37:
	#APP
	movq	%rsp, %rcx
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_38
# %bb.44:
	movl	$_intrstack_start, %eax
	cmpq	%rax, %rcx
	jb	.LBB11_47
# %bb.45:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB11_46
.LBB11_47:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi
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
.Ltmp34:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp34
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	drele
.Ltmp35:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp35
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
	jmp	.LBB11_48
.LBB11_38:
	movl	$_intrstack_start, %eax
	cmpq	%rax, %rcx
	jb	.LBB11_41
# %bb.39:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB11_40
.LBB11_41:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	65480(%rbp), %rdi
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
.Ltmp36:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp36
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vrele
.Ltmp37:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp37
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
	jmp	.LBB11_42
.LBB11_46:
	movq	-64(%rbp), %rdi
	callq	drele
.LBB11_48:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB11_51
# %bb.49:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB11_50
.LBB11_51:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	65480(%rbp), %rdi
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
.Ltmp38:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp38
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vrele
.Ltmp39:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp39
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
	jmp	.LBB11_52
.LBB11_50:
	movq	65480(%rbp), %rdi
	callq	vrele
.LBB11_52:
	movl	$42, __A_VARIABLE(%rip)
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_53
# %bb.54:
	movq	%r14, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_55:
	movl	$42, __A_VARIABLE(%rip)
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_53
# %bb.56:
	movq	%rbx, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_57:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB11_60
# %bb.58:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB11_59
.LBB11_60:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-48(%rbp), %rdi
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
.Ltmp40:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp40
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_fd
.Ltmp41:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp41
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
	jmp	.LBB11_61
.LBB11_59:
	movl	-48(%rbp), %edi
	callq	vfscore_put_fd
.LBB11_61:
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB11_62
.LBB11_43:
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
.LBB11_40:
	movq	65480(%rbp), %rdi
	callq	vrele
.LBB11_42:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax
	jmp	.LBB11_43
.LBB11_7:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-12, -44(%rbp)
	jmp	.LBB11_57
.LBB11_11:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-12, -44(%rbp)
	jmp	.LBB11_55
.LBB11_62:
	movl	$.L.str, %edi
	movl	$.L.str.24, %esi
	jmp	.LBB11_20
.LBB11_53:
	movl	$.L.str, %edi
	movl	$.L.str.21, %esi
	jmp	.LBB11_20
.LBB11_19:
	movl	$.L.str, %edi
	movl	$.L.str.22, %esi
.LBB11_20:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end11:
	.size	sock_fd_alloc, .Lfunc_end11-sock_fd_alloc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _SOCK_NET_SET_ERRNO
	.type	_SOCK_NET_SET_ERRNO,@function
_SOCK_NET_SET_ERRNO:                    # @_SOCK_NET_SET_ERRNO
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	negl	%ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	_SOCK_NET_SET_ERRNO, .Lfunc_end12-_SOCK_NET_SET_ERRNO
                                        # -- End function
	.globl	accept                  # -- Begin function accept
	.p2align	4, 0x90
	.type	accept,@function
accept:                                 # @accept
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %rbx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB13_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB13_2
.LBB13_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp42:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp42
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp43:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp43
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
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rcx
	jmp	.LBB13_8
.LBB13_2:
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB13_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB13_6
.LBB13_3:
	movq	$-22, %rcx
.LBB13_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB13_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB13_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB13_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB13_12
.LBB13_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-32(%rbp), %rdi
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
.Ltmp44:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp44
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp45:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp45
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
	movl	$-1, %ebx
	jmp	.LBB13_23
.LBB13_14:
	movl	8(%rcx), %edi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	lwip_accept
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	testl	%eax, %eax
	js	.LBB13_19
# %bb.15:
	movl	%eax, %r14d
	movl	%eax, %edi
	callq	sock_fd_alloc
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB13_19
# %bb.16:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB13_24
# %bb.17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB13_18
.LBB13_24:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%ebx, %rdi
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
.Ltmp46:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp46
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp47:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp47
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
	jmp	.LBB13_25
.LBB13_18:
	negl	%ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %edi
	callq	lwip_close
	movl	$-1, %ebx
.LBB13_19:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB13_22
# %bb.20:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB13_21
.LBB13_22:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp48:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp48
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp49:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp49
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
	jmp	.LBB13_23
.LBB13_21:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB13_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_12:
	xorl	%ebx, %ebx
	subl	-32(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB13_23
.Lfunc_end13:
	.size	accept, .Lfunc_end13-accept
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sock_net_file_get
	.type	sock_net_file_get,@function
sock_net_file_get:                      # @sock_net_file_get
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_1
# %bb.2:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB14_4
# %bb.3:
	movq	24(%rax), %rcx
	jmp	.LBB14_4
.LBB14_1:
	movq	$-22, %rcx
.LBB14_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	sock_net_file_get, .Lfunc_end14-sock_net_file_get
                                        # -- End function
	.globl	lwip_accept             # -- Begin function lwip_accept
	.p2align	4, 0x90
	.type	lwip_accept,@function
lwip_accept:                            # @lwip_accept
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %r13
	movq	%rsi, %r15
	movw	$0, -42(%rbp)
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r12d
	testq	%rax, %rax
	je	.LBB15_43
# %bb.1:
	movq	%rax, %rbx
	movq	(%rax), %rdi
	leaq	-56(%rbp), %rsi
	callq	netconn_accept
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB15_7
# %bb.2:
	movq	(%rbx), %rcx
	movl	$240, %edx
	andl	(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %edx
	jne	.LBB15_25
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-15, %al
	jne	.LBB15_28
# %bb.4:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB15_6
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB15_39
.LBB15_6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-22, %rdi
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
.Ltmp50:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp50
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp51:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp51
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
	jmp	.LBB15_41
.LBB15_7:
	movq	-56(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB15_54
# %bb.8:
	movl	$1, %esi
	callq	alloc_socket
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB15_31
# %bb.9:
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64, %eax
	jae	.LBB15_55
# %bb.10:
	callq	ukplat_lcpu_save_irqf
	movq	-56(%rbp), %rcx
	movl	104(%rcx), %ebx
	movl	%r14d, 104(%rcx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	-56(%rbp), %rax
	cmpq	$0, 120(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_15
# %bb.11:
	notl	%ebx
	shll	$16, %ebx
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB15_14
# %bb.12:
	shrl	$16, %ebx
	addl	$1, %ebx
	.p2align	4, 0x90
.LBB15_13:                              # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*120(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jg	.LBB15_13
.LBB15_14:
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
.LBB15_15:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB15_49
# %bb.16:
	testq	%r13, %r13
	je	.LBB15_49
# %bb.17:
	movq	-56(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	leaq	-42(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	netconn_getaddr
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB15_36
# %bb.18:
	movl	%eax, %r13d
	movslq	%r14d, %rbx
	movq	-56(%rbp), %rdi
	callq	netconn_delete
	callq	ukplat_lcpu_save_irqf
	shlq	$3, %rbx
	movq	sockets+8(%rbx,%rbx,2), %r15
	movq	sockets(%rbx,%rbx,2), %r14
	xorps	%xmm0, %xmm0
	movups	%xmm0, sockets(%rbx,%rbx,2)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB15_20
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
.LBB15_20:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB15_22
# %bb.21:
	movq	%r14, %rdi
	callq	netconn_delete
	movl	$42, __A_VARIABLE(%rip)
.LBB15_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%r13b, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB15_24
# %bb.23:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB15_35
.LBB15_24:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp52:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp52
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp53:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp53
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
	jmp	.LBB15_41
.LBB15_25:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB15_27
# %bb.26:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB15_34
.LBB15_27:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-95, %rdi
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
.Ltmp54:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp54
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp55:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp55
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
	jmp	.LBB15_41
.LBB15_28:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB15_30
# %bb.29:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB15_35
.LBB15_30:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp56:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp56
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp57:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp57
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
	jmp	.LBB15_41
.LBB15_31:
	movq	-56(%rbp), %rdi
	callq	netconn_delete
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB15_33
# %bb.32:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB15_44
.LBB15_33:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-23, %rdi
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
.Ltmp58:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp58
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp59:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp59
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
	jmp	.LBB15_42
.LBB15_34:
	callq	__errno
	movl	$95, (%rax)
	jmp	.LBB15_40
.LBB15_35:
	callq	__errno
	movl	%ebx, (%rax)
	jmp	.LBB15_40
.LBB15_36:
	movb	-92(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %al
	je	.LBB15_38
# %bb.37:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %al
	jne	.LBB15_45
.LBB15_38:
	movw	$2588, -88(%rbp)        # imm = 0xA1C
	movzwl	-42(%rbp), %edi
	callq	lwip_htons
	movw	%ax, -86(%rbp)
	movl	$0, -84(%rbp)
	movaps	-112(%rbp), %xmm0
	movups	%xmm0, -80(%rbp)
	movzbl	-96(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB15_46
.LBB15_39:
	callq	__errno
	movl	$22, (%rax)
.LBB15_40:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_41:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_42:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_44:
	callq	__errno
	movl	$23, (%rax)
	jmp	.LBB15_41
.LBB15_45:
	movw	$528, -88(%rbp)         # imm = 0x210
	movzwl	-42(%rbp), %edi
	callq	lwip_htons
	movw	%ax, -86(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -84(%rbp)
	leaq	-80(%rbp), %rdi
	movl	$8, %edx
	xorl	%esi, %esi
	callq	memset
.LBB15_46:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %eax
	movzbl	-88(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jbe	.LBB15_48
# %bb.47:
	movl	%ecx, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
.LBB15_48:
	movl	%eax, %edx
	leaq	-88(%rbp), %rsi
	movq	%r15, %rdi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_49:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB15_51
# %bb.50:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB15_52
.LBB15_51:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
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
.Ltmp60:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp60
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp61:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp61
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
	jmp	.LBB15_53
.LBB15_52:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_53:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r12d
	jmp	.LBB15_43
.LBB15_54:
	movl	$.L.str.2, %edi
	jmp	.LBB15_56
.LBB15_55:
	movl	$.L.str.4, %edi
.LBB15_56:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end15:
	.size	lwip_accept, .Lfunc_end15-lwip_accept
                                        # -- End function
	.globl	bind                    # -- Begin function bind
	.p2align	4, 0x90
	.type	bind,@function
bind:                                   # @bind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	$0, -32(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB16_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB16_2
.LBB16_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp62:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp62
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp63:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp63
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
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rcx
	jmp	.LBB16_8
.LBB16_2:
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB16_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB16_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB16_6
.LBB16_3:
	movq	$-22, %rcx
.LBB16_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB16_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB16_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB16_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB16_12
.LBB16_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-32(%rbp), %rdi
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
.Ltmp64:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp64
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp65:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp65
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
	movl	$-1, %ebx
	jmp	.LBB16_18
.LBB16_14:
	movl	8(%rcx), %edi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	lwip_bind
	cmpl	$-2, %eax
	movl	$-1, %ebx
	cmovgl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB16_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB16_16
.LBB16_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp66:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp66
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp67:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp67
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
	jmp	.LBB16_18
.LBB16_16:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB16_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_12:
	xorl	%ebx, %ebx
	subl	-32(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB16_18
.Lfunc_end16:
	.size	bind, .Lfunc_end16-bind
                                        # -- End function
	.globl	lwip_bind               # -- Begin function lwip_bind
	.p2align	4, 0x90
	.type	lwip_bind,@function
lwip_bind:                              # @lwip_bind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movl	%edx, %ebx
	movq	%rsi, %r15
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_1
# %bb.2:
	movq	%rax, %r14
	movb	1(%r15), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %al
	jne	.LBB17_5
# %bb.3:
	movq	(%r14), %rcx
	testb	$8, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_11
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_7
.LBB17_1:
	movl	$-1, %esi
	jmp	.LBB17_35
.LBB17_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %al
	jne	.LBB17_7
# %bb.6:
	movq	(%r14), %rcx
	testb	$8, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_11
.LBB17_7:
	movl	$-6, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB17_10
# %bb.8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB17_9
.LBB17_10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp68:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp68
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp69:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp69
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
	movl	$-1, %esi
	jmp	.LBB17_34
.LBB17_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ebx
	je	.LBB17_13
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$28, %ebx
	jne	.LBB17_36
.LBB17_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %al
	je	.LBB17_15
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %al
	jne	.LBB17_36
.LBB17_15:
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %r15b
	jne	.LBB17_36
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %al
	jne	.LBB17_37
# %bb.17:
	movdqu	8(%r15), %xmm0
	movdqa	%xmm0, -48(%rbp)
	movb	$0, -32(%rbp)
	movdqa	%xmm0, -64(%rbp)        # 16-byte Spill
	movd	%xmm0, %ebx
	movl	%ebx, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %eax            # imm = 0x80FE
	je	.LBB17_20
# %bb.18:
	movl	%ebx, %eax
	andl	$36863, %eax            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rax              # imm = 0x1FF
	je	.LBB17_20
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %eax              # imm = 0x2FF
	jne	.LBB17_21
.LBB17_20:
	movb	24(%r15), %al
	movb	%al, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_21:
	movzwl	2(%r15), %edi
	callq	lwip_htons
	movb	$6, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB17_26
# %bb.22:
	movdqa	-64(%rbp), %xmm1        # 16-byte Reload
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB17_26
# %bb.23:
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-65536, %ecx           # imm = 0xFFFF0000
	jne	.LBB17_26
# %bb.24:
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, -48(%rbp)
	movb	$0, -28(%rbp)
	jmp	.LBB17_25
.LBB17_37:
	movl	4(%r15), %eax
	movl	%eax, -48(%rbp)
	movzwl	2(%r15), %edi
	callq	lwip_htons
	movb	$0, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_25:
	movl	$42, __A_VARIABLE(%rip)
.LBB17_26:
	movq	(%r14), %rdi
	movzwl	%ax, %edx
	leaq	-48(%rbp), %rsi
	callq	netconn_bind
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB17_30
# %bb.27:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB17_29
# %bb.28:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB17_9
.LBB17_29:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp70:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp70
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp71:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp71
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
	movl	$-1, %esi
	jmp	.LBB17_34
.LBB17_9:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %esi
	jmp	.LBB17_34
.LBB17_30:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB17_33
# %bb.31:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB17_32
.LBB17_33:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	xorl	%edi, %edi
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
.Ltmp72:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp72
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp73:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp73
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
	jmp	.LBB17_34
.LBB17_32:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
.LBB17_34:
	movl	$42, __A_VARIABLE(%rip)
.LBB17_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_36:
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end17:
	.size	lwip_bind, .Lfunc_end17-lwip_bind
                                        # -- End function
	.globl	poll                    # -- Begin function poll
	.p2align	4, 0x90
	.type	poll,@function
poll:                                   # @poll
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movq	%rdi, %rbx
	movq	%rsp, -48(%rbp)         # 8-byte Spill
	movl	%esi, %r13d
	movq	%rsp, %r14
	leaq	15(,%r13,8), %rax
	andq	$-16, %rax
	subq	%rax, %r14
	movq	%r14, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, -64(%rbp)         # 4-byte Spill
	testl	%esi, %esi
	je	.LBB18_19
# %bb.1:
	xorl	%r12d, %r12d
	jmp	.LBB18_4
	.p2align	4, 0x90
.LBB18_2:                               #   in Loop: Header=BB18_4 Depth=1
	movl	8(%rcx), %eax
	movl	%eax, (%r14,%r12,8)
	movzwl	4(%rbx,%r12,8), %eax
	movw	%ax, 4(%r14,%r12,8)
	movq	(%rcx), %rdi
	callq	vfscore_put_file
.LBB18_3:                               #   in Loop: Header=BB18_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r12
	jae	.LBB18_19
.LBB18_4:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%r12,8), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB18_8
# %bb.5:                                #   in Loop: Header=BB18_4 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB18_7
# %bb.6:                                #   in Loop: Header=BB18_4 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB18_9
.LBB18_7:                               #   in Loop: Header=BB18_4 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%rbx,%r12,8), %rdi
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
.Ltmp74:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp74
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp75:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp75
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
	#APP
	movq	%r11, -56(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx
	jmp	.LBB18_14
	.p2align	4, 0x90
.LBB18_8:                               #   in Loop: Header=BB18_4 Depth=1
	movl	%eax, (%r14,%r12,8)
	jmp	.LBB18_3
.LBB18_9:                               #   in Loop: Header=BB18_4 Depth=1
	movl	(%rbx,%r12,8), %edi
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB18_12
# %bb.10:                               #   in Loop: Header=BB18_4 Depth=1
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB18_13
# %bb.11:                               #   in Loop: Header=BB18_4 Depth=1
	movq	24(%rax), %rcx
	jmp	.LBB18_13
.LBB18_12:                              #   in Loop: Header=BB18_4 Depth=1
	movq	$-22, %rcx
.LBB18_13:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_14:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB18_2
# %bb.15:                               #   in Loop: Header=BB18_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB18_2
# %bb.16:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB18_18
# %bb.17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB18_39
.LBB18_18:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-56(%rbp), %rdi
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
.Ltmp76:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp76
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp77:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp77
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
	jmp	.LBB18_40
.LBB18_19:
	movq	%r14, %rdi
	movl	-64(%rbp), %r15d        # 4-byte Reload
	movl	%r15d, %esi
	movl	-60(%rbp), %edx         # 4-byte Reload
	callq	lwip_poll
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB18_41
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB18_41
# %bb.21:
	movl	%r13d, %edx
	andl	$1, %edx
	cmpl	$1, %r15d
	jne	.LBB18_27
# %bb.22:
	xorl	%ecx, %ecx
.LBB18_23:
	testq	%rdx, %rdx
	je	.LBB18_41
# %bb.35:
	cmpl	$0, (%rbx,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB18_37
# %bb.36:
	movzwl	6(%r14,%rcx,8), %edx
	jmp	.LBB18_38
.LBB18_27:
	subq	%rdx, %r13
	xorl	%ecx, %ecx
	jmp	.LBB18_30
	.p2align	4, 0x90
.LBB18_28:                              #   in Loop: Header=BB18_30 Depth=1
	movzwl	14(%r14,%rcx,8), %esi
.LBB18_29:                              #   in Loop: Header=BB18_30 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movw	%si, 14(%rbx,%rcx,8)
	addq	$2, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r13
	je	.LBB18_23
.LBB18_30:                              # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rbx,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB18_32
# %bb.31:                               #   in Loop: Header=BB18_30 Depth=1
	movzwl	6(%r14,%rcx,8), %esi
	jmp	.LBB18_33
	.p2align	4, 0x90
.LBB18_32:                              #   in Loop: Header=BB18_30 Depth=1
	xorl	%esi, %esi
.LBB18_33:                              #   in Loop: Header=BB18_30 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movw	%si, 6(%rbx,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%rbx,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB18_28
# %bb.34:                               #   in Loop: Header=BB18_30 Depth=1
	xorl	%esi, %esi
	jmp	.LBB18_29
.LBB18_37:
	xorl	%edx, %edx
.LBB18_38:
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movw	%dx, 6(%rbx,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_42
.LBB18_39:
	xorl	%ebx, %ebx
	subl	-56(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB18_41:
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB18_42:
	movq	%rsi, %rsp
	movl	$42, __A_VARIABLE(%rip)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	poll, .Lfunc_end18-poll
                                        # -- End function
	.globl	lwip_poll               # -- Begin function lwip_poll
	.p2align	4, 0x90
	.type	lwip_poll,@function
lwip_poll:                              # @lwip_poll
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edx, %r13d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB19_2
# %bb.1:
	testl	%r15d, %r15d
	jne	.LBB19_4
.LBB19_2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB19_40
# %bb.3:
	testl	%r15d, %r15d
	jne	.LBB19_40
.LBB19_4:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	$1, %edx
	callq	lwip_pollscan
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
	testl	%eax, %eax
	js	.LBB19_20
# %bb.5:
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_15
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB19_13
# %bb.7:
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB19_33
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$88, %esi
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_34
# %bb.9:
	movq	%rax, %r12
	movl	$88, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%rbx, 40(%r12)
	movl	%r15d, 48(%r12)
	movq	%r12, -56(%rbp)         # 8-byte Spill
	addq	$56, %r12
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	sys_sem_new
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB19_21
# %bb.10:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB19_12
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB19_26
.LBB19_12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-11, %rdi
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
.Ltmp78:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp78
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp79:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp79
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
	jmp	.LBB19_27
.LBB19_13:
	xorl	%r12d, %r12d
.LBB19_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB19_17
# %bb.16:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB19_18
.LBB19_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
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
.Ltmp80:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp80
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp81:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp81
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
	jmp	.LBB19_19
.LBB19_18:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %r14d
.LBB19_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_21:
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	select_cb_list(%rip), %rax
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%rax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%r12, %rcx
	je	.LBB19_23
# %bb.22:
	movq	%rcx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_23:
	movq	%rcx, select_cb_list(%rip)
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	$2, %edx
	callq	lwip_pollscan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB19_31
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	js	.LBB19_29
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB19_30
.LBB19_26:
	callq	__errno
	movl	$11, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_27:
	movq	%rbx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB19_42
# %bb.28:
	callq	*40(%rdi)
.LBB19_38:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB19_39
.LBB19_29:
	xorl	%r13d, %r13d
.LBB19_30:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
	callq	sys_arch_sem_wait
	movl	$42, __A_VARIABLE(%rip)
.LBB19_31:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	$4, %edx
	callq	lwip_pollscan
	movl	%eax, %r12d
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	lwip_unlink_select_cb
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	sys_sem_free
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB19_42
# %bb.32:
	movq	%rbx, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jns	.LBB19_14
	jmp	.LBB19_20
.LBB19_33:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_34:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB19_36
# %bb.35:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB19_37
.LBB19_36:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-11, %rdi
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
.Ltmp82:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp82
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp83:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp83
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
.LBB19_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB19_20
.LBB19_37:
	callq	__errno
	movl	$11, (%rax)
	jmp	.LBB19_38
.LBB19_40:
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
.LBB19_41:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB19_42:
	movl	$.L.str, %edi
	movl	$.L.str.21, %esi
	jmp	.LBB19_41
.Lfunc_end19:
	.size	lwip_poll, .Lfunc_end19-lwip_poll
                                        # -- End function
	.globl	ppoll                   # -- Begin function ppoll
	.p2align	4, 0x90
	.type	ppoll,@function
ppoll:                                  # @ppoll
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB20_1
# %bb.2:
	movq	%rdx, %rbx
	movl	%esi, %r14d
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB20_3
# %bb.4:
	imull	$1000, (%rbx), %esi     # imm = 0x3E8
	movabsq	$4835703278458516699, %rax # imm = 0x431BDE82D7B634DB
	imulq	8(%rbx)
	movq	%rdx, %rbx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$18, %rbx
	addl	%eax, %ebx
	addl	%esi, %ebx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_5
.LBB20_1:
	callq	__errno
	movl	$14, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r12d
	jmp	.LBB20_9
.LBB20_3:
	movl	$-1, %ebx
.LBB20_5:
	leaq	-40(%rbp), %rdx
	movl	$2, %edi
	movq	%rcx, %rsi
	callq	pthread_sigmask
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB20_9
# %bb.6:
	movq	%r15, %rdi
	movl	%r14d, %esi
	movl	%ebx, %edx
	callq	poll
	movl	%eax, %r12d
	leaq	-40(%rbp), %rsi
	movl	$2, %edi
	xorl	%edx, %edx
	callq	pthread_sigmask
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB20_9
# %bb.7:
	testl	%eax, %eax
	je	.LBB20_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r12d
.LBB20_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	ppoll, .Lfunc_end20-ppoll
                                        # -- End function
	.globl	select                  # -- Begin function select
	.p2align	4, 0x90
	.type	select,@function
select:                                 # @select
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rcx, %r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jne	.LBB21_7
# %bb.1:
	testq	%r8, %r8
	je	.LBB21_7
# %bb.2:
	imulq	$1000000000, (%r8), %rax # imm = 0x3B9ACA00
	imulq	$1000, 8(%r8), %rdi     # imm = 0x3E8
	addq	%rax, %rdi
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB21_5
# %bb.3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB21_4
.LBB21_5:
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
.Ltmp84:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp84
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_sched_thread_sleep
.Ltmp85:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp85
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
	jmp	.LBB21_6
.LBB21_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -94(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -90(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -89(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -79(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -78(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -77(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -75(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -74(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -73(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -71(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -70(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -69(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -67(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -66(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -65(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	testl	%edi, %edi
	movq	%r15, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%edi, -108(%rbp)        # 4-byte Spill
	movq	%r8, -104(%rbp)         # 8-byte Spill
	jle	.LBB21_8
# %bb.9:
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	jmp	.LBB21_10
	.p2align	4, 0x90
.LBB21_61:                              #   in Loop: Header=BB21_10 Depth=1
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rax
	orq	%rax, -72(%rbp)
	movq	(%rdx), %rdi
	callq	vfscore_put_file
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB21_62:                              #   in Loop: Header=BB21_10 Depth=1
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, -120(%rbp)        # 8-byte Folded Reload
	je	.LBB21_63
.LBB21_10:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB21_28
# %bb.11:                               #   in Loop: Header=BB21_10 Depth=1
	movq	%r13, %rbx
	movl	$1, %r12d
	movl	%r13d, %ecx
	shlq	%cl, %r12
	shrq	$6, %rbx
	movq	(%rsi,%rbx,8), %rax
	btq	%r13, %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB21_28
# %bb.12:                               #   in Loop: Header=BB21_10 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB21_19
# %bb.13:                               #   in Loop: Header=BB21_10 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB21_14
.LBB21_19:                              #   in Loop: Header=BB21_10 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
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
.Ltmp86:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp86
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp87:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp87
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
	movq	-88(%rbp), %r15         # 8-byte Reload
	#APP
	movq	%r11, -48(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	jmp	.LBB21_20
.LBB21_14:                              #   in Loop: Header=BB21_10 Depth=1
	movl	%r13d, %edi
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_15
# %bb.16:                               #   in Loop: Header=BB21_10 Depth=1
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rdx
	jne	.LBB21_18
# %bb.17:                               #   in Loop: Header=BB21_10 Depth=1
	movq	24(%rax), %rdx
	jmp	.LBB21_18
.LBB21_15:                              #   in Loop: Header=BB21_10 Depth=1
	movq	$-22, %rdx
.LBB21_18:                              #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB21_20:                              #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jg	.LBB21_25
# %bb.21:                               #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rdx             # imm = 0xFE00
	jl	.LBB21_25
# %bb.22:                               #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9, %edx
	jne	.LBB21_25
# %bb.23:                               #   in Loop: Header=BB21_10 Depth=1
	notq	%r12
	andq	%r12, (%rsi,%rbx,8)
	jmp	.LBB21_24
	.p2align	4, 0x90
.LBB21_25:                              #   in Loop: Header=BB21_10 Depth=1
	movl	8(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r14d
	jge	.LBB21_27
# %bb.26:                               #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r14d
.LBB21_27:                              #   in Loop: Header=BB21_10 Depth=1
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rax
	orq	%rax, -96(%rbp)
	movq	(%rdx), %rdi
	callq	vfscore_put_file
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB21_28:                              #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB21_45
# %bb.29:                               #   in Loop: Header=BB21_10 Depth=1
	movq	%r13, %rbx
	movl	$1, %r12d
	movl	%r13d, %ecx
	shlq	%cl, %r12
	shrq	$6, %rbx
	movq	(%rdx,%rbx,8), %rax
	btq	%r13, %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB21_45
# %bb.30:                               #   in Loop: Header=BB21_10 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB21_37
# %bb.31:                               #   in Loop: Header=BB21_10 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB21_32
.LBB21_37:                              #   in Loop: Header=BB21_10 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
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
.Ltmp88:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp88
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp89:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp89
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
	movq	-88(%rbp), %r15         # 8-byte Reload
	#APP
	movq	%r11, -48(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	jmp	.LBB21_38
.LBB21_32:                              #   in Loop: Header=BB21_10 Depth=1
	movl	%r13d, %edi
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_33
# %bb.34:                               #   in Loop: Header=BB21_10 Depth=1
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jne	.LBB21_36
# %bb.35:                               #   in Loop: Header=BB21_10 Depth=1
	movq	24(%rax), %rdx
	jmp	.LBB21_36
.LBB21_33:                              #   in Loop: Header=BB21_10 Depth=1
	movq	$-22, %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB21_36:                              #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_38:                              #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jg	.LBB21_42
# %bb.39:                               #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rdx             # imm = 0xFE00
	jl	.LBB21_42
# %bb.40:                               #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9, %edx
	jne	.LBB21_42
# %bb.41:                               #   in Loop: Header=BB21_10 Depth=1
	notq	%r12
	movq	-64(%rbp), %rdx         # 8-byte Reload
	andq	%r12, (%rdx,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB21_62
	.p2align	4, 0x90
.LBB21_42:                              #   in Loop: Header=BB21_10 Depth=1
	movl	8(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r14d
	jge	.LBB21_44
# %bb.43:                               #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r14d
.LBB21_44:                              #   in Loop: Header=BB21_10 Depth=1
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rax
	orq	%rax, -80(%rbp)
	movq	(%rdx), %rdi
	callq	vfscore_put_file
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB21_45:                              #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB21_62
# %bb.46:                               #   in Loop: Header=BB21_10 Depth=1
	movq	%r13, %rbx
	movl	$1, %r12d
	movl	%r13d, %ecx
	shlq	%cl, %r12
	shrq	$6, %rbx
	movq	(%r15,%rbx,8), %rax
	btq	%r13, %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB21_62
# %bb.47:                               #   in Loop: Header=BB21_10 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB21_54
# %bb.48:                               #   in Loop: Header=BB21_10 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB21_49
.LBB21_54:                              #   in Loop: Header=BB21_10 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
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
.Ltmp90:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp90
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp91:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp91
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
	movq	-88(%rbp), %r15         # 8-byte Reload
	#APP
	movq	%r11, -48(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx
	jmp	.LBB21_55
.LBB21_49:                              #   in Loop: Header=BB21_10 Depth=1
	movl	%r13d, %edi
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_50
# %bb.51:                               #   in Loop: Header=BB21_10 Depth=1
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rdx
	jne	.LBB21_53
# %bb.52:                               #   in Loop: Header=BB21_10 Depth=1
	movq	24(%rax), %rdx
	jmp	.LBB21_53
.LBB21_50:                              #   in Loop: Header=BB21_10 Depth=1
	movq	$-22, %rdx
.LBB21_53:                              #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB21_55:                              #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jg	.LBB21_59
# %bb.56:                               #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rdx             # imm = 0xFE00
	jl	.LBB21_59
# %bb.57:                               #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-9, %edx
	jne	.LBB21_59
# %bb.58:                               #   in Loop: Header=BB21_10 Depth=1
	notq	%r12
	andq	%r12, (%r15,%rbx,8)
.LBB21_24:                              #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB21_62
	.p2align	4, 0x90
.LBB21_59:                              #   in Loop: Header=BB21_10 Depth=1
	movl	8(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r14d
	jge	.LBB21_61
# %bb.60:                               #   in Loop: Header=BB21_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r14d
	jmp	.LBB21_61
.LBB21_8:
	xorl	%r14d, %r14d
.LBB21_63:
	addl	$1, %r14d
	leaq	-96(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	movl	%r14d, %edi
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	lwip_select
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB21_107
# %bb.64:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -108(%rbp)          # 4-byte Folded Reload
	jle	.LBB21_107
# %bb.65:
	movl	%eax, -104(%rbp)        # 4-byte Spill
	xorl	%ebx, %ebx
	movl	$_intrstack_start, %r13d
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB21_66
	.p2align	4, 0x90
.LBB21_104:                             #   in Loop: Header=BB21_66 Depth=1
	movq	(%rcx), %rdi
	callq	vfscore_put_file
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB21_105:                             #   in Loop: Header=BB21_66 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, -120(%rbp)        # 8-byte Folded Reload
	je	.LBB21_106
.LBB21_66:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB21_79
# %bb.67:                               #   in Loop: Header=BB21_66 Depth=1
	movq	%rbx, %r12
	movl	$1, %r14d
	movl	%ebx, %ecx
	shlq	%cl, %r14
	shrq	$6, %r12
	movq	(%rsi,%r12,8), %rax
	btq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB21_79
# %bb.68:                               #   in Loop: Header=BB21_66 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jb	.LBB21_75
# %bb.69:                               #   in Loop: Header=BB21_66 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB21_70
.LBB21_75:                              #   in Loop: Header=BB21_66 Depth=1
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
.Ltmp92:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp92
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp93:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp93
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
	movq	-88(%rbp), %r15         # 8-byte Reload
	#APP
	movq	%r11, -48(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rcx
	jmp	.LBB21_76
.LBB21_70:                              #   in Loop: Header=BB21_66 Depth=1
	movl	%ebx, %edi
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_71
# %bb.72:                               #   in Loop: Header=BB21_66 Depth=1
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB21_74
# %bb.73:                               #   in Loop: Header=BB21_66 Depth=1
	movq	24(%rax), %rcx
	jmp	.LBB21_74
.LBB21_71:                              #   in Loop: Header=BB21_66 Depth=1
	movq	$-22, %rcx
.LBB21_74:                              #   in Loop: Header=BB21_66 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB21_76:                              #   in Loop: Header=BB21_66 Depth=1
	movq	-96(%rbp), %rax
	movl	8(%rcx), %edx
	btq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB21_78
# %bb.77:                               #   in Loop: Header=BB21_66 Depth=1
	notq	%r14
	andq	%r14, (%rsi,%r12,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_78:                              #   in Loop: Header=BB21_66 Depth=1
	movq	(%rcx), %rdi
	callq	vfscore_put_file
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdx         # 8-byte Reload
.LBB21_79:                              #   in Loop: Header=BB21_66 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB21_92
# %bb.80:                               #   in Loop: Header=BB21_66 Depth=1
	movq	%rbx, %r12
	movl	$1, %r14d
	movl	%ebx, %ecx
	shlq	%cl, %r14
	shrq	$6, %r12
	movq	(%rdx,%r12,8), %rax
	btq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB21_92
# %bb.81:                               #   in Loop: Header=BB21_66 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jb	.LBB21_88
# %bb.82:                               #   in Loop: Header=BB21_66 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB21_83
.LBB21_88:                              #   in Loop: Header=BB21_66 Depth=1
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
.Ltmp94:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp94
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp95:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp95
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
	movq	-88(%rbp), %r15         # 8-byte Reload
	#APP
	movq	%r11, -48(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rcx
	jmp	.LBB21_89
.LBB21_83:                              #   in Loop: Header=BB21_66 Depth=1
	movl	%ebx, %edi
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_84
# %bb.85:                               #   in Loop: Header=BB21_66 Depth=1
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB21_87
# %bb.86:                               #   in Loop: Header=BB21_66 Depth=1
	movq	24(%rax), %rcx
	jmp	.LBB21_87
.LBB21_84:                              #   in Loop: Header=BB21_66 Depth=1
	movq	$-22, %rcx
.LBB21_87:                              #   in Loop: Header=BB21_66 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_89:                              #   in Loop: Header=BB21_66 Depth=1
	movq	-80(%rbp), %rax
	movl	8(%rcx), %edx
	btq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB21_91
# %bb.90:                               #   in Loop: Header=BB21_66 Depth=1
	notq	%r14
	movq	-64(%rbp), %rax         # 8-byte Reload
	andq	%r14, (%rax,%r12,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_91:                              #   in Loop: Header=BB21_66 Depth=1
	movq	(%rcx), %rdi
	callq	vfscore_put_file
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB21_92:                              #   in Loop: Header=BB21_66 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB21_105
# %bb.93:                               #   in Loop: Header=BB21_66 Depth=1
	movq	%rbx, %r12
	movl	$1, %r14d
	movl	%ebx, %ecx
	shlq	%cl, %r14
	shrq	$6, %r12
	movq	(%r15,%r12,8), %rax
	btq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB21_105
# %bb.94:                               #   in Loop: Header=BB21_66 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jb	.LBB21_101
# %bb.95:                               #   in Loop: Header=BB21_66 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB21_96
.LBB21_101:                             #   in Loop: Header=BB21_66 Depth=1
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
.Ltmp96:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp96
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp97:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp97
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
	movq	-88(%rbp), %r15         # 8-byte Reload
	#APP
	movq	%r11, -48(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rcx
	jmp	.LBB21_102
.LBB21_96:                              #   in Loop: Header=BB21_66 Depth=1
	movl	%ebx, %edi
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_97
# %bb.98:                               #   in Loop: Header=BB21_66 Depth=1
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB21_100
# %bb.99:                               #   in Loop: Header=BB21_66 Depth=1
	movq	24(%rax), %rcx
	jmp	.LBB21_100
.LBB21_97:                              #   in Loop: Header=BB21_66 Depth=1
	movq	$-22, %rcx
.LBB21_100:                             #   in Loop: Header=BB21_66 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB21_102:                             #   in Loop: Header=BB21_66 Depth=1
	movq	-72(%rbp), %rax
	movl	8(%rcx), %edx
	btq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB21_104
# %bb.103:                              #   in Loop: Header=BB21_66 Depth=1
	notq	%r14
	andq	%r14, (%r15,%r12,8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB21_104
.LBB21_106:
	movl	-104(%rbp), %eax        # 4-byte Reload
	jmp	.LBB21_107
.LBB21_4:
	callq	uk_sched_thread_sleep
.LBB21_6:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB21_107:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	select, .Lfunc_end21-select
                                        # -- End function
	.globl	lwip_select             # -- Begin function lwip_select
	.p2align	4, 0x90
	.type	lwip_select,@function
lwip_select:                            # @lwip_select
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65, %edi
	jb	.LBB22_4
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB22_3
# %bb.2:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB22_12
.LBB22_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-22, %rdi
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
.Ltmp98:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp98
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp99:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp99
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
	jmp	.LBB22_95
.LBB22_4:
	movq	%r8, %r15
	movq	%rcx, %r13
	movq	%rdx, %r12
	movl	%edi, %ebx
	leaq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-96(%rbp), %r8
	leaq	-88(%rbp), %r9
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	lwip_selscan
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB22_9
# %bb.5:
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB22_13
.LBB22_6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB22_8
# %bb.7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB22_22
.LBB22_8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
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
.Ltmp100:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp100
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp101:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp101
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
	jmp	.LBB22_23
.LBB22_9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB22_11
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB22_29
.LBB22_11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rdi
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
.Ltmp102:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp102
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp103:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp103
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
	jmp	.LBB22_95
.LBB22_12:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB22_94
.LBB22_13:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB22_16
# %bb.14:
	cmpq	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB22_16
# %bb.15:
	cmpq	$0, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB22_49
.LBB22_16:
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB22_88
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$88, %esi
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_89
# %bb.18:
	movq	%rax, %r14
	movl	$88, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 16(%r14)
	movq	%r12, 24(%r14)
	movq	%r13, 32(%r14)
	movq	%r13, -72(%rbp)         # 8-byte Spill
	movq	%r14, %r13
	addq	$56, %r13
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	sys_sem_new
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB22_30
# %bb.19:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB22_21
# %bb.20:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB22_46
.LBB22_21:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-12, %rdi
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
.Ltmp104:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp104
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp105:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp105
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
	jmp	.LBB22_47
.LBB22_22:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB22_25
# %bb.24:
	movq	-96(%rbp), %rax
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_25:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB22_27
# %bb.26:
	movq	-88(%rbp), %rax
	movq	%rax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_27:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB22_97
# %bb.28:
	movq	-80(%rbp), %rax
	movq	%rax, (%r13)
	jmp	.LBB22_96
.LBB22_29:
	callq	__errno
	movl	$9, (%rax)
	jmp	.LBB22_94
.LBB22_30:
	movq	%r13, -104(%rbp)        # 8-byte Spill
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %r13         # 8-byte Reload
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	select_cb_list(%rip), %rax
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_32
# %bb.31:
	movq	%r14, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_32:
	movq	%r14, -120(%rbp)        # 8-byte Spill
	movq	%r14, select_cb_list(%rip)
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	testl	%ebx, %ebx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jle	.LBB22_44
# %bb.33:
	movslq	-52(%rbp), %r14         # 4-byte Folded Reload
	movl	$sockets+22, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB22_35
.LBB22_34:                              #   in Loop: Header=BB22_35 Depth=1
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rbx
	cmpq	%r14, %r12
	jge	.LBB22_44
.LBB22_35:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB22_37
# %bb.36:                               #   in Loop: Header=BB22_35 Depth=1
	movq	%r12, %rax
	shrq	$6, %rax
	movq	(%rsi,%rax,8), %rax
	btq	%r12, %rax
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB22_41
.LBB22_37:                              #   in Loop: Header=BB22_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	je	.LBB22_39
# %bb.38:                               #   in Loop: Header=BB22_35 Depth=1
	movq	%r12, %rax
	shrq	$6, %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	btq	%r12, %rax
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB22_41
.LBB22_39:                              #   in Loop: Header=BB22_35 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB22_34
# %bb.40:                               #   in Loop: Header=BB22_35 Depth=1
	movq	%r12, %rax
	shrq	$6, %rax
	movq	(%r13,%rax,8), %rax
	btq	%r12, %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB22_34
.LBB22_41:                              #   in Loop: Header=BB22_35 Depth=1
	callq	ukplat_lcpu_save_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$63, %r12
	ja	.LBB22_54
# %bb.42:                               #   in Loop: Header=BB22_35 Depth=1
	movzbl	(%rbx), %ecx
	movl	%ecx, %edx
	incb	%dl
	movb	%dl, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB22_57
# %bb.43:                               #   in Loop: Header=BB22_35 Depth=1
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB22_34
.LBB22_44:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-96(%rbp), %r8
	leaq	-88(%rbp), %r9
	movl	-52(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, %edi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r13, %rcx
	callq	lwip_selscan
	xorl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_50
# %bb.45:
	movl	%eax, %r14d
	jmp	.LBB22_53
.LBB22_46:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_47:
	movl	$42, __A_VARIABLE(%rip)
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB22_99
# %bb.48:
	movq	%r14, %rsi
	callq	*40(%rdi)
.LBB22_93:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_94
.LBB22_49:
	xorl	%r14d, %r14d
	jmp	.LBB22_6
.LBB22_50:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	movq	-104(%rbp), %rdi        # 8-byte Reload
	je	.LBB22_52
# %bb.51:
	imulq	$1000, (%r15), %rcx     # imm = 0x3E8
	movl	$500, %eax              # imm = 0x1F4
	addq	8(%r15), %rax
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rdx
	movl	$1, %esi
	cmovgl	%edx, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB22_52:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
	callq	sys_arch_sem_wait
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %esi
	xorl	%r14d, %r14d
.LBB22_53:
	movl	%ebx, %r12d
	jmp	.LBB22_64
.LBB22_54:
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB22_56
# %bb.55:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB22_60
.LBB22_56:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rdi
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
.Ltmp106:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp106
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp107:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp107
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
	jmp	.LBB22_63
.LBB22_57:
	movb	%cl, (%rbx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB22_59
# %bb.58:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB22_61
.LBB22_59:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-16, %rdi
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
.Ltmp108:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp108
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp109:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp109
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
	jmp	.LBB22_63
.LBB22_60:
	callq	__errno
	movl	$9, (%rax)
	jmp	.LBB22_62
.LBB22_61:
	callq	__errno
	movl	$16, (%rax)
.LBB22_62:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_63:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
	xorl	%esi, %esi
.LBB22_64:
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	jle	.LBB22_82
# %bb.65:
	movslq	%r12d, %rbx
	movl	$sockets+22, %r12d
	xorl	%r13d, %r13d
	jmp	.LBB22_70
.LBB22_66:                              #   in Loop: Header=BB22_70 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rdi
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
.Ltmp110:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp110
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp111:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp111
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
.LBB22_67:                              #   in Loop: Header=BB22_70 Depth=1
	movl	$-1, %r14d
.LBB22_68:                              #   in Loop: Header=BB22_70 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdx         # 8-byte Reload
.LBB22_69:                              #   in Loop: Header=BB22_70 Depth=1
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %r12
	cmpq	%rbx, %r13
	jge	.LBB22_82
.LBB22_70:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB22_72
# %bb.71:                               #   in Loop: Header=BB22_70 Depth=1
	movq	%r13, %rax
	shrq	$6, %rax
	movq	(%rdx,%rax,8), %rax
	btq	%r13, %rax
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB22_76
.LBB22_72:                              #   in Loop: Header=BB22_70 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	je	.LBB22_74
# %bb.73:                               #   in Loop: Header=BB22_70 Depth=1
	movq	%r13, %rax
	shrq	$6, %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	btq	%r13, %rax
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB22_76
.LBB22_74:                              #   in Loop: Header=BB22_70 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB22_69
# %bb.75:                               #   in Loop: Header=BB22_70 Depth=1
	movq	%r13, %rax
	shrq	$6, %rax
	movq	(%rcx,%rax,8), %rax
	btq	%r13, %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB22_69
	.p2align	4, 0x90
.LBB22_76:                              #   in Loop: Header=BB22_70 Depth=1
	callq	ukplat_lcpu_save_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$63, %r13
	jbe	.LBB22_80
# %bb.77:                               #   in Loop: Header=BB22_70 Depth=1
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB22_66
# %bb.78:                               #   in Loop: Header=BB22_70 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	ja	.LBB22_66
# %bb.79:                               #   in Loop: Header=BB22_70 Depth=1
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_67
.LBB22_80:                              #   in Loop: Header=BB22_70 Depth=1
	movzbl	(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB22_98
# %bb.81:                               #   in Loop: Header=BB22_70 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addb	$-1, %cl
	movb	%cl, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	jmp	.LBB22_68
.LBB22_82:
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	callq	lwip_unlink_select_cb
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	sys_sem_free
	movq	flexos_shared_alloc(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	movq	-72(%rbp), %r13         # 8-byte Reload
	je	.LBB22_99
# %bb.83:
	movq	%rbx, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	-52(%rbp), %edi         # 4-byte Reload
	leaq	-80(%rbp), %rax
	js	.LBB22_95
# %bb.84:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, -112(%rbp)         # 4-byte Folded Reload
	je	.LBB22_86
# %bb.85:
	movq	%rax, (%rsp)
	leaq	-96(%rbp), %r8
	leaq	-88(%rbp), %r9
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	lwip_selscan
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB22_86:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_6
.LBB22_88:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_89:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB22_91
# %bb.90:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB22_92
.LBB22_91:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-12, %rdi
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
.Ltmp112:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp112
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp113:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp113
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
.LBB22_94:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_95:
	movl	$-1, %r14d
.LBB22_96:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_97:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_92:
	callq	__errno
	movl	$12, (%rax)
	jmp	.LBB22_93
.LBB22_98:
	movl	$.L.str.17, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	jmp	.LBB22_100
.LBB22_99:
	movl	$.L.str, %edi
	movl	$.L.str.21, %esi
.LBB22_100:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end22:
	.size	lwip_select, .Lfunc_end22-lwip_select
                                        # -- End function
	.globl	shutdown                # -- Begin function shutdown
	.p2align	4, 0x90
	.type	shutdown,@function
shutdown:                               # @shutdown
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%rbx
	subq	$16, %rsp
	movl	%esi, %ebx
	movq	$0, -24(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB23_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB23_2
.LBB23_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp114:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp114
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp115:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp115
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
	#APP
	movq	%r11, -24(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-24(%rbp), %rcx
	jmp	.LBB23_8
.LBB23_2:
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB23_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB23_6
.LBB23_3:
	movq	$-22, %rcx
.LBB23_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -24(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB23_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB23_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB23_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB23_12
.LBB23_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-24(%rbp), %rdi
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
.Ltmp116:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp116
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp117:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp117
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
	movl	$-1, %ebx
	jmp	.LBB23_18
.LBB23_14:
	movl	8(%rcx), %edi
	movl	%ebx, %esi
	callq	lwip_shutdown
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB23_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB23_16
.LBB23_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp118:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp118
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp119:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp119
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
	jmp	.LBB23_18
.LBB23_16:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB23_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r15
	popq	%rbp
	retq
.LBB23_12:
	xorl	%ebx, %ebx
	subl	-24(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB23_18
.Lfunc_end23:
	.size	shutdown, .Lfunc_end23-shutdown
                                        # -- End function
	.globl	lwip_shutdown           # -- Begin function lwip_shutdown
	.p2align	4, 0x90
	.type	lwip_shutdown,@function
lwip_shutdown:                          # @lwip_shutdown
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %ebx
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
	testq	%rax, %rax
	je	.LBB24_22
# %bb.1:
	movq	(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB24_6
# %bb.2:
	movl	$240, %eax
	andl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB24_9
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB24_12
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ebx
	jne	.LBB24_13
# %bb.5:
	xorl	%ecx, %ecx
	movb	$1, %al
	jmp	.LBB24_14
.LBB24_6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB24_8
# %bb.7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB24_17
.LBB24_8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-128, %rdi
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
.Ltmp120:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp120
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp121:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp121
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB24_22
.LBB24_9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB24_11
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB24_18
.LBB24_11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-95, %rdi
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
.Ltmp122:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp122
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp123:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp123
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB24_22
.LBB24_12:
	xorl	%eax, %eax
	movb	$1, %cl
	jmp	.LBB24_14
.LBB24_13:
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %al
	movb	$1, %cl
	cmpl	$2, %ebx
	jne	.LBB24_23
.LBB24_14:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%cl, %esi
	movzbl	%al, %edx
	callq	netconn_shutdown
	movl	%eax, %r14d
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB24_16
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB24_20
.LBB24_16:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp124:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp124
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp125:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp125
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
	jmp	.LBB24_21
.LBB24_17:
	callq	__errno
	movl	$128, (%rax)
	jmp	.LBB24_19
.LBB24_18:
	callq	__errno
	movl	$95, (%rax)
.LBB24_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB24_22
.LBB24_20:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB24_21:
	movl	$42, __A_VARIABLE(%rip)
	negb	%r14b
	sbbl	%r14d, %r14d
.LBB24_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_23:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB24_25
# %bb.24:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB24_26
.LBB24_25:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-22, %rdi
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
.Ltmp126:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp126
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp127:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp127
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB24_22
.LBB24_26:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB24_19
.Lfunc_end24:
	.size	lwip_shutdown, .Lfunc_end24-lwip_shutdown
                                        # -- End function
	.globl	getpeername             # -- Begin function getpeername
	.p2align	4, 0x90
	.type	getpeername,@function
getpeername:                            # @getpeername
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	$0, -32(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB25_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB25_2
.LBB25_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp128:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp128
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp129:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp129
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
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rcx
	jmp	.LBB25_8
.LBB25_2:
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB25_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB25_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB25_6
.LBB25_3:
	movq	$-22, %rcx
.LBB25_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB25_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB25_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB25_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB25_12
.LBB25_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-32(%rbp), %rdi
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
.Ltmp130:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp130
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp131:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp131
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
	movl	$-1, %ebx
	jmp	.LBB25_18
.LBB25_14:
	movl	8(%rcx), %edi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	lwip_getaddrname
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB25_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB25_16
.LBB25_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp132:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp132
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp133:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp133
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
	jmp	.LBB25_18
.LBB25_16:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB25_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_12:
	xorl	%ebx, %ebx
	subl	-32(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB25_18
.Lfunc_end25:
	.size	getpeername, .Lfunc_end25-getpeername
                                        # -- End function
	.globl	lwip_getpeername        # -- Begin function lwip_getpeername
	.p2align	4, 0x90
	.type	lwip_getpeername,@function
lwip_getpeername:                       # @lwip_getpeername
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%ecx, %ecx
	callq	lwip_getaddrname
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end26:
	.size	lwip_getpeername, .Lfunc_end26-lwip_getpeername
                                        # -- End function
	.globl	getsockname             # -- Begin function getsockname
	.p2align	4, 0x90
	.type	getsockname,@function
getsockname:                            # @getsockname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	$0, -32(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB27_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB27_2
.LBB27_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp134:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp134
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp135:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp135
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
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rcx
	jmp	.LBB27_8
.LBB27_2:
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB27_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB27_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB27_6
.LBB27_3:
	movq	$-22, %rcx
.LBB27_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB27_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB27_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB27_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB27_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB27_12
.LBB27_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-32(%rbp), %rdi
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
.Ltmp136:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp136
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp137:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp137
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
	movl	$-1, %ebx
	jmp	.LBB27_18
.LBB27_14:
	movl	8(%rcx), %edi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movl	$1, %ecx
	callq	lwip_getaddrname
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB27_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB27_16
.LBB27_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp138:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp138
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp139:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp139
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
	jmp	.LBB27_18
.LBB27_16:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB27_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_12:
	xorl	%ebx, %ebx
	subl	-32(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB27_18
.Lfunc_end27:
	.size	getsockname, .Lfunc_end27-getsockname
                                        # -- End function
	.globl	lwip_getsockname        # -- Begin function lwip_getsockname
	.p2align	4, 0x90
	.type	lwip_getsockname,@function
lwip_getsockname:                       # @lwip_getsockname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %ecx
	callq	lwip_getaddrname
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end28:
	.size	lwip_getsockname, .Lfunc_end28-lwip_getsockname
                                        # -- End function
	.globl	getsockopt              # -- Begin function getsockopt
	.p2align	4, 0x90
	.type	getsockopt,@function
getsockopt:                             # @getsockopt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r8, %r14
	movq	%rcx, %r12
	movl	%edx, %r13d
	movl	%esi, %ebx
	movq	$0, -48(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB29_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB29_2
.LBB29_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp140:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp140
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp141:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp141
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
	#APP
	movq	%r11, -48(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rcx
	jmp	.LBB29_8
.LBB29_2:
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB29_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB29_6
.LBB29_3:
	movq	$-22, %rcx
.LBB29_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB29_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB29_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB29_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB29_12
.LBB29_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-48(%rbp), %rdi
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
.Ltmp142:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp142
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp143:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp143
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
	movl	$-1, %ebx
	jmp	.LBB29_18
.LBB29_14:
	movl	8(%rcx), %edi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	lwip_getsockopt
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB29_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB29_16
.LBB29_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp144:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp144
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp145:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp145
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
	jmp	.LBB29_18
.LBB29_16:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB29_18:
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
.LBB29_12:
	xorl	%ebx, %ebx
	subl	-48(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB29_18
.Lfunc_end29:
	.size	getsockopt, .Lfunc_end29-getsockopt
                                        # -- End function
	.globl	lwip_getsockopt         # -- Begin function lwip_getsockopt
	.p2align	4, 0x90
	.type	lwip_getsockopt,@function
lwip_getsockopt:                        # @lwip_getsockopt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rcx, %r15
	movl	%edx, %r12d
	movl	%esi, %r13d
	movl	%edi, %r14d
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	testq	%rax, %rax
	je	.LBB30_26
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB30_5
# %bb.2:
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB30_5
# %bb.3:
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64, %r14d
	jb	.LBB30_8
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB30_19
.LBB30_5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB30_7
# %bb.6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB30_23
.LBB30_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-14, %rdi
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
.Ltmp146:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp146
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp147:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp147
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB30_26
.LBB30_8:
	movslq	%r14d, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rax,%rax,2), %rax
	movq	sockets(,%rax,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB30_19
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$109, %eax
	cmpl	$40, %r13d
	jg	.LBB30_27
# %bb.10:
	testl	%r13d, %r13d
	je	.LBB30_34
# %bb.11:
	cmpl	$6, %r13d
	jne	.LBB30_45
# %bb.12:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpl	$4, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	jb	.LBB30_20
# %bb.13:
	movq	8(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB30_58
# %bb.14:
	movl	$240, %edx
	andl	(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %edx
	jne	.LBB30_70
# %bb.15:
	cmpl	$1, 72(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB30_20
# %bb.16:
	cmpl	$2, %r12d
	je	.LBB30_95
# %bb.17:
	cmpl	$1, %r12d
	jne	.LBB30_45
# %bb.18:
	movzwl	82(%rcx), %eax
	shrl	$6, %eax
	jmp	.LBB30_42
.LBB30_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$9, %ebx
.LBB30_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB30_22
# %bb.21:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB30_24
.LBB30_22:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	negl	%eax
	movslq	%eax, %rdi
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
.Ltmp148:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp148
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp149:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp149
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
	jmp	.LBB30_25
.LBB30_23:
	callq	__errno
	movl	$14, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB30_26
.LBB30_24:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB30_25:
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	sbbl	%ebx, %ebx
.LBB30_26:
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
.LBB30_27:
	cmpl	$41, %r13d
	je	.LBB30_39
# %bb.28:
	cmpl	$4095, %r13d            # imm = 0xFFF
	jne	.LBB30_45
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4102, %r12d            # imm = 0x1006
	jg	.LBB30_46
# %bb.30:
	leal	-2(%r12), %ecx
	cmpl	$30, %ecx
	ja	.LBB30_45
# %bb.31:
	jmpq	*.LJTI30_1(,%rcx,8)
.LBB30_32:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r12d
	jne	.LBB30_53
# %bb.33:
	movl	$240, %eax
	andl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$109, %ebx
	movl	$32, %r12d
	cmpl	$32, %eax
	jne	.LBB30_20
	jmp	.LBB30_55
.LBB30_34:
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r12d
	cmpl	$6, %r12d
	ja	.LBB30_45
# %bb.35:
	jmpq	*.LJTI30_0(,%r12,8)
.LBB30_36:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$4, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	jb	.LBB30_20
# %bb.37:
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_58
# %bb.38:
	movzbl	50(%rax), %eax
	jmp	.LBB30_43
.LBB30_39:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$27, %r12d
	jne	.LBB30_45
# %bb.40:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$4, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	jb	.LBB30_20
# %bb.41:
	movl	108(%rdi), %eax
	shrl	$5, %eax
.LBB30_42:
	andl	$1, %eax
.LBB30_43:
	movl	%eax, (%r15)
.LBB30_44:
	xorl	%eax, %eax
.LBB30_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ebx
	jmp	.LBB30_20
.LBB30_46:
	cmpl	$4103, %r12d            # imm = 0x1007
	je	.LBB30_80
# %bb.47:
	cmpl	$4104, %r12d            # imm = 0x1008
	je	.LBB30_82
# %bb.48:
	cmpl	$4106, %r12d            # imm = 0x100A
	jne	.LBB30_45
# %bb.49:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$4, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	jb	.LBB30_20
# %bb.50:
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_58
# %bb.51:
	movl	$240, %ecx
	andl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %ecx
	jne	.LBB30_70
# %bb.52:
	movzbl	64(%rax), %eax
	jmp	.LBB30_42
.LBB30_53:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r12d
	je	.LBB30_55
# %bb.54:
	cmpl	$8, %r12d
	jne	.LBB30_100
.LBB30_55:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$4, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	jb	.LBB30_20
# %bb.56:
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_58
# %bb.57:
	movzbl	49(%rax), %eax
	andl	%eax, %r12d
	movl	%r12d, (%r15)
	jmp	.LBB30_44
.LBB30_59:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	je	.LBB30_20
# %bb.60:
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_58
# %bb.61:
	movl	$240, %ecx
	andl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %ecx
	jne	.LBB30_70
# %bb.62:
	movb	77(%rax), %al
	movb	%al, (%r15)
	jmp	.LBB30_44
.LBB30_63:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$4, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	jb	.LBB30_20
# %bb.64:
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_58
# %bb.65:
	movzbl	51(%rax), %eax
	jmp	.LBB30_43
.LBB30_66:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$4, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	jb	.LBB30_20
# %bb.67:
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_58
# %bb.68:
	movl	$240, %ecx
	andl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %ecx
	jne	.LBB30_70
# %bb.69:
	movl	72(%rax), %eax
	jmp	.LBB30_43
.LBB30_70:
	movl	$42, __A_VARIABLE(%rip)
	movl	$109, %ebx
	jmp	.LBB30_20
.LBB30_71:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	je	.LBB30_20
# %bb.72:
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_58
# %bb.73:
	testb	$8, 64(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB30_91
# %bb.74:
	movb	$0, (%r15)
	jmp	.LBB30_44
.LBB30_75:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$4, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	jb	.LBB30_20
# %bb.76:
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_58
# %bb.77:
	movl	$240, %ecx
	andl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$109, %ebx
	cmpl	$16, %ecx
	jne	.LBB30_20
# %bb.78:
	cmpl	$1, 72(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB30_96
# %bb.79:
	movl	$0, (%r15)
	jmp	.LBB30_44
.LBB30_58:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB30_20
.LBB30_80:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$3, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB30_87
# %bb.81:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	jmp	.LBB30_20
.LBB30_82:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$4, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	jb	.LBB30_20
# %bb.83:
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$-16, %cl
	cmpb	$16, %cl
	je	.LBB30_96
# %bb.84:
	cmpb	$32, %cl
	je	.LBB30_99
# %bb.85:
	cmpb	$64, %cl
	jne	.LBB30_43
# %bb.86:
	movl	$3, (%r15)
	jmp	.LBB30_44
.LBB30_87:
	callq	netconn_err
	movsbl	%al, %edi
	callq	err_to_errno
	jmp	.LBB30_43
.LBB30_91:
	movb	$1, (%r15)
	jmp	.LBB30_44
.LBB30_95:
	movl	264(%rcx), %eax
	jmp	.LBB30_43
.LBB30_96:
	movl	$1, (%r15)
	jmp	.LBB30_44
.LBB30_99:
	movl	$2, (%r15)
	jmp	.LBB30_44
.LBB30_100:
	movl	$.L.str.43, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end30:
	.size	lwip_getsockopt, .Lfunc_end30-lwip_getsockopt
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI30_0:
	.quad	.LBB30_36
	.quad	.LBB30_63
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_59
	.quad	.LBB30_66
	.quad	.LBB30_71
.LJTI30_1:
	.quad	.LBB30_75
	.quad	.LBB30_45
	.quad	.LBB30_32
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_32
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_45
	.quad	.LBB30_32
                                        # -- End function
	.text
	.globl	setsockopt              # -- Begin function setsockopt
	.p2align	4, 0x90
	.type	setsockopt,@function
setsockopt:                             # @setsockopt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%r8d, %r14d
	movq	%rcx, %r12
	movl	%edx, %r13d
	movl	%esi, %ebx
	movq	$0, -48(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB31_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB31_2
.LBB31_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp150:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp150
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp151:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp151
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
	#APP
	movq	%r11, -48(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rcx
	jmp	.LBB31_8
.LBB31_2:
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB31_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB31_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB31_6
.LBB31_3:
	movq	$-22, %rcx
.LBB31_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB31_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB31_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB31_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB31_12
.LBB31_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-48(%rbp), %rdi
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
.Ltmp152:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp152
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp153:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp153
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
	movl	$-1, %ebx
	jmp	.LBB31_18
.LBB31_14:
	movl	8(%rcx), %edi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movq	%r12, %rcx
	movl	%r14d, %r8d
	callq	lwip_setsockopt
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB31_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB31_16
.LBB31_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp154:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp154
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp155:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp155
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
	jmp	.LBB31_18
.LBB31_16:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB31_18:
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
.LBB31_12:
	xorl	%ebx, %ebx
	subl	-48(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB31_18
.Lfunc_end31:
	.size	setsockopt, .Lfunc_end31-setsockopt
                                        # -- End function
	.globl	lwip_setsockopt         # -- Begin function lwip_setsockopt
	.p2align	4, 0x90
	.type	lwip_setsockopt,@function
lwip_setsockopt:                        # @lwip_setsockopt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	%r8d, -64(%rbp)         # 4-byte Spill
	movq	%rcx, %r15
	movl	%edx, %r12d
	movl	%esi, %r13d
	movl	%edi, %ebx
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
	testq	%rax, %rax
	je	.LBB32_25
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB32_8
# %bb.2:
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64, %ebx
	jb	.LBB32_11
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB32_4
.LBB32_8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB32_10
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB32_32
.LBB32_10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-14, %rdi
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
.Ltmp156:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp156
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp157:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp157
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB32_25
.LBB32_11:
	movslq	%ebx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rax,%rax,2), %rcx
	movq	sockets(,%rcx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_4
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$109, %edi
	cmpl	$40, %r13d
	jg	.LBB32_26
# %bb.13:
	testl	%r13d, %r13d
	je	.LBB32_33
# %bb.14:
	cmpl	$6, %r13d
	jne	.LBB32_135
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	cmpl	$4, -64(%rbp)           # 4-byte Folded Reload
	jb	.LBB32_5
# %bb.16:
	movq	8(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB32_94
# %bb.17:
	movl	$240, %esi
	andl	(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %esi
	jne	.LBB32_91
# %bb.18:
	cmpl	$1, 72(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_5
# %bb.19:
	cmpl	$2, %r12d
	je	.LBB32_108
# %bb.20:
	cmpl	$1, %r12d
	jne	.LBB32_135
# %bb.21:
	cmpl	$0, (%r15)
	movzwl	82(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_124
# %bb.22:
	orl	$64, %eax
	jmp	.LBB32_125
.LBB32_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$9, %r14d
.LBB32_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB32_7
# %bb.6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB32_23
.LBB32_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	negl	%eax
	movslq	%eax, %rdi
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
.Ltmp158:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp158
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp159:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp159
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
	jmp	.LBB32_24
.LBB32_23:
	callq	__errno
	movl	%r14d, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB32_24:
	movl	$42, __A_VARIABLE(%rip)
	negl	%r14d
	sbbl	%r14d, %r14d
.LBB32_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB32_26:
	cmpl	$41, %r13d
	je	.LBB32_38
# %bb.27:
	cmpl	$4095, %r13d            # imm = 0xFFF
	jne	.LBB32_135
# %bb.28:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r12d
	ja	.LBB32_52
# %bb.29:
	movl	%r12d, %edx
	movabsq	$4294967568, %rsi       # imm = 0x100000110
	btq	%rdx, %rsi
	jae	.LBB32_52
# %bb.30:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r12d
	jne	.LBB32_63
# %bb.31:
	movl	$240, %edx
	andl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$109, %r14d
	movb	$32, %cl
	cmpl	$32, %edx
	jne	.LBB32_5
	jmp	.LBB32_66
.LBB32_32:
	callq	__errno
	movl	$14, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB32_25
.LBB32_33:
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r12d
	cmpl	$6, %r12d
	ja	.LBB32_135
# %bb.34:
	jmpq	*.LJTI32_0(,%r12,8)
.LBB32_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	cmpl	$4, -64(%rbp)           # 4-byte Folded Reload
	jb	.LBB32_5
# %bb.36:
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_94
# %bb.37:
	movb	(%r15), %cl
	movb	%cl, 50(%rax)
	xorl	%edi, %edi
	jmp	.LBB32_135
.LBB32_38:
	movl	$42, __A_VARIABLE(%rip)
	leal	-12(%r12), %edx
	cmpl	$2, %edx
	jae	.LBB32_58
# %bb.39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	cmpl	$20, -64(%rbp)          # 4-byte Folded Reload
	jb	.LBB32_94
# %bb.40:
	cmpq	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_92
# %bb.41:
	movl	$240, %ecx
	andl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$109, %r14d
	cmpl	$32, %ecx
	jne	.LBB32_93
# %bb.42:
	movq	%r15, %rax
	movups	(%r15), %xmm0
	movaps	%xmm0, -64(%rbp)        # 16-byte Spill
	movaps	%xmm0, -96(%rbp)
	movb	$0, -80(%rbp)
	movl	16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$256, %eax              # imm = 0x100
	jae	.LBB32_137
# %bb.43:
	movzbl	%al, %edi
	callq	netif_get_by_index
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_107
# %bb.44:
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %r12d
	jne	.LBB32_109
# %bb.45:
	movl	16(%r15), %r14d
	movl	%ebx, %edi
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_51
# %bb.46:
	movl	$42, __A_VARIABLE(%rip)
	movl	$socket_ipv6_multicast_memberships+32, %edx
	xorl	%ecx, %ecx
.LBB32_47:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_128
# %bb.48:                               #   in Loop: Header=BB32_47 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_129
# %bb.49:                               #   in Loop: Header=BB32_47 Depth=1
	addq	$2, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rdx
	cmpq	$64, %rcx
	jb	.LBB32_47
# %bb.50:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_51:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %edi
	jmp	.LBB32_132
.LBB32_52:
	cmpl	$4106, %r12d            # imm = 0x100A
	je	.LBB32_74
# %bb.53:
	cmpl	$4107, %r12d            # imm = 0x100B
	jne	.LBB32_135
# %bb.54:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	cmpl	$24, -64(%rbp)          # 4-byte Folded Reload
	jb	.LBB32_94
# %bb.55:
	cmpb	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_97
# %bb.56:
	movq	%rcx, %rbx
	movq	%r15, %rdi
	callq	netif_find
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_122
# %bb.57:
	movq	%rax, %rsi
	leaq	sockets(,%rbx,8), %rax
	movq	(%rax), %rax
	jmp	.LBB32_98
.LBB32_58:
	cmpl	$27, %r12d
	jne	.LBB32_135
# %bb.59:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	cmpl	$4, -64(%rbp)           # 4-byte Folded Reload
	jb	.LBB32_5
# %bb.60:
	cmpq	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_94
# %bb.61:
	cmpl	$0, (%r15)
	movb	108(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_105
# %bb.62:
	orb	$32, %cl
	jmp	.LBB32_106
.LBB32_63:
	movl	$42, __A_VARIABLE(%rip)
	movb	$8, %cl
	cmpl	$8, %r12d
	je	.LBB32_66
# %bb.64:
	cmpl	$4, %r12d
	jne	.LBB32_136
# %bb.65:
	movb	$4, %cl
.LBB32_66:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	cmpl	$4, -64(%rbp)           # 4-byte Folded Reload
	jb	.LBB32_5
# %bb.67:
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_94
# %bb.68:
	cmpl	$0, (%r15)
	movb	49(%rax), %dl
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_95
# %bb.69:
	orb	%cl, %dl
	jmp	.LBB32_96
.LBB32_70:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	je	.LBB32_5
# %bb.71:
	movq	8(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB32_94
# %bb.72:
	movl	$240, %edx
	andl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %edx
	jne	.LBB32_91
# %bb.73:
	movb	(%r15), %al
	movb	%al, 77(%rcx)
	xorl	%edi, %edi
	jmp	.LBB32_135
.LBB32_74:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	cmpl	$4, -64(%rbp)           # 4-byte Folded Reload
	jb	.LBB32_5
# %bb.75:
	movq	8(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB32_94
# %bb.76:
	movl	$240, %edx
	andl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %edx
	jne	.LBB32_91
# %bb.77:
	cmpl	$0, (%r15)
	movb	64(%rcx), %al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_126
# %bb.78:
	orb	$1, %al
	jmp	.LBB32_127
.LBB32_79:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	cmpl	$4, -64(%rbp)           # 4-byte Folded Reload
	jb	.LBB32_5
# %bb.80:
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_94
# %bb.81:
	movb	(%r15), %cl
	movb	%cl, 51(%rax)
	xorl	%edi, %edi
	jmp	.LBB32_135
.LBB32_82:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	cmpl	$4, -64(%rbp)           # 4-byte Folded Reload
	jb	.LBB32_94
# %bb.83:
	movq	8(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB32_92
# %bb.84:
	movl	$240, %edx
	andl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$109, %r14d
	cmpl	$32, %edx
	jne	.LBB32_93
# %bb.85:
	movl	(%r15), %eax
	movl	%eax, 72(%rcx)
	jmp	.LBB32_103
.LBB32_86:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r14d
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	je	.LBB32_5
# %bb.87:
	movq	8(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB32_94
# %bb.88:
	movl	$240, %edx
	andl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %edx
	jne	.LBB32_91
# %bb.89:
	cmpb	$0, (%r15)
	movb	64(%rcx), %al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_123
# %bb.90:
	orb	$8, %al
	jmp	.LBB32_127
.LBB32_91:
	movl	$42, __A_VARIABLE(%rip)
	movl	$109, %r14d
	jmp	.LBB32_5
.LBB32_92:
	movl	$22, %r14d
.LBB32_93:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_94:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB32_5
.LBB32_95:
	notb	%cl
	andb	%cl, %dl
.LBB32_96:
	movb	%dl, 49(%rax)
	xorl	%edi, %edi
	jmp	.LBB32_135
.LBB32_97:
	xorl	%esi, %esi
.LBB32_98:
	movb	(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	andb	$-16, %cl
	cmpb	$32, %cl
	je	.LBB32_101
# %bb.99:
	cmpb	$16, %cl
	jne	.LBB32_138
# %bb.100:
	movq	8(%rax), %rdi
	callq	tcp_bind_netif
	jmp	.LBB32_102
.LBB32_101:
	movq	8(%rax), %rdi
	callq	udp_bind_netif
.LBB32_102:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_103:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	jmp	.LBB32_135
.LBB32_105:
	andb	$-33, %cl
.LBB32_106:
	movb	%cl, 108(%rax)
	xorl	%edi, %edi
	jmp	.LBB32_135
.LBB32_107:
	movl	$125, %edi
	jmp	.LBB32_134
.LBB32_108:
	movl	(%r15), %eax
	movl	%eax, 264(%rdx)
	xorl	%edi, %edi
	jmp	.LBB32_135
.LBB32_109:
	leaq	-96(%rbp), %rsi
	movq	%r13, %rdi
	callq	mld6_leavegroup_netif
	movl	%eax, %r12d
	movl	16(%r15), %r14d
	movl	%ebx, %edi
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_121
# %bb.110:
	movl	$42, __A_VARIABLE(%rip)
	movl	-96(%rbp), %edx
	movl	-92(%rbp), %esi
	movl	-88(%rbp), %r10d
	movl	-84(%rbp), %r9d
	movl	$socket_ipv6_multicast_memberships+28, %ecx
	movb	-80(%rbp), %r8b
	xorl	%ebx, %ebx
	jmp	.LBB32_112
.LBB32_111:                             #   in Loop: Header=BB32_112 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rcx
	cmpq	$64, %rbx
	jae	.LBB32_120
.LBB32_112:                             # =>This Inner Loop Header: Depth=1
	cmpq	%rax, -28(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB32_111
# %bb.113:                              #   in Loop: Header=BB32_112 Depth=1
	movzbl	-20(%rcx), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %r14d
	jne	.LBB32_111
# %bb.114:                              #   in Loop: Header=BB32_112 Depth=1
	cmpl	%edx, -16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB32_111
# %bb.115:                              #   in Loop: Header=BB32_112 Depth=1
	cmpl	%esi, -12(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB32_111
# %bb.116:                              #   in Loop: Header=BB32_112 Depth=1
	cmpl	%r10d, -8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB32_111
# %bb.117:                              #   in Loop: Header=BB32_112 Depth=1
	cmpl	%r9d, -4(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB32_111
# %bb.118:                              #   in Loop: Header=BB32_112 Depth=1
	cmpb	%r8b, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB32_111
# %bb.119:
	movq	$0, -28(%rcx)
	movb	$0, -20(%rcx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -16(%rcx)
	movb	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB32_120:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_121:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB32_131
.LBB32_122:
	movl	$42, __A_VARIABLE(%rip)
	movl	$19, %r14d
	jmp	.LBB32_94
.LBB32_123:
	andb	$-9, %al
	jmp	.LBB32_127
.LBB32_124:
	andl	$65471, %eax            # imm = 0xFFBF
.LBB32_125:
	movw	%ax, 82(%rdx)
	xorl	%edi, %edi
	jmp	.LBB32_135
.LBB32_126:
	andb	$-2, %al
.LBB32_127:
	movb	%al, 64(%rcx)
	xorl	%edi, %edi
	jmp	.LBB32_135
.LBB32_128:                             # %._crit_edge
	addq	$-32, %rdx
	jmp	.LBB32_130
.LBB32_129:                             # %split
	addq	$1, %rcx
.LBB32_130:
	movq	%rax, (%rdx)
	movl	%ecx, %eax
	shlq	$5, %rax
	movb	%r14b, socket_ipv6_multicast_memberships+8(%rax)
	movaps	-64(%rbp), %xmm0        # 16-byte Reload
	movups	%xmm0, socket_ipv6_multicast_memberships+12(%rax)
	movb	$0, socket_ipv6_multicast_memberships+28(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-96(%rbp), %rsi
	movq	%r13, %rdi
	callq	mld6_joingroup_netif
	movl	%eax, %r12d
.LBB32_131:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$125, %edi
	testb	%r12b, %r12b
	je	.LBB32_133
.LBB32_132:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB32_134
.LBB32_133:
	xorl	%edi, %edi
.LBB32_134:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_135:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %r14d
	jmp	.LBB32_5
.LBB32_136:
	movl	$.L.str.43, %edi
	jmp	.LBB32_139
.LBB32_137:
	movl	$.L.str.45, %edi
	jmp	.LBB32_139
.LBB32_138:
	movl	$.L.str.44, %edi
.LBB32_139:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end32:
	.size	lwip_setsockopt, .Lfunc_end32-lwip_setsockopt
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI32_0:
	.quad	.LBB32_35
	.quad	.LBB32_79
	.quad	.LBB32_135
	.quad	.LBB32_135
	.quad	.LBB32_70
	.quad	.LBB32_82
	.quad	.LBB32_86
                                        # -- End function
	.text
	.globl	connect                 # -- Begin function connect
	.p2align	4, 0x90
	.type	connect,@function
connect:                                # @connect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	$0, -32(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB33_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB33_2
.LBB33_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp160:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp160
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp161:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp161
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
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rcx
	jmp	.LBB33_8
.LBB33_2:
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB33_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB33_6
.LBB33_3:
	movq	$-22, %rcx
.LBB33_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB33_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB33_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB33_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB33_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB33_12
.LBB33_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-32(%rbp), %rdi
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
.Ltmp162:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp162
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp163:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp163
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
	movl	$-1, %ebx
	jmp	.LBB33_18
.LBB33_14:
	movl	8(%rcx), %edi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	lwip_connect
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB33_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB33_16
.LBB33_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp164:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp164
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp165:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp165
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
	jmp	.LBB33_18
.LBB33_16:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB33_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB33_12:
	xorl	%ebx, %ebx
	subl	-32(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB33_18
.Lfunc_end33:
	.size	connect, .Lfunc_end33-connect
                                        # -- End function
	.globl	lwip_connect            # -- Begin function lwip_connect
	.p2align	4, 0x90
	.type	lwip_connect,@function
lwip_connect:                           # @lwip_connect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movl	%edx, %ebx
	movq	%rsi, %r15
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB34_1
# %bb.2:
	movq	%rax, %r14
	movb	1(%r15), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB34_12
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %al
	jne	.LBB34_6
# %bb.4:
	movq	(%r14), %rcx
	testb	$8, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB34_13
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB34_8
.LBB34_1:
	movl	$-1, %esi
	jmp	.LBB34_38
.LBB34_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rdi
	callq	netconn_disconnect
	jmp	.LBB34_29
.LBB34_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %al
	jne	.LBB34_8
# %bb.7:
	movq	(%r14), %rcx
	testb	$8, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_13
.LBB34_8:
	movl	$-6, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB34_11
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB34_10
.LBB34_11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp166:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp166
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp167:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp167
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
	movl	$-1, %esi
	jmp	.LBB34_37
.LBB34_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ebx
	je	.LBB34_15
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$28, %ebx
	jne	.LBB34_39
.LBB34_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %al
	je	.LBB34_17
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %al
	jne	.LBB34_39
.LBB34_17:
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %r15b
	jne	.LBB34_39
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %al
	jne	.LBB34_40
# %bb.19:
	movdqu	8(%r15), %xmm0
	movdqa	%xmm0, -48(%rbp)
	movb	$0, -32(%rbp)
	movdqa	%xmm0, -64(%rbp)        # 16-byte Spill
	movd	%xmm0, %ebx
	movl	%ebx, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %eax            # imm = 0x80FE
	je	.LBB34_22
# %bb.20:
	movl	%ebx, %eax
	andl	$36863, %eax            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rax              # imm = 0x1FF
	je	.LBB34_22
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %eax              # imm = 0x2FF
	jne	.LBB34_23
.LBB34_22:
	movb	24(%r15), %al
	movb	%al, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_23:
	movzwl	2(%r15), %edi
	callq	lwip_htons
	movb	$6, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB34_28
# %bb.24:
	movdqa	-64(%rbp), %xmm1        # 16-byte Reload
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB34_28
# %bb.25:
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-65536, %ecx           # imm = 0xFFFF0000
	jne	.LBB34_28
# %bb.26:
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, -48(%rbp)
	movb	$0, -28(%rbp)
	jmp	.LBB34_27
.LBB34_40:
	movl	4(%r15), %eax
	movl	%eax, -48(%rbp)
	movzwl	2(%r15), %edi
	callq	lwip_htons
	movb	$0, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_27:
	movl	$42, __A_VARIABLE(%rip)
.LBB34_28:
	movq	(%r14), %rdi
	movzwl	%ax, %edx
	leaq	-48(%rbp), %rsi
	callq	netconn_connect
.LBB34_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB34_33
# %bb.30:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB34_32
# %bb.31:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB34_10
.LBB34_32:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp168:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp168
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp169:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp169
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
	movl	$-1, %esi
	jmp	.LBB34_37
.LBB34_33:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB34_36
# %bb.34:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB34_35
.LBB34_36:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	xorl	%edi, %edi
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
.Ltmp170:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp170
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp171:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp171
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
	jmp	.LBB34_37
.LBB34_10:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %esi
	jmp	.LBB34_37
.LBB34_35:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
.LBB34_37:
	movl	$42, __A_VARIABLE(%rip)
.LBB34_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB34_39:
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end34:
	.size	lwip_connect, .Lfunc_end34-lwip_connect
                                        # -- End function
	.globl	listen                  # -- Begin function listen
	.p2align	4, 0x90
	.type	listen,@function
listen:                                 # @listen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%rbx
	subq	$16, %rsp
	movl	%esi, %ebx
	movq	$0, -24(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB35_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB35_2
.LBB35_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp172:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp172
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp173:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp173
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
	#APP
	movq	%r11, -24(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-24(%rbp), %rcx
	jmp	.LBB35_8
.LBB35_2:
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB35_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB35_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB35_6
.LBB35_3:
	movq	$-22, %rcx
.LBB35_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -24(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB35_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB35_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB35_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB35_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB35_12
.LBB35_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-24(%rbp), %rdi
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
.Ltmp174:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp174
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp175:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp175
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
	movl	$-1, %ebx
	jmp	.LBB35_18
.LBB35_14:
	movl	8(%rcx), %edi
	movl	%ebx, %esi
	callq	lwip_listen
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB35_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB35_16
.LBB35_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp176:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp176
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp177:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp177
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
	jmp	.LBB35_18
.LBB35_16:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB35_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r15
	popq	%rbp
	retq
.LBB35_12:
	xorl	%ebx, %ebx
	subl	-24(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB35_18
.Lfunc_end35:
	.size	listen, .Lfunc_end35-listen
                                        # -- End function
	.globl	lwip_listen             # -- Begin function lwip_listen
	.p2align	4, 0x90
	.type	lwip_listen,@function
lwip_listen:                            # @lwip_listen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %ebx
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB36_8
# %bb.1:
	movq	%rax, %r14
	xorl	%eax, %eax
	testl	%ebx, %ebx
	cmovnsl	%ebx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %cl
	cmpl	$254, %eax
	jg	.LBB36_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
.LBB36_3:
	movq	(%r14), %rdi
	movzbl	%cl, %esi
	callq	netconn_listen_with_backlog
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB36_9
# %bb.4:
	movq	(%r14), %rcx
	movl	$240, %edx
	andl	(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %edx
	jne	.LBB36_12
# %bb.5:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB36_7
# %bb.6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB36_16
.LBB36_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp178:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp178
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp179:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp179
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
	jmp	.LBB36_19
.LBB36_8:
	movl	$-1, %esi
	jmp	.LBB36_21
.LBB36_9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB36_11
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB36_15
.LBB36_11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	xorl	%edi, %edi
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
.Ltmp180:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp180
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp181:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp181
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
	jmp	.LBB36_20
.LBB36_12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB36_14
# %bb.13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB36_17
.LBB36_14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-95, %rdi
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
.Ltmp182:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp182
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp183:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp183
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
	jmp	.LBB36_19
.LBB36_15:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB36_20
.LBB36_16:
	callq	__errno
	movl	%ebx, (%rax)
	jmp	.LBB36_18
.LBB36_17:
	callq	__errno
	movl	$95, (%rax)
.LBB36_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB36_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %esi
.LBB36_20:
	movl	$42, __A_VARIABLE(%rip)
.LBB36_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	lwip_listen, .Lfunc_end36-lwip_listen
                                        # -- End function
	.globl	recv                    # -- Begin function recv
	.p2align	4, 0x90
	.type	recv,@function
recv:                                   # @recv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%ecx, %r14d
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	$0, -40(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB37_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB37_2
.LBB37_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp184:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp184
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp185:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp185
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
	#APP
	movq	%r11, -40(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-40(%rbp), %rcx
	jmp	.LBB37_8
.LBB37_2:
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB37_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB37_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB37_6
.LBB37_3:
	movq	$-22, %rcx
.LBB37_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB37_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB37_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB37_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB37_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB37_12
.LBB37_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-40(%rbp), %rdi
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
.Ltmp186:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp186
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp187:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp187
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
	movl	$-1, %ebx
	jmp	.LBB37_18
.LBB37_14:
	movl	8(%rcx), %edi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	lwip_recvfrom
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB37_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB37_16
.LBB37_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp188:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp188
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp189:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp189
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
	jmp	.LBB37_18
.LBB37_16:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB37_18:
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
.LBB37_12:
	xorl	%ebx, %ebx
	subl	-40(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB37_18
.Lfunc_end37:
	.size	recv, .Lfunc_end37-recv
                                        # -- End function
	.globl	lwip_recv               # -- Begin function lwip_recv
	.p2align	4, 0x90
	.type	lwip_recv,@function
lwip_recv:                              # @lwip_recv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	lwip_recvfrom
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end38:
	.size	lwip_recv, .Lfunc_end38-lwip_recv
                                        # -- End function
	.globl	recvfrom                # -- Begin function recvfrom
	.p2align	4, 0x90
	.type	recvfrom,@function
recvfrom:                               # @recvfrom
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r8, %r12
	movl	%ecx, %r13d
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	$0, -48(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB39_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB39_2
.LBB39_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp190:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp190
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp191:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp191
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
	#APP
	movq	%r11, -48(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rcx
	jmp	.LBB39_8
.LBB39_2:
	movq	%r9, %r15
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB39_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	movq	%r15, %r9
	jne	.LBB39_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB39_6
.LBB39_3:
	movq	$-22, %rcx
	movq	%r15, %r9
.LBB39_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB39_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB39_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB39_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB39_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB39_12
.LBB39_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-48(%rbp), %rdi
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
.Ltmp192:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp192
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp193:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp193
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
	movl	$-1, %ebx
	jmp	.LBB39_18
.LBB39_14:
	movl	8(%rcx), %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movl	%r13d, %ecx
	movq	%r12, %r8
	callq	lwip_recvfrom
	movq	%rax, %rbx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB39_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB39_16
.LBB39_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp194:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp194
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp195:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp195
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
	jmp	.LBB39_18
.LBB39_16:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB39_18:
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
.LBB39_12:
	xorl	%ebx, %ebx
	subl	-48(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB39_18
.Lfunc_end39:
	.size	recvfrom, .Lfunc_end39-recvfrom
                                        # -- End function
	.globl	lwip_recvfrom           # -- Begin function lwip_recvfrom
	.p2align	4, 0x90
	.type	lwip_recvfrom,@function
lwip_recvfrom:                          # @lwip_recvfrom
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%r9, %r12
	movq	%r8, %r14
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %r15
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB40_6
# %bb.1:
	movq	%rax, %rbx
	movq	(%rax), %rax
	movl	$240, %ecx
	andl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ecx
	jne	.LBB40_7
# %bb.2:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	callq	lwip_recv_tcp
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB40_27
# %bb.3:
	testq	%r12, %r12
	je	.LBB40_27
# %bb.4:
	movq	(%rbx), %rdi
	leaq	-112(%rbp), %r15
	leaq	-64(%rbp), %rdx
	movq	%r15, %rsi
	xorl	%ecx, %ecx
	callq	netconn_getaddr
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	movzwl	-64(%rbp), %edx
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	lwip_sock_make_addr
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB40_27
.LBB40_6:
	movq	$-1, %r13
	jmp	.LBB40_29
.LBB40_7:
	movw	$0, -42(%rbp)
	movq	%r15, -64(%rbp)
	movq	%r13, -56(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -80(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$1, -88(%rbp)
	movq	%r14, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB40_9
# %bb.8:
	movl	(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB40_10
.LBB40_9:
	xorl	%eax, %eax
.LBB40_10:
	movl	%eax, -104(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-42(%rbp), %rcx
	movq	%rbx, %rdi
	movl	-48(%rbp), %esi         # 4-byte Reload
	callq	lwip_recvfrom_udp_raw
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB40_14
# %bb.11:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB40_13
# %bb.12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB40_18
.LBB40_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp196:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp196
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp197:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp197
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
	jmp	.LBB40_19
.LBB40_14:
	movzwl	-42(%rbp), %eax
	cmpq	%r13, %rax
	cmovaq	%r13, %rax
	movabsq	$9223372036854775807, %r13 # imm = 0x7FFFFFFFFFFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jae	.LBB40_16
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r13
.LBB40_16:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB40_25
# %bb.17:
	movl	-104(%rbp), %eax
	movl	%eax, (%r12)
	movb	$1, %cl
	jmp	.LBB40_20
.LBB40_18:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB40_19:
	xorl	%ecx, %ecx
                                        # implicit-def: $r13
.LBB40_20:
	movl	$42, __A_VARIABLE(%rip)
.LBB40_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rax
	testb	%cl, %cl
	je	.LBB40_30
# %bb.22:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB40_24
# %bb.23:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB40_26
.LBB40_24:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
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
.Ltmp198:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp198
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp199:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp199
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
	jmp	.LBB40_28
.LBB40_25:
	movb	$1, %cl
	jmp	.LBB40_21
.LBB40_26:
	callq	__errno
	movl	$0, (%rax)
.LBB40_27:
	movl	$42, __A_VARIABLE(%rip)
.LBB40_28:
	movl	$42, __A_VARIABLE(%rip)
.LBB40_29:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
.LBB40_30:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end40:
	.size	lwip_recvfrom, .Lfunc_end40-lwip_recvfrom
                                        # -- End function
	.globl	recvmsg                 # -- Begin function recvmsg
	.p2align	4, 0x90
	.type	recvmsg,@function
recvmsg:                                # @recvmsg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	$0, -32(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB41_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB41_2
.LBB41_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp200:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp200
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp201:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp201
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
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rcx
	jmp	.LBB41_8
.LBB41_2:
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB41_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB41_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB41_6
.LBB41_3:
	movq	$-22, %rcx
.LBB41_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB41_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB41_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB41_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB41_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB41_12
.LBB41_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-32(%rbp), %rdi
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
.Ltmp202:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp202
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp203:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp203
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
	movl	$-1, %ebx
	jmp	.LBB41_18
.LBB41_14:
	movl	8(%rcx), %edi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	lwip_recvmsg
	movq	%rax, %rbx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB41_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB41_16
.LBB41_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp204:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp204
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp205:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp205
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
	jmp	.LBB41_18
.LBB41_16:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB41_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB41_12:
	xorl	%ebx, %ebx
	subl	-32(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB41_18
.Lfunc_end41:
	.size	recvmsg, .Lfunc_end41-recvmsg
                                        # -- End function
	.globl	lwip_recvmsg            # -- Begin function lwip_recvmsg
	.p2align	4, 0x90
	.type	lwip_recvmsg,@function
lwip_recvmsg:                           # @lwip_recvmsg
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
	testq	%rsi, %rsi
	je	.LBB42_57
# %bb.1:
	movl	%edx, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	$-10, %edx
	jne	.LBB42_58
# %bb.2:
	movq	%rsi, %r13
	movl	24(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB42_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1025, %eax             # imm = 0x401
	jl	.LBB42_7
.LBB42_4:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB42_6
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB42_14
.LBB42_6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-122, %rdi
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
.Ltmp206:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp206
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp207:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp207
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
	jmp	.LBB42_35
.LBB42_7:
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB42_15
# %bb.8:
	movq	%rax, %rdi
	movslq	24(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB42_19
# %bb.9:
	movq	16(%r13), %rcx
	addq	$8, %rcx
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB42_10:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB42_16
# %bb.11:                               #   in Loop: Header=BB42_10 Depth=1
	movq	(%rcx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jle	.LBB42_16
# %bb.12:                               #   in Loop: Header=BB42_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rsi, %rbx
	jle	.LBB42_16
# %bb.13:                               #   in Loop: Header=BB42_10 Depth=1
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rcx
	cmpq	%rax, %rdx
	jl	.LBB42_10
	jmp	.LBB42_20
.LBB42_14:
	callq	__errno
	movl	$122, (%rax)
.LBB42_34:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB42_35
.LBB42_15:
	movq	$-1, %r12
	jmp	.LBB42_37
.LBB42_16:
	movl	$-6, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB42_18
# %bb.17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB42_33
.LBB42_18:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp208:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp208
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp209:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp209
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
.LBB42_35:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
.LBB42_36:
	movl	$42, __A_VARIABLE(%rip)
.LBB42_37:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB42_19:
	xorl	%ebx, %ebx
.LBB42_20:
	movq	(%rdi), %rcx
	movl	$240, %edx
	andl	(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %edx
	jne	.LBB42_29
# %bb.21:
	movl	$0, 44(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB42_45
# %bb.22:
	movq	16(%r13), %rcx
	movl	$8, %r15d
	movl	%r14d, %ebx
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	movl	%ebx, -48(%rbp)         # 4-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB42_23:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rcx,%r15), %rsi
	movq	(%rcx,%r15), %rdx
	movl	%ebx, %ecx
	callq	lwip_recv_tcp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB42_25
# %bb.24:                               #   in Loop: Header=BB42_23 Depth=1
	addq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB42_26
.LBB42_25:                              #   in Loop: Header=BB42_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB42_38
.LBB42_26:                              #   in Loop: Header=BB42_23 Depth=1
	movq	16(%r13), %rcx
	movslq	(%rcx,%r15), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jl	.LBB42_38
# %bb.27:                               #   in Loop: Header=BB42_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -48(%rbp)           # 1-byte Folded Reload
	jne	.LBB42_38
# %bb.28:                               #   in Loop: Header=BB42_23 Depth=1
	orl	$8, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movslq	24(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %r15
	cmpq	%rax, %r14
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jl	.LBB42_23
	jmp	.LBB42_41
.LBB42_29:
	movw	$0, -42(%rbp)
	leaq	-42(%rbp), %rcx
	movl	%r14d, %esi
	movq	%r13, %rdx
	callq	lwip_recvfrom_udp_raw
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB42_46
# %bb.30:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB42_32
# %bb.31:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB42_51
.LBB42_32:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp210:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp210
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp211:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp211
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
	jmp	.LBB42_52
.LBB42_33:
	callq	__errno
	movl	%ebx, (%rax)
	jmp	.LBB42_34
.LBB42_38:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jg	.LBB42_40
# %bb.39:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r12
.LBB42_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB42_41:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jle	.LBB42_36
# %bb.42:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB42_44
# %bb.43:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB42_53
.LBB42_44:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
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
.Ltmp212:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp212
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp213:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp213
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB42_56
.LBB42_45:
	xorl	%r12d, %r12d
	jmp	.LBB42_56
.LBB42_46:
	movzwl	-42(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB42_48
# %bb.47:
	orb	$4, 44(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB42_48:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB42_50
# %bb.49:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB42_54
.LBB42_50:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
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
.Ltmp214:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp214
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp215:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp215
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
	jmp	.LBB42_55
.LBB42_51:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB42_52:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
	jmp	.LBB42_56
.LBB42_53:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB42_56
.LBB42_54:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB42_55:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-42(%rbp), %r12d
.LBB42_56:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB42_36
.LBB42_57:
	movl	$.L.str.9, %edi
	jmp	.LBB42_59
.LBB42_58:
	movl	$.L.str.10, %edi
.LBB42_59:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end42:
	.size	lwip_recvmsg, .Lfunc_end42-lwip_recvmsg
                                        # -- End function
	.globl	send                    # -- Begin function send
	.p2align	4, 0x90
	.type	send,@function
send:                                   # @send
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%ecx, %r14d
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	$0, -40(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB43_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB43_2
.LBB43_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp216:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp216
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp217:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp217
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
	#APP
	movq	%r11, -40(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-40(%rbp), %rcx
	jmp	.LBB43_8
.LBB43_2:
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB43_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB43_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB43_6
.LBB43_3:
	movq	$-22, %rcx
.LBB43_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB43_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB43_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB43_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB43_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB43_12
.LBB43_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-40(%rbp), %rdi
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
.Ltmp218:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp218
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp219:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp219
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
	movl	$-1, %ebx
	jmp	.LBB43_18
.LBB43_14:
	movl	8(%rcx), %edi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	callq	lwip_send
	movq	%rax, %rbx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB43_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB43_16
.LBB43_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp220:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp220
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp221:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp221
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
	jmp	.LBB43_18
.LBB43_16:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB43_18:
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
.LBB43_12:
	xorl	%ebx, %ebx
	subl	-40(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB43_18
.Lfunc_end43:
	.size	send, .Lfunc_end43-send
                                        # -- End function
	.globl	lwip_send               # -- Begin function lwip_send
	.p2align	4, 0x90
	.type	lwip_send,@function
lwip_send:                              # @lwip_send
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%ecx, %ebx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	%edi, %r12d
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB44_1
# %bb.2:
	movq	(%rax), %rdi
	movl	$240, %eax
	andl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB44_3
# %bb.4:
	movl	%ebx, %eax
	shrl	$3, %eax
	andl	$2, %eax
	shrl	%ebx
	andl	$4, %ebx
	orl	%eax, %ebx
	orb	$1, %bl
	movq	$0, -40(%rbp)
	movzbl	%bl, %ecx
	leaq	-40(%rbp), %r8
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	netconn_write_partly
	movl	%eax, %r14d
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB44_7
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB44_6
.LBB44_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp222:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp222
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp223:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp223
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
	jmp	.LBB44_8
.LBB44_1:
	movq	$-1, %rax
	jmp	.LBB44_9
.LBB44_3:
	movl	%r12d, %edi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	lwip_sendto
	jmp	.LBB44_9
.LBB44_6:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB44_8:
	xorl	%eax, %eax
	cmpb	$1, %r14b
	sbbq	%rax, %rax
	movl	$42, __A_VARIABLE(%rip)
	notq	%rax
	orq	-40(%rbp), %rax
.LBB44_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end44:
	.size	lwip_send, .Lfunc_end44-lwip_send
                                        # -- End function
	.globl	sendmsg                 # -- Begin function sendmsg
	.p2align	4, 0x90
	.type	sendmsg,@function
sendmsg:                                # @sendmsg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	$0, -32(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB45_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB45_2
.LBB45_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp224:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp224
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp225:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp225
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
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rcx
	jmp	.LBB45_8
.LBB45_2:
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB45_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	jne	.LBB45_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB45_6
.LBB45_3:
	movq	$-22, %rcx
.LBB45_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB45_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB45_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB45_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB45_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB45_12
.LBB45_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-32(%rbp), %rdi
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
.Ltmp226:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp226
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp227:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp227
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
	movl	$-1, %ebx
	jmp	.LBB45_18
.LBB45_14:
	movl	8(%rcx), %edi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	lwip_sendmsg
	movq	%rax, %rbx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB45_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB45_16
.LBB45_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp228:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp228
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp229:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp229
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
	jmp	.LBB45_18
.LBB45_16:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB45_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB45_12:
	xorl	%ebx, %ebx
	subl	-32(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB45_18
.Lfunc_end45:
	.size	sendmsg, .Lfunc_end45-sendmsg
                                        # -- End function
	.globl	lwip_sendmsg            # -- Begin function lwip_sendmsg
	.p2align	4, 0x90
	.type	lwip_sendmsg,@function
lwip_sendmsg:                           # @lwip_sendmsg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movl	%edx, %ebx
	movq	%rsi, %r15
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB46_3
# %bb.5:
	movq	16(%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB46_6
# %bb.7:
	movq	%rax, %r14
	movl	24(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB46_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1025, %eax             # imm = 0x401
	jge	.LBB46_9
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	testl	$-25, %ebx
	jne	.LBB46_11
# %bb.12:
	movq	(%r14), %rdi
	movl	$240, %ecx
	andl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ecx
	jne	.LBB46_18
# %bb.13:
	movl	%ebx, %ecx
	shrl	$3, %ecx
	andl	$2, %ecx
	shrl	%ebx
	andl	$4, %ebx
	orl	%ecx, %ebx
	orb	$1, %bl
	movq	$0, -80(%rbp)
	movzbl	%bl, %ecx
	movzwl	%ax, %edx
	leaq	-80(%rbp), %r8
	callq	netconn_write_vectors_partly
	movl	%eax, %r14d
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB46_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB46_15
.LBB46_16:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp230:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp230
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp231:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp231
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
	jmp	.LBB46_17
.LBB46_1:
	movq	$-1, %rax
	jmp	.LBB46_58
.LBB46_18:
	cmpq	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r15), %eax
	jne	.LBB46_20
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB46_23
.LBB46_20:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	je	.LBB46_23
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$28, %eax
	jne	.LBB46_22
.LBB46_23:
	leaq	-80(%rbp), %rdi
	movl	$48, %edx
	xorl	%esi, %esi
	callq	memset
	movq	(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_31
# %bb.24:
	cmpb	$10, 1(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB46_29
# %bb.25:
	movl	8(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movl	12(%rax), %edx
	movl	%edx, -60(%rbp)
	movl	16(%rax), %edx
	movl	%edx, -56(%rbp)
	movl	20(%rax), %edx
	movl	%edx, -52(%rbp)
	movb	$0, -48(%rbp)
	movl	%ecx, %edx
	andl	$49407, %edx            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %edx            # imm = 0x80FE
	je	.LBB46_28
# %bb.26:
	andl	$36863, %ecx            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rcx              # imm = 0x1FF
	je	.LBB46_28
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	movb	$6, %bl
	cmpl	$767, %ecx              # imm = 0x2FF
	jne	.LBB46_30
.LBB46_28:
	movb	24(%rax), %cl
	movb	%cl, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movb	$6, %bl
	jmp	.LBB46_30
.LBB46_29:
	movl	4(%rax), %ecx
	movl	%ecx, -64(%rbp)
	xorl	%ebx, %ebx
.LBB46_30:
	movzwl	2(%rax), %edi
	callq	lwip_htons
	movb	%bl, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_31:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 24(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB46_44
# %bb.32:
	movl	$8, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB46_33
	.p2align	4, 0x90
.LBB46_36:                              #   in Loop: Header=BB46_33 Depth=1
	movq	%rax, -72(%rbp)
	movq	%rax, -80(%rbp)
.LBB46_43:                              #   in Loop: Header=BB46_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movslq	24(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rbx
	cmpq	%rax, %r12
	jge	.LBB46_44
.LBB46_33:                              # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rax
	cmpq	$65535, (%rax,%rbx)     # imm = 0xFFFF
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB46_39
# %bb.34:                               #   in Loop: Header=BB46_33 Depth=1
	movl	$74, %edi
	xorl	%esi, %esi
	movl	$65, %edx
	callq	pbuf_alloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_59
# %bb.35:                               #   in Loop: Header=BB46_33 Depth=1
	movq	16(%r15), %rcx
	movq	-8(%rcx,%rbx), %rdx
	movq	%rdx, 8(%rax)
	movq	(%rcx,%rbx), %rcx
	movw	%cx, 16(%rax)
	movw	%cx, 18(%rax)
	movq	-80(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB46_36
# %bb.37:                               #   in Loop: Header=BB46_33 Depth=1
	movzwl	16(%rdi), %edx
	movzwl	%cx, %ecx
	addl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %ecx            # imm = 0x10000
	jae	.LBB46_38
# %bb.42:                               #   in Loop: Header=BB46_33 Depth=1
	movq	%rax, %rsi
	callq	pbuf_cat
	jmp	.LBB46_43
.LBB46_44:
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax
	movzwl	16(%rax), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB46_49
# %bb.45:
	cmpl	$0, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB46_49
# %bb.46:
	cmpl	$0, -60(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB46_49
# %bb.47:
	cmpl	$-65536, -56(%rbp)      # imm = 0xFFFF0000
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB46_49
# %bb.48:
	movl	-52(%rbp), %eax
	movl	%eax, -64(%rbp)
	movb	$0, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_49:
	movq	(%r14), %rdi
	leaq	-80(%rbp), %rsi
	callq	netconn_send
	movl	%eax, %r14d
	jmp	.LBB46_50
.LBB46_15:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_17:
	xorl	%eax, %eax
	cmpb	$1, %r14b
	sbbq	%rax, %rax
	movl	$42, __A_VARIABLE(%rip)
	notq	%rax
	orq	-80(%rbp), %rax
	jmp	.LBB46_58
.LBB46_59:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %r14b
	xorl	%r12d, %r12d
.LBB46_50:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rdi
	callq	netbuf_free
	movsbl	%r14b, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB46_53
# %bb.51:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB46_52
.LBB46_53:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp232:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp232
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp233:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp233
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
	jmp	.LBB46_54
.LBB46_52:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_54:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpb	$1, %r14b
	sbbq	%rax, %rax
	notq	%rax
	orq	%r12, %rax
	jmp	.LBB46_57
.LBB46_38:
	movq	%rax, %rdi
	callq	pbuf_free
.LBB46_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB46_55
# %bb.40:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB46_41
.LBB46_55:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-122, %rdi
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
.Ltmp234:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp234
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp235:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp235
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
	jmp	.LBB46_56
.LBB46_41:
	callq	__errno
	movl	$122, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_56:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rdi
	callq	netbuf_free
	movq	$-1, %rax
.LBB46_57:
	movl	$42, __A_VARIABLE(%rip)
.LBB46_58:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB46_9:
	movl	$.L.str.13, %edi
	jmp	.LBB46_4
.LBB46_3:
	movl	$.L.str.11, %edi
	jmp	.LBB46_4
.LBB46_6:
	movl	$.L.str.12, %edi
	jmp	.LBB46_4
.LBB46_11:
	movl	$.L.str.14, %edi
.LBB46_4:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB46_22:
	movl	$.L.str.15, %edi
	jmp	.LBB46_4
.Lfunc_end46:
	.size	lwip_sendmsg, .Lfunc_end46-lwip_sendmsg
                                        # -- End function
	.globl	sendto                  # -- Begin function sendto
	.p2align	4, 0x90
	.type	sendto,@function
sendto:                                 # @sendto
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r8, %r12
	movl	%ecx, %r13d
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	$0, -48(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB47_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB47_2
.LBB47_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
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
.Ltmp236:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp236
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	sock_net_file_get
	movq	%rax, %rsi
.Ltmp237:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp237
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
	#APP
	movq	%r11, -48(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rcx
	jmp	.LBB47_8
.LBB47_2:
	movl	%r9d, %r15d
	callq	vfscore_get_file
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB47_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	cmpl	$6, 44(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rcx
	movl	%r15d, %r9d
	jne	.LBB47_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB47_6
.LBB47_3:
	movq	$-22, %rcx
	movl	%r15d, %r9d
.LBB47_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB47_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jg	.LBB47_14
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-512, %rcx             # imm = 0xFE00
	jl	.LBB47_14
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB47_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB47_12
.LBB47_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-48(%rbp), %rdi
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
.Ltmp238:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp238
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp239:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp239
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
	movl	$-1, %ebx
	jmp	.LBB47_18
.LBB47_14:
	movl	8(%rcx), %edi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movl	%r13d, %ecx
	movq	%r12, %r8
	callq	lwip_sendto
	movq	%rax, %rbx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB47_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB47_16
.LBB47_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
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
.Ltmp240:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp240
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	vfscore_put_file
.Ltmp241:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp241
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
	jmp	.LBB47_18
.LBB47_16:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB47_18:
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
.LBB47_12:
	xorl	%ebx, %ebx
	subl	-48(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB47_18
.Lfunc_end47:
	.size	sendto, .Lfunc_end47-sendto
                                        # -- End function
	.globl	lwip_sendto             # -- Begin function lwip_sendto
	.p2align	4, 0x90
	.type	lwip_sendto,@function
lwip_sendto:                            # @lwip_sendto
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	%r9d, -108(%rbp)        # 4-byte Spill
	movq	%r8, %r14
	movl	%ecx, %r15d
	movq	%rdx, %r13
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	%edi, %r12d
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rbx
	testq	%rax, %rax
	je	.LBB48_44
# %bb.1:
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	andl	$240, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ecx
	jne	.LBB48_3
# %bb.2:
	movl	%r12d, %edi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%r13, %rdx
	movl	%r15d, %ecx
	callq	lwip_send
	movq	%rax, %rbx
	jmp	.LBB48_44
.LBB48_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$65536, %r13            # imm = 0x10000
	jb	.LBB48_9
# %bb.4:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB48_7
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB48_6
.LBB48_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-122, %rdi
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
.Ltmp242:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp242
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp243:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp243
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB48_44
.LBB48_9:
	movq	%r13, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movl	-108(%rbp), %ecx        # 4-byte Reload
	jne	.LBB48_11
# %bb.10:
	testl	%ecx, %ecx
	je	.LBB48_19
.LBB48_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ecx
	jne	.LBB48_12
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB48_16
	jmp	.LBB48_14
.LBB48_12:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB48_14
# %bb.13:
	cmpl	$28, %ecx
	jne	.LBB48_14
.LBB48_16:
	movb	1(%r14), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %cl
	je	.LBB48_18
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %cl
	jne	.LBB48_14
.LBB48_18:
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %r14b
	jne	.LBB48_14
.LBB48_19:
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB48_28
# %bb.20:
	cmpb	$10, 1(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rbx
	jne	.LBB48_26
# %bb.21:
	movdqu	8(%r14), %xmm0
	movdqa	%xmm0, -80(%rbp)
	movb	$0, -64(%rbp)
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %ecx            # imm = 0x80FE
	je	.LBB48_24
# %bb.22:
	andl	$36863, %eax            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rax              # imm = 0x1FF
	je	.LBB48_24
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %eax              # imm = 0x2FF
	jne	.LBB48_25
.LBB48_24:
	movb	24(%r14), %al
	movb	%al, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB48_25:
	movzwl	2(%r14), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movb	$6, -60(%rbp)
	jmp	.LBB48_27
.LBB48_28:
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -80(%rbp)
	testb	$8, %dl
	movq	-104(%rbp), %rsi        # 8-byte Reload
	jne	.LBB48_29
# %bb.30:
	movb	$0, -60(%rbp)
	movl	$0, -68(%rbp)
	movq	$0, -76(%rbp)
	movb	$0, -64(%rbp)
	jmp	.LBB48_31
.LBB48_26:
	movl	4(%r14), %eax
	movl	%eax, -80(%rbp)
	movzwl	2(%r14), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movb	$0, -60(%rbp)
.LBB48_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rsi        # 8-byte Reload
	jmp	.LBB48_32
.LBB48_6:
	callq	__errno
	movl	$122, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB48_44
.LBB48_29:
	movq	$0, -76(%rbp)
	movl	$0, -68(%rbp)
	movb	$0, -64(%rbp)
	movb	$6, -60(%rbp)
.LBB48_31:
	xorl	%eax, %eax
.LBB48_32:
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, -56(%rbp)
	movzwl	%r12w, %edx
	leaq	-96(%rbp), %rdi
	callq	netbuf_ref
	movl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB48_39
# %bb.33:
	cmpb	$6, -60(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB48_38
# %bb.34:
	cmpl	$0, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB48_38
# %bb.35:
	cmpl	$0, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB48_38
# %bb.36:
	cmpl	$-65536, -72(%rbp)      # imm = 0xFFFF0000
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB48_38
# %bb.37:
	movl	-68(%rbp), %eax
	movl	%eax, -80(%rbp)
	movb	$0, -60(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB48_38:
	movq	(%rbx), %rdi
	leaq	-96(%rbp), %rsi
	callq	netconn_send
	movl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB48_39:
	leaq	-96(%rbp), %rdi
	callq	netbuf_free
	movsbl	%r13b, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB48_42
# %bb.40:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB48_41
.LBB48_42:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp244:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp244
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp245:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp245
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
	jmp	.LBB48_43
.LBB48_41:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB48_43:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%r12w, %eax
	xorl	%ebx, %ebx
	cmpb	$1, %r13b
	sbbq	%rbx, %rbx
	notq	%rbx
	orq	%rax, %rbx
.LBB48_44:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB48_14:
	movl	$.L.str.16, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end48:
	.size	lwip_sendto, .Lfunc_end48-lwip_sendto
                                        # -- End function
	.globl	socketpair              # -- Begin function socketpair
	.p2align	4, 0x90
	.type	socketpair,@function
socketpair:                             # @socketpair
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	$134, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	popq	%rbp
	retq
.Lfunc_end49:
	.size	socketpair, .Lfunc_end49-socketpair
                                        # -- End function
	.globl	if_nametoindex          # -- Begin function if_nametoindex
	.p2align	4, 0x90
	.type	if_nametoindex,@function
if_nametoindex:                         # @if_nametoindex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	lwip_if_nametoindex
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end50:
	.size	if_nametoindex, .Lfunc_end50-if_nametoindex
                                        # -- End function
	.globl	if_indextoname          # -- Begin function if_indextoname
	.p2align	4, 0x90
	.type	if_indextoname,@function
if_indextoname:                         # @if_indextoname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	lwip_if_indextoname
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end51:
	.size	if_indextoname, .Lfunc_end51-if_indextoname
                                        # -- End function
	.globl	lwip_socket_thread_init # -- Begin function lwip_socket_thread_init
	.p2align	4, 0x90
	.type	lwip_socket_thread_init,@function
lwip_socket_thread_init:                # @lwip_socket_thread_init
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end52:
	.size	lwip_socket_thread_init, .Lfunc_end52-lwip_socket_thread_init
                                        # -- End function
	.globl	lwip_socket_thread_cleanup # -- Begin function lwip_socket_thread_cleanup
	.p2align	4, 0x90
	.type	lwip_socket_thread_cleanup,@function
lwip_socket_thread_cleanup:             # @lwip_socket_thread_cleanup
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end53:
	.size	lwip_socket_thread_cleanup, .Lfunc_end53-lwip_socket_thread_cleanup
                                        # -- End function
	.globl	lwip_socket_dbg_get_socket # -- Begin function lwip_socket_dbg_get_socket
	.p2align	4, 0x90
	.type	lwip_socket_dbg_get_socket,@function
lwip_socket_dbg_get_socket:             # @lwip_socket_dbg_get_socket
# %bb.0:
	xorl	%eax, %eax
	cmpl	$63, %edi
	movslq	%edi, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	sockets(,%rcx,8), %rcx
	cmovbeq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end54:
	.size	lwip_socket_dbg_get_socket, .Lfunc_end54-lwip_socket_dbg_get_socket
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function get_socket
	.type	get_socket,@function
get_socket:                             # @get_socket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$64, %edi
	jb	.LBB55_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB55_4
.LBB55_2:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, sockets(,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB55_4
# %bb.3:
	leaq	sockets(,%rax,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB55_9
.LBB55_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB55_6
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB55_7
.LBB55_6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-9, %rdi
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
.Ltmp246:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp246
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp247:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp247
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
	jmp	.LBB55_8
.LBB55_7:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB55_8:
	xorl	%eax, %eax
.LBB55_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end55:
	.size	get_socket, .Lfunc_end55-get_socket
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function alloc_socket
	.type	alloc_socket,@function
alloc_socket:                           # @alloc_socket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$sockets+22, %ebx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB56_1:                               # =>This Inner Loop Header: Depth=1
	callq	ukplat_lcpu_save_irqf
	cmpq	$0, -22(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB56_2
# %bb.4:                                #   in Loop: Header=BB56_1 Depth=1
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rbx
	cmpq	$64, %r12
	jb	.LBB56_1
# %bb.5:
	movl	$-1, %r12d
	jmp	.LBB56_6
.LBB56_2:
	movq	%r15, -22(%rbx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	$0, -14(%rbx)
	cmpb	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB56_7
# %bb.3:
	movw	$0, -6(%rbx)
	movl	$240, %eax
	andl	(%r15), %eax
	xorl	$16, %eax
	xorl	%ecx, %ecx
	orl	%eax, %r14d
	setne	%cl
	movw	%cx, -4(%rbx)
	movw	$0, -2(%rbx)
.LBB56_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB56_7:
	movl	$.L.str.28, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end56:
	.size	alloc_socket, .Lfunc_end56-alloc_socket
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function free_socket
	.type	free_socket,@function
free_socket:                            # @free_socket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	ukplat_lcpu_save_irqf
	movq	(%rbx), %r15
	movq	8(%rbx), %r12
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB57_5
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	testl	%r14d, %r14d
	je	.LBB57_3
# %bb.2:
	callq	pbuf_free
	jmp	.LBB57_4
.LBB57_3:
	callq	netbuf_delete
.LBB57_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB57_5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB57_7
# %bb.6:
	movq	%r15, %rdi
	callq	netconn_delete
	movl	$42, __A_VARIABLE(%rip)
.LBB57_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end57:
	.size	free_socket, .Lfunc_end57-free_socket
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lwip_recv_tcp
	.type	lwip_recv_tcp,@function
lwip_recv_tcp:                          # @lwip_recv_tcp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	testq	%rdx, %rdx
	movabsq	$9223372036854775807, %r13 # imm = 0x7FFFFFFFFFFFFFFF
	cmovnsq	%rdx, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB58_1
# %bb.3:
	movq	%rdi, %r12
	movq	(%rdi), %rax
	movl	$240, %ecx
	andl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ecx
	jne	.LBB58_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movb	$8, %bl
	testb	$8, -48(%rbp)           # 1-byte Folded Reload
	je	.LBB58_7
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movb	$12, %bl
.LBB58_7:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	movq	%r12, -56(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB58_8:                               # =>This Inner Loop Header: Depth=1
	movq	8(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	movb	%bl, -41(%rbp)          # 1-byte Spill
	je	.LBB58_10
# %bb.9:                                #   in Loop: Header=BB58_8 Depth=1
	movq	%rdi, -64(%rbp)
	jmp	.LBB58_20
	.p2align	4, 0x90
.LBB58_10:                              #   in Loop: Header=BB58_8 Depth=1
	movq	%r13, %r15
	movq	(%r12), %rdi
	movzbl	%bl, %edx
	leaq	-64(%rbp), %rsi
	callq	netconn_recv_tcp_pbuf_flags
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB58_11
# %bb.17:                               #   in Loop: Header=BB58_8 Depth=1
	movq	-64(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB58_18
# %bb.19:                               #   in Loop: Header=BB58_8 Depth=1
	movq	%r15, %r13
	movq	%rdi, 8(%r12)
.LBB58_20:                              #   in Loop: Header=BB58_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rdi), %r12d
	movzwl	%r12w, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r13
	jle	.LBB58_22
# %bb.21:                               #   in Loop: Header=BB58_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB58_23
	.p2align	4, 0x90
.LBB58_22:                              #   in Loop: Header=BB58_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%r13w, %r15d
	movl	%r13d, %r12d
.LBB58_23:                              #   in Loop: Header=BB58_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, -80(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r14), %rsi
	movzwl	%r12w, %ebx
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	callq	pbuf_copy_partial
	movl	$42, __A_VARIABLE(%rip)
	subq	%r15, %r13
	jl	.LBB58_24
# %bb.25:                               #   in Loop: Header=BB58_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -48(%rbp)           # 1-byte Folded Reload
	jne	.LBB58_32
# %bb.26:                               #   in Loop: Header=BB58_8 Depth=1
	movq	-64(%rbp), %rdi
	cmpw	%r12w, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB58_27
# %bb.28:                               #   in Loop: Header=BB58_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB58_30
# %bb.29:                               #   in Loop: Header=BB58_8 Depth=1
	movl	%ebx, %esi
	callq	pbuf_free_header
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 8(%rcx)
	jmp	.LBB58_31
	.p2align	4, 0x90
.LBB58_30:                              #   in Loop: Header=BB58_8 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	$0, 8(%rax)
	callq	pbuf_free
.LBB58_31:                              #   in Loop: Header=BB58_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB58_32:                              #   in Loop: Header=BB58_8 Depth=1
	movq	-80(%rbp), %r14         # 8-byte Reload
	addq	%r15, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	movq	-56(%rbp), %r12         # 8-byte Reload
	movzbl	-41(%rbp), %ebx         # 1-byte Folded Reload
	jle	.LBB58_34
# %bb.33:                               #   in Loop: Header=BB58_8 Depth=1
	orb	$20, %bl
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -48(%rbp)           # 1-byte Folded Reload
	je	.LBB58_8
.LBB58_34:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB58_35
.LBB58_37:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -48(%rbp)           # 1-byte Folded Reload
	jne	.LBB58_39
# %bb.38:
	movq	(%r12), %rdi
	movq	%r14, %rsi
	callq	netconn_tcp_recvd
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB58_39
.LBB58_35:
	xorl	%r14d, %r14d
.LBB58_39:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB58_42
# %bb.40:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB58_41
.LBB58_42:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
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
.Ltmp248:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp248
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp249:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp249
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
	jmp	.LBB58_43
.LBB58_41:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB58_43:
	movl	$42, __A_VARIABLE(%rip)
.LBB58_44:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB58_11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB58_12
# %bb.36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB58_37
.LBB58_12:
	movl	%eax, %r13d
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB58_15
# %bb.13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB58_14
.LBB58_15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp250:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp250
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp251:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp251
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
	jmp	.LBB58_16
.LBB58_14:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB58_16:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	cmpb	$-15, %r13b
	setne	%r14b
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	negq	%r14
	jmp	.LBB58_44
.LBB58_24:
	movl	$.L.str.32, %edi
	jmp	.LBB58_2
.LBB58_27:
	movl	$.L.str.33, %edi
	jmp	.LBB58_2
.LBB58_18:
	movl	$.L.str.31, %edi
.LBB58_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB58_1:
	movl	$.L.str.29, %edi
	jmp	.LBB58_2
.LBB58_4:
	movl	$.L.str.30, %edi
	jmp	.LBB58_2
.Lfunc_end58:
	.size	lwip_recv_tcp, .Lfunc_end58-lwip_recv_tcp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lwip_recvfrom_udp_raw
	.type	lwip_recvfrom_udp_raw,@function
lwip_recvfrom_udp_raw:                  # @lwip_recvfrom_udp_raw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %r14
	movl	%esi, %r12d
	movq	%rdi, %r15
	cmpq	$0, 16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB59_4
# %bb.1:
	cmpl	$0, 24(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB59_2
.LBB59_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r15), %rax
	movq	%rax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB59_5
.LBB59_9:
	movl	%r12d, -52(%rbp)        # 4-byte Spill
	movq	%r15, -64(%rbp)         # 8-byte Spill
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movq	(%rax), %rax
	movzwl	16(%rax), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 24(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB59_13
# %bb.10:                               # %.preheader
	movl	$8, %r14d
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	movl	%ebx, -56(%rbp)         # 4-byte Spill
	.p2align	4, 0x90
.LBB59_11:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r12w, %bx
	jbe	.LBB59_13
# %bb.12:                               #   in Loop: Header=BB59_11 Depth=1
	movl	%ebx, %eax
	subl	%r12d, %eax
	movq	16(%rdx), %rcx
	movq	(%rcx,%r14), %r13
	movq	%rdx, %rbx
	movzwl	%ax, %edx
	cmpq	%rdx, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmoval	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rcx,%r14), %rsi
	movzwl	%r13w, %edx
	movzwl	%r12w, %ecx
	callq	pbuf_copy_partial
	movq	%rbx, %rdx
	addl	%r12d, %r13d
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movslq	24(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %r14
	movl	%r13d, %r12d
	movl	-56(%rbp), %ebx         # 4-byte Reload
	cmpq	%rax, %r15
	jl	.LBB59_11
.LBB59_13:
	movq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	movq	-64(%rbp), %r15         # 8-byte Reload
	je	.LBB59_16
# %bb.14:
	cmpl	$0, 8(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB59_16
# %bb.15:
	leaq	8(%rdx), %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rdi
	movq	-48(%rbp), %rsi
	movq	%rdx, %r14
	movzwl	40(%rsi), %edx
	addq	$16, %rsi
	callq	lwip_sock_make_addr
	movq	%r14, %rdx
	movl	$42, __A_VARIABLE(%rip)
.LBB59_16:
	movl	$0, 44(%rdx)
	cmpq	$0, 32(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r14         # 8-byte Reload
	movl	-52(%rbp), %eax         # 4-byte Reload
	je	.LBB59_18
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 40(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB59_18:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB59_20
# %bb.19:
	movq	$0, 8(%r15)
	movq	-48(%rbp), %rdi
	callq	netbuf_delete
	movl	$42, __A_VARIABLE(%rip)
.LBB59_20:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB59_22
# %bb.21:
	movw	%bx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB59_22:
	xorl	%eax, %eax
	jmp	.LBB59_23
.LBB59_5:
	movq	%rdx, %rbx
	movl	%r12d, %edx
	shrl	%edx
	movq	(%r15), %rdi
	andl	$4, %edx
	leaq	-48(%rbp), %rsi
	callq	netconn_recv_udp_raw_netbuf_flags
                                        # kill: def $al killed $al def $eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB59_6
.LBB59_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB59_6:
	movq	-48(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB59_7
# %bb.8:
	movq	%rax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdx
	jmp	.LBB59_9
.LBB59_2:
	movl	$.L.str.37, %edi
	jmp	.LBB59_3
.LBB59_7:
	movl	$.L.str.38, %edi
.LBB59_3:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end59:
	.size	lwip_recvfrom_udp_raw, .Lfunc_end59-lwip_recvfrom_udp_raw
                                        # -- End function
	.globl	lwip_read               # -- Begin function lwip_read
	.p2align	4, 0x90
	.type	lwip_read,@function
lwip_read:                              # @lwip_read
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	lwip_recvfrom
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end60:
	.size	lwip_read, .Lfunc_end60-lwip_read
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function event_callback
	.type	event_callback,@function
event_callback:                         # @event_callback
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
	je	.LBB61_54
# %bb.1:
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movl	104(%rdi), %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jns	.LBB61_4
# %bb.2:
	callq	ukplat_lcpu_save_irqf
	movl	104(%rbx), %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	js	.LBB61_8
# %bb.3:
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
.LBB61_4:
	movl	%r15d, %edi
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB61_54
# %bb.5:
	movq	%rax, %r14
	callq	ukplat_lcpu_save_irqf
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r12d
	ja	.LBB61_55
# %bb.6:
	movl	%r12d, %ecx
	jmpq	*.LJTI61_0(,%rcx,8)
.LBB61_7:
	movl	16(%r14), %edx
	addl	$1, %edx
	movw	%dx, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	cmpw	$1, %dx
	jg	.LBB61_16
	jmp	.LBB61_20
.LBB61_8:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB61_10
# %bb.9:
	addl	$-1, %r15d
	movl	%r15d, 104(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB61_10:
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	jmp	.LBB61_54
.LBB61_11:
	movw	$1, 20(%r14)
	movl	$1, %ecx
	jmp	.LBB61_19
.LBB61_12:
	cmpw	$0, 18(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB61_17
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB61_18
.LBB61_14:
	movw	$0, 18(%r14)
	jmp	.LBB61_16
.LBB61_15:
	addw	$-1, 16(%r14)
.LBB61_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB61_51
.LBB61_17:
	movl	$1, %ecx
.LBB61_18:
	movw	$1, 18(%r14)
.LBB61_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB61_20:
	movb	22(%r14), %dl
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB61_51
# %bb.21:
	testb	%dl, %dl
	je	.LBB61_51
# %bb.22:
	movzwl	16(%r14), %r13d
	movzwl	18(%r14), %r12d
	movzwl	20(%r14), %r14d
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	select_cb_list(%rip), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB61_52
# %bb.23:
	movslq	%r15d, %rax
	shrq	$6, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$1, %eax
	movl	%r15d, %ecx
	shlq	%cl, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB61_27
.LBB61_24:                              #   in Loop: Header=BB61_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB61_25:                              #   in Loop: Header=BB61_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB61_26:                              #   in Loop: Header=BB61_27 Depth=1
	movq	(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB61_52
.LBB61_27:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_33 Depth 2
	cmpl	$0, 52(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB61_26
# %bb.28:                               #   in Loop: Header=BB61_27 Depth=1
	movq	40(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB61_39
# %bb.29:                               #   in Loop: Header=BB61_27 Depth=1
	movl	48(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB61_24
# %bb.30:                               #   in Loop: Header=BB61_27 Depth=1
	xorl	%edx, %edx
	jmp	.LBB61_33
	.p2align	4, 0x90
.LBB61_31:                              #   in Loop: Header=BB61_33 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testw	%r14w, %r14w
	jne	.LBB61_38
.LBB61_32:                              #   in Loop: Header=BB61_33 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jae	.LBB61_24
.LBB61_33:                              #   Parent Loop BB61_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r15d, (%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB61_32
# %bb.34:                               #   in Loop: Header=BB61_33 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testw	%r13w, %r13w
	jle	.LBB61_36
# %bb.35:                               #   in Loop: Header=BB61_33 Depth=2
	testb	$1, 4(%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB61_38
.LBB61_36:                              #   in Loop: Header=BB61_33 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testw	%r12w, %r12w
	je	.LBB61_31
# %bb.37:                               #   in Loop: Header=BB61_33 Depth=2
	movzwl	4(%rax,%rdx,8), %esi
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %sil
	je	.LBB61_31
.LBB61_38:                              #   in Loop: Header=BB61_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB61_42
.LBB61_39:                              #   in Loop: Header=BB61_27 Depth=1
	testw	%r13w, %r13w
	jle	.LBB61_45
# %bb.40:                               #   in Loop: Header=BB61_27 Depth=1
	movq	16(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB61_45
# %bb.41:                               #   in Loop: Header=BB61_27 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	andq	-48(%rbp), %rax         # 8-byte Folded Reload
	je	.LBB61_45
.LBB61_42:                              #   in Loop: Header=BB61_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB61_43:                              #   in Loop: Header=BB61_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB61_44:                              #   in Loop: Header=BB61_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, 52(%rbx)
	leaq	56(%rbx), %rdi
	callq	sys_sem_signal
	jmp	.LBB61_25
.LBB61_45:                              #   in Loop: Header=BB61_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testw	%r12w, %r12w
	je	.LBB61_48
# %bb.46:                               #   in Loop: Header=BB61_27 Depth=1
	movq	24(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB61_48
# %bb.47:                               #   in Loop: Header=BB61_27 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	andq	-48(%rbp), %rax         # 8-byte Folded Reload
	jne	.LBB61_43
.LBB61_48:                              #   in Loop: Header=BB61_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testw	%r14w, %r14w
	je	.LBB61_25
# %bb.49:                               #   in Loop: Header=BB61_27 Depth=1
	movq	32(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB61_25
# %bb.50:                               #   in Loop: Header=BB61_27 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	andq	-48(%rbp), %rax         # 8-byte Folded Reload
	jne	.LBB61_44
	jmp	.LBB61_25
.LBB61_51:
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	jmp	.LBB61_53
.LBB61_52:
	movl	$42, __A_VARIABLE(%rip)
.LBB61_53:
	movl	$42, __A_VARIABLE(%rip)
.LBB61_54:
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
.LBB61_55:
	movl	$.L.str.42, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end61:
	.size	event_callback, .Lfunc_end61-event_callback
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI61_0:
	.quad	.LBB61_7
	.quad	.LBB61_15
	.quad	.LBB61_12
	.quad	.LBB61_14
	.quad	.LBB61_11
                                        # -- End function
	.text
	.globl	lwip_write              # -- Begin function lwip_write
	.p2align	4, 0x90
	.type	lwip_write,@function
lwip_write:                             # @lwip_write
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%ecx, %ecx
	callq	lwip_send
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end62:
	.size	lwip_write, .Lfunc_end62-lwip_write
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lwip_selscan
	.type	lwip_selscan,@function
lwip_selscan:                           # @lwip_selscan
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -71(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -67(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -66(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -65(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -55(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -54(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -53(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -52(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -51(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -50(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -49(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -47(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -46(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -45(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -43(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -42(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jle	.LBB63_1
# %bb.2:
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movslq	%edi, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%r15d, %r15d
	movl	$sockets+20, %r14d
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB63_3
	.p2align	4, 0x90
.LBB63_23:                              #   in Loop: Header=BB63_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB63_24:                              #   in Loop: Header=BB63_3 Depth=1
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %r14
	cmpq	-136(%rbp), %r15        # 8-byte Folded Reload
	jge	.LBB63_25
.LBB63_3:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB63_5
# %bb.4:                                #   in Loop: Header=BB63_3 Depth=1
	movq	%r15, %rax
	shrq	$6, %rax
	movq	(%r13,%rax,8), %rax
	btq	%r15, %rax
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB63_9
.LBB63_5:                               #   in Loop: Header=BB63_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB63_7
# %bb.6:                                #   in Loop: Header=BB63_3 Depth=1
	movq	%r15, %rax
	shrq	$6, %rax
	movq	(%r12,%rax,8), %rax
	btq	%r15, %rax
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB63_9
.LBB63_7:                               #   in Loop: Header=BB63_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB63_24
# %bb.8:                                #   in Loop: Header=BB63_3 Depth=1
	movq	%r15, %rax
	shrq	$6, %rax
	movq	(%rbx,%rax,8), %rax
	btq	%r15, %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB63_24
	.p2align	4, 0x90
.LBB63_9:                               #   in Loop: Header=BB63_3 Depth=1
	callq	ukplat_lcpu_save_irqf
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$63, %r15
	ja	.LBB63_28
# %bb.10:                               #   in Loop: Header=BB63_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-12(%r14), %rbx
	movzwl	-4(%r14), %ecx
	movw	%cx, -74(%rbp)          # 2-byte Spill
	movzwl	-2(%r14), %ecx
	movw	%cx, -76(%rbp)          # 2-byte Spill
	movzwl	(%r14), %ecx
	movw	%cx, -78(%rbp)          # 2-byte Spill
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB63_15
# %bb.11:                               #   in Loop: Header=BB63_3 Depth=1
	movq	%r15, %rdx
	movl	$1, %eax
	movl	%r15d, %ecx
	shlq	%cl, %rax
	shrq	$6, %rdx
	movq	(%r13,%rdx,8), %rcx
	btq	%r15, %rcx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB63_15
# %bb.12:                               #   in Loop: Header=BB63_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB63_14
# %bb.13:                               #   in Loop: Header=BB63_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -74(%rbp)           # 2-byte Folded Reload
	jle	.LBB63_15
.LBB63_14:                              #   in Loop: Header=BB63_3 Depth=1
	orq	%rax, -112(%rbp)        # 8-byte Folded Spill
	addl	$1, -60(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB63_15:                              #   in Loop: Header=BB63_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB63_19
# %bb.16:                               #   in Loop: Header=BB63_3 Depth=1
	movq	%r15, %rdx
	movl	$1, %eax
	movl	%r15d, %ecx
	shlq	%cl, %rax
	shrq	$6, %rdx
	movq	(%r12,%rdx,8), %rcx
	btq	%r15, %rcx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB63_19
# %bb.17:                               #   in Loop: Header=BB63_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -76(%rbp)           # 2-byte Folded Reload
	je	.LBB63_19
# %bb.18:                               #   in Loop: Header=BB63_3 Depth=1
	orq	%rax, -104(%rbp)        # 8-byte Folded Spill
	addl	$1, -60(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB63_19:                              #   in Loop: Header=BB63_3 Depth=1
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB63_23
# %bb.20:                               #   in Loop: Header=BB63_3 Depth=1
	movq	%r15, %rdx
	movl	$1, %eax
	movl	%r15d, %ecx
	shlq	%cl, %rax
	shrq	$6, %rdx
	movq	(%rbx,%rdx,8), %rcx
	btq	%r15, %rcx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB63_23
# %bb.21:                               #   in Loop: Header=BB63_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -78(%rbp)           # 2-byte Folded Reload
	je	.LBB63_23
# %bb.22:                               #   in Loop: Header=BB63_3 Depth=1
	orq	%rax, -96(%rbp)         # 8-byte Folded Spill
	addl	$1, -60(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB63_23
.LBB63_1:
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	xorl	%eax, %eax
	movq	-48(%rbp), %rsi
	jmp	.LBB63_26
.LBB63_25:
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -72(%rbp)
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -56(%rbp)
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, -48(%rbp)
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movl	-60(%rbp), %eax         # 4-byte Reload
.LBB63_26:
	movq	16(%rbp), %rdi
	movq	%rcx, (%r8)
	movq	%rdx, (%r9)
	movq	%rsi, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB63_29
# %bb.27:
	movl	$.L.str.39, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB63_28:
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -72(%rbp)
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -56(%rbp)
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$-1, %eax
.LBB63_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end63:
	.size	lwip_selscan, .Lfunc_end63-lwip_selscan
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lwip_unlink_select_cb
	.type	lwip_unlink_select_cb,@function
lwip_unlink_select_cb:                  # @lwip_unlink_select_cb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB64_2
# %bb.1:
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB64_2:
	movq	8(%rbx), %rcx
	cmpq	%rbx, select_cb_list(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB64_3
# %bb.6:
	testq	%rcx, %rcx
	je	.LBB64_7
# %bb.8:
	movq	%rcx, %rdx
	jmp	.LBB64_9
.LBB64_3:
	movl	$select_cb_list, %edx
	testq	%rcx, %rcx
	jne	.LBB64_4
.LBB64_9:
	movq	%rax, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB64_7:
	movl	$.L.str.41, %edi
	jmp	.LBB64_5
.LBB64_4:
	movl	$.L.str.40, %edi
.LBB64_5:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end64:
	.size	lwip_unlink_select_cb, .Lfunc_end64-lwip_unlink_select_cb
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lwip_pollscan
	.type	lwip_pollscan,@function
lwip_pollscan:                          # @lwip_pollscan
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
	testl	%esi, %esi
	je	.LBB65_1
# %bb.2:
	movl	%edx, %r15d
	movq	%rdi, %r12
	movl	%esi, %r14d
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	jmp	.LBB65_3
	.p2align	4, 0x90
.LBB65_29:                              #   in Loop: Header=BB65_3 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jae	.LBB65_30
.LBB65_3:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	je	.LBB65_5
# %bb.4:                                #   in Loop: Header=BB65_3 Depth=1
	movw	$0, 6(%r12,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
.LBB65_5:                               #   in Loop: Header=BB65_3 Depth=1
	leaq	(,%rbx,4), %r13
	cmpl	$0, (%r12,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB65_26
# %bb.6:                                #   in Loop: Header=BB65_3 Depth=1
	movzwl	6(%r12,%r13,2), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %cl
	jne	.LBB65_27
# %bb.7:                                #   in Loop: Header=BB65_3 Depth=1
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	ukplat_lcpu_save_irqf
	movslq	(%r12,%r13,2), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$63, %rcx
	ja	.LBB65_32
# %bb.8:                                #   in Loop: Header=BB65_3 Depth=1
	leaq	(,%rcx,8), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	sockets+8(%rdx,%rdx,2), %r9
	movzwl	sockets+16(%rdx,%rdx,2), %edi
	movzwl	sockets+18(%rdx,%rdx,2), %esi
	movw	%si, -44(%rbp)          # 2-byte Spill
	movzwl	sockets+20(%rdx,%rdx,2), %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %edx
	testb	$2, %dl
	movw	%di, -42(%rbp)          # 2-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	jne	.LBB65_9
# %bb.11:                               #   in Loop: Header=BB65_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	je	.LBB65_16
# %bb.12:                               #   in Loop: Header=BB65_3 Depth=1
	leaq	(%rcx,%rcx,2), %rdx
	movzbl	sockets+22(,%rdx,8), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB65_13
# %bb.15:                               #   in Loop: Header=BB65_3 Depth=1
	leaq	sockets+22(,%rdx,8), %rdx
	movl	$42, __A_VARIABLE(%rip)
	addb	$-1, %cl
	movb	%cl, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB65_16
.LBB65_9:                               #   in Loop: Header=BB65_3 Depth=1
	leaq	(%rcx,%rcx,2), %rdx
	movzbl	sockets+22(,%rdx,8), %esi
	movl	%esi, %ecx
	incb	%cl
	movb	%cl, sockets+22(,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB65_10
.LBB65_16:                              #   in Loop: Header=BB65_3 Depth=1
	movw	%r8w, -46(%rbp)         # 2-byte Spill
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movzwl	4(%r12,%rbx,8), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB65_20
# %bb.17:                               #   in Loop: Header=BB65_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	jne	.LBB65_19
# %bb.18:                               #   in Loop: Header=BB65_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -42(%rbp)           # 2-byte Folded Reload
	jle	.LBB65_20
.LBB65_19:                              #   in Loop: Header=BB65_3 Depth=1
	orb	$1, 6(%r12,%r13,2)
	movl	$42, __A_VARIABLE(%rip)
.LBB65_20:                              #   in Loop: Header=BB65_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	movl	-52(%rbp), %eax         # 4-byte Reload
	movzwl	-46(%rbp), %ecx         # 2-byte Folded Reload
	je	.LBB65_23
# %bb.21:                               #   in Loop: Header=BB65_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -44(%rbp)           # 2-byte Folded Reload
	je	.LBB65_23
# %bb.22:                               #   in Loop: Header=BB65_3 Depth=1
	orb	$2, 6(%r12,%r13,2)
	movl	$42, __A_VARIABLE(%rip)
.LBB65_23:                              #   in Loop: Header=BB65_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %cx
	je	.LBB65_25
# %bb.24:                               #   in Loop: Header=BB65_3 Depth=1
	orb	$4, 6(%r12,%r13,2)
	movl	$42, __A_VARIABLE(%rip)
.LBB65_25:                              #   in Loop: Header=BB65_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB65_26:                              #   in Loop: Header=BB65_3 Depth=1
	movzwl	6(%r12,%r13,2), %ecx
.LBB65_27:                              #   in Loop: Header=BB65_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %cx
	je	.LBB65_29
# %bb.28:                               #   in Loop: Header=BB65_3 Depth=1
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB65_29
.LBB65_30:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB65_33
# %bb.31:
	movl	$.L.str.39, %edi
	jmp	.LBB65_14
.LBB65_1:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB65_33
.LBB65_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	orb	$8, 6(%r12,%rbx,8)
	movl	$-1, %eax
.LBB65_33:
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
.LBB65_10:
	leaq	sockets+22(,%rdx,8), %rcx
	movb	%sil, (%rcx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.39, %edi
	jmp	.LBB65_14
.LBB65_13:
	movl	$.L.str.17, %edi
.LBB65_14:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end65:
	.size	lwip_pollscan, .Lfunc_end65-lwip_pollscan
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lwip_getaddrname
	.type	lwip_getaddrname,@function
lwip_getaddrname:                       # @lwip_getaddrname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movl	%ecx, %r12d
	movq	%rdx, %r15
	movq	%rsi, %r14
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB66_1
# %bb.2:
	movq	%rax, %rbx
	movq	(%rax), %rdi
	movzbl	%r12b, %ecx
	leaq	-64(%rbp), %rsi
	leaq	-34(%rbp), %rdx
	callq	netconn_getaddr
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB66_7
# %bb.3:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB66_6
# %bb.4:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB66_5
.LBB66_6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	negl	%ebx
	movslq	%ebx, %rdi
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
.Ltmp252:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp252
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp253:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp253
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
	movl	$-1, %esi
	jmp	.LBB66_20
.LBB66_1:
	movl	$-1, %esi
	jmp	.LBB66_21
.LBB66_7:
	movq	(%rbx), %rax
	testb	$8, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movb	-44(%rbp), %al
	je	.LBB66_10
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB66_9
.LBB66_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %al
	je	.LBB66_12
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %al
	je	.LBB66_12
# %bb.13:
	movw	$528, -96(%rbp)         # imm = 0x210
	movzwl	-34(%rbp), %edi
	callq	lwip_htons
	movw	%ax, -94(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -92(%rbp)
	leaq	-88(%rbp), %rdi
	movl	$8, %edx
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB66_14
.LBB66_5:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %esi
	jmp	.LBB66_20
.LBB66_9:
	movl	-64(%rbp), %eax
	movl	%eax, -52(%rbp)
	movabsq	$-281474976710656, %rax # imm = 0xFFFF000000000000
	movq	%rax, -60(%rbp)
	movl	$0, -64(%rbp)
	movb	$0, -48(%rbp)
	movb	$6, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB66_12:
	movw	$2588, -96(%rbp)        # imm = 0xA1C
	movzwl	-34(%rbp), %edi
	callq	lwip_htons
	movw	%ax, -94(%rbp)
	movl	$0, -92(%rbp)
	movaps	-64(%rbp), %xmm0
	movups	%xmm0, -88(%rbp)
	movzbl	-48(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB66_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r15), %eax
	movzbl	-96(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jbe	.LBB66_16
# %bb.15:
	movl	%ecx, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
.LBB66_16:
	movl	%eax, %edx
	leaq	-96(%rbp), %rsi
	movq	%r14, %rdi
	callq	memcpy
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB66_19
# %bb.17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB66_18
.LBB66_19:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	xorl	%edi, %edi
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
.Ltmp254:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp254
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp255:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp255
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
	jmp	.LBB66_20
.LBB66_18:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
.LBB66_20:
	movl	$42, __A_VARIABLE(%rip)
.LBB66_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end66:
	.size	lwip_getaddrname, .Lfunc_end66-lwip_getaddrname
                                        # -- End function
	.globl	lwip_fcntl              # -- Begin function lwip_fcntl
	.p2align	4, 0x90
	.type	lwip_fcntl,@function
lwip_fcntl:                             # @lwip_fcntl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r15d
	movl	%esi, %ebx
	callq	get_socket
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB67_1
# %bb.2:
	movq	%rax, %r14
	cmpl	$4, %ebx
	je	.LBB67_16
# %bb.3:
	cmpl	$3, %ebx
	jne	.LBB67_26
# %bb.4:
	movq	(%r14), %rax
	movzbl	108(%rax), %r12d
	andl	$2, %r12d
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB67_7
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB67_6
.LBB67_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
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
.Ltmp256:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp256
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp257:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp257
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
	jmp	.LBB67_8
.LBB67_1:
	movl	$-1, %ebx
	jmp	.LBB67_31
.LBB67_16:
	movl	$42, __A_VARIABLE(%rip)
	testl	$-16388, %r15d          # imm = 0xBFFC
	je	.LBB67_17
# %bb.22:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB67_25
# %bb.23:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB67_24
.LBB67_25:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-88, %rdi
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
.Ltmp258:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp258
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp259:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp259
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
	jmp	.LBB67_29
.LBB67_26:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB67_28
# %bb.27:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB67_24
.LBB67_28:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-88, %rdi
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
.Ltmp260:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp260
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp261:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp261
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
	jmp	.LBB67_29
.LBB67_24:
	callq	__errno
	movl	$88, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB67_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB67_30
.LBB67_17:
	movq	(%r14), %rax
	movb	108(%rax), %cl
	movl	%ecx, %edx
	andb	$-3, %dl
	orb	$2, %cl
	testl	$16384, %r15d           # imm = 0x4000
	movzbl	%dl, %edx
	movzbl	%cl, %ecx
	cmovel	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, 108(%rax)
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB67_20
# %bb.18:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB67_19
.LBB67_20:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
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
.Ltmp262:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp262
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp263:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp263
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
	jmp	.LBB67_21
.LBB67_6:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB67_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rax
	movl	$240, %ecx
	andl	(%rax), %ecx
	shll	$13, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ebx
	cmpl	$16, %ecx
	jne	.LBB67_15
# %bb.9:
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	(%r14), %rax
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB67_13
# %bb.10:
	movzwl	82(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB67_12
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
.LBB67_12:
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %al
	jne	.LBB67_13
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	jmp	.LBB67_15
.LBB67_13:
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	xorl	%ebx, %ebx
.LBB67_15:
	orl	%r12d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB67_30
.LBB67_19:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB67_21:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB67_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB67_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end67:
	.size	lwip_fcntl, .Lfunc_end67-lwip_fcntl
                                        # -- End function
	.globl	lwip_inet_ntop          # -- Begin function lwip_inet_ntop
	.p2align	4, 0x90
	.type	lwip_inet_ntop,@function
lwip_inet_ntop:                         # @lwip_inet_ntop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	js	.LBB68_7
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %edi
	je	.LBB68_10
# %bb.2:
	cmpl	$2, %edi
	jne	.LBB68_14
# %bb.3:
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movl	%ecx, %edx
	callq	ip4addr_ntoa_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB68_22
# %bb.4:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB68_6
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB68_19
.LBB68_6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-28, %rdi
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
.Ltmp264:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp264
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp265:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp265
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
	jmp	.LBB68_21
.LBB68_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB68_9
# %bb.8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB68_19
.LBB68_9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-28, %rdi
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
.Ltmp266:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp266
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp267:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp267
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
	jmp	.LBB68_21
.LBB68_10:
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movl	%ecx, %edx
	callq	ip6addr_ntoa_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB68_22
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB68_13
# %bb.12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB68_19
.LBB68_13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-28, %rdi
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
.Ltmp268:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp268
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp269:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp269
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
	jmp	.LBB68_21
.LBB68_14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB68_16
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB68_18
.LBB68_16:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-106, %rdi
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
.Ltmp270:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp270
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp271:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp271
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
	jmp	.LBB68_21
.LBB68_19:
	callq	__errno
	movl	$28, (%rax)
	jmp	.LBB68_20
.LBB68_18:
	callq	__errno
	movl	$106, (%rax)
.LBB68_20:
	movl	$42, __A_VARIABLE(%rip)
.LBB68_21:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB68_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end68:
	.size	lwip_inet_ntop, .Lfunc_end68-lwip_inet_ntop
                                        # -- End function
	.globl	lwip_inet_pton          # -- Begin function lwip_inet_pton
	.p2align	4, 0x90
	.type	lwip_inet_pton,@function
lwip_inet_pton:                         # @lwip_inet_pton
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %edi
	je	.LBB69_3
# %bb.1:
	cmpl	$2, %edi
	jne	.LBB69_5
# %bb.2:
	movq	%rsi, %rdi
	movq	%r14, %rsi
	callq	ip4addr_aton
	movl	%eax, %ebx
	jmp	.LBB69_10
.LBB69_3:
	leaq	-48(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	ip6addr_aton
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB69_10
# %bb.4:
	leaq	-48(%rbp), %rsi
	movl	$16, %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB69_10
.LBB69_5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB69_8
# %bb.6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB69_7
.LBB69_8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	$-106, %rdi
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
.Ltmp272:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp272
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp273:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp273
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
	jmp	.LBB69_9
.LBB69_7:
	callq	__errno
	movl	$106, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB69_9:
	movl	$-1, %ebx
.LBB69_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end69:
	.size	lwip_inet_pton, .Lfunc_end69-lwip_inet_pton
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _SOCK_NET_GET_ERRNO
	.type	_SOCK_NET_GET_ERRNO,@function
_SOCK_NET_GET_ERRNO:                    # @_SOCK_NET_GET_ERRNO
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end70:
	.size	_SOCK_NET_GET_ERRNO, .Lfunc_end70-_SOCK_NET_GET_ERRNO
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
	testq	%rdi, %rdi
	je	.LBB71_1
# %bb.3:
	movq	%rdi, %rbx
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB71_4
# %bb.5:
	addl	$-1, %eax
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB71_10
# %bb.6:
	movq	$0, 8(%rbx)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	16(%rbx), %rbx
	.p2align	4, 0x90
.LBB71_8:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB71_9
# %bb.7:                                #   in Loop: Header=BB71_8 Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rbx
	callq	uk_thread_wake
	jmp	.LBB71_8
.LBB71_9:
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB71_10:
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB71_1:
	movl	$.L.str, %edi
	movl	$.L.str.26, %esi
	jmp	.LBB71_2
.LBB71_4:
	movl	$.L.str, %edi
	movl	$.L.str.27, %esi
.LBB71_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end71:
	.size	uk_mutex_unlock, .Lfunc_end71-uk_mutex_unlock
                                        # -- End function
	.section	.text_shared,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function sock_net_close
	.type	sock_net_close,@function
sock_net_close:                         # @sock_net_close
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB72_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB72_2
.LBB72_3:
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
.Ltmp274:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp274
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_sock_net_close
	movq	%rax, %rsi
.Ltmp275:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp275
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -12(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	-12(%rbp), %eax
	jmp	.LBB72_4
.LBB72_2:
	callq	_sock_net_close
	movl	%eax, -12(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB72_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end72:
	.size	sock_net_close, .Lfunc_end72-sock_net_close
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sock_net_read
	.type	sock_net_read,@function
sock_net_read:                          # @sock_net_read
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r13
	pushq	%r12
	pushq	%rax
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rax
	jb	.LBB73_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rax
	jbe	.LBB73_2
.LBB73_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%ecx, %r13
	movq	%rdx, %r12
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
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
.Ltmp276:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp276
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_sock_net_read
	movq	%rax, %rsi
.Ltmp277:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp277
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
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -28(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	-28(%rbp), %eax
	jmp	.LBB73_4
.LBB73_2:
	callq	_sock_net_read
	movl	%eax, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB73_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%r12
	popq	%r13
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end73:
	.size	sock_net_read, .Lfunc_end73-sock_net_read
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sock_net_write
	.type	sock_net_write,@function
sock_net_write:                         # @sock_net_write
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r12
	subq	$16, %rsp
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB74_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB74_2
.LBB74_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edx, %r12
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
.Ltmp278:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp278
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_sock_net_write
	movq	%rax, %rsi
.Ltmp279:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp279
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -20(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	-20(%rbp), %eax
	jmp	.LBB74_4
.LBB74_2:
	callq	_sock_net_write
	movl	%eax, -20(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB74_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%r12
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end74:
	.size	sock_net_write, .Lfunc_end74-sock_net_write
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sock_net_ioctl
	.type	sock_net_ioctl,@function
sock_net_ioctl:                         # @sock_net_ioctl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r13
	pushq	%r12
	pushq	%rax
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rax
	jb	.LBB75_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rax
	jbe	.LBB75_2
.LBB75_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %r12
	movq	%rcx, %r13
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
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
.Ltmp280:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp280
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_sock_net_ioctl
	movq	%rax, %rsi
.Ltmp281:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp281
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
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -28(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	-28(%rbp), %eax
	jmp	.LBB75_4
.LBB75_2:
	movq	112(%rdi), %rax
	movl	8(%rax), %edi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	callq	lwip_ioctl
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB75_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%r12
	popq	%r13
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end75:
	.size	sock_net_ioctl, .Lfunc_end75-sock_net_ioctl
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function lwip_sock_make_addr
	.type	lwip_sock_make_addr,@function
lwip_sock_make_addr:                    # @lwip_sock_make_addr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB76_1
# %bb.3:
	movq	%rcx, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB76_4
# %bb.5:
	movq	%r8, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB76_6
# %bb.7:
	movq	%rsi, %rbx
	testb	$8, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB76_12
# %bb.8:
	movb	20(%rbx), %al
	jmp	.LBB76_9
.LBB76_12:
	movl	$42, __A_VARIABLE(%rip)
	movb	20(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB76_13
.LBB76_9:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %al
	je	.LBB76_14
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %al
	je	.LBB76_14
# %bb.11:
	movw	$528, -56(%rbp)         # imm = 0x210
	movzwl	%dx, %edi
	callq	lwip_htons
	movw	%ax, -54(%rbp)
	movl	(%rbx), %eax
	movl	%eax, -52(%rbp)
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-56(%rbp), %ecx
	jmp	.LBB76_15
.LBB76_13:
	movl	(%rbx), %eax
	movl	%eax, 12(%rbx)
	movabsq	$-281474976710656, %rax # imm = 0xFFFF000000000000
	movq	%rax, 4(%rbx)
	movl	$0, (%rbx)
	movb	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movb	$6, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB76_14:
	movw	$2588, -56(%rbp)        # imm = 0xA1C
	movzwl	%dx, %edi
	callq	lwip_htons
	movw	%ax, -54(%rbp)
	movl	$0, -52(%rbp)
	movups	(%rbx), %xmm0
	movups	%xmm0, -48(%rbp)
	movzbl	16(%rbx), %eax
	movl	%eax, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$28, %ecx
.LBB76_15:
	movl	(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	cmpl	%ecx, %eax
	jb	.LBB76_18
# %bb.16:
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jbe	.LBB76_19
# %bb.17:
	movl	%ecx, (%r15)
	xorl	%ebx, %ebx
	movl	%ecx, %eax
.LBB76_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB76_19:
	movl	%eax, %edx
	leaq	-56(%rbp), %rsi
	movq	%r14, %rdi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB76_1:
	movl	$.L.str.34, %edi
	jmp	.LBB76_2
.LBB76_4:
	movl	$.L.str.35, %edi
	jmp	.LBB76_2
.LBB76_6:
	movl	$.L.str.36, %edi
.LBB76_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end76:
	.size	lwip_sock_make_addr, .Lfunc_end76-lwip_sock_make_addr
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"s_vnode->v_refcnt == 1"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"newconn != NULL"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"!(1)"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"invalid socket index"
	.size	.L.str.4, 21

	.type	sockets,@object         # @sockets
	.local	sockets
	.comm	sockets,1536,16
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"lwip_bind: invalid address"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"sock->lastdata == NULL"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"lwip_connect: invalid address"
	.size	.L.str.7, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"lwip_recvmsg: invalid message pointer"
	.size	.L.str.9, 38

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"lwip_recvmsg: unsupported flags"
	.size	.L.str.10, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"lwip_sendmsg: invalid msghdr"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"lwip_sendmsg: invalid msghdr iov"
	.size	.L.str.12, 33

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"lwip_sendmsg: maximum iovs exceeded"
	.size	.L.str.13, 36

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"lwip_sendmsg: unsupported flags"
	.size	.L.str.14, 32

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"lwip_sendmsg: invalid msghdr name"
	.size	.L.str.15, 34

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"lwip_sendto: invalid address"
	.size	.L.str.16, 29

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"sock->select_waiting > 0"
	.size	.L.str.17, 25

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"lwip_poll: invalid fds"
	.size	.L.str.18, 23

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.20,@object # @uk_pr_crit.__str.20
uk_pr_crit.__str.20:
	.asciz	"sockets.c"
	.size	uk_pr_crit.__str.20, 10

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"a"
	.size	.L.str.21, 2

	.type	s_mount,@object         # @s_mount
	.section	.data_shared,"aw",@progbits
	.p2align	3
s_mount:
	.quad	sock_net_vfsops
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1024
	.zero	1024
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.zero	8
	.size	s_mount, 2120

	.type	s_inode,@object         # @s_inode
	.p2align	3
s_inode:
	.quad	0                       # 0x0
	.size	s_inode, 8

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"ret == 0"
	.size	.L.str.22, 9

	.type	sock_fd_alloc.__str,@object # @sock_fd_alloc.__str
	.section	.data_shared,"aw",@progbits
sock_fd_alloc.__str:
	.asciz	"/"
	.size	sock_fd_alloc.__str, 2

	.type	sock_fd_alloc.__str.23,@object # @sock_fd_alloc.__str.23
sock_fd_alloc.__str.23:
	.asciz	"/"
	.size	sock_fd_alloc.__str.23, 2

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"ret < 0"
	.size	.L.str.24, 8

	.type	sock_net_vfsops,@object # @sock_net_vfsops
	.section	.data_shared,"aw",@progbits
	.p2align	3
sock_net_vfsops:
	.quad	0
	.quad	0
	.quad	0
	.quad	vfscore_vop_nullop
	.quad	0
	.quad	sock_net_vnops
	.size	sock_net_vfsops, 48

	.type	sock_net_vnops,@object  # @sock_net_vnops
	.p2align	3
sock_net_vnops:
	.quad	0
	.quad	sock_net_close
	.quad	sock_net_read
	.quad	sock_net_write
	.quad	0
	.quad	sock_net_ioctl
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	vfscore_vop_einval
	.quad	0
	.quad	vfscore_vop_nullop
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	sock_net_vnops, 184

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"m"
	.size	.L.str.26, 2

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"m->lock_count > 0"
	.size	.L.str.27, 18

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"sockets[i].select_waiting == 0"
	.size	.L.str.28, 31

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"no socket given"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"this should be checked internally"
	.size	.L.str.30, 34

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"p != NULL"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"invalid copylen, len would underflow"
	.size	.L.str.32, 37

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"invalid copylen"
	.size	.L.str.33, 16

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"fromaddr != NULL"
	.size	.L.str.34, 17

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"from != NULL"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"fromlen != NULL"
	.size	.L.str.36, 16

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"lwip_recvfrom_udp_raw: invalid arguments"
	.size	.L.str.37, 41

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"buf != NULL"
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"nready >= 0"
	.size	.L.str.39, 12

	.type	select_cb_list,@object  # @select_cb_list
	.local	select_cb_list
	.comm	select_cb_list,8,8
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"select_cb->prev == NULL"
	.size	.L.str.40, 24

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"select_cb->prev != NULL"
	.size	.L.str.41, 24

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"unknown event"
	.size	.L.str.42, 14

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Unknown socket option"
	.size	.L.str.43, 22

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Unhandled netconn type in SO_BINDTODEVICE"
	.size	.L.str.44, 42

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Invalid netif index"
	.size	.L.str.45, 20

	.type	socket_ipv6_multicast_memberships,@object # @socket_ipv6_multicast_memberships
	.local	socket_ipv6_multicast_memberships
	.comm	socket_ipv6_multicast_memberships,2048,16
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
