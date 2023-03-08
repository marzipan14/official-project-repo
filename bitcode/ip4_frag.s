	.text
	.file	"ip4_frag.c"
	.globl	ip_reass_tmr            # -- Begin function ip_reass_tmr
	.p2align	4, 0x90
	.type	ip_reass_tmr,@function
ip_reass_tmr:                           # @ip_reass_tmr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	reassdatagrams(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_6
# %bb.1:                                # %.preheader
	xorl	%r14d, %r14d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdi), %rbx
	movq	%r14, %rsi
	callq	ip_reass_free_complete_datagram
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, %rdi
	testq	%rbx, %rbx
	je	.LBB0_6
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	39(%rdi), %eax
	testb	%al, %al
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addb	$-1, %al
	movb	%al, 39(%rdi)
	movq	(%rdi), %rbx
	movq	%rdi, %r14
	jmp	.LBB0_5
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ip_reass_tmr, .Lfunc_end0-ip_reass_tmr
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ip_reass_free_complete_datagram
	.type	ip_reass_free_complete_datagram,@function
ip_reass_free_complete_datagram:        # @ip_reass_free_complete_datagram
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	cmpq	%rdi, %rsi
	je	.LBB1_1
# %bb.3:
	movq	%rsi, %r14
	movq	%rdi, %r15
	testq	%rsi, %rsi
	je	.LBB1_6
# %bb.4:
	cmpq	%r15, (%r14)
	jne	.LBB1_5
.LBB1_6:
	movq	8(%r15), %r12
	movq	8(%r12), %rdi
	cmpw	$0, 8(%rdi)
	je	.LBB1_8
# %bb.7:
	xorl	%r13d, %r13d
	testq	%r12, %r12
	je	.LBB1_13
	.p2align	4, 0x90
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	movq	8(%r12), %rax
	movq	(%rax), %rbx
	movq	%r12, %rdi
	callq	pbuf_clen
	movzwl	%r13w, %ecx
	movzwl	%ax, %r13d
	addl	%ecx, %r13d
	cmpl	$65536, %r13d           # imm = 0x10000
	jae	.LBB1_11
# %bb.12:                               #   in Loop: Header=BB1_10 Depth=1
	movq	%r12, %rdi
	callq	pbuf_free
	movq	%rbx, %r12
	testq	%rbx, %rbx
	jne	.LBB1_10
.LBB1_13:
	cmpq	%r15, reassdatagrams(%rip)
	je	.LBB1_14
# %bb.15:
	testq	%r14, %r14
	je	.LBB1_16
# %bb.17:
	movq	(%r15), %rax
	movq	%rax, (%r14)
	jmp	.LBB1_18
.LBB1_8:
	movq	(%rdi), %rax
	movq	%rax, 8(%r15)
	leaq	16(%r15), %rsi
	movl	$20, %edx
	callq	memcpy
	movq	%r12, %rdi
	movl	$1, %esi
	callq	icmp_time_exceeded
	movq	%r12, %rdi
	callq	pbuf_clen
	movl	%eax, %r13d
	movq	%r12, %rdi
	callq	pbuf_free
	movq	8(%r15), %r12
	testq	%r12, %r12
	jne	.LBB1_10
	jmp	.LBB1_13
.LBB1_14:
	movq	(%r15), %rax
	movq	%rax, reassdatagrams(%rip)
.LBB1_18:
	movl	$4, %edi
	movq	%r15, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movzwl	ip_reass_pbufcount(%rip), %ecx
	cmpw	%r13w, %cx
	jb	.LBB1_19
