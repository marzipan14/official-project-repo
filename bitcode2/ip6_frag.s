	.text
	.file	"ip6_frag.c"
	.globl	ip6_reass_tmr           # -- Begin function ip6_reass_tmr
	.p2align	4, 0x90
	.type	ip6_reass_tmr,@function
ip6_reass_tmr:                          # @ip6_reass_tmr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	reassdatagrams(%rip), %rdi
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	addb	$-1, %al
	movb	%al, 79(%rdi)
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movzbl	79(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	(%rdi), %rbx
	callq	ip6_reass_free_complete_datagram
	movq	%rbx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_1
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ip6_reass_tmr, .Lfunc_end0-ip6_reass_tmr
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ip6_reass_free_complete_datagram
	.type	ip6_reass_free_complete_datagram,@function
ip6_reass_free_complete_datagram:       # @ip6_reass_free_complete_datagram
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdi, %r14
	movq	8(%rdi), %r15
	movq	8(%r15), %rdi
	cmpw	$0, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_2
# %bb.1:
	xorl	%r12d, %r12d
	jmp	.LBB1_6
.LBB1_2:
	movq	(%rdi), %rax
	movq	%rax, 8(%r14)
	leaq	56(%r14), %rsi
	movl	$8, %edx
	callq	memcpy
	movl	8(%r15), %eax
	subl	16(%r14), %eax
	movswl	%ax, %esi
	movq	%r15, %rdi
	callq	pbuf_header_force
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB1_3
# %bb.5:
	movups	24(%r14), %xmm0
	movaps	%xmm0, -96(%rbp)
	movb	80(%r14), %al
	movb	%al, -80(%rbp)
	movups	40(%r14), %xmm0
	movaps	%xmm0, -64(%rbp)
	movb	81(%r14), %al
	movb	%al, -48(%rbp)
	leaq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	%r15, %rdi
	movl	$1, %esi
	callq	icmp6_time_exceeded_with_addrs
	movq	%r15, %rdi
	callq	pbuf_clen
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14), %r15
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB1_10
	.p2align	4, 0x90
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rax
	movq	(%rax), %rbx
	movq	%r15, %rdi
	callq	pbuf_clen
	movzwl	%r12w, %ecx
	movzwl	%ax, %r12d
	addl	%ecx, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %r12d           # imm = 0x10000
	jae	.LBB1_8
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=1
	movq	%r15, %rdi
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r15
	testq	%rbx, %rbx
	jne	.LBB1_7
