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
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB0_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB0_2
.LBB0_3:
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, -28(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	orl	$49152, %ebx            # imm = 0xC000
	movw	%bx, udp_port(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$24, %rsp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_98
# %bb.1:
	movq	%rsi, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB1_99
# %bb.2:
	movq	%rdi, %r13
	addw	$1, lwip_stats+122(%rip)
	cmpw	$7, 18(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB1_4
# %bb.3:
	addw	$1, lwip_stats+130(%rip)
	jmp	.LBB1_92
.LBB1_4:
	movq	8(%r13), %rbx
	cmpb	$6, ip_data+80(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_6
# %bb.5:
	xorl	%r14d, %r14d
	jmp	.LBB1_7
.LBB1_6:
	movl	ip_data+60(%rip), %edi
	movq	ip_data(%rip), %rsi
	callq	ip4_addr_isbroadcast_u32
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_7:
	movzwl	(%rbx), %edi
	callq	lwip_htons
	movl	%eax, %r15d
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movzwl	2(%rbx), %edi
	callq	lwip_htons
	movq	udp_pcbs(%rip), %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB1_65
# %bb.8:
	xorl	%ebx, %ebx
	movq	%r8, %rcx
	xorl	%r9d, %r9d
	jmp	.LBB1_11
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_10:                               #   in Loop: Header=BB1_11 Depth=1
	movq	56(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB1_63
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rsi
	movq	%rcx, %rbx
	cmpw	%ax, 66(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_10
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	48(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=1
	movq	ip_data+8(%rip), %rdx
	movzbl	264(%rdx), %edx
	addb	$1, %dl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%dl, %cl
	jne	.LBB1_9
.LBB1_14:                               #   in Loop: Header=BB1_11 Depth=1
	movzbl	20(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %cl
	jne	.LBB1_23
.LBB1_15:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, 64(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_45
# %bb.16:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB1_44
# %bb.17:                               #   in Loop: Header=BB1_11 Depth=1
	movl	ip_data+60(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB1_28
# %bb.18:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$-1, %edx
	jne	.LBB1_28
# %bb.19:                               #   in Loop: Header=BB1_11 Depth=1
	cmpb	$0, 20(%r9)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_21
# %bb.20:                               #   in Loop: Header=BB1_11 Depth=1
	movl	(%r9), %edx
	cmpl	8(%r12), %edx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_45
.LBB1_21:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB1_45
# %bb.22:                               #   in Loop: Header=BB1_11 Depth=1
	movl	(%rbx), %ecx
	cmpl	8(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_44
	jmp	.LBB1_45
.LBB1_23:                               #   in Loop: Header=BB1_11 Depth=1
	cmpb	ip_data+80(%rip), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_9
# %bb.24:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB1_33
# %bb.25:                               #   in Loop: Header=BB1_11 Depth=1
	movl	(%rbx), %edi
	movl	ip_data+60(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB1_15
# %bb.26:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$-1, %edx
	je	.LBB1_15
# %bb.27:                               #   in Loop: Header=BB1_11 Depth=1
	xorl	%edi, %edx
	andl	32(%r12), %edx
	jmp	.LBB1_62
.LBB1_28:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %cl
	jne	.LBB1_43
# %bb.29:                               #   in Loop: Header=BB1_11 Depth=1
	testl	%edx, %edx
	jne	.LBB1_44
# %bb.30:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_44
# %bb.31:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_44
# %bb.32:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_44
	jmp	.LBB1_45
.LBB1_33:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %cl
	jne	.LBB1_60
# %bb.34:                               #   in Loop: Header=BB1_11 Depth=1
	testl	%edx, %edx
	jne	.LBB1_38
# %bb.35:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_38
# %bb.36:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_38
# %bb.37:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_15
.LBB1_38:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	ip_data+60(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_9
# %bb.39:                               #   in Loop: Header=BB1_11 Depth=1
	movl	4(%rbx), %edx
	cmpl	ip_data+64(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_9
# %bb.40:                               #   in Loop: Header=BB1_11 Depth=1
	movl	8(%rbx), %edx
	cmpl	ip_data+68(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_9
# %bb.41:                               #   in Loop: Header=BB1_11 Depth=1
	movl	12(%rbx), %edx
	cmpl	ip_data+72(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_9
# %bb.42:                               #   in Loop: Header=BB1_11 Depth=1
	movzbl	16(%rbx), %edx
	cmpb	ip_data+76(%rip), %dl
	jmp	.LBB1_62
.LBB1_43:                               #   in Loop: Header=BB1_11 Depth=1
	testl	%edx, %edx
	je	.LBB1_45
.LBB1_44:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r9
.LBB1_45:                               #   in Loop: Header=BB1_11 Depth=1
	cmpw	%r15w, 68(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_10
# %bb.46:                               #   in Loop: Header=BB1_11 Depth=1
	movzbl	44(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	24(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %dl
	jne	.LBB1_51
# %bb.47:                               #   in Loop: Header=BB1_11 Depth=1
	testl	%ecx, %ecx
	jne	.LBB1_52
# %bb.48:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 28(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_52
# %bb.49:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_52
# %bb.50:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	$0, 36(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_52
	jmp	.LBB1_87
.LBB1_51:                               #   in Loop: Header=BB1_11 Depth=1
	testl	%ecx, %ecx
	je	.LBB1_87
.LBB1_52:                               #   in Loop: Header=BB1_11 Depth=1
	cmpb	ip_data+56(%rip), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_10
# %bb.53:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	ip_data+36(%rip), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %dl
	jne	.LBB1_59
# %bb.54:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	%edi, %ecx
	jne	.LBB1_10
# %bb.55:                               #   in Loop: Header=BB1_11 Depth=1
	movl	28(%rbx), %ecx
	cmpl	ip_data+40(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_10
# %bb.56:                               #   in Loop: Header=BB1_11 Depth=1
	movl	32(%rbx), %ecx
	cmpl	ip_data+44(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_10
# %bb.57:                               #   in Loop: Header=BB1_11 Depth=1
	movl	36(%rbx), %ecx
	cmpl	ip_data+48(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_10
# %bb.58:                               #   in Loop: Header=BB1_11 Depth=1
	movzbl	40(%rbx), %ecx
	cmpb	ip_data+52(%rip), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_10
	jmp	.LBB1_87
.LBB1_59:                               #   in Loop: Header=BB1_11 Depth=1
	cmpl	%edi, %ecx
	jne	.LBB1_10
	jmp	.LBB1_87
.LBB1_60:                               #   in Loop: Header=BB1_11 Depth=1
	testl	%edx, %edx
	je	.LBB1_15
# %bb.61:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	ip_data+60(%rip), %edx
.LBB1_62:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_9
	jmp	.LBB1_15
.LBB1_63:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r9, %rbx
	testq	%r9, %r9
	je	.LBB1_66
.LBB1_64:
	movw	%r15w, -42(%rbp)        # 2-byte Spill
	movl	%r14d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %r14b
	jmp	.LBB1_73
.LBB1_65:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_66:
	cmpq	$0, ip_data+24(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_69
# %bb.67:
	movl	$ip_data+60, %esi
	movq	%r12, %rdi
	callq	netif_get_ip6_addr_match
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, ip_data+24(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_70
# %bb.68:
	notb	%al
	shrb	$7, %al
	jmp	.LBB1_71
.LBB1_69:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_70:
	movl	8(%r12), %eax
	cmpl	ip_data+60(%rip), %eax
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB1_71:
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB1_93
# %bb.72:
	movw	%r15w, -42(%rbp)        # 2-byte Spill
	movl	%r14d, %r15d
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
.LBB1_73:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	248(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %eax              # imm = 0x200
	je	.LBB1_77
# %bb.74:
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpw	$0, 6(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_77
# %bb.75:
	movzwl	16(%r13), %edx
	movl	$ip_data+36, %ecx
	movl	$ip_data+60, %r8d
	movq	%r13, %rdi
	movl	$17, %esi
	callq	ip_chksum_pseudo
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB1_77
# %bb.76:
	addw	$1, lwip_stats+128(%rip)
	addw	$1, lwip_stats+126(%rip)
	movq	%r13, %rdi
	callq	pbuf_free
	jmp	.LBB1_95
.LBB1_77:
	movl	$8, %esi
	movq	%r13, %rdi
	callq	pbuf_remove_header
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB1_100
# %bb.78:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB1_81
# %bb.79:
	movq	80(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_93
# %bb.80:
	movq	88(%rbx), %rdi
	movzwl	-42(%rbp), %r8d         # 2-byte Folded Reload
	movl	$ip_data+36, %ecx
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	*%rax
	jmp	.LBB1_94
.LBB1_81:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r15b, %r15b
	jne	.LBB1_91
# %bb.82:
	cmpb	$6, ip_data+80(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	ip_data+60(%rip), %eax
	jne	.LBB1_84
# %bb.83:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %eax
	jne	.LBB1_85
	jmp	.LBB1_91
.LBB1_84:
	andl	$-16, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %eax
	je	.LBB1_91
.LBB1_85:
	movl	ip_data+32(%rip), %eax
	addl	$8, %eax
	movswl	%ax, %esi
	movq	%r13, %rdi
	callq	pbuf_header_force
	cmpq	$0, ip_data+24(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	je	.LBB1_89
# %bb.86:
	movl	$4, %esi
	callq	icmp6_dest_unreach
	jmp	.LBB1_90
.LBB1_87:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB1_96
# %bb.88:
	movq	56(%rbx), %rax
	movq	%rax, 56(%rsi)
	movq	%r8, 56(%rbx)
	movq	%rbx, udp_pcbs(%rip)
	jmp	.LBB1_97
.LBB1_89:
	movl	$3, %esi
	callq	icmp_dest_unreach
.LBB1_90:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_91:
	addw	$1, lwip_stats+136(%rip)
.LBB1_92:
	addw	$1, lwip_stats+126(%rip)
.LBB1_93:
	movq	%r13, %rdi
	callq	pbuf_free
.LBB1_94:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_95:
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
.LBB1_96:
	addw	$1, lwip_stats+142(%rip)
.LBB1_97:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_64
.LBB1_98:
	movl	$.L.str, %edi
	jmp	.LBB1_101
.LBB1_99:
	movl	$.L.str.3, %edi
	jmp	.LBB1_101
.LBB1_100:
	movl	$.L.str.4, %edi
.LBB1_101:
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_1
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB3_4
# %bb.5:
	cmpb	$46, 44(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-6, %al
	je	.LBB3_7
# %bb.6:
	movzwl	68(%rdi), %ecx
	leaq	24(%rdi), %rdx
	callq	udp_sendto
.LBB3_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_1
# %bb.3:
	movq	%rsi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB4_4
# %bb.5:
	movq	%rdx, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB4_6
# %bb.7:
	movl	%ecx, %r15d
	movq	%rdi, %rbx
	movb	20(%rdi), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %cl
	je	.LBB4_9
# %bb.8:
	movb	$-6, %al
	cmpb	20(%r12), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_31
.LBB4_9:
	movb	48(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB4_11
# %bb.10:
	movzbl	%al, %edi
	callq	netif_get_by_index
	jmp	.LBB4_27
.LBB4_11:
	movl	$42, __A_VARIABLE(%rip)
	movb	20(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r12), %ecx
	cmpb	$6, %al
	jne	.LBB4_14
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %ecx
	je	.LBB4_15
	jmp	.LBB4_13
.LBB4_14:
	andl	$-16, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %ecx
	jne	.LBB4_13
.LBB4_15:
	movb	76(%rbx), %cl
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB4_17
# %bb.16:
	movzbl	%cl, %edi
	callq	netif_get_by_index
.LBB4_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_22
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_30
.LBB4_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB4_18
.LBB4_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %al
	jne	.LBB4_25
# %bb.24:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	ip6_route
	jmp	.LBB4_26
.LBB4_25:
	movq	%r12, %rdi
	callq	ip4_route
.LBB4_26:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_28
.LBB4_30:
	movzwl	%r15w, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rax, %r8
	callq	udp_sendto_if
	jmp	.LBB4_31
.LBB4_28:
	addw	$1, lwip_stats+134(%rip)
	movb	$-4, %al
.LBB4_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_22:
	movb	20(%r12), %al
	jmp	.LBB4_23
.LBB4_18:
	movl	72(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB4_13
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	ip_addr_broadcast(%rip), %ecx
	je	.LBB4_13
# %bb.20:
	leaq	72(%rbx), %rdi
	callq	ip4_route
	jmp	.LBB4_21
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_1
# %bb.3:
	movq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB5_4
# %bb.5:
	movq	%rdx, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB5_6
# %bb.7:
	movq	%r8, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB5_8
# %bb.9:
	movl	%ecx, %r12d
	movq	%rdi, %rbx
	movb	20(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	movb	20(%r13), %cl
	cmpb	$46, %al
	jne	.LBB5_19
# %bb.10:
	movl	%ecx, %eax
	jmp	.LBB5_11
.LBB5_19:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%cl, %al
	jne	.LBB5_20
.LBB5_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %al
	jne	.LBB5_24
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_13
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	jne	.LBB5_17
.LBB5_22:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	ip6_select_source_address
	movq	%rax, %r9
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB5_28
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-4, %al
	jmp	.LBB5_29
.LBB5_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB5_26
# %bb.25:
	movl	%ecx, %eax
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %eax
	jne	.LBB5_27
.LBB5_26:
	leaq	8(%r14), %r9
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_28
.LBB5_20:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-6, %al
	jmp	.LBB5_29
.LBB5_13:
	cmpl	$0, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_16
# %bb.14:
	cmpl	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_16
# %bb.15:
	cmpl	$0, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_22
.LBB5_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_17:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	netif_get_ip6_addr_match
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r9
	testb	%al, %al
	jns	.LBB5_28
# %bb.18:
	movb	$-4, %al
	jmp	.LBB5_29
.LBB5_27:
	movb	$-4, %al
	movq	%rbx, %r9
	cmpl	8(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_29
.LBB5_28:
	movzwl	%r12w, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%r14, %r8
	callq	udp_sendto_if_src
	movl	$42, __A_VARIABLE(%rip)
.LBB5_29:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_1:
	movl	$.L.str.10, %edi
	jmp	.LBB5_2
.LBB5_4:
	movl	$.L.str.11, %edi
	jmp	.LBB5_2
.LBB5_6:
	movl	$.L.str.12, %edi
	jmp	.LBB5_2
.LBB5_8:
	movl	$.L.str.13, %edi
.LBB5_2:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB6_1
# %bb.3:
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB6_4
# %bb.5:
	movq	%rdx, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB6_6
# %bb.7:
	movq	%r9, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB6_8
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB6_10
# %bb.11:
	movq	%rdi, %r14
	movb	20(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %al
	jne	.LBB6_13
# %bb.12:
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB6_15:
	cmpw	$0, 66(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_16
.LBB6_17:
	cmpw	$-9, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %r12b
	ja	.LBB6_45
# %bb.18:
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	pbuf_add_header
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rcx
	testb	%al, %al
	je	.LBB6_22
# %bb.19:
	movl	$54, %edi
	movl	$8, %esi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_45
# %bb.20:
	movq	%rax, %rcx
	cmpw	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_23
# %bb.21:
	movq	%rbx, %r12
	movq	%rcx, %rbx
	movq	%rcx, %rdi
	movq	%r12, %rsi
	callq	pbuf_chain
	movq	%rbx, %rcx
	movq	%r12, %rbx
.LBB6_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_23:
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	cmpw	$7, 18(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB6_24
# %bb.25:
	movq	8(%rcx), %r12
	movq	%rcx, %rbx
	movzwl	66(%r14), %edi
	callq	lwip_htons
	movw	%ax, (%r12)
	movzwl	-44(%rbp), %edi         # 2-byte Folded Reload
	callq	lwip_htons
	movq	%rbx, %rcx
	movw	%ax, 2(%r12)
	movw	$0, 6(%r12)
	testb	$8, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_30
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, 20(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r13), %eax
	jne	.LBB6_28
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %eax
	je	.LBB6_29
	jmp	.LBB6_30
.LBB6_13:
	movb	$-6, %r12b
	cmpb	20(%r15), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_45
# %bb.14:
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpb	20(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_15
	jmp	.LBB6_45
.LBB6_16:
	movq	%r14, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movq	%r15, %r12
	movq	%rbx, %r15
	movq	%r8, %rbx
	callq	udp_bind
	movq	%rbx, %r8
	movq	%r15, %rbx
	movq	%r12, %r15
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB6_45
	jmp	.LBB6_17
.LBB6_28:
	andl	$-16, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %eax
	jne	.LBB6_30
.LBB6_29:
	orb	$4, 21(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_30:
	movzwl	16(%rcx), %edi
	callq	lwip_htons
	movw	%ax, 4(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movzwl	248(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	je	.LBB6_34
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, 20(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_33
# %bb.32:
	testb	$1, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_34
.LBB6_33:
	movq	%rbx, %rdi
	movzwl	16(%rbx), %edx
	movl	$17, %esi
	movq	%r15, %rcx
	movq	%r13, %r8
	callq	ip_chksum_pseudo
	movq	-56(%rbp), %rdx         # 8-byte Reload
                                        # kill: def $ax killed $ax def $eax
	xorl	%ecx, %ecx
	cmpw	$1, %ax
	sbbw	%cx, %cx
	orl	%eax, %ecx
	movw	%cx, 6(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_34:
	movl	$42, __A_VARIABLE(%rip)
	movb	20(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r13), %ecx
	cmpb	$6, %al
	jne	.LBB6_37
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %ecx
	je	.LBB6_38
.LBB6_36:
	leaq	51(%r14), %rcx
	jmp	.LBB6_39
.LBB6_37:
	andl	$-16, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %ecx
	jne	.LBB6_36
.LBB6_38:
	leaq	77(%r14), %rcx
.LBB6_39:
	movb	(%rcx), %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %al
	jne	.LBB6_41
# %bb.40:
	movzbl	50(%r14), %r8d
	movq	%rdx, (%rsp)
	movzbl	%cl, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	$17, %r9d
	callq	ip6_output_if_src
	jmp	.LBB6_42
.LBB6_41:
	movzbl	50(%r14), %r8d
	movq	%rdx, (%rsp)
	movzbl	%cl, %ecx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	$17, %r9d
	callq	ip4_output_if_src
.LBB6_42:
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-64(%rbp), %rbx         # 8-byte Folded Reload
	je	.LBB6_44
# %bb.43:
	movq	%rbx, %rdi
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
.LBB6_44:
	addw	$1, lwip_stats+120(%rip)
.LBB6_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
.LBB6_24:
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
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB7_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$ip_addr_any, %r15d
.LBB7_2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_80
# %bb.3:
	movq	udp_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_8
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	je	.LBB7_7
# %bb.6:                                #   in Loop: Header=BB7_4 Depth=1
	movq	56(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_4
.LBB7_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
.LBB7_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB7_21
# %bb.9:
	cmpb	$6, 20(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_22
# %bb.10:
	cmpb	$0, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_22
# %bb.11:
	movl	(%r15), %eax
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %ecx            # imm = 0x80FE
	je	.LBB7_14
# %bb.12:
	movl	%eax, %ecx
	andl	$36863, %ecx            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rcx              # imm = 0x1FF
	je	.LBB7_14
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %ecx              # imm = 0x2FF
	jne	.LBB7_22
.LBB7_14:
	movb	$6, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -56(%rbp)
	movl	4(%r15), %eax
	movl	%eax, -52(%rbp)
	movl	8(%r15), %eax
	movl	%eax, -48(%rbp)
	movl	12(%r15), %eax
	movl	%eax, -44(%rbp)
	movb	$0, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-56(%rbp), %r15
	movq	%r15, %rdi
	movq	%r15, %rsi
	callq	ip6_route
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_20
# %bb.15:
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	andl	$49407, %edx            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %edx            # imm = 0x80FE
	je	.LBB7_18
# %bb.16:
	andl	$36863, %ecx            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rcx              # imm = 0x1FF
	je	.LBB7_18
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %ecx              # imm = 0x2FF
	jne	.LBB7_76
.LBB7_18:
	movb	264(%rax), %al
	addb	$1, %al
	movl	$42, __A_VARIABLE(%rip)
.LBB7_19:
	movb	%al, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_20:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_22
.LBB7_21:
	xorl	%r15d, %r15d
.LBB7_22:
	movl	$42, __A_VARIABLE(%rip)
	testw	%r14w, %r14w
	je	.LBB7_55
# %bb.23:
	movq	udp_pcbs(%rip), %rax
	jmp	.LBB7_26
.LBB7_24:                               #   in Loop: Header=BB7_26 Depth=1
	testl	%edx, %edx
	je	.LBB7_71
	.p2align	4, 0x90
.LBB7_25:                               #   in Loop: Header=BB7_26 Depth=1
	movq	56(%rax), %rax
.LBB7_26:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_62
# %bb.27:                               #   in Loop: Header=BB7_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	je	.LBB7_25
# %bb.28:                               #   in Loop: Header=BB7_26 Depth=1
	testb	$4, 49(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_30
# %bb.29:                               #   in Loop: Header=BB7_26 Depth=1
	testb	$4, 49(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_25
.LBB7_30:                               #   in Loop: Header=BB7_26 Depth=1
	cmpw	%r14w, 66(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_25
# %bb.31:                               #   in Loop: Header=BB7_26 Depth=1
	movzbl	20(%rax), %r8d
	movzbl	20(%r15), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%dl, %r8b
	jne	.LBB7_38
# %bb.32:                               #   in Loop: Header=BB7_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %esi
	movl	(%r15), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %r8b
	jne	.LBB7_40
# %bb.33:                               #   in Loop: Header=BB7_26 Depth=1
	cmpl	%edi, %esi
	jne	.LBB7_39
# %bb.34:                               #   in Loop: Header=BB7_26 Depth=1
	movl	4(%rax), %edi
	cmpl	4(%r15), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_52
# %bb.35:                               #   in Loop: Header=BB7_26 Depth=1
	movl	8(%rax), %edi
	cmpl	8(%r15), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_52
# %bb.36:                               #   in Loop: Header=BB7_26 Depth=1
	movl	12(%rax), %edi
	cmpl	12(%r15), %edi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_52
# %bb.37:                               #   in Loop: Header=BB7_26 Depth=1
	movzbl	16(%rax), %ecx
	cmpb	16(%r15), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_41
	jmp	.LBB7_71
.LBB7_38:                               #   in Loop: Header=BB7_26 Depth=1
	movl	(%r15), %edi
.LBB7_39:                               #   in Loop: Header=BB7_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %esi
	jmp	.LBB7_41
.LBB7_40:                               #   in Loop: Header=BB7_26 Depth=1
	cmpl	%edi, %esi
	movl	%edi, %esi
	je	.LBB7_71
.LBB7_41:                               #   in Loop: Header=BB7_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %dl
	jne	.LBB7_46
# %bb.42:                               #   in Loop: Header=BB7_26 Depth=1
	testl	%esi, %esi
	jne	.LBB7_47
# %bb.43:                               #   in Loop: Header=BB7_26 Depth=1
	cmpl	$0, 4(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_47
# %bb.44:                               #   in Loop: Header=BB7_26 Depth=1
	cmpl	$0, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_47
# %bb.45:                               #   in Loop: Header=BB7_26 Depth=1
	cmpl	$0, 12(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_47
	jmp	.LBB7_71
.LBB7_46:                               #   in Loop: Header=BB7_26 Depth=1
	testl	%esi, %esi
	je	.LBB7_71
.LBB7_47:                               #   in Loop: Header=BB7_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %r8b
	jne	.LBB7_24
# %bb.48:                               #   in Loop: Header=BB7_26 Depth=1
	testl	%edx, %edx
	jne	.LBB7_25
# %bb.49:                               #   in Loop: Header=BB7_26 Depth=1
	cmpl	$0, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_25
# %bb.50:                               #   in Loop: Header=BB7_26 Depth=1
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_25
# %bb.51:                               #   in Loop: Header=BB7_26 Depth=1
	cmpl	$0, 12(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_25
	jmp	.LBB7_71
.LBB7_52:                               #   in Loop: Header=BB7_26 Depth=1
	movl	%esi, %edi
	jmp	.LBB7_39
.LBB7_55:
	movl	$42, __A_VARIABLE(%rip)
	movq	udp_pcbs(%rip), %rax
	movzwl	udp_port(%rip), %r14d
	xorl	%edx, %edx
	movl	$49152, %ecx            # imm = 0xC000
.LBB7_56:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_57 Depth 2
	incw	%r14w
	cmovel	%ecx, %r14d
	movw	%r14w, udp_port(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rsi
	testq	%rax, %rax
	je	.LBB7_74
	.p2align	4, 0x90
.LBB7_57:                               #   Parent Loop BB7_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	%r14w, 66(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_59
# %bb.58:                               #   in Loop: Header=BB7_57 Depth=2
	movq	56(%rsi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB7_57
	jmp	.LBB7_61
	.p2align	4, 0x90
.LBB7_59:                               #   in Loop: Header=BB7_56 Depth=1
	movzwl	%dx, %esi
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $dx killed $dx killed $edx def $rdx
	cmpl	$16383, %esi            # imm = 0x3FFF
	jb	.LBB7_56
# %bb.60:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$-8, %al
	jmp	.LBB7_70
.LBB7_61:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r14w, %r14w
	je	.LBB7_71
.LBB7_62:
	movl	$42, __A_VARIABLE(%rip)
	movb	20(%r15), %al
	movb	%al, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB7_65
# %bb.63:
	cmpb	$6, 20(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_66
# %bb.64:
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movb	16(%r15), %al
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_67
.LBB7_65:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB7_66:
	movl	%eax, (%rbx)
	movl	$0, 12(%rbx)
	movq	$0, 4(%rbx)
	xorl	%eax, %eax
.LBB7_67:
	movb	%al, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movw	%r14w, 66(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB7_69
# %bb.68:
	movq	udp_pcbs(%rip), %rax
	movq	%rax, 56(%rbx)
	movq	%rbx, udp_pcbs(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_69:
	xorl	%eax, %eax
	jmp	.LBB7_70
.LBB7_71:
	movb	$-8, %al
.LBB7_70:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_74:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_62
.LBB7_76:
	xorl	%eax, %eax
	jmp	.LBB7_19
.LBB7_80:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB8_1
# %bb.2:
	movb	264(%rsi), %al
	addb	$1, %al
	jmp	.LBB8_3
.LBB8_1:
	xorl	%eax, %eax
.LBB8_3:
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB9_1
# %bb.3:
	movq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB9_4
# %bb.5:
	movl	%edx, %r14d
	movq	%rdi, %rbx
	cmpw	$0, 66(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_6
.LBB9_7:
	movl	$42, __A_VARIABLE(%rip)
	movb	20(%r15), %cl
	movb	%cl, 44(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, 20(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 24(%rbx)
	jne	.LBB9_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r15), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, 28(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r15), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r15), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, 36(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movb	16(%r15), %dl
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_10
.LBB9_9:
	movl	$0, 36(%rbx)
	movq	$0, 28(%rbx)
	xorl	%edx, %edx
.LBB9_10:
	movl	$42, __A_VARIABLE(%rip)
	movb	%dl, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %cl
	jne	.LBB9_23
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	jne	.LBB9_23
# %bb.12:
	movl	%eax, %ecx
	andl	$49407, %ecx            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %ecx            # imm = 0x80FE
	je	.LBB9_15
# %bb.13:
	andl	$36863, %eax            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rax              # imm = 0x1FF
	je	.LBB9_15
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %eax              # imm = 0x2FF
	jne	.LBB9_23
.LBB9_15:
	leaq	24(%rbx), %r15
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	ip6_route
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_22
# %bb.16:
	movl	(%r15), %ecx
	movl	%ecx, %edx
	andl	$49407, %edx            # imm = 0xC0FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33022, %edx            # imm = 0x80FE
	je	.LBB9_20
# %bb.17:
	andl	$36863, %ecx            # imm = 0x8FFF
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$511, %rcx              # imm = 0x1FF
	je	.LBB9_20
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$767, %ecx              # imm = 0x2FF
	jne	.LBB9_19
.LBB9_20:
	movb	264(%rax), %al
	addb	$1, %al
	movl	$42, __A_VARIABLE(%rip)
.LBB9_21:
	movb	%al, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_23:
	movw	%r14w, 68(%rbx)
	orb	$4, 64(%rbx)
	movq	udp_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_27
# %bb.24:                               # %.preheader
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB9_25:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	je	.LBB9_28
# %bb.26:                               #   in Loop: Header=BB9_25 Depth=1
	movq	56(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB9_25
.LBB9_27:
	movq	%rax, 56(%rbx)
	movq	%rbx, udp_pcbs(%rip)
.LBB9_28:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB9_29
.LBB9_6:
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	udp_bind
                                        # kill: def $al killed $al def $eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB9_7
.LBB9_29:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB10_9
# %bb.1:
	cmpb	$46, 20(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_4
# %bb.2:
	movb	ip_addr_any_type+20(%rip), %al
	movb	%al, 44(%rdi)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 24(%rdi)
	jne	.LBB10_6
# %bb.5:
	movq	$0, 28(%rdi)
	movl	$0, 36(%rdi)
	movb	$0, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movb	$6, 44(%rdi)
	jmp	.LBB10_8
.LBB10_6:
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 44(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_7:
	movl	$0, 36(%rdi)
	movq	$0, 28(%rdi)
	movb	$0, 40(%rdi)
.LBB10_8:
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 68(%rdi)
	movb	$0, 48(%rdi)
	andb	$-5, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB11_2
# %bb.1:
	movq	%rsi, 80(%rdi)
	movq	%rdx, 88(%rdi)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB12_12
# %bb.1:
	movq	%rdi, %rsi
	movq	udp_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rax
	je	.LBB12_2
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_11
# %bb.4:
	movq	56(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB12_9
	.p2align	4, 0x90
.LBB12_6:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	je	.LBB12_7
# %bb.8:                                #   in Loop: Header=BB12_6 Depth=1
	movq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rax
	testq	%rcx, %rcx
	jne	.LBB12_6
.LBB12_9:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_10
.LBB12_2:
	movq	56(%rsi), %rax
	movq	%rax, udp_pcbs(%rip)
	jmp	.LBB12_10
.LBB12_7:
	movq	56(%rsi), %rcx
	movq	%rcx, 56(%rax)
.LBB12_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_11:
	xorl	%edi, %edi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB12_12:
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_2
# %bb.1:
	movl	$96, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset
	movb	$-1, 51(%rbx)
	movb	$-1, 77(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_2:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_2
# %bb.1:
	movl	$96, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset
	movb	$-1, 51(%rbx)
	movb	$-1, 77(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%r14b, 20(%rbx)
	movb	%r14b, 44(%rbx)
	jmp	.LBB14_3
.LBB14_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB15_9
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movb	20(%rdi), %r8b
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %ecx
	cmpb	$6, %r8b
	jne	.LBB15_7
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB15_10
# %bb.3:
	cmpl	$0, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_10
# %bb.4:
	cmpl	$0, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_5
.LBB15_10:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB15_11
	jmp	.LBB15_9
.LBB15_7:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB15_9
# %bb.8:
	testl	%ecx, %ecx
	je	.LBB15_9
.LBB15_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, 20(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_16
# %bb.12:
	testl	%ecx, %ecx
	jne	.LBB15_17
# %bb.13:
	cmpl	$0, 4(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_17
# %bb.14:
	cmpl	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_17
# %bb.15:
	cmpl	$0, 12(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_17
	jmp	.LBB15_9
.LBB15_16:
	testl	%ecx, %ecx
	je	.LBB15_9
.LBB15_17:
	movq	udp_pcbs(%rip), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB15_18
	jmp	.LBB15_9
	.p2align	4, 0x90
.LBB15_31:                              #   in Loop: Header=BB15_18 Depth=1
	movzbl	20(%rdi), %r8d
.LBB15_18:                              # =>This Inner Loop Header: Depth=1
	cmpb	%r8b, 20(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_30
# %bb.19:                               #   in Loop: Header=BB15_18 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %edx
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %r8b
	jne	.LBB15_25
# %bb.20:                               #   in Loop: Header=BB15_18 Depth=1
	cmpl	%eax, %edx
	jne	.LBB15_30
# %bb.21:                               #   in Loop: Header=BB15_18 Depth=1
	movl	4(%rcx), %eax
	cmpl	4(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_30
# %bb.22:                               #   in Loop: Header=BB15_18 Depth=1
	movl	8(%rcx), %eax
	cmpl	8(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_30
# %bb.23:                               #   in Loop: Header=BB15_18 Depth=1
	movl	12(%rcx), %eax
	cmpl	12(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_30
# %bb.24:                               #   in Loop: Header=BB15_18 Depth=1
	movzbl	16(%rcx), %eax
	cmpb	16(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_26
	jmp	.LBB15_30
	.p2align	4, 0x90
.LBB15_25:                              #   in Loop: Header=BB15_18 Depth=1
	cmpl	%eax, %edx
	jne	.LBB15_30
.LBB15_26:                              #   in Loop: Header=BB15_18 Depth=1
	movzbl	20(%rsi), %eax
	movb	%al, 20(%rcx)
	cmpb	$6, 20(%rsi)
	movl	$42, __A_VARIABLE(%rip)
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
.LBB15_29:                              #   in Loop: Header=BB15_18 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB15_30:                              #   in Loop: Header=BB15_18 Depth=1
	movq	56(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB15_31
.LBB15_9:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB15_5:
	movl	12(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB15_9
# %bb.6:
	testl	%eax, %eax
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
	movl	$42, __A_VARIABLE(%rip)
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
