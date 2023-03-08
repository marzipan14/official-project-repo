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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	testq	%rbx, %rbx
	je	.LBB0_6
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	39(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	je	.LBB1_1
# %bb.3:
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB1_6
# %bb.4:
	cmpq	%r15, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_5
.LBB1_6:
	movq	8(%r15), %r12
	movq	8(%r12), %rdi
	cmpw	$0, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_8
# %bb.7:
	xorl	%r13d, %r13d
	jmp	.LBB1_9
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r15), %r12
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %r13d           # imm = 0x10000
	jae	.LBB1_11
# %bb.12:                               #   in Loop: Header=BB1_10 Depth=1
	movq	%r12, %rdi
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r12
	testq	%rbx, %rbx
	jne	.LBB1_10
.LBB1_13:
	cmpq	%r15, reassdatagrams(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_14
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB1_16
# %bb.17:
	movq	(%r15), %rax
	movq	%rax, (%r14)
	jmp	.LBB1_18
.LBB1_14:
	movq	(%r15), %rax
	movq	%rax, reassdatagrams(%rip)
.LBB1_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %edi
	movq	%r15, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movzwl	ip_reass_pbufcount(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$24, %rsp
	movq	%rdi, %r13
	addw	$1, lwip_stats+50(%rip)
	movq	8(%rdi), %r14
	movb	(%r14), %al
	andb	$15, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %al
	jne	.LBB2_1
# %bb.2:
	movzwl	6(%r14), %edi
	callq	lwip_htons
	movl	%eax, %ebx
	movzwl	2(%r14), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movzbl	(%r14), %r15d
	shll	$2, %r15d
	andl	$60, %r15d
	movzwl	%ax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %ecx
	jb	.LBB2_97
# %bb.3:
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	movq	%r13, %rdi
	callq	pbuf_clen
	movl	%eax, %ebx
	movzwl	ip_reass_pbufcount(%rip), %eax
	movzwl	%bx, %r12d
	addl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, %eax
	jb	.LBB2_7
# %bb.4:
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	ip_reass_remove_oldest_datagram
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_6
# %bb.5:
	movzwl	ip_reass_pbufcount(%rip), %eax
	addl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, %eax
	jb	.LBB2_7
.LBB2_6:
	addw	$1, lwip_stats+60(%rip)
	jmp	.LBB2_96
.LBB2_1:
	addw	$1, lwip_stats+68(%rip)
.LBB2_96:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_97:
	addw	$1, lwip_stats+54(%rip)
	movq	%r13, %rdi
	callq	pbuf_free
.LBB2_98:
	xorl	%r14d, %r14d
.LBB2_99:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB2_7:
	movw	%bx, -46(%rbp)          # 2-byte Spill
	movq	reassdatagrams(%rip), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB2_13
# %bb.8:
	movl	12(%r14), %eax
	jmp	.LBB2_9
	.p2align	4, 0x90
.LBB2_12:                               #   in Loop: Header=BB2_9 Depth=1
	movq	(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB2_13
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	%eax, 28(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_12
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	movl	32(%rbx), %ecx
	cmpl	16(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_9 Depth=1
	movzwl	20(%rbx), %ecx
	cmpw	4(%r14), %cx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_12
# %bb.21:
	addw	$1, lwip_stats+70(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%r14), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$8191, %eax             # imm = 0x1FFF
	jne	.LBB2_24
# %bb.22:
	movzwl	22(%rbx), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$8191, %eax             # imm = 0x1FFF
	je	.LBB2_24
# %bb.23:
	leaq	16(%rbx), %rdi
	movl	$20, %edx
	movq	%r14, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
.LBB2_24:
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB2_25
.LBB2_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %edi
	callq	memp_malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_16
# %bb.14:
	movq	%rax, %rbx
	jmp	.LBB2_15
.LBB2_16:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	ip_reass_remove_oldest_datagram
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %eax
	jge	.LBB2_18
# %bb.17:
	xorl	%eax, %eax
	jmp	.LBB2_19
.LBB2_18:
	movl	$4, %edi
	callq	memp_malloc
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rbx
.LBB2_19:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB2_20
.LBB2_15:
	movl	$40, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rax, %r12
	callq	memset
	movb	$15, 39(%rbx)
	movq	reassdatagrams(%rip), %rax
	movq	%rax, (%rbx)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	%r12, reassdatagrams(%rip)
	leaq	16(%rbx), %rdi
	movl	$20, %edx
	movq	%r14, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	je	.LBB2_97
.LBB2_25:
	shll	$3, -52(%rbp)           # 4-byte Folded Spill
	movzbl	%r15b, %eax
	subl	%eax, %ecx
	movzwl	6(%r14), %r12d
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %r12b
	jne	.LBB2_29
# %bb.26:
	movl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	addw	-52(%rbp), %ax          # 2-byte Folded Reload
	jb	.LBB2_90
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$-21, %ax
	ja	.LBB2_90
# %bb.28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_29:
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	8(%r13), %r15
	movzwl	2(%r15), %edi
	callq	lwip_htons
	movl	%eax, %r14d
	movzbl	(%r15), %eax
	shll	$2, %eax
	andl	$60, %eax
	movzwl	%r14w, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	jb	.LBB2_89
# %bb.30:
	movzbl	%al, %eax
	subl	%eax, %r14d
	movzwl	6(%r15), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	shll	$3, %eax
	movq	8(%r13), %r10
	movq	$0, (%r10)
	movw	%ax, 8(%r10)
	addw	%ax, %r14w
	movw	%r14w, 10(%r10)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB2_31
.LBB2_89:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_90:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_91:
	cmpq	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_97
# %bb.92:
	cmpq	reassdatagrams(%rip), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_93
# %bb.94:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	movq	%rax, reassdatagrams(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %edi
	movq	%rbx, %rsi
	callq	memp_free
	jmp	.LBB2_95
.LBB2_20:
	addw	$1, lwip_stats+60(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_95:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_96
.LBB2_31:
	movq	8(%rbx), %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB2_48
# %bb.32:                               # %.preheader6
	movl	$1, %r9d
	xorl	%edi, %edi
	movq	%r8, %rsi
	jmp	.LBB2_33
.LBB2_46:                               #   in Loop: Header=BB2_33 Depth=1
	movq	(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB2_47
.LBB2_33:                               # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rcx
	movq	8(%rsi), %rdi
	movzwl	8(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%dx, %ax
	jb	.LBB2_34
# %bb.41:                               #   in Loop: Header=BB2_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_87
# %bb.42:                               #   in Loop: Header=BB2_33 Depth=1
	movzwl	10(%rdi), %r11d
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r11w, %ax
	jb	.LBB2_87
# %bb.43:                               #   in Loop: Header=BB2_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB2_46
# %bb.44:                               #   in Loop: Header=BB2_33 Depth=1
	cmpw	%dx, 10(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_46
# %bb.45:                               #   in Loop: Header=BB2_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r9d, %r9d
	jmp	.LBB2_46
.LBB2_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, 8(%rbx)
	movl	$1, %ecx
	movq	%r13, %r8
.LBB2_49:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r9d
.LBB2_50:
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %r12b
	je	.LBB2_52
# %bb.51:
	testb	$1, 38(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_52
# %bb.81:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-46(%rbp), %eax         # 2-byte Folded Reload
	addw	%ax, ip_reass_pbufcount(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_98
.LBB2_52:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	je	.LBB2_53
# %bb.54:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB2_60
# %bb.55:
	movq	8(%r8), %rax
	cmpw	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_60
# %bb.56:
	movq	(%r10), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB2_78
# %bb.57:
	movq	8(%rcx), %r10
	cmpw	8(%r10), %r14w
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_59
.LBB2_76:                               # =>This Inner Loop Header: Depth=1
	movq	(%r10), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB2_78
# %bb.77:                               #   in Loop: Header=BB2_76 Depth=1
	movzwl	10(%r10), %edx
	movq	8(%rcx), %r10
	cmpw	8(%r10), %dx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_76
.LBB2_59:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_60:
	xorl	%r9d, %r9d
.LBB2_61:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_62
.LBB2_34:
	movq	%rsi, (%r10)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB2_39
# %bb.35:
	movzwl	10(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%si, %ax
	jb	.LBB2_87
# %bb.36:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%dx, %r14w
	ja	.LBB2_87
# %bb.37:
	movq	%r13, (%rcx)
	xorl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%r9d, %ecx
	cmpw	%ax, %si
	je	.LBB2_49
	jmp	.LBB2_38
.LBB2_53:
	xorl	%r9d, %r9d
.LBB2_62:
	movzwl	-46(%rbp), %eax         # 2-byte Folded Reload
	addw	%ax, ip_reass_pbufcount(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %r12b
	jne	.LBB2_64
# %bb.63:
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	-52(%rbp), %eax         # 4-byte Folded Reload
	movw	%ax, 36(%rbx)
	orb	$1, 38(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_64:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	je	.LBB2_98
# %bb.65:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_67
# %bb.66:
	movzwl	248(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB2_68
.LBB2_67:
	movq	%r14, %rdi
	movl	$20, %esi
	callq	inet_chksum
	movw	%ax, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_68:
	movq	8(%rbx), %r14
.LBB2_70:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB2_71
# %bb.69:                               #   in Loop: Header=BB2_70 Depth=1
	movq	8(%r15), %r12
	movl	$20, %esi
	movq	%r15, %rdi
	callq	pbuf_remove_header
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	pbuf_cat
	movq	(%r12), %r15
	jmp	.LBB2_70
.LBB2_71:
	movq	reassdatagrams(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	je	.LBB2_82
# %bb.72:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_75
.LBB2_73:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	je	.LBB2_83
# %bb.74:                               #   in Loop: Header=BB2_73 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	testq	%rcx, %rcx
	jne	.LBB2_73
.LBB2_75:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.13, %edi
	jmp	.LBB2_80
.LBB2_83:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB2_84
.LBB2_47:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, (%rdi)
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%ax, %r11w
	jne	.LBB2_49
	jmp	.LBB2_50
.LBB2_82:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	movq	%rax, reassdatagrams(%rip)
.LBB2_84:
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %edi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	pbuf_clen
                                        # kill: def $ax killed $ax def $eax
	movzwl	ip_reass_pbufcount(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%ax, %cx
	jb	.LBB2_85
# %bb.86:
	subl	%eax, %ecx
	movw	%cx, ip_reass_pbufcount(%rip)
	jmp	.LBB2_99
.LBB2_39:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%dx, %r14w
	jbe	.LBB2_40
.LBB2_87:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB2_91
# %bb.88:
	movl	$.L.str.3, %edi
	jmp	.LBB2_80
.LBB2_78:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %rax
	jne	.LBB2_61
# %bb.79:
	movl	$.L.str.11, %edi
	jmp	.LBB2_80
.LBB2_40:
	movq	%r13, 8(%rbx)
	movq	%r13, %r8
	movl	%r9d, %edx
.LBB2_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	jmp	.LBB2_49
.LBB2_93:
	movl	$.L.str.4, %edi
.LBB2_80:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB2_85:
	movl	$.L.str, %edi
	jmp	.LBB2_80
.Lfunc_end2:
	.size	ip4_reass, .Lfunc_end2-ip4_reass
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ip_reass_remove_oldest_datagram
	.type	ip_reass_remove_oldest_datagram,@function
ip_reass_remove_oldest_datagram:        # @ip_reass_remove_oldest_datagram
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r14d
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movq	reassdatagrams(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB3_17
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movl	12(%r12), %r8d
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB3_3:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	cmpl	%r8d, 28(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_7
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=2
	movl	32(%rax), %ecx
	cmpl	16(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_7
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=2
	movzwl	20(%rax), %ecx
	cmpw	4(%r12), %cx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_6
	.p2align	4, 0x90
.LBB3_7:                                #   in Loop: Header=BB3_3 Depth=2
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_10
# %bb.8:                                #   in Loop: Header=BB3_3 Depth=2
	movzbl	39(%rax), %ecx
	cmpb	39(%rdi), %cl
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB3_10
.LBB3_6:                                #   in Loop: Header=BB3_3 Depth=2
	movq	%rdx, %rsi
	jmp	.LBB3_11
	.p2align	4, 0x90
.LBB3_10:                               #   in Loop: Header=BB3_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
.LBB3_11:                               #   in Loop: Header=BB3_3 Depth=2
	movq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB3_13
# %bb.12:                               #   in Loop: Header=BB3_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdx
	movq	%rax, %rsi
	jmp	.LBB3_3
	.p2align	4, 0x90
.LBB3_13:                               #   in Loop: Header=BB3_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_15
# %bb.14:                               #   in Loop: Header=BB3_1 Depth=1
	callq	ip_reass_free_complete_datagram
	addl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB3_15:                               #   in Loop: Header=BB3_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ebx
	jl	.LBB3_18
# %bb.16:                               #   in Loop: Header=BB3_1 Depth=1
	cmpl	%r14d, %r15d
	jl	.LBB3_1
	jmp	.LBB3_18
.LBB3_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ip_reass_remove_oldest_datagram, .Lfunc_end3-ip_reass_remove_oldest_datagram
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
	je	.LBB4_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB4_2:
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
.Lfunc_end4:
	.size	uk_pr_crit, .Lfunc_end4-uk_pr_crit
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
