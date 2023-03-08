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
	testq	%rdi, %rdi
	jne	.LBB0_2
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	addb	$-1, %al
	movb	%al, 79(%rdi)
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB0_5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	79(%rdi), %eax
	testb	%al, %al
	jne	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdi), %rbx
	callq	ip6_reass_free_complete_datagram
	movq	%rbx, %rdi
	testq	%rdi, %rdi
	jne	.LBB0_2
.LBB0_5:
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
	je	.LBB1_2
# %bb.1:
	xorl	%r12d, %r12d
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
	cmpl	$65536, %r12d           # imm = 0x10000
	jae	.LBB1_8
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=1
	movq	%r15, %rdi
	callq	pbuf_free
	movq	%rbx, %r15
	testq	%rbx, %rbx
	jne	.LBB1_7
.LBB1_10:
	movq	reassdatagrams(%rip), %rcx
	cmpq	%r14, %rcx
	je	.LBB1_11
	.p2align	4, 0x90
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB1_15
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=1
	movq	%rcx, %rax
	movq	(%rcx), %rcx
	cmpq	%r14, %rcx
	jne	.LBB1_12
# %bb.14:
	movq	(%r14), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB1_15
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
	movq	%r15, %rdi
	callq	pbuf_free
	movq	8(%r14), %r15
	testq	%r15, %r15
	jne	.LBB1_7
	jmp	.LBB1_10
.LBB1_11:
	movq	(%r14), %rax
	movq	%rax, reassdatagrams(%rip)
.LBB1_15:
	movl	$13, %edi
	movq	%r14, %rsi
	callq	memp_free
	movzwl	ip6_reass_pbufcount(%rip), %eax
	cmpw	%r12w, %ax
	jb	.LBB1_16
# %bb.17:
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
.LBB1_16:
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
	jbe	.LBB2_117
