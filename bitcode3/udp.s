	.text
	.file	"udp.c"
	.globl	udp_init                # -- Begin function udp_init
	.p2align	4, 0x90
	.type	udp_init,@function
udp_init:                               # @udp_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB0_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB0_2
.LBB0_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp1, %r11
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
	callq	uk_swrand_randr
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
	movl	-28(%rbp), %ebx
	jmp	.LBB0_4
.LBB0_2:
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	movl	$uk_swrand_def, %edi
	callq	uk_swrand_randr_r
	movl	%eax, %ebx
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	%ebx, -28(%rbp)
.LBB0_4:
	orl	$49152, %ebx            # imm = 0xC000
	movw	%bx, udp_port(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	udp_init, .Lfunc_end0-udp_init
                                        # -- End function
	.globl	udp_input               # -- Begin function udp_input
	.p2align	4, 0x90
	.type	udp_input,@function
udp_input:                              # @udp_input
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	testq	%rdi, %rdi
	je	.LBB1_91
# %bb.1:
	movq	%rsi, %r12
	testq	%rsi, %rsi
	je	.LBB1_92
# %bb.2:
	movq	%rdi, %r13
	addw	$1, lwip_stats+122(%rip)
	cmpw	$7, 18(%rdi)
	ja	.LBB1_4
# %bb.3:
	addw	$1, lwip_stats+130(%rip)
	jmp	.LBB1_83
.LBB1_4:
	movq	8(%r13), %rbx
	cmpb	$6, ip_data+80(%rip)
	jne	.LBB1_6
# %bb.5:
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_7
.LBB1_6:
	movl	ip_data+60(%rip), %edi
	movq	ip_data(%rip), %rsi
	callq	ip4_addr_isbroadcast_u32
                                        # kill: def $al killed $al def $eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB1_7:
	movzwl	(%rbx), %edi
	callq	lwip_htons
	movw	%ax, -46(%rbp)          # 2-byte Spill
	movzwl	2(%rbx), %edi
	callq	lwip_htons
	movq	udp_pcbs(%rip), %rdx
	testq	%rdx, %rdx
	je	.LBB1_63
# %bb.8:
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	ip_data+8(%rip), %rdi
	movb	ip_data+80(%rip), %r9b
	cmpb	$0, -56(%rbp)           # 1-byte Folded Reload
	setne	%cl
	movl	ip_data+60(%rip), %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	cmpl	$-1, %esi
	sete	%r8b
	andb	%cl, %r8b
	movb	ip_data+56(%rip), %cl
	movb	%cl, -43(%rbp)          # 1-byte Spill
	movl	ip_data+36(%rip), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	ip_data+64(%rip), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	ip_data+40(%rip), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	ip_data+68(%rip), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	ip_data+44(%rip), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	movl	ip_data+72(%rip), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	ip_data+48(%rip), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	movb	ip_data+76(%rip), %cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
	movb	ip_data+52(%rip), %cl
	movb	%cl, -42(%rbp)          # 1-byte Spill
	xorl	%ebx, %ebx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rcx
	xorl	%r15d, %r15d
	jmp	.LBB1_11
.LBB1_9:                                #   in Loop: Header=BB1_11 Depth=1
	movq	%r14, %r15
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_11 Depth=1
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB1_62
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %r11
	movq	%rcx, %rbx
	cmpw	%ax, 66(%rcx)
	jne	.LBB1_10
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	movzbl	48(%rbx), %ecx
	testb	%cl, %cl
	je	.LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=1
	movzbl	264(%rdi), %edx
	addb	$1, %dl
	cmpb	%dl, %cl
	jne	.LBB1_10
.LBB1_14:                               #   in Loop: Header=BB1_11 Depth=1
	movzbl	20(%rbx), %r10d
	cmpb	$46, %r10b
	jne	.LBB1_20
.LBB1_15:                               #   in Loop: Header=BB1_11 Depth=1
	testb	$4, 64(%rbx)
	jne	.LBB1_47
# %bb.16:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%rbx, %r14
	testq	%r15, %r15
	je	.LBB1_48
# %bb.17:                               #   in Loop: Header=BB1_11 Depth=1
	testb	%r8b, %r8b
	je	.LBB1_25
# %bb.18:                               #   in Loop: Header=BB1_11 Depth=1
	cmpb	$0, 20(%r15)
	jne	.LBB1_45
# %bb.44:                               #   in Loop: Header=BB1_11 Depth=1
	movl	(%r15), %ecx
	cmpl	8(%r12), %ecx
	je	.LBB1_47
.LBB1_45:                               #   in Loop: Header=BB1_11 Depth=1
	testb	%r10b, %r10b
	jne	.LBB1_47
# %bb.46:                               #   in Loop: Header=BB1_11 Depth=1
	movl	(%rbx), %ecx
	movq	%rbx, %r14
	cmpl	8(%r12), %ecx
	je	.LBB1_48
.LBB1_47:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%r15, %r14
.LBB1_48:                               #   in Loop: Header=BB1_11 Depth=1
	movzwl	-46(%rbp), %ecx         # 2-byte Folded Reload
	cmpw	%cx, 68(%rbx)
	jne	.LBB1_9
# %bb.49:                               #   in Loop: Header=BB1_11 Depth=1
	movzbl	44(%rbx), %ecx
	movl	24(%rbx), %esi
	cmpb	$6, %cl
	jne	.LBB1_54
# %bb.50:                               #   in Loop: Header=BB1_11 Depth=1
	testl	%esi, %esi
	jne	.LBB1_55
# %bb.51:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 28(%rbx)
	jne	.LBB1_55
# %bb.52:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 32(%rbx)
	jne	.LBB1_55
# %bb.53:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 36(%rbx)
	jne	.LBB1_55
	jmp	.LBB1_73
.LBB1_20:                               #   in Loop: Header=BB1_11 Depth=1
	cmpb	%r9b, %r10b
	jne	.LBB1_10
# %bb.21:                               #   in Loop: Header=BB1_11 Depth=1
	movl	(%rbx), %esi
	cmpb	$0, -56(%rbp)           # 1-byte Folded Reload
	je	.LBB1_30
# %bb.22:                               #   in Loop: Header=BB1_11 Depth=1
	testl	%esi, %esi
	je	.LBB1_15
# %bb.23:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$-1, -52(%rbp)          # 4-byte Folded Reload
	je	.LBB1_15
# %bb.24:                               #   in Loop: Header=BB1_11 Depth=1
	xorl	-52(%rbp), %esi         # 4-byte Folded Reload
	testl	%esi, 32(%r12)
	jne	.LBB1_10
	jmp	.LBB1_15
.LBB1_54:                               #   in Loop: Header=BB1_11 Depth=1
	testl	%esi, %esi
	je	.LBB1_73
.LBB1_55:                               #   in Loop: Header=BB1_11 Depth=1
	cmpb	-43(%rbp), %cl          # 1-byte Folded Reload
	jne	.LBB1_9
# %bb.56:                               #   in Loop: Header=BB1_11 Depth=1
	cmpb	$6, %cl
	jne	.LBB1_72
# %bb.57:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	-60(%rbp), %esi         # 4-byte Folded Reload
	jne	.LBB1_9
# %bb.58:                               #   in Loop: Header=BB1_11 Depth=1
	movl	-96(%rbp), %ecx         # 4-byte Reload
	cmpl	%ecx, 28(%rbx)
	jne	.LBB1_9
# %bb.59:                               #   in Loop: Header=BB1_11 Depth=1
	movl	-88(%rbp), %ecx         # 4-byte Reload
	cmpl	%ecx, 32(%rbx)
	jne	.LBB1_9
# %bb.60:                               #   in Loop: Header=BB1_11 Depth=1
	movl	-80(%rbp), %ecx         # 4-byte Reload
	cmpl	%ecx, 36(%rbx)
	jne	.LBB1_9
# %bb.61:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%r14, %r15
	movzbl	-42(%rbp), %ecx         # 1-byte Folded Reload
	cmpb	%cl, 40(%rbx)
	jne	.LBB1_10
	jmp	.LBB1_73
.LBB1_25:                               #   in Loop: Header=BB1_11 Depth=1
	movl	(%rbx), %ecx
	cmpb	$6, %r10b
	jne	.LBB1_40
# %bb.26:                               #   in Loop: Header=BB1_11 Depth=1
	testl	%ecx, %ecx
	jne	.LBB1_41
# %bb.27:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 4(%rbx)
	jne	.LBB1_41
# %bb.28:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 8(%rbx)
	jne	.LBB1_41
# %bb.29:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 12(%rbx)
	movq	%r15, %r14
	jne	.LBB1_41
	jmp	.LBB1_48
.LBB1_30:                               #   in Loop: Header=BB1_11 Depth=1
	cmpb	$6, %r9b
	jne	.LBB1_42
# %bb.31:                               #   in Loop: Header=BB1_11 Depth=1
	testl	%esi, %esi
	jne	.LBB1_35
# %bb.32:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 4(%rbx)
	jne	.LBB1_35
# %bb.33:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 8(%rbx)
	jne	.LBB1_35
# %bb.34:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 12(%rbx)
	je	.LBB1_15
.LBB1_35:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	-52(%rbp), %esi         # 4-byte Folded Reload
	jne	.LBB1_10
# %bb.36:                               #   in Loop: Header=BB1_11 Depth=1
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmpl	%ecx, 4(%rbx)
	jne	.LBB1_10
# %bb.37:                               #   in Loop: Header=BB1_11 Depth=1
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%ecx, 8(%rbx)
	jne	.LBB1_10
# %bb.38:                               #   in Loop: Header=BB1_11 Depth=1
	movl	-76(%rbp), %ecx         # 4-byte Reload
	cmpl	%ecx, 12(%rbx)
	jne	.LBB1_10
# %bb.39:                               #   in Loop: Header=BB1_11 Depth=1
	movzbl	-41(%rbp), %ecx         # 1-byte Folded Reload
	cmpb	%cl, 16(%rbx)
	jne	.LBB1_10
	jmp	.LBB1_15
.LBB1_72:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%r14, %r15
	cmpl	-60(%rbp), %esi         # 4-byte Folded Reload
	jne	.LBB1_10
	jmp	.LBB1_73
.LBB1_40:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%r15, %r14
	testl	%ecx, %ecx
	je	.LBB1_48
.LBB1_41:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%rbx, %r14
	jmp	.LBB1_48
.LBB1_42:                               #   in Loop: Header=BB1_11 Depth=1
	testl	%esi, %esi
	je	.LBB1_15
# %bb.43:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	-52(%rbp), %esi         # 4-byte Folded Reload
	jne	.LBB1_10
	jmp	.LBB1_15
.LBB1_62:
	movb	$1, %r14b
	testq	%r15, %r15
	movq	-72(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_63
# %bb.68:
	testb	$2, 249(%r12)
	je	.LBB1_77
	jmp	.LBB1_69
.LBB1_63:
	cmpq	$0, ip_data+24(%rip)
	je	.LBB1_66
# %bb.64:
	movl	$ip_data+60, %esi
	movq	%r12, %rdi
	callq	netif_get_ip6_addr_match
	cmpq	$0, ip_data+24(%rip)
	je	.LBB1_66
# %bb.65:
	notb	%al
	shrb	$7, %al
	testb	%al, %al
	jne	.LBB1_67
	jmp	.LBB1_84
.LBB1_66:
	movl	8(%r12), %eax
	cmpl	ip_data+60(%rip), %eax
	sete	%al
	testb	%al, %al
	je	.LBB1_84
.LBB1_67:
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	testb	$2, 249(%r12)
	je	.LBB1_77
.LBB1_69:
	cmpw	$0, 6(%rbx)
	je	.LBB1_77
# %bb.70:
	movzwl	16(%r13), %edx
	movl	$ip_data+36, %ecx
	movl	$ip_data+60, %r8d
	movq	%r13, %rdi
	movl	$17, %esi
	callq	ip_chksum_pseudo
	testw	%ax, %ax
	je	.LBB1_77
# %bb.71:
	addw	$1, lwip_stats+128(%rip)
	jmp	.LBB1_83
.LBB1_73:
	testq	%r11, %r11
	je	.LBB1_75
# %bb.74:
	movq	56(%rbx), %rax
	movq	%rax, 56(%r11)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 56(%rbx)
	movq	%rbx, udp_pcbs(%rip)
	jmp	.LBB1_76
.LBB1_75:
	addw	$1, lwip_stats+142(%rip)
.LBB1_76:
	movb	$1, %r14b
	movq	%rbx, %r15
	movq	-72(%rbp), %rbx         # 8-byte Reload
	testb	$2, 249(%r12)
	jne	.LBB1_69
.LBB1_77:
	movl	$8, %esi
	movq	%r13, %rdi
	callq	pbuf_remove_header
	testb	%al, %al
	jne	.LBB1_93
# %bb.78:
	testb	%r14b, %r14b
	je	.LBB1_81
# %bb.79:
	movq	80(%r15), %rax
	testq	%rax, %rax
	je	.LBB1_84
# %bb.80:
	movq	88(%r15), %rdi
	movzwl	-46(%rbp), %r8d         # 2-byte Folded Reload
	movl	$ip_data+36, %ecx
	movq	%r15, %rsi
	movq	%r13, %rdx
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB1_81:
	cmpb	$0, -56(%rbp)           # 1-byte Folded Reload
	je	.LBB1_85
.LBB1_82:
	addw	$1, lwip_stats+136(%rip)
.LBB1_83:
	addw	$1, lwip_stats+126(%rip)
.LBB1_84:
	movq	%r13, %rdi
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pbuf_free               # TAILCALL
.LBB1_85:
	cmpb	$6, ip_data+80(%rip)
	movzbl	ip_data+60(%rip), %eax
	jne	.LBB1_87
# %bb.86:
	cmpl	$255, %eax
	je	.LBB1_82
	jmp	.LBB1_88
.LBB1_87:
	andl	$-16, %eax
	cmpl	$224, %eax
	je	.LBB1_82
.LBB1_88:
	movl	ip_data+32(%rip), %eax
	addl	$8, %eax
	movswl	%ax, %esi
	movq	%r13, %rdi
	callq	pbuf_header_force
	cmpq	$0, ip_data+24(%rip)
	je	.LBB1_90
# %bb.89:
	movq	%r13, %rdi
	movl	$4, %esi
	callq	icmp6_dest_unreach
	jmp	.LBB1_82
.LBB1_90:
	movq	%r13, %rdi
	movl	$3, %esi
	callq	icmp_dest_unreach
	jmp	.LBB1_82
.LBB1_91:
	movl	$.L.str, %edi
	jmp	.LBB1_94
.LBB1_92:
	movl	$.L.str.3, %edi
	jmp	.LBB1_94
.LBB1_93:
	movl	$.L.str.4, %edi
.LBB1_94:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end1:
	.size	udp_input, .Lfunc_end1-udp_input
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
	movl	$uk_pr_crit.__str.26, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	uk_pr_crit, .Lfunc_end2-uk_pr_crit
                                        # -- End function
	.globl	udp_send                # -- Begin function udp_send
	.p2align	4, 0x90
	.type	udp_send,@function
udp_send:                               # @udp_send
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB3_1
# %bb.3:
	testq	%rsi, %rsi
	je	.LBB3_4
# %bb.5:
	cmpb	$46, 44(%rdi)
	jne	.LBB3_7
# %bb.6:
	movb	$-6, %al
	popq	%rbp
	retq
.LBB3_7:
	movzwl	68(%rdi), %ecx
	leaq	24(%rdi), %rdx
	popq	%rbp
	jmp	udp_sendto              # TAILCALL
.LBB3_1:
	movl	$.L.str.5, %edi
	jmp	.LBB3_2
.LBB3_4:
	movl	$.L.str.6, %edi
.LBB3_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end3:
	.size	udp_send, .Lfunc_end3-udp_send
                                        # -- End function
	.globl	udp_sendto              # -- Begin function udp_sendto
	.p2align	4, 0x90
	.type	udp_sendto,@function
udp_sendto:                             # @udp_sendto
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB4_1
# %bb.3:
	movq	%rsi, %r14
	testq	%rsi, %rsi
	je	.LBB4_4
# %bb.5:
	movq	%rdx, %r12
	testq	%rdx, %rdx
	je	.LBB4_6
# %bb.7:
	movl	%ecx, %r15d
	movq	%rdi, %rbx
	movb	20(%rdi), %cl
	cmpb	$46, %cl
	je	.LBB4_9
# %bb.8:
	movb	$-6, %al
	cmpb	20(%r12), %cl
	jne	.LBB4_27
.LBB4_9:
	movb	48(%rbx), %al
	testb	%al, %al
	je	.LBB4_11
# %bb.10:
	movzbl	%al, %edi
	callq	netif_get_by_index
.LBB4_25:
	testq	%rax, %rax
	je	.LBB4_26
.LBB4_28:
	movzwl	%r15w, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rax, %r8
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	udp_sendto_if           # TAILCALL
.LBB4_11:
	movb	20(%r12), %al
	movzbl	(%r12), %ecx
	cmpb	$6, %al
	jne	.LBB4_13
# %bb.12:
	cmpl	$255, %ecx
	je	.LBB4_14
	jmp	.LBB4_23
.LBB4_26:
	addw	$1, lwip_stats+134(%rip)
	movb	$-4, %al
.LBB4_27:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_13:
	andl	$-16, %ecx
	cmpl	$224, %ecx
	jne	.LBB4_24
.LBB4_14:
	movb	76(%rbx), %cl
	testb	%cl, %cl
	je	.LBB4_16
# %bb.15:
	movzbl	%cl, %edi
	callq	netif_get_by_index
	testq	%rax, %rax
	jne	.LBB4_28
.LBB4_21:
	movb	20(%r12), %al
	jmp	.LBB4_22
.LBB4_16:
	testb	%al, %al
	je	.LBB4_17
.LBB4_22:
	cmpb	$6, %al
	jne	.LBB4_24
.LBB4_23:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	ip6_route
	jmp	.LBB4_25
.LBB4_17:
	movl	72(%rbx), %eax
	testl	%eax, %eax
	je	.LBB4_24
# %bb.18:
	cmpl	ip_addr_broadcast(%rip), %eax
	je	.LBB4_24
# %bb.19:
	leaq	72(%rbx), %rdi
	callq	ip4_route
	testq	%rax, %rax
	jne	.LBB4_28
	jmp	.LBB4_21
.LBB4_24:
	movq	%r12, %rdi
	callq	ip4_route
	jmp	.LBB4_25
.LBB4_1:
	movl	$.L.str.7, %edi
	jmp	.LBB4_2
.LBB4_4:
	movl	$.L.str.8, %edi
	jmp	.LBB4_2
.LBB4_6:
	movl	$.L.str.9, %edi
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
	.size	udp_sendto, .Lfunc_end4-udp_sendto
                                        # -- End function
	.globl	udp_sendto_if           # -- Begin function udp_sendto_if
	.p2align	4, 0x90
	.type	udp_sendto_if,@function
udp_sendto_if:                          # @udp_sendto_if
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
	je	.LBB5_23
# %bb.1:
	movq	%rsi, %r15
	testq	%rsi, %rsi
	je	.LBB5_24
# %bb.2:
	movq	%rdx, %r13
	testq	%rdx, %rdx
	je	.LBB5_25
# %bb.3:
	movq	%r8, %r14
	testq	%r8, %r8
	je	.LBB5_26
# %bb.4:
	movl	%ecx, %r12d
	movq	%rdi, %rbx
	movb	20(%rdi), %cl
	movb	20(%r13), %dl
	cmpb	$46, %cl
	jne	.LBB5_6
# %bb.5:
	movl	%edx, %ecx
	jmp	.LBB5_7
.LBB5_6:
	movb	$-6, %al
	cmpb	%dl, %cl
	jne	.LBB5_22
.LBB5_7:
	cmpb	$6, %cl
	jne	.LBB5_12
# %bb.8:
	movl	(%rbx), %eax
	testl	%eax, %eax
	je	.LBB5_16
# %bb.9:
	cmpb	$-1, %al
	jne	.LBB5_19
.LBB5_10:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	ip6_select_source_address
	movq	%rax, %r9
	testq	%rax, %rax
	jne	.LBB5_20
	jmp	.LBB5_21
.LBB5_12:
	movl	(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB5_15
# %bb.13:
	movl	%ecx, %eax
	andl	$240, %eax
	cmpl	$224, %eax
	je	.LBB5_15
# %bb.14:
	movb	$-4, %al
	movq	%rbx, %r9
	cmpl	8(%r14), %ecx
	jne	.LBB5_22
	jmp	.LBB5_20
.LBB5_15:
	leaq	8(%r14), %r9
	jmp	.LBB5_20
.LBB5_16:
	cmpl	$0, 4(%rbx)
	jne	.LBB5_19
# %bb.17:
	cmpl	$0, 8(%rbx)
	jne	.LBB5_19
# %bb.18:
	cmpl	$0, 12(%rbx)
	je	.LBB5_10
.LBB5_19:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	netif_get_ip6_addr_match
	movq	%rbx, %r9
	testb	%al, %al
	js	.LBB5_21
.LBB5_20:
	movzwl	%r12w, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%r14, %r8
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	udp_sendto_if_src       # TAILCALL
.LBB5_21:
	movb	$-4, %al
.LBB5_22:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_23:
	movl	$.L.str.10, %edi
	jmp	.LBB5_27
.LBB5_24:
	movl	$.L.str.11, %edi
	jmp	.LBB5_27
.LBB5_25:
	movl	$.L.str.12, %edi
	jmp	.LBB5_27
.LBB5_26:
	movl	$.L.str.13, %edi
.LBB5_27:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end5:
	.size	udp_sendto_if, .Lfunc_end5-udp_sendto_if
                                        # -- End function
	.globl	udp_sendto_if_src       # -- Begin function udp_sendto_if_src
	.p2align	4, 0x90
	.type	udp_sendto_if_src,@function
udp_sendto_if_src:                      # @udp_sendto_if_src
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
	je	.LBB6_1
# %bb.3:
	movq	%rsi, %r15
	testq	%rsi, %rsi
	je	.LBB6_4
# %bb.5:
	movq	%rdx, %r13
	testq	%rdx, %rdx
	je	.LBB6_6
# %bb.7:
	movq	%r9, %r14
	testq	%r9, %r9
	je	.LBB6_8
# %bb.9:
	testq	%r8, %r8
	je	.LBB6_10
# %bb.11:
	movq	%rdi, %rbx
	movb	20(%rdi), %al
	cmpb	$46, %al
	jne	.LBB6_12
.LBB6_14:
	cmpw	$0, 66(%rbx)
	je	.LBB6_15
.LBB6_16:
	movb	$-1, %r12b
	cmpw	$-9, 16(%r15)
	ja	.LBB6_44
# %bb.17:
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movl	$8, %esi
	movq	%r15, %rdi
	callq	pbuf_add_header
	movq	%r15, %rcx
	testb	%al, %al
	je	.LBB6_21
# %bb.18:
	movl	$54, %edi
	movl	$8, %esi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB6_44
# %bb.19:
	movq	%rax, %rcx
	cmpw	$0, 16(%r15)
	je	.LBB6_21
# %bb.20:
	movq	%rcx, %r12
	movq	%rcx, %rdi
	movq	%r15, %rsi
	callq	pbuf_chain
	movq	%r12, %rcx
.LBB6_21:
	cmpw	$7, 18(%rcx)
	jbe	.LBB6_22
# %bb.23:
	movq	8(%rcx), %r12
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movzwl	66(%rbx), %edi
	callq	lwip_htons
	movw	%ax, (%r12)
	movzwl	-52(%rbp), %edi         # 2-byte Folded Reload
	callq	lwip_htons
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movw	%ax, 2(%r12)
	movw	$0, 6(%r12)
	testb	$8, 64(%rbx)
	je	.LBB6_28
# %bb.24:
	cmpb	$6, 20(%r13)
	movzbl	(%r13), %eax
	jne	.LBB6_26
# %bb.25:
	cmpl	$255, %eax
	je	.LBB6_27
	jmp	.LBB6_28
.LBB6_12:
	movb	$-6, %r12b
	cmpb	20(%r14), %al
	jne	.LBB6_44
# %bb.13:
	cmpb	20(%r13), %al
	je	.LBB6_14
	jmp	.LBB6_44
.LBB6_15:
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movq	%r8, %r12
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movq	%r15, %r13
	movq	%r14, %r15
	movl	%ecx, %r14d
	callq	udp_bind
	movl	%r14d, %ecx
	movq	%r15, %r14
	movq	%r13, %r15
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	%r12, %r8
	movl	%eax, %r12d
	testb	%al, %al
	jne	.LBB6_44
	jmp	.LBB6_16
.LBB6_26:
	andl	$-16, %eax
	cmpl	$224, %eax
	jne	.LBB6_28
.LBB6_27:
	orb	$4, 21(%rcx)
.LBB6_28:
	movzwl	16(%rcx), %edi
	callq	lwip_htons
	movw	%ax, 4(%r12)
	movq	-64(%rbp), %rdx         # 8-byte Reload
	testb	$2, 248(%rdx)
	je	.LBB6_32
# %bb.29:
	cmpb	$6, 20(%r13)
	je	.LBB6_31
# %bb.30:
	testb	$1, 64(%rbx)
	jne	.LBB6_32
.LBB6_31:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movzwl	16(%rdi), %edx
	movl	$17, %esi
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	ip_chksum_pseudo
	movq	-64(%rbp), %rdx         # 8-byte Reload
                                        # kill: def $ax killed $ax def $eax
	xorl	%ecx, %ecx
	cmpw	$1, %ax
	sbbw	%cx, %cx
	orl	%eax, %ecx
	movw	%cx, 6(%r12)
.LBB6_32:
	movb	20(%r13), %al
	movzbl	(%r13), %ecx
	cmpb	$6, %al
	jne	.LBB6_34
# %bb.33:
	cmpl	$255, %ecx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	je	.LBB6_36
.LBB6_37:
	leaq	51(%rbx), %rcx
	jmp	.LBB6_38
.LBB6_34:
	andl	$-16, %ecx
	cmpl	$224, %ecx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jne	.LBB6_37
.LBB6_36:
	leaq	77(%rbx), %rcx
.LBB6_38:
	movb	(%rcx), %cl
	cmpb	$6, %al
	jne	.LBB6_40
# %bb.39:
	movzbl	50(%rbx), %r8d
	movq	%rdx, (%rsp)
	movzbl	%cl, %ecx
	movq	%rsi, %rbx
	movq	%rsi, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	movl	$17, %r9d
	callq	ip6_output_if_src
	jmp	.LBB6_41
.LBB6_40:
	movzbl	50(%rbx), %r8d
	movq	%rdx, (%rsp)
	movzbl	%cl, %ecx
	movq	%rsi, %rbx
	movq	%rsi, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	movl	$17, %r9d
	callq	ip4_output_if_src
.LBB6_41:
	movl	%eax, %r12d
	cmpq	%r15, %rbx
	je	.LBB6_43
# %bb.42:
	movq	%rbx, %rdi
	callq	pbuf_free
.LBB6_43:
	addw	$1, lwip_stats+120(%rip)
.LBB6_44:
	movl	%r12d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_1:
	movl	$.L.str.14, %edi
	jmp	.LBB6_2
.LBB6_4:
	movl	$.L.str.15, %edi
	jmp	.LBB6_2
.LBB6_6:
	movl	$.L.str.16, %edi
	jmp	.LBB6_2
.LBB6_8:
	movl	$.L.str.17, %edi
	jmp	.LBB6_2
.LBB6_10:
	movl	$.L.str.18, %edi
.LBB6_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB6_22:
	movl	$.L.str.19, %edi
	jmp	.LBB6_2
.Lfunc_end6:
	.size	udp_sendto_if_src, .Lfunc_end6-udp_sendto_if_src
                                        # -- End function
	.globl	udp_bind                # -- Begin function udp_bind
	.p2align	4, 0x90
	.type	udp_bind,@function
udp_bind:                               # @udp_bind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	testq	%rsi, %rsi
	movl	$ip_addr_any, %r15d
	cmovneq	%rsi, %r15
	testq	%rdi, %rdi
	je	.LBB7_73
# %bb.1:
	movl	%edx, %r14d
	movq	%rdi, %rbx
	movq	udp_pcbs(%rip), %rax
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB7_4
	.p2align	4, 0x90
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, %rax
	je	.LBB7_5
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	movq	56(%rax), %rax
	testq	%rax, %rax
	jne	.LBB7_2
.LBB7_4:
	cmpb	$6, 20(%r15)
	je	.LBB7_6
	jmp	.LBB7_16
.LBB7_5:
	movl	$1, %r12d
	cmpb	$6, 20(%r15)
	jne	.LBB7_16
.LBB7_6:
	cmpb	$0, 16(%r15)
	jne	.LBB7_16
# %bb.7:
	movl	(%r15), %eax
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	cmpl	$33022, %ecx            # imm = 0x80FE
	je	.LBB7_10
# %bb.8:
	movl	%eax, %ecx
	andl	$36863, %ecx            # imm = 0x8FFF
	cmpl	$767, %ecx              # imm = 0x2FF
	je	.LBB7_10
# %bb.9:
	movzwl	%cx, %ecx
	cmpl	$511, %ecx              # imm = 0x1FF
	jne	.LBB7_16
.LBB7_10:
	movb	$6, -36(%rbp)
	movl	%eax, -56(%rbp)
	movl	4(%r15), %eax
	movl	%eax, -52(%rbp)
	movl	8(%r15), %eax
	movl	%eax, -48(%rbp)
	movl	12(%r15), %eax
	movl	%eax, -44(%rbp)
	movb	$0, -40(%rbp)
	leaq	-56(%rbp), %r15
	movq	%r15, %rdi
	movq	%r15, %rsi
	callq	ip6_route
	testq	%rax, %rax
	je	.LBB7_16
# %bb.11:
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	andl	$49407, %edx            # imm = 0xC0FF
	cmpl	$33022, %edx            # imm = 0x80FE
	je	.LBB7_14
# %bb.12:
	andl	$36863, %ecx            # imm = 0x8FFF
	cmpl	$767, %ecx              # imm = 0x2FF
	je	.LBB7_14
# %bb.13:
	movzwl	%cx, %ecx
	cmpl	$511, %ecx              # imm = 0x1FF
	jne	.LBB7_70
.LBB7_14:
	movb	264(%rax), %al
	addb	$1, %al
.LBB7_15:
	movb	%al, -40(%rbp)
.LBB7_16:
	movq	udp_pcbs(%rip), %rax
	testw	%r14w, %r14w
	jne	.LBB7_28
# %bb.17:
	movzwl	udp_port(%rip), %r14d
	xorl	%edx, %edx
	movl	$49152, %ecx            # imm = 0xC000
.LBB7_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
                                        #     Child Loop BB7_22 Depth 2
	incw	%r14w
	cmovel	%ecx, %r14d
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.LBB7_68
	.p2align	4, 0x90
.LBB7_19:                               #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%r14w, 66(%rsi)
	je	.LBB7_21
# %bb.20:                               #   in Loop: Header=BB7_19 Depth=2
	movq	56(%rsi), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_19
	jmp	.LBB7_57
	.p2align	4, 0x90
.LBB7_21:                               #   in Loop: Header=BB7_18 Depth=1
	incw	%r14w
	cmovel	%ecx, %r14d
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.LBB7_68
	.p2align	4, 0x90
.LBB7_22:                               #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%r14w, 66(%rsi)
	je	.LBB7_24
# %bb.23:                               #   in Loop: Header=BB7_22 Depth=2
	movq	56(%rsi), %rsi
	testq	%rsi, %rsi
	jne	.LBB7_22
	jmp	.LBB7_57
.LBB7_24:                               #   in Loop: Header=BB7_18 Depth=1
	movzwl	%dx, %esi
	addl	$2, %edx
                                        # kill: def $dx killed $dx killed $edx def $rdx
	cmpl	$16381, %esi            # imm = 0x3FFD
	jbe	.LBB7_18
# %bb.25:
	movw	%r14w, udp_port(%rip)
	movb	$-8, %al
	jmp	.LBB7_64
.LBB7_26:                               #   in Loop: Header=BB7_28 Depth=1
	testl	%edx, %edx
	je	.LBB7_71
	.p2align	4, 0x90
.LBB7_27:                               #   in Loop: Header=BB7_28 Depth=1
	movq	56(%rax), %rax
.LBB7_28:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB7_58
# %bb.29:                               #   in Loop: Header=BB7_28 Depth=1
	cmpq	%rbx, %rax
	je	.LBB7_27
# %bb.30:                               #   in Loop: Header=BB7_28 Depth=1
	testb	$4, 49(%rbx)
	je	.LBB7_32
# %bb.31:                               #   in Loop: Header=BB7_28 Depth=1
	testb	$4, 49(%rax)
	jne	.LBB7_27
.LBB7_32:                               #   in Loop: Header=BB7_28 Depth=1
	cmpw	%r14w, 66(%rax)
	jne	.LBB7_27
# %bb.33:                               #   in Loop: Header=BB7_28 Depth=1
	movzbl	20(%rax), %ecx
	movzbl	20(%r15), %edx
	cmpb	%dl, %cl
	jne	.LBB7_40
# %bb.34:                               #   in Loop: Header=BB7_28 Depth=1
	movl	(%rax), %edi
	movl	(%r15), %esi
	cmpb	$6, %cl
	jne	.LBB7_41
# %bb.35:                               #   in Loop: Header=BB7_28 Depth=1
	cmpl	%esi, %edi
	jne	.LBB7_44
# %bb.36:                               #   in Loop: Header=BB7_28 Depth=1
	movl	4(%rax), %esi
	cmpl	4(%r15), %esi
	jne	.LBB7_42
# %bb.37:                               #   in Loop: Header=BB7_28 Depth=1
	movl	8(%rax), %esi
	cmpl	8(%r15), %esi
	jne	.LBB7_43
# %bb.38:                               #   in Loop: Header=BB7_28 Depth=1
	movl	12(%rax), %esi
	cmpl	12(%r15), %esi
	jne	.LBB7_42
# %bb.39:                               #   in Loop: Header=BB7_28 Depth=1
	movzbl	16(%rax), %r8d
	movl	%edi, %esi
	cmpb	16(%r15), %r8b
	je	.LBB7_71
	.p2align	4, 0x90
.LBB7_44:                               #   in Loop: Header=BB7_28 Depth=1
	cmpb	$6, %dl
	jne	.LBB7_50
.LBB7_45:                               #   in Loop: Header=BB7_28 Depth=1
	testl	%esi, %esi
	jne	.LBB7_51
# %bb.46:                               #   in Loop: Header=BB7_28 Depth=1
	cmpl	$0, 4(%r15)
	jne	.LBB7_51
# %bb.47:                               #   in Loop: Header=BB7_28 Depth=1
	cmpl	$0, 8(%r15)
	jne	.LBB7_51
# %bb.48:                               #   in Loop: Header=BB7_28 Depth=1
	cmpl	$0, 12(%r15)
	jne	.LBB7_51
	jmp	.LBB7_71
.LBB7_40:                               #   in Loop: Header=BB7_28 Depth=1
	movl	(%r15), %esi
	cmpb	$6, %dl
	je	.LBB7_45
.LBB7_50:                               #   in Loop: Header=BB7_28 Depth=1
	testl	%esi, %esi
	je	.LBB7_71
.LBB7_51:                               #   in Loop: Header=BB7_28 Depth=1
	movl	(%rax), %edx
	cmpb	$6, %cl
	jne	.LBB7_26
# %bb.52:                               #   in Loop: Header=BB7_28 Depth=1
	testl	%edx, %edx
	jne	.LBB7_27
# %bb.53:                               #   in Loop: Header=BB7_28 Depth=1
	cmpl	$0, 4(%rax)
	jne	.LBB7_27
# %bb.54:                               #   in Loop: Header=BB7_28 Depth=1
	cmpl	$0, 8(%rax)
	jne	.LBB7_27
# %bb.55:                               #   in Loop: Header=BB7_28 Depth=1
	cmpl	$0, 12(%rax)
	jne	.LBB7_27
	jmp	.LBB7_71
.LBB7_41:                               #   in Loop: Header=BB7_28 Depth=1
	cmpl	%esi, %edi
	jne	.LBB7_44
	jmp	.LBB7_71
.LBB7_42:                               #   in Loop: Header=BB7_28 Depth=1
	movl	%edi, %esi
	cmpb	$6, %dl
	je	.LBB7_45
	jmp	.LBB7_50
.LBB7_43:                               #   in Loop: Header=BB7_28 Depth=1
	movl	%edi, %esi
	cmpb	$6, %dl
	jne	.LBB7_50
	jmp	.LBB7_45
.LBB7_57:
	movw	%r14w, udp_port(%rip)
	testw	%r14w, %r14w
	je	.LBB7_71
.LBB7_58:
	movb	20(%r15), %al
	movb	%al, 20(%rbx)
	cmpb	$6, 20(%r15)
	movl	(%r15), %eax
	movl	%eax, (%rbx)
	jne	.LBB7_60
# %bb.59:
	movl	4(%r15), %eax
	movl	%eax, 4(%rbx)
	movl	8(%r15), %eax
	movl	%eax, 8(%rbx)
	movl	12(%r15), %eax
	movl	%eax, 12(%rbx)
	movb	16(%r15), %al
	jmp	.LBB7_61
.LBB7_60:
	movl	$0, 12(%rbx)
	movq	$0, 4(%rbx)
	xorl	%eax, %eax
.LBB7_61:
	movb	%al, 16(%rbx)
	movw	%r14w, 66(%rbx)
	testl	%r12d, %r12d
	jne	.LBB7_63
# %bb.62:
	movq	udp_pcbs(%rip), %rax
	movq	%rax, 56(%rbx)
	movq	%rbx, udp_pcbs(%rip)
.LBB7_63:
	xorl	%eax, %eax
	jmp	.LBB7_64
.LBB7_71:
	movb	$-8, %al
.LBB7_64:
                                        # kill: def $al killed $al killed $eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_68:
	movw	%r14w, udp_port(%rip)
	jmp	.LBB7_58
.LBB7_70:
	xorl	%eax, %eax
	jmp	.LBB7_15
.LBB7_73:
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end7:
	.size	udp_bind, .Lfunc_end7-udp_bind
                                        # -- End function
	.globl	udp_bind_netif          # -- Begin function udp_bind_netif
	.p2align	4, 0x90
	.type	udp_bind_netif,@function
udp_bind_netif:                         # @udp_bind_netif
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB8_1
# %bb.2:
	movb	264(%rsi), %al
	addb	$1, %al
	movb	%al, 48(%rdi)
	retq
.LBB8_1:
	xorl	%eax, %eax
	movb	%al, 48(%rdi)
	retq
.Lfunc_end8:
	.size	udp_bind_netif, .Lfunc_end8-udp_bind_netif
                                        # -- End function
	.globl	udp_connect             # -- Begin function udp_connect
	.p2align	4, 0x90
	.type	udp_connect,@function
udp_connect:                            # @udp_connect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB9_1
# %bb.3:
	movq	%rsi, %r15
	testq	%rsi, %rsi
	je	.LBB9_4
# %bb.5:
	movl	%edx, %r14d
	movq	%rdi, %rbx
	cmpw	$0, 66(%rdi)
	je	.LBB9_6
.LBB9_7:
	movb	20(%r15), %cl
	movb	%cl, 44(%rbx)
	cmpb	$6, 20(%r15)
	movl	(%r15), %eax
	movl	%eax, 24(%rbx)
	jne	.LBB9_9
# %bb.8:
	movl	4(%r15), %edx
	movl	%edx, 28(%rbx)
	movl	8(%r15), %edx
	movl	%edx, 32(%rbx)
	movl	12(%r15), %edx
	movl	%edx, 36(%rbx)
	movb	16(%r15), %dl
	jmp	.LBB9_10
.LBB9_9:
	movl	$0, 36(%rbx)
	movq	$0, 28(%rbx)
	xorl	%edx, %edx
.LBB9_10:
	movb	%dl, 40(%rbx)
	cmpb	$6, %cl
	jne	.LBB9_22
# %bb.11:
	testb	%dl, %dl
	jne	.LBB9_22
# %bb.12:
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	cmpl	$33022, %ecx            # imm = 0x80FE
	je	.LBB9_15
# %bb.13:
	andl	$36863, %eax            # imm = 0x8FFF
	cmpl	$767, %eax              # imm = 0x2FF
	je	.LBB9_15
# %bb.14:
	movzwl	%ax, %eax
	cmpl	$511, %eax              # imm = 0x1FF
	jne	.LBB9_22
.LBB9_15:
	leaq	24(%rbx), %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	ip6_route
	testq	%rax, %rax
	je	.LBB9_22
# %bb.16:
	movl	(%r15), %ecx
	movl	%ecx, %edx
	andl	$49407, %edx            # imm = 0xC0FF
	cmpl	$33022, %edx            # imm = 0x80FE
	je	.LBB9_20
# %bb.17:
	andl	$36863, %ecx            # imm = 0x8FFF
	cmpl	$767, %ecx              # imm = 0x2FF
	je	.LBB9_20
# %bb.18:
	movzwl	%cx, %ecx
	cmpl	$511, %ecx              # imm = 0x1FF
	jne	.LBB9_19
.LBB9_20:
	movb	264(%rax), %al
	addb	$1, %al
.LBB9_21:
	movb	%al, 40(%rbx)
.LBB9_22:
	movw	%r14w, 68(%rbx)
	orb	$4, 64(%rbx)
	movq	udp_pcbs(%rip), %rax
	testq	%rax, %rax
	je	.LBB9_26
# %bb.23:
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB9_25:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, %rcx
	je	.LBB9_27
# %bb.24:                               #   in Loop: Header=BB9_25 Depth=1
	movq	56(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB9_25
.LBB9_26:
	movq	%rax, 56(%rbx)
	movq	%rbx, udp_pcbs(%rip)
.LBB9_27:
	xorl	%eax, %eax
	jmp	.LBB9_28
.LBB9_6:
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	udp_bind
                                        # kill: def $al killed $al def $eax
	testb	%al, %al
	je	.LBB9_7
.LBB9_28:
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_19:
	xorl	%eax, %eax
	jmp	.LBB9_21
.LBB9_1:
	movl	$.L.str.21, %edi
	jmp	.LBB9_2
.LBB9_4:
	movl	$.L.str.22, %edi
.LBB9_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end9:
	.size	udp_connect, .Lfunc_end9-udp_connect
                                        # -- End function
	.globl	udp_disconnect          # -- Begin function udp_disconnect
	.p2align	4, 0x90
	.type	udp_disconnect,@function
udp_disconnect:                         # @udp_disconnect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB10_9
# %bb.1:
	cmpb	$46, 20(%rdi)
	jne	.LBB10_4
# %bb.2:
	movb	ip_addr_any_type+20(%rip), %al
	movb	%al, 44(%rdi)
	movl	ip_addr_any_type(%rip), %ecx
	movl	%ecx, 24(%rdi)
	cmpb	$6, %al
	jne	.LBB10_7
# %bb.3:
	movq	ip_addr_any_type+4(%rip), %rax
	movq	%rax, 28(%rdi)
	movl	ip_addr_any_type+12(%rip), %eax
	movl	%eax, 36(%rdi)
	movb	ip_addr_any_type+16(%rip), %al
	movb	%al, 40(%rdi)
	jmp	.LBB10_8
.LBB10_4:
	cmpb	$6, 44(%rdi)
	movl	$0, 24(%rdi)
	jne	.LBB10_6
# %bb.5:
	movq	$0, 28(%rdi)
	movl	$0, 36(%rdi)
	movb	$0, 40(%rdi)
	movb	$6, 44(%rdi)
	jmp	.LBB10_8
.LBB10_6:
	movb	$0, 44(%rdi)
.LBB10_7:
	movl	$0, 36(%rdi)
	movq	$0, 28(%rdi)
	movb	$0, 40(%rdi)
.LBB10_8:
	movw	$0, 68(%rdi)
	movb	$0, 48(%rdi)
	andb	$-5, 64(%rdi)
	popq	%rbp
	retq
.LBB10_9:
	movl	$.L.str.23, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end10:
	.size	udp_disconnect, .Lfunc_end10-udp_disconnect
                                        # -- End function
	.globl	udp_recv                # -- Begin function udp_recv
	.p2align	4, 0x90
	.type	udp_recv,@function
udp_recv:                               # @udp_recv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB11_2
# %bb.1:
	movq	%rsi, 80(%rdi)
	movq	%rdx, 88(%rdi)
	popq	%rbp
	retq
.LBB11_2:
	movl	$.L.str.24, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end11:
	.size	udp_recv, .Lfunc_end11-udp_recv
                                        # -- End function
	.globl	udp_remove              # -- Begin function udp_remove
	.p2align	4, 0x90
	.type	udp_remove,@function
udp_remove:                             # @udp_remove
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB12_8
# %bb.1:
	movq	%rdi, %rsi
	movq	udp_pcbs(%rip), %rcx
	cmpq	%rdi, %rcx
	je	.LBB12_2
	.p2align	4, 0x90
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB12_7
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	movq	%rcx, %rax
	movq	56(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB12_3
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=1
	cmpq	%rsi, %rcx
	jne	.LBB12_3
# %bb.6:
	movq	56(%rsi), %rcx
	movq	%rcx, 56(%rax)
	jmp	.LBB12_7
.LBB12_2:
	movq	56(%rsi), %rax
	movq	%rax, udp_pcbs(%rip)
.LBB12_7:
	xorl	%edi, %edi
	popq	%rbp
	jmp	memp_free               # TAILCALL
.LBB12_8:
	movl	$.L.str.25, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end12:
	.size	udp_remove, .Lfunc_end12-udp_remove
                                        # -- End function
	.globl	udp_new                 # -- Begin function udp_new
	.p2align	4, 0x90
	.type	udp_new,@function
udp_new:                                # @udp_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	xorl	%edi, %edi
	callq	memp_malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB13_2
# %bb.1:
	movl	$96, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset
	movb	$-1, 51(%rbx)
	movb	$-1, 77(%rbx)
.LBB13_2:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	udp_new, .Lfunc_end13-udp_new
                                        # -- End function
	.globl	udp_new_ip_type         # -- Begin function udp_new_ip_type
	.p2align	4, 0x90
	.type	udp_new_ip_type,@function
udp_new_ip_type:                        # @udp_new_ip_type
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %r14d
	xorl	%edi, %edi
	callq	memp_malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB14_2
# %bb.1:
	movl	$96, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset
	movb	$-1, 51(%rbx)
	movb	$-1, 77(%rbx)
	movb	%r14b, 20(%rbx)
	movb	%r14b, 44(%rbx)
.LBB14_2:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	udp_new_ip_type, .Lfunc_end14-udp_new_ip_type
                                        # -- End function
	.globl	udp_netif_ip_addr_changed # -- Begin function udp_netif_ip_addr_changed
	.p2align	4, 0x90
	.type	udp_netif_ip_addr_changed,@function
udp_netif_ip_addr_changed:              # @udp_netif_ip_addr_changed
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB15_9
# %bb.1:
	movb	20(%rdi), %r8b
	movl	(%rdi), %ecx
	cmpb	$6, %r8b
	jne	.LBB15_7
# %bb.2:
	testl	%ecx, %ecx
	jne	.LBB15_10
# %bb.3:
	cmpl	$0, 4(%rdi)
	jne	.LBB15_10
# %bb.4:
	cmpl	$0, 8(%rdi)
	je	.LBB15_5
.LBB15_10:
	testq	%rsi, %rsi
	jne	.LBB15_11
	jmp	.LBB15_9
.LBB15_7:
	testq	%rsi, %rsi
	je	.LBB15_9
# %bb.8:
	testl	%ecx, %ecx
	je	.LBB15_9
.LBB15_11:
	cmpb	$6, 20(%rsi)
	movl	(%rsi), %ecx
	jne	.LBB15_16
# %bb.12:
	testl	%ecx, %ecx
	jne	.LBB15_17
# %bb.13:
	cmpl	$0, 4(%rsi)
	jne	.LBB15_17
# %bb.14:
	cmpl	$0, 8(%rsi)
	jne	.LBB15_17
# %bb.15:
	cmpl	$0, 12(%rsi)
	jne	.LBB15_17
	jmp	.LBB15_9
.LBB15_16:
	testl	%ecx, %ecx
	je	.LBB15_9
.LBB15_17:
	movq	udp_pcbs(%rip), %rcx
	testq	%rcx, %rcx
	jne	.LBB15_18
	jmp	.LBB15_9
	.p2align	4, 0x90
.LBB15_30:                              #   in Loop: Header=BB15_18 Depth=1
	movzbl	20(%rdi), %r8d
.LBB15_18:                              # =>This Inner Loop Header: Depth=1
	cmpb	%r8b, 20(%rcx)
	jne	.LBB15_29
# %bb.19:                               #   in Loop: Header=BB15_18 Depth=1
	movl	(%rcx), %edx
	movl	(%rdi), %eax
	cmpb	$6, %r8b
	jne	.LBB15_25
# %bb.20:                               #   in Loop: Header=BB15_18 Depth=1
	cmpl	%eax, %edx
	jne	.LBB15_29
# %bb.21:                               #   in Loop: Header=BB15_18 Depth=1
	movl	4(%rcx), %eax
	cmpl	4(%rdi), %eax
	jne	.LBB15_29
# %bb.22:                               #   in Loop: Header=BB15_18 Depth=1
	movl	8(%rcx), %eax
	cmpl	8(%rdi), %eax
	jne	.LBB15_29
# %bb.23:                               #   in Loop: Header=BB15_18 Depth=1
	movl	12(%rcx), %eax
	cmpl	12(%rdi), %eax
	jne	.LBB15_29
# %bb.24:                               #   in Loop: Header=BB15_18 Depth=1
	movzbl	16(%rcx), %eax
	cmpb	16(%rdi), %al
	je	.LBB15_26
	jmp	.LBB15_29
	.p2align	4, 0x90
.LBB15_25:                              #   in Loop: Header=BB15_18 Depth=1
	cmpl	%eax, %edx
	jne	.LBB15_29
.LBB15_26:                              #   in Loop: Header=BB15_18 Depth=1
	movzbl	20(%rsi), %eax
	movb	%al, 20(%rcx)
	cmpb	$6, 20(%rsi)
	movl	(%rsi), %eax
	movl	%eax, (%rcx)
	jne	.LBB15_28
# %bb.27:                               #   in Loop: Header=BB15_18 Depth=1
	movl	4(%rsi), %eax
	movl	%eax, 4(%rcx)
	movl	8(%rsi), %eax
	movl	%eax, 8(%rcx)
	movl	12(%rsi), %eax
	movl	%eax, 12(%rcx)
	movzbl	16(%rsi), %eax
	movb	%al, 16(%rcx)
	jmp	.LBB15_29
.LBB15_28:                              #   in Loop: Header=BB15_18 Depth=1
	movl	$0, 12(%rcx)
	movq	$0, 4(%rcx)
	movb	$0, 16(%rcx)
	.p2align	4, 0x90
.LBB15_29:                              #   in Loop: Header=BB15_18 Depth=1
	movq	56(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB15_30
.LBB15_9:
	retq
.LBB15_5:
	testq	%rsi, %rsi
	je	.LBB15_9
# %bb.6:
	cmpl	$0, 12(%rdi)
	jne	.LBB15_11
	jmp	.LBB15_9
.Lfunc_end15:
	.size	udp_netif_ip_addr_changed, .Lfunc_end15-udp_netif_ip_addr_changed
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_swrand_randr
	.type	uk_swrand_randr,@function
uk_swrand_randr:                        # @uk_swrand_randr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r14
	movl	$uk_swrand_def, %edi
	callq	uk_swrand_randr_r
	movl	%eax, %ebx
	movq	%r14, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	uk_swrand_randr, .Lfunc_end16-uk_swrand_randr
                                        # -- End function
	.type	udp_port,@object        # @udp_port
	.data
	.p2align	1
udp_port:
	.short	49152                   # 0xc000
	.size	udp_port, 2

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"udp_input: invalid pbuf"
	.size	.L.str, 24

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
	.asciz	"udp_input: invalid netif"
	.size	.L.str.3, 25

	.type	udp_pcbs,@object        # @udp_pcbs
	.comm	udp_pcbs,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pbuf_remove_header failed\n"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"udp_send: invalid pcb"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"udp_send: invalid pbuf"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"udp_sendto: invalid pcb"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"udp_sendto: invalid pbuf"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"udp_sendto: invalid dst_ip"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"udp_sendto_if: invalid pcb"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"udp_sendto_if: invalid pbuf"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"udp_sendto_if: invalid dst_ip"
	.size	.L.str.12, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"udp_sendto_if: invalid netif"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"udp_sendto_if_src: invalid pcb"
	.size	.L.str.14, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"udp_sendto_if_src: invalid pbuf"
	.size	.L.str.15, 32

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"udp_sendto_if_src: invalid dst_ip"
	.size	.L.str.16, 34

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"udp_sendto_if_src: invalid src_ip"
	.size	.L.str.17, 34

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"udp_sendto_if_src: invalid netif"
	.size	.L.str.18, 33

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"check that first pbuf can hold struct udp_hdr"
	.size	.L.str.19, 46

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"udp_bind: invalid pcb"
	.size	.L.str.20, 22

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"udp_connect: invalid pcb"
	.size	.L.str.21, 25

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"udp_connect: invalid ipaddr"
	.size	.L.str.22, 28

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"udp_disconnect: invalid pcb"
	.size	.L.str.23, 28

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"udp_recv: invalid pcb"
	.size	.L.str.24, 22

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"udp_remove: invalid pcb"
	.size	.L.str.25, 24

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.26,@object # @uk_pr_crit.__str.26
uk_pr_crit.__str.26:
	.asciz	"udp.c"
	.size	uk_pr_crit.__str.26, 6

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
