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
	movl	%ecx, %eax
	andl	$240, %eax
	cmpl	$224, %eax
	jne	.LBB1_2
# %bb.1:
	movq	ip4_default_multicast_netif(%rip), %rax
	testq	%rax, %rax
	je	.LBB1_2
.LBB1_15:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB1_2:
	movq	netif_list(%rip), %rax
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_3 Depth=1
	movq	(%rax), %rax
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB1_10
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	movzbl	261(%rax), %edx
	movl	%edx, %esi
	andl	$5, %esi
	cmpl	$5, %esi
	jne	.LBB1_9
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	.LBB1_9
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	xorl	%ecx, %esi
	testl	%esi, 32(%rax)
	je	.LBB1_15
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	testb	$2, %dl
	jne	.LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	cmpl	56(%rax), %ecx
	jne	.LBB1_9
	jmp	.LBB1_15
.LBB1_10:
	movq	netif_default(%rip), %rax
	testq	%rax, %rax
	je	.LBB1_14
# %bb.11:
	movb	261(%rax), %dl
	andb	$5, %dl
	cmpb	$5, %dl
	jne	.LBB1_14
# %bb.12:
	cmpb	$127, %cl
	je	.LBB1_14
# %bb.13:
	cmpl	$0, 8(%rax)
	jne	.LBB1_15
.LBB1_14:
	addw	$1, lwip_stats+86(%rip)
	xorl	%eax, %eax
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
	cmpb	$64, %al
	jne	.LBB2_5
# %bb.1:
	movq	%rsi, %r12
	shll	$2, %r14d
	andl	$60, %r14d
	movzwl	2(%r15), %edi
	callq	lwip_htons
	movl	%eax, %ebx
	cmpw	16(%r13), %ax
	jae	.LBB2_3
# %bb.2:
	movzwl	%bx, %esi
	movq	%r13, %rdi
	callq	pbuf_realloc
.LBB2_3:
	movzwl	18(%r13), %eax
	cmpl	%eax, %r14d
	jbe	.LBB2_8
.LBB2_4:
	movq	%r13, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+82(%rip)
	jmp	.LBB2_6
.LBB2_5:
	movq	%r13, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+92(%rip)
.LBB2_6:
	addw	$1, lwip_stats+78(%rip)
.LBB2_7:
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
.LBB2_8:
	cmpb	$20, %r14b
	jb	.LBB2_4
# %bb.9:
	cmpw	16(%r13), %bx
	ja	.LBB2_4
# %bb.10:
	movq	%r12, %rbx
	testq	%r12, %r12
	je	.LBB2_12
# %bb.11:
	testb	$1, 249(%rbx)
	je	.LBB2_14
.LBB2_12:
	movzwl	%r14w, %esi
	movq	%r15, %rdi
	callq	inet_chksum
	testw	%ax, %ax
	je	.LBB2_14
# %bb.13:
	movq	%r13, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+80(%rip)
	jmp	.LBB2_6
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
	movb	261(%rbx), %al
	cmpl	$224, %ecx
	jne	.LBB2_17
# %bb.15:
	testb	$1, %al
	je	.LBB2_24
# %bb.16:
	cmpl	$0, 8(%rbx)
	movq	%rbx, %r12
	jne	.LBB2_25
	jmp	.LBB2_24
.LBB2_17:
	testb	$1, %al
	je	.LBB2_23
# %bb.18:
	movl	8(%rbx), %eax
	testl	%eax, %eax
	je	.LBB2_23
# %bb.19:
	cmpl	%eax, %edi
	je	.LBB2_21
# %bb.20:
	movq	%rbx, %rsi
	callq	ip4_addr_isbroadcast_u32
	testb	%al, %al
	je	.LBB2_22
.LBB2_21:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r12
	jmp	.LBB2_25
.LBB2_22:
	movzbl	ip_data+60(%rip), %edi
.LBB2_23:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$127, %dil
	jne	.LBB2_36
.LBB2_24:
	xorl	%r12d, %r12d
.LBB2_25:
	movl	ip_data+36(%rip), %edi
	movq	%rbx, %rsi
	callq	ip4_addr_isbroadcast_u32
	testb	%al, %al
	jne	.LBB2_27