# %bb.20:
	movzwl	%r13w, %eax
	subl	%r13d, %ecx
	movw	%cx, ip_reass_pbufcount(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_11:
	movl	$.L.str.7, %edi
.LBB1_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB1_1:
	movl	$.L.str.5, %edi
	jmp	.LBB1_2
.LBB1_19:
	movl	$.L.str.8, %edi
	jmp	.LBB1_2
.LBB1_5:
	movl	$.L.str.6, %edi
	jmp	.LBB1_2
.LBB1_16:
	movl	$.L.str.13, %edi
	jmp	.LBB1_2
.Lfunc_end1:
	.size	ip_reass_free_complete_datagram, .Lfunc_end1-ip_reass_free_complete_datagram
                                        # -- End function
	.globl	ip4_reass               # -- Begin function ip4_reass
	.p2align	4, 0x90
	.type	ip4_reass,@function
ip4_reass:                              # @ip4_reass
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %r14
	addw	$1, lwip_stats+50(%rip)
	movq	8(%rdi), %r15
	movb	(%r15), %al
	andb	$15, %al
	cmpb	$5, %al
	jne	.LBB2_1
# %bb.2:
	movzwl	6(%r15), %edi
	callq	lwip_htons
	movl	%eax, %r12d
	movzwl	2(%r15), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movzbl	(%r15), %edx
	shll	$2, %edx
	andl	$60, %edx
	movzwl	%ax, %ecx
	cmpl	%edx, %ecx
	jb	.LBB2_115
# %bb.3:
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	pbuf_clen
	movzwl	ip_reass_pbufcount(%rip), %ecx
	movw	%ax, -58(%rbp)          # 2-byte Spill
	movzwl	%ax, %r14d
	addl	%r14d, %ecx
	cmpl	$11, %ecx
	jb	.LBB2_21
# %bb.4:
	movl	%r12d, -72(%rbp)        # 4-byte Spill
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB2_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	movq	reassdatagrams(%rip), %rdx
	testq	%rdx, %rdx
	je	.LBB2_18
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	movl	12(%r15), %r8d
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	jmp	.LBB2_7
	.p2align	4, 0x90
.LBB2_11:                               #   in Loop: Header=BB2_7 Depth=2
	movq	%rdx, %rdi
	movq	%rcx, %rsi
.LBB2_13:                               #   in Loop: Header=BB2_7 Depth=2
	movq	%rdx, %rcx
	movq	(%rdx), %rax
	movq	%rax, %rdx
	testq	%rax, %rax
	je	.LBB2_14
.LBB2_7:                                #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r8d, 28(%rdx)
	jne	.LBB2_10
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=2
	movl	32(%rdx), %ebx
	cmpl	16(%r15), %ebx
	jne	.LBB2_10
# %bb.9:                                #   in Loop: Header=BB2_7 Depth=2
	movzwl	20(%rdx), %ebx
	cmpw	4(%r15), %bx
	je	.LBB2_13
	.p2align	4, 0x90
.LBB2_10:                               #   in Loop: Header=BB2_7 Depth=2
	addl	$1, %r13d
	testq	%rdi, %rdi
	je	.LBB2_11
# %bb.12:                               #   in Loop: Header=BB2_7 Depth=2
	movzbl	39(%rdx), %ebx
	cmpb	39(%rdi), %bl
	cmovbeq	%rdx, %rdi
	cmovbeq	%rcx, %rsi
	jmp	.LBB2_13
	.p2align	4, 0x90
.LBB2_14:                               #   in Loop: Header=BB2_5 Depth=1
	testq	%rdi, %rdi
	je	.LBB2_16
# %bb.15:                               #   in Loop: Header=BB2_5 Depth=1
	callq	ip_reass_free_complete_datagram
	addl	%eax, %r12d
.LBB2_16:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	$2, %r13d
	jl	.LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_5 Depth=1
	cmpl	%r14d, %r12d
	jl	.LBB2_5
.LBB2_18:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movl	-72(%rbp), %r12d        # 4-byte Reload
	je	.LBB2_20
# %bb.19:
	movzwl	ip_reass_pbufcount(%rip), %eax
	addl	%r14d, %eax
	cmpl	$11, %eax
	jb	.LBB2_21
.LBB2_20:
	addw	$1, lwip_stats+60(%rip)
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB2_115
.LBB2_1:
	addw	$1, lwip_stats+68(%rip)
.LBB2_115:
	addw	$1, lwip_stats+54(%rip)
	movq	%r14, %rdi
	callq	pbuf_free
.LBB2_116:
	xorl	%r14d, %r14d
.LBB2_117:
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
.LBB2_21:
	movq	reassdatagrams(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB2_27
# %bb.22:
	movl	12(%r15), %eax
	jmp	.LBB2_23
	.p2align	4, 0x90
.LBB2_26:                               #   in Loop: Header=BB2_23 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB2_27
.LBB2_23:                               # =>This Inner Loop Header: Depth=1
	cmpl	%eax, 28(%rbx)
	jne	.LBB2_26
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=1
	movl	32(%rbx), %ecx
	cmpl	16(%r15), %ecx
	jne	.LBB2_26
# %bb.25:                               #   in Loop: Header=BB2_23 Depth=1
	movzwl	20(%rbx), %ecx
	cmpw	4(%r15), %cx
	jne	.LBB2_26
# %bb.49:
	addw	$1, lwip_stats+70(%rip)
	movzwl	6(%r15), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	testl	$8191, %eax             # imm = 0x1FFF
	jne	.LBB2_52
# %bb.50:
	movzwl	22(%rbx), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	testl	$8191, %eax             # imm = 0x1FFF
	je	.LBB2_52
# %bb.51:
	leaq	16(%rbx), %rdi
	movl	$20, %edx
	movq	%r15, %rsi
	callq	memcpy
.LBB2_52:
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	-64(%rbp), %eax         # 4-byte Reload
	jmp	.LBB2_53
.LBB2_27:
	movl	$4, %edi
	callq	memp_malloc
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB2_30
# %bb.28:
	movq	%r13, %rbx
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB2_29
.LBB2_30:
	movq	%r13, -72(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB2_31:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_33 Depth 2
	movq	reassdatagrams(%rip), %rax
	testq	%rax, %rax
	je	.LBB2_44
# %bb.32:                               #   in Loop: Header=BB2_31 Depth=1
	movl	12(%r15), %r8d
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%edi, %edi
	jmp	.LBB2_33
	.p2align	4, 0x90
.LBB2_36:                               #   in Loop: Header=BB2_33 Depth=2
	addl	$1, %ebx
	testq	%rdi, %rdi
	je	.LBB2_37
# %bb.38:                               #   in Loop: Header=BB2_33 Depth=2
	movzbl	39(%rax), %ecx
	cmpb	39(%rdi), %cl
	cmovbeq	%rax, %rdi
	cmovbeq	%rdx, %rsi
.LBB2_39:                               #   in Loop: Header=BB2_33 Depth=2
	movq	%rax, %rdx
	movq	(%rax), %rcx
	movq	%rcx, %rax
	testq	%rcx, %rcx
	je	.LBB2_40
.LBB2_33:                               #   Parent Loop BB2_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%r8d, 28(%rax)
	jne	.LBB2_36
# %bb.34:                               #   in Loop: Header=BB2_33 Depth=2
	movl	32(%rax), %ecx
	cmpl	16(%r15), %ecx
	jne	.LBB2_36
# %bb.35:                               #   in Loop: Header=BB2_33 Depth=2
	movzwl	20(%rax), %ecx
	cmpw	4(%r15), %cx
	jne	.LBB2_36
	jmp	.LBB2_39
	.p2align	4, 0x90
.LBB2_37:                               #   in Loop: Header=BB2_33 Depth=2
	movq	%rax, %rdi
	movq	%rdx, %rsi
	jmp	.LBB2_39
	.p2align	4, 0x90
.LBB2_40:                               #   in Loop: Header=BB2_31 Depth=1
	testq	%rdi, %rdi
	je	.LBB2_42
# %bb.41:                               #   in Loop: Header=BB2_31 Depth=1
	callq	ip_reass_free_complete_datagram
	addl	%eax, %r13d
.LBB2_42:                               #   in Loop: Header=BB2_31 Depth=1
	cmpl	$2, %ebx
	jl	.LBB2_44
# %bb.43:                               #   in Loop: Header=BB2_31 Depth=1
	cmpl	%r14d, %r13d
	jl	.LBB2_31
.LBB2_44:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %r13d
	jge	.LBB2_46
# %bb.45:
	movq	-72(%rbp), %rbx         # 8-byte Reload
	xorl	%r13d, %r13d
	jmp	.LBB2_47
.LBB2_46:
	movl	$4, %edi
	callq	memp_malloc
	movq	%rax, %r13
	movq	%rax, %rbx
.LBB2_47:
	movq	-56(%rbp), %r14         # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB2_48
.LBB2_29:
	movl	$40, %edx
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	memset
	movb	$15, 39(%rbx)
	movq	reassdatagrams(%rip), %rax
	movq	%rax, (%rbx)
	movq	%r13, reassdatagrams(%rip)
	leaq	16(%rbx), %rdi
	movl	$20, %edx
	movq	%r15, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	-64(%rbp), %eax         # 4-byte Reload
	je	.LBB2_115
.LBB2_53:
	shll	$3, %r12d
	movzbl	%al, %eax
	subl	%eax, %ecx
	movzwl	6(%r15), %r14d
	testb	$32, %r14b
	jne	.LBB2_56
# %bb.54:
	movl	%ecx, %eax
	addw	%r12w, %ax
	jb	.LBB2_110
# %bb.55:
	cmpw	$-21, %ax
	ja	.LBB2_110
.LBB2_56:
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%r12d, %r13d
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %r12
	movzwl	2(%r12), %edi
	callq	lwip_htons
	movl	%eax, %r15d
	movzbl	(%r12), %eax
	shll	$2, %eax
	andl	$60, %eax
	movzwl	%r15w, %ecx
	cmpl	%eax, %ecx
	jb	.LBB2_109
# %bb.57:
	movzbl	%al, %eax
	subl	%eax, %r15d
	movzwl	6(%r12), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	shll	$3, %eax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	8(%rcx), %r11
	movq	$0, (%r11)
	movw	%ax, 8(%r11)
	addw	%ax, %r15w
	movw	%r15w, 10(%r11)
	jae	.LBB2_58
.LBB2_109:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_110:
	cmpq	$0, 8(%rbx)
	movq	-56(%rbp), %r14         # 8-byte Reload
	jne	.LBB2_115
# %bb.111:
	cmpq	reassdatagrams(%rip), %rbx
	jne	.LBB2_112
# %bb.113:
	movq	(%rbx), %rax
	movq	%rax, reassdatagrams(%rip)
	movl	$4, %edi
	movq	%rbx, %rsi
	callq	memp_free
	jmp	.LBB2_114
.LBB2_48:
	addw	$1, lwip_stats+60(%rip)
.LBB2_114:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_115
.LBB2_58:
	movq	8(%rbx), %r8
	testq	%r8, %r8
	je	.LBB2_73
# %bb.59:                               # %.preheader5
	movl	$1, %r10d
	xorl	%r9d, %r9d
	movq	%r8, %rdi
	xorl	%r12d, %r12d
	jmp	.LBB2_60
.LBB2_71:                               #   in Loop: Header=BB2_60 Depth=1
	movq	(%rcx), %rdi
	movq	%rcx, %r12
	testq	%rdi, %rdi
	je	.LBB2_72
.LBB2_60:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rdi), %rcx
	movzwl	8(%rcx), %esi
	cmpw	%si, %ax
	jb	.LBB2_61
# %bb.67:                               #   in Loop: Header=BB2_60 Depth=1
	je	.LBB2_107
# %bb.68:                               #   in Loop: Header=BB2_60 Depth=1
	movzwl	10(%rcx), %edx
	cmpw	%dx, %ax
	jb	.LBB2_107
# %bb.69:                               #   in Loop: Header=BB2_60 Depth=1
	testq	%r12, %r12
	je	.LBB2_71
# %bb.70:                               #   in Loop: Header=BB2_60 Depth=1
	cmpw	%si, 10(%r12)
	cmovnel	%r9d, %r10d
	jmp	.LBB2_71
.LBB2_73:
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	%r8, 8(%rbx)
	movl	$1, %r10d
	testb	$32, %r14b
	jne	.LBB2_75
	jmp	.LBB2_77
.LBB2_61:
	movq	%rdi, (%r11)
	testq	%r12, %r12
	je	.LBB2_65
# %bb.62:
	cmpw	%si, %r15w
	ja	.LBB2_107
# %bb.63:
	movzwl	10(%r12), %ecx
	cmpw	%cx, %ax
	jb	.LBB2_107
# %bb.64:
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, (%r12)
	xorl	%edx, %edx
	cmpw	%ax, %cx
	cmovnel	%edx, %r10d
	testb	$32, %r14b
	jne	.LBB2_75
	jmp	.LBB2_77
.LBB2_72:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, (%rcx)
	xorl	%ecx, %ecx
	cmpw	%ax, %dx
	cmovnel	%ecx, %r10d
	testb	$32, %r14b
	je	.LBB2_77
.LBB2_75:
	testb	$1, 38(%rbx)
	jne	.LBB2_77
# %bb.76:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-58(%rbp), %eax         # 2-byte Folded Reload
	addw	%ax, ip_reass_pbufcount(%rip)
	jmp	.LBB2_116
.LBB2_65:
	cmpw	%si, %r15w
	jbe	.LBB2_66
.LBB2_107:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB2_110
# %bb.108:
	movl	$.L.str.3, %edi
	jmp	.LBB2_103
.LBB2_66:
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	%r8, 8(%rbx)
	testb	$32, %r14b
	jne	.LBB2_75
.LBB2_77:
	testl	%r10d, %r10d
	je	.LBB2_78
# %bb.94:
	movq	8(%rbx), %r8
	testq	%r8, %r8
	je	.LBB2_95
# %bb.96:
	movq	8(%r8), %rax
	cmpw	$0, 8(%rax)
	jne	.LBB2_78
# %bb.97:
	movq	(%r11), %rcx
	testq	%rcx, %rcx
	je	.LBB2_101
# %bb.98:
	movq	8(%rcx), %r11
	cmpw	8(%r11), %r15w
	jne	.LBB2_78
.LBB2_99:                               # =>This Inner Loop Header: Depth=1
	movq	(%r11), %rcx
	testq	%rcx, %rcx
	je	.LBB2_101
# %bb.100:                              #   in Loop: Header=BB2_99 Depth=1
	movzwl	10(%r11), %edx
	movq	8(%rcx), %r11
	cmpw	8(%r11), %dx
	je	.LBB2_99
	jmp	.LBB2_78
.LBB2_95:
	xorl	%r8d, %r8d
.LBB2_78:
	xorl	%r10d, %r10d
.LBB2_79:
	movzwl	-58(%rbp), %eax         # 2-byte Folded Reload
	addw	%ax, ip_reass_pbufcount(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %r14b
	jne	.LBB2_81
# %bb.80:
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	%r13d, %eax
	movw	%ax, 36(%rbx)
	orb	$1, 38(%rbx)
.LBB2_81:
	testl	%r10d, %r10d
	je	.LBB2_116
# %bb.82:
	movl	36(%rbx), %r12d
	addl	$20, %r12d
	movq	8(%r8), %r14
	movq	(%r14), %r15
	leaq	16(%rbx), %rsi
	movl	$20, %edx
	movq	%r14, %rdi
	callq	memcpy
	movzwl	%r12w, %edi
	callq	lwip_htons
	movw	%ax, 2(%r14)
	movw	$0, 6(%r14)
	movw	$0, 10(%r14)
	movq	ip_data+8(%rip), %rax
	testq	%rax, %rax
	je	.LBB2_84
# %bb.83:
	testb	$1, 248(%rax)
	je	.LBB2_85
.LBB2_84:
	movq	%r14, %rdi
	movl	$20, %esi
	callq	inet_chksum
	movw	%ax, 10(%r14)
.LBB2_85:
	movq	8(%rbx), %r14
	testq	%r15, %r15
	je	.LBB2_88
.LBB2_86:                               # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %r12
	movl	$20, %esi
	movq	%r15, %rdi
	callq	pbuf_remove_header
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	pbuf_cat
	movq	(%r12), %r15
	testq	%r15, %r15
	jne	.LBB2_86
.LBB2_88:
	movq	reassdatagrams(%rip), %rcx
	cmpq	%rcx, %rbx
	je	.LBB2_104
.LBB2_89:                               # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB2_105
# %bb.90:                               #   in Loop: Header=BB2_89 Depth=1
	movq	%rcx, %rax
	movq	(%rcx), %rcx
	cmpq	%rbx, %rcx
	jne	.LBB2_89
# %bb.91:
	movq	(%rbx), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB2_92
.LBB2_104:
	movq	(%rbx), %rax
	movq	%rax, reassdatagrams(%rip)
.LBB2_92:
	movl	$4, %edi
	movq	%rbx, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	pbuf_clen
                                        # kill: def $ax killed $ax def $eax
	movzwl	ip_reass_pbufcount(%rip), %ecx
	cmpw	%ax, %cx
	jb	.LBB2_93
# %bb.106:
	subl	%eax, %ecx
	movw	%cx, ip_reass_pbufcount(%rip)
	jmp	.LBB2_117
.LBB2_101:
	cmpq	%r11, %rax
	jne	.LBB2_79
# %bb.102:
	movl	$.L.str.11, %edi
	jmp	.LBB2_103
.LBB2_105:
	movl	$.L.str.13, %edi
	jmp	.LBB2_103
.LBB2_112:
	movl	$.L.str.4, %edi
.LBB2_103:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB2_93:
	movl	$.L.str, %edi
	jmp	.LBB2_103
.Lfunc_end2:
	.size	ip4_reass, .Lfunc_end2-ip4_reass
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
	movl	$uk_pr_crit.__str.14, %edx
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
	.type	reassdatagrams,@object  # @reassdatagrams
	.local	reassdatagrams
	.comm	reassdatagrams,8,8
	.type	ip_reass_pbufcount,@object # @ip_reass_pbufcount
	.local	ip_reass_pbufcount
	.comm	ip_reass_pbufcount,2,2
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ip_reass_pbufcount >= clen"
	.size	.L.str, 27

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
	.asciz	"ipr != NULL"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"not firstalthough just enqueued"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"prev != ipr"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"prev->next == ipr"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"pbufs_freed + clen <= 0xffff"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ip_reass_pbufcount >= pbufs_freed"
	.size	.L.str.8, 34

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"sanity check"
	.size	.L.str.11, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"sanity check linked list"
	.size	.L.str.13, 25

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.14,@object # @uk_pr_crit.__str.14
uk_pr_crit.__str.14:
	.asciz	"ip4_frag.c"
	.size	uk_pr_crit.__str.14, 11

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
