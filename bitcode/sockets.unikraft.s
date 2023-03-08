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
	cmpl	$1, 40(%rdi)
	jne	.LBB0_1
# %bb.3:
	movq	112(%rdi), %rbx
	movl	8(%rbx), %edi
	callq	lwip_close
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_4
# %bb.5:
	movl	%eax, %r14d
	movq	%rbx, %rsi
	callq	*40(%rdi)
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
	cmpq	%rcx, %rax
	jb	.LBB0_9
# %bb.7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	movl	-28(%rbp), %r14d
	jmp	.LBB0_10
.LBB0_8:
	callq	__errno
	movl	(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, -28(%rbp)
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB2_6
# %bb.1:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %r13
	leaq	sockets(,%r13,8), %r12
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.LBB2_6
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$240, %r15d
	andl	(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-2048, %rbx            # imm = 0xF800
	leaq	-64(%rbp), %r14
	jmp	.LBB2_4
	.p2align	4, 0x90
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	addq	$32, %rbx
	je	.LBB2_9
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	cmpq	%r12, socket_ipv6_multicast_memberships+2048(%rbx)
	jne	.LBB2_3
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
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
	movq	(%r12), %rdi
	movq	%r14, %rsi
	movl	$1, %ecx
	callq	netconn_join_leave_group_netif
	jmp	.LBB2_3
.LBB2_6:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB2_8
# %bb.7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB2_13
.LBB2_8:
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
	jmp	.LBB2_18
.LBB2_9:
	movq	(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	callq	netconn_prepare_delete
	testb	%al, %al
	je	.LBB2_14
# %bb.10:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB2_12
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB2_17
.LBB2_12:
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
	jmp	.LBB2_19
.LBB2_13:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_18
.LBB2_14:
	callq	ukplat_lcpu_save_irqf
	movq	sockets+8(,%r13,8), %rbx
	movq	$0, sockets+8(,%r13,8)
	movq	(%r12), %r14
	movq	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	testq	%rbx, %rbx
	je	.LBB2_22
# %bb.15:
	movq	%rbx, %rdi
	cmpl	$16, %r15d
	jne	.LBB2_21
# %bb.16:
	callq	pbuf_free
	jmp	.LBB2_22
.LBB2_17:
	callq	__errno
	movl	%ebx, (%rax)
.LBB2_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_19:
	movl	$-1, %esi
.LBB2_20:
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
.LBB2_21:
	callq	netbuf_delete
.LBB2_22:
	testq	%r14, %r14
	je	.LBB2_24
# %bb.23:
	movq	%r14, %rdi
	callq	netconn_delete
.LBB2_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB2_26
# %bb.25:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB2_27
.LBB2_26:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB2_20
.LBB2_27:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB2_20
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
	cmpq	%rcx, %rax
	jb	.LBB3_4
# %bb.3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	movl	-72(%rbp), %r14d
	jmp	.LBB3_6
.LBB3_5:
	callq	__errno
	movl	(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, -72(%rbp)
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_7:
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
	cmpq	%rcx, %rax
	jb	.LBB5_4
# %bb.3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	_SOCK_NET_GET_ERRNO
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -72(%rbp)

	#NO_APP
	movl	-72(%rbp), %r14d
	jmp	.LBB5_6
.LBB5_5:
	callq	__errno
	movl	(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, -72(%rbp)
.LBB5_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_7:
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
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB8_5
# %bb.1:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rax
	movq	sockets(,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB8_5
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$21537, %rsi            # imm = 0x5421
	jne	.LBB8_9
# %bb.3:
	testq	%rdx, %rdx
	je	.LBB8_12
# %bb.4:
	movb	108(%rax), %cl
	addq	$108, %rax
	movl	%ecx, %esi
	andb	$-3, %sil
	orb	$2, %cl
	cmpl	$0, (%rdx)
	movzbl	%sil, %edx
	movzbl	%cl, %ecx
	cmovel	%edx, %ecx
	jmp	.LBB8_13
.LBB8_5:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB8_7
# %bb.6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB8_8
.LBB8_7:
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
	jmp	.LBB8_17
.LBB8_8:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_17:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_18:
	movl	$-1, %esi
.LBB8_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	addq	$8, %rsp
	popq	%r15
	popq	%rbp
	retq
.LBB8_9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB8_11
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB8_16
.LBB8_11:
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
	jmp	.LBB8_18
.LBB8_12:
	movb	108(%rax), %cl
	addq	$108, %rax
	andb	$-3, %cl
.LBB8_13:
	movb	%cl, (%rax)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB8_15
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB8_20
.LBB8_15:
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
	jmp	.LBB8_19
.LBB8_16:
	callq	__errno
	movl	$88, (%rax)
	jmp	.LBB8_17
.LBB8_20:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB8_19
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
	movl	$-1, %ebx
	testl	%eax, %eax
	js	.LBB9_7
# %bb.1:
	movl	%eax, %r14d
	movl	%eax, %edi
	callq	sock_fd_alloc
	movl	%eax, %ebx
	testl	%eax, %eax
	jns	.LBB9_7
# %bb.2:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB9_5
# %bb.3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	jmp	.LBB9_6
.LBB9_4:
	negl	%ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_6:
	movl	%r14d, %edi
	callq	lwip_close
	movl	$-1, %ebx
.LBB9_7:
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
	testq	%rax, %rax
	je	.LBB10_12
# %bb.8:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	alloc_socket
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
	cmpq	%rcx, %rax
	jb	.LBB10_11
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	jmp	.LBB10_27
.LBB10_12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB10_14
# %bb.13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
.LBB10_15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB10_17
# %bb.16:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	_SOCK_NET_SET_ERRNO
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
	cmpq	%rcx, %rax
	jb	.LBB10_20
# %bb.19:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
.Ltmp26:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp26
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
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
	subq	$40, %rsp
	movl	%edi, %ebx
	movl	$0, -44(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB11_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	vfscore_alloc_fd
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -48(%rbp)

	#NO_APP
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	js	.LBB11_5
.LBB11_6:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB11_7
# %bb.8:
	movl	$1, %esi
	movl	$16, %edx
	callq	*8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_9
# %bb.10:
	movq	%rax, %r13
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB11_11
# %bb.12:
	movl	$1, %esi
	movl	$80, %edx
	callq	*8(%rdi)
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
	cmpq	%rcx, %rax
	jb	.LBB11_17
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	vfscore_vget
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
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB11_19
.LBB11_21:
	cmpq	$0, 65480(%rbp)
	je	.LBB11_22
# %bb.23:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB11_33
# %bb.24:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB11_25
.LBB11_33:
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
	callq	uk_mutex_unlock
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB11_34
.LBB11_2:
	callq	vfscore_alloc_fd
	movl	%eax, -48(%rbp)
	testl	%eax, %eax
	jns	.LBB11_6
.LBB11_5:
	movl	$-23, -44(%rbp)
	movl	$-23, %eax
	jmp	.LBB11_69
.LBB11_9:
	movl	$-12, -44(%rbp)
	jmp	.LBB11_61
.LBB11_13:
	movl	$-12, -44(%rbp)
	jmp	.LBB11_59
.LBB11_22:
	movl	$-12, -44(%rbp)
	jmp	.LBB11_56
.LBB11_16:
	movq	s_inode(%rip), %rsi
	leaq	1(%rsi), %rax
	movq	%rax, s_inode(%rip)
	movl	$s_mount, %edi
	movq	%r12, %rdx
	callq	vfscore_vget
	movl	%eax, -44(%rbp)
	testl	%eax, %eax
	je	.LBB11_21
.LBB11_19:
	movl	$.L.str, %edi
	movl	$.L.str.22, %esi
	jmp	.LBB11_20
.LBB11_25:
	movq	65480(%rbp), %r12
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movl	64(%r12), %eax
	testl	%eax, %eax
	jle	.LBB11_26
# %bb.27:
	addl	$-1, %eax
	movl	%eax, 64(%r12)
	jne	.LBB11_32
# %bb.28:
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movq	$0, 72(%r12)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	80(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB11_31
	.p2align	4, 0x90
.LBB11_29:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rbx
	callq	uk_thread_wake
	testq	%rbx, %rbx
	jne	.LBB11_29
.LBB11_31:
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	-68(%rbp), %ebx         # 4-byte Reload
.LBB11_32:
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
.LBB11_34:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB11_37
# %bb.35:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB11_36
.LBB11_37:
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
.Ltmp34:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp34
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -64(%rbp)

	#NO_APP
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.LBB11_39
.LBB11_40:
	movl	-48(%rbp), %ecx
	movl	%ecx, (%r14)
	movabsq	$4294967299, %rcx       # imm = 0x100000003
	movq	%rcx, 4(%r14)
	movq	%r13, 24(%r14)
	movq	%rax, 40(%r14)
	movl	$1, 32(%r14)
	movq	65480(%rbp), %rax
	movq	%r13, 112(%rax)
	movq	65480(%rbp), %rax
	movl	$6, 44(%rax)
	movq	%r14, (%r13)
	movl	%ebx, 8(%r13)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB11_43
# %bb.41:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB11_42
.LBB11_43:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-48(%rbp), %rdi
	movq	(%r13), %rsi
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
	callq	vfscore_install_fd
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	jmp	.LBB11_44
.LBB11_36:
	movq	65480(%rbp), %rsi
	movl	$sock_fd_alloc.__str, %edx
	xorl	%edi, %edi
	callq	dentry_alloc
	movq	%rax, -64(%rbp)
	testq	%rax, %rax
	jne	.LBB11_40
.LBB11_39:
	movl	$-12, -44(%rbp)
	jmp	.LBB11_52
.LBB11_42:
	movl	-48(%rbp), %edi
	movq	(%r13), %rsi
	callq	vfscore_install_fd
	movl	%eax, -44(%rbp)
.LBB11_44:
	#APP
	movq	%rsp, %rcx
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_45
# %bb.48:
	movl	$_intrstack_start, %eax
	cmpq	%rax, %rcx
	jb	.LBB11_51
# %bb.49:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	drele
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
.LBB11_45:
	movl	$_intrstack_start, %eax
	cmpq	%rax, %rcx
	jb	.LBB11_67
# %bb.46:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB11_47
.LBB11_67:
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
	callq	vrele
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
	jmp	.LBB11_68
.LBB11_50:
	movq	-64(%rbp), %rdi
	callq	drele
.LBB11_52:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB11_55
# %bb.53:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB11_54
.LBB11_55:
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
	callq	vrele
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB11_56
.LBB11_54:
	movq	65480(%rbp), %rdi
	callq	vrele
.LBB11_56:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB11_57
# %bb.58:
	movq	%r14, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_59:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB11_57
# %bb.60:
	movq	%r13, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_61:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB11_64
# %bb.62:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB11_63
.LBB11_64:
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
	callq	vfscore_put_fd
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
	jmp	.LBB11_65
.LBB11_63:
	movl	-48(%rbp), %edi
	callq	vfscore_put_fd
.LBB11_65:
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB11_66
.LBB11_69:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_47:
	movq	65480(%rbp), %rdi
	callq	vrele
.LBB11_68:
	movl	-48(%rbp), %eax
	jmp	.LBB11_69
.LBB11_7:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-12, -44(%rbp)
	jmp	.LBB11_61
.LBB11_11:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-12, -44(%rbp)
	jmp	.LBB11_59
.LBB11_66:
	movl	$.L.str, %edi
	movl	$.L.str.24, %esi
	jmp	.LBB11_20
.LBB11_57:
	movl	$.L.str, %edi
	movl	$.L.str.21, %esi
.LBB11_20:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB11_26:
	movl	$.L.str, %edi
	movl	$.L.str.27, %esi
	jmp	.LBB11_20
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
	cmpq	%rcx, %rax
	jb	.LBB13_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movq	-32(%rbp), %rcx
	jmp	.LBB13_8
.LBB13_2:
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB13_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB13_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB13_6
.LBB13_3:
	movq	$-22, %rcx
.LBB13_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -32(%rbp)
.LBB13_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB13_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB13_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB13_11
.LBB13_12:
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
	callq	_SOCK_NET_SET_ERRNO
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
	movl	$-1, %ebx
	jmp	.LBB13_22
.LBB13_13:
	movl	8(%rcx), %edi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	lwip_accept
	movl	$-1, %ebx
	testl	%eax, %eax
	js	.LBB13_18
# %bb.14:
	movl	%eax, %r14d
	movl	%eax, %edi
	callq	sock_fd_alloc
	movl	%eax, %ebx
	testl	%eax, %eax
	jns	.LBB13_18
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB13_23
# %bb.16:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB13_17
.LBB13_23:
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
	jmp	.LBB13_24
.LBB13_11:
	xorl	%ebx, %ebx
	subl	-32(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB13_22
.LBB13_17:
	negl	%ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_24:
	movl	%r14d, %edi
	callq	lwip_close
	movl	$-1, %ebx
.LBB13_18:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB13_21
# %bb.19:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB13_20
.LBB13_21:
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
	callq	vfscore_put_file
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
	jmp	.LBB13_22
.LBB13_20:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB13_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	testq	%rax, %rax
	je	.LBB14_1
# %bb.2:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB14_4
# %bb.3:
	movq	24(%rax), %rcx
	jmp	.LBB14_4
.LBB14_1:
	movq	$-22, %rcx
.LBB14_4:
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
	movw	$0, -42(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB15_8
# %bb.1:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rbx
	movq	sockets(,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB15_8
# %bb.2:
	movq	%rdx, %r15
	movq	%rsi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-56(%rbp), %rsi
	callq	netconn_accept
	testb	%al, %al
	je	.LBB15_15
# %bb.3:
	leaq	sockets(,%rbx,8), %rcx
	movq	(%rcx), %rcx
	movl	$240, %edx
	andl	(%rcx), %edx
	cmpl	$16, %edx
	jne	.LBB15_33
# %bb.4:
	cmpb	$-15, %al
	jne	.LBB15_36
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB15_7
# %bb.6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB15_47
.LBB15_7:
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
	jmp	.LBB15_13
.LBB15_8:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB15_10
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB15_11
.LBB15_10:
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
	jmp	.LBB15_12
.LBB15_11:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_13:
	movl	$-1, %r13d
.LBB15_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_15:
	movq	-56(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB15_57
# %bb.16:
	movl	$1, %esi
	callq	alloc_socket
	cmpl	$-1, %eax
	je	.LBB15_39
# %bb.17:
	movl	%eax, %r13d
	cmpl	$64, %eax
	jae	.LBB15_58
# %bb.18:
	callq	ukplat_lcpu_save_irqf
	movq	-56(%rbp), %rcx
	movl	104(%rcx), %ebx
	movl	%r13d, 104(%rcx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	-56(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB15_23
# %bb.19:
	notl	%ebx
	shll	$16, %ebx
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	testl	%ebx, %ebx
	jle	.LBB15_22
# %bb.20:
	shrl	$16, %ebx
	addl	$1, %ebx
	.p2align	4, 0x90
.LBB15_21:                              # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*120(%rdi)
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jg	.LBB15_21
.LBB15_22:
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
.LBB15_23:
	testq	%r14, %r14
	je	.LBB15_53
# %bb.24:
	testq	%r15, %r15
	je	.LBB15_53
# %bb.25:
	movq	-56(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	leaq	-42(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	netconn_getaddr
	testb	%al, %al
	je	.LBB15_44
# %bb.26:
	movl	%eax, %r12d
	movslq	%r13d, %rbx
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
	testq	%r15, %r15
	je	.LBB15_28
# %bb.27:
	movq	%r15, %rdi
	callq	pbuf_free
.LBB15_28:
	testq	%r14, %r14
	je	.LBB15_30
# %bb.29:
	movq	%r14, %rdi
	callq	netconn_delete
.LBB15_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%r12b, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB15_32
# %bb.31:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB15_43
.LBB15_32:
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
	jmp	.LBB15_13
.LBB15_33:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB15_35
# %bb.34:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB15_42
.LBB15_35:
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
	jmp	.LBB15_13
.LBB15_36:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB15_38
# %bb.37:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB15_43
.LBB15_38:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB15_13
.LBB15_39:
	movq	-56(%rbp), %rdi
	callq	netconn_delete
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB15_41
# %bb.40:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB15_48
.LBB15_41:
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
	jmp	.LBB15_13
.LBB15_42:
	callq	__errno
	movl	$95, (%rax)
	jmp	.LBB15_12
.LBB15_43:
	callq	__errno
	movl	%ebx, (%rax)
	jmp	.LBB15_12
.LBB15_44:
	movb	-92(%rbp), %al
	cmpb	$46, %al
	je	.LBB15_46
# %bb.45:
	cmpb	$6, %al
	jne	.LBB15_49
.LBB15_46:
	movw	$2588, -88(%rbp)        # imm = 0xA1C
	movzwl	-42(%rbp), %edi
	callq	lwip_htons
	movw	%ax, -86(%rbp)
	movl	$0, -84(%rbp)
	movaps	-112(%rbp), %xmm0
	movups	%xmm0, -80(%rbp)
	movzbl	-96(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB15_50
.LBB15_47:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB15_12
.LBB15_48:
	callq	__errno
	movl	$23, (%rax)
	jmp	.LBB15_12
.LBB15_49:
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
.LBB15_50:
	movl	(%r15), %eax
	movzbl	-88(%rbp), %ecx
	cmpl	%ecx, %eax
	jbe	.LBB15_52
# %bb.51:
	movl	%ecx, (%r15)
	movl	%ecx, %eax
.LBB15_52:
	movl	%eax, %edx
	leaq	-88(%rbp), %rsi
	movq	%r14, %rdi
	callq	memcpy
.LBB15_53:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB15_55
# %bb.54:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB15_56
.LBB15_55:
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
	callq	_SOCK_NET_SET_ERRNO
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
	jmp	.LBB15_14
.LBB15_56:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_14
.LBB15_57:
	movl	$.L.str.2, %edi
	jmp	.LBB15_59
.LBB15_58:
	movl	$.L.str.4, %edi
.LBB15_59:
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
	cmpq	%rcx, %rax
	jb	.LBB16_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movq	-32(%rbp), %rcx
	jmp	.LBB16_8
.LBB16_2:
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB16_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB16_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB16_6
.LBB16_3:
	movq	$-22, %rcx
.LBB16_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -32(%rbp)
.LBB16_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB16_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB16_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB16_11
.LBB16_12:
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
	movl	$-1, %ebx
	jmp	.LBB16_17
.LBB16_13:
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
	cmpq	%rcx, %rax
	jb	.LBB16_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB16_15
.LBB16_16:
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
	callq	vfscore_put_file
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
	jmp	.LBB16_17
.LBB16_11:
	xorl	%ebx, %ebx
	subl	-32(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB16_17
.LBB16_15:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB16_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB17_17
# %bb.1:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rax
	movq	sockets(,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.LBB17_17
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%rsi), %cl
	cmpb	$10, %cl
	je	.LBB17_21
# %bb.3:
	cmpb	$2, %cl
	jne	.LBB17_22
# %bb.4:
	testb	$8, (%rdi)
	jne	.LBB17_22
.LBB17_5:
	cmpl	$28, %edx
	je	.LBB17_7
# %bb.6:
	cmpl	$16, %edx
	jne	.LBB17_38
.LBB17_7:
	movl	%ecx, %edx
	orb	$8, %dl
	cmpb	$10, %dl
	jne	.LBB17_38
# %bb.8:
	testb	$3, %sil
	jne	.LBB17_38
# %bb.9:
	leaq	sockets(,%rax,8), %r14
	cmpb	$10, %cl
	jne	.LBB17_25
# %bb.10:
	movdqu	8(%rsi), %xmm0
	movdqa	%xmm0, -48(%rbp)
	movb	$0, -32(%rbp)
	movdqa	%xmm0, -64(%rbp)        # 16-byte Spill
	movd	%xmm0, %ebx
	movl	%ebx, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	cmpl	$33022, %eax            # imm = 0x80FE
	je	.LBB17_13
# %bb.11:
	movl	%ebx, %eax
	andl	$36863, %eax            # imm = 0x8FFF
	cmpl	$767, %eax              # imm = 0x2FF
	je	.LBB17_13
# %bb.12:
	movzwl	%ax, %eax
	cmpl	$511, %eax              # imm = 0x1FF
	jne	.LBB17_14
.LBB17_13:
	movb	24(%rsi), %al
	movb	%al, -32(%rbp)
.LBB17_14:
	movzwl	2(%rsi), %edi
	callq	lwip_htons
	movb	$6, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movdqa	-64(%rbp), %xmm1        # 16-byte Reload
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %ecx
	orl	%ecx, %ebx
	jne	.LBB17_26
# %bb.15:
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %ecx
	cmpl	$-65536, %ecx           # imm = 0xFFFF0000
	jne	.LBB17_26
# %bb.16:
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, -48(%rbp)
	movb	$0, -28(%rbp)
	jmp	.LBB17_26
.LBB17_17:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB17_19
# %bb.18:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB17_20
.LBB17_19:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB17_31
.LBB17_20:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_31
.LBB17_21:
	testb	$8, (%rdi)
	jne	.LBB17_5
.LBB17_22:
	movl	$-6, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB17_24
# %bb.23:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB17_30
.LBB17_24:
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
	jmp	.LBB17_32
.LBB17_25:
	movl	4(%rsi), %eax
	movl	%eax, -48(%rbp)
	movzwl	2(%rsi), %edi
	callq	lwip_htons
	movb	$0, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB17_26:
	movq	(%r14), %rdi
	movzwl	%ax, %edx
	leaq	-48(%rbp), %rsi
	callq	netconn_bind
	testb	%al, %al
	je	.LBB17_34
# %bb.27:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB17_29
# %bb.28:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB17_30
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
	jmp	.LBB17_32
.LBB17_30:
	callq	__errno
	movl	%ebx, (%rax)
.LBB17_31:
	movl	$42, __A_VARIABLE(%rip)
.LBB17_32:
	movl	$-1, %esi
.LBB17_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_34:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB17_36
# %bb.35:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB17_37
.LBB17_36:
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
	jmp	.LBB17_33
.LBB17_37:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB17_33
.LBB17_38:
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
	movl	%esi, -64(%rbp)         # 4-byte Spill
	testl	%esi, %esi
	je	.LBB18_15
# %bb.1:
	xorl	%r12d, %r12d
	jmp	.LBB18_4
	.p2align	4, 0x90
.LBB18_2:                               #   in Loop: Header=BB18_4 Depth=1
	movl	%eax, (%r14,%r12,8)
.LBB18_3:                               #   in Loop: Header=BB18_4 Depth=1
	addq	$1, %r12
	cmpq	%r13, %r12
	jae	.LBB18_15
.LBB18_4:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%r12,8), %eax
	testl	%eax, %eax
	js	.LBB18_2
# %bb.5:                                #   in Loop: Header=BB18_4 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB18_7
# %bb.6:                                #   in Loop: Header=BB18_4 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB18_8
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -56(%rbp)

	#NO_APP
	movq	-56(%rbp), %rcx
	jmp	.LBB18_13
.LBB18_8:                               #   in Loop: Header=BB18_4 Depth=1
	movl	(%rbx,%r12,8), %edi
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB18_11
# %bb.9:                                #   in Loop: Header=BB18_4 Depth=1
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB18_12
# %bb.10:                               #   in Loop: Header=BB18_4 Depth=1
	movq	24(%rax), %rcx
	jmp	.LBB18_12
.LBB18_11:                              #   in Loop: Header=BB18_4 Depth=1
	movq	$-22, %rcx
.LBB18_12:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -56(%rbp)
.LBB18_13:                              #   in Loop: Header=BB18_4 Depth=1
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	jbe	.LBB18_22
# %bb.14:                               #   in Loop: Header=BB18_4 Depth=1
	movl	8(%rcx), %eax
	movl	%eax, (%r14,%r12,8)
	movzwl	4(%rbx,%r12,8), %eax
	movw	%ax, 4(%r14,%r12,8)
	movq	(%rcx), %rdi
	callq	vfscore_put_file
	jmp	.LBB18_3
.LBB18_15:
	movq	%r14, %rdi
	movl	-64(%rbp), %r15d        # 4-byte Reload
	movl	%r15d, %esi
	movl	-60(%rbp), %edx         # 4-byte Reload
	callq	lwip_poll
	testl	%eax, %eax
	js	.LBB18_37
# %bb.16:
	testl	%r15d, %r15d
	je	.LBB18_37
# %bb.17:
	movl	%r13d, %edx
	andl	$1, %edx
	cmpl	$1, %r15d
	jne	.LBB18_25
# %bb.18:
	xorl	%ecx, %ecx
.LBB18_19:
	testq	%rdx, %rdx
	je	.LBB18_37
# %bb.20:
	cmpl	$0, (%rbx,%rcx,8)
	js	.LBB18_33
# %bb.21:
	movzwl	6(%r14,%rcx,8), %edx
	jmp	.LBB18_34
.LBB18_22:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB18_24
# %bb.23:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB18_35
.LBB18_24:
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
	callq	_SOCK_NET_SET_ERRNO
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
	jmp	.LBB18_36
.LBB18_25:
	subq	%rdx, %r13
	xorl	%ecx, %ecx
	jmp	.LBB18_28
	.p2align	4, 0x90
.LBB18_26:                              #   in Loop: Header=BB18_28 Depth=1
	movzwl	14(%r14,%rcx,8), %esi
.LBB18_27:                              #   in Loop: Header=BB18_28 Depth=1
	movw	%si, 14(%rbx,%rcx,8)
	addq	$2, %rcx
	cmpq	%rcx, %r13
	je	.LBB18_19
.LBB18_28:                              # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rbx,%rcx,8)
	js	.LBB18_30
# %bb.29:                               #   in Loop: Header=BB18_28 Depth=1
	movzwl	6(%r14,%rcx,8), %esi
	jmp	.LBB18_31
	.p2align	4, 0x90
.LBB18_30:                              #   in Loop: Header=BB18_28 Depth=1
	xorl	%esi, %esi
.LBB18_31:                              #   in Loop: Header=BB18_28 Depth=1
	movw	%si, 6(%rbx,%rcx,8)
	cmpl	$0, 8(%rbx,%rcx,8)
	jns	.LBB18_26
# %bb.32:                               #   in Loop: Header=BB18_28 Depth=1
	xorl	%esi, %esi
	jmp	.LBB18_27
.LBB18_33:
	xorl	%edx, %edx
.LBB18_34:
	movw	%dx, 6(%rbx,%rcx,8)
	jmp	.LBB18_37
.LBB18_35:
	xorl	%ebx, %ebx
	subl	-56(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_36:
	movl	$-1, %eax
.LBB18_37:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, %rsp
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
	testq	%rdi, %rdi
	je	.LBB19_2
# %bb.1:
	testl	%r15d, %r15d
	jne	.LBB19_5
.LBB19_2:
	testq	%rbx, %rbx
	jne	.LBB19_4
# %bb.3:
	testl	%r15d, %r15d
	jne	.LBB19_4
.LBB19_5:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	$1, %edx
	callq	lwip_pollscan
	movl	$-1, %r14d
	testl	%eax, %eax
	js	.LBB19_36
# %bb.6:
	movl	%eax, %r12d
	je	.LBB19_7
.LBB19_31:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB19_34
# %bb.32:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB19_33
.LBB19_34:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB19_35
.LBB19_7:
	testl	%r13d, %r13d
	je	.LBB19_8
# %bb.9:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB19_10
# %bb.11:
	movl	$88, %esi
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_12
# %bb.16:
	movq	%rax, %r12
	movl	$88, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%rbx, 40(%r12)
	movl	%r15d, 48(%r12)
	movq	%r12, -48(%rbp)         # 8-byte Spill
	addq	$56, %r12
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	sys_sem_new
	testb	%al, %al
	je	.LBB19_25
# %bb.17:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB19_20
# %bb.18:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB19_19
.LBB19_20:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB19_21
.LBB19_33:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_35:
	movl	%r12d, %r14d
.LBB19_36:
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
.LBB19_8:
	xorl	%r12d, %r12d
	jmp	.LBB19_31
.LBB19_25:
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	select_cb_list(%rip), %rax
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%rax, (%r12)
	testq	%rax, %rax
	movq	%r12, %rcx
	je	.LBB19_27
# %bb.26:
	movq	%rcx, 8(%rax)
.LBB19_27:
	movq	%rcx, select_cb_list(%rip)
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	$2, %edx
	callq	lwip_pollscan
	testl	%eax, %eax
	jne	.LBB19_29
# %bb.28:
	xorl	%esi, %esi
	testl	%r13d, %r13d
	cmovnsl	%r13d, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	sys_arch_sem_wait
.LBB19_29:
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	$4, %edx
	callq	lwip_pollscan
	movl	%eax, %r12d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	lwip_unlink_select_cb
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	sys_sem_free
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB19_22
# %bb.30:
	movq	%rbx, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jns	.LBB19_31
	jmp	.LBB19_36
.LBB19_19:
	callq	__errno
	movl	$11, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_21:
	movq	%rbx, %rsi
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB19_22
# %bb.24:
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB19_36
.LBB19_10:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB19_12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB19_15
# %bb.13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB19_14
.LBB19_15:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB19_36
.LBB19_14:
	callq	__errno
	movl	$11, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB19_36
.LBB19_4:
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
.LBB19_23:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB19_22:
	movl	$.L.str, %edi
	movl	$.L.str.21, %esi
	jmp	.LBB19_23
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
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB20_1
# %bb.2:
	movq	%rdx, %rbx
	movl	%esi, %r14d
	movq	%rdi, %r15
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
	jmp	.LBB20_5
.LBB20_1:
	callq	__errno
	movl	$14, (%rax)
	movl	$-1, %eax
	jmp	.LBB20_7
.LBB20_3:
	movl	$-1, %ebx
.LBB20_5:
	leaq	-32(%rbp), %rdx
	movl	$2, %edi
	movq	%rcx, %rsi
	callq	pthread_sigmask
	testl	%eax, %eax
	jne	.LBB20_7
# %bb.6:
	movq	%r15, %rdi
	movl	%r14d, %esi
	movl	%ebx, %edx
	callq	poll
	movl	%eax, %ebx
	leaq	-32(%rbp), %rsi
	movl	$2, %edi
	xorl	%edx, %edx
	callq	pthread_sigmask
	testl	%eax, %eax
	cmovel	%ebx, %eax
	testl	%ebx, %ebx
	cmovnel	%ebx, %eax
.LBB20_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
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
	movq	%rdx, %r9
	movq	%rsi, %r14
	testl	%edi, %edi
	jne	.LBB21_5
# %bb.1:
	testq	%r8, %r8
	je	.LBB21_5
# %bb.2:
	imulq	$1000000000, (%r8), %rax # imm = 0x3B9ACA00
	imulq	$1000, 8(%r8), %rdi     # imm = 0x3E8
	addq	%rax, %rdi
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB21_4
# %bb.3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB21_99
.LBB21_4:
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
	callq	uk_sched_thread_sleep
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB21_100
.LBB21_5:
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movl	%edi, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	testl	%edi, %edi
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movl	%edi, -100(%rbp)        # 4-byte Spill
	jle	.LBB21_54
# %bb.6:
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	jmp	.LBB21_9
.LBB21_7:                               #   in Loop: Header=BB21_9 Depth=1
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rax
	orq	%rax, -80(%rbp)
	movq	(%rdx), %rdi
	callq	vfscore_put_file
	movl	%ebx, %r8d
	movq	-64(%rbp), %r9          # 8-byte Reload
	.p2align	4, 0x90
.LBB21_8:                               #   in Loop: Header=BB21_9 Depth=1
	addq	$1, %r13
	cmpq	%r13, -112(%rbp)        # 8-byte Folded Reload
	je	.LBB21_55
.LBB21_9:                               # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	je	.LBB21_23
# %bb.10:                               #   in Loop: Header=BB21_9 Depth=1
	movq	%r13, %rbx
	shrq	$6, %rbx
	movq	(%r14,%rbx,8), %rax
	movl	$1, %r12d
	movl	%r13d, %ecx
	shlq	%cl, %r12
	btq	%r13, %rax
	jae	.LBB21_23
# %bb.11:                               #   in Loop: Header=BB21_9 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB21_13
# %bb.12:                               #   in Loop: Header=BB21_9 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB21_14
.LBB21_13:                              #   in Loop: Header=BB21_9 Depth=1
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
	movq	-72(%rbp), %r15         # 8-byte Reload
	#APP
	movq	%r11, -56(%rbp)

	#NO_APP
	movq	-56(%rbp), %rdx
	jmp	.LBB21_19
.LBB21_14:                              #   in Loop: Header=BB21_9 Depth=1
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	%r13d, %edi
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB21_17
# %bb.15:                               #   in Loop: Header=BB21_9 Depth=1
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	movq	$-9, %rdx
	cmpl	$6, 44(%rcx)
	movl	-44(%rbp), %r8d         # 4-byte Reload
	jne	.LBB21_18
# %bb.16:                               #   in Loop: Header=BB21_9 Depth=1
	movq	24(%rax), %rdx
	jmp	.LBB21_18
.LBB21_17:                              #   in Loop: Header=BB21_9 Depth=1
	movq	$-22, %rdx
	movl	-44(%rbp), %r8d         # 4-byte Reload
.LBB21_18:                              #   in Loop: Header=BB21_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %r9          # 8-byte Reload
.LBB21_19:                              #   in Loop: Header=BB21_9 Depth=1
	leaq	512(%rdx), %rax
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB21_22
# %bb.20:                               #   in Loop: Header=BB21_9 Depth=1
	cmpl	$-9, %edx
	jne	.LBB21_22
# %bb.21:                               #   in Loop: Header=BB21_9 Depth=1
	notq	%r12
	andq	%r12, (%r14,%rbx,8)
	jmp	.LBB21_8
.LBB21_22:                              #   in Loop: Header=BB21_9 Depth=1
	movl	8(%rdx), %ecx
	cmpl	%ecx, %r8d
	cmovll	%ecx, %r8d
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rax
	orq	%rax, -96(%rbp)
	movq	(%rdx), %rdi
	movl	%r8d, %ebx
	callq	vfscore_put_file
	movl	%ebx, %r8d
	movq	-64(%rbp), %r9          # 8-byte Reload
.LBB21_23:                              #   in Loop: Header=BB21_9 Depth=1
	testq	%r9, %r9
	je	.LBB21_39
# %bb.24:                               #   in Loop: Header=BB21_9 Depth=1
	movq	%r13, %rbx
	shrq	$6, %rbx
	movq	(%r9,%rbx,8), %rax
	movl	$1, %r12d
	movl	%r13d, %ecx
	shlq	%cl, %r12
	btq	%r13, %rax
	jae	.LBB21_39
# %bb.25:                               #   in Loop: Header=BB21_9 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB21_27
# %bb.26:                               #   in Loop: Header=BB21_9 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB21_28
.LBB21_27:                              #   in Loop: Header=BB21_9 Depth=1
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
	movq	-72(%rbp), %r15         # 8-byte Reload
	#APP
	movq	%r11, -56(%rbp)

	#NO_APP
	movq	-56(%rbp), %rdx
	jmp	.LBB21_33
.LBB21_28:                              #   in Loop: Header=BB21_9 Depth=1
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	%r13d, %edi
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB21_31
# %bb.29:                               #   in Loop: Header=BB21_9 Depth=1
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	movq	$-9, %rdx
	cmpl	$6, 44(%rcx)
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	-44(%rbp), %r8d         # 4-byte Reload
	jne	.LBB21_32
# %bb.30:                               #   in Loop: Header=BB21_9 Depth=1
	movq	24(%rax), %rdx
	jmp	.LBB21_32
.LBB21_31:                              #   in Loop: Header=BB21_9 Depth=1
	movq	$-22, %rdx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	-44(%rbp), %r8d         # 4-byte Reload
.LBB21_32:                              #   in Loop: Header=BB21_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -56(%rbp)
.LBB21_33:                              #   in Loop: Header=BB21_9 Depth=1
	leaq	512(%rdx), %rax
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB21_36
# %bb.34:                               #   in Loop: Header=BB21_9 Depth=1
	cmpl	$-9, %edx
	jne	.LBB21_36
# %bb.35:                               #   in Loop: Header=BB21_9 Depth=1
	notq	%r12
	andq	%r12, (%r9,%rbx,8)
	jmp	.LBB21_8
.LBB21_36:                              #   in Loop: Header=BB21_9 Depth=1
	movl	8(%rdx), %ecx
	movl	%ecx, %ebx
	cmpl	%ecx, %r8d
	jl	.LBB21_38
# %bb.37:                               #   in Loop: Header=BB21_9 Depth=1
	movl	%r8d, %ebx
.LBB21_38:                              #   in Loop: Header=BB21_9 Depth=1
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rax
	orq	%rax, -88(%rbp)
	movq	(%rdx), %rdi
	callq	vfscore_put_file
	movl	%ebx, %r8d
	movq	-64(%rbp), %r9          # 8-byte Reload
.LBB21_39:                              #   in Loop: Header=BB21_9 Depth=1
	testq	%r15, %r15
	je	.LBB21_8
# %bb.40:                               #   in Loop: Header=BB21_9 Depth=1
	movq	%r13, %rbx
	shrq	$6, %rbx
	movq	(%r15,%rbx,8), %rax
	movl	$1, %r12d
	movl	%r13d, %ecx
	shlq	%cl, %r12
	btq	%r13, %rax
	jae	.LBB21_8
# %bb.41:                               #   in Loop: Header=BB21_9 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB21_43
# %bb.42:                               #   in Loop: Header=BB21_9 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB21_44
.LBB21_43:                              #   in Loop: Header=BB21_9 Depth=1
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movq	-72(%rbp), %r15         # 8-byte Reload
	#APP
	movq	%r11, -56(%rbp)

	#NO_APP
	movq	-56(%rbp), %rdx
	jmp	.LBB21_49
.LBB21_44:                              #   in Loop: Header=BB21_9 Depth=1
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	%r13d, %edi
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB21_47
# %bb.45:                               #   in Loop: Header=BB21_9 Depth=1
	movq	40(%rax), %rcx
	movq	32(%rcx), %rcx
	movq	$-9, %rdx
	cmpl	$6, 44(%rcx)
	movl	-44(%rbp), %r8d         # 4-byte Reload
	jne	.LBB21_48
# %bb.46:                               #   in Loop: Header=BB21_9 Depth=1
	movq	24(%rax), %rdx
	jmp	.LBB21_48
.LBB21_47:                              #   in Loop: Header=BB21_9 Depth=1
	movq	$-22, %rdx
	movl	-44(%rbp), %r8d         # 4-byte Reload
.LBB21_48:                              #   in Loop: Header=BB21_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %r9          # 8-byte Reload
.LBB21_49:                              #   in Loop: Header=BB21_9 Depth=1
	leaq	512(%rdx), %rax
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB21_52
# %bb.50:                               #   in Loop: Header=BB21_9 Depth=1
	cmpl	$-9, %edx
	jne	.LBB21_52
# %bb.51:                               #   in Loop: Header=BB21_9 Depth=1
	notq	%r12
	andq	%r12, (%r15,%rbx,8)
	jmp	.LBB21_8
.LBB21_52:                              #   in Loop: Header=BB21_9 Depth=1
	movl	8(%rdx), %ecx
	movl	%ecx, %ebx
	cmpl	%ecx, %r8d
	jl	.LBB21_7
# %bb.53:                               #   in Loop: Header=BB21_9 Depth=1
	movl	%r8d, %ebx
	jmp	.LBB21_7
.LBB21_54:
	xorl	%r8d, %r8d
.LBB21_55:
	addl	$1, %r8d
	leaq	-96(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movl	%r8d, %edi
	movq	-120(%rbp), %r8         # 8-byte Reload
	callq	lwip_select
	testl	%eax, %eax
	js	.LBB21_101
# %bb.56:
	cmpl	$0, -100(%rbp)          # 4-byte Folded Reload
	jle	.LBB21_101
# %bb.57:
	movl	%eax, -44(%rbp)         # 4-byte Spill
	xorl	%ebx, %ebx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB21_60
	.p2align	4, 0x90
.LBB21_58:                              #   in Loop: Header=BB21_60 Depth=1
	movq	(%rcx), %rdi
	callq	vfscore_put_file
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB21_59:                              #   in Loop: Header=BB21_60 Depth=1
	addq	$1, %rbx
	cmpq	%rbx, -112(%rbp)        # 8-byte Folded Reload
	je	.LBB21_98
.LBB21_60:                              # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	je	.LBB21_73
# %bb.61:                               #   in Loop: Header=BB21_60 Depth=1
	movq	%rbx, %r12
	shrq	$6, %r12
	movq	(%r14,%r12,8), %rax
	movl	$1, %r13d
	movl	%ebx, %ecx
	shlq	%cl, %r13
	btq	%rbx, %rax
	jae	.LBB21_73
# %bb.62:                               #   in Loop: Header=BB21_60 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB21_64
# %bb.63:                               #   in Loop: Header=BB21_60 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB21_65
.LBB21_64:                              #   in Loop: Header=BB21_60 Depth=1
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movq	-72(%rbp), %r15         # 8-byte Reload
	#APP
	movq	%r11, -56(%rbp)

	#NO_APP
	movq	-56(%rbp), %rcx
	jmp	.LBB21_70
.LBB21_65:                              #   in Loop: Header=BB21_60 Depth=1
	movl	%ebx, %edi
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB21_68
# %bb.66:                               #   in Loop: Header=BB21_60 Depth=1
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB21_69
# %bb.67:                               #   in Loop: Header=BB21_60 Depth=1
	movq	24(%rax), %rcx
	jmp	.LBB21_69
.LBB21_68:                              #   in Loop: Header=BB21_60 Depth=1
	movq	$-22, %rcx
.LBB21_69:                              #   in Loop: Header=BB21_60 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -56(%rbp)
.LBB21_70:                              #   in Loop: Header=BB21_60 Depth=1
	movq	-96(%rbp), %rax
	movl	8(%rcx), %edx
	btq	%rdx, %rax
	jb	.LBB21_72
# %bb.71:                               #   in Loop: Header=BB21_60 Depth=1
	notq	%r13
	andq	%r13, (%r14,%r12,8)
.LBB21_72:                              #   in Loop: Header=BB21_60 Depth=1
	movq	(%rcx), %rdi
	callq	vfscore_put_file
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB21_73:                              #   in Loop: Header=BB21_60 Depth=1
	testq	%rsi, %rsi
	je	.LBB21_86
# %bb.74:                               #   in Loop: Header=BB21_60 Depth=1
	movq	%rbx, %r12
	shrq	$6, %r12
	movq	(%rsi,%r12,8), %rax
	movl	$1, %r13d
	movl	%ebx, %ecx
	shlq	%cl, %r13
	btq	%rbx, %rax
	jae	.LBB21_86
# %bb.75:                               #   in Loop: Header=BB21_60 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB21_77
# %bb.76:                               #   in Loop: Header=BB21_60 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB21_78
.LBB21_77:                              #   in Loop: Header=BB21_60 Depth=1
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movq	-72(%rbp), %r15         # 8-byte Reload
	#APP
	movq	%r11, -56(%rbp)

	#NO_APP
	movq	-56(%rbp), %rcx
	jmp	.LBB21_83
.LBB21_78:                              #   in Loop: Header=BB21_60 Depth=1
	movl	%ebx, %edi
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB21_81
# %bb.79:                               #   in Loop: Header=BB21_60 Depth=1
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jne	.LBB21_82
# %bb.80:                               #   in Loop: Header=BB21_60 Depth=1
	movq	24(%rax), %rcx
	jmp	.LBB21_82
.LBB21_81:                              #   in Loop: Header=BB21_60 Depth=1
	movq	$-22, %rcx
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB21_82:                              #   in Loop: Header=BB21_60 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -56(%rbp)
.LBB21_83:                              #   in Loop: Header=BB21_60 Depth=1
	movq	-88(%rbp), %rax
	movl	8(%rcx), %edx
	btq	%rdx, %rax
	jb	.LBB21_85
# %bb.84:                               #   in Loop: Header=BB21_60 Depth=1
	notq	%r13
	andq	%r13, (%rsi,%r12,8)
.LBB21_85:                              #   in Loop: Header=BB21_60 Depth=1
	movq	(%rcx), %rdi
	callq	vfscore_put_file
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB21_86:                              #   in Loop: Header=BB21_60 Depth=1
	testq	%r15, %r15
	je	.LBB21_59
# %bb.87:                               #   in Loop: Header=BB21_60 Depth=1
	movq	%rbx, %r12
	shrq	$6, %r12
	movq	(%r15,%r12,8), %rax
	movl	$1, %r13d
	movl	%ebx, %ecx
	shlq	%cl, %r13
	btq	%rbx, %rax
	jae	.LBB21_59
# %bb.88:                               #   in Loop: Header=BB21_60 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB21_90
# %bb.89:                               #   in Loop: Header=BB21_60 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB21_91
.LBB21_90:                              #   in Loop: Header=BB21_60 Depth=1
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movq	-72(%rbp), %r15         # 8-byte Reload
	#APP
	movq	%r11, -56(%rbp)

	#NO_APP
	movq	-56(%rbp), %rcx
	jmp	.LBB21_96
.LBB21_91:                              #   in Loop: Header=BB21_60 Depth=1
	movl	%ebx, %edi
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB21_94
# %bb.92:                               #   in Loop: Header=BB21_60 Depth=1
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB21_95
# %bb.93:                               #   in Loop: Header=BB21_60 Depth=1
	movq	24(%rax), %rcx
	jmp	.LBB21_95
.LBB21_94:                              #   in Loop: Header=BB21_60 Depth=1
	movq	$-22, %rcx
.LBB21_95:                              #   in Loop: Header=BB21_60 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -56(%rbp)
.LBB21_96:                              #   in Loop: Header=BB21_60 Depth=1
	movq	-80(%rbp), %rax
	movl	8(%rcx), %edx
	btq	%rdx, %rax
	jb	.LBB21_58
# %bb.97:                               #   in Loop: Header=BB21_60 Depth=1
	notq	%r13
	andq	%r13, (%r15,%r12,8)
	jmp	.LBB21_58
.LBB21_98:
	movl	-44(%rbp), %eax         # 4-byte Reload
	jmp	.LBB21_101
.LBB21_99:
	callq	uk_sched_thread_sleep
.LBB21_100:
	xorl	%eax, %eax
.LBB21_101:
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
	subq	$104, %rsp
	cmpl	$65, %edi
	jb	.LBB22_4
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB22_3
# %bb.2:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB22_17
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
	jmp	.LBB22_49
.LBB22_4:
	movq	%r8, %r15
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movq	%rsi, %r12
	leaq	-88(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-104(%rbp), %r8
	leaq	-96(%rbp), %r9
	movl	%edi, -44(%rbp)         # 4-byte Spill
	callq	lwip_selscan
	testl	%eax, %eax
	js	.LBB22_14
# %bb.5:
	movl	%eax, %r14d
	je	.LBB22_18
.LBB22_6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB22_8
# %bb.7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB22_27
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
	testq	%r12, %r12
	je	.LBB22_10
.LBB22_9:
	movq	-104(%rbp), %rax
	movq	%rax, (%r12)
.LBB22_10:
	testq	%rbx, %rbx
	je	.LBB22_12
# %bb.11:
	movq	-96(%rbp), %rax
	movq	%rax, (%rbx)
.LBB22_12:
	testq	%r13, %r13
	je	.LBB22_50
# %bb.13:
	movq	-88(%rbp), %rax
	movq	%rax, (%r13)
	jmp	.LBB22_50
.LBB22_14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB22_16
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB22_28
.LBB22_16:
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
	jmp	.LBB22_49
.LBB22_17:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB22_48
.LBB22_18:
	testq	%r15, %r15
	je	.LBB22_21
# %bb.19:
	cmpq	$0, (%r15)
	jne	.LBB22_21
# %bb.20:
	cmpq	$0, 8(%r15)
	je	.LBB22_51
.LBB22_21:
	movq	%r12, -112(%rbp)        # 8-byte Spill
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB22_88
# %bb.22:
	movl	$88, %esi
	callq	*(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_89
# %bb.23:
	movq	%rax, %r12
	movl	$88, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%r12)
	movq	%rbx, 24(%r12)
	movq	%r13, 32(%r12)
	movq	%r12, %r14
	addq	$56, %r14
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	sys_sem_new
	testb	%al, %al
	je	.LBB22_29
# %bb.24:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB22_26
# %bb.25:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB22_45
.LBB22_26:
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
	jmp	.LBB22_46
.LBB22_27:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB22_9
	jmp	.LBB22_10
.LBB22_28:
	callq	__errno
	movl	$9, (%rax)
	jmp	.LBB22_48
.LBB22_29:
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%r13, -80(%rbp)         # 8-byte Spill
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	select_cb_list(%rip), %rax
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB22_31
# %bb.30:
	movq	%r12, 8(%rax)
.LBB22_31:
	movq	%r12, -120(%rbp)        # 8-byte Spill
	movq	%r12, select_cb_list(%rip)
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	movq	-112(%rbp), %r12        # 8-byte Reload
	jle	.LBB22_43
# %bb.32:
	movslq	-44(%rbp), %r14         # 4-byte Folded Reload
	movl	$sockets+22, %ebx
	xorl	%r13d, %r13d
	jmp	.LBB22_34
.LBB22_33:                              #   in Loop: Header=BB22_34 Depth=1
	addq	$1, %r13
	addq	$24, %rbx
	cmpq	%r14, %r13
	jge	.LBB22_43
.LBB22_34:                              # =>This Inner Loop Header: Depth=1
	testq	%r12, %r12
	je	.LBB22_36
# %bb.35:                               #   in Loop: Header=BB22_34 Depth=1
	movq	%r13, %rax
	shrq	$6, %rax
	movq	(%r12,%rax,8), %rax
	btq	%r13, %rax
	jb	.LBB22_40
.LBB22_36:                              #   in Loop: Header=BB22_34 Depth=1
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB22_38
# %bb.37:                               #   in Loop: Header=BB22_34 Depth=1
	movq	%r13, %rax
	shrq	$6, %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	btq	%r13, %rax
	jb	.LBB22_40
.LBB22_38:                              #   in Loop: Header=BB22_34 Depth=1
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	je	.LBB22_33
# %bb.39:                               #   in Loop: Header=BB22_34 Depth=1
	movq	%r13, %rax
	shrq	$6, %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	btq	%r13, %rax
	jae	.LBB22_33
.LBB22_40:                              #   in Loop: Header=BB22_34 Depth=1
	callq	ukplat_lcpu_save_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$63, %r13
	ja	.LBB22_55
# %bb.41:                               #   in Loop: Header=BB22_34 Depth=1
	movzbl	(%rbx), %ecx
	movl	%ecx, %edx
	incb	%dl
	movb	%dl, (%rbx)
	je	.LBB22_58
# %bb.42:                               #   in Loop: Header=BB22_34 Depth=1
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	jmp	.LBB22_33
.LBB22_43:
	leaq	-88(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-104(%rbp), %r8
	leaq	-96(%rbp), %r9
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, %edi
	movq	%r12, %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	lwip_selscan
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.LBB22_52
# %bb.44:
	movl	%eax, %r14d
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%ebx, %r13d
	jmp	.LBB22_65
.LBB22_45:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_46:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB22_94
# %bb.47:
	movq	%r12, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_48:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_49:
	movl	$-1, %r14d
.LBB22_50:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_51:
	xorl	%r14d, %r14d
	jmp	.LBB22_6
.LBB22_52:
	testq	%r15, %r15
	je	.LBB22_54
# %bb.53:
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
	cmpq	$1, %rdx
	movl	$1, %esi
	cmovgl	%edx, %esi
.LBB22_54:
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	sys_arch_sem_wait
	movl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, %r13d
	jmp	.LBB22_66
.LBB22_55:
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB22_57
# %bb.56:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB22_61
.LBB22_57:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB22_64
.LBB22_58:
	movb	%cl, (%rbx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB22_60
# %bb.59:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB22_62
.LBB22_60:
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
	jmp	.LBB22_64
.LBB22_61:
	callq	__errno
	movl	$9, (%rax)
	jmp	.LBB22_63
.LBB22_62:
	callq	__errno
	movl	$16, (%rax)
.LBB22_63:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_64:
	movl	$-1, %r14d
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB22_65:
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB22_66:
	testl	%r13d, %r13d
	jle	.LBB22_83
# %bb.67:
	movslq	%r13d, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$sockets+22, %ebx
	xorl	%r13d, %r13d
	jmp	.LBB22_71
.LBB22_68:                              #   in Loop: Header=BB22_71 Depth=1
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
	callq	_SOCK_NET_SET_ERRNO
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
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB22_69:                              #   in Loop: Header=BB22_71 Depth=1
	movl	$-1, %r14d
.LBB22_70:                              #   in Loop: Header=BB22_71 Depth=1
	addq	$1, %r13
	addq	$24, %rbx
	cmpq	-128(%rbp), %r13        # 8-byte Folded Reload
	jge	.LBB22_83
.LBB22_71:                              # =>This Inner Loop Header: Depth=1
	testq	%r12, %r12
	je	.LBB22_73
# %bb.72:                               #   in Loop: Header=BB22_71 Depth=1
	movq	%r13, %rax
	shrq	$6, %rax
	movq	(%r12,%rax,8), %rax
	btq	%r13, %rax
	jb	.LBB22_77
.LBB22_73:                              #   in Loop: Header=BB22_71 Depth=1
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB22_75
# %bb.74:                               #   in Loop: Header=BB22_71 Depth=1
	movq	%r13, %rax
	shrq	$6, %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	btq	%r13, %rax
	jb	.LBB22_77
.LBB22_75:                              #   in Loop: Header=BB22_71 Depth=1
	movq	-80(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB22_70
# %bb.76:                               #   in Loop: Header=BB22_71 Depth=1
	movq	%r13, %rax
	shrq	$6, %rax
	movq	(%rcx,%rax,8), %rax
	btq	%r13, %rax
	jae	.LBB22_70
	.p2align	4, 0x90
.LBB22_77:                              #   in Loop: Header=BB22_71 Depth=1
	callq	ukplat_lcpu_save_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$63, %r13
	jbe	.LBB22_81
# %bb.78:                               #   in Loop: Header=BB22_71 Depth=1
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB22_68
# %bb.79:                               #   in Loop: Header=BB22_71 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	ja	.LBB22_68
# %bb.80:                               #   in Loop: Header=BB22_71 Depth=1
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_69
.LBB22_81:                              #   in Loop: Header=BB22_71 Depth=1
	movzbl	(%rbx), %ecx
	testb	%cl, %cl
	je	.LBB22_93
# %bb.82:                               #   in Loop: Header=BB22_71 Depth=1
	addb	$-1, %cl
	movb	%cl, (%rbx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	jmp	.LBB22_70
.LBB22_83:
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	callq	lwip_unlink_select_cb
	movq	%r15, %rdi
	callq	sys_sem_free
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB22_94
# %bb.84:
	movq	%rbx, %rsi
	callq	*40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	movq	-80(%rbp), %r13         # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	js	.LBB22_49
# %bb.85:
	cmpl	$-1, -64(%rbp)          # 4-byte Folded Reload
	je	.LBB22_6
# %bb.86:
	leaq	-88(%rbp), %rax
	movq	%rax, (%rsp)
	leaq	-104(%rbp), %r8
	leaq	-96(%rbp), %r9
	movl	-44(%rbp), %edi         # 4-byte Reload
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	lwip_selscan
	movl	%eax, %r14d
	jmp	.LBB22_6
.LBB22_88:
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_89:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB22_91
# %bb.90:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	jmp	.LBB22_49
.LBB22_92:
	callq	__errno
	movl	$12, (%rax)
	jmp	.LBB22_48
.LBB22_93:
	movl	$.L.str.17, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	jmp	.LBB22_95
.LBB22_94:
	movl	$.L.str, %edi
	movl	$.L.str.21, %esi
.LBB22_95:
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
	cmpq	%rcx, %rax
	jb	.LBB23_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -24(%rbp)

	#NO_APP
	movq	-24(%rbp), %rcx
	jmp	.LBB23_8
.LBB23_2:
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB23_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB23_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB23_6
.LBB23_3:
	movq	$-22, %rcx
.LBB23_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -24(%rbp)
.LBB23_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB23_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB23_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB23_11
.LBB23_12:
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
	movl	$-1, %ebx
	jmp	.LBB23_17
.LBB23_13:
	movl	8(%rcx), %edi
	movl	%ebx, %esi
	callq	lwip_shutdown
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB23_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB23_15
.LBB23_16:
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
	callq	vfscore_put_file
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
	jmp	.LBB23_17
.LBB23_11:
	xorl	%ebx, %ebx
	subl	-24(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB23_17
.LBB23_15:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB23_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB24_7
# %bb.1:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rax
	movq	sockets(,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.LBB24_7
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$240, %eax
	andl	(%rdi), %eax
	cmpl	$16, %eax
	jne	.LBB24_14
# %bb.3:
	cmpl	$3, %esi
	jae	.LBB24_17
# %bb.4:
	shll	$3, %esi
	movl	$65792, %eax            # imm = 0x10100
	movl	%esi, %ecx
	shrl	%cl, %eax
	movl	$65537, %edx            # imm = 0x10001
	shrl	%cl, %edx
	movzbl	%dl, %esi
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
	cmpq	%rcx, %rax
	jb	.LBB24_6
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB24_21
.LBB24_6:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB24_22
.LBB24_7:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB24_9
# %bb.8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB24_10
.LBB24_9:
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
	jmp	.LBB24_11
.LBB24_10:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB24_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB24_12:
	movl	$-1, %eax
.LBB24_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB24_16
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	_SOCK_NET_SET_ERRNO
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
	jmp	.LBB24_12
.LBB24_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB24_19
# %bb.18:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB24_23
.LBB24_19:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB24_12
.LBB24_20:
	callq	__errno
	movl	$95, (%rax)
	jmp	.LBB24_11
.LBB24_21:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB24_22:
	negb	%r14b
	sbbl	%eax, %eax
	jmp	.LBB24_13
.LBB24_23:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB24_11
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
	cmpq	%rcx, %rax
	jb	.LBB25_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movq	-32(%rbp), %rcx
	jmp	.LBB25_8
.LBB25_2:
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB25_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB25_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB25_6
.LBB25_3:
	movq	$-22, %rcx
.LBB25_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -32(%rbp)
.LBB25_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB25_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB25_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB25_11
.LBB25_12:
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
	callq	_SOCK_NET_SET_ERRNO
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
	movl	$-1, %ebx
	jmp	.LBB25_17
.LBB25_13:
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
	cmpq	%rcx, %rax
	jb	.LBB25_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB25_15
.LBB25_16:
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
	callq	vfscore_put_file
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB25_17
.LBB25_11:
	xorl	%ebx, %ebx
	subl	-32(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB25_17
.LBB25_15:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB25_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	cmpq	%rcx, %rax
	jb	.LBB27_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movq	-32(%rbp), %rcx
	jmp	.LBB27_8
.LBB27_2:
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB27_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB27_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB27_6
.LBB27_3:
	movq	$-22, %rcx
.LBB27_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -32(%rbp)
.LBB27_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB27_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB27_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB27_11
.LBB27_12:
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
	callq	_SOCK_NET_SET_ERRNO
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
	movl	$-1, %ebx
	jmp	.LBB27_17
.LBB27_13:
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
	cmpq	%rcx, %rax
	jb	.LBB27_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB27_15
.LBB27_16:
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
	callq	vfscore_put_file
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
	jmp	.LBB27_17
.LBB27_11:
	xorl	%ebx, %ebx
	subl	-32(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB27_17
.LBB27_15:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB27_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	cmpq	%rcx, %rax
	jb	.LBB29_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -48(%rbp)

	#NO_APP
	movq	-48(%rbp), %rcx
	jmp	.LBB29_8
.LBB29_2:
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB29_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB29_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB29_6
.LBB29_3:
	movq	$-22, %rcx
.LBB29_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -48(%rbp)
.LBB29_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB29_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB29_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB29_11
.LBB29_12:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movl	$-1, %ebx
	jmp	.LBB29_17
.LBB29_13:
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
	cmpq	%rcx, %rax
	jb	.LBB29_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB29_15
.LBB29_16:
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
	callq	vfscore_put_file
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
	jmp	.LBB29_17
.LBB29_11:
	xorl	%ebx, %ebx
	subl	-48(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB29_17
.LBB29_15:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB29_17:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB30_15
# %bb.1:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rax
	cmpq	$0, sockets(,%rax,8)
	je	.LBB30_15
# %bb.2:
	movq	%rcx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB30_22
# %bb.3:
	movq	%r8, %r12
	testq	%r8, %r8
	je	.LBB30_22
# %bb.4:
	movl	%edx, %r15d
	movl	%esi, %ebx
	leaq	sockets(,%rax,8), %r13
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB30_25
# %bb.5:
	movl	$109, %r13d
	cmpl	$40, %ebx
	jg	.LBB30_26
# %bb.6:
	testl	%ebx, %ebx
	je	.LBB30_37
# %bb.7:
	cmpl	$6, %ebx
	jne	.LBB30_48
# %bb.8:
	movl	$22, %r13d
	cmpl	$4, (%r12)
	jb	.LBB30_81
# %bb.9:
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB30_81
# %bb.10:
	movl	$240, %ecx
	andl	(%rdi), %ecx
	cmpl	$16, %ecx
	jne	.LBB30_48
# %bb.11:
	cmpl	$1, 72(%rax)
	je	.LBB30_81
# %bb.12:
	cmpl	$2, %r15d
	je	.LBB30_91
# %bb.13:
	movl	$109, %r13d
	cmpl	$1, %r15d
	jne	.LBB30_81
# %bb.14:
	movzwl	82(%rax), %eax
	shrl	$6, %eax
	jmp	.LBB30_45
.LBB30_15:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB30_17
# %bb.16:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB30_18
.LBB30_17:
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
	callq	_SOCK_NET_SET_ERRNO
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
	jmp	.LBB30_19
.LBB30_18:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB30_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB30_20:
	movl	$-1, %eax
.LBB30_21:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_22:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB30_24
# %bb.23:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB30_36
.LBB30_24:
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
	jmp	.LBB30_20
.LBB30_25:
	movl	$9, %r13d
	jmp	.LBB30_81
.LBB30_26:
	cmpl	$41, %ebx
	je	.LBB30_42
# %bb.27:
	cmpl	$4095, %ebx             # imm = 0xFFF
	jne	.LBB30_48
# %bb.28:
	cmpl	$4102, %r15d            # imm = 0x1006
	jg	.LBB30_50
# %bb.29:
	leal	-2(%r15), %eax
	cmpl	$30, %eax
	ja	.LBB30_81
# %bb.30:
	movl	$109, %r13d
	jmpq	*.LJTI30_1(,%rax,8)
.LBB30_31:
	movl	$22, %r13d
	cmpl	$4, (%r12)
	jb	.LBB30_81
# %bb.32:
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB30_81
# %bb.33:
	movl	$240, %ecx
	andl	(%rdi), %ecx
	movl	$109, %r13d
	cmpl	$16, %ecx
	jne	.LBB30_81
# %bb.34:
	cmpl	$1, 72(%rax)
	je	.LBB30_92
# %bb.35:
	movl	$0, (%r14)
	jmp	.LBB30_47
.LBB30_36:
	callq	__errno
	movl	$14, (%rax)
	jmp	.LBB30_19
.LBB30_48:
	movl	$109, %r13d
	jmp	.LBB30_81
.LBB30_37:
	addl	$-1, %r15d
	cmpl	$6, %r15d
	ja	.LBB30_81
# %bb.38:
	movl	$109, %r13d
	jmpq	*.LJTI30_0(,%r15,8)
.LBB30_39:
	movl	$22, %r13d
	cmpl	$4, (%r12)
	jb	.LBB30_81
# %bb.40:
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB30_81
# %bb.41:
	movzbl	50(%rax), %eax
	jmp	.LBB30_46
.LBB30_42:
	movl	$109, %r13d
	cmpl	$27, %r15d
	jne	.LBB30_81
# %bb.43:
	movl	$22, %r13d
	cmpl	$4, (%r12)
	jb	.LBB30_81
# %bb.44:
	movl	108(%rdi), %eax
	shrl	$5, %eax
.LBB30_45:
	andl	$1, %eax
.LBB30_46:
	movl	%eax, (%r14)
.LBB30_47:
	xorl	%r13d, %r13d
.LBB30_81:
	movl	$42, __A_VARIABLE(%rip)
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB30_83
# %bb.82:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB30_84
.LBB30_83:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
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
	jmp	.LBB30_85
.LBB30_84:
	callq	__errno
	movl	%r13d, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB30_85:
	negl	%r13d
	sbbl	%eax, %eax
	jmp	.LBB30_21
.LBB30_50:
	cmpl	$4103, %r15d            # imm = 0x1007
	je	.LBB30_78
# %bb.51:
	cmpl	$4104, %r15d            # imm = 0x1008
	je	.LBB30_80
# %bb.52:
	cmpl	$4106, %r15d            # imm = 0x100A
	jne	.LBB30_81
# %bb.53:
	movl	$22, %r13d
	cmpl	$4, (%r12)
	jb	.LBB30_81
# %bb.54:
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB30_81
# %bb.55:
	movl	$240, %ecx
	andl	(%rdi), %ecx
	movl	$109, %r13d
	cmpl	$32, %ecx
	jne	.LBB30_81
# %bb.56:
	movzbl	64(%rax), %eax
	jmp	.LBB30_45
.LBB30_57:
	movl	$22, %r13d
	cmpl	$4, (%r12)
	jb	.LBB30_81
# %bb.58:
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB30_81
# %bb.59:
	movzbl	51(%rax), %eax
	jmp	.LBB30_46
.LBB30_60:
	movl	$22, %r13d
	cmpl	$0, (%r12)
	je	.LBB30_81
# %bb.61:
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB30_81
# %bb.62:
	movl	$240, %ecx
	andl	(%rdi), %ecx
	movl	$109, %r13d
	cmpl	$32, %ecx
	jne	.LBB30_81
# %bb.63:
	movb	77(%rax), %al
	movb	%al, (%r14)
	jmp	.LBB30_47
.LBB30_64:
	movl	$22, %r13d
	cmpl	$4, (%r12)
	jb	.LBB30_81
# %bb.65:
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB30_81
# %bb.66:
	movl	$240, %ecx
	andl	(%rdi), %ecx
	movl	$109, %r13d
	cmpl	$32, %ecx
	jne	.LBB30_81
# %bb.67:
	movl	72(%rax), %eax
	jmp	.LBB30_46
.LBB30_68:
	movl	$22, %r13d
	cmpl	$0, (%r12)
	je	.LBB30_81
# %bb.69:
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB30_81
# %bb.70:
	testb	$8, 64(%rax)
	jne	.LBB30_90
# %bb.71:
	movb	$0, (%r14)
	jmp	.LBB30_47
.LBB30_73:
	movl	$4, %r15d
	jmp	.LBB30_75
.LBB30_74:
	movl	$240, %eax
	andl	(%rdi), %eax
	movl	$32, %r15d
	movl	$109, %r13d
	cmpl	$32, %eax
	jne	.LBB30_81
.LBB30_75:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r13d
	cmpl	$4, (%r12)
	jb	.LBB30_81
# %bb.76:
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB30_81
# %bb.77:
	movzbl	49(%rax), %eax
	andl	%eax, %r15d
	movl	%r15d, (%r14)
	jmp	.LBB30_47
.LBB30_78:
	movl	$22, %r13d
	cmpl	$4, (%r12)
	jb	.LBB30_81
# %bb.79:
	callq	netconn_err
	movsbl	%al, %edi
	callq	err_to_errno
	jmp	.LBB30_46
.LBB30_80:
	movl	$22, %r13d
	cmpl	$4, (%r12)
	jb	.LBB30_81
# %bb.86:
	movl	(%rdi), %eax
	movl	%eax, %ecx
	andb	$-16, %cl
	cmpb	$16, %cl
	je	.LBB30_92
# %bb.87:
	cmpb	$32, %cl
	je	.LBB30_93
# %bb.88:
	cmpb	$64, %cl
	jne	.LBB30_46
# %bb.89:
	movl	$3, (%r14)
	jmp	.LBB30_47
.LBB30_90:
	movb	$1, (%r14)
	jmp	.LBB30_47
.LBB30_91:
	movl	264(%rax), %eax
	jmp	.LBB30_46
.LBB30_92:
	movl	$1, (%r14)
	jmp	.LBB30_47
.LBB30_93:
	movl	$2, (%r14)
	jmp	.LBB30_47
.Lfunc_end30:
	.size	lwip_getsockopt, .Lfunc_end30-lwip_getsockopt
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI30_0:
	.quad	.LBB30_39
	.quad	.LBB30_57
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_60
	.quad	.LBB30_64
	.quad	.LBB30_68
.LJTI30_1:
	.quad	.LBB30_31
	.quad	.LBB30_81
	.quad	.LBB30_73
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_75
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_81
	.quad	.LBB30_74
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
	cmpq	%rcx, %rax
	jb	.LBB31_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	movq	%r11, -48(%rbp)

	#NO_APP
	movq	-48(%rbp), %rcx
	jmp	.LBB31_8
.LBB31_2:
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB31_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB31_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB31_6
.LBB31_3:
	movq	$-22, %rcx
.LBB31_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -48(%rbp)
.LBB31_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB31_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB31_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB31_11
.LBB31_12:
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
	jmp	.LBB31_17
.LBB31_13:
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
	cmpq	%rcx, %rax
	jb	.LBB31_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB31_15
.LBB31_16:
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
	jmp	.LBB31_17
.LBB31_11:
	xorl	%ebx, %ebx
	subl	-48(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB31_17
.LBB31_15:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB31_17:
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
	subq	$40, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB32_15
# %bb.1:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	sockets(,%rax,8), %r13
	cmpq	$0, (%r13)
	je	.LBB32_15
# %bb.2:
	movq	%rcx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB32_20
# %bb.3:
	movl	%r8d, %r15d
	movl	%edx, %r12d
	movl	%esi, %ebx
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_23
# %bb.4:
	cmpl	$40, %ebx
	jg	.LBB32_27
# %bb.5:
	testl	%ebx, %ebx
	je	.LBB32_38
# %bb.6:
	cmpl	$6, %ebx
	jne	.LBB32_57
# %bb.7:
	movl	$22, %ebx
	cmpl	$4, %r15d
	jb	.LBB32_24
# %bb.8:
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB32_24
# %bb.9:
	movl	$240, %edx
	andl	(%rax), %edx
	cmpl	$16, %edx
	jne	.LBB32_57
# %bb.10:
	cmpl	$1, 72(%rcx)
	je	.LBB32_24
# %bb.11:
	cmpl	$2, %r12d
	je	.LBB32_105
# %bb.12:
	movl	$109, %ebx
	cmpl	$1, %r12d
	jne	.LBB32_24
# %bb.13:
	cmpl	$0, (%r14)
	movzwl	82(%rcx), %eax
	je	.LBB32_119
# %bb.14:
	orl	$64, %eax
	movw	%ax, 82(%rcx)
	jmp	.LBB32_138
.LBB32_15:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB32_17
# %bb.16:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB32_18
.LBB32_17:
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
	jmp	.LBB32_19
.LBB32_18:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB32_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB32_36
.LBB32_20:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB32_22
# %bb.21:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB32_37
.LBB32_22:
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
	movl	$-1, %eax
	jmp	.LBB32_36
.LBB32_23:
	movl	$9, %ebx
	jmp	.LBB32_24
.LBB32_27:
	cmpl	$41, %ebx
	je	.LBB32_43
# %bb.28:
	cmpl	$4095, %ebx             # imm = 0xFFF
	jne	.LBB32_57
# %bb.29:
	cmpl	$31, %r12d
	jle	.LBB32_64
# %bb.30:
	cmpl	$4107, %r12d            # imm = 0x100B
	je	.LBB32_66
# %bb.31:
	cmpl	$4106, %r12d            # imm = 0x100A
	je	.LBB32_70
# %bb.32:
	cmpl	$32, %r12d
	jne	.LBB32_57
# %bb.33:
	movl	$240, %edx
	andl	(%rax), %edx
	movb	$32, %cl
	movl	$109, %ebx
	cmpl	$32, %edx
	jne	.LBB32_24
	jmp	.LBB32_80
.LBB32_57:
	movl	$109, %ebx
	jmp	.LBB32_24
.LBB32_37:
	callq	__errno
	movl	$14, (%rax)
	jmp	.LBB32_19
.LBB32_38:
	addl	$-1, %r12d
	movl	$109, %ebx
	cmpl	$6, %r12d
	ja	.LBB32_24
# %bb.39:
	jmpq	*.LJTI32_0(,%r12,8)
.LBB32_40:
	movl	$22, %ebx
	cmpl	$4, %r15d
	jb	.LBB32_24
# %bb.41:
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB32_24
# %bb.42:
	movb	(%r14), %cl
	movb	%cl, 50(%rax)
	jmp	.LBB32_138
.LBB32_43:
	leal	-12(%r12), %ecx
	cmpl	$2, %ecx
	jae	.LBB32_59
# %bb.44:
	movl	$22, %ebx
	cmpl	$20, %r15d
	jb	.LBB32_24
# %bb.45:
	cmpq	$0, 8(%rax)
	je	.LBB32_24
# %bb.46:
	movl	$240, %ecx
	andl	(%rax), %ecx
	movl	$109, %ebx
	cmpl	$32, %ecx
	jne	.LBB32_24
# %bb.47:
	movups	(%r14), %xmm0
	movaps	%xmm0, -80(%rbp)        # 16-byte Spill
	movaps	%xmm0, -64(%rbp)
	movb	$0, -48(%rbp)
	movl	16(%r14), %eax
	cmpl	$256, %eax              # imm = 0x100
	jae	.LBB32_139
# %bb.48:
	movzbl	%al, %edi
	callq	netif_get_by_index
	movl	$125, %ebx
	testq	%rax, %rax
	je	.LBB32_24
# %bb.49:
	cmpl	$12, %r12d
	jne	.LBB32_106
# %bb.50:
	movl	16(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_121
# %bb.51:
	movl	$42, __A_VARIABLE(%rip)
	movl	$socket_ipv6_multicast_memberships, %esi
	xorl	%edx, %edx
.LBB32_52:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rsi)
	je	.LBB32_130
# %bb.53:                               #   in Loop: Header=BB32_52 Depth=1
	cmpq	$0, 32(%rsi)
	je	.LBB32_127
# %bb.54:                               #   in Loop: Header=BB32_52 Depth=1
	cmpq	$0, 64(%rsi)
	je	.LBB32_128
# %bb.55:                               #   in Loop: Header=BB32_52 Depth=1
	cmpq	$0, 96(%rsi)
	je	.LBB32_129
# %bb.56:                               #   in Loop: Header=BB32_52 Depth=1
	addq	$4, %rdx
	subq	$-128, %rsi
	cmpq	$64, %rdx
	jb	.LBB32_52
	jmp	.LBB32_133
.LBB32_59:
	movl	$109, %ebx
	cmpl	$27, %r12d
	jne	.LBB32_24
# %bb.60:
	movl	$22, %ebx
	cmpl	$4, %r15d
	jb	.LBB32_24
# %bb.61:
	cmpq	$0, 8(%rax)
	je	.LBB32_24
# %bb.62:
	cmpl	$0, (%r14)
	movb	108(%rax), %cl
	je	.LBB32_104
# %bb.63:
	orb	$32, %cl
	movb	%cl, 108(%rax)
	jmp	.LBB32_138
.LBB32_64:
	cmpl	$4, %r12d
	je	.LBB32_79
# %bb.65:
	movb	$8, %cl
	movl	$109, %ebx
	cmpl	$8, %r12d
	je	.LBB32_80
	jmp	.LBB32_24
.LBB32_66:
	movl	$22, %ebx
	cmpl	$24, %r15d
	jb	.LBB32_24
# %bb.67:
	cmpb	$0, (%r14)
	je	.LBB32_99
# %bb.68:
	movq	%r14, %rdi
	callq	netif_find
	testq	%rax, %rax
	je	.LBB32_117
# %bb.69:
	movq	%rax, %rsi
	movq	(%r13), %rax
	jmp	.LBB32_100
.LBB32_70:
	movl	$22, %ebx
	cmpl	$4, %r15d
	jb	.LBB32_24
# %bb.71:
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB32_24
# %bb.72:
	movl	$240, %edx
	andl	(%rax), %edx
	movl	$109, %ebx
	cmpl	$32, %edx
	jne	.LBB32_24
# %bb.73:
	cmpl	$0, (%r14)
	movb	64(%rcx), %al
	je	.LBB32_120
# %bb.74:
	orb	$1, %al
	movb	%al, 64(%rcx)
	jmp	.LBB32_138
.LBB32_75:
	movl	$22, %ebx
	testl	%r15d, %r15d
	je	.LBB32_24
# %bb.76:
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB32_24
# %bb.77:
	movl	$240, %edx
	andl	(%rax), %edx
	movl	$109, %ebx
	cmpl	$32, %edx
	jne	.LBB32_24
# %bb.78:
	movb	(%r14), %al
	movb	%al, 77(%rcx)
	jmp	.LBB32_138
.LBB32_79:
	movb	$4, %cl
.LBB32_80:
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %ebx
	cmpl	$4, %r15d
	jb	.LBB32_24
# %bb.81:
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB32_24
# %bb.82:
	cmpl	$0, (%r14)
	movb	49(%rax), %dl
	je	.LBB32_98
# %bb.83:
	orb	%cl, %dl
	movb	%dl, 49(%rax)
	jmp	.LBB32_138
.LBB32_84:
	movl	$22, %ebx
	cmpl	$4, %r15d
	jb	.LBB32_24
# %bb.85:
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB32_24
# %bb.86:
	movb	(%r14), %cl
	movb	%cl, 51(%rax)
	jmp	.LBB32_138
.LBB32_87:
	movl	$22, %ebx
	cmpl	$4, %r15d
	jb	.LBB32_24
# %bb.88:
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB32_24
# %bb.89:
	movl	$240, %edx
	andl	(%rax), %edx
	movl	$109, %ebx
	cmpl	$32, %edx
	jne	.LBB32_24
# %bb.90:
	movl	(%r14), %eax
	movl	%eax, 72(%rcx)
	jmp	.LBB32_138
.LBB32_91:
	movl	$22, %ebx
	testl	%r15d, %r15d
	je	.LBB32_24
# %bb.92:
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB32_24
# %bb.93:
	movl	$240, %edx
	andl	(%rax), %edx
	movl	$109, %ebx
	cmpl	$32, %edx
	jne	.LBB32_24
# %bb.94:
	cmpb	$0, (%r14)
	movb	64(%rcx), %al
	je	.LBB32_118
# %bb.95:
	orb	$8, %al
	movb	%al, 64(%rcx)
	jmp	.LBB32_138
.LBB32_98:
	notb	%cl
	andb	%cl, %dl
	movb	%dl, 49(%rax)
	jmp	.LBB32_138
.LBB32_99:
	xorl	%esi, %esi
.LBB32_100:
	movb	(%rax), %cl
	andb	$-16, %cl
	cmpb	$32, %cl
	je	.LBB32_103
# %bb.101:
	cmpb	$16, %cl
	jne	.LBB32_140
# %bb.102:
	movq	8(%rax), %rdi
	callq	tcp_bind_netif
	jmp	.LBB32_138
.LBB32_103:
	movq	8(%rax), %rdi
	callq	udp_bind_netif
	jmp	.LBB32_138
.LBB32_104:
	andb	$-33, %cl
	movb	%cl, 108(%rax)
	jmp	.LBB32_138
.LBB32_105:
	movl	(%r14), %eax
	movl	%eax, 264(%rcx)
	jmp	.LBB32_138
.LBB32_106:
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	mld6_leavegroup_netif
	movl	%eax, %r12d
	movl	16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB32_124
# %bb.107:
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %edx
	movl	-60(%rbp), %esi
	movl	-56(%rbp), %r10d
	movl	-52(%rbp), %r8d
	movl	$socket_ipv6_multicast_memberships+28, %ecx
	movb	-48(%rbp), %r9b
	xorl	%edi, %edi
	jmp	.LBB32_109
.LBB32_108:                             #   in Loop: Header=BB32_109 Depth=1
	addq	$1, %rdi
	addq	$32, %rcx
	cmpq	$64, %rdi
	jae	.LBB32_136
.LBB32_109:                             # =>This Inner Loop Header: Depth=1
	cmpq	%r13, -28(%rcx)
	jne	.LBB32_108
# %bb.110:                              #   in Loop: Header=BB32_109 Depth=1
	movzbl	-20(%rcx), %ebx
	cmpl	%ebx, %eax
	movl	$125, %ebx
	jne	.LBB32_108
# %bb.111:                              #   in Loop: Header=BB32_109 Depth=1
	cmpl	%edx, -16(%rcx)
	jne	.LBB32_108
# %bb.112:                              #   in Loop: Header=BB32_109 Depth=1
	cmpl	%esi, -12(%rcx)
	jne	.LBB32_108
# %bb.113:                              #   in Loop: Header=BB32_109 Depth=1
	cmpl	%r10d, -8(%rcx)
	jne	.LBB32_108
# %bb.114:                              #   in Loop: Header=BB32_109 Depth=1
	cmpl	%r8d, -4(%rcx)
	jne	.LBB32_108
# %bb.115:                              #   in Loop: Header=BB32_109 Depth=1
	cmpb	%r9b, (%rcx)
	jne	.LBB32_108
# %bb.116:
	movq	$0, -28(%rcx)
	movb	$0, -20(%rcx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -16(%rcx)
	movb	$0, (%rcx)
	jmp	.LBB32_136
.LBB32_117:
	movl	$19, %ebx
	jmp	.LBB32_24
.LBB32_118:
	andb	$-9, %al
	movb	%al, 64(%rcx)
	jmp	.LBB32_138
.LBB32_119:
	andl	$65471, %eax            # imm = 0xFFBF
	movw	%ax, 82(%rcx)
	jmp	.LBB32_138
.LBB32_120:
	andb	$-2, %al
	movb	%al, 64(%rcx)
	jmp	.LBB32_138
.LBB32_121:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB32_123
# %bb.122:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB32_131
.LBB32_123:
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
	jmp	.LBB32_132
.LBB32_124:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB32_126
# %bb.125:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB32_134
.LBB32_126:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB32_135
.LBB32_127:                             # %.splitsplit_crit_edge
	movq	%rdx, %rsi
	orq	$1, %rsi
	shlq	$5, %rsi
	leaq	socket_ipv6_multicast_memberships(%rsi), %rsi
	addq	$1, %rdx
	jmp	.LBB32_130
.LBB32_128:                             # %splitsplitsplit
	movq	%rdx, %rsi
	orq	$2, %rsi
	shlq	$5, %rsi
	leaq	socket_ipv6_multicast_memberships(%rsi), %rsi
	addq	$2, %rdx
	jmp	.LBB32_130
.LBB32_129:                             # %.split_crit_edge
	movq	%rdx, %rsi
	orq	$3, %rsi
	shlq	$5, %rsi
	leaq	socket_ipv6_multicast_memberships(%rsi), %rsi
	addq	$3, %rdx
.LBB32_130:
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	movq	%r13, (%rsi)
	movl	%edx, %edx
	shlq	$5, %rdx
	movb	%cl, socket_ipv6_multicast_memberships+8(%rdx)
	movups	%xmm0, socket_ipv6_multicast_memberships+12(%rdx)
	movb	$0, socket_ipv6_multicast_memberships+28(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	mld6_joingroup_netif
	movl	%eax, %r12d
	jmp	.LBB32_137
.LBB32_131:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB32_132:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_133:
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ebx
	jmp	.LBB32_24
.LBB32_134:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB32_135:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_136:
	movl	$42, __A_VARIABLE(%rip)
.LBB32_137:
	testb	%r12b, %r12b
	jne	.LBB32_24
.LBB32_138:
	xorl	%ebx, %ebx
.LBB32_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB32_26
# %bb.25:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB32_34
.LBB32_26:
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
	jmp	.LBB32_35
.LBB32_34:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB32_35:
	negl	%ebx
	sbbl	%eax, %eax
.LBB32_36:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB32_139:
	movl	$.L.str.45, %edi
	jmp	.LBB32_141
.LBB32_140:
	movl	$.L.str.44, %edi
.LBB32_141:
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
	.quad	.LBB32_40
	.quad	.LBB32_84
	.quad	.LBB32_24
	.quad	.LBB32_24
	.quad	.LBB32_75
	.quad	.LBB32_87
	.quad	.LBB32_91
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
	cmpq	%rcx, %rax
	jb	.LBB33_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movq	-32(%rbp), %rcx
	jmp	.LBB33_8
.LBB33_2:
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB33_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB33_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB33_6
.LBB33_3:
	movq	$-22, %rcx
.LBB33_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -32(%rbp)
.LBB33_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB33_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB33_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB33_11
.LBB33_12:
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
	movl	$-1, %ebx
	jmp	.LBB33_17
.LBB33_13:
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
	cmpq	%rcx, %rax
	jb	.LBB33_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB33_15
.LBB33_16:
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
	callq	vfscore_put_file
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
	jmp	.LBB33_17
.LBB33_11:
	xorl	%ebx, %ebx
	subl	-32(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB33_17
.LBB33_15:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB33_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB34_9
# %bb.1:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rax
	movq	sockets(,%rax,8), %rdi
	testq	%rdi, %rdi
	je	.LBB34_9
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%rsi), %cl
	testb	%cl, %cl
	je	.LBB34_26
# %bb.3:
	cmpb	$10, %cl
	je	.LBB34_13
# %bb.4:
	cmpb	$2, %cl
	jne	.LBB34_6
# %bb.5:
	testb	$8, (%rdi)
	je	.LBB34_14
.LBB34_6:
	movl	$-6, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB34_8
# %bb.7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB34_30
.LBB34_8:
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
	jmp	.LBB34_32
.LBB34_9:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB34_11
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB34_12
.LBB34_11:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB34_31
.LBB34_12:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB34_31
.LBB34_13:
	testb	$8, (%rdi)
	je	.LBB34_6
.LBB34_14:
	cmpl	$28, %edx
	je	.LBB34_16
# %bb.15:
	cmpl	$16, %edx
	jne	.LBB34_40
.LBB34_16:
	movl	%ecx, %edx
	orb	$8, %dl
	cmpb	$10, %dl
	jne	.LBB34_40
# %bb.17:
	testb	$3, %sil
	jne	.LBB34_40
# %bb.18:
	leaq	sockets(,%rax,8), %r14
	cmpb	$10, %cl
	jne	.LBB34_34
# %bb.19:
	movdqu	8(%rsi), %xmm0
	movdqa	%xmm0, -48(%rbp)
	movb	$0, -32(%rbp)
	movdqa	%xmm0, -64(%rbp)        # 16-byte Spill
	movd	%xmm0, %ebx
	movl	%ebx, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	cmpl	$33022, %eax            # imm = 0x80FE
	je	.LBB34_22
# %bb.20:
	movl	%ebx, %eax
	andl	$36863, %eax            # imm = 0x8FFF
	cmpl	$767, %eax              # imm = 0x2FF
	je	.LBB34_22
# %bb.21:
	movzwl	%ax, %eax
	cmpl	$511, %eax              # imm = 0x1FF
	jne	.LBB34_23
.LBB34_22:
	movb	24(%rsi), %al
	movb	%al, -32(%rbp)
.LBB34_23:
	movzwl	2(%rsi), %edi
	callq	lwip_htons
	movb	$6, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movdqa	-64(%rbp), %xmm1        # 16-byte Reload
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %ecx
	orl	%ecx, %ebx
	jne	.LBB34_35
# %bb.24:
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %ecx
	cmpl	$-65536, %ecx           # imm = 0xFFFF0000
	jne	.LBB34_35
# %bb.25:
	pshufd	$231, %xmm1, %xmm0      # xmm0 = xmm1[3,1,2,3]
	movd	%xmm0, -48(%rbp)
	movb	$0, -28(%rbp)
	jmp	.LBB34_35
.LBB34_26:
	callq	netconn_disconnect
	testb	%al, %al
	je	.LBB34_36
.LBB34_27:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB34_29
# %bb.28:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB34_30
.LBB34_29:
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
	jmp	.LBB34_32
.LBB34_30:
	callq	__errno
	movl	%ebx, (%rax)
.LBB34_31:
	movl	$42, __A_VARIABLE(%rip)
.LBB34_32:
	movl	$-1, %esi
.LBB34_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB34_34:
	movl	4(%rsi), %eax
	movl	%eax, -48(%rbp)
	movzwl	2(%rsi), %edi
	callq	lwip_htons
	movb	$0, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_35:
	movq	(%r14), %rdi
	movzwl	%ax, %edx
	leaq	-48(%rbp), %rsi
	callq	netconn_connect
	testb	%al, %al
	jne	.LBB34_27
.LBB34_36:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB34_38
# %bb.37:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB34_39
.LBB34_38:
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
	callq	_SOCK_NET_SET_ERRNO
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
	jmp	.LBB34_33
.LBB34_39:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB34_33
.LBB34_40:
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
	cmpq	%rcx, %rax
	jb	.LBB35_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	movq	%r11, -24(%rbp)

	#NO_APP
	movq	-24(%rbp), %rcx
	jmp	.LBB35_8
.LBB35_2:
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB35_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB35_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB35_6
.LBB35_3:
	movq	$-22, %rcx
.LBB35_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -24(%rbp)
.LBB35_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB35_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB35_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB35_11
.LBB35_12:
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
	jmp	.LBB35_17
.LBB35_13:
	movl	8(%rcx), %edi
	movl	%ebx, %esi
	callq	lwip_listen
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB35_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB35_15
.LBB35_16:
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
	jmp	.LBB35_17
.LBB35_11:
	xorl	%ebx, %ebx
	subl	-24(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB35_17
.LBB35_15:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB35_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r15
	popq	%rbp
	retq
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
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB36_7
# %bb.1:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rbx
	movq	sockets(,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB36_7
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testl	%esi, %esi
	cmovnsl	%esi, %eax
	cmpl	$256, %eax              # imm = 0x100
	movl	$255, %ecx
	cmovll	%eax, %ecx
	movzbl	%cl, %esi
	callq	netconn_listen_with_backlog
	testb	%al, %al
	je	.LBB36_14
# %bb.3:
	leaq	sockets(,%rbx,8), %rcx
	movq	(%rcx), %rcx
	movl	$240, %edx
	andl	(%rcx), %edx
	cmpl	$16, %edx
	jne	.LBB36_17
# %bb.4:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB36_6
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB36_21
.LBB36_6:
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
	jmp	.LBB36_12
.LBB36_7:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB36_9
# %bb.8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB36_10
.LBB36_9:
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
	jmp	.LBB36_11
.LBB36_10:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB36_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB36_12:
	movl	$-1, %esi
.LBB36_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	popq	%rbx
	popq	%r15
	popq	%rbp
	retq
.LBB36_14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB36_16
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB36_20
.LBB36_16:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB36_13
.LBB36_17:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB36_19
# %bb.18:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB36_22
.LBB36_19:
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
	jmp	.LBB36_12
.LBB36_20:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB36_13
.LBB36_21:
	callq	__errno
	movl	%ebx, (%rax)
	jmp	.LBB36_11
.LBB36_22:
	callq	__errno
	movl	$95, (%rax)
	jmp	.LBB36_11
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
	cmpq	%rcx, %rax
	jb	.LBB37_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -40(%rbp)

	#NO_APP
	movq	-40(%rbp), %rcx
	jmp	.LBB37_8
.LBB37_2:
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB37_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB37_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB37_6
.LBB37_3:
	movq	$-22, %rcx
.LBB37_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -40(%rbp)
.LBB37_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB37_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB37_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB37_11
.LBB37_12:
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
	movl	$-1, %ebx
	jmp	.LBB37_17
.LBB37_13:
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
	cmpq	%rcx, %rax
	jb	.LBB37_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB37_15
.LBB37_16:
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
	callq	vfscore_put_file
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
	jmp	.LBB37_17
.LBB37_11:
	xorl	%ebx, %ebx
	subl	-40(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB37_17
.LBB37_15:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB37_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	cmpq	%rcx, %rax
	jb	.LBB39_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -48(%rbp)

	#NO_APP
	movq	-48(%rbp), %rcx
	jmp	.LBB39_8
.LBB39_2:
	movq	%r9, %r15
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB39_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB39_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB39_6
.LBB39_3:
	movq	$-22, %rcx
.LBB39_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -48(%rbp)
	movq	%r15, %r9
.LBB39_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB39_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB39_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB39_11
.LBB39_12:
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
	movl	$-1, %ebx
	jmp	.LBB39_17
.LBB39_13:
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
	cmpq	%rcx, %rax
	jb	.LBB39_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB39_15
.LBB39_16:
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
	callq	vfscore_put_file
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
	jmp	.LBB39_17
.LBB39_11:
	xorl	%ebx, %ebx
	subl	-48(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB39_17
.LBB39_15:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB39_17:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB40_7
# %bb.1:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	sockets(,%rax,8), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.LBB40_7
# %bb.2:
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rdx, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$240, %edx
	andl	(%rax), %edx
	cmpl	$16, %edx
	jne	.LBB40_14
# %bb.3:
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	lwip_recv_tcp
	movq	%rax, %rbx
	testq	%r15, %r15
	je	.LBB40_6
# %bb.4:
	testq	%r14, %r14
	je	.LBB40_6
# %bb.5:
	movq	(%r13), %rdi
	leaq	-112(%rbp), %r12
	leaq	-64(%rbp), %rdx
	movq	%r12, %rsi
	xorl	%ecx, %ecx
	callq	netconn_getaddr
	movq	(%r13), %rdi
	movzwl	-64(%rbp), %edx
	movq	%r12, %rsi
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	lwip_sock_make_addr
.LBB40_6:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB40_13
.LBB40_7:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB40_9
# %bb.8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB40_10
.LBB40_9:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB40_11
.LBB40_10:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB40_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB40_12:
	movq	$-1, %rbx
.LBB40_13:
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
.LBB40_14:
	movw	$0, -42(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%r12, -56(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, -80(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$1, -88(%rbp)
	movq	%r15, -112(%rbp)
	testq	%r14, %r14
	je	.LBB40_16
# %bb.15:
	movl	(%r14), %eax
	jmp	.LBB40_17
.LBB40_16:
	xorl	%eax, %eax
.LBB40_17:
	movl	%eax, -104(%rbp)
	leaq	-112(%rbp), %rdx
	leaq	-42(%rbp), %rax
	movq	%r13, %rdi
	movl	%ecx, %esi
	movq	%rax, %rcx
	callq	lwip_recvfrom_udp_raw
	testb	%al, %al
	je	.LBB40_21
# %bb.18:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB40_20
# %bb.19:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB40_26
.LBB40_20:
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
	jmp	.LBB40_12
.LBB40_21:
	movzwl	-42(%rbp), %ebx
	cmpq	%r12, %rbx
	cmovaq	%r12, %rbx
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, %rbx
	cmovaeq	%rax, %rbx
	testq	%r14, %r14
	je	.LBB40_23
# %bb.22:
	movl	-104(%rbp), %eax
	movl	%eax, (%r14)
.LBB40_23:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB40_25
# %bb.24:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB40_27
.LBB40_25:
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
	callq	_SOCK_NET_SET_ERRNO
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
	jmp	.LBB40_13
.LBB40_26:
	callq	__errno
	movl	%ebx, (%rax)
	jmp	.LBB40_11
.LBB40_27:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB40_13
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
	cmpq	%rcx, %rax
	jb	.LBB41_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movq	-32(%rbp), %rcx
	jmp	.LBB41_8
.LBB41_2:
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB41_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB41_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB41_6
.LBB41_3:
	movq	$-22, %rcx
.LBB41_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -32(%rbp)
.LBB41_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB41_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB41_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB41_11
.LBB41_12:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movl	$-1, %ebx
	jmp	.LBB41_17
.LBB41_13:
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
	cmpq	%rcx, %rax
	jb	.LBB41_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB41_15
.LBB41_16:
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
	callq	vfscore_put_file
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
	jmp	.LBB41_17
.LBB41_11:
	xorl	%ebx, %ebx
	subl	-32(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB41_17
.LBB41_15:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB41_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	testq	%rsi, %rsi
	je	.LBB42_48
# %bb.1:
	movl	%edx, %r8d
	testl	$-10, %edx
	jne	.LBB42_49
# %bb.2:
	movq	%rsi, %r12
	movslq	24(%rsi), %rax
	leal	-1(%rax), %ecx
	cmpl	$1024, %ecx             # imm = 0x400
	jb	.LBB42_6
# %bb.3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB42_5
# %bb.4:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB42_22
.LBB42_5:
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
	callq	_SOCK_NET_SET_ERRNO
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
	jmp	.LBB42_33
.LBB42_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB42_19
# %bb.7:
	movslq	%edi, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	sockets(,%rcx,8), %rdi
	movq	(%rdi), %r9
	testq	%r9, %r9
	je	.LBB42_19
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r12), %rdx
	addq	$8, %rdx
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB42_9:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rdx)
	je	.LBB42_23
# %bb.10:                               #   in Loop: Header=BB42_9 Depth=1
	movq	(%rdx), %rcx
	testq	%rcx, %rcx
	jle	.LBB42_23
# %bb.11:                               #   in Loop: Header=BB42_9 Depth=1
	addq	%rcx, %rbx
	jle	.LBB42_23
# %bb.12:                               #   in Loop: Header=BB42_9 Depth=1
	addq	$1, %rsi
	addq	$16, %rdx
	cmpq	%rax, %rsi
	jl	.LBB42_9
# %bb.13:
	movl	$240, %eax
	andl	(%r9), %eax
	cmpl	$16, %eax
	jne	.LBB42_27
# %bb.14:
	movl	$0, 44(%r12)
	movq	16(%r12), %rcx
	movl	$8, %r15d
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	movl	%r8d, %r13d
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB42_15:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	-8(%rcx,%r15), %rsi
	movq	(%rcx,%r15), %rdx
	movl	%r13d, %ecx
	movl	%r8d, %ebx
	callq	lwip_recv_tcp
	movl	%ebx, %r8d
	testq	%rax, %rax
	movl	$0, %ebx
	cmovnsq	%rax, %rbx
	addq	-64(%rbp), %rbx         # 8-byte Folded Reload
	testq	%rax, %rax
	js	.LBB42_35
# %bb.16:                               #   in Loop: Header=BB42_15 Depth=1
	testb	$1, %r8b
	jne	.LBB42_35
# %bb.17:                               #   in Loop: Header=BB42_15 Depth=1
	movq	16(%r12), %rcx
	movslq	(%rcx,%r15), %rdx
	cmpq	%rdx, %rax
	jl	.LBB42_35
# %bb.18:                               #   in Loop: Header=BB42_15 Depth=1
	orl	$8, %r13d
	addq	$1, %r14
	movslq	24(%r12), %rax
	addq	$16, %r15
	cmpq	%rax, %r14
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jl	.LBB42_15
	jmp	.LBB42_36
.LBB42_19:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB42_21
# %bb.20:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB42_26
.LBB42_21:
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
	jmp	.LBB42_32
.LBB42_22:
	callq	__errno
	movl	$122, (%rax)
	jmp	.LBB42_32
.LBB42_23:
	movl	$-6, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB42_25
# %bb.24:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB42_31
.LBB42_25:
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
	jmp	.LBB42_33
.LBB42_26:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB42_32
.LBB42_27:
	movw	$0, -42(%rbp)
	leaq	-42(%rbp), %rcx
	movl	%r8d, %esi
	movq	%r12, %rdx
	callq	lwip_recvfrom_udp_raw
	testb	%al, %al
	je	.LBB42_40
# %bb.28:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB42_30
# %bb.29:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB42_31
.LBB42_30:
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
	jmp	.LBB42_33
.LBB42_31:
	callq	__errno
	movl	%ebx, (%rax)
.LBB42_32:
	movl	$42, __A_VARIABLE(%rip)
.LBB42_33:
	movq	$-1, %rbx
.LBB42_34:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB42_35:
	testq	%rbx, %rbx
	cmovleq	%rax, %rbx
.LBB42_36:
	testq	%rbx, %rbx
	jle	.LBB42_34
# %bb.37:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB42_39
# %bb.38:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB42_45
.LBB42_39:
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
	callq	_SOCK_NET_SET_ERRNO
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB42_34
.LBB42_40:
	movzwl	-42(%rbp), %eax
	cmpq	%rax, %rbx
	jge	.LBB42_42
# %bb.41:
	orb	$4, 44(%r12)
.LBB42_42:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB42_44
# %bb.43:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB42_46
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
	jmp	.LBB42_47
.LBB42_45:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB42_34
.LBB42_46:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB42_47:
	movzwl	-42(%rbp), %ebx
	jmp	.LBB42_34
.LBB42_48:
	movl	$.L.str.9, %edi
	jmp	.LBB42_50
.LBB42_49:
	movl	$.L.str.10, %edi
.LBB42_50:
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
	cmpq	%rcx, %rax
	jb	.LBB43_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -40(%rbp)

	#NO_APP
	movq	-40(%rbp), %rcx
	jmp	.LBB43_8
.LBB43_2:
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB43_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB43_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB43_6
.LBB43_3:
	movq	$-22, %rcx
.LBB43_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -40(%rbp)
.LBB43_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB43_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB43_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB43_11
.LBB43_12:
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
	movl	$-1, %ebx
	jmp	.LBB43_17
.LBB43_13:
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
	cmpq	%rcx, %rax
	jb	.LBB43_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB43_15
.LBB43_16:
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
	callq	vfscore_put_file
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
	jmp	.LBB43_17
.LBB43_11:
	xorl	%ebx, %ebx
	subl	-40(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB43_17
.LBB43_15:
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB43_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB44_2
# %bb.1:
	movl	%edi, %eax
	movslq	%edi, %rdi
	leaq	(%rdi,%rdi,2), %rdi
	movq	sockets(,%rdi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB44_2
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$240, %ebx
	andl	(%rdi), %ebx
	cmpl	$16, %ebx
	jne	.LBB44_8
# %bb.9:
	movl	%ecx, %eax
	shrl	$3, %eax
	andl	$2, %eax
	shrl	%ecx
	andl	$4, %ecx
	orl	%eax, %ecx
	orb	$1, %cl
	movq	$0, -32(%rbp)
	movzbl	%cl, %ecx
	leaq	-32(%rbp), %r8
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
	cmpq	%rcx, %rax
	jb	.LBB44_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB44_11
.LBB44_12:
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
	jmp	.LBB44_13
.LBB44_2:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB44_5
# %bb.3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB44_4
.LBB44_5:
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
	jmp	.LBB44_6
.LBB44_4:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB44_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rax
.LBB44_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB44_8:
	movl	%eax, %edi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	lwip_sendto
	jmp	.LBB44_14
.LBB44_11:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB44_13:
	xorl	%eax, %eax
	cmpb	$1, %r14b
	sbbq	%rax, %rax
	notq	%rax
	orq	-32(%rbp), %rax
	jmp	.LBB44_14
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
	cmpq	%rcx, %rax
	jb	.LBB45_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -32(%rbp)

	#NO_APP
	movq	-32(%rbp), %rcx
	jmp	.LBB45_8
.LBB45_2:
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB45_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB45_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB45_6
.LBB45_3:
	movq	$-22, %rcx
.LBB45_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -32(%rbp)
.LBB45_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB45_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB45_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB45_11
.LBB45_12:
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
	movl	$-1, %ebx
	jmp	.LBB45_17
.LBB45_13:
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
	cmpq	%rcx, %rax
	jb	.LBB45_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB45_15
.LBB45_16:
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
	callq	vfscore_put_file
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
	jmp	.LBB45_17
.LBB45_11:
	xorl	%ebx, %ebx
	subl	-32(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB45_17
.LBB45_15:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB45_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB46_2
# %bb.1:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %r14
	movq	sockets(,%r14,8), %rdi
	testq	%rdi, %rdi
	je	.LBB46_2
# %bb.7:
	movq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB46_8
# %bb.10:
	movq	16(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB46_11
# %bb.12:
	movl	24(%r15), %eax
	leal	-1(%rax), %ecx
	cmpl	$1024, %ecx             # imm = 0x400
	jae	.LBB46_13
# %bb.14:
	testl	$-25, %edx
	jne	.LBB46_15
# %bb.16:
	movl	$240, %ecx
	andl	(%rdi), %ecx
	cmpl	$16, %ecx
	jne	.LBB46_22
# %bb.17:
	movl	%edx, %ecx
	shrl	$3, %ecx
	andl	$2, %ecx
	shrl	%edx
	andl	$4, %edx
	orl	%ecx, %edx
	orb	$1, %dl
	movq	$0, -88(%rbp)
	movzbl	%dl, %ecx
	movzwl	%ax, %edx
	leaq	-88(%rbp), %r8
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
	cmpq	%rcx, %rax
	jb	.LBB46_20
# %bb.18:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB46_19
.LBB46_20:
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
	jmp	.LBB46_21
.LBB46_2:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB46_5
# %bb.3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB46_4
.LBB46_5:
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB46_62
.LBB46_4:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB46_62
.LBB46_22:
	cmpq	$0, (%r15)
	movl	8(%r15), %eax
	jne	.LBB46_24
# %bb.23:
	testl	%eax, %eax
	je	.LBB46_27
.LBB46_24:
	cmpl	$16, %eax
	je	.LBB46_27
# %bb.25:
	cmpl	$28, %eax
	jne	.LBB46_26
.LBB46_27:
	leaq	-88(%rbp), %rdi
	movl	$48, %edx
	xorl	%esi, %esi
	callq	memset
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB46_35
# %bb.28:
	cmpb	$10, 1(%rax)
	jne	.LBB46_33
# %bb.29:
	movl	8(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movl	12(%rax), %edx
	movl	%edx, -68(%rbp)
	movl	16(%rax), %edx
	movl	%edx, -64(%rbp)
	movl	20(%rax), %edx
	movl	%edx, -60(%rbp)
	movb	$0, -56(%rbp)
	movl	%ecx, %edx
	andl	$49407, %edx            # imm = 0xC0FF
	cmpl	$33022, %edx            # imm = 0x80FE
	je	.LBB46_32
# %bb.30:
	andl	$36863, %ecx            # imm = 0x8FFF
	cmpl	$767, %ecx              # imm = 0x2FF
	je	.LBB46_32
# %bb.31:
	movb	$6, %bl
	movzwl	%cx, %ecx
	cmpl	$511, %ecx              # imm = 0x1FF
	jne	.LBB46_34
.LBB46_32:
	movb	24(%rax), %cl
	movb	%cl, -56(%rbp)
	movb	$6, %bl
	jmp	.LBB46_34
.LBB46_33:
	movl	4(%rax), %ecx
	movl	%ecx, -72(%rbp)
	xorl	%ebx, %ebx
.LBB46_34:
	movzwl	2(%rax), %edi
	callq	lwip_htons
	movb	%bl, -52(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movw	%ax, -48(%rbp)
.LBB46_35:
	cmpl	$0, 24(%r15)
	jle	.LBB46_49
# %bb.36:
	movl	$8, %ebx
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	jmp	.LBB46_37
	.p2align	4, 0x90
.LBB46_41:                              #   in Loop: Header=BB46_37 Depth=1
	movq	%rax, -80(%rbp)
	movq	%rax, -88(%rbp)
.LBB46_48:                              #   in Loop: Header=BB46_37 Depth=1
	addq	$1, %r13
	movslq	24(%r15), %rax
	addq	$16, %rbx
	cmpq	%rax, %r13
	jge	.LBB46_49
.LBB46_37:                              # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rax
	cmpq	$65535, (%rax,%rbx)     # imm = 0xFFFF
	ja	.LBB46_44
# %bb.38:                               #   in Loop: Header=BB46_37 Depth=1
	movl	$74, %edi
	xorl	%esi, %esi
	movl	$65, %edx
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB46_39
# %bb.40:                               #   in Loop: Header=BB46_37 Depth=1
	movq	16(%r15), %rcx
	movq	-8(%rcx,%rbx), %rdx
	movq	%rdx, 8(%rax)
	movq	(%rcx,%rbx), %rcx
	movw	%cx, 16(%rax)
	movw	%cx, 18(%rax)
	movq	-88(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB46_41
# %bb.42:                               #   in Loop: Header=BB46_37 Depth=1
	movzwl	16(%rdi), %edx
	movzwl	%cx, %ecx
	addl	%edx, %ecx
	cmpl	$65536, %ecx            # imm = 0x10000
	jae	.LBB46_43
# %bb.47:                               #   in Loop: Header=BB46_37 Depth=1
	movq	%rax, %rsi
	callq	pbuf_cat
	jmp	.LBB46_48
.LBB46_49:
	leaq	sockets(,%r14,8), %rax
	movq	-88(%rbp), %rcx
	movzwl	16(%rcx), %r12d
	cmpb	$6, -52(%rbp)
	jne	.LBB46_54
# %bb.50:
	cmpl	$0, -72(%rbp)
	jne	.LBB46_54
# %bb.51:
	cmpl	$0, -68(%rbp)
	jne	.LBB46_54
# %bb.52:
	cmpl	$-65536, -64(%rbp)      # imm = 0xFFFF0000
	jne	.LBB46_54
# %bb.53:
	movl	-60(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movb	$0, -52(%rbp)
.LBB46_54:
	movq	(%rax), %rdi
	leaq	-88(%rbp), %rsi
	callq	netconn_send
	movl	%eax, %r14d
	jmp	.LBB46_55
.LBB46_19:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_21:
	xorl	%eax, %eax
	cmpb	$1, %r14b
	sbbq	%rax, %rax
	notq	%rax
	orq	-88(%rbp), %rax
	jmp	.LBB46_63
.LBB46_39:
	movb	$-1, %r14b
.LBB46_55:
	leaq	-88(%rbp), %rdi
	callq	netbuf_free
	movsbl	%r14b, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB46_58
# %bb.56:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB46_57
.LBB46_58:
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
	jmp	.LBB46_59
.LBB46_57:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_59:
	xorl	%eax, %eax
	cmpb	$1, %r14b
	sbbq	%rax, %rax
	notq	%rax
	orq	%r12, %rax
	jmp	.LBB46_63
.LBB46_43:
	movq	%rax, %rdi
	callq	pbuf_free
.LBB46_44:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB46_60
# %bb.45:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB46_46
.LBB46_60:
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
	jmp	.LBB46_61
.LBB46_46:
	callq	__errno
	movl	$122, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB46_61:
	leaq	-88(%rbp), %rdi
	callq	netbuf_free
.LBB46_62:
	movq	$-1, %rax
.LBB46_63:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB46_8:
	movl	$.L.str.11, %edi
	jmp	.LBB46_9
.LBB46_11:
	movl	$.L.str.12, %edi
	jmp	.LBB46_9
.LBB46_13:
	movl	$.L.str.13, %edi
	jmp	.LBB46_9
.LBB46_15:
	movl	$.L.str.14, %edi
	jmp	.LBB46_9
.LBB46_26:
	movl	$.L.str.15, %edi
.LBB46_9:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
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
	cmpq	%rcx, %rax
	jb	.LBB47_7
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
	callq	sock_net_file_get
	movq	%rax, %rsi
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
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movq	%r11, -48(%rbp)

	#NO_APP
	movq	-48(%rbp), %rcx
	jmp	.LBB47_8
.LBB47_2:
	movl	%r9d, %r15d
	callq	vfscore_get_file
	testq	%rax, %rax
	je	.LBB47_3
# %bb.4:
	movq	40(%rax), %rcx
	movq	32(%rcx), %rdx
	movq	$-9, %rcx
	cmpl	$6, 44(%rdx)
	jne	.LBB47_6
# %bb.5:
	movq	24(%rax), %rcx
	jmp	.LBB47_6
.LBB47_3:
	movq	$-22, %rcx
.LBB47_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -48(%rbp)
	movl	%r15d, %r9d
.LBB47_8:
	movq	%rcx, %rax
	addq	$512, %rax              # imm = 0x200
	cmpq	$512, %rax              # imm = 0x200
	ja	.LBB47_13
# %bb.9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB47_12
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB47_11
.LBB47_12:
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
	movl	$-1, %ebx
	jmp	.LBB47_17
.LBB47_13:
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
	cmpq	%rcx, %rax
	jb	.LBB47_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB47_15
.LBB47_16:
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
	callq	vfscore_put_file
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
	jmp	.LBB47_17
.LBB47_11:
	xorl	%ebx, %ebx
	subl	-48(%rbp), %ebx
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jmp	.LBB47_17
.LBB47_15:
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	vfscore_put_file
.LBB47_17:
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
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB48_4
# %bb.1:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %r15
	movq	sockets(,%r15,8), %rax
	testq	%rax, %rax
	je	.LBB48_4
# %bb.2:
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %eax
	movl	%eax, %edx
	andl	$240, %edx
	cmpl	$16, %edx
	jne	.LBB48_11
# %bb.3:
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	lwip_send
	jmp	.LBB48_10
.LBB48_4:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB48_6
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB48_7
.LBB48_6:
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
	jmp	.LBB48_8
.LBB48_7:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB48_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB48_9:
	movq	$-1, %rax
.LBB48_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB48_11:
	cmpq	$65536, %r14            # imm = 0x10000
	jb	.LBB48_15
# %bb.12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB48_14
# %bb.13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB48_19
.LBB48_14:
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
	jmp	.LBB48_9
.LBB48_15:
	testq	%r8, %r8
	jne	.LBB48_17
# %bb.16:
	testl	%r9d, %r9d
	je	.LBB48_24
.LBB48_17:
	cmpl	$16, %r9d
	jne	.LBB48_20
# %bb.18:
	testq	%r8, %r8
	jne	.LBB48_22
	jmp	.LBB48_48
.LBB48_19:
	callq	__errno
	movl	$122, (%rax)
	jmp	.LBB48_8
.LBB48_20:
	testq	%r8, %r8
	je	.LBB48_48
# %bb.21:
	cmpl	$28, %r9d
	jne	.LBB48_48
.LBB48_22:
	movb	1(%r8), %cl
	orb	$8, %cl
	cmpb	$10, %cl
	jne	.LBB48_48
# %bb.23:
	testb	$3, %r8b
	jne	.LBB48_48
.LBB48_24:
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -80(%rbp)
	testq	%r8, %r8
	je	.LBB48_31
# %bb.25:
	cmpb	$10, 1(%r8)
	jne	.LBB48_33
# %bb.26:
	movdqu	8(%r8), %xmm0
	movdqa	%xmm0, -64(%rbp)
	movb	$0, -48(%rbp)
	movd	%xmm0, %eax
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	cmpl	$33022, %ecx            # imm = 0x80FE
	je	.LBB48_29
# %bb.27:
	andl	$36863, %eax            # imm = 0x8FFF
	cmpl	$767, %eax              # imm = 0x2FF
	je	.LBB48_29
# %bb.28:
	movzwl	%ax, %eax
	cmpl	$511, %eax              # imm = 0x1FF
	jne	.LBB48_30
.LBB48_29:
	movb	24(%r8), %al
	movb	%al, -48(%rbp)
.LBB48_30:
	movzwl	2(%r8), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movb	$6, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB48_36
.LBB48_31:
	movl	$0, -64(%rbp)
	testb	$8, %al
	jne	.LBB48_34
# %bb.32:
	movb	$0, -44(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -60(%rbp)
	movb	$0, -48(%rbp)
	jmp	.LBB48_35
.LBB48_33:
	movl	4(%r8), %eax
	movl	%eax, -64(%rbp)
	movzwl	2(%r8), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movb	$0, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB48_36
.LBB48_34:
	movq	$0, -60(%rbp)
	movl	$0, -52(%rbp)
	movb	$0, -48(%rbp)
	movb	$6, -44(%rbp)
.LBB48_35:
	xorl	%eax, %eax
.LBB48_36:
	movw	%ax, -40(%rbp)
	movzwl	%r14w, %edx
	leaq	-80(%rbp), %rdi
	movq	%rbx, %rsi
	callq	netbuf_ref
	movl	%eax, %r12d
	testb	%al, %al
	jne	.LBB48_43
# %bb.37:
	leaq	sockets(,%r15,8), %rax
	cmpb	$6, -44(%rbp)
	jne	.LBB48_42
# %bb.38:
	cmpl	$0, -64(%rbp)
	jne	.LBB48_42
# %bb.39:
	cmpl	$0, -60(%rbp)
	jne	.LBB48_42
# %bb.40:
	cmpl	$-65536, -56(%rbp)      # imm = 0xFFFF0000
	jne	.LBB48_42
# %bb.41:
	movl	-52(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	movb	$0, -44(%rbp)
.LBB48_42:
	movq	(%rax), %rdi
	leaq	-80(%rbp), %rsi
	callq	netconn_send
	movl	%eax, %r12d
.LBB48_43:
	leaq	-80(%rbp), %rdi
	callq	netbuf_free
	movsbl	%r12b, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB48_45
# %bb.44:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB48_46
.LBB48_45:
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
.Ltmp274:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp274
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp275:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp275
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
	jmp	.LBB48_47
.LBB48_46:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB48_47:
	movzwl	%r14w, %ecx
	xorl	%eax, %eax
	cmpb	$1, %r12b
	sbbq	%rax, %rax
	notq	%rax
	orq	%rcx, %rax
	jmp	.LBB48_10
.LBB48_48:
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
	retq
.Lfunc_end54:
	.size	lwip_socket_dbg_get_socket, .Lfunc_end54-lwip_socket_dbg_get_socket
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
	movl	$sockets+22, %ebx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB55_1:                               # =>This Inner Loop Header: Depth=1
	callq	ukplat_lcpu_save_irqf
	cmpq	$0, -22(%rbx)
	je	.LBB55_2
# %bb.4:                                #   in Loop: Header=BB55_1 Depth=1
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	addq	$1, %r12
	addq	$24, %rbx
	cmpq	$64, %r12
	jb	.LBB55_1
# %bb.5:
	movl	$-1, %r12d
	jmp	.LBB55_6
.LBB55_2:
	movq	%r15, -22(%rbx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	$0, -14(%rbx)
	cmpb	$0, (%rbx)
	jne	.LBB55_7
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
.LBB55_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB55_7:
	movl	$.L.str.28, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end55:
	.size	alloc_socket, .Lfunc_end55-alloc_socket
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
	subq	$24, %rsp
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	testq	%rdx, %rdx
	movabsq	$9223372036854775807, %r12 # imm = 0x7FFFFFFFFFFFFFFF
	cmovnsq	%rdx, %r12
	testq	%rdi, %rdi
	je	.LBB56_1
# %bb.3:
	movl	%ecx, %ebx
	movq	%rdi, %r13
	movq	(%rdi), %rax
	movl	$240, %ecx
	andl	(%rax), %ecx
	cmpl	$16, %ecx
	jne	.LBB56_4
# %bb.5:
	movl	%ebx, %r15d
	andl	$8, %r15d
	shrl	$3, %r15d
	shlb	$2, %r15b
	orb	$8, %r15b
	xorl	%r14d, %r14d
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	.p2align	4, 0x90
.LBB56_6:                               # =>This Inner Loop Header: Depth=1
	movq	8(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB56_8
# %bb.7:                                #   in Loop: Header=BB56_6 Depth=1
	movq	%rdi, -56(%rbp)
	jmp	.LBB56_18
	.p2align	4, 0x90
.LBB56_8:                               #   in Loop: Header=BB56_6 Depth=1
	movq	%r13, %rbx
	movq	(%r13), %rdi
	movzbl	%r15b, %edx
	leaq	-56(%rbp), %rsi
	callq	netconn_recv_tcp_pbuf_flags
	testb	%al, %al
	jne	.LBB56_9
# %bb.15:                               #   in Loop: Header=BB56_6 Depth=1
	movq	-56(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB56_16
# %bb.17:                               #   in Loop: Header=BB56_6 Depth=1
	movq	%rbx, %r13
	movq	%rdi, 8(%rbx)
.LBB56_18:                              #   in Loop: Header=BB56_6 Depth=1
	movzwl	16(%rdi), %ebx
	cmpq	%rbx, %r12
	cmovlel	%r12d, %ebx
	movq	-64(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r14), %rsi
	movzwl	%bx, %edx
	xorl	%ecx, %ecx
	callq	pbuf_copy_partial
	movzwl	%bx, %esi
	subq	%rsi, %r12
	jl	.LBB56_19
# %bb.20:                               #   in Loop: Header=BB56_6 Depth=1
	addq	%rsi, %r14
	movl	-44(%rbp), %ebx         # 4-byte Reload
	testb	$1, %bl
	jne	.LBB56_32
# %bb.21:                               #   in Loop: Header=BB56_6 Depth=1
	movq	-56(%rbp), %rdi
	movzwl	16(%rdi), %eax
	cmpw	%si, %ax
	jb	.LBB56_22
# %bb.23:                               #   in Loop: Header=BB56_6 Depth=1
	cmpw	%si, %ax
	jbe	.LBB56_26
# %bb.24:                               #   in Loop: Header=BB56_6 Depth=1
                                        # kill: def $esi killed $esi killed $rsi
	callq	pbuf_free_header
	movq	%rax, 8(%r13)
	testb	$1, %bl
	je	.LBB56_28
	jmp	.LBB56_29
	.p2align	4, 0x90
.LBB56_26:                              #   in Loop: Header=BB56_6 Depth=1
	movq	$0, 8(%r13)
	callq	pbuf_free
	testb	$1, %bl
	jne	.LBB56_29
.LBB56_28:                              #   in Loop: Header=BB56_6 Depth=1
	orb	$20, %r15b
	testq	%r12, %r12
	jg	.LBB56_6
.LBB56_29:
	testb	$1, %bl
	jne	.LBB56_32
.LBB56_30:
	testq	%r14, %r14
	jle	.LBB56_32
# %bb.31:
	movq	(%r13), %rdi
	movq	%r14, %rsi
	callq	netconn_tcp_recvd
.LBB56_32:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB56_35
# %bb.33:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB56_34
.LBB56_35:
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
.Ltmp276:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp276
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp277:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp277
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
	jmp	.LBB56_36
.LBB56_34:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB56_36
.LBB56_9:
	testq	%r14, %r14
	je	.LBB56_10
# %bb.25:
	movq	%rbx, %r13
	movl	-44(%rbp), %ebx         # 4-byte Reload
	testb	$1, %bl
	je	.LBB56_30
	jmp	.LBB56_32
.LBB56_10:
	movl	%eax, %r13d
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB56_13
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB56_12
.LBB56_13:
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
.Ltmp278:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp278
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp279:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp279
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
	jmp	.LBB56_14
.LBB56_12:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB56_14:
	xorl	%r14d, %r14d
	cmpb	$-15, %r13b
	setne	%r14b
	negq	%r14
.LBB56_36:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB56_19:
	movl	$.L.str.32, %edi
	jmp	.LBB56_2
.LBB56_22:
	movl	$.L.str.33, %edi
	jmp	.LBB56_2
.LBB56_16:
	movl	$.L.str.31, %edi
.LBB56_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB56_1:
	movl	$.L.str.29, %edi
	jmp	.LBB56_2
.LBB56_4:
	movl	$.L.str.30, %edi
	jmp	.LBB56_2
.Lfunc_end56:
	.size	lwip_recv_tcp, .Lfunc_end56-lwip_recv_tcp
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
	movq	%rdx, %rbx
	movl	%esi, %r15d
	movq	%rdi, %r12
	cmpq	$0, 16(%rdx)
	jne	.LBB57_4
# %bb.1:
	cmpl	$0, 24(%rbx)
	jg	.LBB57_2
.LBB57_4:
	movq	8(%r12), %rax
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	je	.LBB57_5
.LBB57_9:
	movl	%r15d, -56(%rbp)        # 4-byte Spill
	movq	%r12, -72(%rbp)         # 8-byte Spill
	movq	%r14, -80(%rbp)         # 8-byte Spill
	movq	(%rax), %rdi
	movzwl	16(%rdi), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	testw	%ax, %ax
	je	.LBB57_15
# %bb.10:
	cmpl	$0, 24(%rbx)
	jle	.LBB57_15
# %bb.11:                               # %.preheader
	movl	$1, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$8, %r15d
	xorl	%r12d, %r12d
	movl	-52(%rbp), %r14d        # 4-byte Reload
	.p2align	4, 0x90
.LBB57_12:                              # =>This Inner Loop Header: Depth=1
	movl	%r14d, %eax
	subl	%r12d, %eax
	movq	16(%rbx), %rcx
	movq	-8(%rcx,%r15), %rsi
	movq	(%rcx,%r15), %r13
	movzwl	%ax, %ecx
	cmpq	%rcx, %r13
	cmoval	%eax, %r13d
	movzwl	%r13w, %edx
	movzwl	%r12w, %ecx
	callq	pbuf_copy_partial
	addl	%r12d, %r13d
	cmpw	%r13w, %r14w
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jbe	.LBB57_15
# %bb.13:                               #   in Loop: Header=BB57_12 Depth=1
	movslq	24(%rbx), %rax
	cmpq	%rax, %rcx
	jge	.LBB57_15
# %bb.14:                               #   in Loop: Header=BB57_12 Depth=1
	movl	%r13d, %r12d
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	addq	$16, %r15
	jmp	.LBB57_12
.LBB57_15:
	movq	(%rbx), %rcx
	testq	%rcx, %rcx
	movq	-72(%rbp), %r15         # 8-byte Reload
	je	.LBB57_18
# %bb.16:
	cmpl	$0, 8(%rbx)
	je	.LBB57_18
# %bb.17:
	leaq	8(%rbx), %r8
	movq	(%r15), %rdi
	movq	-48(%rbp), %rsi
	movzwl	40(%rsi), %edx
	addq	$16, %rsi
	callq	lwip_sock_make_addr
.LBB57_18:
	movl	$0, 44(%rbx)
	cmpq	$0, 32(%rbx)
	movq	-80(%rbp), %r14         # 8-byte Reload
	je	.LBB57_20
# %bb.19:
	movl	$0, 40(%rbx)
.LBB57_20:
	testb	$1, -56(%rbp)           # 1-byte Folded Reload
	jne	.LBB57_22
# %bb.21:
	movq	$0, 8(%r15)
	movq	-48(%rbp), %rdi
	callq	netbuf_delete
.LBB57_22:
	testq	%r14, %r14
	je	.LBB57_24
# %bb.23:
	movl	-52(%rbp), %eax         # 4-byte Reload
	movw	%ax, (%r14)
.LBB57_24:
	xorl	%eax, %eax
	jmp	.LBB57_25
.LBB57_5:
	movl	%r15d, %edx
	shrl	%edx
	movq	(%r12), %rdi
	andl	$4, %edx
	leaq	-48(%rbp), %rsi
	callq	netconn_recv_udp_raw_netbuf_flags
                                        # kill: def $al killed $al def $eax
	testb	%al, %al
	je	.LBB57_6
.LBB57_25:
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
.LBB57_6:
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	je	.LBB57_7
# %bb.8:
	movq	%rax, 8(%r12)
	jmp	.LBB57_9
.LBB57_2:
	movl	$.L.str.37, %edi
	jmp	.LBB57_3
.LBB57_7:
	movl	$.L.str.38, %edi
.LBB57_3:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end57:
	.size	lwip_recvfrom_udp_raw, .Lfunc_end57-lwip_recvfrom_udp_raw
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
.Lfunc_end58:
	.size	lwip_read, .Lfunc_end58-lwip_read
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
	testq	%rdi, %rdi
	je	.LBB59_54
# %bb.1:
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	104(%rdi), %r12d
	testl	%r12d, %r12d
	jns	.LBB59_4
# %bb.2:
	callq	ukplat_lcpu_save_irqf
	movl	104(%rbx), %r12d
	testl	%r12d, %r12d
	js	.LBB59_13
# %bb.3:
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
.LBB59_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %r12d
	ja	.LBB59_9
# %bb.5:
	movslq	%r12d, %r14
	leaq	(%r14,%r14,2), %rbx
	cmpq	$0, sockets(,%rbx,8)
	je	.LBB59_9
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	ukplat_lcpu_save_irqf
	cmpl	$4, %r15d
	ja	.LBB59_55
# %bb.7:
	movl	%r15d, %ecx
	jmpq	*.LJTI59_0(,%rcx,8)
.LBB59_8:
	movl	sockets+16(,%rbx,8), %ecx
	addl	$1, %ecx
	movw	%cx, sockets+16(,%rbx,8)
	cmpw	$2, %cx
	setl	%cl
	jmp	.LBB59_17
.LBB59_9:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB59_11
# %bb.10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB59_12
.LBB59_11:
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
.Ltmp280:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp280
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp281:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp281
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
	jmp	.LBB59_54
.LBB59_12:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB59_54
.LBB59_13:
	testl	%r15d, %r15d
	jne	.LBB59_53
# %bb.14:
	addl	$-1, %r12d
	movl	%r12d, 104(%rbx)
	jmp	.LBB59_53
.LBB59_15:
	movw	$1, sockets+20(,%rbx,8)
	movb	$1, %cl
	jmp	.LBB59_17
.LBB59_16:
	cmpw	$0, sockets+18(,%rbx,8)
	sete	%cl
	movw	$1, sockets+18(,%rbx,8)
.LBB59_17:
	testb	%cl, %cl
	je	.LBB59_53
# %bb.18:
	cmpb	$0, sockets+22(,%rbx,8)
	je	.LBB59_53
# %bb.19:
	leaq	(,%r14,8), %rcx
	movzwl	sockets+16(%rcx,%rcx,2), %ebx
	movzwl	sockets+18(%rcx,%rcx,2), %r15d
	movzwl	sockets+20(%rcx,%rcx,2), %r13d
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movq	%r14, %rcx
	movq	select_cb_list(%rip), %r14
	testq	%r14, %r14
	je	.LBB59_50
# %bb.20:
	movq	%rcx, %rax
	shrq	$6, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB59_23
	.p2align	4, 0x90
.LBB59_21:                              #   in Loop: Header=BB59_23 Depth=1
	movl	$1, 52(%r14)
	leaq	56(%r14), %rdi
	callq	sys_sem_signal
.LBB59_22:                              #   in Loop: Header=BB59_23 Depth=1
	movq	(%r14), %r14
	testq	%r14, %r14
	je	.LBB59_50
.LBB59_23:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB59_29 Depth 2
	cmpl	$0, 52(%r14)
	jne	.LBB59_22
# %bb.24:                               #   in Loop: Header=BB59_23 Depth=1
	movq	40(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB59_35
# %bb.25:                               #   in Loop: Header=BB59_23 Depth=1
	movl	48(%r14), %edx
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB59_48
# %bb.26:                               #   in Loop: Header=BB59_23 Depth=1
	xorl	%esi, %esi
	jmp	.LBB59_29
.LBB59_27:                              #   in Loop: Header=BB59_29 Depth=2
	testw	%r13w, %r13w
	jne	.LBB59_47
	.p2align	4, 0x90
.LBB59_28:                              #   in Loop: Header=BB59_29 Depth=2
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jae	.LBB59_48
.LBB59_29:                              #   Parent Loop BB59_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r12d, (%rcx,%rsi,8)
	jne	.LBB59_28
# %bb.30:                               #   in Loop: Header=BB59_29 Depth=2
	testw	%bx, %bx
	jle	.LBB59_32
# %bb.31:                               #   in Loop: Header=BB59_29 Depth=2
	testb	$1, 4(%rcx,%rsi,8)
	jne	.LBB59_47
.LBB59_32:                              #   in Loop: Header=BB59_29 Depth=2
	testw	%r15w, %r15w
	je	.LBB59_27
# %bb.33:                               #   in Loop: Header=BB59_29 Depth=2
	movzwl	4(%rcx,%rsi,8), %edi
	andl	$2, %edi
	orw	%r13w, %di
	je	.LBB59_28
.LBB59_47:                              #   in Loop: Header=BB59_23 Depth=1
	movl	$1, %eax
.LBB59_48:                              #   in Loop: Header=BB59_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB59_49:                              #   in Loop: Header=BB59_23 Depth=1
	testl	%eax, %eax
	jne	.LBB59_21
	jmp	.LBB59_22
.LBB59_35:                              #   in Loop: Header=BB59_23 Depth=1
	xorl	%eax, %eax
	testw	%bx, %bx
	jle	.LBB59_38
# %bb.36:                               #   in Loop: Header=BB59_23 Depth=1
	movq	16(%r14), %rcx
	testq	%rcx, %rcx
	je	.LBB59_38
# %bb.37:                               #   in Loop: Header=BB59_23 Depth=1
	xorl	%eax, %eax
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	testq	%rsi, (%rcx,%rdx,8)
	setne	%al
.LBB59_38:                              #   in Loop: Header=BB59_23 Depth=1
	testw	%r15w, %r15w
	je	.LBB59_42
# %bb.39:                               #   in Loop: Header=BB59_23 Depth=1
	testl	%eax, %eax
	jne	.LBB59_42
# %bb.40:                               #   in Loop: Header=BB59_23 Depth=1
	movq	24(%r14), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB59_42
# %bb.41:                               #   in Loop: Header=BB59_23 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	testq	%rsi, (%rcx,%rdx,8)
	setne	%al
.LBB59_42:                              #   in Loop: Header=BB59_23 Depth=1
	testw	%r13w, %r13w
	je	.LBB59_49
# %bb.43:                               #   in Loop: Header=BB59_23 Depth=1
	testl	%eax, %eax
	jne	.LBB59_49
# %bb.44:                               #   in Loop: Header=BB59_23 Depth=1
	movq	32(%r14), %rax
	testq	%rax, %rax
	je	.LBB59_22
# %bb.45:                               #   in Loop: Header=BB59_23 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	testq	%rdx, (%rax,%rcx,8)
	jne	.LBB59_21
	jmp	.LBB59_22
.LBB59_50:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB59_54
.LBB59_51:
	movw	$0, sockets+18(,%rbx,8)
	jmp	.LBB59_53
.LBB59_52:
	addw	$-1, sockets+16(,%rbx,8)
.LBB59_53:
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
.LBB59_54:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB59_55:
	movl	$.L.str.42, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end59:
	.size	event_callback, .Lfunc_end59-event_callback
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI59_0:
	.quad	.LBB59_8
	.quad	.LBB59_52
	.quad	.LBB59_16
	.quad	.LBB59_51
	.quad	.LBB59_15
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
.Lfunc_end60:
	.size	lwip_write, .Lfunc_end60-lwip_write
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
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	testl	%edi, %edi
	jle	.LBB61_1
# %bb.2:
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movslq	%edi, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$sockets, %r12d
	xorl	%r15d, %r15d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB61_3
	.p2align	4, 0x90
.LBB61_23:                              #   in Loop: Header=BB61_3 Depth=1
	addq	$1, %r15
	addq	$24, %r12
	cmpq	-136(%rbp), %r15        # 8-byte Folded Reload
	jge	.LBB61_24
.LBB61_3:                               # =>This Inner Loop Header: Depth=1
	testq	%r13, %r13
	je	.LBB61_5
# %bb.4:                                #   in Loop: Header=BB61_3 Depth=1
	movq	%r15, %rax
	shrq	$6, %rax
	movq	(%r13,%rax,8), %rax
	btq	%r15, %rax
	jb	.LBB61_9
.LBB61_5:                               #   in Loop: Header=BB61_3 Depth=1
	testq	%rbx, %rbx
	je	.LBB61_7
# %bb.6:                                #   in Loop: Header=BB61_3 Depth=1
	movq	%r15, %rax
	shrq	$6, %rax
	movq	(%rbx,%rax,8), %rax
	btq	%r15, %rax
	jb	.LBB61_9
.LBB61_7:                               #   in Loop: Header=BB61_3 Depth=1
	testq	%r14, %r14
	je	.LBB61_23
# %bb.8:                                #   in Loop: Header=BB61_3 Depth=1
	movq	%r15, %rax
	shrq	$6, %rax
	movq	(%r14,%rax,8), %rax
	btq	%r15, %rax
	jae	.LBB61_23
	.p2align	4, 0x90
.LBB61_9:                               #   in Loop: Header=BB61_3 Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	%r12, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$63, %r15
	movl	$0, %edx
	cmovaq	%rdx, %rcx
	ja	.LBB61_27
# %bb.10:                               #   in Loop: Header=BB61_3 Depth=1
	movq	%r14, %rbx
	movq	8(%rcx), %r14
	movzwl	16(%rcx), %edx
	movw	%dx, -46(%rbp)          # 2-byte Spill
	movzwl	18(%rcx), %edx
	movw	%dx, -48(%rbp)          # 2-byte Spill
	movzwl	20(%rcx), %ecx
	movw	%cx, -50(%rbp)          # 2-byte Spill
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	testq	%r13, %r13
	je	.LBB61_15
# %bb.11:                               #   in Loop: Header=BB61_3 Depth=1
	movq	%r15, %rax
	shrq	$6, %rax
	movq	(%r13,%rax,8), %rdx
	movl	$1, %eax
	movl	%r15d, %ecx
	shlq	%cl, %rax
	btq	%r15, %rdx
	jae	.LBB61_15
# %bb.12:                               #   in Loop: Header=BB61_3 Depth=1
	testq	%r14, %r14
	jne	.LBB61_14
# %bb.13:                               #   in Loop: Header=BB61_3 Depth=1
	cmpw	$0, -46(%rbp)           # 2-byte Folded Reload
	jle	.LBB61_15
.LBB61_14:                              #   in Loop: Header=BB61_3 Depth=1
	orq	%rax, -88(%rbp)         # 8-byte Folded Spill
	addl	$1, -44(%rbp)           # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB61_15:                              #   in Loop: Header=BB61_3 Depth=1
	movq	%rbx, %r14
	movq	-128(%rbp), %rbx        # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB61_19
# %bb.16:                               #   in Loop: Header=BB61_3 Depth=1
	movl	$1, %eax
	movl	%r15d, %ecx
	shlq	%cl, %rax
	cmpw	$0, -48(%rbp)           # 2-byte Folded Reload
	je	.LBB61_19
# %bb.17:                               #   in Loop: Header=BB61_3 Depth=1
	movq	%r15, %rcx
	shrq	$6, %rcx
	movq	(%rbx,%rcx,8), %rcx
	andq	%rax, %rcx
	je	.LBB61_19
# %bb.18:                               #   in Loop: Header=BB61_3 Depth=1
	orq	%rax, -104(%rbp)        # 8-byte Folded Spill
	addl	$1, -44(%rbp)           # 4-byte Folded Spill
.LBB61_19:                              #   in Loop: Header=BB61_3 Depth=1
	testq	%r14, %r14
	je	.LBB61_23
# %bb.20:                               #   in Loop: Header=BB61_3 Depth=1
	movl	$1, %eax
	movl	%r15d, %ecx
	shlq	%cl, %rax
	cmpw	$0, -50(%rbp)           # 2-byte Folded Reload
	je	.LBB61_23
# %bb.21:                               #   in Loop: Header=BB61_3 Depth=1
	movq	%r15, %rcx
	shrq	$6, %rcx
	movq	(%r14,%rcx,8), %rcx
	andq	%rax, %rcx
	je	.LBB61_23
# %bb.22:                               #   in Loop: Header=BB61_3 Depth=1
	orq	%rax, -96(%rbp)         # 8-byte Folded Spill
	addl	$1, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB61_23
.LBB61_1:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rcx
	xorl	%eax, %eax
	movq	-64(%rbp), %rsi
	jmp	.LBB61_25
.LBB61_24:
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, -80(%rbp)
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -72(%rbp)
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, -64(%rbp)
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movl	-44(%rbp), %eax         # 4-byte Reload
.LBB61_25:
	movq	16(%rbp), %rdi
	movq	%rdx, (%r8)
	movq	%rcx, (%r9)
	movq	%rsi, (%rdi)
	testl	%eax, %eax
	jns	.LBB61_28
# %bb.26:
	movl	$.L.str.39, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB61_27:
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, -80(%rbp)
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -72(%rbp)
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, -64(%rbp)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$-1, %eax
.LBB61_28:
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end61:
	.size	lwip_selscan, .Lfunc_end61-lwip_selscan
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
	testq	%rax, %rax
	je	.LBB62_2
# %bb.1:
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
.LBB62_2:
	movq	8(%rbx), %rcx
	cmpq	%rbx, select_cb_list(%rip)
	je	.LBB62_3
# %bb.6:
	testq	%rcx, %rcx
	je	.LBB62_7
# %bb.8:
	movq	%rcx, %rdx
	jmp	.LBB62_9
.LBB62_3:
	movl	$select_cb_list, %edx
	testq	%rcx, %rcx
	jne	.LBB62_4
.LBB62_9:
	movq	%rax, (%rdx)
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB62_7:
	movl	$.L.str.41, %edi
	jmp	.LBB62_5
.LBB62_4:
	movl	$.L.str.40, %edi
.LBB62_5:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end62:
	.size	lwip_unlink_select_cb, .Lfunc_end62-lwip_unlink_select_cb
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
	testl	%esi, %esi
	je	.LBB63_1
# %bb.2:
	movq	%rdi, %r15
	movl	%esi, %r14d
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movq	%r14, -56(%rbp)         # 8-byte Spill
	jmp	.LBB63_3
	.p2align	4, 0x90
.LBB63_25:                              #   in Loop: Header=BB63_3 Depth=1
	cmpw	$1, 6(%r15,%r13,2)
	sbbl	$-1, %r12d
	addq	$1, %rbx
	cmpq	%r14, %rbx
	jae	.LBB63_26
.LBB63_3:                               # =>This Inner Loop Header: Depth=1
	testb	$1, %dl
	je	.LBB63_5
# %bb.4:                                #   in Loop: Header=BB63_3 Depth=1
	movw	$0, 6(%r15,%rbx,8)
.LBB63_5:                               #   in Loop: Header=BB63_3 Depth=1
	leaq	(,%rbx,4), %r13
	cmpl	$0, (%r15,%rbx,8)
	js	.LBB63_25
# %bb.6:                                #   in Loop: Header=BB63_3 Depth=1
	testb	$8, 6(%r15,%r13,2)
	jne	.LBB63_25
# %bb.7:                                #   in Loop: Header=BB63_3 Depth=1
	callq	ukplat_lcpu_save_irqf
	movslq	(%r15,%r13,2), %rdx
	leaq	(%rdx,%rdx,2), %rcx
	leaq	sockets(,%rcx,8), %rsi
	movl	$0, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$63, %rdx
	cmovbeq	%rsi, %rcx
	ja	.LBB63_27
# %bb.8:                                #   in Loop: Header=BB63_3 Depth=1
	movq	8(%rcx), %r10
	movzwl	16(%rcx), %r9d
	movzwl	18(%rcx), %r14d
	movzwl	20(%rcx), %edi
	movl	-48(%rbp), %edx         # 4-byte Reload
	testb	$2, %dl
	jne	.LBB63_9
# %bb.11:                               #   in Loop: Header=BB63_3 Depth=1
	testb	$4, %dl
	je	.LBB63_16
# %bb.12:                               #   in Loop: Header=BB63_3 Depth=1
	movzbl	22(%rcx), %edx
	testb	%dl, %dl
	je	.LBB63_13
# %bb.15:                               #   in Loop: Header=BB63_3 Depth=1
	addb	$-1, %dl
	movb	%dl, 22(%rcx)
	jmp	.LBB63_16
.LBB63_9:                               #   in Loop: Header=BB63_3 Depth=1
	movzbl	22(%rcx), %esi
	movl	%esi, %edx
	incb	%dl
	movb	%dl, 22(%rcx)
	je	.LBB63_10
.LBB63_16:                              #   in Loop: Header=BB63_3 Depth=1
	movq	%r10, -64(%rbp)         # 8-byte Spill
	movw	%r9w, -42(%rbp)         # 2-byte Spill
	movw	%di, -44(%rbp)          # 2-byte Spill
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movzwl	4(%r15,%rbx,8), %eax
	testb	$1, %al
	je	.LBB63_20
# %bb.17:                               #   in Loop: Header=BB63_3 Depth=1
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	jne	.LBB63_19
# %bb.18:                               #   in Loop: Header=BB63_3 Depth=1
	cmpw	$0, -42(%rbp)           # 2-byte Folded Reload
	jle	.LBB63_20
.LBB63_19:                              #   in Loop: Header=BB63_3 Depth=1
	orb	$1, 6(%r15,%r13,2)
.LBB63_20:                              #   in Loop: Header=BB63_3 Depth=1
	testw	%r14w, %r14w
	movzwl	-44(%rbp), %r14d        # 2-byte Folded Reload
	je	.LBB63_23
# %bb.21:                               #   in Loop: Header=BB63_3 Depth=1
	andl	$2, %eax
	testw	%ax, %ax
	je	.LBB63_23
# %bb.22:                               #   in Loop: Header=BB63_3 Depth=1
	orb	$2, 6(%r15,%r13,2)
.LBB63_23:                              #   in Loop: Header=BB63_3 Depth=1
	testw	%r14w, %r14w
	movq	-56(%rbp), %r14         # 8-byte Reload
	movl	-48(%rbp), %edx         # 4-byte Reload
	je	.LBB63_25
# %bb.24:                               #   in Loop: Header=BB63_3 Depth=1
	orb	$4, 6(%r15,%r13,2)
	jmp	.LBB63_25
.LBB63_1:
	xorl	%r12d, %r12d
	jmp	.LBB63_26
.LBB63_27:
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	orb	$8, 6(%r15,%rbx,8)
	movl	$-1, %r12d
.LBB63_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB63_10:
	movb	%sil, 22(%rcx)
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$.L.str.39, %edi
	jmp	.LBB63_14
.LBB63_13:
	movl	$.L.str.17, %edi
.LBB63_14:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end63:
	.size	lwip_pollscan, .Lfunc_end63-lwip_pollscan
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function lwip_getaddrname
	.type	lwip_getaddrname,@function
lwip_getaddrname:                       # @lwip_getaddrname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB64_6
# %bb.1:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rbx
	movq	sockets(,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB64_6
# %bb.2:
	movq	%rdx, %r15
	movq	%rsi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%cl, %ecx
	leaq	-64(%rbp), %rsi
	leaq	-26(%rbp), %rdx
	callq	netconn_getaddr
	testb	%al, %al
	je	.LBB64_10
# %bb.3:
	movsbl	%al, %edi
	callq	err_to_errno
	movl	%eax, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB64_5
# %bb.4:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB64_21
.LBB64_5:
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
.Ltmp282:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp282
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp283:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp283
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
	jmp	.LBB64_23
.LBB64_6:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB64_8
# %bb.7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB64_9
.LBB64_8:
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
.Ltmp284:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp284
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp285:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp285
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
	jmp	.LBB64_22
.LBB64_9:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB64_22
.LBB64_10:
	leaq	sockets(,%rbx,8), %rax
	movq	(%rax), %rax
	testb	$8, (%rax)
	movb	-44(%rbp), %al
	je	.LBB64_13
# %bb.11:
	testb	%al, %al
	jne	.LBB64_13
# %bb.12:
	movl	-64(%rbp), %eax
	movl	%eax, -52(%rbp)
	movabsq	$-281474976710656, %rax # imm = 0xFFFF000000000000
	movq	%rax, -60(%rbp)
	movl	$0, -64(%rbp)
	movb	$0, -48(%rbp)
	movb	$6, -44(%rbp)
	jmp	.LBB64_15
.LBB64_13:
	cmpb	$46, %al
	je	.LBB64_15
# %bb.14:
	cmpb	$6, %al
	jne	.LBB64_26
.LBB64_15:
	movw	$2588, -96(%rbp)        # imm = 0xA1C
	movzwl	-26(%rbp), %edi
	callq	lwip_htons
	movw	%ax, -94(%rbp)
	movl	$0, -92(%rbp)
	movaps	-64(%rbp), %xmm0
	movups	%xmm0, -88(%rbp)
	movzbl	-48(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB64_16:
	movl	(%r15), %eax
	movzbl	-96(%rbp), %ecx
	cmpl	%ecx, %eax
	jbe	.LBB64_18
# %bb.17:
	movl	%ecx, (%r15)
	movl	%ecx, %eax
.LBB64_18:
	movl	%eax, %edx
	leaq	-96(%rbp), %rsi
	movq	%r14, %rdi
	callq	memcpy
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB64_20
# %bb.19:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB64_25
.LBB64_20:
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
.Ltmp286:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp286
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp287:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp287
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
	jmp	.LBB64_24
.LBB64_21:
	callq	__errno
	movl	%ebx, (%rax)
.LBB64_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB64_23:
	movl	$-1, %esi
.LBB64_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB64_25:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB64_24
.LBB64_26:
	movw	$528, -96(%rbp)         # imm = 0x210
	movzwl	-26(%rbp), %edi
	callq	lwip_htons
	movw	%ax, -94(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -92(%rbp)
	leaq	-88(%rbp), %rdi
	movl	$8, %edx
	xorl	%esi, %esi
	callq	memset
	jmp	.LBB64_16
.Lfunc_end64:
	.size	lwip_getaddrname, .Lfunc_end64-lwip_getaddrname
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$63, %edi
	ja	.LBB65_7
# %bb.1:
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rcx
	movq	sockets(,%rcx,8), %rax
	testq	%rax, %rax
	je	.LBB65_7
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %esi
	je	.LBB65_11
# %bb.3:
	cmpl	$3, %esi
	jne	.LBB65_15
# %bb.4:
	leaq	sockets(,%rcx,8), %r12
	movzbl	108(%rax), %r14d
	andl	$2, %r14d
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB65_6
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB65_25
.LBB65_6:
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
.Ltmp288:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp288
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp289:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp289
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
	jmp	.LBB65_26
.LBB65_7:
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB65_9
# %bb.8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB65_10
.LBB65_9:
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
.Ltmp290:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp290
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp291:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp291
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
	jmp	.LBB65_19
.LBB65_10:
	callq	__errno
	movl	$9, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB65_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB65_20:
	movl	$-1, %ebx
.LBB65_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB65_11:
	testl	$-16388, %edx           # imm = 0xBFFC
	je	.LBB65_22
# %bb.12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB65_14
# %bb.13:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB65_18
.LBB65_14:
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
.Ltmp292:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp292
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp293:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp293
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
	jmp	.LBB65_20
.LBB65_15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB65_17
# %bb.16:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB65_18
.LBB65_17:
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
.Ltmp294:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp294
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp295:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp295
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
	jmp	.LBB65_20
.LBB65_18:
	callq	__errno
	movl	$88, (%rax)
	jmp	.LBB65_19
.LBB65_22:
	movb	108(%rax), %cl
	movl	%ecx, %ebx
	andb	$-3, %bl
	orb	$2, %cl
	testl	$16384, %edx            # imm = 0x4000
	movzbl	%bl, %edx
	movzbl	%cl, %ecx
	cmovel	%edx, %ecx
	movb	%cl, 108(%rax)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB65_24
# %bb.23:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB65_32
.LBB65_24:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
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
.Ltmp296:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp296
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp297:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp297
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
	jmp	.LBB65_21
.LBB65_25:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB65_26:
	shll	$13, %r14d
	movq	(%r12), %rax
	movl	$240, %ecx
	andl	(%rax), %ecx
	movl	$2, %ebx
	cmpl	$16, %ecx
	jne	.LBB65_30
# %bb.27:
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_lock
	movq	(%r12), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB65_31
# %bb.28:
	testb	$32, 82(%rax)
	jne	.LBB65_31
# %bb.29:
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
.LBB65_30:
	orl	%r14d, %ebx
	jmp	.LBB65_21
.LBB65_31:
	movl	$lock_tcpip_core, %edi
	callq	sys_mutex_unlock
	xorl	%ebx, %ebx
	orl	%r14d, %ebx
	jmp	.LBB65_21
.LBB65_32:
	callq	__errno
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB65_21
.Lfunc_end65:
	.size	lwip_fcntl, .Lfunc_end65-lwip_fcntl
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
	testl	%ecx, %ecx
	js	.LBB66_7
# %bb.1:
	cmpl	$10, %edi
	je	.LBB66_10
# %bb.2:
	cmpl	$2, %edi
	jne	.LBB66_14
# %bb.3:
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movl	%ecx, %edx
	callq	ip4addr_ntoa_r
	testq	%rax, %rax
	jne	.LBB66_21
# %bb.4:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB66_6
# %bb.5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB66_17
.LBB66_6:
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
.Ltmp298:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp298
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp299:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp299
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
.LBB66_7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB66_9
# %bb.8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB66_17
.LBB66_9:
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
.Ltmp300:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp300
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp301:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp301
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
.LBB66_10:
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movl	%ecx, %edx
	callq	ip6addr_ntoa_r
	testq	%rax, %rax
	jne	.LBB66_21
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB66_13
# %bb.12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB66_17
.LBB66_13:
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
.Ltmp302:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp302
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp303:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp303
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
.LBB66_14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB66_16
# %bb.15:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB66_18
.LBB66_16:
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
.Ltmp304:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp304
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp305:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp305
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
.LBB66_17:
	callq	__errno
	movl	$28, (%rax)
	jmp	.LBB66_19
.LBB66_18:
	callq	__errno
	movl	$106, (%rax)
.LBB66_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB66_20:
	xorl	%eax, %eax
.LBB66_21:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end66:
	.size	lwip_inet_ntop, .Lfunc_end66-lwip_inet_ntop
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
	cmpl	$10, %edi
	je	.LBB67_3
# %bb.1:
	cmpl	$2, %edi
	jne	.LBB67_5
# %bb.2:
	movq	%rsi, %rdi
	movq	%r14, %rsi
	callq	ip4addr_aton
	movl	%eax, %ebx
	jmp	.LBB67_10
.LBB67_3:
	leaq	-48(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	ip6addr_aton
	movl	%eax, %ebx
	testl	%eax, %eax
	je	.LBB67_10
# %bb.4:
	leaq	-48(%rbp), %rsi
	movl	$16, %edx
	movq	%r14, %rdi
	callq	memcpy
	jmp	.LBB67_10
.LBB67_5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB67_8
# %bb.6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB67_7
.LBB67_8:
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
.Ltmp306:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp306
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	_SOCK_NET_SET_ERRNO
.Ltmp307:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp307
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
	jmp	.LBB67_9
.LBB67_7:
	callq	__errno
	movl	$106, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB67_9:
	movl	$-1, %ebx
.LBB67_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end67:
	.size	lwip_inet_pton, .Lfunc_end67-lwip_inet_pton
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
.Lfunc_end68:
	.size	_SOCK_NET_GET_ERRNO, .Lfunc_end68-_SOCK_NET_GET_ERRNO
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
	je	.LBB69_1
# %bb.3:
	movq	%rdi, %rbx
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	movl	(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB69_4
# %bb.5:
	addl	$-1, %eax
	movl	%eax, (%rbx)
	jne	.LBB69_10
# %bb.6:
	movq	$0, 8(%rbx)
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB69_9
	.p2align	4, 0x90
.LBB69_7:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rbx
	callq	uk_thread_wake
	testq	%rbx, %rbx
	jne	.LBB69_7
.LBB69_9:
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
.LBB69_10:
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB69_1:
	movl	$.L.str, %edi
	movl	$.L.str.26, %esi
	jmp	.LBB69_2
.LBB69_4:
	movl	$.L.str, %edi
	movl	$.L.str.27, %esi
.LBB69_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end69:
	.size	uk_mutex_unlock, .Lfunc_end69-uk_mutex_unlock
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
	cmpq	%rcx, %rax
	jb	.LBB70_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB70_2
.LBB70_3:
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
.Ltmp308:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp308
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
.Ltmp309:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp309
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
	movl	-12(%rbp), %eax
	jmp	.LBB70_4
.LBB70_2:
	callq	_sock_net_close
	movl	%eax, -12(%rbp)
.LBB70_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end70:
	.size	sock_net_close, .Lfunc_end70-sock_net_close
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
	movq	%rsp, %r8
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %eax
	cmpq	%rax, %r8
	jb	.LBB71_3
# %bb.1:
	#APP
	movq	%rsp, %r8
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %eax
	cmpq	%rax, %r8
	jbe	.LBB71_2
.LBB71_3:
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
.Ltmp310:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp310
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
.Ltmp311:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp311
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
	movl	-28(%rbp), %eax
	jmp	.LBB71_4
.LBB71_2:
	callq	_sock_net_read
	movl	%eax, -28(%rbp)
.LBB71_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%r12
	popq	%r13
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end71:
	.size	sock_net_read, .Lfunc_end71-sock_net_read
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
	cmpq	%rcx, %rax
	jb	.LBB72_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
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
.Ltmp312:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp312
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
.Ltmp313:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp313
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
	movl	-20(%rbp), %eax
	jmp	.LBB72_4
.LBB72_2:
	callq	_sock_net_write
	movl	%eax, -20(%rbp)
.LBB72_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%r12
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end72:
	.size	sock_net_write, .Lfunc_end72-sock_net_write
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
	movq	%rsp, %r8
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %eax
	cmpq	%rax, %r8
	jb	.LBB73_3
# %bb.1:
	#APP
	movq	%rsp, %r8
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %eax
	cmpq	%rax, %r8
	jbe	.LBB73_2
.LBB73_3:
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
.Ltmp314:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp314
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
.Ltmp315:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp315
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
	movl	-28(%rbp), %eax
	jmp	.LBB73_4
.LBB73_2:
	movq	112(%rdi), %rax
	movl	8(%rax), %edi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	callq	lwip_ioctl
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -28(%rbp)
.LBB73_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%r12
	popq	%r13
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end73:
	.size	sock_net_ioctl, .Lfunc_end73-sock_net_ioctl
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
	testq	%rsi, %rsi
	je	.LBB74_16
# %bb.1:
	movq	%rcx, %r14
	testq	%rcx, %rcx
	je	.LBB74_17
# %bb.2:
	movq	%r8, %r15
	testq	%r8, %r8
	je	.LBB74_18
# %bb.3:
	movq	%rsi, %rbx
	testb	$8, (%rdi)
	movb	20(%rsi), %al
	je	.LBB74_6
# %bb.4:
	testb	%al, %al
	jne	.LBB74_6
# %bb.5:
	movl	(%rbx), %eax
	movl	%eax, 12(%rbx)
	movabsq	$-281474976710656, %rax # imm = 0xFFFF000000000000
	movq	%rax, 4(%rbx)
	movl	$0, (%rbx)
	movb	$0, 16(%rbx)
	movb	$6, 20(%rbx)
	jmp	.LBB74_8
.LBB74_6:
	cmpb	$46, %al
	je	.LBB74_8
# %bb.7:
	cmpb	$6, %al
	jne	.LBB74_15
.LBB74_8:
	movw	$2588, -56(%rbp)        # imm = 0xA1C
	movzwl	%dx, %edi
	callq	lwip_htons
	movw	%ax, -54(%rbp)
	movl	$0, -52(%rbp)
	movups	(%rbx), %xmm0
	movups	%xmm0, -48(%rbp)
	movzbl	16(%rbx), %eax
	movl	%eax, -32(%rbp)
	movl	$28, %eax
.LBB74_9:
	movl	(%r15), %ecx
	movl	$1, %ebx
	cmpl	%eax, %ecx
	jb	.LBB74_13
# %bb.11:
	xorl	%ebx, %ebx
	cmpl	%eax, %ecx
	jbe	.LBB74_13
# %bb.12:
	movl	%eax, (%r15)
	jmp	.LBB74_14
.LBB74_13:
	movl	%ecx, %eax
.LBB74_14:
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
.LBB74_15:
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
	movzbl	-56(%rbp), %eax
	jmp	.LBB74_9
.LBB74_16:
	movl	$.L.str.34, %edi
	jmp	.LBB74_19
.LBB74_17:
	movl	$.L.str.35, %edi
	jmp	.LBB74_19
.LBB74_18:
	movl	$.L.str.36, %edi
.LBB74_19:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str, %edi
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end74:
	.size	lwip_sock_make_addr, .Lfunc_end74-lwip_sock_make_addr
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