# %bb.26:
	movl	$240, %eax
	andl	ip_data+36(%rip), %eax
	cmpl	$224, %eax
	jne	.LBB2_28
.LBB2_27:
	movq	%r13, %rdi
	callq	pbuf_free
	jmp	.LBB2_6
.LBB2_28:
	testq	%r12, %r12
	je	.LBB2_46
# %bb.29:
	movzwl	6(%r15), %eax
	testl	$65343, %eax            # imm = 0xFF3F
	je	.LBB2_32
# %bb.30:
	movq	%r13, %rdi
	callq	ip4_reass
	testq	%rax, %rax
	je	.LBB2_7
# %bb.31:
	movq	%rax, %r13
	movq	8(%rax), %r15
.LBB2_32:
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
	cmpb	$1, %al
	je	.LBB2_47
# %bb.33:
	cmpb	$6, %al
	je	.LBB2_48
# %bb.34:
	cmpb	$17, %al
	jne	.LBB2_49
# %bb.35:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	udp_input
	jmp	.LBB2_53
.LBB2_36:
	movq	netif_list(%rip), %r12
	jmp	.LBB2_39
.LBB2_37:                               #   in Loop: Header=BB2_39 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_38:                               #   in Loop: Header=BB2_39 Depth=1
	movq	(%r12), %r12
.LBB2_39:                               # =>This Inner Loop Header: Depth=1
	testq	%r12, %r12
	je	.LBB2_24
# %bb.40:                               #   in Loop: Header=BB2_39 Depth=1
	cmpq	%rbx, %r12
	je	.LBB2_38
# %bb.41:                               #   in Loop: Header=BB2_39 Depth=1
	testb	$1, 261(%r12)
	je	.LBB2_37
# %bb.42:                               #   in Loop: Header=BB2_39 Depth=1
	movl	8(%r12), %eax
	testl	%eax, %eax
	je	.LBB2_37
# %bb.43:                               #   in Loop: Header=BB2_39 Depth=1
	movl	ip_data+60(%rip), %edi
	cmpl	%eax, %edi
	je	.LBB2_45
# %bb.44:                               #   in Loop: Header=BB2_39 Depth=1
	movq	%r12, %rsi
	callq	ip4_addr_isbroadcast_u32
	testb	%al, %al
	je	.LBB2_37
.LBB2_45:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_25
.LBB2_46:
	addw	$1, lwip_stats+78(%rip)
	movq	%r13, %rdi
	callq	pbuf_free
	jmp	.LBB2_7
.LBB2_47:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	icmp_input
	jmp	.LBB2_53
.LBB2_48:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	tcp_input
	jmp	.LBB2_53
.LBB2_49:
	movl	ip_data+60(%rip), %edi
	movq	%r12, %rsi
	callq	ip4_addr_isbroadcast_u32
	testb	%al, %al
	jne	.LBB2_52
# %bb.50:
	movl	$240, %eax
	andl	ip_data+60(%rip), %eax
	cmpl	$224, %eax
	je	.LBB2_52
# %bb.51:
	movzwl	%r14w, %esi
	movq	%r13, %rdi
	callq	pbuf_header_force
	movq	%r13, %rdi
	movl	$2, %esi
	callq	icmp_dest_unreach
.LBB2_52:
	addw	$1, lwip_stats+88(%rip)
	addw	$1, lwip_stats+78(%rip)
	movq	%r13, %rdi
	callq	pbuf_free
.LBB2_53:
	xorps	%xmm0, %xmm0
	movups	%xmm0, ip_data(%rip)
	movq	$0, ip_data+16(%rip)
	movw	$0, ip_data+32(%rip)
	movl	$0, ip_data+36(%rip)
	movl	$0, ip_data+60(%rip)
	jmp	.LBB2_7
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
	testq	%rdx, %rdx
	je	.LBB3_4
# %bb.1:
	testq	%rsi, %rsi
	je	.LBB3_3
# %bb.2:
	cmpl	$0, (%rsi)
	jne	.LBB3_4
.LBB3_3:
	leaq	8(%rax), %rsi
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
	jne	.LBB4_1
# %bb.3:
	movq	%rdx, %r15
	movq	%rdi, %r13
	movq	16(%rbp), %rdi
	testq	%rdx, %rdx
	je	.LBB4_11
