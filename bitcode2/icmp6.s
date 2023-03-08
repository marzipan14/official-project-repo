	.text
	.file	"icmp6.c"
	.globl	icmp6_input             # -- Begin function icmp6_input
	.p2align	4, 0x90
	.type	icmp6_input,@function
icmp6_input:                            # @icmp6_input
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	addw	$1, lwip_stats+212(%rip)
	movq	%rdi, %rbx
	cmpw	$7, 18(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_2
# %bb.1:
	movq	%rbx, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+220(%rip)
	addw	$1, lwip_stats+216(%rip)
	jmp	.LBB0_23
.LBB0_2:
	movq	%rsi, %r14
	movq	8(%rbx), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_4
# %bb.3:
	movzwl	248(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$4096, %eax             # imm = 0x1000
	je	.LBB0_6
.LBB0_4:
	movzwl	16(%rbx), %edx
	movl	$ip_data+36, %ecx
	movl	$ip_data+60, %r8d
	movq	%rbx, %rdi
	movl	$58, %esi
	callq	ip6_chksum_pseudo
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB0_6
# %bb.5:
	movq	%rbx, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+218(%rip)
	addw	$1, lwip_stats+216(%rip)
	jmp	.LBB0_23
.LBB0_6:
	movb	(%r15), %al
	movl	$42, __A_VARIABLE(%rip)
	leal	-128(%rax), %ecx
	cmpb	$9, %cl
	ja	.LBB0_7
# %bb.24:
	movzbl	%cl, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_8:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	nd6_input
	jmp	.LBB0_23
.LBB0_9:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	mld6_input
	jmp	.LBB0_23
.LBB0_7:
	cmpb	$2, %al
	je	.LBB0_8
.LBB0_20:
	addw	$1, lwip_stats+226(%rip)
	addw	$1, lwip_stats+216(%rip)
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_22:
	movq	%rbx, %rdi
	callq	pbuf_free
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_10:
	cmpb	$-1, ip_data+60(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_12
# %bb.11:
	movq	%rbx, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+216(%rip)
	jmp	.LBB0_23
.LBB0_12:
	movzwl	16(%rbx), %esi
	movl	$54, %edi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_13
# %bb.14:
	movq	%rax, %r15
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	pbuf_copy
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_16
# %bb.15:
	movq	%rbx, %rdi
	callq	pbuf_free
	movq	%r15, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+230(%rip)
	jmp	.LBB0_23
.LBB0_13:
	movq	%rbx, %rdi
	callq	pbuf_free
	addw	$1, lwip_stats+222(%rip)
	jmp	.LBB0_23
.LBB0_16:
	movq	8(%r15), %rax
	movb	$-127, (%rax)
	movw	$0, 2(%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_18
# %bb.17:
	movzwl	248(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	je	.LBB0_19
.LBB0_18:
	movzwl	16(%r15), %edx
	movl	$ip_data+60, %ecx
	movl	$ip_data+36, %r8d
	movq	%r15, %rdi
	movl	$58, %esi
	callq	ip6_chksum_pseudo
	movq	8(%r15), %rcx
	movw	%ax, 2(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_19:
	addw	$1, lwip_stats+210(%rip)
	movq	%r14, (%rsp)
	movl	$ip_data+60, %esi
	movl	$ip_data+36, %edx
	movq	%r15, %rdi
	movl	$255, %ecx
	xorl	%r8d, %r8d
	movl	$58, %r9d
	callq	ip6_output_if
	movq	%r15, %rdi
	callq	pbuf_free
	jmp	.LBB0_21
.Lfunc_end0:
	.size	icmp6_input, .Lfunc_end0-icmp6_input
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_10
	.quad	.LBB0_20
	.quad	.LBB0_9
	.quad	.LBB0_9
	.quad	.LBB0_9
	.quad	.LBB0_22
	.quad	.LBB0_8
	.quad	.LBB0_8
	.quad	.LBB0_8
	.quad	.LBB0_8
                                        # -- End function
	.text
	.globl	icmp6_dest_unreach      # -- Begin function icmp6_dest_unreach
	.p2align	4, 0x90
	.type	icmp6_dest_unreach,@function
icmp6_dest_unreach:                     # @icmp6_dest_unreach
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	%sil, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	icmp6_send_response
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	icmp6_dest_unreach, .Lfunc_end1-icmp6_dest_unreach
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function icmp6_send_response
	.type	icmp6_send_response,@function
icmp6_send_response:                    # @icmp6_send_response
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	ip_data(%rip), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB2_5
# %bb.1:
	movl	%ecx, %r12d
	movl	%edx, %r14d
	movl	%esi, %r13d
	movq	%rdi, %r15
	movl	$ip_data+36, %esi
	movq	%rbx, %rdi
	callq	ip6_select_source_address
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_2
# %bb.3:
	movq	%rbx, (%rsp)
	movzbl	%r13b, %esi
	movzbl	%r12b, %ecx
	movl	$ip_data+36, %r9d
	movq	%r15, %rdi
	movl	%r14d, %edx
	movq	%rax, %r8
	callq	icmp6_send_response_with_addrs_and_netif
	jmp	.LBB2_4
.LBB2_2:
	addw	$1, lwip_stats+224(%rip)
.LBB2_4:
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
.LBB2_5:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end2:
	.size	icmp6_send_response, .Lfunc_end2-icmp6_send_response
                                        # -- End function
	.globl	icmp6_packet_too_big    # -- Begin function icmp6_packet_too_big
	.p2align	4, 0x90
	.type	icmp6_packet_too_big,@function
icmp6_packet_too_big:                   # @icmp6_packet_too_big
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%esi, %edx
	xorl	%esi, %esi
	movl	$2, %ecx
	callq	icmp6_send_response
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	icmp6_packet_too_big, .Lfunc_end3-icmp6_packet_too_big
                                        # -- End function
	.globl	icmp6_time_exceeded     # -- Begin function icmp6_time_exceeded
	.p2align	4, 0x90
	.type	icmp6_time_exceeded,@function
icmp6_time_exceeded:                    # @icmp6_time_exceeded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	%sil, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	callq	icmp6_send_response
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	icmp6_time_exceeded, .Lfunc_end4-icmp6_time_exceeded
                                        # -- End function
	.globl	icmp6_time_exceeded_with_addrs # -- Begin function icmp6_time_exceeded_with_addrs
	.p2align	4, 0x90
	.type	icmp6_time_exceeded_with_addrs,@function
icmp6_time_exceeded_with_addrs:         # @icmp6_time_exceeded_with_addrs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB5_6
# %bb.1:
	movq	%rcx, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB5_6
# %bb.2:
	movq	%rdx, %rbx
	movl	%esi, %r12d
	movq	%rdi, %r15
	movq	%r14, %rdi
	movq	%rdx, %rsi
	callq	ip6_route
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_3
# %bb.4:
	movq	%rax, (%rsp)
	movzbl	%r12b, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	icmp6_send_response_with_addrs_and_netif
	jmp	.LBB5_5
.LBB5_3:
	addw	$1, lwip_stats+224(%rip)
.LBB5_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_6:
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end5:
	.size	icmp6_time_exceeded_with_addrs, .Lfunc_end5-icmp6_time_exceeded_with_addrs
                                        # -- End function
	.globl	icmp6_param_problem     # -- Begin function icmp6_param_problem
	.p2align	4, 0x90
	.type	icmp6_param_problem,@function
icmp6_param_problem:                    # @icmp6_param_problem
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subl	ip_data+24(%rip), %edx
	movzbl	%sil, %esi
                                        # kill: def $edx killed $edx killed $rdx
	movl	$4, %ecx
	callq	icmp6_send_response
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	icmp6_param_problem, .Lfunc_end6-icmp6_param_problem
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
	je	.LBB7_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB7_2:
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
	movl	$uk_pr_crit.__str.3, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	uk_pr_crit, .Lfunc_end7-uk_pr_crit
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function icmp6_send_response_with_addrs_and_netif
	.type	icmp6_send_response_with_addrs_and_netif,@function
icmp6_send_response_with_addrs_and_netif: # @icmp6_send_response_with_addrs_and_netif
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movl	%ecx, %r14d
	movl	%edx, %r13d
	movl	%esi, %r15d
	movq	%rdi, %r12
	movl	$54, %edi
	movl	$56, %esi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_1
# %bb.2:
	movq	%rax, %rbx
	movq	%r12, -48(%rbp)         # 8-byte Spill
	cmpw	$55, 18(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB8_8
# %bb.3:
	movq	16(%rbp), %rax
	movq	8(%rbx), %r12
	movb	%r14b, (%r12)
	movb	%r15b, 1(%r12)
	movl	%r13d, %edi
	movq	%rax, %r13
	callq	lwip_htonl
	movl	%eax, 4(%r12)
	movq	8(%rbx), %rdi
	addq	$8, %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rsi
	movl	$48, %edx
	callq	memcpy
	movw	$0, 2(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	je	.LBB8_5
# %bb.4:
	movzwl	248(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	je	.LBB8_6
.LBB8_5:
	movzwl	16(%rbx), %edx
	movq	%rbx, %rdi
	movl	$58, %esi
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	ip6_chksum_pseudo
	movw	%ax, 2(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_6:
	addw	$1, lwip_stats+210(%rip)
	movq	%r13, (%rsp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movl	$255, %ecx
	xorl	%r8d, %r8d
	movl	$58, %r9d
	callq	ip6_output_if
	movq	%rbx, %rdi
	callq	pbuf_free
	jmp	.LBB8_7
.LBB8_1:
	addw	$1, lwip_stats+222(%rip)
.LBB8_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_8:
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end8:
	.size	icmp6_send_response_with_addrs_and_netif, .Lfunc_end8-icmp6_send_response_with_addrs_and_netif
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"icmpv6 packet not a direct response"
	.size	.L.str, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"!(1)"
	.size	.L.str.2, 5

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.3,@object # @uk_pr_crit.__str.3
uk_pr_crit.__str.3:
	.asciz	"icmp6.c"
	.size	uk_pr_crit.__str.3, 8

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"check that first pbuf can hold icmp 6message"
	.size	.L.str.4, 45

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"must provide both source and destination"
	.size	.L.str.5, 41

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
