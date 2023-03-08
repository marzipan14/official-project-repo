	.text
	.file	"netif.c"
	.globl	netif_init              # -- Begin function netif_init
	.p2align	4, 0x90
	.type	netif_init,@function
netif_init:                             # @netif_init
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	netif_init, .Lfunc_end0-netif_init
                                        # -- End function
	.globl	netif_input             # -- Begin function netif_input
	.p2align	4, 0x90
	.type	netif_input,@function
netif_input:                            # @netif_input
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB1_1
# %bb.3:
	testq	%rsi, %rsi
	je	.LBB1_4
# %bb.5:
	testb	$24, 261(%rsi)
	je	.LBB1_7
# %bb.6:
	callq	ethernet_input
	jmp	.LBB1_8
.LBB1_7:
	callq	ip_input
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB1_1:
	movl	$.L.str, %edi
	jmp	.LBB1_2
.LBB1_4:
	movl	$.L.str.3, %edi
.LBB1_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end1:
	.size	netif_input, .Lfunc_end1-netif_input
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
	je	.LBB2_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB2_2:
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
.Lfunc_end2:
	.size	uk_pr_crit, .Lfunc_end2-uk_pr_crit
                                        # -- End function
	.globl	netif_add_noaddr        # -- Begin function netif_add_noaddr
	.p2align	4, 0x90
	.type	netif_add_noaddr,@function
netif_add_noaddr:                       # @netif_add_noaddr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdx, %r9
	movq	%rsi, %r8
	movq	%rcx, (%rsp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	netif_add
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	netif_add_noaddr, .Lfunc_end3-netif_add_noaddr
                                        # -- End function
	.globl	netif_add               # -- Begin function netif_add
	.p2align	4, 0x90
	.type	netif_add,@function
netif_add:                              # @netif_add
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
	je	.LBB4_1
# %bb.3:
	movq	%r9, %rbx
	movq	%r8, -48(%rbp)          # 8-byte Spill
	testq	%r9, %r9
	je	.LBB4_4
# %bb.5:
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %r14
	testq	%rsi, %rsi
	movl	$ip_addr_any, %eax
	cmoveq	%rax, %r13
	testq	%rdx, %rdx
	cmoveq	%rax, %r12
	testq	%rcx, %rcx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rdi)
	movb	$0, 24(%rdi)
	movb	$0, 28(%rdi)
	movups	%xmm0, 32(%rdi)
	movb	$0, 48(%rdi)
	movb	$0, 52(%rdi)
	movups	%xmm0, 56(%rdi)
	movb	$0, 72(%rdi)
	movb	$0, 76(%rdi)
	movq	$netif_null_output_ip4, 192(%rdi)
	movups	%xmm0, 80(%rdi)
	movb	$0, 96(%rdi)
	movb	$6, 100(%rdi)
	movw	$0, 152(%rdi)
	movq	$0, 156(%rdi)
	movq	$0, 168(%rdi)
	movups	%xmm0, 104(%rdi)
	movb	$0, 120(%rdi)
	movb	$6, 124(%rdi)
	movups	%xmm0, 128(%rdi)
	movb	$0, 144(%rdi)
	movb	$6, 148(%rdi)
	movb	$0, 154(%rdi)
	movl	$0, 164(%rdi)
	movl	$0, 176(%rdi)
	cmoveq	%rax, %r15
	movq	$netif_null_output_ip6, 208(%rdi)
	movl	$65535, 248(%rdi)       # imm = 0xFFFF
	movb	$0, 261(%rdi)
	addq	$240, %rdi
	movl	$8, %edx
	xorl	%esi, %esi
	callq	memset
	movb	$0, 265(%r14)
	movq	%r14, %rdi
	callq	nd6_restart_netif
	movq	$0, 216(%r14)
	movq	$0, 272(%r14)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 232(%r14)
	movb	netif_num(%rip), %al
	movb	%al, 264(%r14)
	movq	16(%rbp), %rax
	movq	%rax, 184(%r14)
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	netif_set_addr
	movq	%r14, %rdi
	callq	*%rbx
	testb	%al, %al
	je	.LBB4_7
# %bb.6:
	xorl	%r14d, %r14d
	jmp	.LBB4_23
.LBB4_7:
	movzwl	250(%r14), %eax
	movw	%ax, 252(%r14)
	movb	264(%r14), %cl
	movq	netif_list(%rip), %rax
	cmpb	$-1, %cl
	jne	.LBB4_10
.LBB4_9:
	movb	$0, 264(%r14)
	xorl	%ecx, %ecx
.LBB4_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
	testq	%rax, %rax
	je	.LBB4_19
# %bb.11:                               # %.preheader1
                                        #   in Loop: Header=BB4_10 Depth=1
	xorl	%edx, %edx
	movq	%rax, %rsi
	.p2align	4, 0x90
.LBB4_13:                               #   Parent Loop BB4_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, %rsi
	je	.LBB4_14
# %bb.15:                               #   in Loop: Header=BB4_13 Depth=2
	addl	$1, %edx
	cmpl	$256, %edx              # imm = 0x100
	jae	.LBB4_16
# %bb.17:                               #   in Loop: Header=BB4_13 Depth=2
	cmpb	%cl, 264(%rsi)
	je	.LBB4_18
# %bb.12:                               #   in Loop: Header=BB4_13 Depth=2
	movq	(%rsi), %rsi
	testq	%rsi, %rsi
	jne	.LBB4_13
	jmp	.LBB4_19
	.p2align	4, 0x90
.LBB4_18:                               #   in Loop: Header=BB4_10 Depth=1
	addb	$1, %cl
	movb	%cl, 264(%r14)
	cmpb	$-1, %cl
	jne	.LBB4_10
	jmp	.LBB4_9
