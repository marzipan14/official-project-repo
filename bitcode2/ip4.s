	.text
	.file	"ip4.c"
	.globl	ip4_set_default_multicast_netif # -- Begin function ip4_set_default_multicast_netif
	.p2align	4, 0x90
	.type	ip4_set_default_multicast_netif,@function
ip4_set_default_multicast_netif:        # @ip4_set_default_multicast_netif
# %bb.0:
	movq	%rdi, ip4_default_multicast_netif(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	ip4_set_default_multicast_netif, .Lfunc_end0-ip4_set_default_multicast_netif
                                        # -- End function
	.globl	ip4_route               # -- Begin function ip4_route
	.p2align	4, 0x90
	.type	ip4_route,@function
ip4_route:                              # @ip4_route
# %bb.0:
	movl	(%rdi), %ecx
	movl	%ecx, %edx
	andl	$240, %edx
	movq	ip4_default_multicast_netif(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %edx
	jne	.LBB1_2
# %bb.1:
	testq	%rax, %rax
	jne	.LBB1_17
.LBB1_2:
	movq	netif_list(%rip), %rax
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_3 Depth=1
	movq	(%rax), %rax
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_11
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	movzbl	261(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB1_10
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	je	.LBB1_10
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	movl	8(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB1_10
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	xorl	%ecx, %esi
	andl	32(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_17
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	jne	.LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_3 Depth=1
	cmpl	56(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_10
	jmp	.LBB1_17
.LBB1_11:
	movq	netif_default(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_16
# %bb.12:
	movzbl	261(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB1_16
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	je	.LBB1_16
# %bb.14:
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_16
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$127, %cl
	jne	.LBB1_17
.LBB1_16:
	addw	$1, lwip_stats+86(%rip)
	xorl	%eax, %eax
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	ip4_route, .Lfunc_end1-ip4_route
                                        # -- End function
	.globl	ip4_input               # -- Begin function ip4_input
	.p2align	4, 0x90
	.type	ip4_input,@function
ip4_input:                              # @ip4_input
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
	addw	$1, lwip_stats+74(%rip)
	movq	8(%rdi), %r15
	movzbl	(%r15), %r14d
	movl	%r14d, %eax
	andb	$-16, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$64, %al
	jne	.LBB2_7
# %bb.1:
	movq	%rsi, %r12
	shll	$2, %r14d
	andl	$60, %r14d
	movzwl	2(%r15), %edi
	callq	lwip_htons
	movl	%eax, %ebx
	cmpw	16(%r13), %ax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB2_3
# %bb.2:
	movzwl	%bx, %esi
	movq	%r13, %rdi
	callq	pbuf_realloc
	movl	$42, __A_VARIABLE(%rip)
.LBB2_3:
	movzwl	18(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r14d
	ja	.LBB2_6
# %bb.4:
	cmpw	16(%r13), %bx
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB2_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$19, %r14b
	ja	.LBB2_10
.LBB2_6:
	movq	%r13, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+82(%rip)
	jmp	.LBB2_8
.LBB2_7:
	movq	%r13, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+92(%rip)
.LBB2_8:
	addw	$1, lwip_stats+78(%rip)
.LBB2_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_10:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB2_12
# %bb.11:
	movzwl	248(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %eax              # imm = 0x100
	je	.LBB2_14
.LBB2_12:
	movzwl	%r14w, %esi
	movq	%r15, %rdi
	callq	inet_chksum
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB2_14
# %bb.13:
	movq	%r13, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+80(%rip)
	jmp	.LBB2_8
.LBB2_14:
	movl	16(%r15), %edi
	movl	%edi, ip_data+60(%rip)
	movb	$0, ip_data+80(%rip)
	movl	$0, ip_data+72(%rip)
	movq	$0, ip_data+64(%rip)
	movb	$0, ip_data+76(%rip)
	movl	12(%r15), %eax
	movl	%eax, ip_data+36(%rip)
	movb	$0, ip_data+56(%rip)
	movl	$0, ip_data+48(%rip)
	movq	$0, ip_data+40(%rip)
	movb	$0, ip_data+52(%rip)
	movl	%edi, %ecx
	andl	$240, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movb	261(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %ecx
	jne	.LBB2_18
# %bb.15:
	testb	$1, %al
	je	.LBB2_17
# %bb.16:
	cmpl	$0, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_23
.LBB2_17:
	movq	%r12, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_26
.LBB2_18:
	testb	$1, %al
	je	.LBB2_25
# %bb.19:
	movl	8(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_25
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edi
	je	.LBB2_22
# %bb.21:
	movq	%r12, %rsi
	callq	ip4_addr_isbroadcast_u32
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB2_24
.LBB2_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_23:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rbx
	jmp	.LBB2_27
.LBB2_24:
	movzbl	ip_data+60(%rip), %edi
.LBB2_25:
	movq	%r12, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$127, %dil
	jne	.LBB2_38
.LBB2_26:
	xorl	%r12d, %r12d
.LBB2_27:
	movl	ip_data+36(%rip), %edi
	movq	%rbx, %rsi
	callq	ip4_addr_isbroadcast_u32
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB2_29
# %bb.28:
	movl	$240, %eax
	andl	ip_data+36(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %eax
	jne	.LBB2_30
.LBB2_29:
	movq	%r13, %rdi
	callq	pbuf_free
	jmp	.LBB2_8
.LBB2_30:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB2_48
# %bb.31:
	movzwl	6(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$65343, %eax            # imm = 0xFF3F
	je	.LBB2_34
# %bb.32:
	movq	%r13, %rdi
	callq	ip4_reass
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_9
# %bb.33:
	movq	%rax, %r13
	movq	8(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB2_34:
	movq	%r12, ip_data(%rip)
	movq	%rbx, ip_data+8(%rip)
	movq	%r15, ip_data+16(%rip)
	movzbl	(%r15), %eax
	shll	$2, %eax
	andl	$60, %eax
	movw	%ax, ip_data+32(%rip)
	movzbl	%r14b, %esi
	movq	%r13, %rdi
	callq	pbuf_remove_header
	movb	9(%r15), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	je	.LBB2_49
# %bb.35:
	cmpb	$6, %al
	je	.LBB2_50
# %bb.36:
	cmpb	$17, %al
	jne	.LBB2_51
# %bb.37:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	udp_input
	jmp	.LBB2_55
.LBB2_38:
	movq	netif_list(%rip), %r12
	jmp	.LBB2_41
.LBB2_39:                               #   in Loop: Header=BB2_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_40:                               #   in Loop: Header=BB2_41 Depth=1
	movq	(%r12), %r12
.LBB2_41:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB2_26
# %bb.42:                               #   in Loop: Header=BB2_41 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r12
	je	.LBB2_40
# %bb.43:                               #   in Loop: Header=BB2_41 Depth=1
	testb	$1, 261(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_39
# %bb.44:                               #   in Loop: Header=BB2_41 Depth=1
	movl	8(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_39
# %bb.45:                               #   in Loop: Header=BB2_41 Depth=1
	movl	ip_data+60(%rip), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edi
	je	.LBB2_47
# %bb.46:                               #   in Loop: Header=BB2_41 Depth=1
	movq	%r12, %rsi
	callq	ip4_addr_isbroadcast_u32
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB2_39
.LBB2_47:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_27
.LBB2_48:
	addw	$1, lwip_stats+78(%rip)
	movq	%r13, %rdi
	callq	pbuf_free
	jmp	.LBB2_9
.LBB2_49:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	icmp_input
	jmp	.LBB2_55
.LBB2_50:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	tcp_input
	jmp	.LBB2_55
.LBB2_51:
	movl	ip_data+60(%rip), %edi
	movq	%r12, %rsi
	callq	ip4_addr_isbroadcast_u32
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB2_54
# %bb.52:
	movl	$240, %eax
	andl	ip_data+60(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %eax
	je	.LBB2_54
# %bb.53:
	movzwl	%r14w, %esi
	movq	%r13, %rdi
	callq	pbuf_header_force
	movq	%r13, %rdi
	movl	$2, %esi
	callq	icmp_dest_unreach
	movl	$42, __A_VARIABLE(%rip)
.LBB2_54:
	addw	$1, lwip_stats+88(%rip)
	addw	$1, lwip_stats+78(%rip)
	movq	%r13, %rdi
	callq	pbuf_free
.LBB2_55:
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, ip_data(%rip)
	movq	$0, ip_data+16(%rip)
	movw	$0, ip_data+32(%rip)
	movl	$0, ip_data+36(%rip)
	movl	$0, ip_data+60(%rip)
	jmp	.LBB2_9
.Lfunc_end2:
	.size	ip4_input, .Lfunc_end2-ip4_input
                                        # -- End function
	.globl	ip4_output_if           # -- Begin function ip4_output_if
	.p2align	4, 0x90
	.type	ip4_output_if,@function
ip4_output_if:                          # @ip4_output_if
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	16(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB3_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB3_3
# %bb.2:
	cmpl	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_4
.LBB3_3:
	leaq	8(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB3_4:
	movq	%rax, (%rsp)
	movzbl	%cl, %ecx
	movzbl	%r8b, %r8d
	movzbl	%r9b, %r9d
	callq	ip4_output_if_src
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ip4_output_if, .Lfunc_end3-ip4_output_if
                                        # -- End function
	.globl	ip4_output_if_src       # -- Begin function ip4_output_if_src
	.p2align	4, 0x90
	.type	ip4_output_if_src,@function
ip4_output_if_src:                      # @ip4_output_if_src
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	cmpb	$1, 22(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_1
# %bb.3:
	movq	%rdx, %r15
	movq	%rdi, %r13
	movq	16(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB4_12
# %bb.4:
	movl	%r9d, %r12d
	movl	%ecx, %r14d
	movq	%rsi, %rbx
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movl	$20, %esi
	movq	%r13, %rdi
	callq	pbuf_add_header
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB4_6
# %bb.5:
	addw	$1, lwip_stats+92(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-2, %al
	jmp	.LBB4_16
.LBB4_12:
	cmpw	$19, 18(%r13)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB4_14
# %bb.13:
	addw	$1, lwip_stats+92(%rip)
	movb	$-2, %al
	jmp	.LBB4_16
.LBB4_6:
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	8(%r13), %rbx
	cmpw	$19, 18(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB4_7
# %bb.8:
	movb	%r14b, 8(%rbx)
	movb	%r12b, 9(%rbx)
	movl	(%r15), %eax
	movl	%eax, 16(%rbx)
	movb	$69, (%rbx)
	movl	-52(%rbp), %eax         # 4-byte Reload
	movb	%al, 1(%rbx)
	movzwl	16(%r13), %edi
	callq	lwip_htons
	movw	%ax, 2(%rbx)
	movw	$0, 6(%rbx)
	movzwl	ip_id(%rip), %edi
	callq	lwip_htons
	movw	%ax, 4(%rbx)
	addw	$1, ip_id(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$ip_addr_any, %eax
	cmovneq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB4_10
# %bb.9:
	movzwl	248(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB4_11
.LBB4_10:
	movq	%rbx, %rdi
	movl	$20, %esi
	callq	inet_chksum
	movq	16(%rbp), %rdi
	movw	%ax, 10(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_11:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_15
.LBB4_14:
	movq	8(%r13), %rax
	movl	16(%rax), %eax
	movl	%eax, -48(%rbp)
	leaq	-48(%rbp), %r15
.LBB4_15:
	movl	$42, __A_VARIABLE(%rip)
	addw	$1, lwip_stats+72(%rip)
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	*192(%rdi)
.LBB4_16:
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
.LBB4_1:
	movl	$.L.str, %edi
	jmp	.LBB4_2
.LBB4_7:
	movl	$.L.str.3, %edi
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
	.size	ip4_output_if_src, .Lfunc_end4-ip4_output_if_src
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
	je	.LBB5_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB5_2:
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
	movl	$uk_pr_crit.__str.4, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	uk_pr_crit, .Lfunc_end5-uk_pr_crit
                                        # -- End function
	.globl	ip4_output              # -- Begin function ip4_output
	.p2align	4, 0x90
	.type	ip4_output,@function
ip4_output:                             # @ip4_output
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	cmpb	$1, 22(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_10
# %bb.1:
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	%rdx, %rdi
	callq	ip4_route
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_2
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB6_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	movl	-44(%rbp), %edx         # 4-byte Reload
	je	.LBB6_7
# %bb.6:
	cmpl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_8
.LBB6_7:
	movq	%rax, %r12
	addq	$8, %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_8
.LBB6_2:
	addw	$1, lwip_stats+86(%rip)
	movb	$-4, %al
	jmp	.LBB6_9
.LBB6_4:
	movl	-44(%rbp), %edx         # 4-byte Reload
.LBB6_8:
	movq	%rax, (%rsp)
	movzbl	%r15b, %ecx
	movzbl	%r14b, %r8d
	movzbl	%dl, %r9d
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	ip4_output_if_src
	movl	$42, __A_VARIABLE(%rip)
.LBB6_9:
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
.LBB6_10:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end6:
	.size	ip4_output, .Lfunc_end6-ip4_output
                                        # -- End function
	.type	ip4_default_multicast_netif,@object # @ip4_default_multicast_netif
	.local	ip4_default_multicast_netif
	.comm	ip4_default_multicast_netif,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"p->ref == 1"
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
	.asciz	"check that first pbuf can hold struct ip_hdr"
	.size	.L.str.3, 45

	.type	ip_id,@object           # @ip_id
	.local	ip_id
	.comm	ip_id,2,2
	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.4,@object # @uk_pr_crit.__str.4
uk_pr_crit.__str.4:
	.asciz	"ip4.c"
	.size	uk_pr_crit.__str.4, 6

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