# %bb.4:
	movl	%r9d, %r12d
	movl	%ecx, %r14d
	movq	%rsi, %rbx
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movl	$20, %esi
	movq	%r13, %rdi
	callq	pbuf_add_header
	testb	%al, %al
	jne	.LBB4_5
# %bb.6:
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	cmpw	$19, 18(%r13)
	jbe	.LBB4_7
# %bb.8:
	movq	8(%r13), %rbx
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
	movl	$ip_addr_any, %eax
	cmovneq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, 12(%rbx)
	movw	$0, 10(%rbx)
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB4_10
# %bb.9:
	testb	$1, 248(%rdi)
	je	.LBB4_13
.LBB4_10:
	movq	%rbx, %rdi
	movl	$20, %esi
	callq	inet_chksum
	movq	16(%rbp), %rdi
	movw	%ax, 10(%rbx)
	jmp	.LBB4_13
.LBB4_11:
	cmpw	$19, 18(%r13)
	ja	.LBB4_12
.LBB4_5:
	addw	$1, lwip_stats+92(%rip)
	movb	$-2, %al
	jmp	.LBB4_14
.LBB4_12:
	movq	8(%r13), %rax
	movl	16(%rax), %eax
	movl	%eax, -48(%rbp)
	leaq	-48(%rbp), %r15
.LBB4_13:
	addw	$1, lwip_stats+72(%rip)
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	*192(%rdi)
.LBB4_14:
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
	pushq	%rbx
	pushq	%rax
	cmpb	$1, 22(%rdi)
	jne	.LBB6_23
# %bb.1:
	movl	(%rdx), %r10d
	movl	%r10d, %eax
	andl	$240, %eax
	cmpl	$224, %eax
	jne	.LBB6_4
# %bb.2:
	movq	ip4_default_multicast_netif(%rip), %rax
	testq	%rax, %rax
	je	.LBB6_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_18:
	testq	%rsi, %rsi
	je	.LBB6_20
# %bb.19:
	cmpl	$0, (%rsi)
	jne	.LBB6_21
.LBB6_20:
	leaq	8(%rax), %rsi
.LBB6_21:
	movq	%rax, (%rsp)
	movzbl	%cl, %ecx
	movzbl	%r8b, %r8d
	movzbl	%r9b, %r9d
	callq	ip4_output_if_src
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_22
.LBB6_4:
	movq	netif_list(%rip), %rax
	jmp	.LBB6_5
	.p2align	4, 0x90
.LBB6_11:                               #   in Loop: Header=BB6_5 Depth=1
	movq	(%rax), %rax
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB6_12
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=1
	movzbl	261(%rax), %r11d
	movl	%r11d, %ebx
	andl	$5, %ebx
	cmpl	$5, %ebx
	jne	.LBB6_11
# %bb.7:                                #   in Loop: Header=BB6_5 Depth=1
	movl	8(%rax), %ebx
	testl	%ebx, %ebx
	je	.LBB6_11
# %bb.8:                                #   in Loop: Header=BB6_5 Depth=1
	xorl	%r10d, %ebx
	testl	%ebx, 32(%rax)
	je	.LBB6_17
# %bb.9:                                #   in Loop: Header=BB6_5 Depth=1
	testb	$2, %r11b
	jne	.LBB6_11
# %bb.10:                               #   in Loop: Header=BB6_5 Depth=1
	cmpl	56(%rax), %r10d
	jne	.LBB6_11
	jmp	.LBB6_17
.LBB6_12:
	movq	netif_default(%rip), %rax
	testq	%rax, %rax
	je	.LBB6_16
# %bb.13:
	movb	261(%rax), %bl
	andb	$5, %bl
	cmpb	$5, %bl
	jne	.LBB6_16
# %bb.14:
	cmpb	$127, %r10b
	je	.LBB6_16
# %bb.15:
	cmpl	$0, 8(%rax)
	je	.LBB6_16
.LBB6_17:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB6_18
	jmp	.LBB6_21
.LBB6_16:
	movl	$42, __A_VARIABLE(%rip)
	addw	$2, lwip_stats+86(%rip)
	movb	$-4, %al
.LBB6_22:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB6_23:
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