.LBB4_19:
	leal	1(%rcx), %edx
	xorl	%esi, %esi
	cmpb	$-2, %cl
	movzbl	%dl, %ecx
	cmovel	%esi, %ecx
	movb	%cl, netif_num(%rip)
	movq	%rax, (%r14)
	movq	%r14, netif_list(%rip)
	movq	ext_callback(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB4_22
	.p2align	4, 0x90
.LBB4_20:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	*(%rbx)
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB4_20
.LBB4_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_23:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_14:
	movl	$.L.str.6, %edi
	jmp	.LBB4_2
.LBB4_16:
	movl	$.L.str.7, %edi
.LBB4_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB4_1:
	movl	$.L.str.4, %edi
	jmp	.LBB4_2
.LBB4_4:
	movl	$.L.str.5, %edi
	jmp	.LBB4_2
.Lfunc_end4:
	.size	netif_add, .Lfunc_end4-netif_add
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function netif_null_output_ip4
	.type	netif_null_output_ip4,@function
netif_null_output_ip4:                  # @netif_null_output_ip4
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-12, %al
	retq
.Lfunc_end5:
	.size	netif_null_output_ip4, .Lfunc_end5-netif_null_output_ip4
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function netif_null_output_ip6
	.type	netif_null_output_ip6,@function
netif_null_output_ip6:                  # @netif_null_output_ip6
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-12, %al
	retq
.Lfunc_end6:
	.size	netif_null_output_ip6, .Lfunc_end6-netif_null_output_ip6
                                        # -- End function
	.globl	netif_set_addr          # -- Begin function netif_set_addr
	.p2align	4, 0x90
	.type	netif_set_addr,@function
netif_set_addr:                         # @netif_set_addr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r13
	testq	%rsi, %rsi
	movl	$ip_addr_any, %eax
	cmoveq	%rax, %rbx
	testq	%rdx, %rdx
	cmoveq	%rax, %r12
	testq	%rcx, %rcx
	cmoveq	%rax, %r15
	movl	(%rbx), %r9d
	testl	%r9d, %r9d
	je	.LBB7_2
# %bb.1:
	xorl	%r14d, %r14d
	jmp	.LBB7_6
.LBB7_2:
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	leaq	-144(%rbp), %r14
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	netif_do_set_ipaddr
	testl	%eax, %eax
	je	.LBB7_3
# %bb.4:
	movq	%r14, -120(%rbp)
	movw	$16, %r14w
	jmp	.LBB7_5
.LBB7_3:
	xorl	%r14d, %r14d
.LBB7_5:
	movl	-44(%rbp), %r9d         # 4-byte Reload
.LBB7_6:
	movl	(%r12), %eax
	movl	32(%r13), %edx
	cmpl	%edx, %eax
	jne	.LBB7_8
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_11
.LBB7_8:
	movb	52(%r13), %cl
	movb	%cl, -76(%rbp)
	xorl	%r8d, %r8d
	movl	%edx, -96(%rbp)
	movl	$0, %esi
	movl	$0, %edx
	movl	$0, %edi
	cmpb	$6, %cl
	jne	.LBB7_10
# %bb.9:
	movl	36(%r13), %edx
	movl	40(%r13), %esi
	movl	44(%r13), %r8d
	movb	48(%r13), %dil
.LBB7_10:
	movl	%r8d, -84(%rbp)
	movl	%esi, -88(%rbp)
	movl	%edx, -92(%rbp)
	movb	%dil, -80(%rbp)
	movl	%eax, 32(%r13)
	movb	$0, 52(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%r14w, %r14d
	orl	$64, %r14d
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB7_11:
	movl	(%r15), %eax
	movl	56(%r13), %edx
	cmpl	%edx, %eax
	jne	.LBB7_13
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	jne	.LBB7_17
	jmp	.LBB7_19
.LBB7_13:
	movb	76(%r13), %cl
	movb	%cl, -52(%rbp)
	xorl	%r8d, %r8d
	movl	%edx, -72(%rbp)
	movl	$0, %esi
	movl	$0, %edx
	movl	$0, %edi
	cmpb	$6, %cl
	jne	.LBB7_15
# %bb.14:
	movl	60(%r13), %edx
	movl	64(%r13), %esi
	movl	68(%r13), %r8d
	movb	72(%r13), %dil
.LBB7_15:
	movl	%r8d, -60(%rbp)
	movl	%esi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movb	%dil, -56(%rbp)
	movl	%eax, 56(%r13)
	movb	$0, 76(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%r14w, %r14d
	orl	$32, %r14d
	leaq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	testl	%r9d, %r9d
	je	.LBB7_19
.LBB7_17:
	leaq	-144(%rbp), %r15
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	netif_do_set_ipaddr
	testl	%eax, %eax
	je	.LBB7_19
# %bb.18:
	movzwl	%r14w, %r14d
	orl	$16, %r14d
	movq	%r15, -120(%rbp)
	jmp	.LBB7_20
.LBB7_19:
	testw	%r14w, %r14w
	je	.LBB7_24
.LBB7_20:
	movq	ext_callback(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB7_23
# %bb.21:                               # %.preheader
	movzwl	%r14w, %eax
	orl	$128, %eax
	movzwl	%ax, %r15d
	leaq	-120(%rbp), %r14
	.p2align	4, 0x90
.LBB7_22:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	callq	*(%rbx)
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB7_22
.LBB7_23:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_24:
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	netif_set_addr, .Lfunc_end7-netif_set_addr
                                        # -- End function
	.globl	netif_invoke_ext_callback # -- Begin function netif_invoke_ext_callback
	.p2align	4, 0x90
	.type	netif_invoke_ext_callback,@function
netif_invoke_ext_callback:              # @netif_invoke_ext_callback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB8_5
# %bb.1:
	movq	ext_callback(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB8_4
# %bb.2:
	movq	%rdx, %r14
	movq	%rdi, %r15
	movzwl	%si, %r12d
	.p2align	4, 0x90
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	%r12d, %esi
	movq	%r14, %rdx
	callq	*(%rbx)
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB8_3
.LBB8_4:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_5:
	movl	$.L.str.27, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end8:
	.size	netif_invoke_ext_callback, .Lfunc_end8-netif_invoke_ext_callback
                                        # -- End function
	.globl	netif_set_ipaddr        # -- Begin function netif_set_ipaddr
	.p2align	4, 0x90
	.type	netif_set_ipaddr,@function
netif_set_ipaddr:                       # @netif_set_ipaddr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	testq	%rdi, %rdi
	je	.LBB9_7
# %bb.1:
	movq	%rdi, %r15
	testq	%rsi, %rsi
	movl	$ip_addr_any, %eax
	cmovneq	%rsi, %rax
	leaq	-72(%rbp), %r14
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	netif_do_set_ipaddr
	testl	%eax, %eax
	je	.LBB9_6
# %bb.2:
	movq	%r14, -48(%rbp)
	movq	ext_callback(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB9_5
# %bb.3:                                # %.preheader
	leaq	-48(%rbp), %r14
	.p2align	4, 0x90
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$16, %esi
	movq	%r14, %rdx
	callq	*(%rbx)
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB9_4
.LBB9_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_7:
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end9:
	.size	netif_set_ipaddr, .Lfunc_end9-netif_set_ipaddr
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function netif_do_set_ipaddr
	.type	netif_do_set_ipaddr,@function
netif_do_set_ipaddr:                    # @netif_do_set_ipaddr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	testq	%rsi, %rsi
	je	.LBB10_14
# %bb.1:
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.LBB10_14
# %bb.2:
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	(%rsi), %ecx
	xorl	%eax, %eax
	cmpl	8(%rdi), %ecx
	je	.LBB10_13
# %bb.3:
	movl	%ecx, -56(%rbp)
	movb	$0, -36(%rbp)
	movb	28(%r15), %al
	movb	%al, 20(%rbx)
	cmpb	$6, 28(%r15)
	movl	8(%r15), %eax
	movl	%eax, (%rbx)
	jne	.LBB10_5
# %bb.4:
	movl	12(%r15), %eax
	movl	%eax, 4(%rbx)
	movl	16(%r15), %eax
	movl	%eax, 8(%rbx)
	movl	20(%r15), %eax
	movl	%eax, 12(%rbx)
	movb	24(%r15), %al
	jmp	.LBB10_6
.LBB10_5:
	movl	$0, 12(%rbx)
	movq	$0, 4(%rbx)
	xorl	%eax, %eax
.LBB10_6:
	movb	%al, 16(%rbx)
	leaq	-56(%rbp), %r12
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	tcp_netif_ip_addr_changed
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	udp_netif_ip_addr_changed
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %eax
	movl	%eax, 8(%r15)
	movb	$0, 28(%r15)
	movzbl	261(%r15), %ecx
	movl	%ecx, %edx
	andl	$5, %edx
	cmpl	$5, %edx
	jne	.LBB10_10
# %bb.7:
	testb	$8, %cl
	je	.LBB10_10
# %bb.8:
	testl	%eax, %eax
	je	.LBB10_10
# %bb.9:
	leaq	8(%r15), %rsi
	movq	%r15, %rdi
	callq	etharp_request
.LBB10_10:
	movl	$42, __A_VARIABLE(%rip)
	movq	216(%r15), %rax
	testq	%rax, %rax
	je	.LBB10_12
# %bb.11:
	movq	%r15, %rdi
	callq	*%rax
.LBB10_12:
	movl	$1, %eax
.LBB10_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_14:
	movl	$.L.str.29, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end10:
	.size	netif_do_set_ipaddr, .Lfunc_end10-netif_do_set_ipaddr
                                        # -- End function
	.globl	netif_set_netmask       # -- Begin function netif_set_netmask
	.p2align	4, 0x90
	.type	netif_set_netmask,@function
netif_set_netmask:                      # @netif_set_netmask
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	testq	%rdi, %rdi
	je	.LBB11_8
# %bb.1:
	movq	%rdi, %r15
	testq	%rsi, %rsi
	movl	$ip_addr_any, %eax
	cmovneq	%rsi, %rax
	movl	(%rax), %eax
	movl	32(%rdi), %edx
	cmpl	%edx, %eax
	je	.LBB11_7
# %bb.2:
	movb	52(%r15), %bl
	movb	%bl, -28(%rbp)
	xorl	%ecx, %ecx
	movl	%edx, -48(%rbp)
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	cmpb	$6, %bl
	jne	.LBB11_4
# %bb.3:
	movl	36(%r15), %ecx
	movl	40(%r15), %edx
	movl	44(%r15), %esi
	movb	48(%r15), %dil
.LBB11_4:
	movl	%ecx, -44(%rbp)
	movl	%edx, -40(%rbp)
	movl	%esi, -36(%rbp)
	movb	%dil, -32(%rbp)
	movl	%eax, 32(%r15)
	movb	$0, 52(%r15)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	ext_callback(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB11_7
# %bb.5:                                # %.preheader
	leaq	-72(%rbp), %r14
	.p2align	4, 0x90
.LBB11_6:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$64, %esi
	movq	%r14, %rdx
	callq	*(%rbx)
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB11_6
.LBB11_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_8:
	movl	$.L.str.9, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end11:
	.size	netif_set_netmask, .Lfunc_end11-netif_set_netmask
                                        # -- End function
	.globl	netif_set_gw            # -- Begin function netif_set_gw
	.p2align	4, 0x90
	.type	netif_set_gw,@function
netif_set_gw:                           # @netif_set_gw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	testq	%rdi, %rdi
	je	.LBB12_8
# %bb.1:
	movq	%rdi, %r15
	testq	%rsi, %rsi
	movl	$ip_addr_any, %eax
	cmovneq	%rsi, %rax
	movl	(%rax), %eax
	movl	56(%rdi), %edx
	cmpl	%edx, %eax
	je	.LBB12_7
# %bb.2:
	movb	76(%r15), %bl
	movb	%bl, -28(%rbp)
	xorl	%ecx, %ecx
	movl	%edx, -48(%rbp)
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	cmpb	$6, %bl
	jne	.LBB12_4
# %bb.3:
	movl	60(%r15), %ecx
	movl	64(%r15), %edx
	movl	68(%r15), %esi
	movb	72(%r15), %dil
.LBB12_4:
	movl	%ecx, -44(%rbp)
	movl	%edx, -40(%rbp)
	movl	%esi, -36(%rbp)
	movb	%dil, -32(%rbp)
	movl	%eax, 56(%r15)
	movb	$0, 76(%r15)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	ext_callback(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB12_7
# %bb.5:                                # %.preheader
	leaq	-72(%rbp), %r14
	.p2align	4, 0x90
.LBB12_6:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	*(%rbx)
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB12_6
.LBB12_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_8:
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end12:
	.size	netif_set_gw, .Lfunc_end12-netif_set_gw
                                        # -- End function
	.globl	netif_remove            # -- Begin function netif_remove
	.p2align	4, 0x90
	.type	netif_remove,@function
netif_remove:                           # @netif_remove
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	testq	%rdi, %rdi
	je	.LBB13_31
# %bb.1:
	movq	%rdi, %r15
	movq	ext_callback(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB13_4
	.p2align	4, 0x90
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	*(%rbx)
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB13_2
.LBB13_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%r15)
	je	.LBB13_6
# %bb.5:
	leaq	8(%r15), %r14
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	tcp_netif_ip_addr_changed
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	udp_netif_ip_addr_changed
	movl	$42, __A_VARIABLE(%rip)
.LBB13_6:
	testb	$16, 152(%r15)
	jne	.LBB13_7
# %bb.8:
	testb	$16, 153(%r15)
	jne	.LBB13_9
.LBB13_10:
	testb	$16, 154(%r15)
	je	.LBB13_12
.LBB13_11:
	leaq	128(%r15), %r14
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	tcp_netif_ip_addr_changed
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	udp_netif_ip_addr_changed
	movl	$42, __A_VARIABLE(%rip)
.LBB13_12:
	movq	%r15, %rdi
	callq	mld6_stop
	movb	261(%r15), %al
	testb	$1, %al
	je	.LBB13_22
# %bb.13:
	movb	$0, -48(%rbp)
	movq	ext_callback(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB13_17
# %bb.14:                               # %.preheader1
	leaq	-48(%rbp), %r14
	.p2align	4, 0x90
.LBB13_15:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$8, %esi
	movq	%r14, %rdx
	callq	*(%rbx)
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB13_15
# %bb.16:
	movb	261(%r15), %al
.LBB13_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$-2, %cl
	movb	%cl, 261(%r15)
	testb	$8, %al
	je	.LBB13_19
# %bb.18:
	movq	%r15, %rdi
	callq	etharp_cleanup_netif
.LBB13_19:
	movq	%r15, %rdi
	callq	nd6_cleanup_netif
	movq	216(%r15), %rax
	testq	%rax, %rax
	je	.LBB13_21
# %bb.20:
	movq	%r15, %rdi
	callq	*%rax
.LBB13_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB13_22:
	cmpq	%r15, netif_default(%rip)
	jne	.LBB13_24
# %bb.23:
	movq	$0, netif_default(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_24:
	movq	netif_list(%rip), %rcx
	cmpq	%r15, %rcx
	je	.LBB13_25
	.p2align	4, 0x90
.LBB13_26:                              # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB13_31
# %bb.27:                               #   in Loop: Header=BB13_26 Depth=1
	movq	%rcx, %rax
	movq	(%rcx), %rcx
	cmpq	%r15, %rcx
	jne	.LBB13_26
# %bb.28:
	movq	(%r15), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB13_29
.LBB13_7:
	leaq	80(%r15), %r14
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	tcp_netif_ip_addr_changed
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	udp_netif_ip_addr_changed
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 153(%r15)
	je	.LBB13_10
.LBB13_9:
	leaq	104(%r15), %r14
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	tcp_netif_ip_addr_changed
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	udp_netif_ip_addr_changed
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, 154(%r15)
	jne	.LBB13_11
	jmp	.LBB13_12
.LBB13_25:
	movq	(%r15), %rax
	movq	%rax, netif_list(%rip)
.LBB13_29:
	movq	224(%r15), %rax
	testq	%rax, %rax
	je	.LBB13_31
# %bb.30:
	movq	%r15, %rdi
	callq	*%rax
.LBB13_31:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	netif_remove, .Lfunc_end13-netif_remove
                                        # -- End function
	.globl	netif_set_down          # -- Begin function netif_set_down
	.p2align	4, 0x90
	.type	netif_set_down,@function
netif_set_down:                         # @netif_set_down
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	testq	%rdi, %rdi
	je	.LBB14_11
# %bb.1:
	movq	%rdi, %r15
	movb	261(%rdi), %al
	testb	$1, %al
	je	.LBB14_10
# %bb.2:
	movb	$0, -48(%rbp)
	movq	ext_callback(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB14_6
# %bb.3:                                # %.preheader
	leaq	-48(%rbp), %r14
	.p2align	4, 0x90
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$8, %esi
	movq	%r14, %rdx
	callq	*(%rbx)
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB14_4
# %bb.5:
	movb	261(%r15), %al
.LBB14_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$-2, %cl
	movb	%cl, 261(%r15)
	testb	$8, %al
	je	.LBB14_8
# %bb.7:
	movq	%r15, %rdi
	callq	etharp_cleanup_netif
.LBB14_8:
	movq	%r15, %rdi
	callq	nd6_cleanup_netif
	movq	216(%r15), %rax
	testq	%rax, %rax
	je	.LBB14_10
# %bb.9:
	movq	%r15, %rdi
	callq	*%rax
.LBB14_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_11:
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end14:
	.size	netif_set_down, .Lfunc_end14-netif_set_down
                                        # -- End function
	.globl	netif_set_default       # -- Begin function netif_set_default
	.p2align	4, 0x90
	.type	netif_set_default,@function
netif_set_default:                      # @netif_set_default
# %bb.0:
	movq	%rdi, netif_default(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end15:
	.size	netif_set_default, .Lfunc_end15-netif_set_default
                                        # -- End function
	.globl	netif_set_up            # -- Begin function netif_set_up
	.p2align	4, 0x90
	.type	netif_set_up,@function
netif_set_up:                           # @netif_set_up
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	testq	%rdi, %rdi
	je	.LBB16_14
# %bb.1:
	movq	%rdi, %r15
	movb	261(%rdi), %al
	testb	$1, %al
	jne	.LBB16_13
# %bb.2:
	orb	$1, %al
	movb	%al, 261(%r15)
	movq	216(%r15), %rax
	testq	%rax, %rax
	je	.LBB16_4
# %bb.3:
	movq	%r15, %rdi
	callq	*%rax
.LBB16_4:
	movb	$1, -48(%rbp)
	movq	ext_callback(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB16_7
# %bb.5:                                # %.preheader
	leaq	-48(%rbp), %r14
	.p2align	4, 0x90
.LBB16_6:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$8, %esi
	movq	%r14, %rdx
	callq	*(%rbx)
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB16_6
.LBB16_7:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	261(%r15), %eax
	movl	%eax, %ecx
	andl	$5, %ecx
	cmpl	$5, %ecx
	jne	.LBB16_12
# %bb.8:
	testb	$8, %al
	je	.LBB16_11
# %bb.9:
	cmpl	$0, 8(%r15)
	je	.LBB16_11
# %bb.10:
	leaq	8(%r15), %rsi
	movq	%r15, %rdi
	callq	etharp_request
.LBB16_11:
	movq	%r15, %rdi
	callq	mld6_report_groups
.LBB16_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	nd6_restart_netif
.LBB16_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_14:
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end16:
	.size	netif_set_up, .Lfunc_end16-netif_set_up
                                        # -- End function
	.globl	netif_set_status_callback # -- Begin function netif_set_status_callback
	.p2align	4, 0x90
	.type	netif_set_status_callback,@function
netif_set_status_callback:              # @netif_set_status_callback
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB17_2
# %bb.1:
	movq	%rsi, 216(%rdi)
.LBB17_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end17:
	.size	netif_set_status_callback, .Lfunc_end17-netif_set_status_callback
                                        # -- End function
	.globl	netif_set_remove_callback # -- Begin function netif_set_remove_callback
	.p2align	4, 0x90
	.type	netif_set_remove_callback,@function
netif_set_remove_callback:              # @netif_set_remove_callback
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB18_2
# %bb.1:
	movq	%rsi, 224(%rdi)
.LBB18_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end18:
	.size	netif_set_remove_callback, .Lfunc_end18-netif_set_remove_callback
                                        # -- End function
	.globl	netif_set_link_up       # -- Begin function netif_set_link_up
	.p2align	4, 0x90
	.type	netif_set_link_up,@function
netif_set_link_up:                      # @netif_set_link_up
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	testq	%rdi, %rdi
	je	.LBB19_12
# %bb.1:
	movq	%rdi, %r15
	movzbl	261(%rdi), %eax
	testb	$4, %al
	jne	.LBB19_11
# %bb.2:
	orl	$4, %eax
	movb	%al, 261(%r15)
	movl	%eax, %ecx
	andl	$5, %ecx
	cmpl	$5, %ecx
	jne	.LBB19_7
# %bb.3:
	testb	$8, %al
	je	.LBB19_6
# %bb.4:
	cmpl	$0, 8(%r15)
	je	.LBB19_6
# %bb.5:
	leaq	8(%r15), %rsi
	movq	%r15, %rdi
	callq	etharp_request
.LBB19_6:
	movq	%r15, %rdi
	callq	mld6_report_groups
.LBB19_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	nd6_restart_netif
	movb	$1, -48(%rbp)
	movq	ext_callback(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB19_10
# %bb.8:                                # %.preheader
	leaq	-48(%rbp), %r14
	.p2align	4, 0x90
.LBB19_9:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$4, %esi
	movq	%r14, %rdx
	callq	*(%rbx)
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB19_9
.LBB19_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB19_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_12:
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
	.size	netif_set_link_up, .Lfunc_end19-netif_set_link_up
                                        # -- End function
	.globl	netif_set_link_down     # -- Begin function netif_set_link_down
	.p2align	4, 0x90
	.type	netif_set_link_down,@function
netif_set_link_down:                    # @netif_set_link_down
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	testq	%rdi, %rdi
	je	.LBB20_7
# %bb.1:
	movq	%rdi, %r15
	movb	261(%rdi), %al
	testb	$4, %al
	je	.LBB20_6
# %bb.2:
	andb	$-5, %al
	movb	%al, 261(%r15)
	movb	$0, -48(%rbp)
	movq	ext_callback(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB20_5
# %bb.3:                                # %.preheader
	leaq	-48(%rbp), %r14
	.p2align	4, 0x90
.LBB20_4:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$4, %esi
	movq	%r14, %rdx
	callq	*(%rbx)
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB20_4
.LBB20_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB20_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_7:
	movl	$.L.str.14, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end20:
	.size	netif_set_link_down, .Lfunc_end20-netif_set_link_down
                                        # -- End function
	.globl	netif_ip6_addr_set      # -- Begin function netif_ip6_addr_set
	.p2align	4, 0x90
	.type	netif_ip6_addr_set,@function
netif_ip6_addr_set:                     # @netif_ip6_addr_set
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB21_1
# %bb.3:
	testq	%rdx, %rdx
	je	.LBB21_4
# %bb.5:
	movl	(%rdx), %eax
	movl	4(%rdx), %ecx
	movl	8(%rdx), %r8d
	movl	12(%rdx), %r9d
	movsbl	%sil, %esi
	movl	%eax, %edx
	callq	netif_ip6_addr_set_parts
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB21_1:
	movl	$.L.str.15, %edi
	jmp	.LBB21_2
.LBB21_4:
	movl	$.L.str.16, %edi
.LBB21_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end21:
	.size	netif_ip6_addr_set, .Lfunc_end21-netif_ip6_addr_set
                                        # -- End function
	.globl	netif_ip6_addr_set_parts # -- Begin function netif_ip6_addr_set_parts
	.p2align	4, 0x90
	.type	netif_ip6_addr_set_parts,@function
netif_ip6_addr_set_parts:               # @netif_ip6_addr_set_parts
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	testq	%rdi, %rdi
	je	.LBB22_1
# %bb.3:
	movl	%esi, %r14d
	cmpb	$3, %r14b
	jge	.LBB22_4
# %bb.5:
	movq	%rdi, %r12
	movsbq	%r14b, %rbx
	leaq	(%rbx,%rbx,2), %r13
	movdqu	80(%rdi,%r13,8), %xmm0
	movdqa	%xmm0, -96(%rbp)
	movb	96(%rdi,%r13,8), %al
	movb	%al, -80(%rbp)
	movb	$6, -76(%rbp)
	movd	%xmm0, %eax
	cmpl	%edx, %eax
	jne	.LBB22_9
# %bb.6:
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %eax
	cmpl	%ecx, %eax
	jne	.LBB22_9
# %bb.7:
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %eax
	cmpl	%r8d, %eax
	jne	.LBB22_9
# %bb.8:
	pshufd	$231, %xmm0, %xmm0      # xmm0 = xmm0[3,1,2,3]
	movd	%xmm0, %eax
	cmpl	%r9d, %eax
	je	.LBB22_26
.LBB22_9:
	movl	%edx, -64(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r9d, -52(%rbp)
	movb	$0, -48(%rbp)
	movb	$6, -44(%rbp)
	movl	%edx, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	cmpl	$33022, %eax            # imm = 0x80FE
	jne	.LBB22_10
# %bb.11:
	movb	264(%r12), %al
	addb	$1, %al
	jmp	.LBB22_12
.LBB22_10:
	xorl	%eax, %eax
.LBB22_12:
	leaq	(%r12,%r13,8), %r15
	addq	$80, %r15
	movb	%al, -48(%rbp)
	testb	$16, 152(%r12,%rbx)
	jne	.LBB22_14
# %bb.13:
	movb	$6, 100(%r12,%r13,8)
	movl	%edx, (%r15)
	jmp	.LBB22_15
.LBB22_14:
	leaq	-64(%rbp), %rsi
	movq	%r15, %rdi
	callq	tcp_netif_ip_addr_changed
	movq	%r15, %rdi
	leaq	-64(%rbp), %rsi
	callq	udp_netif_ip_addr_changed
	movl	$42, __A_VARIABLE(%rip)
	movb	-44(%rbp), %al
	movl	-64(%rbp), %ecx
	movb	%al, 100(%r12,%r13,8)
	movl	%ecx, (%r15)
	cmpb	$6, %al
	jne	.LBB22_16
.LBB22_15:
	movl	-60(%rbp), %eax
	movl	%eax, 4(%r15)
	movl	-56(%rbp), %eax
	movl	%eax, 8(%r15)
	movl	-52(%rbp), %eax
	movl	%eax, 12(%r15)
	movb	-48(%rbp), %al
	jmp	.LBB22_17
.LBB22_16:
	movl	$0, 12(%r15)
	movl	$0, 8(%r15)
	movl	$0, 4(%r15)
	xorl	%eax, %eax
.LBB22_17:
	movb	%al, 16(%r15)
	testb	$16, 152(%r12,%rbx)
	je	.LBB22_22
# %bb.18:
	movb	261(%r12), %al
	andb	$5, %al
	cmpb	$5, %al
	jne	.LBB22_20
# %bb.19:
	movq	%r12, %rdi
	callq	mld6_report_groups
.LBB22_20:
	movl	$42, __A_VARIABLE(%rip)
	movq	216(%r12), %rax
	testq	%rax, %rax
	je	.LBB22_22
# %bb.21:
	movq	%r12, %rdi
	callq	*%rax
.LBB22_22:
	movb	%r14b, -120(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	ext_callback(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB22_25
# %bb.23:                               # %.preheader
	leaq	-120(%rbp), %r14
	.p2align	4, 0x90
.LBB22_24:                              # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movl	$256, %esi              # imm = 0x100
	movq	%r14, %rdx
	callq	*(%rbx)
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB22_24
.LBB22_25:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_26:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_1:
	movl	$.L.str.17, %edi
	jmp	.LBB22_2
.LBB22_4:
	movl	$.L.str.18, %edi
.LBB22_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end22:
	.size	netif_ip6_addr_set_parts, .Lfunc_end22-netif_ip6_addr_set_parts
                                        # -- End function
	.globl	netif_ip6_addr_set_state # -- Begin function netif_ip6_addr_set_state
	.p2align	4, 0x90
	.type	netif_ip6_addr_set_state,@function
netif_ip6_addr_set_state:               # @netif_ip6_addr_set_state
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	testq	%rdi, %rdi
	je	.LBB23_1
# %bb.3:
	movl	%esi, %r14d
	cmpb	$3, %r14b
	jge	.LBB23_4
# %bb.5:
	movl	%edx, %r15d
	movq	%rdi, %r12
	movsbq	%r14b, %rbx
	movb	152(%rdi,%rbx), %r13b
	cmpb	%r15b, %r13b
	je	.LBB23_23
# %bb.6:
	testb	$64, 261(%r12)
	je	.LBB23_8
# %bb.7:
	movsbl	%r14b, %esi
	movzbl	%r15b, %edx
	movq	%r12, %rdi
	callq	nd6_adjust_mld_membership
.LBB23_8:
	movl	%r13d, %eax
	andb	$16, %al
	testb	$16, %r15b
	jne	.LBB23_11
# %bb.9:
	testb	%al, %al
	je	.LBB23_11
# %bb.10:
	leaq	(%rbx,%rbx,2), %rax
	leaq	(%r12,%rax,8), %rdi
	addq	$80, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	tcp_netif_ip_addr_changed
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	callq	udp_netif_ip_addr_changed
	movl	$42, __A_VARIABLE(%rip)
	movb	%r15b, 152(%r12,%rbx)
	jmp	.LBB23_16
.LBB23_11:
	movb	%r15b, 152(%r12,%rbx)
	testb	$16, %r15b
	je	.LBB23_16
# %bb.12:
	testb	%al, %al
	jne	.LBB23_16
# %bb.13:
	movb	261(%r12), %al
	andb	$5, %al
	cmpb	$5, %al
	jne	.LBB23_15
# %bb.14:
	movq	%r12, %rdi
	callq	mld6_report_groups
.LBB23_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB23_16:
	xorb	%r13b, %r15b
	cmpb	$8, %r15b
	jb	.LBB23_19
# %bb.17:
	movq	216(%r12), %rax
	testq	%rax, %rax
	je	.LBB23_19
# %bb.18:
	movq	%r12, %rdi
	callq	*%rax
.LBB23_19:
	movb	%r14b, -72(%rbp)
	movb	%r13b, -71(%rbp)
	leaq	(%rbx,%rbx,2), %rax
	leaq	(%r12,%rax,8), %rax
	addq	$80, %rax
	movq	%rax, -64(%rbp)
	movq	ext_callback(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB23_22
# %bb.20:                               # %.preheader
	leaq	-72(%rbp), %r14
	.p2align	4, 0x90
.LBB23_21:                              # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movl	$512, %esi              # imm = 0x200
	movq	%r14, %rdx
	callq	*(%rbx)
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB23_21
.LBB23_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB23_23:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_1:
	movl	$.L.str.17, %edi
	jmp	.LBB23_2
.LBB23_4:
	movl	$.L.str.18, %edi
.LBB23_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end23:
	.size	netif_ip6_addr_set_state, .Lfunc_end23-netif_ip6_addr_set_state
                                        # -- End function
	.globl	netif_get_ip6_addr_match # -- Begin function netif_get_ip6_addr_match
	.p2align	4, 0x90
	.type	netif_get_ip6_addr_match,@function
netif_get_ip6_addr_match:               # @netif_get_ip6_addr_match
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB24_1
# %bb.3:
	testq	%rsi, %rsi
	je	.LBB24_4
# %bb.5:
	movb	16(%rsi), %cl
	testb	%cl, %cl
	je	.LBB24_7
# %bb.6:
	movb	264(%rdi), %dl
	addb	$1, %dl
	movb	$-1, %al
	cmpb	%dl, %cl
	jne	.LBB24_13
.LBB24_7:
	cmpb	$0, 152(%rdi)
	je	.LBB24_14
# %bb.8:
	movl	80(%rdi), %eax
	cmpl	(%rsi), %eax
	jne	.LBB24_14
# %bb.9:
	movl	84(%rdi), %eax
	cmpl	4(%rsi), %eax
	jne	.LBB24_14
# %bb.10:
	movl	88(%rdi), %eax
	cmpl	8(%rsi), %eax
	jne	.LBB24_14
# %bb.11:
	movl	92(%rdi), %eax
	cmpl	12(%rsi), %eax
	jne	.LBB24_14
# %bb.12:
	xorl	%eax, %eax
	jmp	.LBB24_13
.LBB24_14:
	cmpb	$0, 153(%rdi)
	je	.LBB24_19
# %bb.15:
	movl	104(%rdi), %eax
	cmpl	(%rsi), %eax
	jne	.LBB24_19
# %bb.16:
	movl	108(%rdi), %eax
	cmpl	4(%rsi), %eax
	jne	.LBB24_19
# %bb.17:
	movl	112(%rdi), %eax
	cmpl	8(%rsi), %eax
	jne	.LBB24_19
# %bb.18:
	movl	116(%rdi), %ecx
	movb	$1, %al
	cmpl	12(%rsi), %ecx
	je	.LBB24_13
.LBB24_19:
	cmpb	$0, 154(%rdi)
	je	.LBB24_24
# %bb.20:
	movl	128(%rdi), %eax
	cmpl	(%rsi), %eax
	jne	.LBB24_24
# %bb.21:
	movl	132(%rdi), %eax
	cmpl	4(%rsi), %eax
	jne	.LBB24_24
# %bb.22:
	movl	136(%rdi), %eax
	cmpl	8(%rsi), %eax
	jne	.LBB24_24
# %bb.23:
	movl	140(%rdi), %ecx
	movb	$2, %al
	cmpl	12(%rsi), %ecx
	je	.LBB24_13
.LBB24_24:
	movb	$-1, %al
.LBB24_13:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	popq	%rbp
	retq
.LBB24_1:
	movl	$.L.str.19, %edi
	jmp	.LBB24_2
.LBB24_4:
	movl	$.L.str.20, %edi
.LBB24_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end24:
	.size	netif_get_ip6_addr_match, .Lfunc_end24-netif_get_ip6_addr_match
                                        # -- End function
	.globl	netif_create_ip6_linklocal_address # -- Begin function netif_create_ip6_linklocal_address
	.p2align	4, 0x90
	.type	netif_create_ip6_linklocal_address,@function
netif_create_ip6_linklocal_address:     # @netif_create_ip6_linklocal_address
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
	je	.LBB25_10
# %bb.1:
	movq	%rdi, %r14
	movq	$33022, 80(%rdi)        # imm = 0x80FE
	testb	%sil, %sil
	je	.LBB25_3
# %bb.2:
	movzbl	254(%r14), %eax
	xorl	$2, %eax
	shll	$24, %eax
	movzbl	255(%r14), %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movzbl	256(%r14), %eax
	shll	$8, %eax
	leal	(%rax,%rcx), %edi
	addl	$255, %edi
	callq	lwip_htonl
	movl	%eax, 88(%r14)
	movzbl	257(%r14), %eax
	shll	$16, %eax
	movzbl	258(%r14), %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movzbl	259(%r14), %eax
	leal	(%rax,%rcx), %edi
	addl	$-33554432, %edi        # imm = 0xFE000000
	callq	lwip_htonl
	movl	%eax, 92(%r14)
	jmp	.LBB25_6
.LBB25_3:
	movq	$0, 88(%r14)
	movb	$3, %r15b
	xorl	%r12d, %r12d
	movl	$-1, %r13d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB25_4:                               # =>This Inner Loop Header: Depth=1
	movzbl	260(%r14), %eax
	cmpl	%eax, %ebx
	jae	.LBB25_6
# %bb.5:                                #   in Loop: Header=BB25_4 Depth=1
	cmpl	$4, %ebx
	sete	%cl
	subb	%cl, %r15b
	addl	%r13d, %eax
	cltq
	movzbl	254(%r14,%rax), %edi
	movl	%r12d, %ecx
	andb	$24, %cl
	shll	%cl, %edi
	callq	lwip_htonl
	movzbl	%r15b, %ecx
	orl	%eax, 80(%r14,%rcx,4)
	addl	$1, %ebx
	addl	$8, %r12d
	addl	$-1, %r13d
	cmpl	$8, %ebx
	jb	.LBB25_4
.LBB25_6:
	movl	$49407, %eax            # imm = 0xC0FF
	andl	80(%r14), %eax
	cmpl	$33022, %eax            # imm = 0x80FE
	jne	.LBB25_7
# %bb.8:
	movb	264(%r14), %al
	addb	$1, %al
	jmp	.LBB25_9
.LBB25_7:
	xorl	%eax, %eax
.LBB25_9:
	movb	%al, 96(%r14)
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	netif_ip6_addr_set_state
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_10:
	movl	$.L.str.21, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end25:
	.size	netif_create_ip6_linklocal_address, .Lfunc_end25-netif_create_ip6_linklocal_address
                                        # -- End function
	.globl	netif_add_ip6_address   # -- Begin function netif_add_ip6_address
	.p2align	4, 0x90
	.type	netif_add_ip6_address,@function
netif_add_ip6_address:                  # @netif_add_ip6_address
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB26_20
# %bb.1:
	movq	%rsi, %r15
	testq	%rsi, %rsi
	je	.LBB26_21
# %bb.2:
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	%r15, %rsi
	callq	netif_get_ip6_addr_match
	testb	%al, %al
	js	.LBB26_5
# %bb.3:
	testq	%r14, %r14
	je	.LBB26_18
# %bb.4:
	movb	%al, (%r14)
	jmp	.LBB26_18
.LBB26_5:
	movl	(%r15), %ecx
	movl	%ecx, %eax
	andl	$49407, %eax            # imm = 0xC0FF
	xorl	%r12d, %r12d
	cmpl	$33022, %eax            # imm = 0x80FE
	setne	%r12b
	cmpb	$0, 152(%rbx,%r12)
	movq	%r12, %rdx
	je	.LBB26_13
# %bb.6:
	xorl	%edx, %edx
	cmpl	$33022, %eax            # imm = 0x80FE
	setne	%dl
	movl	%edx, %r12d
	addb	$1, %r12b
	cmpb	$0, 153(%rbx,%rdx)
	je	.LBB26_12
# %bb.7:
	movzbl	%r12b, %r12d
	addq	$1, %r12
	cmpb	$2, %r12b
	ja	.LBB26_9
# %bb.8:
	cmpb	$0, 152(%rbx,%r12)
	movq	%r12, %rdx
	je	.LBB26_13
.LBB26_9:
	movb	$-6, %al
	testq	%r14, %r14
	je	.LBB26_19
# %bb.10:
	movb	$-1, (%r14)
	jmp	.LBB26_19
.LBB26_12:
	addq	$1, %rdx
.LBB26_13:
	leaq	(%rdx,%rdx,2), %rdx
	movl	%ecx, 80(%rbx,%rdx,8)
	movl	4(%r15), %ecx
	movl	%ecx, 84(%rbx,%rdx,8)
	movl	8(%r15), %ecx
	movl	%ecx, 88(%rbx,%rdx,8)
	movl	12(%r15), %ecx
	movl	%ecx, 92(%rbx,%rdx,8)
	movb	16(%r15), %cl
	leaq	(%rbx,%rdx,8), %rsi
	addq	$96, %rsi
	movb	%cl, 96(%rbx,%rdx,8)
	movb	$6, 100(%rbx,%rdx,8)
	cmpl	$33022, %eax            # imm = 0x80FE
	jne	.LBB26_15
# %bb.14:
	movb	264(%rbx), %al
	addb	$1, %al
	jmp	.LBB26_16
.LBB26_15:
	xorl	%eax, %eax
.LBB26_16:
	movb	%al, (%rsi)
	movzbl	%r12b, %esi
	movq	%rbx, %rdi
	movl	$8, %edx
	callq	netif_ip6_addr_set_state
	testq	%r14, %r14
	je	.LBB26_18
# %bb.17:
	movb	%r12b, (%r14)
.LBB26_18:
	xorl	%eax, %eax
.LBB26_19:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_20:
	movl	$.L.str.22, %edi
	jmp	.LBB26_22
.LBB26_21:
	movl	$.L.str.23, %edi
.LBB26_22:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end26:
	.size	netif_add_ip6_address, .Lfunc_end26-netif_add_ip6_address
                                        # -- End function
	.globl	netif_name_to_index     # -- Begin function netif_name_to_index
	.p2align	4, 0x90
	.type	netif_name_to_index,@function
netif_name_to_index:                    # @netif_name_to_index
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB27_7
# %bb.1:
	movq	%rdi, %rbx
	addq	$2, %rdi
	callq	atoi
	movq	netif_list(%rip), %rcx
	jmp	.LBB27_2
	.p2align	4, 0x90
.LBB27_6:                               #   in Loop: Header=BB27_2 Depth=1
	movq	(%rcx), %rcx
.LBB27_2:                               # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB27_7
# %bb.3:                                #   in Loop: Header=BB27_2 Depth=1
	cmpb	%al, 264(%rcx)
	jne	.LBB27_6
# %bb.4:                                #   in Loop: Header=BB27_2 Depth=1
	movzbl	(%rbx), %edx
	cmpb	262(%rcx), %dl
	jne	.LBB27_6
# %bb.5:                                #   in Loop: Header=BB27_2 Depth=1
	movzbl	1(%rbx), %edx
	cmpb	263(%rcx), %dl
	jne	.LBB27_6
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	addb	$1, %al
	jmp	.LBB27_9
.LBB27_7:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB27_9:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	netif_name_to_index, .Lfunc_end27-netif_name_to_index
                                        # -- End function
	.globl	netif_find              # -- Begin function netif_find
	.p2align	4, 0x90
	.type	netif_find,@function
netif_find:                             # @netif_find
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB28_7
# %bb.1:
	movq	%rdi, %rbx
	addq	$2, %rdi
	callq	atoi
	movl	%eax, %ecx
	movq	netif_list(%rip), %rax
	jmp	.LBB28_2
	.p2align	4, 0x90
.LBB28_6:                               #   in Loop: Header=BB28_2 Depth=1
	movq	(%rax), %rax
.LBB28_2:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB28_7
# %bb.3:                                #   in Loop: Header=BB28_2 Depth=1
	cmpb	%cl, 264(%rax)
	jne	.LBB28_6
# %bb.4:                                #   in Loop: Header=BB28_2 Depth=1
	movzbl	(%rbx), %edx
	cmpb	262(%rax), %dl
	jne	.LBB28_6
# %bb.5:                                #   in Loop: Header=BB28_2 Depth=1
	movzbl	1(%rbx), %edx
	cmpb	263(%rax), %dl
	jne	.LBB28_6
	jmp	.LBB28_8
.LBB28_7:
	xorl	%eax, %eax
.LBB28_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	netif_find, .Lfunc_end28-netif_find
                                        # -- End function
	.globl	netif_index_to_name     # -- Begin function netif_index_to_name
	.p2align	4, 0x90
	.type	netif_index_to_name,@function
netif_index_to_name:                    # @netif_index_to_name
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testb	%dil, %dil
	je	.LBB29_5
# %bb.1:
	movq	netif_list(%rip), %rax
	testq	%rax, %rax
	je	.LBB29_5
# %bb.2:                                # %.preheader
	movq	%rsi, %rbx
	.p2align	4, 0x90
.LBB29_3:                               # =>This Inner Loop Header: Depth=1
	movzbl	264(%rax), %ecx
	addb	$1, %cl
	cmpb	%dil, %cl
	je	.LBB29_6
# %bb.4:                                #   in Loop: Header=BB29_3 Depth=1
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB29_3
.LBB29_5:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB29_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB29_6:
	movl	$42, __A_VARIABLE(%rip)
	movb	262(%rax), %cl
	movb	%cl, (%rbx)
	movb	263(%rax), %al
	movb	%al, 1(%rbx)
	leaq	2(%rbx), %rax
	movzbl	%dil, %edx
	addl	$-1, %edx
	movl	$4, %esi
	movq	%rax, %rdi
	callq	lwip_itoa
	jmp	.LBB29_7
.Lfunc_end29:
	.size	netif_index_to_name, .Lfunc_end29-netif_index_to_name
                                        # -- End function
	.globl	netif_get_by_index      # -- Begin function netif_get_by_index
	.p2align	4, 0x90
	.type	netif_get_by_index,@function
netif_get_by_index:                     # @netif_get_by_index
# %bb.0:
	testb	%dil, %dil
	je	.LBB30_5
# %bb.1:
	movq	netif_list(%rip), %rax
	testq	%rax, %rax
	je	.LBB30_5
	.p2align	4, 0x90
.LBB30_3:                               # =>This Inner Loop Header: Depth=1
	movzbl	264(%rax), %ecx
	addb	$1, %cl
	cmpb	%dil, %cl
	je	.LBB30_6
# %bb.4:                                #   in Loop: Header=BB30_3 Depth=1
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB30_3
.LBB30_5:
	xorl	%eax, %eax
.LBB30_6:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end30:
	.size	netif_get_by_index, .Lfunc_end30-netif_get_by_index
                                        # -- End function
	.globl	netif_add_ext_callback  # -- Begin function netif_add_ext_callback
	.p2align	4, 0x90
	.type	netif_add_ext_callback,@function
netif_add_ext_callback:                 # @netif_add_ext_callback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB31_1
# %bb.3:
	testq	%rsi, %rsi
	je	.LBB31_4
# %bb.5:
	movq	%rsi, (%rdi)
	movq	ext_callback(%rip), %rax
	movq	%rax, 8(%rdi)
	movq	%rdi, ext_callback(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB31_1:
	movl	$.L.str.24, %edi
	jmp	.LBB31_2
.LBB31_4:
	movl	$.L.str.25, %edi
.LBB31_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end31:
	.size	netif_add_ext_callback, .Lfunc_end31-netif_add_ext_callback
                                        # -- End function
	.globl	netif_remove_ext_callback # -- Begin function netif_remove_ext_callback
	.p2align	4, 0x90
	.type	netif_remove_ext_callback,@function
netif_remove_ext_callback:              # @netif_remove_ext_callback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB32_8
# %bb.1:
	movq	ext_callback(%rip), %rax
	testq	%rax, %rax
	je	.LBB32_7
# %bb.2:
	cmpq	%rdi, %rax
	je	.LBB32_3
	.p2align	4, 0x90
.LBB32_4:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB32_7
# %bb.5:                                #   in Loop: Header=BB32_4 Depth=1
	cmpq	%rdi, %rax
	jne	.LBB32_4
# %bb.6:
	movq	8(%rdi), %rax
	movq	%rax, 8(%rcx)
	movq	$0, 8(%rdi)
	jmp	.LBB32_7
.LBB32_3:
	movq	8(%rdi), %rax
	movq	%rax, ext_callback(%rip)
.LBB32_7:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB32_8:
	movl	$.L.str.24, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end32:
	.size	netif_remove_ext_callback, .Lfunc_end32-netif_remove_ext_callback
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"netif_input: invalid pbuf"
	.size	.L.str, 26

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
	.asciz	"netif_input: invalid netif"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"netif_add: invalid netif"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"netif_add: No init function given"
	.size	.L.str.5, 34

	.type	netif_num,@object       # @netif_num
	.local	netif_num
	.comm	netif_num,1,1
	.type	netif_list,@object      # @netif_list
	.comm	netif_list,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"netif already added"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"too many netifs, max. supported number is 255"
	.size	.L.str.7, 46

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"netif_set_ipaddr: invalid netif"
	.size	.L.str.8, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"netif_set_netmask: invalid netif"
	.size	.L.str.9, 33

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"netif_set_gw: invalid netif"
	.size	.L.str.10, 28

	.type	netif_default,@object   # @netif_default
	.comm	netif_default,8,8
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"netif_set_up: invalid netif"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"netif_set_down: invalid netif"
	.size	.L.str.12, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"netif_set_link_up: invalid netif"
	.size	.L.str.13, 33

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"netif_set_link_down: invalid netif"
	.size	.L.str.14, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"netif_ip6_addr_set: invalid netif"
	.size	.L.str.15, 34

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"netif_ip6_addr_set: invalid addr6"
	.size	.L.str.16, 34

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"netif != NULL"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"invalid index"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"netif_get_ip6_addr_match: invalid netif"
	.size	.L.str.19, 40

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"netif_get_ip6_addr_match: invalid ip6addr"
	.size	.L.str.20, 42

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"netif_create_ip6_linklocal_address: invalid netif"
	.size	.L.str.21, 50

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"netif_add_ip6_address: invalid netif"
	.size	.L.str.22, 37

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"netif_add_ip6_address: invalid ip6addr"
	.size	.L.str.23, 39

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"callback must be != NULL"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"fn must be != NULL"
	.size	.L.str.25, 19

	.type	ext_callback,@object    # @ext_callback
	.local	ext_callback
	.comm	ext_callback,8,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"netif must be != NULL"
	.size	.L.str.27, 22

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.28,@object # @uk_pr_crit.__str.28
uk_pr_crit.__str.28:
	.asciz	"netif.c"
	.size	uk_pr_crit.__str.28, 8

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"invalid pointer"
	.size	.L.str.29, 16

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