.LBB1_10:
	movq	reassdatagrams(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	je	.LBB1_11
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB1_13:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_16
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=1
	movq	%rax, %rcx
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jne	.LBB1_13
# %bb.15:
	movq	(%r14), %rax
	movq	%rax, (%rcx)
	jmp	.LBB1_16
.LBB1_11:
	movq	(%r14), %rax
	movq	%rax, reassdatagrams(%rip)
.LBB1_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, %edi
	movq	%r14, %rsi
	callq	memp_free
	movzwl	ip6_reass_pbufcount(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r12w, %ax
	jb	.LBB1_17
# %bb.18:
	subl	%r12d, %eax
	movw	%ax, ip6_reass_pbufcount(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_8:
	movl	$.L.str.13, %edi
.LBB1_4:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB1_17:
	movl	$.L.str.14, %edi
	jmp	.LBB1_4
.LBB1_3:
	movl	$.L.str.12, %edi
	jmp	.LBB1_4
.Lfunc_end1:
	.size	ip6_reass_free_complete_datagram, .Lfunc_end1-ip6_reass_free_complete_datagram
                                        # -- End function
	.globl	ip6_reass               # -- Begin function ip6_reass
	.p2align	4, 0x90
	.type	ip6_reass,@function
ip6_reass:                              # @ip6_reass
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	addw	$1, lwip_stats+236(%rip)
	cmpw	$7, 18(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB2_129
# %bb.1:
	movq	%rdi, %rbx
	movq	8(%rdi), %r12
	callq	pbuf_clen
	movl	%eax, %r14d
	movzwl	2(%r12), %edi
	callq	lwip_htons
	movl	%eax, %r15d
	movq	ip_data+24(%rip), %rax
	movzwl	4(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movq	8(%rbx), %rdx
	subq	ip_data+24(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$65536, %rdx            # imm = 0x10000
	jge	.LBB2_128
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$39, %rdx
	jle	.LBB2_128
# %bb.3:
	addq	$-32, %rdx
	movzwl	%ax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	jg	.LBB2_6
# %bb.5:
	subl	%edx, %eax
	movl	%r15d, %edx
	andl	$65528, %edx            # imm = 0xFFF8
	movl	%eax, %ecx
	notl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%cx, %dx
	jbe	.LBB2_11
.LBB2_6:
	movl	$lwip_stats+250, %ebx
.LBB2_7:
	addw	$1, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_8:
	addw	$1, lwip_stats+240(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_free
.LBB2_9:
	xorl	%ebx, %ebx
.LBB2_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_11:
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	%r15d, -92(%rbp)        # 4-byte Spill
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movq	reassdatagrams(%rip), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r14w, -58(%rbp)        # 2-byte Spill
	movzwl	%r14w, %r14d
	testq	%rbx, %rbx
	movq	%r12, -80(%rbp)         # 8-byte Spill
	je	.LBB2_26
# %bb.12:
	movl	4(%r12), %eax
	movl	ip_data+36(%rip), %ecx
	movl	ip_data+40(%rip), %r15d
	movl	ip_data+44(%rip), %esi
	movl	ip_data+48(%rip), %edi
	movb	ip_data+52(%rip), %r8b
	movl	ip_data+60(%rip), %r9d
	movl	ip_data+64(%rip), %r10d
	movl	ip_data+68(%rip), %r11d
	movl	ip_data+72(%rip), %edx
	movl	%edx, -88(%rbp)         # 4-byte Spill
	movb	ip_data+76(%rip), %dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB2_14
	.p2align	4, 0x90
.LBB2_13:                               #   in Loop: Header=BB2_14 Depth=1
	movq	(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB2_27
.LBB2_14:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, %r12
	movq	%rbx, %r13
	cmpl	72(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_13
# %bb.15:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	24(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_13
# %bb.16:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	28(%r13), %r15d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_13
# %bb.17:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	32(%r13), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_13
# %bb.18:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	36(%r13), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_13
# %bb.19:                               #   in Loop: Header=BB2_14 Depth=1
	cmpb	80(%r13), %r8b
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_13
# %bb.20:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	40(%r13), %r9d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_13
# %bb.21:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	44(%r13), %r10d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_13
# %bb.22:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	48(%r13), %r11d
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_13
# %bb.23:                               #   in Loop: Header=BB2_14 Depth=1
	movl	-88(%rbp), %edx         # 4-byte Reload
	cmpl	52(%r13), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_13
# %bb.24:                               #   in Loop: Header=BB2_14 Depth=1
	movzbl	-41(%rbp), %edx         # 1-byte Folded Reload
	cmpb	81(%r13), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_13
# %bb.25:
	addw	$1, lwip_stats+256(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r15
	jmp	.LBB2_30
.LBB2_26:
	xorl	%r13d, %r13d
.LBB2_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, %edi
	callq	memp_malloc
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_45
.LBB2_28:
	movq	-80(%rbp), %rbx         # 8-byte Reload
.LBB2_29:
	movl	$88, %edx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memset
	movb	$60, 79(%r15)
	movq	reassdatagrams(%rip), %rax
	movq	%rax, (%r15)
	movq	%r15, reassdatagrams(%rip)
	movq	ip_data+24(%rip), %rsi
	movq	%rsi, 16(%r15)
	leaq	24(%r15), %rdi
	addq	$8, %rsi
	movl	$16, %edx
	callq	memcpy
	leaq	40(%r15), %rdi
	movq	ip_data+24(%rip), %rsi
	addq	$24, %rsi
	movl	$16, %edx
	callq	memcpy
	movb	ip_data+52(%rip), %al
	movb	%al, 80(%r15)
	movb	ip_data+76(%rip), %al
	movb	%al, 81(%r15)
	movl	4(%rbx), %eax
	movl	%eax, 72(%r15)
	movb	(%rbx), %al
	movb	%al, 78(%r15)
	movq	%r13, %r12
	movq	%r15, %r13
.LBB2_30:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	ip6_reass_pbufcount(%rip), %ecx
	leal	(%rcx,%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, %eax
	jb	.LBB2_69
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	movq	reassdatagrams(%rip), %rax
	.p2align	4, 0x90
.LBB2_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_35 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_38
# %bb.33:                               # %.preheader11
                                        #   in Loop: Header=BB2_32 Depth=1
	movq	%rax, %rdi
	movq	%rax, %rdx
	jmp	.LBB2_35
	.p2align	4, 0x90
.LBB2_34:                               #   in Loop: Header=BB2_35 Depth=2
	movq	(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB2_39
.LBB2_35:                               #   Parent Loop BB2_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rdx
	je	.LBB2_34
# %bb.36:                               #   in Loop: Header=BB2_35 Depth=2
	movzbl	79(%rdx), %ebx
	cmpb	79(%rdi), %bl
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB2_34
# %bb.37:                               #   in Loop: Header=BB2_35 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rdi
	jmp	.LBB2_34
	.p2align	4, 0x90
.LBB2_38:                               #   in Loop: Header=BB2_32 Depth=1
	xorl	%edi, %edi
.LBB2_39:                               #   in Loop: Header=BB2_32 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rdi
	je	.LBB2_64
# %bb.40:                               #   in Loop: Header=BB2_32 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_42
# %bb.41:                               #   in Loop: Header=BB2_32 Depth=1
	callq	ip6_reass_free_complete_datagram
	movl	$42, __A_VARIABLE(%rip)
	movq	reassdatagrams(%rip), %rax
	movzwl	ip6_reass_pbufcount(%rip), %ecx
.LBB2_42:                               #   in Loop: Header=BB2_32 Depth=1
	movzwl	%cx, %edx
	addl	%r14d, %edx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_44
# %bb.43:                               #   in Loop: Header=BB2_32 Depth=1
	cmpl	$10, %edx
	ja	.LBB2_32
.LBB2_44:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_65
.LBB2_45:
	movl	$42, __A_VARIABLE(%rip)
	movq	reassdatagrams(%rip), %rax
	.p2align	4, 0x90
.LBB2_46:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_49 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_52
# %bb.47:                               # %.preheader16
                                        #   in Loop: Header=BB2_46 Depth=1
	movq	%rax, %rdi
	movq	%rax, %rcx
	jmp	.LBB2_49
	.p2align	4, 0x90
.LBB2_48:                               #   in Loop: Header=BB2_49 Depth=2
	movq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB2_53
.LBB2_49:                               #   Parent Loop BB2_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	je	.LBB2_48
# %bb.50:                               #   in Loop: Header=BB2_49 Depth=2
	movzbl	79(%rcx), %edx
	cmpb	79(%rdi), %dl
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB2_48
# %bb.51:                               #   in Loop: Header=BB2_49 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rdi
	jmp	.LBB2_48
	.p2align	4, 0x90
.LBB2_52:                               #   in Loop: Header=BB2_46 Depth=1
	xorl	%edi, %edi
.LBB2_53:                               #   in Loop: Header=BB2_46 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rdi
	je	.LBB2_58
# %bb.54:                               #   in Loop: Header=BB2_46 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_56
# %bb.55:                               #   in Loop: Header=BB2_46 Depth=1
	callq	ip6_reass_free_complete_datagram
	movl	$42, __A_VARIABLE(%rip)
	movq	reassdatagrams(%rip), %rax
.LBB2_56:                               #   in Loop: Header=BB2_46 Depth=1
	movzwl	ip6_reass_pbufcount(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_58
# %bb.57:                               #   in Loop: Header=BB2_46 Depth=1
	addl	%r14d, %ecx
	cmpl	$10, %ecx
	ja	.LBB2_46
.LBB2_58:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, %edi
	callq	memp_malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_98
# %bb.59:
	movq	%rax, %r15
	movq	reassdatagrams(%rip), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB2_106
# %bb.60:                               # %.preheader13
	movq	-80(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_61:                               # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	je	.LBB2_29
# %bb.62:                               #   in Loop: Header=BB2_61 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.LBB2_61
# %bb.63:
	xorl	%r13d, %r13d
	jmp	.LBB2_29
.LBB2_64:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%cx, %edx
	addl	%r14d, %edx
.LBB2_65:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$lwip_stats+246, %ebx
	cmpl	$10, %edx
	ja	.LBB2_7
	.p2align	4, 0x90
.LBB2_66:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_68
# %bb.67:                               #   in Loop: Header=BB2_66 Depth=1
	movq	%rax, %r12
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jne	.LBB2_66
	jmp	.LBB2_69
.LBB2_68:
	xorl	%r12d, %r12d
.LBB2_69:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movl	$4, %esi
	callq	pbuf_header_force
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB2_130
# %bb.70:
	movq	8(%rbx), %rsi
	movl	-72(%rbp), %r9d         # 4-byte Reload
	movl	-84(%rbp), %edi         # 4-byte Reload
	addl	%edi, %r9d
	movq	8(%r13), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB2_79
# %bb.71:                               # %.preheader6
	movb	$1, %r8b
	xorl	%eax, %eax
	jmp	.LBB2_73
	.p2align	4, 0x90
.LBB2_72:                               #   in Loop: Header=BB2_73 Depth=1
	movq	(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB2_104
.LBB2_73:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	8(%r14), %rax
	movzwl	8(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%dx, %di
	jb	.LBB2_101
# %bb.74:                               #   in Loop: Header=BB2_73 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_8
# %bb.75:                               #   in Loop: Header=BB2_73 Depth=1
	cmpw	10(%rax), %di
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB2_6
# %bb.76:                               #   in Loop: Header=BB2_73 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB2_72
# %bb.77:                               #   in Loop: Header=BB2_73 Depth=1
	cmpw	%dx, 10(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_72
# %bb.78:                               #   in Loop: Header=BB2_73 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r8d, %r8d
	jmp	.LBB2_72
.LBB2_79:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, 8(%r13)
	movb	$1, %al
	xorl	%r14d, %r14d
.LBB2_80:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r8d
.LBB2_81:
	movzwl	-58(%rbp), %eax         # 2-byte Folded Reload
	addw	%ax, ip6_reass_pbufcount(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%di, %di
	jne	.LBB2_83
# %bb.82:
	movq	ip_data+24(%rip), %rax
	movq	%rax, 16(%r13)
	leaq	56(%r13), %rdi
	movl	$12, %edx
	movl	%r9d, -72(%rbp)         # 4-byte Spill
	movl	%r8d, %ebx
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%ebx, %r8d
	movl	-84(%rbp), %edi         # 4-byte Reload
	movl	-72(%rbp), %r9d         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB2_83:
	movq	%r14, (%rsi)
	movw	%di, 8(%rsi)
	movw	%r9w, 10(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -92(%rbp)           # 1-byte Folded Reload
	jne	.LBB2_85
# %bb.84:
	movw	%r9w, 76(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_85:
	movq	8(%r13), %rax
	movq	%rax, %rdi
	movq	8(%rax), %rbx
	cmpw	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_87
# %bb.86:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r8d, %r8d
.LBB2_87:
	cmpw	$0, 76(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_99
# %bb.88:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	je	.LBB2_93
# %bb.89:
	testq	%r14, %r14
	je	.LBB2_93
# %bb.90:
	movq	8(%r14), %rax
	cmpw	8(%rax), %r9w
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_100
	.p2align	4, 0x90
.LBB2_91:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB2_93
# %bb.92:                               #   in Loop: Header=BB2_91 Depth=1
	movzwl	10(%rax), %edx
	movq	8(%rcx), %rax
	cmpw	8(%rax), %dx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_91
	jmp	.LBB2_100
.LBB2_93:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	je	.LBB2_9
# %bb.94:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB2_110
	.p2align	4, 0x90
.LBB2_95:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB2_111
# %bb.96:                               #   in Loop: Header=BB2_95 Depth=1
	movq	8(%r14), %rbx
	movl	$8, %esi
	movq	%r14, %rdi
	callq	pbuf_remove_header
	movl	$4, %esi
	movq	%r14, %rdi
	callq	pbuf_remove_header
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB2_130
# %bb.97:                               #   in Loop: Header=BB2_95 Depth=1
	movq	8(%r13), %rdi
	movq	%r14, %rsi
	callq	pbuf_cat
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB2_95
	jmp	.LBB2_112
.LBB2_98:
	movl	$lwip_stats+246, %ebx
	jmp	.LBB2_7
.LBB2_99:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_100:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_9
.LBB2_101:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%dx, %r9w
	ja	.LBB2_6
# %bb.107:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB2_126
# %bb.108:
	movl	$lwip_stats+250, %ebx
	cmpw	10(%rcx), %di
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB2_7
# %bb.109:
	movl	%r9d, %edx
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rcx)
	jmp	.LBB2_127
.LBB2_104:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	10(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%di, %cx
	ja	.LBB2_132
# %bb.105:
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, (%rax)
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %eax
	cmpw	%di, %cx
	jne	.LBB2_80
	jmp	.LBB2_81
.LBB2_106:
	xorl	%r13d, %r13d
	jmp	.LBB2_28
.LBB2_110:
	movq	%rdi, %r14
	leaq	8(%rdi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB2_113
.LBB2_111:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_112:
	movq	8(%r13), %r14
	leaq	8(%r14), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	8(%r14), %rbx
.LBB2_113:
	leaq	56(%r13), %rsi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	$4, %esi
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	pbuf_remove_header
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB2_130
# %bb.114:
	movq	16(%r13), %rsi
	leaq	8(%rsi), %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rdx
	subq	%rsi, %rdx
	callq	memmove
	movq	16(%r13), %r14
	leaq	8(%r14), %rcx
	movl	(%rbx), %eax
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	subl	%ecx, %eax
	addw	76(%r13), %ax
	addl	$-40, %eax
	movw	%ax, 76(%r13)
	movzwl	%ax, %edi
	callq	lwip_htons
	movw	%ax, 12(%r14)
	cmpb	$44, 14(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_116
# %bb.115:
	addq	$14, %r14
	jmp	.LBB2_119
.LBB2_116:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$44, 48(%r14)
	leaq	48(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_118
# %bb.117:
	movq	%rax, %r14
	jmp	.LBB2_119
.LBB2_118:                              # =>This Inner Loop Header: Depth=1
	movzbl	1(%rax), %ecx
	leaq	(%rax,%rcx,8), %r14
	addq	$8, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$44, 8(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	jne	.LBB2_118
.LBB2_119:
	movb	78(%r13), %al
	movb	%al, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, reassdatagrams(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_122
# %bb.120:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	movq	-72(%rbp), %rbx         # 8-byte Reload
	je	.LBB2_134
# %bb.121:
	movq	(%r13), %rax
	movq	%rax, (%r12)
	jmp	.LBB2_123
.LBB2_122:
	movq	(%r13), %rax
	movq	%rax, reassdatagrams(%rip)
	movq	-72(%rbp), %rbx         # 8-byte Reload
.LBB2_123:
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, %edi
	movq	%r15, %rsi
	callq	memp_free
	movq	%rbx, %rdi
	callq	pbuf_clen
                                        # kill: def $ax killed $ax def $eax
	movzwl	ip6_reass_pbufcount(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%ax, %cx
	jb	.LBB2_133
# %bb.124:
	subl	%eax, %ecx
	movw	%cx, ip6_reass_pbufcount(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	subl	-80(%rbp), %eax         # 4-byte Folded Reload
	movswl	%ax, %esi
	movq	%rbx, %rdi
	callq	pbuf_header_force
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB2_10
# %bb.125:
	movl	$.L.str.9, %edi
	jmp	.LBB2_131
.LBB2_126:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%r13)
.LBB2_127:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %eax
	jmp	.LBB2_80
.LBB2_128:
	movl	$.L.str.3, %edi
	jmp	.LBB2_131
.LBB2_129:
	movl	$.L.str, %edi
	jmp	.LBB2_131
.LBB2_130:
	movl	$.L.str.4, %edi
.LBB2_131:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB2_132:
	movl	$.L.str.5, %edi
	jmp	.LBB2_131
.LBB2_133:
	movl	$.L.str.8, %edi
	jmp	.LBB2_131
.LBB2_134:
	movl	$.L.str.7, %edi
	jmp	.LBB2_131
.Lfunc_end2:
	.size	ip6_reass, .Lfunc_end2-ip6_reass
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
	je	.LBB3_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB3_2:
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
.Lfunc_end3:
	.size	uk_pr_crit, .Lfunc_end3-uk_pr_crit
                                        # -- End function
	.globl	ip6_frag                # -- Begin function ip6_frag
	.p2align	4, 0x90
	.type	ip6_frag,@function
ip6_frag:                               # @ip6_frag
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%rdx, %rdi
	callq	nd6_get_destination_mtu
                                        # kill: def $ax killed $ax def $eax
	addl	$1, ip6_frag.identification(%rip)
	movq	8(%rbx), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movzwl	16(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$39, %cx
	jbe	.LBB4_24
# %bb.1:
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addw	$-40, %cx
	je	.LBB4_21
# %bb.2:
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movq	%r14, -96(%rbp)         # 8-byte Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	addl	$-48, %eax
	andl	$65528, %eax            # imm = 0xFFF8
	movw	$40, %r14w
	xorl	%r15d, %r15d
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
	cmpw	%ax, %cx
	movl	%eax, %r12d
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	cmovbl	%ecx, %r12d
	movl	$14, %edi
	movl	$48, %esi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB4_22
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	cmpw	$39, 18(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB4_23
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	8(%r13), %rdi
	movl	$40, %edx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	8(%r13), %r13
	movzwl	%r14w, %eax
	addq	%rax, 8(%rbx)
	movzwl	18(%rbx), %ecx
	subl	%r14d, %ecx
	movw	%cx, 18(%rbx)
	subw	%ax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r12w, %r12w
	movq	%r12, -104(%rbp)        # 8-byte Spill
	je	.LBB4_14
# %bb.6:                                # %.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	%ecx, %r14d
	movq	%r13, -88(%rbp)         # 8-byte Spill
	movl	%r12d, %r13d
	jmp	.LBB4_9
	.p2align	4, 0x90
.LBB4_7:                                #   in Loop: Header=BB4_9 Depth=2
	movq	(%rbx), %rbx
.LBB4_8:                                #   in Loop: Header=BB4_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%rbx), %r14d
.LBB4_9:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%r14w, %r13w
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovbl	%r13d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testw	%r14w, %r14w
	je	.LBB4_7
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=2
	movl	$5, %edi
	callq	memp_malloc
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_19
# %bb.11:                               #   in Loop: Header=BB4_9 Depth=2
	movq	%rax, %r15
	movq	8(%rbx), %r8
	movzwl	%r14w, %esi
	xorl	%edi, %edi
	movl	$65, %edx
	movq	%rax, %rcx
	movl	%esi, %r9d
	callq	pbuf_alloced_custom
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_18
# %bb.12:                               #   in Loop: Header=BB4_9 Depth=2
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	pbuf_ref
	movq	%rbx, 32(%r15)
	movq	$ip6_frag_free_pbuf_custom, 24(%r15)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	pbuf_cat
	movl	$42, __A_VARIABLE(%rip)
	subw	%r14w, %r13w
	je	.LBB4_15
# %bb.13:                               #   in Loop: Header=BB4_9 Depth=2
	movq	(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_8
	.p2align	4, 0x90
.LBB4_14:                               #   in Loop: Header=BB4_3 Depth=1
	movl	%r15d, %r14d
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movq	-72(%rbp), %r12         # 8-byte Reload
	jmp	.LBB4_16
.LBB4_15:                               #   in Loop: Header=BB4_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movq	-88(%rbp), %r13         # 8-byte Reload
.LBB4_16:                               #   in Loop: Header=BB4_3 Depth=1
	xorl	%edi, %edi
	cmpw	%ax, -60(%rbp)          # 2-byte Folded Reload
	seta	%dil
	movq	-80(%rbp), %rax         # 8-byte Reload
	movb	6(%rax), %al
	movb	%al, 40(%r13)
	movb	$0, 41(%r13)
	movzwl	%cx, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	andl	$65528, %ecx            # imm = 0xFFF8
	orl	%ecx, %edi
	callq	lwip_htons
	movw	%ax, 42(%r13)
	movl	ip6_frag.identification(%rip), %edi
	callq	lwip_htonl
	movl	%eax, 44(%r13)
	movb	$44, 6(%r13)
	movq	%r13, %r15
	movq	-104(%rbp), %r13        # 8-byte Reload
	movzwl	%r13w, %eax
	addl	-44(%rbp), %eax         # 4-byte Folded Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
	leal	8(%r13), %eax
	movzwl	%ax, %edi
	callq	lwip_htons
	movw	%ax, 4(%r15)
	addw	$1, lwip_stats+234(%rip)
	movq	%r12, %rdi
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	*208(%r12)
	movq	%r15, %rdi
	callq	pbuf_free
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r15d
	subw	%r13w, %cx
	jne	.LBB4_3
# %bb.17:
	xorl	%edx, %edx
	jmp	.LBB4_21
.LBB4_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %edi
	movq	%r15, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
.LBB4_19:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_free
	addw	$1, lwip_stats+246(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_20:
	movb	$-1, %dl
.LBB4_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_22:
	addw	$1, lwip_stats+246(%rip)
	jmp	.LBB4_20
.LBB4_23:
	movl	$.L.str.11, %edi
	jmp	.LBB4_25
.LBB4_24:
	movl	$.L.str.10, %edi
.LBB4_25:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end4:
	.size	ip6_frag, .Lfunc_end4-ip6_frag
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ip6_frag_free_pbuf_custom
	.type	ip6_frag_free_pbuf_custom,@function
ip6_frag_free_pbuf_custom:              # @ip6_frag_free_pbuf_custom
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_4
# %bb.1:
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_3
# %bb.2:
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
.LBB5_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB5_4:
	movl	$.L.str.17, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end5:
	.size	ip6_frag_free_pbuf_custom, .Lfunc_end5-ip6_frag_free_pbuf_custom
                                        # -- End function
	.type	reassdatagrams,@object  # @reassdatagrams
	.local	reassdatagrams
	.comm	reassdatagrams,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"IPv6 fragment header does not fit in first pbuf"
	.size	.L.str, 48

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
	.asciz	"not a valid pbuf (ip6_input check missing?)"
	.size	.L.str.3, 44

	.type	ip6_reass_pbufcount,@object # @ip6_reass_pbufcount
	.local	ip6_reass_pbufcount
	.comm	ip6_reass_pbufcount,2,2
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"no room for struct ip6_reass_helper"
	.size	.L.str.4, 36

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"check fragments don't overlap"
	.size	.L.str.5, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"sanity check linked list"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ip6_reass_pbufcount >= clen"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ip6_reass: moving p->payload to ip6 header failed\n"
	.size	.L.str.9, 51

	.type	ip6_frag.identification,@object # @ip6_frag.identification
	.local	ip6_frag.identification
	.comm	ip6_frag.identification,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"p->tot_len >= IP6_HLEN"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"this needs a pbuf in one piece!"
	.size	.L.str.11, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"ip6_reass_free: moving p->payload to ip6 header failed\n"
	.size	.L.str.12, 56

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"pbufs_freed + clen <= 0xffff"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"ip_reass_pbufcount >= clen"
	.size	.L.str.14, 27

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.15,@object # @uk_pr_crit.__str.15
uk_pr_crit.__str.15:
	.asciz	"ip6_frag.c"
	.size	uk_pr_crit.__str.15, 11

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"pcr != NULL"
	.size	.L.str.17, 12

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