# %bb.1:
	movq	%rdi, %r13
	movq	8(%rdi), %rbx
	callq	pbuf_clen
	movl	%eax, %r14d
	movzwl	2(%rbx), %edi
	callq	lwip_htons
	movl	%eax, %r15d
	movq	ip_data+24(%rip), %rax
	movzwl	4(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movq	8(%r13), %rdx
	subq	ip_data+24(%rip), %rdx
	cmpq	$65536, %rdx            # imm = 0x10000
	jge	.LBB2_116
# %bb.2:
	cmpq	$39, %rdx
	jle	.LBB2_116
# %bb.3:
	addq	$-32, %rdx
	movzwl	%ax, %ecx
	cmpq	%rcx, %rdx
	jg	.LBB2_6
# %bb.5:
	subl	%edx, %eax
	movl	%r15d, %edx
	andl	$65528, %edx            # imm = 0xFFF8
	movl	%eax, %ecx
	notl	%ecx
	cmpw	%cx, %dx
	jbe	.LBB2_11
.LBB2_6:
	movl	$lwip_stats+250, %ecx
.LBB2_7:
	addw	$1, (%rcx)
.LBB2_8:
	addw	$1, lwip_stats+240(%rip)
	movq	%r13, %rdi
	callq	pbuf_free
.LBB2_9:
	xorl	%ebx, %ebx
.LBB2_10:
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
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movl	%r15d, -76(%rbp)        # 4-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	reassdatagrams(%rip), %r13
	movw	%r14w, -62(%rbp)        # 2-byte Spill
	movzwl	%r14w, %r12d
	testq	%r13, %r13
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	je	.LBB2_26
# %bb.12:
	movl	4(%rbx), %eax
	movl	ip_data+36(%rip), %ecx
	movl	ip_data+40(%rip), %edx
	movl	ip_data+44(%rip), %esi
	movl	ip_data+48(%rip), %edi
	movb	ip_data+52(%rip), %r11b
	movl	ip_data+60(%rip), %r8d
	movl	ip_data+64(%rip), %r9d
	movl	ip_data+68(%rip), %r10d
	movl	ip_data+72(%rip), %ebx
	movl	%ebx, -72(%rbp)         # 4-byte Spill
	movb	ip_data+76(%rip), %bl
	movb	%bl, -41(%rbp)          # 1-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB2_14
	.p2align	4, 0x90
.LBB2_13:                               #   in Loop: Header=BB2_14 Depth=1
	movq	(%r14), %r13
	testq	%r13, %r13
	je	.LBB2_27
.LBB2_14:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %r15
	movq	%r13, %r14
	cmpl	72(%r13), %eax
	jne	.LBB2_13
# %bb.15:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	24(%r14), %ecx
	jne	.LBB2_13
# %bb.16:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	28(%r14), %edx
	jne	.LBB2_13
# %bb.17:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	32(%r14), %esi
	jne	.LBB2_13
# %bb.18:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	36(%r14), %edi
	jne	.LBB2_13
# %bb.19:                               #   in Loop: Header=BB2_14 Depth=1
	cmpb	80(%r14), %r11b
	jne	.LBB2_13
# %bb.20:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	40(%r14), %r8d
	jne	.LBB2_13
# %bb.21:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	44(%r14), %r9d
	jne	.LBB2_13
# %bb.22:                               #   in Loop: Header=BB2_14 Depth=1
	cmpl	48(%r14), %r10d
	jne	.LBB2_13
# %bb.23:                               #   in Loop: Header=BB2_14 Depth=1
	movl	-72(%rbp), %ebx         # 4-byte Reload
	cmpl	52(%r14), %ebx
	jne	.LBB2_13
# %bb.24:                               #   in Loop: Header=BB2_14 Depth=1
	movzbl	-41(%rbp), %ebx         # 1-byte Folded Reload
	cmpb	81(%r14), %bl
	jne	.LBB2_13
# %bb.25:
	addw	$1, lwip_stats+256(%rip)
	movq	-56(%rbp), %r13         # 8-byte Reload
	jmp	.LBB2_30
.LBB2_26:
	xorl	%r14d, %r14d
.LBB2_27:
	movl	$13, %edi
	callq	memp_malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB2_43
# %bb.28:
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	-88(%rbp), %r15         # 8-byte Reload
.LBB2_29:
	movl	$88, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset
	movb	$60, 79(%rbx)
	movq	reassdatagrams(%rip), %rax
	movq	%rax, (%rbx)
	movq	%rbx, reassdatagrams(%rip)
	movq	ip_data+24(%rip), %rsi
	movq	%rsi, 16(%rbx)
	leaq	24(%rbx), %rdi
	addq	$8, %rsi
	movl	$16, %edx
	callq	memcpy
	leaq	40(%rbx), %rdi
	movq	ip_data+24(%rip), %rsi
	addq	$24, %rsi
	movl	$16, %edx
	callq	memcpy
	movb	ip_data+52(%rip), %al
	movb	%al, 80(%rbx)
	movb	ip_data+76(%rip), %al
	movb	%al, 81(%rbx)
	movl	4(%r15), %eax
	movl	%eax, 72(%rbx)
	movb	(%r15), %al
	movb	%al, 78(%rbx)
	movq	%r14, %r15
	movq	%rbx, %r14
.LBB2_30:
	movzwl	ip6_reass_pbufcount(%rip), %ecx
	leal	(%rcx,%r12), %eax
	cmpl	$11, %eax
	jb	.LBB2_66
# %bb.31:
	movq	reassdatagrams(%rip), %rax
	.p2align	4, 0x90
.LBB2_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_35 Depth 2
	testq	%rax, %rax
	je	.LBB2_37
# %bb.33:                               # %.preheader10
                                        #   in Loop: Header=BB2_32 Depth=1
	movq	%rax, %rdi
	movq	%rax, %rdx
	jmp	.LBB2_35
	.p2align	4, 0x90
.LBB2_34:                               #   in Loop: Header=BB2_35 Depth=2
	movq	(%rdx), %rdx
	testq	%rdx, %rdx
	je	.LBB2_38
.LBB2_35:                               #   Parent Loop BB2_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, %rdx
	je	.LBB2_34
# %bb.36:                               #   in Loop: Header=BB2_35 Depth=2
	movzbl	79(%rdx), %ebx
	cmpb	79(%rdi), %bl
	cmovbeq	%rdx, %rdi
	jmp	.LBB2_34
	.p2align	4, 0x90
.LBB2_37:                               #   in Loop: Header=BB2_32 Depth=1
	xorl	%edi, %edi
.LBB2_38:                               #   in Loop: Header=BB2_32 Depth=1
	cmpq	%r14, %rdi
	je	.LBB2_59
# %bb.39:                               #   in Loop: Header=BB2_32 Depth=1
	testq	%rdi, %rdi
	je	.LBB2_41
# %bb.40:                               #   in Loop: Header=BB2_32 Depth=1
	callq	ip6_reass_free_complete_datagram
	movq	reassdatagrams(%rip), %rax
	movzwl	ip6_reass_pbufcount(%rip), %ecx
.LBB2_41:                               #   in Loop: Header=BB2_32 Depth=1
	movzwl	%cx, %edx
	addl	%r12d, %edx
	testq	%rax, %rax
	je	.LBB2_60
# %bb.42:                               #   in Loop: Header=BB2_32 Depth=1
	cmpl	$10, %edx
	ja	.LBB2_32
	jmp	.LBB2_60
.LBB2_43:
	movq	reassdatagrams(%rip), %rax
	movq	-56(%rbp), %r13         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_44:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_47 Depth 2
	testq	%rax, %rax
	je	.LBB2_49
# %bb.45:                               # %.preheader15
                                        #   in Loop: Header=BB2_44 Depth=1
	movq	%rax, %rdi
	movq	%rax, %rcx
	jmp	.LBB2_47
	.p2align	4, 0x90
.LBB2_46:                               #   in Loop: Header=BB2_47 Depth=2
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB2_50
.LBB2_47:                               #   Parent Loop BB2_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rbx, %rcx
	je	.LBB2_46
# %bb.48:                               #   in Loop: Header=BB2_47 Depth=2
	movzbl	79(%rcx), %edx
	cmpb	79(%rdi), %dl
	cmovbeq	%rcx, %rdi
	jmp	.LBB2_46
	.p2align	4, 0x90
.LBB2_49:                               #   in Loop: Header=BB2_44 Depth=1
	xorl	%edi, %edi
.LBB2_50:                               #   in Loop: Header=BB2_44 Depth=1
	cmpq	%rbx, %rdi
	je	.LBB2_55
# %bb.51:                               #   in Loop: Header=BB2_44 Depth=1
	testq	%rdi, %rdi
	je	.LBB2_53
# %bb.52:                               #   in Loop: Header=BB2_44 Depth=1
	callq	ip6_reass_free_complete_datagram
	movq	reassdatagrams(%rip), %rax
.LBB2_53:                               #   in Loop: Header=BB2_44 Depth=1
	testq	%rax, %rax
	je	.LBB2_55
# %bb.54:                               #   in Loop: Header=BB2_44 Depth=1
	movzwl	ip6_reass_pbufcount(%rip), %ecx
	addl	%r12d, %ecx
	cmpl	$10, %ecx
	ja	.LBB2_44
.LBB2_55:
	movl	$42, __A_VARIABLE(%rip)
	movl	$13, %edi
	callq	memp_malloc
	testq	%rax, %rax
	je	.LBB2_63
# %bb.56:
	movq	%rax, %rbx
	movq	reassdatagrams(%rip), %rax
	movq	-88(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_57:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB2_64
# %bb.58:                               #   in Loop: Header=BB2_57 Depth=1
	movq	%rax, %r14
	movq	(%rax), %rax
	cmpq	%rbx, %rax
	jne	.LBB2_57
	jmp	.LBB2_29
.LBB2_59:
	movzwl	%cx, %edx
	addl	%r12d, %edx
.LBB2_60:
	movl	$42, __A_VARIABLE(%rip)
	movl	$lwip_stats+246, %ecx
	cmpl	$10, %edx
	ja	.LBB2_7
	.p2align	4, 0x90
.LBB2_61:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB2_65
# %bb.62:                               #   in Loop: Header=BB2_61 Depth=1
	movq	%rax, %r15
	movq	(%rax), %rax
	cmpq	%r14, %rax
	jne	.LBB2_61
	jmp	.LBB2_66
.LBB2_63:
	movl	$lwip_stats+246, %ecx
	jmp	.LBB2_7
.LBB2_64:
	xorl	%r14d, %r14d
	jmp	.LBB2_29
.LBB2_65:
	xorl	%r15d, %r15d
.LBB2_66:
	movq	%r13, %rdi
	movl	$4, %esi
	callq	pbuf_header_force
	testb	%al, %al
	jne	.LBB2_118
# %bb.67:
	movq	8(%r13), %rsi
	movl	-60(%rbp), %edi         # 4-byte Reload
	movl	-68(%rbp), %ebx         # 4-byte Reload
	addl	%ebx, %edi
	movq	8(%r14), %r12
	testq	%r12, %r12
	je	.LBB2_75
# %bb.68:                               # %.preheader5
	movb	$1, %r8b
	xorl	%r9d, %r9d
	xorl	%edx, %edx
	jmp	.LBB2_70
	.p2align	4, 0x90
.LBB2_69:                               #   in Loop: Header=BB2_70 Depth=1
	movq	(%rcx), %r12
	movq	%rcx, %rdx
	testq	%r12, %r12
	je	.LBB2_79
.LBB2_70:                               # =>This Inner Loop Header: Depth=1
	movq	8(%r12), %rcx
	movzwl	8(%rcx), %eax
	cmpw	%ax, %bx
	jb	.LBB2_76
# %bb.71:                               #   in Loop: Header=BB2_70 Depth=1
	je	.LBB2_8
# %bb.72:                               #   in Loop: Header=BB2_70 Depth=1
	cmpw	10(%rcx), %bx
	jb	.LBB2_6
# %bb.73:                               #   in Loop: Header=BB2_70 Depth=1
	testq	%rdx, %rdx
	je	.LBB2_69
# %bb.74:                               #   in Loop: Header=BB2_70 Depth=1
	cmpw	%ax, 10(%rdx)
	movzbl	%r8b, %r8d
	cmovnel	%r9d, %r8d
	jmp	.LBB2_69
.LBB2_75:
	movq	%r13, 8(%r14)
	movb	$1, %r8b
	xorl	%r12d, %r12d
	jmp	.LBB2_81
.LBB2_76:
	cmpw	%ax, %di
	ja	.LBB2_6
# %bb.112:
	testq	%rdx, %rdx
	je	.LBB2_115
# %bb.113:
	movl	$lwip_stats+250, %ecx
	cmpw	10(%rdx), %bx
	jb	.LBB2_7
# %bb.114:
	movq	%r13, (%rdx)
	jmp	.LBB2_81
.LBB2_79:
	movzwl	10(%rcx), %eax
	cmpw	%bx, %ax
	ja	.LBB2_121
# %bb.80:
	movq	%r13, (%rcx)
	xorl	%r12d, %r12d
	cmpw	%bx, %ax
	movzbl	%r8b, %r8d
	cmovnel	%r12d, %r8d
.LBB2_81:
	movzwl	-62(%rbp), %eax         # 2-byte Folded Reload
	addw	%ax, ip6_reass_pbufcount(%rip)
	testw	%bx, %bx
	jne	.LBB2_83
# %bb.82:
	movq	ip_data+24(%rip), %rax
	movq	%rax, 16(%r14)
	movl	%edi, -60(%rbp)         # 4-byte Spill
	leaq	56(%r14), %rdi
	movl	$12, %edx
	movl	%r8d, %ebx
	movq	%rsi, %r13
	callq	memcpy
	movq	%r13, %rsi
	movl	%ebx, %r8d
	movl	-68(%rbp), %ebx         # 4-byte Reload
	movl	-60(%rbp), %edi         # 4-byte Reload
.LBB2_83:
	movq	%r12, (%rsi)
	movw	%bx, 8(%rsi)
	movw	%di, 10(%rsi)
	testb	$1, -76(%rbp)           # 1-byte Folded Reload
	jne	.LBB2_85
# %bb.84:
	movw	%di, 76(%r14)
	movl	%edi, %edx
	jmp	.LBB2_86
.LBB2_85:
	movzwl	76(%r14), %edx
.LBB2_86:
	movq	8(%r14), %rax
	movq	8(%rax), %r13
	xorl	%esi, %esi
	cmpw	$0, 8(%r13)
	movzbl	%r8b, %ecx
	cmovnel	%esi, %ecx
	testw	%dx, %dx
	cmovel	%esi, %ecx
	testb	%cl, %cl
	je	.LBB2_92
# %bb.87:
	testq	%r12, %r12
	je	.LBB2_92
# %bb.88:
	movq	8(%r12), %rdx
	cmpw	8(%rdx), %di
	jne	.LBB2_9
# %bb.89:                               # %.preheader2
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_90:                               # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_92
# %bb.91:                               #   in Loop: Header=BB2_90 Depth=1
	movzwl	10(%rdx), %edi
	movq	8(%rsi), %rdx
	cmpw	8(%rdx), %di
	je	.LBB2_90
	jmp	.LBB2_10
.LBB2_92:
	testb	%cl, %cl
	je	.LBB2_9
# %bb.93:
	testq	%r13, %r13
	je	.LBB2_98
	.p2align	4, 0x90
.LBB2_94:                               # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rbx
	testq	%rbx, %rbx
	je	.LBB2_97
# %bb.95:                               #   in Loop: Header=BB2_94 Depth=1
	movq	8(%rbx), %r13
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	pbuf_remove_header
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	pbuf_remove_header
	testb	%al, %al
	jne	.LBB2_118
# %bb.96:                               #   in Loop: Header=BB2_94 Depth=1
	movq	8(%r14), %rdi
	movq	%rbx, %rsi
	callq	pbuf_cat
	testq	%r13, %r13
	jne	.LBB2_94
.LBB2_97:
	movq	8(%r14), %rbx
	leaq	8(%rbx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	8(%rbx), %r13
	jmp	.LBB2_99
.LBB2_98:
	leaq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rbx
.LBB2_99:
	leaq	56(%r14), %rsi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	memcpy
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	pbuf_remove_header
	testb	%al, %al
	jne	.LBB2_118
# %bb.100:
	movq	16(%r14), %rsi
	leaq	8(%rsi), %rdi
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	(%r13), %rdx
	subq	%rsi, %rdx
	callq	memmove
	movq	16(%r14), %r12
	leaq	8(%r12), %rcx
	movl	(%r13), %eax
	movq	%rcx, %r13
	subl	%r13d, %eax
	addw	76(%r14), %ax
	addl	$-40, %eax
	movw	%ax, 76(%r14)
	movzwl	%ax, %edi
	callq	lwip_htons
	movw	%ax, 12(%r12)
	cmpb	$44, 14(%r12)
	jne	.LBB2_102
# %bb.101:
	addq	$14, %r12
	jmp	.LBB2_105
.LBB2_102:
	cmpb	$44, 48(%r12)
	leaq	48(%r12), %rax
	jne	.LBB2_104
# %bb.103:
	movq	%rax, %r12
	jmp	.LBB2_105
	.p2align	4, 0x90
.LBB2_104:                              # =>This Inner Loop Header: Depth=1
	movzbl	1(%rax), %ecx
	leaq	(%rax,%rcx,8), %r12
	addq	$8, %r12
	cmpb	$44, 8(%rax,%rcx,8)
	movq	%r12, %rax
	jne	.LBB2_104
.LBB2_105:
	movb	78(%r14), %al
	movb	%al, (%r12)
	cmpq	%r14, reassdatagrams(%rip)
	je	.LBB2_108
# %bb.106:
	testq	%r15, %r15
	je	.LBB2_122
# %bb.107:
	movq	(%r14), %rax
	movq	%rax, (%r15)
	jmp	.LBB2_109
.LBB2_108:
	movq	(%r14), %rax
	movq	%rax, reassdatagrams(%rip)
.LBB2_109:
	movl	$13, %edi
	movq	%r14, %rsi
	callq	memp_free
	movq	%rbx, %rdi
	callq	pbuf_clen
                                        # kill: def $ax killed $ax def $eax
	movzwl	ip6_reass_pbufcount(%rip), %ecx
	cmpw	%ax, %cx
	jb	.LBB2_120
# %bb.110:
	subl	%eax, %ecx
	movw	%cx, ip6_reass_pbufcount(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	subl	%r13d, %eax
	movswl	%ax, %esi
	movq	%rbx, %rdi
	callq	pbuf_header_force
	testb	%al, %al
	je	.LBB2_10
# %bb.111:
	movl	$.L.str.9, %edi
	jmp	.LBB2_119
.LBB2_115:
	movq	%r13, 8(%r14)
	jmp	.LBB2_81
.LBB2_116:
	movl	$.L.str.3, %edi
	jmp	.LBB2_119
.LBB2_117:
	movl	$.L.str, %edi
	jmp	.LBB2_119
.LBB2_118:
	movl	$.L.str.4, %edi
.LBB2_119:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB2_120:
	movl	$.L.str.8, %edi
	jmp	.LBB2_119
.LBB2_121:
	movl	$.L.str.5, %edi
	jmp	.LBB2_119
.LBB2_122:
	movl	$.L.str.7, %edi
	jmp	.LBB2_119
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
	movq	%rdi, %rbx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	nd6_get_destination_mtu
	addl	$1, ip6_frag.identification(%rip)
	movzwl	16(%rbx), %r13d
	cmpw	$39, %r13w
	jbe	.LBB4_1
# %bb.3:
	movl	%eax, %r12d
	xorl	%eax, %eax
	addw	$-40, %r13w
	je	.LBB4_20
# %bb.4:
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	addl	$-48, %r12d
	andl	$65528, %r12d           # imm = 0xFFF8
	movq	8(%rbx), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movw	$40, %r14w
	xorl	%eax, %eax
	movl	%r12d, -60(%rbp)        # 4-byte Spill
	jmp	.LBB4_5
.LBB4_17:                               #   in Loop: Header=BB4_5 Depth=1
                                        # kill: def $r13w killed $r13w killed $r13d def $r13d
	movl	%r13d, -56(%rbp)        # 4-byte Spill
.LBB4_18:                               #   in Loop: Header=BB4_5 Depth=1
	xorl	%edi, %edi
	movl	-60(%rbp), %r12d        # 4-byte Reload
	movl	-68(%rbp), %r13d        # 4-byte Reload
	cmpw	%r12w, %r13w
	seta	%dil
	movq	-80(%rbp), %rax         # 8-byte Reload
	movb	6(%rax), %al
	movq	-112(%rbp), %r14        # 8-byte Reload
	movb	%al, 40(%r14)
	movb	$0, 41(%r14)
	movl	-52(%rbp), %eax         # 4-byte Reload
	movzwl	%ax, %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	andl	$65528, %eax            # imm = 0xFFF8
	orl	%eax, %edi
	callq	lwip_htons
	movw	%ax, 42(%r14)
	movl	ip6_frag.identification(%rip), %edi
	callq	lwip_htonl
	movl	%eax, 44(%r14)
	movb	$44, 6(%r14)
	movq	-88(%rbp), %r15         # 8-byte Reload
	movzwl	%r15w, %eax
	addl	-64(%rbp), %eax         # 4-byte Folded Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
	leal	8(%r15), %eax
	movzwl	%ax, %edi
	callq	lwip_htons
	movw	%ax, 4(%r14)
	addw	$1, lwip_stats+234(%rip)
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	callq	*208(%rdi)
	movq	%r14, %rdi
	callq	pbuf_free
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, %r14d
	subw	%r15w, %r13w
	je	.LBB4_19
.LBB4_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
	movl	%eax, -56(%rbp)         # 4-byte Spill
	cmpw	%r12w, %r13w
	movl	%r12d, %eax
	cmovbl	%r13d, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	$14, %edi
	movl	$48, %esi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB4_6
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	movl	%r13d, -68(%rbp)        # 4-byte Spill
	cmpw	$39, 18(%rbx)
	jbe	.LBB4_8
# %bb.9:                                #   in Loop: Header=BB4_5 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	8(%r15), %rdi
	movl	$40, %edx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	8(%r15), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movzwl	%r14w, %eax
	addq	%rax, 8(%rbx)
	movzwl	18(%rbx), %r13d
	subl	%r14d, %r13d
	movw	%r13w, 18(%rbx)
	subw	%ax, 16(%rbx)
	movq	-88(%rbp), %rax         # 8-byte Reload
	testw	%ax, %ax
	je	.LBB4_18
# %bb.10:                               # %.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	%eax, %r14d
	jmp	.LBB4_11
	.p2align	4, 0x90
.LBB4_21:                               #   in Loop: Header=BB4_11 Depth=2
	movq	(%rbx), %rbx
	movzwl	18(%rbx), %r13d
.LBB4_11:                               #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%r13w, %r14w
	cmovbl	%r14d, %r13d
	testw	%r13w, %r13w
	je	.LBB4_21
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=2
	movl	$5, %edi
	callq	memp_malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_13
# %bb.14:                               #   in Loop: Header=BB4_11 Depth=2
	movq	%rax, %r15
	movq	8(%rbx), %r8
	movzwl	%r13w, %esi
	xorl	%edi, %edi
	movl	$65, %edx
	movq	%rax, %rcx
	movl	%esi, %r9d
	callq	pbuf_alloced_custom
	testq	%rax, %rax
	je	.LBB4_15
# %bb.16:                               #   in Loop: Header=BB4_11 Depth=2
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	pbuf_ref
	movq	%rbx, 32(%r15)
	movq	$ip6_frag_free_pbuf_custom, 24(%r15)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	pbuf_cat
	subw	%r13w, %r14w
	jne	.LBB4_21
	jmp	.LBB4_17
.LBB4_15:
	movl	$5, %edi
	movq	%r15, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
.LBB4_13:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_free
.LBB4_6:
	addw	$1, lwip_stats+246(%rip)
	movb	$-1, %al
.LBB4_20:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_19:
	xorl	%eax, %eax
	jmp	.LBB4_20
.LBB4_8:
	movl	$.L.str.11, %edi
	jmp	.LBB4_2
.LBB4_1:
	movl	$.L.str.10, %edi
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
	testq	%rdi, %rdi
	je	.LBB5_4
# %bb.1:
	movq	%rdi, %rbx
	movq	32(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB5_3
# %bb.2:
	callq	pbuf_free
.LBB5_3:
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
