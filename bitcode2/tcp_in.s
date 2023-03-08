	.text
	.file	"tcp_in.c"
	.globl	tcp_input               # -- Begin function tcp_input
	.p2align	4, 0x90
	.type	tcp_input,@function
tcp_input:                              # @tcp_input
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
	je	.LBB0_306
# %bb.1:
	movq	%rdi, %r13
	addw	$1, lwip_stats+146(%rip)
	movq	8(%rdi), %rax
	movq	%rax, tcphdr(%rip)
	cmpw	$19, 18(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_3
.LBB0_2:
	addw	$1, lwip_stats+154(%rip)
	jmp	.LBB0_13
.LBB0_3:
	movq	%rsi, %rbx
	cmpb	$6, ip_data+80(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_11
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	ip_data+60(%rip), %eax
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	je	.LBB0_12
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_8
# %bb.7:
	movzwl	248(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %eax             # imm = 0x400
	je	.LBB0_19
.LBB0_8:
	movzwl	16(%r13), %edx
	movl	$ip_data+36, %ecx
	movl	$ip_data+60, %r8d
	movq	%r13, %rdi
	movl	$6, %esi
	callq	ip_chksum_pseudo
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB0_18
# %bb.9:
	addw	$1, lwip_stats+152(%rip)
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_13
.LBB0_11:
	movl	ip_data+60(%rip), %edi
	movq	ip_data(%rip), %rsi
	callq	ip4_addr_isbroadcast_u32
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_16
.LBB0_12:
	addw	$1, lwip_stats+160(%rip)
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	addw	$1, lwip_stats+150(%rip)
.LBB0_14:
	movq	%r13, %rdi
	callq	pbuf_free
.LBB0_15:
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
.LBB0_16:
	cmpb	$6, ip_data+80(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	ip_data+60(%rip), %eax
	je	.LBB0_5
# %bb.17:
	andl	$-16, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$224, %eax
	jne	.LBB0_6
	jmp	.LBB0_12
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_19:
	movq	tcphdr(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $rax
	movzwl	%ax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$20480, %ecx            # imm = 0x5000
	jb	.LBB0_2
# %bb.20:
	shrl	$10, %eax
	andl	$60, %eax
	cmpw	16(%r13), %ax
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_2
# %bb.22:
	leal	-20(%rax), %ecx
	movw	%cx, tcphdr_optlen(%rip)
	movq	$0, tcphdr_opt2(%rip)
	cmpw	%ax, 18(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB0_26
# %bb.23:
	cmpq	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_312
# %bb.24:
	movl	$20, %esi
	movq	%r13, %rdi
	callq	pbuf_remove_header
	movzwl	18(%r13), %esi
	movw	%si, tcphdr_opt1len(%rip)
	movzwl	tcphdr_optlen(%rip), %ebx
	subl	%esi, %ebx
	movq	%r13, %rdi
	callq	pbuf_remove_header
	movq	(%r13), %rdi
	cmpw	18(%rdi), %bx
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_27
# %bb.25:
	addw	$1, lwip_stats+154(%rip)
	jmp	.LBB0_10
.LBB0_26:
	movw	%cx, tcphdr_opt1len(%rip)
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	pbuf_remove_header
	jmp	.LBB0_30
.LBB0_27:
	movq	8(%rdi), %rax
	movq	%rax, tcphdr_opt2(%rip)
	movzwl	%bx, %esi
	callq	pbuf_remove_header
	movl	16(%r13), %eax
	subl	%ebx, %eax
	movw	%ax, 16(%r13)
	cmpw	$0, 18(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_313
# %bb.28:
	movq	(%r13), %rcx
	cmpw	16(%rcx), %ax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_314
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_30:
	movl	$42, __A_VARIABLE(%rip)
	movq	tcphdr(%rip), %rax
	movzwl	(%rax), %edi
	callq	lwip_htons
	movq	tcphdr(%rip), %rcx
	movw	%ax, (%rcx)
	movzwl	2(%rcx), %edi
	callq	lwip_htons
	movq	tcphdr(%rip), %rcx
	movw	%ax, 2(%rcx)
	movl	4(%rcx), %edi
	callq	lwip_htonl
	movq	tcphdr(%rip), %rcx
	movl	%eax, 4(%rcx)
	movl	%eax, seqno(%rip)
	movl	8(%rcx), %edi
	callq	lwip_htonl
	movq	tcphdr(%rip), %rcx
	movl	%eax, 8(%rcx)
	movl	%eax, ackno(%rip)
	movzwl	14(%rcx), %edi
	callq	lwip_htons
	movq	tcphdr(%rip), %rcx
	movw	%ax, 14(%rcx)
	movzwl	12(%rcx), %edi
	callq	lwip_htons
	movl	%eax, %r9d
	andb	$63, %r9b
	movb	%r9b, flags(%rip)
	movzwl	16(%r13), %r11d
	movw	%r11w, tcplen(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r11d, %r8d
	testb	$3, %al
	je	.LBB0_33
# %bb.31:
	movl	%r11d, %r8d
	incw	%r8w
	movw	%r8w, tcplen(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_2
.LBB0_33:
	movq	tcp_active_pcbs(%rip), %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, %r10
	je	.LBB0_62
# %bb.34:                               # %.preheader9
	xorl	%r14d, %r14d
	movq	%r10, %rdx
	jmp	.LBB0_37
.LBB0_35:                               #   in Loop: Header=BB0_37 Depth=1
	cmpl	%esi, %edi
	je	.LBB0_59
	.p2align	4, 0x90
.LBB0_36:                               #   in Loop: Header=BB0_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_62
.LBB0_37:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rcx
	movq	%rdx, %r14
	movl	72(%rdx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB0_309
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %edx
	je	.LBB0_310
# %bb.39:                               #   in Loop: Header=BB0_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	je	.LBB0_308
# %bb.40:                               #   in Loop: Header=BB0_37 Depth=1
	movzbl	48(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	je	.LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_37 Depth=1
	movq	ip_data+8(%rip), %rsi
	movzbl	264(%rsi), %ebx
	addb	$1, %bl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%bl, %dl
	jne	.LBB0_36
.LBB0_42:                               #   in Loop: Header=BB0_37 Depth=1
	movzwl	80(%r14), %esi
	movq	tcphdr(%rip), %rdx
	cmpw	(%rdx), %si
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
# %bb.43:                               #   in Loop: Header=BB0_37 Depth=1
	movzwl	78(%r14), %esi
	cmpw	2(%rdx), %si
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
# %bb.44:                               #   in Loop: Header=BB0_37 Depth=1
	movzbl	44(%r14), %ebx
	cmpb	ip_data+56(%rip), %bl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
# %bb.45:                               #   in Loop: Header=BB0_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	24(%r14), %edi
	movl	ip_data+36(%rip), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %bl
	jne	.LBB0_51
# %bb.46:                               #   in Loop: Header=BB0_37 Depth=1
	cmpl	%esi, %edi
	jne	.LBB0_36
# %bb.47:                               #   in Loop: Header=BB0_37 Depth=1
	movl	28(%r14), %esi
	cmpl	ip_data+40(%rip), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
# %bb.48:                               #   in Loop: Header=BB0_37 Depth=1
	movl	32(%r14), %esi
	cmpl	ip_data+44(%rip), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
# %bb.49:                               #   in Loop: Header=BB0_37 Depth=1
	movl	36(%r14), %esi
	cmpl	ip_data+48(%rip), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
# %bb.50:                               #   in Loop: Header=BB0_37 Depth=1
	movzbl	40(%r14), %ebx
	cmpb	ip_data+52(%rip), %bl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
	jmp	.LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_37 Depth=1
	cmpl	%esi, %edi
	jne	.LBB0_36
.LBB0_52:                               #   in Loop: Header=BB0_37 Depth=1
	movzbl	20(%r14), %ebx
	cmpb	ip_data+80(%rip), %bl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
# %bb.53:                               #   in Loop: Header=BB0_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %edi
	movl	ip_data+60(%rip), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %bl
	jne	.LBB0_35
# %bb.54:                               #   in Loop: Header=BB0_37 Depth=1
	cmpl	%esi, %edi
	jne	.LBB0_36
# %bb.55:                               #   in Loop: Header=BB0_37 Depth=1
	movl	4(%r14), %esi
	cmpl	ip_data+64(%rip), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
# %bb.56:                               #   in Loop: Header=BB0_37 Depth=1
	movl	8(%r14), %esi
	cmpl	ip_data+68(%rip), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
# %bb.57:                               #   in Loop: Header=BB0_37 Depth=1
	movl	12(%r14), %esi
	cmpl	ip_data+72(%rip), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
# %bb.58:                               #   in Loop: Header=BB0_37 Depth=1
	movzbl	16(%r14), %ebx
	cmpb	ip_data+76(%rip), %bl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_36
.LBB0_59:
	movq	56(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	je	.LBB0_315
# %bb.60:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_144
# %bb.61:
	movq	%rbx, 56(%rcx)
	movq	%r10, 56(%r14)
	movq	%r14, tcp_active_pcbs(%rip)
	jmp	.LBB0_145
.LBB0_62:
	movl	$42, __A_VARIABLE(%rip)
	movq	tcp_tw_pcbs(%rip), %rdi
	jmp	.LBB0_65
.LBB0_63:                               #   in Loop: Header=BB0_65 Depth=1
	cmpl	%ebx, %esi
	je	.LBB0_86
	.p2align	4, 0x90
.LBB0_64:                               #   in Loop: Header=BB0_65 Depth=1
	movq	56(%rdi), %rdi
.LBB0_65:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_90
# %bb.66:                               #   in Loop: Header=BB0_65 Depth=1
	cmpl	$10, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_307
# %bb.67:                               #   in Loop: Header=BB0_65 Depth=1
	movzbl	48(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_65 Depth=1
	movq	ip_data+8(%rip), %rcx
	movzbl	264(%rcx), %ecx
	addb	$1, %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%cl, %al
	jne	.LBB0_64
.LBB0_69:                               #   in Loop: Header=BB0_65 Depth=1
	movzwl	80(%rdi), %eax
	movq	tcphdr(%rip), %rdx
	cmpw	(%rdx), %ax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
# %bb.70:                               #   in Loop: Header=BB0_65 Depth=1
	movzwl	78(%rdi), %ecx
	cmpw	2(%rdx), %cx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
# %bb.71:                               #   in Loop: Header=BB0_65 Depth=1
	movzbl	44(%rdi), %edx
	cmpb	ip_data+56(%rip), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
# %bb.72:                               #   in Loop: Header=BB0_65 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	24(%rdi), %esi
	movl	ip_data+36(%rip), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %dl
	jne	.LBB0_78
# %bb.73:                               #   in Loop: Header=BB0_65 Depth=1
	cmpl	%ebx, %esi
	jne	.LBB0_64
# %bb.74:                               #   in Loop: Header=BB0_65 Depth=1
	movl	28(%rdi), %edx
	cmpl	ip_data+40(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
# %bb.75:                               #   in Loop: Header=BB0_65 Depth=1
	movl	32(%rdi), %edx
	cmpl	ip_data+44(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
# %bb.76:                               #   in Loop: Header=BB0_65 Depth=1
	movl	36(%rdi), %edx
	cmpl	ip_data+48(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
# %bb.77:                               #   in Loop: Header=BB0_65 Depth=1
	movzbl	40(%rdi), %edx
	cmpb	ip_data+52(%rip), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
	jmp	.LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_65 Depth=1
	cmpl	%ebx, %esi
	jne	.LBB0_64
.LBB0_79:                               #   in Loop: Header=BB0_65 Depth=1
	movzbl	20(%rdi), %edx
	cmpb	ip_data+80(%rip), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
# %bb.80:                               #   in Loop: Header=BB0_65 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %esi
	movl	ip_data+60(%rip), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %dl
	jne	.LBB0_63
# %bb.81:                               #   in Loop: Header=BB0_65 Depth=1
	cmpl	%ebx, %esi
	jne	.LBB0_64
# %bb.82:                               #   in Loop: Header=BB0_65 Depth=1
	movl	4(%rdi), %edx
	cmpl	ip_data+64(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
# %bb.83:                               #   in Loop: Header=BB0_65 Depth=1
	movl	8(%rdi), %edx
	cmpl	ip_data+68(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
# %bb.84:                               #   in Loop: Header=BB0_65 Depth=1
	movl	12(%rdi), %edx
	cmpl	ip_data+72(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
# %bb.85:                               #   in Loop: Header=BB0_65 Depth=1
	movzbl	16(%rdi), %edx
	cmpb	ip_data+76(%rip), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
.LBB0_86:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r9b
	jne	.LBB0_129
# %bb.87:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r9b
	jne	.LBB0_169
# %bb.88:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r9b
	je	.LBB0_171
# %bb.89:
	movl	tcp_ticks(%rip), %eax
	movl	%eax, 88(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_171
.LBB0_90:
	movq	tcp_listen_pcbs(%rip), %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, %r10
	je	.LBB0_115
# %bb.91:                               # %.preheader
	xorl	%ebx, %ebx
	movq	%r10, %rax
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%r11d, %r11d
	xorl	%esi, %esi
	jmp	.LBB0_94
.LBB0_92:                               #   in Loop: Header=BB0_94 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rsi
	movq	%rdi, %r11
	movq	%rbx, %r15
	.p2align	4, 0x90
.LBB0_93:                               #   in Loop: Header=BB0_94 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	testq	%rax, %rax
	je	.LBB0_112
.LBB0_94:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rax, %r14
	movzbl	48(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_96
# %bb.95:                               #   in Loop: Header=BB0_94 Depth=1
	movq	ip_data+8(%rip), %rcx
	movzbl	264(%rcx), %ecx
	addb	$1, %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%cl, %al
	jne	.LBB0_93
.LBB0_96:                               #   in Loop: Header=BB0_94 Depth=1
	movzwl	78(%r14), %eax
	movq	tcphdr(%rip), %rcx
	cmpw	2(%rcx), %ax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_93
# %bb.97:                               #   in Loop: Header=BB0_94 Depth=1
	movzbl	20(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %al
	je	.LBB0_92
# %bb.98:                               #   in Loop: Header=BB0_94 Depth=1
	cmpb	ip_data+80(%rip), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_93
# %bb.99:                               #   in Loop: Header=BB0_94 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %edx
	movl	ip_data+60(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %al
	jne	.LBB0_105
# %bb.100:                              #   in Loop: Header=BB0_94 Depth=1
	cmpl	%ecx, %edx
	jne	.LBB0_106
# %bb.101:                              #   in Loop: Header=BB0_94 Depth=1
	movl	4(%r14), %ecx
	cmpl	ip_data+64(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_106
# %bb.102:                              #   in Loop: Header=BB0_94 Depth=1
	movl	8(%r14), %ecx
	cmpl	ip_data+68(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_106
# %bb.103:                              #   in Loop: Header=BB0_94 Depth=1
	movl	12(%r14), %ecx
	cmpl	ip_data+72(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_106
# %bb.104:                              #   in Loop: Header=BB0_94 Depth=1
	movzbl	16(%r14), %ecx
	cmpb	ip_data+76(%rip), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_106
	jmp	.LBB0_130
.LBB0_105:                              #   in Loop: Header=BB0_94 Depth=1
	cmpl	%ecx, %edx
	je	.LBB0_130
.LBB0_106:                              #   in Loop: Header=BB0_94 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %al
	jne	.LBB0_111
# %bb.107:                              #   in Loop: Header=BB0_94 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_93
# %bb.108:                              #   in Loop: Header=BB0_94 Depth=1
	cmpl	$0, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_93
# %bb.109:                              #   in Loop: Header=BB0_94 Depth=1
	cmpl	$0, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_93
# %bb.110:                              #   in Loop: Header=BB0_94 Depth=1
	cmpl	$0, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_93
	jmp	.LBB0_92
.LBB0_111:                              #   in Loop: Header=BB0_94 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_93
	jmp	.LBB0_92
.LBB0_112:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	movq	%r11, %rdi
	movq	%rsi, %r14
	testq	%rsi, %rsi
	je	.LBB0_116
.LBB0_113:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_119
# %bb.114:
	movq	56(%r14), %rax
	movq	%rax, 56(%rdi)
	movq	%r10, 56(%r14)
	movq	%r14, tcp_listen_pcbs(%rip)
	jmp	.LBB0_120
.LBB0_115:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_116:
	movl	$42, __A_VARIABLE(%rip)
	movq	tcphdr(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB0_118
# %bb.117:
	addw	$1, lwip_stats+160(%rip)
	addw	$1, lwip_stats+150(%rip)
	movzwl	tcplen(%rip), %edx
	addl	seqno(%rip), %edx
	movl	ackno(%rip), %esi
	movq	tcphdr(%rip), %rax
	movzwl	2(%rax), %r9d
	movzwl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$ip_data+60, %ecx
	movl	$ip_data+36, %r8d
	xorl	%edi, %edi
	callq	tcp_rst
	movl	$42, __A_VARIABLE(%rip)
.LBB0_118:
	movq	%r13, %rdi
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_15
.LBB0_119:
	addw	$1, lwip_stats+166(%rip)
.LBB0_120:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r9b
	jne	.LBB0_129
# %bb.121:
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r9b
	jne	.LBB0_126
# %bb.122:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r9b
	je	.LBB0_128
# %bb.123:
	movzbl	76(%r14), %edi
	callq	tcp_alloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_131
# %bb.124:
	movq	%rax, %r12
	movq	%rax, %r15
	movb	ip_data+80(%rip), %al
	movb	%al, 20(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	ip_data+60(%rip), %ecx
	movl	%ecx, (%r12)
	cmpb	$6, %al
	jne	.LBB0_133
# %bb.125:
	movl	ip_data+64(%rip), %eax
	movl	%eax, 4(%r15)
	movl	ip_data+68(%rip), %eax
	movl	%eax, 8(%r15)
	movl	ip_data+72(%rip), %eax
	movl	%eax, 12(%r15)
	movb	ip_data+76(%rip), %al
	jmp	.LBB0_134
.LBB0_126:
	movzwl	%r8w, %edx
	addl	seqno(%rip), %edx
	movl	ackno(%rip), %esi
	movq	tcphdr(%rip), %rax
	movzwl	2(%rax), %r9d
	movzwl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$ip_data+60, %ecx
	movl	$ip_data+36, %r8d
	movq	%r14, %rdi
	callq	tcp_rst
.LBB0_127:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_128:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_129:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_14
.LBB0_130:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_113
.LBB0_131:
	addw	$1, lwip_stats+156(%rip)
	movq	80(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_127
# %bb.132:
	movq	64(%r14), %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	callq	*%rax
	jmp	.LBB0_127
.LBB0_133:
	movl	$0, 12(%r15)
	movq	$0, 4(%r15)
	xorl	%eax, %eax
.LBB0_134:
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 16(%r15)
	movb	ip_data+56(%rip), %al
	movb	%al, 44(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	ip_data+36(%rip), %ecx
	movl	%ecx, 24(%r15)
	cmpb	$6, %al
	jne	.LBB0_136
# %bb.135:
	movl	ip_data+40(%rip), %eax
	movl	%eax, 28(%r15)
	movl	ip_data+44(%rip), %eax
	movl	%eax, 32(%r15)
	movl	ip_data+48(%rip), %eax
	movl	%eax, 36(%r15)
	movb	ip_data+52(%rip), %al
	jmp	.LBB0_137
.LBB0_136:
	movl	$0, 36(%r15)
	movq	$0, 28(%r15)
	xorl	%eax, %eax
.LBB0_137:
	addq	$24, %r12
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 40(%r15)
	movzwl	78(%r14), %eax
	movw	%ax, 78(%r15)
	movq	tcphdr(%rip), %rax
	movzwl	(%rax), %eax
	movw	%ax, 80(%r15)
	movl	$3, 72(%r15)
	movl	seqno(%rip), %eax
	addl	$1, %eax
	movl	%eax, 92(%r15)
	movl	%eax, 104(%r15)
	movq	%r15, %rdi
	callq	tcp_next_iss
	movl	%eax, 152(%r15)
	movl	%eax, 144(%r15)
	movl	%eax, 128(%r15)
	movl	%eax, 156(%r15)
	movl	seqno(%rip), %eax
	addl	$-1, %eax
	movl	%eax, 148(%r15)
	movq	64(%r14), %rax
	movq	%rax, 64(%r15)
	movq	%r14, 216(%r15)
	movb	49(%r14), %al
	andb	$12, %al
	movb	%al, 49(%r15)
	movb	48(%r14), %al
	movb	%al, 48(%r15)
	movq	tcp_active_pcbs(%rip), %rax
	movq	%rax, 56(%r15)
	movq	%r15, tcp_active_pcbs(%rip)
	callq	tcp_timer_needed
	movb	$1, tcp_active_pcbs_changed(%rip)
	movq	%r15, %rdi
	callq	tcp_parseopt
	movq	tcphdr(%rip), %rax
	movzwl	14(%rax), %eax
	movl	%eax, 160(%r15)
	movl	%eax, 164(%r15)
	movzwl	110(%r15), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, 44(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_139
# %bb.138:
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	ip6_route
	jmp	.LBB0_140
.LBB0_139:
	movq	%r12, %rdi
	callq	ip4_route
.LBB0_140:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%bx, %edi
	movq	%rax, %rsi
	movq	%r12, %rdx
	callq	tcp_eff_send_mss_netif
	movw	%ax, 110(%r15)
	movq	%r15, %rdi
	movl	$18, %esi
	callq	tcp_enqueue_flags
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	testb	%al, %al
	je	.LBB0_142
# %bb.141:
	xorl	%esi, %esi
	callq	tcp_abandon
	jmp	.LBB0_128
.LBB0_142:
	callq	tcp_output
	jmp	.LBB0_127
.LBB0_144:
	addw	$1, lwip_stats+166(%rip)
	movq	%rbx, %r10
.LBB0_145:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r10
	je	.LBB0_316
# %bb.146:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, inseg(%rip)
	movw	%r11w, inseg+16(%rip)
	movq	%r13, inseg+8(%rip)
	movq	%rdx, inseg+24(%rip)
	movq	$0, recv_data(%rip)
	movb	$0, recv_flags(%rip)
	movl	$0, recv_acked(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB0_148
# %bb.147:
	orb	$1, 21(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_148:
	cmpq	$0, 208(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_155
# %bb.149:
	movq	%r14, %rdi
	callq	tcp_process_refused_data
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-13, %al
	je	.LBB0_152
# %bb.150:
	cmpq	$0, 208(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_155
# %bb.151:
	cmpw	$0, tcplen(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_155
.LBB0_152:
	cmpl	$0, 100(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_154
# %bb.153:
	movq	%r14, %rdi
	callq	tcp_send_empty_ack
	movl	$42, __A_VARIABLE(%rip)
.LBB0_154:
	addw	$1, lwip_stats+150(%rip)
	jmp	.LBB0_270
.LBB0_155:
	movq	%r14, tcp_input_pcb(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	flags(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB0_166
# %bb.156:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	je	.LBB0_159
# %bb.157:
	movl	72(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	je	.LBB0_159
# %bb.158:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB0_180
.LBB0_159:
	movzwl	82(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB0_161
# %bb.160:
	movl	tcp_ticks(%rip), %eax
	movl	%eax, 88(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_161:
	movw	$0, 270(%r14)
	movq	%r14, %rdi
	callq	tcp_parseopt
	movl	72(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	$-2, %eax
	cmpl	$7, %eax
	ja	.LBB0_241
# %bb.162:
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_163:
	movq	%r14, %rdi
	callq	tcp_receive
.LBB0_164:
	testb	$32, recv_flags(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_241
# %bb.165:
	orb	$2, 82(%r14)
	movl	$7, 72(%r14)
	jmp	.LBB0_240
.LBB0_166:
	movl	72(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB0_173
# %bb.167:
	movl	ackno(%rip), %eax
	cmpl	144(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_241
# %bb.168:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_175
.LBB0_169:
	movl	seqno(%rip), %edx
	movl	%edx, %esi
	subl	92(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB0_171
# %bb.170:
	subl	96(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB0_179
.LBB0_171:
	movl	$42, __A_VARIABLE(%rip)
	testw	%r8w, %r8w
	je	.LBB0_129
# %bb.172:
	orb	$2, 82(%rdi)
	callq	tcp_output
	jmp	.LBB0_128
.LBB0_173:
	movl	seqno(%rip), %ecx
	subl	92(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_176
# %bb.174:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_318
.LBB0_175:
	orb	$8, recv_flags(%rip)
	andb	$-2, 82(%r14)
	jmp	.LBB0_241
.LBB0_176:
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB0_240
# %bb.177:
	subl	96(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jg	.LBB0_240
# %bb.178:
	orb	$2, 82(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_240
.LBB0_179:
	movl	ackno(%rip), %esi
	movzwl	%r8w, %ebx
	addl	%ebx, %edx
	movzwl	%ax, %eax
	movl	%eax, (%rsp)
	movzwl	%cx, %r9d
	movl	$ip_data+60, %ecx
	movl	$ip_data+36, %r8d
	callq	tcp_rst
	jmp	.LBB0_128
.LBB0_180:
	orb	$2, 82(%r14)
	jmp	.LBB0_241
.LBB0_181:
	movq	%r14, %rdi
	callq	tcp_receive
	testb	$32, recv_flags(%rip)
	movb	flags(%rip), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_214
# %bb.182:
	testb	$16, %al
	je	.LBB0_241
# %bb.183:
	movl	ackno(%rip), %eax
	cmpl	144(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_241
# %bb.184:
	cmpq	$0, 184(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_241
# %bb.185:
	movl	$6, 72(%r14)
	jmp	.LBB0_240
.LBB0_186:
	movzbl	flags(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	je	.LBB0_211
# %bb.187:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	je	.LBB0_211
# %bb.188:
	movl	ackno(%rip), %ecx
	movl	128(%r14), %edx
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	jne	.LBB0_211
# %bb.189:
	movl	seqno(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, 92(%r14)
	movl	%edx, 104(%r14)
	movl	%ecx, 128(%r14)
	movq	tcphdr(%rip), %rcx
	movzwl	14(%rcx), %ecx
	movl	%ecx, 160(%r14)
	movl	%ecx, 164(%r14)
	addl	$-1, %eax
	movl	%eax, 148(%r14)
	movl	$4, 72(%r14)
	movzwl	110(%r14), %r15d
	leaq	24(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, 44(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_225
# %bb.190:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	ip6_route
	jmp	.LBB0_226
.LBB0_191:
	movzbl	flags(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB0_218
# %bb.192:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	je	.LBB0_241
# %bb.193:
	movl	92(%r14), %eax
	addl	$-1, %eax
	cmpl	%eax, seqno(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_241
# %bb.194:
	movq	%r14, %rdi
	callq	tcp_rexmit
	jmp	.LBB0_240
.LBB0_195:
	movq	%r14, %rdi
	callq	tcp_receive
	testb	$16, flags(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_241
# %bb.196:
	movl	ackno(%rip), %eax
	cmpl	144(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_241
# %bb.197:
	cmpq	$0, 184(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_241
# %bb.198:
	orb	$16, recv_flags(%rip)
	jmp	.LBB0_240
.LBB0_199:
	movq	%r14, %rdi
	callq	tcp_receive
	testb	$32, recv_flags(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_241
# %bb.200:
	orb	$2, 82(%r14)
	movq	%r14, %rdi
	callq	tcp_pcb_purge
	movq	tcp_active_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	je	.LBB0_237
# %bb.201:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_239
.LBB0_202:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	je	.LBB0_238
# %bb.203:                              #   in Loop: Header=BB0_202 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	testq	%rcx, %rcx
	jne	.LBB0_202
	jmp	.LBB0_239
.LBB0_204:
	movq	%r14, %rdi
	callq	tcp_receive
	testb	$16, flags(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_241
# %bb.205:
	movl	ackno(%rip), %eax
	cmpl	144(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_241
# %bb.206:
	cmpq	$0, 184(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_241
# %bb.207:
	movq	%r14, %rdi
	callq	tcp_pcb_purge
	movq	tcp_active_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	je	.LBB0_237
# %bb.208:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_239
.LBB0_209:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	je	.LBB0_238
# %bb.210:                              #   in Loop: Header=BB0_209 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	testq	%rcx, %rcx
	jne	.LBB0_209
	jmp	.LBB0_239
.LBB0_211:
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	je	.LBB0_241
# %bb.212:
	movzwl	tcplen(%rip), %edx
	addl	seqno(%rip), %edx
	movl	ackno(%rip), %esi
	movq	tcphdr(%rip), %rax
	movzwl	2(%rax), %r9d
	movzwl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$ip_data+60, %ecx
	movl	$ip_data+36, %r8d
	movq	%r14, %rdi
	callq	tcp_rst
	cmpb	$5, 126(%r14)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_241
# %bb.213:
	movw	$0, 108(%r14)
	movq	%r14, %rdi
	callq	tcp_rexmit_rto
	jmp	.LBB0_240
.LBB0_214:
	testb	$16, %al
	je	.LBB0_217
# %bb.215:
	movl	ackno(%rip), %eax
	cmpl	144(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_217
# %bb.216:
	cmpq	$0, 184(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_233
.LBB0_217:
	orb	$2, 82(%r14)
	movl	$8, 72(%r14)
	jmp	.LBB0_240
.LBB0_218:
	movl	ackno(%rip), %esi
	movl	128(%r14), %eax
	notl	%eax
	addl	%esi, %eax
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB0_220
# %bb.219:
	movl	%esi, %eax
	subl	144(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_221
.LBB0_220:
	movzwl	tcplen(%rip), %edx
	addl	seqno(%rip), %edx
	movq	tcphdr(%rip), %rax
	movzwl	2(%rax), %r9d
	movzwl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$ip_data+60, %ecx
	movl	$ip_data+36, %r8d
	movq	%r14, %rdi
	callq	tcp_rst
	jmp	.LBB0_240
.LBB0_221:
	movl	$4, 72(%r14)
	movq	216(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_296
# %bb.222:
	movq	80(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_320
# %bb.223:
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%r14), %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_299
# %bb.224:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-13, %al
	jne	.LBB0_297
	jmp	.LBB0_298
.LBB0_225:
	movq	%rbx, %rdi
	callq	ip4_route
.LBB0_226:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%r15w, %edi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	tcp_eff_send_mss_netif
	movw	%ax, 110(%r14)
	movzwl	%ax, %ecx
	leal	(,%rcx,4), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2190, %ecx             # imm = 0x88E
	jbe	.LBB0_229
# %bb.227:
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jb	.LBB0_230
# %bb.228:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	jmp	.LBB0_230
.LBB0_229:
	cmpl	$4380, %eax             # imm = 0x111C
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4380, %ecx             # imm = 0x111C
	cmovael	%ecx, %eax
.LBB0_230:
	movl	%eax, 132(%r14)
	movzwl	172(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB0_319
# %bb.231:
	addl	$-1, %eax
	movw	%ax, 172(%r14)
	movq	192(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_287
# %bb.232:
	leaq	192(%r14), %rax
	jmp	.LBB0_289
.LBB0_233:
	orb	$2, 82(%r14)
	movq	%r14, %rdi
	callq	tcp_pcb_purge
	movq	tcp_active_pcbs(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	je	.LBB0_237
# %bb.234:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_239
.LBB0_235:                              # =>This Inner Loop Header: Depth=1
	movq	56(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	je	.LBB0_238
# %bb.236:                              #   in Loop: Header=BB0_235 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	testq	%rcx, %rcx
	jne	.LBB0_235
	jmp	.LBB0_239
.LBB0_237:
	movq	56(%r14), %rax
	movq	%rax, tcp_active_pcbs(%rip)
	jmp	.LBB0_239
.LBB0_238:
	movq	56(%r14), %rcx
	movq	%rcx, 56(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_239:
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 56(%r14)
	movb	$1, tcp_active_pcbs_changed(%rip)
	movl	$10, 72(%r14)
	movq	tcp_tw_pcbs(%rip), %rax
	movq	%rax, 56(%r14)
	movq	%r14, tcp_tw_pcbs(%rip)
	callq	tcp_timer_needed
.LBB0_240:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_241:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, recv_flags(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_249
# %bb.242:
	movl	recv_acked(%rip), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_253
# %bb.243:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_246
.LBB0_244:                              #   in Loop: Header=BB0_246 Depth=1
	movq	64(%r14), %rdi
	movzwl	%r15w, %edx
	movq	%r14, %rsi
	callq	*%rcx
                                        # kill: def $al killed $al def $eax
.LBB0_245:                              #   in Loop: Header=BB0_246 Depth=1
	subl	%r15d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-13, %al
	je	.LBB0_269
.LBB0_246:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_252
# %bb.247:                              #   in Loop: Header=BB0_246 Depth=1
	cmpl	$65535, %ebx            # imm = 0xFFFF
	movl	$65535, %r15d           # imm = 0xFFFF
	cmovbl	%ebx, %r15d
	movq	224(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB0_244
# %bb.248:                              #   in Loop: Header=BB0_246 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_245
.LBB0_249:
	movq	256(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_251
# %bb.250:
	movq	64(%r14), %rdi
	movl	$-14, %esi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_251:
	movl	$tcp_active_pcbs, %edi
	movq	%r14, %rsi
	callq	tcp_pcb_remove
	movq	%r14, %rdi
	callq	tcp_free
	jmp	.LBB0_270
.LBB0_252:
	movl	$0, recv_acked(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_253:
	movq	%r14, %rdi
	callq	tcp_input_delayed_close
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_271
# %bb.254:
	movq	recv_data(%rip), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_276
# %bb.255:
	leaq	-48(%rbp), %rbx
.LBB0_256:                              # =>This Inner Loop Header: Depth=1
	movq	$0, -48(%rbp)
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	pbuf_split_64k
	cmpq	$0, 208(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_317
# %bb.257:                              #   in Loop: Header=BB0_256 Depth=1
	movzwl	82(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB0_264
# %bb.258:                              #   in Loop: Header=BB0_256 Depth=1
	movq	232(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_260
# %bb.259:                              #   in Loop: Header=BB0_256 Depth=1
	movq	64(%r14), %rdi
	movq	recv_data(%rip), %rdx
	movq	%r14, %rsi
	xorl	%ecx, %ecx
	callq	*%rax
	jmp	.LBB0_261
.LBB0_260:                              #   in Loop: Header=BB0_256 Depth=1
	movq	recv_data(%rip), %rdx
	xorl	%edi, %edi
	movq	%r14, %rsi
	xorl	%ecx, %ecx
	callq	tcp_recv_null
.LBB0_261:                              #   in Loop: Header=BB0_256 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-13, %al
	je	.LBB0_267
# %bb.262:                              #   in Loop: Header=BB0_256 Depth=1
	movq	-48(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB0_273
# %bb.263:                              #   in Loop: Header=BB0_256 Depth=1
	movq	%rsi, recv_data(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB0_256
	jmp	.LBB0_276
.LBB0_264:
	movq	recv_data(%rip), %rdi
	callq	pbuf_free
	movq	-48(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_266
# %bb.265:
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_266:
	movq	%r14, %rdi
	callq	tcp_abort
	jmp	.LBB0_269
.LBB0_267:
	movq	-48(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_269
# %bb.268:
	callq	pbuf_free
	jmp	.LBB0_298
.LBB0_273:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_275
# %bb.274:
	movq	recv_data(%rip), %rdi
	callq	pbuf_cat
	movl	$42, __A_VARIABLE(%rip)
.LBB0_275:
	movq	recv_data(%rip), %rax
	movq	%rax, 208(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_276:
	testb	$32, recv_flags(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_280
# %bb.277:
	movq	208(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_282
# %bb.278:
	orb	$32, 21(%rax)
.LBB0_279:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_280:
	movq	$0, tcp_input_pcb(%rip)
	movq	%r14, %rdi
	callq	tcp_input_delayed_close
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_271
# %bb.281:
	movq	%r14, %rdi
	callq	tcp_output
	jmp	.LBB0_270
.LBB0_282:
	movl	96(%r14), %eax
	movzwl	82(%r14), %ecx
	testl	$256, %ecx              # imm = 0x100
	movl	$65535, %ecx            # imm = 0xFFFF
	movl	$262142, %edx           # imm = 0x3FFFE
	cmovel	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %eax
	je	.LBB0_284
# %bb.283:
	addl	$1, %eax
	movl	%eax, 96(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_284:
	movq	232(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_286
# %bb.285:
	movq	64(%r14), %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-13, %al
	je	.LBB0_271
	jmp	.LBB0_280
.LBB0_286:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_279
.LBB0_287:
	movq	184(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_321
# %bb.288:
	leaq	184(%r14), %rax
.LBB0_289:
	movq	(%rdi), %rcx
	movq	%rcx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	callq	tcp_seg_free
	cmpq	$0, 192(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_291
# %bb.290:
	movw	$0, 108(%r14)
	movb	$0, 126(%r14)
	jmp	.LBB0_292
.LBB0_291:
	movw	$-1, 108(%r14)
.LBB0_292:
	movl	$42, __A_VARIABLE(%rip)
	movq	240(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_294
# %bb.293:
	movq	64(%r14), %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-13, %al
	jne	.LBB0_295
	jmp	.LBB0_298
.LBB0_294:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_295:
	orb	$2, 82(%r14)
	jmp	.LBB0_240
.LBB0_296:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_297:
	movq	%r14, %rdi
	callq	tcp_abort
	movl	$42, __A_VARIABLE(%rip)
.LBB0_298:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_269:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_270:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_271:
	movq	$0, tcp_input_pcb(%rip)
	movq	$0, recv_data(%rip)
	movq	inseg+8(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_15
# %bb.272:
	callq	pbuf_free
	movq	$0, inseg+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_15
.LBB0_299:
	movq	%r14, %rdi
	callq	tcp_receive
	movl	recv_acked(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_301
# %bb.300:
	addl	$-1, %eax
	movl	%eax, recv_acked(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_301:
	movzwl	110(%r14), %ecx
	leal	(,%rcx,4), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2190, %ecx             # imm = 0x88E
	jbe	.LBB0_304
# %bb.302:
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jb	.LBB0_305
# %bb.303:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	jmp	.LBB0_305
.LBB0_304:
	cmpl	$4380, %eax             # imm = 0x111C
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4380, %ecx             # imm = 0x111C
	cmovael	%ecx, %eax
.LBB0_305:
	movl	%eax, 132(%r14)
	jmp	.LBB0_164
.LBB0_306:
	movl	$.L.str, %edi
	jmp	.LBB0_311
.LBB0_307:
	movl	$.L.str.11, %edi
	jmp	.LBB0_311
.LBB0_308:
	movl	$.L.str.8, %edi
	jmp	.LBB0_311
.LBB0_309:
	movl	$.L.str.6, %edi
	jmp	.LBB0_311
.LBB0_310:
	movl	$.L.str.7, %edi
.LBB0_311:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB0_312:
	movl	$.L.str.3, %edi
	jmp	.LBB0_311
.LBB0_313:
	movl	$.L.str.4, %edi
	jmp	.LBB0_311
.LBB0_314:
	movl	$.L.str.5, %edi
	jmp	.LBB0_311
.LBB0_315:
	movl	$.L.str.9, %edi
	jmp	.LBB0_311
.LBB0_316:
	movl	$.L.str.10, %edi
	jmp	.LBB0_311
.LBB0_317:
	movl	$.L.str.12, %edi
	jmp	.LBB0_311
.LBB0_318:
	movl	$.L.str.20, %edi
	jmp	.LBB0_311
.LBB0_319:
	movl	$.L.str.21, %edi
	jmp	.LBB0_311
.LBB0_320:
	movl	$.L.str.23, %edi
	jmp	.LBB0_311
.LBB0_321:
	movl	$.L.str.22, %edi
	jmp	.LBB0_311
.Lfunc_end0:
	.size	tcp_input, .Lfunc_end0-tcp_input
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_186
	.quad	.LBB0_191
	.quad	.LBB0_163
	.quad	.LBB0_181
	.quad	.LBB0_199
	.quad	.LBB0_163
	.quad	.LBB0_204
	.quad	.LBB0_195
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdi, %r10
	testb	%al, %al
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB1_2:
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
	movl	$uk_pr_crit.__str.13, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	uk_pr_crit, .Lfunc_end1-uk_pr_crit
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_input_delayed_close
	.type	tcp_input_delayed_close,@function
tcp_input_delayed_close:                # @tcp_input_delayed_close
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_7
# %bb.1:
	xorl	%eax, %eax
	testb	$16, recv_flags(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_6
# %bb.2:
	movq	%rdi, %rbx
	movzwl	82(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB2_5
# %bb.3:
	movq	256(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_5
# %bb.4:
	movq	64(%rbx), %rdi
	movl	$-15, %esi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB2_5:
	movl	$tcp_active_pcbs, %edi
	movq	%rbx, %rsi
	callq	tcp_pcb_remove
	movq	%rbx, %rdi
	callq	tcp_free
	movl	$1, %eax
.LBB2_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB2_7:
	movl	$.L.str.14, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end2:
	.size	tcp_input_delayed_close, .Lfunc_end2-tcp_input_delayed_close
                                        # -- End function
	.globl	tcp_trigger_input_pcb_close # -- Begin function tcp_trigger_input_pcb_close
	.p2align	4, 0x90
	.type	tcp_trigger_input_pcb_close,@function
tcp_trigger_input_pcb_close:            # @tcp_trigger_input_pcb_close
# %bb.0:
	orb	$16, recv_flags(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	tcp_trigger_input_pcb_close, .Lfunc_end3-tcp_trigger_input_pcb_close
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_parseopt
	.type	tcp_parseopt,@function
tcp_parseopt:                           # @tcp_parseopt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_1
# %bb.3:
	movzwl	tcphdr_optlen(%rip), %r10d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r10d, %r10d
	je	.LBB4_56
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	tcphdr_opt2(%rip), %rcx
	movq	tcphdr(%rip), %r11
	addq	$20, %r11
	movzwl	tcphdr_opt1len(%rip), %r14d
	movb	flags(%rip), %r8b
	xorl	%eax, %eax
	movabsq	$1125891317170174, %r9  # imm = 0x3FFFE0003FFFE
	jmp	.LBB4_5
	.p2align	4, 0x90
.LBB4_28:                               #   in Loop: Header=BB4_5 Depth=1
	movw	%si, 110(%rdi)
.LBB4_53:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_54:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	cmpw	%r10w, %dx
	jae	.LBB4_56
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	leal	1(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r14w, %ax
	jae	.LBB4_8
.LBB4_7:                                #   in Loop: Header=BB4_5 Depth=1
	movzwl	%ax, %esi
	addq	%r11, %rsi
	jmp	.LBB4_9
	.p2align	4, 0x90
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	movl	%eax, %esi
	subl	%r14d, %esi
	movzbl	%sil, %esi
	addq	%rcx, %rsi
.LBB4_9:                                #   in Loop: Header=BB4_5 Depth=1
	movzbl	(%rsi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3, %rsi
	ja	.LBB4_47
# %bb.10:                               #   in Loop: Header=BB4_5 Depth=1
	jmpq	*.LJTI4_0(,%rsi,8)
.LBB4_11:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB4_13
# %bb.12:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r14w, %dx
	jae	.LBB4_14
.LBB4_13:                               #   in Loop: Header=BB4_5 Depth=1
	movzwl	%dx, %edx
	addq	%r11, %rdx
	jmp	.LBB4_15
	.p2align	4, 0x90
.LBB4_47:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB4_49
# %bb.48:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r14w, %dx
	jae	.LBB4_50
.LBB4_49:                               #   in Loop: Header=BB4_5 Depth=1
	movzwl	%dx, %edx
	addq	%r11, %rdx
	jmp	.LBB4_51
	.p2align	4, 0x90
.LBB4_29:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB4_31
# %bb.30:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r14w, %dx
	jae	.LBB4_32
.LBB4_31:                               #   in Loop: Header=BB4_5 Depth=1
	movzwl	%dx, %edx
	addq	%r11, %rdx
	jmp	.LBB4_33
.LBB4_14:                               #   in Loop: Header=BB4_5 Depth=1
	subl	%r14d, %edx
	movzbl	%dl, %edx
	addq	%rcx, %rdx
.LBB4_15:                               #   in Loop: Header=BB4_5 Depth=1
	movzbl	(%rdx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %dl
	jne	.LBB4_55
# %bb.16:                               #   in Loop: Header=BB4_5 Depth=1
	leal	2(%rax), %edx
	movzwl	%dx, %esi
	leal	2(%rsi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r10d, %ebx
	ja	.LBB4_55
# %bb.17:                               #   in Loop: Header=BB4_5 Depth=1
	leal	3(%rax), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB4_20
# %bb.18:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r14w, %dx
	jae	.LBB4_19
.LBB4_20:                               #   in Loop: Header=BB4_5 Depth=1
	movzbl	(%r11,%rsi), %esi
	shll	$8, %esi
	addl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	testq	%rcx, %rcx
	jne	.LBB4_21
	jmp	.LBB4_23
.LBB4_50:                               #   in Loop: Header=BB4_5 Depth=1
	subl	%r14d, %edx
	movzbl	%dl, %edx
	addq	%rcx, %rdx
.LBB4_51:                               #   in Loop: Header=BB4_5 Depth=1
	movzbl	(%rdx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$1, %dx
	jbe	.LBB4_55
# %bb.52:                               #   in Loop: Header=BB4_5 Depth=1
	movzwl	%dx, %edx
	addl	%eax, %edx
	jmp	.LBB4_53
.LBB4_32:                               #   in Loop: Header=BB4_5 Depth=1
	subl	%r14d, %edx
	movzbl	%dl, %edx
	addq	%rcx, %rdx
.LBB4_33:                               #   in Loop: Header=BB4_5 Depth=1
	movzbl	(%rdx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %dl
	jne	.LBB4_55
# %bb.34:                               #   in Loop: Header=BB4_5 Depth=1
	leal	2(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r10w, %si
	jae	.LBB4_55
# %bb.35:                               #   in Loop: Header=BB4_5 Depth=1
	movl	%eax, %edx
	addl	$3, %edx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB4_37
# %bb.36:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r14w, %si
	jae	.LBB4_38
.LBB4_37:                               #   in Loop: Header=BB4_5 Depth=1
	movzwl	%si, %eax
	addq	%r11, %rax
	jmp	.LBB4_39
.LBB4_19:                               #   in Loop: Header=BB4_5 Depth=1
	subl	%r14d, %edx
	movzbl	%dl, %edx
	movzbl	(%rcx,%rdx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shll	$8, %esi
	addl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
.LBB4_21:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r14w, %bx
	jae	.LBB4_24
# %bb.22:                               #   in Loop: Header=BB4_5 Depth=1
	movl	%edx, %eax
.LBB4_23:                               #   in Loop: Header=BB4_5 Depth=1
	movzwl	%bx, %ebx
	addq	%r11, %rbx
	movl	%eax, %edx
	jmp	.LBB4_25
.LBB4_24:                               #   in Loop: Header=BB4_5 Depth=1
	subl	%r14d, %ebx
	movzbl	%bl, %ebx
	addq	%rcx, %rbx
.LBB4_25:                               #   in Loop: Header=BB4_5 Depth=1
	movzbl	(%rbx), %eax
	orl	%esi, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1460, %esi             # imm = 0x5B4
	cmpl	$1460, %eax             # imm = 0x5B4
	ja	.LBB4_28
# %bb.26:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB4_28
# %bb.27:                               #   in Loop: Header=BB4_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %esi
	jmp	.LBB4_28
.LBB4_38:                               #   in Loop: Header=BB4_5 Depth=1
	subl	%r14d, %esi
	movzbl	%sil, %eax
	addq	%rcx, %rax
.LBB4_39:                               #   in Loop: Header=BB4_5 Depth=1
	movzbl	(%rax), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r8b
	je	.LBB4_54
# %bb.40:                               #   in Loop: Header=BB4_5 Depth=1
	movzwl	82(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %eax              # imm = 0x100
	jne	.LBB4_54
# %bb.41:                               #   in Loop: Header=BB4_5 Depth=1
	movb	%bl, 272(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$15, %bl
	jb	.LBB4_43
# %bb.42:                               #   in Loop: Header=BB4_5 Depth=1
	movb	$14, 272(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_43:                               #   in Loop: Header=BB4_5 Depth=1
	movb	$4, 273(%rdi)
	orl	$256, %eax              # imm = 0x100
	movw	%ax, 82(%rdi)
	cmpl	$65535, 96(%rdi)        # imm = 0xFFFF
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_44
# %bb.45:                               #   in Loop: Header=BB4_5 Depth=1
	cmpl	$65535, 100(%rdi)       # imm = 0xFFFF
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_44
# %bb.46:                               #   in Loop: Header=BB4_5 Depth=1
	movq	%r9, 96(%rdi)
	jmp	.LBB4_53
.LBB4_55:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_56:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB4_1:
	movl	$.L.str.16, %edi
	jmp	.LBB4_2
.LBB4_44:
	movl	$.L.str.17, %edi
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
	.size	tcp_parseopt, .Lfunc_end4-tcp_parseopt
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI4_0:
	.quad	.LBB4_55
	.quad	.LBB4_54
	.quad	.LBB4_11
	.quad	.LBB4_29
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function tcp_receive
	.type	tcp_receive,@function
tcp_receive:                            # @tcp_receive
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
	je	.LBB5_154
# %bb.1:
	movq	%rdi, %r15
	cmpl	$3, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB5_155
# %bb.2:
	testb	$16, flags(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_28
# %bb.3:
	movl	160(%r15), %r8d
	movl	152(%r15), %esi
	movl	seqno(%rip), %ebx
	cmpl	%ebx, 148(%r15)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB5_8
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	ackno(%rip), %eax
	jne	.LBB5_6
# %bb.5:
	cmpl	%eax, %esi
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB5_8
.LBB5_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %edi
	movl	%esi, %edx
	cmpl	%eax, %esi
	jne	.LBB5_11
# %bb.7:
	movq	tcphdr(%rip), %rax
	movzwl	14(%rax), %r9d
	movb	272(%r15), %cl
	shll	%cl, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %edi
	movl	%esi, %edx
	movl	%esi, %eax
	cmpl	%r8d, %r9d
	jbe	.LBB5_11
.LBB5_8:
	movq	tcphdr(%rip), %rax
	movzwl	14(%rax), %edi
	movb	272(%r15), %cl
	shll	%cl, %edi
	movl	%edi, 160(%r15)
	cmpl	%edi, 164(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB5_10
# %bb.9:
	movl	%edi, 164(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_10:
	movl	%ebx, 148(%r15)
	movl	ackno(%rip), %edx
	movl	%edx, 152(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
.LBB5_11:
	movl	128(%r15), %ebx
	movl	%eax, %ecx
	subl	%ebx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB5_15
# %bb.12:
	notl	%ebx
	addl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB5_14
# %bb.13:
	movl	%eax, %edx
	subl	144(%r15), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB5_39
.LBB5_14:
	movq	%r15, %rdi
	callq	tcp_send_empty_ack
	jmp	.LBB5_23
.LBB5_15:
	cmpw	$0, tcplen(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_22
# %bb.16:
	addl	%r8d, %esi
	addl	%edx, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %edi
	jne	.LBB5_22
# %bb.17:
	cmpw	$0, 108(%r15)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB5_22
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jne	.LBB5_22
# %bb.19:
	movb	127(%r15), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	je	.LBB5_141
# %bb.20:
	addb	$1, %al
	movb	%al, 127(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %al
	jae	.LBB5_142
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %al
	jne	.LBB5_23
	jmp	.LBB5_143
.LBB5_22:
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 127(%r15)
.LBB5_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	112(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB5_28
# %bb.24:
	movl	116(%r15), %eax
	cmpl	ackno(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB5_28
# %bb.25:
	movl	tcp_ticks(%rip), %eax
	subl	%ecx, %eax
	movswl	120(%r15), %ecx
	movl	%ecx, %edx
	sarl	$3, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	shll	$16, %edx
	addl	%eax, %ecx
	movw	%cx, 120(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jns	.LBB5_27
# %bb.26:
	cwtl
	negl	%eax
	movl	$42, __A_VARIABLE(%rip)
.LBB5_27:
	movswl	122(%r15), %edx
	movl	%edx, %esi
	shrl	$2, %esi
	subl	%esi, %eax
	addl	%edx, %eax
	movw	%ax, 122(%r15)
	movswl	%cx, %ecx
	sarl	$3, %ecx
	addl	%eax, %ecx
	movw	%cx, 124(%r15)
	movl	$0, 112(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_28:
	movzwl	tcplen(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB5_36
# %bb.29:
	cmpl	$6, 72(%r15)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB5_36
# %bb.30:
	movl	92(%r15), %edx
	movl	seqno(%rip), %eax
	movl	%eax, %esi
	notl	%esi
	addl	%edx, %esi
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB5_32
# %bb.31:
	movl	%edx, %esi
	subl	%ecx, %esi
	subl	%eax, %esi
	addl	$1, %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB5_41
.LBB5_32:
	cmpl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB5_48
# %bb.33:
	orb	$2, 82(%r15)
.LBB5_34:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_35:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_49
.LBB5_36:
	movl	seqno(%rip), %eax
	subl	92(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB5_38
# %bb.37:
	subl	96(%r15), %eax
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB5_51
.LBB5_38:
	orb	$2, 82(%r15)
	jmp	.LBB5_50
.LBB5_39:
	movzwl	82(%r15), %edi
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dil
	jne	.LBB5_74
# %bb.40:
	leaq	132(%r15), %r8
	movl	132(%r15), %ebx
	movl	136(%r15), %edx
	jmp	.LBB5_75
.LBB5_41:
	movq	inseg+8(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_158
# %bb.42:
	subl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65535, %edx            # imm = 0xFFFF
	jae	.LBB5_159
# %bb.43:
	movzwl	16(%rdi), %ecx
	movzwl	%dx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	ja	.LBB5_160
# %bb.44:
	subw	%dx, inseg+16(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	jbe	.LBB5_47
# %bb.45:                               # %.preheader5
	subl	%edx, %ecx
	.p2align	4, 0x90
.LBB5_46:                               # =>This Inner Loop Header: Depth=1
	subl	%esi, %eax
	movw	%cx, 16(%rdi)
	movw	$0, 18(%rdi)
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movzwl	18(%rdi), %esi
	movzwl	%ax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	ja	.LBB5_46
.LBB5_47:
	movl	%eax, %esi
	callq	pbuf_remove_header
	movl	92(%r15), %edx
	movl	%edx, seqno(%rip)
	movq	inseg+24(%rip), %rax
	movl	%edx, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
.LBB5_48:
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rax), %ecx
	movl	%ecx, %esi
	subl	%edx, %esi
	subl	96(%r15), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB5_52
.LBB5_49:
	movq	%r15, %rdi
	callq	tcp_send_empty_ack
.LBB5_50:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_51:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_52:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %eax
	jne	.LBB5_71
# %bb.53:
	movzwl	inseg+16(%rip), %ebx
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$3, %eax
	cmpw	$1, %ax
	sbbw	$-1, %bx
	movw	%bx, tcplen(%rip)
	movzwl	%bx, %eax
	cmpl	%eax, 96(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB5_60
# %bb.54:
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB5_56
# %bb.55:
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	movl	%edi, %ebx
	andl	$49407, %ebx            # imm = 0xC0FF
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$62, %eax
	movl	%eax, %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	orl	%ebx, %eax
	movq	inseg+24(%rip), %rcx
	movw	%ax, 12(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_56:
	movl	96(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65536, %eax            # imm = 0x10000
	jae	.LBB5_162
# %bb.57:
	movw	%ax, inseg+16(%rip)
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	movzwl	inseg+16(%rip), %ecx
	testb	$2, %al
	je	.LBB5_59
# %bb.58:
	addl	$-1, %ecx
	movw	%cx, inseg+16(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_59:
	movq	inseg+8(%rip), %rdi
	movzwl	%cx, %esi
	callq	pbuf_realloc
	movzwl	inseg+16(%rip), %ebx
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$3, %eax
	cmpw	$1, %ax
	sbbw	$-1, %bx
	movw	%bx, tcplen(%rip)
	movzwl	%bx, %eax
	addl	seqno(%rip), %eax
	movl	96(%r15), %ecx
	addl	92(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jne	.LBB5_116
.LBB5_60:
	cmpq	$0, 200(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_122
# %bb.61:
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	movq	200(%r15), %r14
	testb	$1, %al
	jne	.LBB5_64
# %bb.62:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB5_67
.LBB5_63:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	jmp	.LBB5_121
	.p2align	4, 0x90
.LBB5_64:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB5_122
# %bb.65:                               #   in Loop: Header=BB5_64 Depth=1
	movq	(%r14), %rax
	movq	%rax, 200(%r15)
	movq	%r14, %rdi
	callq	tcp_seg_free
	movl	$42, __A_VARIABLE(%rip)
	movq	200(%r15), %r14
	jmp	.LBB5_64
.LBB5_66:                               #   in Loop: Header=BB5_67 Depth=1
	movq	(%r14), %rbx
	movq	%r14, %rdi
	callq	tcp_seg_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	testq	%rbx, %rbx
	je	.LBB5_63
.LBB5_67:                               # =>This Inner Loop Header: Depth=1
	movl	seqno(%rip), %eax
	movzwl	tcplen(%rip), %edx
	addl	%eax, %edx
	movq	24(%r14), %rsi
	movl	4(%rsi), %ecx
	movzwl	16(%r14), %edi
	subl	%ecx, %edx
	cmpl	%edi, %edx
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB5_117
# %bb.68:                               #   in Loop: Header=BB5_67 Depth=1
	movzwl	12(%rsi), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB5_66
# %bb.69:                               #   in Loop: Header=BB5_67 Depth=1
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB5_66
# %bb.70:                               #   in Loop: Header=BB5_67 Depth=1
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %ebx
	movl	$1, %edi
	callq	lwip_htons
	orw	%bx, %ax
	movq	inseg+24(%rip), %rcx
	movw	%ax, 12(%rcx)
	movzwl	inseg+16(%rip), %ebx
	movzwl	%ax, %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$3, %eax
	cmpw	$1, %ax
	sbbw	$-1, %bx
	movw	%bx, tcplen(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_66
.LBB5_71:
	leaq	200(%r15), %r12
	movq	200(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB5_82
# %bb.72:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %rdx
	movl	4(%rdx), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	jne	.LBB5_97
# %bb.73:
	xorl	%r14d, %r14d
	jmp	.LBB5_104
.LBB5_74:
	andl	$65531, %edi            # imm = 0xFFFB
	movw	%di, 82(%r15)
	movl	136(%r15), %edx
	leaq	132(%r15), %r8
	movl	%edx, 132(%r15)
	movl	$0, 176(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ebx
.LBB5_75:
	movw	$0, 126(%r15)
	movswl	120(%r15), %esi
	shrl	$3, %esi
	addw	122(%r15), %si
	movw	%si, 124(%r15)
	movl	%eax, 128(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ebx
	jae	.LBB5_77
# %bb.76:
	andl	$2048, %edi             # imm = 0x800
	cmpw	$1, %di
	movl	$1, %eax
	adcl	$0, %eax
	movzwl	110(%r15), %edx
	imull	%eax, %edx
	cmpl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmovbl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%ebx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmovael	%edx, %eax
	movl	%eax, 132(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_84
.LBB5_77:
	addl	176(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB5_79
# %bb.78:
	movl	$-1, 176(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ecx
	jmp	.LBB5_80
.LBB5_79:
	movl	%ecx, 176(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %ecx
	jb	.LBB5_85
.LBB5_80:
	subl	%ebx, %ecx
	movl	%ecx, 176(%r15)
	movzwl	110(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%ebx, %eax
	jae	.LBB5_83
# %bb.81:
	movl	$-1, (%r8)
	jmp	.LBB5_84
.LBB5_82:
	movl	$inseg, %edi
	callq	tcp_seg_copy
	movq	%rax, (%r12)
	jmp	.LBB5_35
.LBB5_83:
	movl	%eax, (%r8)
.LBB5_84:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_85:
	movq	184(%r15), %rdx
	movq	192(%r15), %rsi
	movq	%r15, %rdi
	callq	tcp_free_acked_segments
	movq	%rax, 192(%r15)
	movq	184(%r15), %rsi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	tcp_free_acked_segments
	movq	%rax, 184(%r15)
	cmpq	$1, 192(%r15)
	movl	$42, __A_VARIABLE(%rip)
	sbbl	%ecx, %ecx
	movw	%cx, 108(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 84(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB5_87
# %bb.86:
	movw	$0, 174(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_87:
	cmpq	$0, ip_data+24(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_89
# %bb.88:
	movl	$ip_data+36, %edi
	callq	nd6_reachability_hint
	movl	$42, __A_VARIABLE(%rip)
.LBB5_89:
	movl	recv_acked(%rip), %eax
	addl	%eax, 168(%r15)
	movzwl	82(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$2048, %eax             # imm = 0x800
	je	.LBB5_23
# %bb.90:
	movq	192(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB5_93
# %bb.91:
	movl	140(%r15), %ebx
	movq	24(%rcx), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	subl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jg	.LBB5_23
# %bb.92:
	andb	$-9, 83(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_23
.LBB5_93:
	movq	184(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB5_96
# %bb.94:
	movl	140(%r15), %ebx
	movq	24(%rcx), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	subl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jg	.LBB5_23
# %bb.95:
	movzwl	82(%r15), %eax
.LBB5_96:
	andl	$63487, %eax            # imm = 0xF7FF
	movw	%ax, 82(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_23
.LBB5_97:                               # %.preheader3
	xorl	%r13d, %r13d
.LBB5_98:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB5_101
# %bb.99:                               #   in Loop: Header=BB5_98 Depth=1
	movq	24(%r13), %rdi
	movl	4(%rdi), %edi
	notl	%edi
	addl	%eax, %edi
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB5_102
# %bb.100:                              #   in Loop: Header=BB5_98 Depth=1
	movl	%ecx, %edi
	subl	%esi, %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jg	.LBB5_102
	jmp	.LBB5_144
.LBB5_101:                              #   in Loop: Header=BB5_98 Depth=1
	cmpl	%esi, %eax
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB5_148
.LBB5_102:                              #   in Loop: Header=BB5_98 Depth=1
	movq	(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB5_107
# %bb.103:                              #   in Loop: Header=BB5_98 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %rdx
	movl	4(%rdx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r13
	cmpl	%esi, %eax
	jne	.LBB5_98
.LBB5_104:
	movzwl	inseg+16(%rip), %eax
	cmpw	16(%rbx), %ax
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB5_35
# %bb.105:
	movl	$inseg, %edi
	callq	tcp_seg_copy
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_34
# %bb.106:
	testq	%r14, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmovneq	%r14, %r12
	movq	%rax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	jmp	.LBB5_151
.LBB5_107:
	subl	%esi, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB5_152
# %bb.108:
	movzwl	12(%rdx), %edi
	callq	lwip_htons
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB5_35
# %bb.109:
	movl	$inseg, %edi
	callq	tcp_seg_copy
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_35
# %bb.110:
	movq	24(%r14), %rax
	movl	4(%rax), %ecx
	movzwl	16(%r14), %edx
	addl	%ecx, %edx
	movl	seqno(%rip), %eax
	subl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB5_112
# %bb.111:
	subl	%ecx, %eax
	movw	%ax, 16(%r14)
	movq	8(%r14), %rdi
	movzwl	%ax, %esi
	callq	pbuf_realloc
	movl	$42, __A_VARIABLE(%rip)
	movl	seqno(%rip), %eax
.LBB5_112:
	movzwl	tcplen(%rip), %ecx
	addl	%eax, %ecx
	subl	92(%r15), %ecx
	subl	96(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB5_35
# %bb.113:
	movq	(%r14), %rax
	movq	24(%rax), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rcx
	testb	$1, %al
	je	.LBB5_115
# %bb.114:
	movq	24(%rcx), %rax
	movzwl	12(%rax), %edi
	movl	%edi, %ebx
	andl	$49407, %ebx            # imm = 0xC0FF
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$62, %eax
	movl	%eax, %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	orl	%ebx, %eax
	movq	(%r14), %rcx
	movq	24(%rcx), %rdx
	movw	%ax, 12(%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_115:
	movl	96(%r15), %eax
	addl	92(%r15), %eax
	subl	seqno(%rip), %eax
	movw	%ax, 16(%rcx)
	movq	8(%rcx), %rdi
	movzwl	%ax, %esi
	callq	pbuf_realloc
	movq	(%r14), %rax
	movzwl	16(%rax), %ebx
	movq	24(%rax), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$3, %eax
	cmpw	$1, %ax
	sbbw	$-1, %bx
	movw	%bx, tcplen(%rip)
	movzwl	%bx, %eax
	addl	seqno(%rip), %eax
	movl	96(%r15), %ecx
	addl	92(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	je	.LBB5_35
.LBB5_116:
	movl	$.L.str.32, %edi
	jmp	.LBB5_157
.LBB5_117:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB5_121
# %bb.118:
	subl	%eax, %ecx
	movw	%cx, inseg+16(%rip)
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	movzwl	inseg+16(%rip), %ecx
	testb	$2, %al
	je	.LBB5_120
# %bb.119:
	addl	$-1, %ecx
	movw	%cx, inseg+16(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_120:
	movq	inseg+8(%rip), %rdi
	movzwl	%cx, %esi
	callq	pbuf_realloc
	movzwl	inseg+16(%rip), %ebx
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$3, %eax
	cmpw	$1, %ax
	sbbw	$-1, %bx
	movw	%bx, tcplen(%rip)
	movzwl	%bx, %eax
	addl	seqno(%rip), %eax
	movq	24(%r14), %rcx
	cmpl	4(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_163
.LBB5_121:
	movq	%r14, 200(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_122:
	movzwl	tcplen(%rip), %ecx
	movl	seqno(%rip), %eax
	addl	%ecx, %eax
	movl	%eax, 92(%r15)
	movl	96(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %eax
	jb	.LBB5_161
# %bb.123:
	movl	%eax, 96(%r15)
	movq	%r15, %rdi
	callq	tcp_update_rcv_ann_wnd
	movq	inseg+8(%rip), %rax
	cmpw	$0, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_125
# %bb.124:
	movq	%rax, recv_data(%rip)
	movq	$0, inseg+8(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_125:
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB5_128
# %bb.126:
	orb	$32, recv_flags(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_128
	.p2align	4, 0x90
.LBB5_127:                              #   in Loop: Header=BB5_128 Depth=1
	movq	(%r14), %rax
	movq	%rax, 200(%r15)
	movq	%r14, %rdi
	callq	tcp_seg_free
.LBB5_128:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	200(%r15), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB5_139
# %bb.129:                              #   in Loop: Header=BB5_128 Depth=1
	movq	24(%r14), %rax
	movl	4(%rax), %ecx
	cmpl	92(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_139
# %bb.130:                              #   in Loop: Header=BB5_128 Depth=1
	movl	%ecx, seqno(%rip)
	movzwl	16(%r14), %ebx
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$3, %eax
	addl	92(%r15), %ebx
	cmpw	$1, %ax
	sbbl	$-1, %ebx
	movl	%ebx, 92(%r15)
	movl	96(%r15), %r12d
	movzwl	16(%r14), %ebx
	movq	24(%r14), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$3, %eax
	cmpw	$1, %ax
	sbbl	$-1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %r12d
	jb	.LBB5_156
# %bb.131:                              #   in Loop: Header=BB5_128 Depth=1
	movzwl	16(%r14), %ebx
	movq	24(%r14), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$3, %eax
	movl	96(%r15), %ecx
	subl	%ebx, %ecx
	cmpw	$1, %ax
	adcl	$-1, %ecx
	movl	%ecx, 96(%r15)
	movq	%r15, %rdi
	callq	tcp_update_rcv_ann_wnd
	movq	8(%r14), %rsi
	cmpw	$0, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_136
# %bb.132:                              #   in Loop: Header=BB5_128 Depth=1
	movq	recv_data(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_134
# %bb.133:                              #   in Loop: Header=BB5_128 Depth=1
	callq	pbuf_cat
	jmp	.LBB5_135
.LBB5_134:                              #   in Loop: Header=BB5_128 Depth=1
	movq	%rsi, recv_data(%rip)
.LBB5_135:                              #   in Loop: Header=BB5_128 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_136:                              #   in Loop: Header=BB5_128 Depth=1
	movq	24(%r14), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB5_127
# %bb.137:                              #   in Loop: Header=BB5_128 Depth=1
	orb	$32, recv_flags(%rip)
	cmpl	$4, 72(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_127
# %bb.138:                              #   in Loop: Header=BB5_128 Depth=1
	movl	$7, 72(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_127
.LBB5_139:
	movzwl	82(%r15), %eax
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%eax, %edx
	andl	$-4, %edx
	orl	$2, %edx
	testb	$1, %al
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%ecx, %edx
	movw	%dx, 82(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, ip_data+24(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_51
# %bb.140:
	movl	$ip_data+36, %edi
	callq	nd6_reachability_hint
	jmp	.LBB5_50
.LBB5_141:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_142:
	movzwl	110(%r15), %eax
	addl	132(%r15), %eax
	movl	$-1, %ecx
	cmovael	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, 132(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_143:
	movq	%r15, %rdi
	callq	tcp_rexmit_fast
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_23
.LBB5_144:
	movl	$inseg, %edi
	callq	tcp_seg_copy
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_34
# %bb.145:
	movq	%rax, %rbx
	movq	24(%r13), %rax
	movl	4(%rax), %eax
	movzwl	16(%r13), %edx
	addl	%eax, %edx
	movl	seqno(%rip), %ecx
	subl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB5_147
# %bb.146:
	subl	%eax, %ecx
	movw	%cx, 16(%r13)
	movq	8(%r13), %rdi
	movzwl	%cx, %esi
	callq	pbuf_realloc
	movl	$42, __A_VARIABLE(%rip)
.LBB5_147:
	movq	%rbx, (%r13)
	movq	%rbx, %rdi
	jmp	.LBB5_150
.LBB5_148:
	movl	$inseg, %edi
	callq	tcp_seg_copy
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_34
# %bb.149:
	movq	%rax, (%r12)
	movq	%rax, %rdi
.LBB5_150:
	movq	%r14, %rsi
.LBB5_151:
	callq	tcp_oos_insert_segment
.LBB5_152:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_34
.LBB5_154:
	movl	$.L.str.24, %edi
	jmp	.LBB5_157
.LBB5_155:
	movl	$.L.str.25, %edi
	jmp	.LBB5_157
.LBB5_156:
	movl	$.L.str.35, %edi
.LBB5_157:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB5_158:
	movl	$.L.str.28, %edi
	jmp	.LBB5_157
.LBB5_159:
	movl	$.L.str.29, %edi
	jmp	.LBB5_157
.LBB5_160:
	movl	$.L.str.30, %edi
	jmp	.LBB5_157
.LBB5_161:
	movl	$.L.str.34, %edi
	jmp	.LBB5_157
.LBB5_162:
	movl	$.L.str.31, %edi
	jmp	.LBB5_157
.LBB5_163:
	movl	$.L.str.33, %edi
	jmp	.LBB5_157
.Lfunc_end5:
	.size	tcp_receive, .Lfunc_end5-tcp_receive
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_free_acked_segments
	.type	tcp_free_acked_segments,@function
tcp_free_acked_segments:                # @tcp_free_acked_segments
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB6_10
# %bb.1:
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r15
	jmp	.LBB6_2
	.p2align	4, 0x90
.LBB6_9:                                #   in Loop: Header=BB6_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r13
	testq	%r12, %r12
	je	.LBB6_10
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movq	24(%r13), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	movl	%eax, %r12d
	movzwl	16(%r13), %ebx
	movq	24(%r13), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	addl	%r12d, %ebx
	subl	ackno(%rip), %ebx
	andl	$3, %eax
	cmpw	$1, %ax
	sbbl	$-1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jg	.LBB6_11
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=1
	movq	(%r13), %r12
	movq	8(%r13), %rdi
	callq	pbuf_clen
                                        # kill: def $ax killed $ax def $eax
	movzwl	172(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%ax, %cx
	jb	.LBB6_4
# %bb.6:                                #   in Loop: Header=BB6_2 Depth=1
	subl	%eax, %ecx
	movw	%cx, 172(%r15)
	movzwl	16(%r13), %eax
	addl	%eax, recv_acked(%rip)
	movq	%r13, %rdi
	callq	tcp_seg_free
	cmpw	$0, 172(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_9
# %bb.7:                                #   in Loop: Header=BB6_2 Depth=1
	movq	%r14, %rax
	orq	%r12, %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_9
# %bb.8:
	movl	$.L.str.37, %edi
	jmp	.LBB6_5
.LBB6_10:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
.LBB6_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_4:
	movl	$.L.str.36, %edi
.LBB6_5:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end6:
	.size	tcp_free_acked_segments, .Lfunc_end6-tcp_free_acked_segments
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function tcp_oos_insert_segment
	.type	tcp_oos_insert_segment,@function
tcp_oos_insert_segment:                 # @tcp_oos_insert_segment
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB7_14
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	24(%rdi), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB7_8
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB7_5
.LBB7_3:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_9
	.p2align	4, 0x90
.LBB7_4:                                #   in Loop: Header=BB7_5 Depth=1
	movq	(%r12), %rbx
	movq	%r12, %rdi
	callq	tcp_seg_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r12
	testq	%rbx, %rbx
	je	.LBB7_3
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
	movl	seqno(%rip), %ecx
	movzwl	16(%r14), %edx
	movq	24(%r12), %rsi
	movl	4(%rsi), %eax
	movzwl	16(%r12), %edi
	addl	%ecx, %edx
	subl	%eax, %edx
	cmpl	%edi, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB7_12
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	movzwl	12(%rsi), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB7_4
# %bb.7:                                #   in Loop: Header=BB7_5 Depth=1
	movq	24(%r14), %rax
	movzwl	12(%rax), %r15d
	movl	$1, %edi
	callq	lwip_htons
	orw	%r15w, %ax
	movq	24(%r14), %rcx
	movw	%ax, 12(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_4
.LBB7_8:
	movq	%r12, %rdi
	callq	tcp_segs_free
.LBB7_9:
	xorl	%r12d, %r12d
.LBB7_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_11:
	movq	%r12, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB7_11
# %bb.13:
	subl	%ecx, %eax
	movw	%ax, 16(%r14)
	movq	8(%r14), %rdi
	movzwl	%ax, %esi
	callq	pbuf_realloc
	jmp	.LBB7_10
.LBB7_14:
	movl	$.L.str.38, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end7:
	.size	tcp_oos_insert_segment, .Lfunc_end7-tcp_oos_insert_segment
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tcp_input: invalid pbuf"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"!(1)"
	.size	.L.str.2, 5

	.type	tcphdr,@object          # @tcphdr
	.local	tcphdr
	.comm	tcphdr,8,8
	.type	tcphdr_optlen,@object   # @tcphdr_optlen
	.local	tcphdr_optlen
	.comm	tcphdr_optlen,2,2
	.type	tcphdr_opt2,@object     # @tcphdr_opt2
	.local	tcphdr_opt2
	.comm	tcphdr_opt2,8,8
	.type	tcphdr_opt1len,@object  # @tcphdr_opt1len
	.local	tcphdr_opt1len
	.comm	tcphdr_opt1len,2,2
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"p->next != NULL"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"p->len == 0"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"p->tot_len == p->next->tot_len"
	.size	.L.str.5, 31

	.type	seqno,@object           # @seqno
	.local	seqno
	.comm	seqno,4,4
	.type	ackno,@object           # @ackno
	.local	ackno
	.comm	ackno,4,4
	.type	flags,@object           # @flags
	.local	flags
	.comm	flags,1,1
	.type	tcplen,@object          # @tcplen
	.local	tcplen
	.comm	tcplen,2,2
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"tcp_input: active pcb->state != CLOSED"
	.size	.L.str.6, 39

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"tcp_input: active pcb->state != TIME-WAIT"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"tcp_input: active pcb->state != LISTEN"
	.size	.L.str.8, 39

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"tcp_input: pcb->next != pcb (before cache)"
	.size	.L.str.9, 43

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"tcp_input: pcb->next != pcb (after cache)"
	.size	.L.str.10, 42

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"tcp_input: TIME-WAIT pcb->state == TIME-WAIT"
	.size	.L.str.11, 45

	.type	inseg,@object           # @inseg
	.local	inseg
	.comm	inseg,32,8
	.type	recv_data,@object       # @recv_data
	.local	recv_data
	.comm	recv_data,8,8
	.type	recv_flags,@object      # @recv_flags
	.local	recv_flags
	.comm	recv_flags,1,1
	.type	recv_acked,@object      # @recv_acked
	.local	recv_acked
	.comm	recv_acked,4,4
	.type	tcp_input_pcb,@object   # @tcp_input_pcb
	.comm	tcp_input_pcb,8,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"pcb->refused_data == NULL"
	.size	.L.str.12, 26

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.13,@object # @uk_pr_crit.__str.13
uk_pr_crit.__str.13:
	.asciz	"tcp_in.c"
	.size	uk_pr_crit.__str.13, 9

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"tcp_input_delayed_close: invalid pcb"
	.size	.L.str.14, 37

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"tcp_parseopt: invalid pcb"
	.size	.L.str.16, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"window not at default value"
	.size	.L.str.17, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"tcp_input: pcb->state != CLOSED"
	.size	.L.str.20, 32

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"pcb->snd_queuelen > 0"
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"no segment to free"
	.size	.L.str.22, 19

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"pcb->listener->accept != NULL"
	.size	.L.str.23, 30

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"tcp_receive: invalid pcb"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"tcp_receive: wrong state"
	.size	.L.str.25, 25

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"inseg.p != NULL"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"insane offset!"
	.size	.L.str.29, 15

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"pbuf too short!"
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"window size > 0xFFFF"
	.size	.L.str.31, 21

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"tcp_receive: segment not trimmed correctly to rcv_wnd\n"
	.size	.L.str.32, 55

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"tcp_receive: segment not trimmed correctly to ooseq queue\n"
	.size	.L.str.33, 59

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"tcp_receive: tcplen > rcv_wnd\n"
	.size	.L.str.34, 31

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"tcp_receive: ooseq tcplen > rcv_wnd\n"
	.size	.L.str.35, 37

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"pcb->snd_queuelen >= pbuf_clen(next->p)"
	.size	.L.str.36, 40

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"tcp_receive: valid queue length"
	.size	.L.str.37, 32

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"tcp_oos_insert_segment: invalid cseg"
	.size	.L.str.38, 37

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
