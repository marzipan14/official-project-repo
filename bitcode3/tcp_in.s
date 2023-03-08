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
	subq	$56, %rsp
	testq	%rdi, %rdi
	je	.LBB0_269
# %bb.1:
	movq	%rdi, %r13
	addw	$1, lwip_stats+146(%rip)
	movq	8(%rdi), %rax
	movq	%rax, tcphdr(%rip)
	cmpw	$20, 18(%rdi)
	jae	.LBB0_3
.LBB0_2:
	movl	$lwip_stats+154, %ecx
	jmp	.LBB0_11
.LBB0_3:
	movq	%rsi, %rbx
	cmpb	$6, ip_data+80(%rip)
	movl	ip_data+60(%rip), %edi
	jne	.LBB0_10
.LBB0_4:
	movl	$lwip_stats+160, %ecx
	cmpb	$-1, %dil
	je	.LBB0_11
.LBB0_5:
	testq	%rbx, %rbx
	je	.LBB0_7
# %bb.6:
	testb	$4, 249(%rbx)
	je	.LBB0_8
.LBB0_7:
	movzwl	16(%r13), %edx
	movl	$ip_data+36, %ecx
	movl	$ip_data+60, %r8d
	movq	%r13, %rdi
	movl	$6, %esi
	callq	ip_chksum_pseudo
	movl	$lwip_stats+152, %ecx
	testw	%ax, %ax
	jne	.LBB0_11
.LBB0_8:
	movq	tcphdr(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $rax
	movzwl	%ax, %ecx
	cmpl	$20480, %ecx            # imm = 0x5000
	jb	.LBB0_2
# %bb.15:
	shrl	$10, %eax
	andl	$60, %eax
	cmpw	16(%r13), %ax
	ja	.LBB0_2
# %bb.17:
	leal	-20(%rax), %ecx
	movw	%cx, tcphdr_optlen(%rip)
	movq	$0, tcphdr_opt2(%rip)
	cmpw	%ax, 18(%r13)
	jae	.LBB0_21
# %bb.18:
	cmpq	$0, (%r13)
	je	.LBB0_275
# %bb.19:
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
	ja	.LBB0_2
# %bb.22:
	movq	8(%rdi), %rax
	movq	%rax, tcphdr_opt2(%rip)
	movzwl	%bx, %esi
	callq	pbuf_remove_header
	movl	16(%r13), %eax
	subl	%ebx, %eax
	movw	%ax, 16(%r13)
	cmpw	$0, 18(%r13)
	jne	.LBB0_276
# %bb.23:
	movq	(%r13), %rcx
	cmpw	16(%rcx), %ax
	je	.LBB0_24
# %bb.277:
	movl	$.L.str.5, %edi
	jmp	.LBB0_274
.LBB0_10:
	movq	ip_data(%rip), %rsi
	callq	ip4_addr_isbroadcast_u32
	movl	$lwip_stats+160, %ecx
	testb	%al, %al
	je	.LBB0_13
.LBB0_11:
	addw	$1, (%rcx)
	addw	$1, lwip_stats+150(%rip)
.LBB0_12:
	movq	%r13, %rdi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	pbuf_free               # TAILCALL
.LBB0_13:
	cmpb	$6, ip_data+80(%rip)
	movzbl	ip_data+60(%rip), %edi
	je	.LBB0_4
# %bb.14:
	andl	$-16, %edi
	cmpl	$224, %edi
	jne	.LBB0_5
	jmp	.LBB0_11
.LBB0_21:
	movw	%cx, tcphdr_opt1len(%rip)
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	pbuf_remove_header
.LBB0_24:
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
	movl	%eax, %edx
	andb	$63, %dl
	movb	%dl, flags(%rip)
	movzwl	16(%r13), %r9d
	movw	%r9w, tcplen(%rip)
	movl	%r9d, %esi
	testb	$3, %al
	je	.LBB0_26
# %bb.25:
	movl	%r9d, %esi
	movl	$lwip_stats+154, %ecx
	incw	%si
	movw	%si, tcplen(%rip)
	je	.LBB0_11
.LBB0_26:
	movw	%si, -44(%rbp)          # 2-byte Spill
	movb	%dl, -41(%rbp)          # 1-byte Spill
	movq	tcp_active_pcbs(%rip), %r10
	testq	%r10, %r10
	je	.LBB0_55
# %bb.27:
	movq	tcphdr(%rip), %rsi
	movq	ip_data+8(%rip), %rcx
	movb	ip_data+56(%rip), %r15b
	movl	ip_data+36(%rip), %r8d
	movb	ip_data+80(%rip), %r11b
	movl	ip_data+40(%rip), %edx
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	ip_data+60(%rip), %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	ip_data+44(%rip), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	ip_data+48(%rip), %edx
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	ip_data+64(%rip), %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movb	ip_data+52(%rip), %dl
	movb	%dl, -42(%rbp)          # 1-byte Spill
	movl	ip_data+68(%rip), %edx
	movl	%edx, -88(%rbp)         # 4-byte Spill
	movl	ip_data+72(%rip), %edx
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movb	ip_data+76(%rip), %dl
	movb	%dl, -45(%rbp)          # 1-byte Spill
	xorl	%r12d, %r12d
	movq	%r10, %rdi
	jmp	.LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_30 Depth=1
	cmpl	-52(%rbp), %edx         # 4-byte Folded Reload
	je	.LBB0_52
	.p2align	4, 0x90
.LBB0_29:                               #   in Loop: Header=BB0_30 Depth=1
	movq	56(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB0_55
.LBB0_30:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %r14
	movq	%rdi, %r12
	movl	72(%rdi), %edi
	cmpl	$10, %edi
	je	.LBB0_271
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=1
	cmpl	$1, %edi
	je	.LBB0_272
# %bb.32:                               #   in Loop: Header=BB0_30 Depth=1
	testl	%edi, %edi
	je	.LBB0_273
# %bb.33:                               #   in Loop: Header=BB0_30 Depth=1
	movzbl	48(%r12), %edx
	testb	%dl, %dl
	je	.LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_30 Depth=1
	movzbl	264(%rcx), %ebx
	addb	$1, %bl
	cmpb	%bl, %dl
	jne	.LBB0_29
.LBB0_35:                               #   in Loop: Header=BB0_30 Depth=1
	movzwl	80(%r12), %edx
	cmpw	(%rsi), %dx
	jne	.LBB0_29
# %bb.36:                               #   in Loop: Header=BB0_30 Depth=1
	movzwl	78(%r12), %edx
	cmpw	2(%rsi), %dx
	jne	.LBB0_29
# %bb.37:                               #   in Loop: Header=BB0_30 Depth=1
	cmpb	%r15b, 44(%r12)
	jne	.LBB0_29
# %bb.38:                               #   in Loop: Header=BB0_30 Depth=1
	movl	24(%r12), %edx
	cmpb	$6, %r15b
	jne	.LBB0_44
# %bb.39:                               #   in Loop: Header=BB0_30 Depth=1
	cmpl	%r8d, %edx
	jne	.LBB0_29
# %bb.40:                               #   in Loop: Header=BB0_30 Depth=1
	movl	-56(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, 28(%r12)
	jne	.LBB0_29
# %bb.41:                               #   in Loop: Header=BB0_30 Depth=1
	movl	-68(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, 32(%r12)
	jne	.LBB0_29
# %bb.42:                               #   in Loop: Header=BB0_30 Depth=1
	movl	-64(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, 36(%r12)
	jne	.LBB0_29
# %bb.43:                               #   in Loop: Header=BB0_30 Depth=1
	movzbl	-42(%rbp), %edx         # 1-byte Folded Reload
	cmpb	%dl, 40(%r12)
	jne	.LBB0_29
	jmp	.LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_30 Depth=1
	cmpl	%r8d, %edx
	jne	.LBB0_29
.LBB0_45:                               #   in Loop: Header=BB0_30 Depth=1
	cmpb	%r11b, 20(%r12)
	jne	.LBB0_29
# %bb.46:                               #   in Loop: Header=BB0_30 Depth=1
	movl	(%r12), %edx
	cmpb	$6, %r11b
	jne	.LBB0_28
# %bb.47:                               #   in Loop: Header=BB0_30 Depth=1
	cmpl	-52(%rbp), %edx         # 4-byte Folded Reload
	jne	.LBB0_29
# %bb.48:                               #   in Loop: Header=BB0_30 Depth=1
	movl	-60(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, 4(%r12)
	jne	.LBB0_29
# %bb.49:                               #   in Loop: Header=BB0_30 Depth=1
	movl	-88(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, 8(%r12)
	jne	.LBB0_29
# %bb.50:                               #   in Loop: Header=BB0_30 Depth=1
	movl	-84(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, 12(%r12)
	jne	.LBB0_29
# %bb.51:                               #   in Loop: Header=BB0_30 Depth=1
	movzbl	-45(%rbp), %edx         # 1-byte Folded Reload
	cmpb	%dl, 16(%r12)
	jne	.LBB0_29
.LBB0_52:
	movq	56(%r12), %rcx
	cmpq	%r12, %rcx
	je	.LBB0_278
# %bb.53:
	testq	%r14, %r14
	je	.LBB0_129
# %bb.54:
	movq	%rcx, 56(%r14)
	movq	%r10, 56(%r12)
	movq	%r12, tcp_active_pcbs(%rip)
	jmp	.LBB0_130
.LBB0_55:
	movq	tcp_tw_pcbs(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_83
# %bb.56:
	movq	tcphdr(%rip), %rax
	movq	ip_data+8(%rip), %rcx
	movb	ip_data+56(%rip), %r9b
	movl	ip_data+36(%rip), %esi
	movb	ip_data+80(%rip), %r8b
	movl	ip_data+40(%rip), %r10d
	movl	ip_data+60(%rip), %r11d
	movl	ip_data+44(%rip), %r14d
	movl	ip_data+48(%rip), %edx
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	ip_data+64(%rip), %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movb	ip_data+52(%rip), %dl
	movb	%dl, -68(%rbp)          # 1-byte Spill
	movl	ip_data+68(%rip), %edx
	movl	%edx, -64(%rbp)         # 4-byte Spill
	movl	ip_data+72(%rip), %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movb	ip_data+76(%rip), %dl
	movb	%dl, -42(%rbp)          # 1-byte Spill
	jmp	.LBB0_59
.LBB0_57:                               #   in Loop: Header=BB0_59 Depth=1
	cmpl	%r11d, %ebx
	je	.LBB0_79
	.p2align	4, 0x90
.LBB0_58:                               #   in Loop: Header=BB0_59 Depth=1
	movq	56(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB0_83
.LBB0_59:                               # =>This Inner Loop Header: Depth=1
	cmpl	$10, 72(%rdi)
	jne	.LBB0_270
# %bb.60:                               #   in Loop: Header=BB0_59 Depth=1
	movzbl	48(%rdi), %ebx
	testb	%bl, %bl
	je	.LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_59 Depth=1
	movzbl	264(%rcx), %edx
	addb	$1, %dl
	cmpb	%dl, %bl
	jne	.LBB0_58
.LBB0_62:                               #   in Loop: Header=BB0_59 Depth=1
	movzwl	80(%rdi), %r12d
	cmpw	(%rax), %r12w
	jne	.LBB0_58
# %bb.63:                               #   in Loop: Header=BB0_59 Depth=1
	movzwl	78(%rdi), %r15d
	cmpw	2(%rax), %r15w
	jne	.LBB0_58
# %bb.64:                               #   in Loop: Header=BB0_59 Depth=1
	cmpb	%r9b, 44(%rdi)
	jne	.LBB0_58
# %bb.65:                               #   in Loop: Header=BB0_59 Depth=1
	movl	24(%rdi), %ebx
	cmpb	$6, %r9b
	jne	.LBB0_71
# %bb.66:                               #   in Loop: Header=BB0_59 Depth=1
	cmpl	%esi, %ebx
	jne	.LBB0_58
# %bb.67:                               #   in Loop: Header=BB0_59 Depth=1
	cmpl	%r10d, 28(%rdi)
	jne	.LBB0_58
# %bb.68:                               #   in Loop: Header=BB0_59 Depth=1
	cmpl	%r14d, 32(%rdi)
	jne	.LBB0_58
# %bb.69:                               #   in Loop: Header=BB0_59 Depth=1
	movl	-56(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, 36(%rdi)
	jne	.LBB0_58
# %bb.70:                               #   in Loop: Header=BB0_59 Depth=1
	movzbl	-68(%rbp), %edx         # 1-byte Folded Reload
	cmpb	%dl, 40(%rdi)
	jne	.LBB0_58
	jmp	.LBB0_72
.LBB0_71:                               #   in Loop: Header=BB0_59 Depth=1
	cmpl	%esi, %ebx
	jne	.LBB0_58
.LBB0_72:                               #   in Loop: Header=BB0_59 Depth=1
	cmpb	%r8b, 20(%rdi)
	jne	.LBB0_58
# %bb.73:                               #   in Loop: Header=BB0_59 Depth=1
	movl	(%rdi), %ebx
	cmpb	$6, %r8b
	jne	.LBB0_57
# %bb.74:                               #   in Loop: Header=BB0_59 Depth=1
	cmpl	%r11d, %ebx
	jne	.LBB0_58
# %bb.75:                               #   in Loop: Header=BB0_59 Depth=1
	movl	-52(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, 4(%rdi)
	jne	.LBB0_58
# %bb.76:                               #   in Loop: Header=BB0_59 Depth=1
	movl	-64(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, 8(%rdi)
	jne	.LBB0_58
# %bb.77:                               #   in Loop: Header=BB0_59 Depth=1
	movl	-60(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, 12(%rdi)
	jne	.LBB0_58
# %bb.78:                               #   in Loop: Header=BB0_59 Depth=1
	movzbl	-42(%rbp), %edx         # 1-byte Folded Reload
	cmpb	%dl, 16(%rdi)
	jne	.LBB0_58
.LBB0_79:
	testb	$4, -41(%rbp)           # 1-byte Folded Reload
	jne	.LBB0_12
# %bb.80:
	testb	$2, -41(%rbp)           # 1-byte Folded Reload
	jne	.LBB0_140
# %bb.81:
	testb	$1, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_142
# %bb.82:
	movl	tcp_ticks(%rip), %eax
	movl	%eax, 88(%rdi)
	jmp	.LBB0_142
.LBB0_83:
	movq	tcp_listen_pcbs(%rip), %r9
	testq	%r9, %r9
	je	.LBB0_107
# %bb.84:
	movq	tcphdr(%rip), %rsi
	movq	ip_data+8(%rip), %rdi
	movb	ip_data+80(%rip), %r10b
	movl	ip_data+60(%rip), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	ip_data+64(%rip), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	ip_data+68(%rip), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	ip_data+72(%rip), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movb	ip_data+76(%rip), %al
	movb	%al, -60(%rbp)          # 1-byte Spill
	xorl	%ebx, %ebx
	movq	%r9, %rax
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%r11d, %r11d
	xorl	%r12d, %r12d
	jmp	.LBB0_87
.LBB0_85:                               #   in Loop: Header=BB0_87 Depth=1
	movq	%r14, %r12
	movq	%rdx, %r11
	movq	%rbx, %r15
	.p2align	4, 0x90
.LBB0_86:                               #   in Loop: Header=BB0_87 Depth=1
	movq	56(%r14), %rax
	movq	%r14, %rbx
	testq	%rax, %rax
	je	.LBB0_104
.LBB0_87:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdx
	movq	%rax, %r14
	movzbl	48(%rax), %eax
	testb	%al, %al
	je	.LBB0_89
# %bb.88:                               #   in Loop: Header=BB0_87 Depth=1
	movzbl	264(%rdi), %ecx
	addb	$1, %cl
	cmpb	%cl, %al
	jne	.LBB0_86
.LBB0_89:                               #   in Loop: Header=BB0_87 Depth=1
	movzwl	78(%r14), %eax
	cmpw	2(%rsi), %ax
	jne	.LBB0_86
# %bb.90:                               #   in Loop: Header=BB0_87 Depth=1
	movzbl	20(%r14), %eax
	cmpb	$46, %al
	je	.LBB0_85
# %bb.91:                               #   in Loop: Header=BB0_87 Depth=1
	cmpb	%r10b, %al
	jne	.LBB0_86
# %bb.92:                               #   in Loop: Header=BB0_87 Depth=1
	movl	(%r14), %r8d
	cmpb	$6, %r10b
	jne	.LBB0_102
# %bb.93:                               #   in Loop: Header=BB0_87 Depth=1
	cmpl	-56(%rbp), %r8d         # 4-byte Folded Reload
	jne	.LBB0_98
# %bb.94:                               #   in Loop: Header=BB0_87 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, 4(%r14)
	jne	.LBB0_98
# %bb.95:                               #   in Loop: Header=BB0_87 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, 8(%r14)
	jne	.LBB0_98
# %bb.96:                               #   in Loop: Header=BB0_87 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, 12(%r14)
	jne	.LBB0_98
# %bb.97:                               #   in Loop: Header=BB0_87 Depth=1
	movzbl	-60(%rbp), %eax         # 1-byte Folded Reload
	cmpb	%al, 16(%r14)
	je	.LBB0_109
.LBB0_98:                               #   in Loop: Header=BB0_87 Depth=1
	testl	%r8d, %r8d
	jne	.LBB0_86
# %bb.99:                               #   in Loop: Header=BB0_87 Depth=1
	cmpl	$0, 4(%r14)
	jne	.LBB0_86
# %bb.100:                              #   in Loop: Header=BB0_87 Depth=1
	cmpl	$0, 8(%r14)
	jne	.LBB0_86
# %bb.101:                              #   in Loop: Header=BB0_87 Depth=1
	cmpl	$0, 12(%r14)
	jne	.LBB0_86
	jmp	.LBB0_85
.LBB0_102:                              #   in Loop: Header=BB0_87 Depth=1
	cmpl	-56(%rbp), %r8d         # 4-byte Folded Reload
	je	.LBB0_109
# %bb.103:                              #   in Loop: Header=BB0_87 Depth=1
	testl	%r8d, %r8d
	jne	.LBB0_86
	jmp	.LBB0_85
.LBB0_104:
	testq	%r12, %r12
	je	.LBB0_107
# %bb.105:
	testq	%r15, %r15
	je	.LBB0_110
.LBB0_106:
	movq	56(%r12), %rax
	movq	%rax, 56(%r11)
	movq	%r9, 56(%r12)
	movq	%r12, tcp_listen_pcbs(%rip)
	jmp	.LBB0_111
.LBB0_107:
	movq	tcphdr(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	testb	$4, %al
	jne	.LBB0_12
# %bb.108:
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
	jmp	.LBB0_12
.LBB0_109:
	movq	%rbx, %r15
	movq	%rdx, %r11
	movq	%r14, %r12
	testq	%r15, %r15
	jne	.LBB0_106
.LBB0_110:
	addw	$1, lwip_stats+166(%rip)
.LBB0_111:
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$4, %al
	jne	.LBB0_12
# %bb.112:
	testb	$16, %al
	jne	.LBB0_117
# %bb.113:
	testb	$2, %al
	je	.LBB0_12
# %bb.114:
	movzbl	76(%r12), %edi
	callq	tcp_alloc
	testq	%rax, %rax
	je	.LBB0_118
# %bb.115:
	movq	%rax, %rbx
	movq	%rax, %r15
	movb	ip_data+80(%rip), %al
	movb	%al, 20(%rbx)
	movl	ip_data+60(%rip), %ecx
	movl	%ecx, (%rbx)
	cmpb	$6, %al
	jne	.LBB0_120
# %bb.116:
	movl	ip_data+64(%rip), %eax
	movl	%eax, 4(%r15)
	movl	ip_data+68(%rip), %eax
	movl	%eax, 8(%r15)
	movl	ip_data+72(%rip), %eax
	movl	%eax, 12(%r15)
	movb	ip_data+76(%rip), %al
	jmp	.LBB0_121
.LBB0_117:
	movzwl	-44(%rbp), %edx         # 2-byte Folded Reload
	addl	seqno(%rip), %edx
	movl	ackno(%rip), %esi
	movq	tcphdr(%rip), %rax
	movzwl	2(%rax), %r9d
	movzwl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$ip_data+60, %ecx
	movl	$ip_data+36, %r8d
	movq	%r12, %rdi
	callq	tcp_rst
	jmp	.LBB0_12
.LBB0_118:
	addw	$1, lwip_stats+156(%rip)
	movq	80(%r12), %rax
	testq	%rax, %rax
	je	.LBB0_12
# %bb.119:
	movq	64(%r12), %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	callq	*%rax
	jmp	.LBB0_12
.LBB0_120:
	movl	$0, 12(%r15)
	movq	$0, 4(%r15)
	xorl	%eax, %eax
.LBB0_121:
	movb	%al, 16(%r15)
	movb	ip_data+56(%rip), %al
	movb	%al, 44(%r15)
	movl	ip_data+36(%rip), %ecx
	movl	%ecx, 24(%r15)
	cmpb	$6, %al
	jne	.LBB0_123
# %bb.122:
	movl	ip_data+40(%rip), %eax
	movl	%eax, 28(%r15)
	movl	ip_data+44(%rip), %eax
	movl	%eax, 32(%r15)
	movl	ip_data+48(%rip), %eax
	movl	%eax, 36(%r15)
	movb	ip_data+52(%rip), %al
	jmp	.LBB0_124
.LBB0_123:
	movl	$0, 36(%r15)
	movq	$0, 28(%r15)
	xorl	%eax, %eax
.LBB0_124:
	addq	$24, %rbx
	movb	%al, 40(%r15)
	movzwl	78(%r12), %eax
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
	movq	64(%r12), %rax
	movq	%rax, 64(%r15)
	movq	%r12, 216(%r15)
	movb	49(%r12), %al
	andb	$12, %al
	movb	%al, 49(%r15)
	movb	48(%r12), %al
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
	movzwl	110(%r15), %r14d
	cmpb	$6, 44(%r15)
	jne	.LBB0_126
# %bb.125:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	ip6_route
	jmp	.LBB0_127
.LBB0_126:
	movq	%rbx, %rdi
	callq	ip4_route
.LBB0_127:
	movzwl	%r14w, %edi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	tcp_eff_send_mss_netif
	movw	%ax, 110(%r15)
	movq	%r15, %rdi
	movl	$18, %esi
	callq	tcp_enqueue_flags
	movq	%r15, %rdi
	testb	%al, %al
	je	.LBB0_144
# %bb.128:
	xorl	%esi, %esi
	callq	tcp_abandon
	jmp	.LBB0_12
.LBB0_129:
	addw	$1, lwip_stats+166(%rip)
	movq	%rcx, %r10
.LBB0_130:
	cmpq	%r12, %r10
	je	.LBB0_279
# %bb.131:
	movq	$0, inseg(%rip)
	movw	%r9w, inseg+16(%rip)
	movq	%r13, inseg+8(%rip)
	movq	%rsi, inseg+24(%rip)
	movq	$0, recv_data(%rip)
	movb	$0, recv_flags(%rip)
	movl	$0, recv_acked(%rip)
	testb	$8, %al
	je	.LBB0_133
# %bb.132:
	orb	$1, 21(%r13)
.LBB0_133:
	cmpq	$0, 208(%r12)
	je	.LBB0_146
# %bb.134:
	movq	%r12, %rdi
	callq	tcp_process_refused_data
	cmpb	$-13, %al
	je	.LBB0_137
# %bb.135:
	cmpq	$0, 208(%r12)
	je	.LBB0_145
# %bb.136:
	cmpw	$0, tcplen(%rip)
	je	.LBB0_145
.LBB0_137:
	cmpl	$0, 100(%r12)
	jne	.LBB0_139
# %bb.138:
	movq	%r12, %rdi
	callq	tcp_send_empty_ack
.LBB0_139:
	addw	$1, lwip_stats+150(%rip)
	jmp	.LBB0_239
.LBB0_140:
	movl	seqno(%rip), %edx
	movl	%edx, %eax
	subl	92(%rdi), %eax
	js	.LBB0_142
# %bb.141:
	subl	96(%rdi), %eax
	testl	%eax, %eax
	jle	.LBB0_164
.LBB0_142:
	cmpw	$0, -44(%rbp)           # 2-byte Folded Reload
	je	.LBB0_12
# %bb.143:
	orb	$2, 82(%rdi)
.LBB0_144:
	callq	tcp_output
	jmp	.LBB0_12
.LBB0_145:
	movb	flags(%rip), %al
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB0_146:
	movq	%r12, tcp_input_pcb(%rip)
	testb	$4, -41(%rbp)           # 1-byte Folded Reload
	jne	.LBB0_155
# %bb.147:
	testb	$2, -41(%rbp)           # 1-byte Folded Reload
	je	.LBB0_149
# %bb.148:
	movl	72(%r12), %eax
	andl	$-2, %eax
	cmpl	$2, %eax
	jne	.LBB0_163
.LBB0_149:
	testb	$16, 82(%r12)
	jne	.LBB0_151
# %bb.150:
	movl	tcp_ticks(%rip), %eax
	movl	%eax, 88(%r12)
.LBB0_151:
	movw	$0, 270(%r12)
	movq	%r12, %rdi
	callq	tcp_parseopt
	movl	72(%r12), %eax
	addl	$-2, %eax
	cmpl	$7, %eax
	ja	.LBB0_227
# %bb.152:
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_153:
	movq	%r12, %rdi
	callq	tcp_receive
	testb	$32, recv_flags(%rip)
	je	.LBB0_227
.LBB0_154:
	orb	$2, 82(%r12)
	movl	$7, 72(%r12)
	jmp	.LBB0_227
.LBB0_155:
	movl	72(%r12), %eax
	cmpl	$2, %eax
	jne	.LBB0_157
# %bb.156:
	movl	ackno(%rip), %eax
	cmpl	144(%r12), %eax
	je	.LBB0_159
	jmp	.LBB0_227
.LBB0_157:
	movl	seqno(%rip), %ecx
	subl	92(%r12), %ecx
	jne	.LBB0_161
# %bb.158:
	testl	%eax, %eax
	je	.LBB0_281
.LBB0_159:
	orb	$8, recv_flags(%rip)
	andb	$-2, 82(%r12)
	jmp	.LBB0_227
.LBB0_161:
	js	.LBB0_227
# %bb.162:
	subl	96(%r12), %ecx
	testl	%ecx, %ecx
	jg	.LBB0_227
.LBB0_163:
	orb	$2, 82(%r12)
.LBB0_227:
	testb	$8, recv_flags(%rip)
	jne	.LBB0_234
# %bb.228:
	movl	recv_acked(%rip), %ebx
	testl	%ebx, %ebx
	jne	.LBB0_231
	jmp	.LBB0_238
.LBB0_229:                              #   in Loop: Header=BB0_231 Depth=1
	movq	64(%r12), %rdi
	movzwl	%r14w, %edx
	movq	%r12, %rsi
	callq	*%rcx
                                        # kill: def $al killed $al def $eax
.LBB0_230:                              #   in Loop: Header=BB0_231 Depth=1
	subl	%r14d, %ebx
	cmpb	$-13, %al
	je	.LBB0_239
.LBB0_231:                              # =>This Inner Loop Header: Depth=1
	testl	%ebx, %ebx
	je	.LBB0_237
# %bb.232:                              #   in Loop: Header=BB0_231 Depth=1
	cmpl	$65535, %ebx            # imm = 0xFFFF
	movl	$65535, %r14d           # imm = 0xFFFF
	cmovbl	%ebx, %r14d
	movq	224(%r12), %rcx
	testq	%rcx, %rcx
	jne	.LBB0_229
# %bb.233:                              #   in Loop: Header=BB0_231 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_230
.LBB0_234:
	movq	256(%r12), %rax
	testq	%rax, %rax
	je	.LBB0_236
# %bb.235:
	movq	64(%r12), %rdi
	movl	$-14, %esi
	callq	*%rax
.LBB0_236:
	movl	$tcp_active_pcbs, %edi
	movq	%r12, %rsi
	callq	tcp_pcb_remove
	movq	%r12, %rdi
	callq	tcp_free
	jmp	.LBB0_239
.LBB0_237:
	movl	$0, recv_acked(%rip)
.LBB0_238:
	movq	%r12, %rdi
	callq	tcp_input_delayed_close
	testl	%eax, %eax
	je	.LBB0_242
.LBB0_239:
	movq	$0, tcp_input_pcb(%rip)
	movq	$0, recv_data(%rip)
	movq	inseg+8(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_241
# %bb.240:
	callq	pbuf_free
	movq	$0, inseg+8(%rip)
.LBB0_241:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_242:
	movq	recv_data(%rip), %rsi
	testq	%rsi, %rsi
	je	.LBB0_260
# %bb.243:
	leaq	-80(%rbp), %rbx
.LBB0_244:                              # =>This Inner Loop Header: Depth=1
	movq	$0, -80(%rbp)
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	pbuf_split_64k
	cmpq	$0, 208(%r12)
	jne	.LBB0_280
# %bb.245:                              #   in Loop: Header=BB0_244 Depth=1
	testb	$16, 82(%r12)
	jne	.LBB0_252
# %bb.246:                              #   in Loop: Header=BB0_244 Depth=1
	movq	232(%r12), %rax
	testq	%rax, %rax
	je	.LBB0_248
# %bb.247:                              #   in Loop: Header=BB0_244 Depth=1
	movq	64(%r12), %rdi
	movq	recv_data(%rip), %rdx
	movq	%r12, %rsi
	xorl	%ecx, %ecx
	callq	*%rax
	jmp	.LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_244 Depth=1
	movq	recv_data(%rip), %rdx
	xorl	%edi, %edi
	movq	%r12, %rsi
	xorl	%ecx, %ecx
	callq	tcp_recv_null
.LBB0_249:                              #   in Loop: Header=BB0_244 Depth=1
	cmpb	$-13, %al
	je	.LBB0_255
# %bb.250:                              #   in Loop: Header=BB0_244 Depth=1
	movq	-80(%rbp), %rsi
	testb	%al, %al
	jne	.LBB0_257
# %bb.251:                              #   in Loop: Header=BB0_244 Depth=1
	movq	%rsi, recv_data(%rip)
	testq	%rsi, %rsi
	jne	.LBB0_244
	jmp	.LBB0_260
.LBB0_164:
	movl	ackno(%rip), %esi
	movzwl	-44(%rbp), %eax         # 2-byte Folded Reload
	addl	%eax, %edx
	movzwl	%r12w, %eax
	movl	%eax, (%rsp)
	movzwl	%r15w, %r9d
	movl	$ip_data+60, %ecx
	movl	$ip_data+36, %r8d
	callq	tcp_rst
	jmp	.LBB0_12
.LBB0_165:
	movq	%r12, %rdi
	callq	tcp_receive
	testb	$32, recv_flags(%rip)
	movb	flags(%rip), %al
	jne	.LBB0_196
# %bb.166:
	testb	$16, %al
	je	.LBB0_227
# %bb.167:
	movl	ackno(%rip), %eax
	cmpl	144(%r12), %eax
	jne	.LBB0_227
# %bb.168:
	cmpq	$0, 184(%r12)
	jne	.LBB0_227
# %bb.169:
	movl	$6, 72(%r12)
	jmp	.LBB0_227
.LBB0_170:
	movb	flags(%rip), %al
	movl	%eax, %ecx
	andb	$18, %cl
	cmpb	$18, %cl
	jne	.LBB0_193
# %bb.171:
	movl	ackno(%rip), %ecx
	movl	128(%r12), %edx
	addl	$1, %edx
	cmpl	%edx, %ecx
	jne	.LBB0_193
# %bb.172:
	movl	seqno(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, 92(%r12)
	movl	%edx, 104(%r12)
	movl	%ecx, 128(%r12)
	movq	tcphdr(%rip), %rcx
	movzwl	14(%rcx), %ecx
	movl	%ecx, 160(%r12)
	movl	%ecx, 164(%r12)
	addl	$-1, %eax
	movl	%eax, 148(%r12)
	movl	$4, 72(%r12)
	movzwl	110(%r12), %r14d
	leaq	24(%r12), %rbx
	cmpb	$6, 44(%r12)
	jne	.LBB0_203
# %bb.173:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	ip6_route
	jmp	.LBB0_204
.LBB0_174:
	movzbl	flags(%rip), %eax
	testb	$16, %al
	jne	.LBB0_200
# %bb.175:
	testb	$2, %al
	je	.LBB0_227
# %bb.176:
	movl	92(%r12), %eax
	addl	$-1, %eax
	cmpl	%eax, seqno(%rip)
	jne	.LBB0_227
# %bb.177:
	movq	%r12, %rdi
	callq	tcp_rexmit
	jmp	.LBB0_227
.LBB0_178:
	movq	%r12, %rdi
	callq	tcp_receive
	testb	$16, flags(%rip)
	je	.LBB0_227
# %bb.179:
	movl	ackno(%rip), %eax
	cmpl	144(%r12), %eax
	jne	.LBB0_227
# %bb.180:
	cmpq	$0, 184(%r12)
	jne	.LBB0_227
# %bb.181:
	orb	$16, recv_flags(%rip)
	jmp	.LBB0_227
.LBB0_182:
	movq	%r12, %rdi
	callq	tcp_receive
	testb	$32, recv_flags(%rip)
	je	.LBB0_227
# %bb.183:
	orb	$2, 82(%r12)
	movq	%r12, %rdi
	callq	tcp_pcb_purge
	movq	tcp_active_pcbs(%rip), %rcx
	cmpq	%r12, %rcx
	je	.LBB0_225
.LBB0_184:                              # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB0_226
# %bb.185:                              #   in Loop: Header=BB0_184 Depth=1
	movq	%rcx, %rax
	movq	56(%rcx), %rcx
	cmpq	%r12, %rcx
	jne	.LBB0_184
.LBB0_186:
	movq	56(%r12), %rcx
	movq	%rcx, 56(%rax)
	jmp	.LBB0_226
.LBB0_187:
	movq	%r12, %rdi
	callq	tcp_receive
	testb	$16, flags(%rip)
	je	.LBB0_227
# %bb.188:
	movl	ackno(%rip), %eax
	cmpl	144(%r12), %eax
	jne	.LBB0_227
# %bb.189:
	cmpq	$0, 184(%r12)
	jne	.LBB0_227
# %bb.190:
	movq	%r12, %rdi
	callq	tcp_pcb_purge
	movq	tcp_active_pcbs(%rip), %rcx
	cmpq	%r12, %rcx
	je	.LBB0_225
.LBB0_191:                              # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB0_226
# %bb.192:                              #   in Loop: Header=BB0_191 Depth=1
	movq	%rcx, %rax
	movq	56(%rcx), %rcx
	cmpq	%r12, %rcx
	jne	.LBB0_191
	jmp	.LBB0_186
.LBB0_193:
	testb	$16, %al
	je	.LBB0_227
# %bb.194:
	movzwl	tcplen(%rip), %edx
	addl	seqno(%rip), %edx
	movl	ackno(%rip), %esi
	movq	tcphdr(%rip), %rax
	movzwl	2(%rax), %r9d
	movzwl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$ip_data+60, %ecx
	movl	$ip_data+36, %r8d
	movq	%r12, %rdi
	callq	tcp_rst
	cmpb	$5, 126(%r12)
	ja	.LBB0_227
# %bb.195:
	movw	$0, 108(%r12)
	movq	%r12, %rdi
	callq	tcp_rexmit_rto
	jmp	.LBB0_227
.LBB0_252:
	movq	recv_data(%rip), %rdi
	callq	pbuf_free
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_254
# %bb.253:
	callq	pbuf_free
.LBB0_254:
	movq	%r12, %rdi
	callq	tcp_abort
	jmp	.LBB0_239
.LBB0_196:
	testb	$16, %al
	je	.LBB0_199
# %bb.197:
	movl	ackno(%rip), %eax
	cmpl	144(%r12), %eax
	jne	.LBB0_199
# %bb.198:
	cmpq	$0, 184(%r12)
	je	.LBB0_222
.LBB0_199:
	orb	$2, 82(%r12)
	movl	$8, 72(%r12)
	jmp	.LBB0_227
.LBB0_200:
	movl	ackno(%rip), %esi
	movl	128(%r12), %eax
	notl	%eax
	addl	%esi, %eax
	js	.LBB0_202
# %bb.201:
	movl	%esi, %eax
	subl	144(%r12), %eax
	testl	%eax, %eax
	jle	.LBB0_207
.LBB0_202:
	movzwl	tcplen(%rip), %edx
	addl	seqno(%rip), %edx
	movq	tcphdr(%rip), %rax
	movzwl	2(%rax), %r9d
	movzwl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$ip_data+60, %ecx
	movl	$ip_data+36, %r8d
	movq	%r12, %rdi
	callq	tcp_rst
	jmp	.LBB0_227
.LBB0_255:
	movq	-80(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_239
# %bb.256:
	callq	pbuf_free
	jmp	.LBB0_239
.LBB0_257:
	testq	%rsi, %rsi
	je	.LBB0_259
# %bb.258:
	movq	recv_data(%rip), %rdi
	callq	pbuf_cat
.LBB0_259:
	movq	recv_data(%rip), %rax
	movq	%rax, 208(%r12)
.LBB0_260:
	testb	$32, recv_flags(%rip)
	je	.LBB0_263
# %bb.261:
	movq	208(%r12), %rax
	testq	%rax, %rax
	je	.LBB0_265
# %bb.262:
	orb	$32, 21(%rax)
.LBB0_263:
	movq	$0, tcp_input_pcb(%rip)
	movq	%r12, %rdi
	callq	tcp_input_delayed_close
	testl	%eax, %eax
	jne	.LBB0_239
# %bb.264:
	movq	%r12, %rdi
	callq	tcp_output
	jmp	.LBB0_239
.LBB0_265:
	movl	96(%r12), %eax
	testb	$1, 83(%r12)
	movl	$65535, %ecx            # imm = 0xFFFF
	movl	$262142, %edx           # imm = 0x3FFFE
	cmovel	%ecx, %edx
	cmpl	%edx, %eax
	je	.LBB0_267
# %bb.266:
	addl	$1, %eax
	movl	%eax, 96(%r12)
.LBB0_267:
	movq	232(%r12), %rax
	testq	%rax, %rax
	je	.LBB0_263
# %bb.268:
	movq	64(%r12), %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*%rax
	cmpb	$-13, %al
	je	.LBB0_239
	jmp	.LBB0_263
.LBB0_203:
	movq	%rbx, %rdi
	callq	ip4_route
.LBB0_204:
	movzwl	%r14w, %edi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	tcp_eff_send_mss_netif
	movzwl	%ax, %ecx
	leal	(%rcx,%rcx), %edx
	cmpl	$2190, %ecx             # imm = 0x88E
	movl	$4380, %esi             # imm = 0x111C
	cmoval	%edx, %esi
	leal	(,%rcx,4), %ecx
	cmpl	%esi, %ecx
	cmovbl	%ecx, %esi
	movw	%ax, 110(%r12)
	movl	%esi, 132(%r12)
	movzwl	172(%r12), %eax
	testw	%ax, %ax
	je	.LBB0_282
# %bb.205:
	addl	$-1, %eax
	movw	%ax, 172(%r12)
	movq	192(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB0_214
# %bb.206:
	leaq	192(%r12), %rax
	jmp	.LBB0_216
.LBB0_207:
	movl	$4, 72(%r12)
	movq	216(%r12), %rax
	testq	%rax, %rax
	je	.LBB0_254
# %bb.208:
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_284
# %bb.209:
	movq	64(%r12), %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	*%rax
	movsbl	%al, %eax
	cmpl	$-13, %eax
	je	.LBB0_239
# %bb.210:
	testl	%eax, %eax
	jne	.LBB0_254
# %bb.211:
	movq	%r12, %rdi
	callq	tcp_receive
	movl	recv_acked(%rip), %eax
	testl	%eax, %eax
	je	.LBB0_213
# %bb.212:
	addl	$-1, %eax
	movl	%eax, recv_acked(%rip)
.LBB0_213:
	movzwl	110(%r12), %eax
	leal	(%rax,%rax), %ecx
	cmpl	$2190, %eax             # imm = 0x88E
	movl	$4380, %edx             # imm = 0x111C
	cmoval	%ecx, %edx
	leal	(,%rax,4), %eax
	cmpl	%edx, %eax
	cmovbl	%eax, %edx
	movl	%edx, 132(%r12)
	testb	$32, recv_flags(%rip)
	jne	.LBB0_154
	jmp	.LBB0_227
.LBB0_214:
	movq	184(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB0_283
# %bb.215:
	leaq	184(%r12), %rax
.LBB0_216:
	movq	(%rdi), %rcx
	movq	%rcx, (%rax)
	callq	tcp_seg_free
	cmpq	$0, 192(%r12)
	je	.LBB0_218
# %bb.217:
	movw	$0, 108(%r12)
	movb	$0, 126(%r12)
	jmp	.LBB0_219
.LBB0_218:
	movw	$-1, 108(%r12)
.LBB0_219:
	movq	240(%r12), %rax
	testq	%rax, %rax
	je	.LBB0_163
# %bb.220:
	movq	64(%r12), %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	*%rax
	cmpb	$-13, %al
	jne	.LBB0_163
	jmp	.LBB0_239
.LBB0_222:
	orb	$2, 82(%r12)
	movq	%r12, %rdi
	callq	tcp_pcb_purge
	movq	tcp_active_pcbs(%rip), %rcx
	cmpq	%r12, %rcx
	je	.LBB0_225
.LBB0_223:                              # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB0_226
# %bb.224:                              #   in Loop: Header=BB0_223 Depth=1
	movq	%rcx, %rax
	movq	56(%rcx), %rcx
	cmpq	%r12, %rcx
	jne	.LBB0_223
	jmp	.LBB0_186
.LBB0_225:
	movq	56(%r12), %rax
	movq	%rax, tcp_active_pcbs(%rip)
.LBB0_226:
	movq	$0, 56(%r12)
	movb	$1, tcp_active_pcbs_changed(%rip)
	movl	$10, 72(%r12)
	movq	tcp_tw_pcbs(%rip), %rax
	movq	%rax, 56(%r12)
	movq	%r12, tcp_tw_pcbs(%rip)
	callq	tcp_timer_needed
	jmp	.LBB0_227
.LBB0_269:
	movl	$.L.str, %edi
	jmp	.LBB0_274
.LBB0_270:
	movl	$.L.str.11, %edi
	jmp	.LBB0_274
.LBB0_271:
	movl	$.L.str.7, %edi
	jmp	.LBB0_274
.LBB0_272:
	movl	$.L.str.8, %edi
	jmp	.LBB0_274
.LBB0_273:
	movl	$.L.str.6, %edi
.LBB0_274:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB0_275:
	movl	$.L.str.3, %edi
	jmp	.LBB0_274
.LBB0_276:
	movl	$.L.str.4, %edi
	jmp	.LBB0_274
.LBB0_278:
	movl	$.L.str.9, %edi
	jmp	.LBB0_274
.LBB0_279:
	movl	$.L.str.10, %edi
	jmp	.LBB0_274
.LBB0_280:
	movl	$.L.str.12, %edi
	jmp	.LBB0_274
.LBB0_281:
	movl	$.L.str.20, %edi
	jmp	.LBB0_274
.LBB0_282:
	movl	$.L.str.21, %edi
	jmp	.LBB0_274
.LBB0_283:
	movl	$.L.str.22, %edi
	jmp	.LBB0_274
.LBB0_284:
	movl	$.L.str.23, %edi
	jmp	.LBB0_274
.Lfunc_end0:
	.size	tcp_input, .Lfunc_end0-tcp_input
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_170
	.quad	.LBB0_174
	.quad	.LBB0_153
	.quad	.LBB0_165
	.quad	.LBB0_182
	.quad	.LBB0_153
	.quad	.LBB0_187
	.quad	.LBB0_178
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
	testq	%rdi, %rdi
	je	.LBB2_7
# %bb.1:
	xorl	%eax, %eax
	testb	$16, recv_flags(%rip)
	je	.LBB2_6
# %bb.2:
	movq	%rdi, %rbx
	testb	$16, 82(%rdi)
	jne	.LBB2_5
# %bb.3:
	movq	256(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_5
# %bb.4:
	movq	64(%rbx), %rdi
	movl	$-15, %esi
	callq	*%rax
.LBB2_5:
	movl	$tcp_active_pcbs, %edi
	movq	%rbx, %rsi
	callq	tcp_pcb_remove
	movq	%rbx, %rdi
	callq	tcp_free
	movl	$1, %eax
.LBB2_6:
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB4_1
# %bb.3:
	movzwl	tcphdr_optlen(%rip), %r14d
	testl	%r14d, %r14d
	je	.LBB4_28
# %bb.4:
	movq	tcphdr_opt2(%rip), %r13
	movq	tcphdr(%rip), %r15
	addq	$20, %r15
	movzwl	tcphdr_opt1len(%rip), %esi
	movb	flags(%rip), %r8b
	xorl	%r10d, %r10d
	movl	$1460, %r9d             # imm = 0x5B4
	movabsq	$1125891317170174, %r11 # imm = 0x3FFFE0003FFFE
	jmp	.LBB4_5
.LBB4_14:                               #   in Loop: Header=BB4_5 Depth=1
	movzwl	%r12w, %eax
	addq	%r15, %rax
.LBB4_16:                               #   in Loop: Header=BB4_5 Depth=1
	movzbl	(%rax), %eax
	orl	%edx, %eax
	leal	-1(%rax), %ecx
	cmpl	$1459, %ecx             # imm = 0x5B3
	cmoval	%r9d, %eax
	movw	%ax, 110(%rdi)
	movl	%r10d, %eax
.LBB4_27:                               #   in Loop: Header=BB4_5 Depth=1
	movl	%eax, %r10d
	cmpw	%r14w, %ax
	jae	.LBB4_28
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	leal	1(%r10), %eax
	movzwl	%r10w, %ecx
	leaq	(%r15,%rcx), %rdx
	movl	%r10d, %ebx
	subl	%esi, %ebx
	movzbl	%bl, %ebx
	addq	%r13, %rbx
	cmpw	%si, %cx
	cmovbq	%rdx, %rbx
	testq	%r13, %r13
	cmoveq	%rdx, %rbx
	movzbl	(%rbx), %ecx
	cmpq	$3, %rcx
	ja	.LBB4_25
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	jmpq	*.LJTI4_0(,%rcx,8)
.LBB4_7:                                #   in Loop: Header=BB4_5 Depth=1
	movzwl	%ax, %ecx
	addq	%r15, %rcx
	movl	%eax, %edx
	subl	%esi, %edx
	movzbl	%dl, %edx
	addq	%r13, %rdx
	cmpw	%si, %ax
	cmovbq	%rcx, %rdx
	testq	%r13, %r13
	cmoveq	%rcx, %rdx
	cmpb	$4, (%rdx)
	jne	.LBB4_28
# %bb.8:                                #   in Loop: Header=BB4_5 Depth=1
	leal	2(%r10), %eax
	movzwl	%ax, %edx
	leal	2(%rdx), %ecx
	cmpl	%r14d, %ecx
	ja	.LBB4_28
# %bb.9:                                #   in Loop: Header=BB4_5 Depth=1
	leal	3(%r10), %r12d
	testq	%r13, %r13
	je	.LBB4_12
# %bb.10:                               #   in Loop: Header=BB4_5 Depth=1
	cmpw	%si, %ax
	jb	.LBB4_12
# %bb.11:                               #   in Loop: Header=BB4_5 Depth=1
	subl	%esi, %edx
	movzbl	%dl, %eax
	movzbl	(%r13,%rax), %edx
	shll	$8, %edx
	addl	$4, %r10d
	jmp	.LBB4_13
	.p2align	4, 0x90
.LBB4_25:                               #   in Loop: Header=BB4_5 Depth=1
	movzwl	%ax, %ecx
	addq	%r15, %rcx
	movl	%eax, %edx
	subl	%esi, %edx
	movzbl	%dl, %edx
	addq	%r13, %rdx
	cmpw	%si, %ax
	cmovbq	%rcx, %rdx
	testq	%r13, %r13
	cmoveq	%rcx, %rdx
	movzbl	(%rdx), %eax
	cmpw	$2, %ax
	jb	.LBB4_28
# %bb.26:                               #   in Loop: Header=BB4_5 Depth=1
	movzwl	%ax, %eax
	addl	%r10d, %eax
	jmp	.LBB4_27
	.p2align	4, 0x90
.LBB4_17:                               #   in Loop: Header=BB4_5 Depth=1
	leal	2(%r10), %edx
	movzwl	%ax, %ecx
	leaq	(%r15,%rcx), %rbx
	movl	%ecx, %eax
	subl	%esi, %eax
	movzbl	%al, %eax
	addq	%r13, %rax
	cmpw	%si, %cx
	cmovbq	%rbx, %rax
	testq	%r13, %r13
	cmoveq	%rbx, %rax
	cmpw	%r14w, %dx
	jae	.LBB4_28
# %bb.18:                               #   in Loop: Header=BB4_5 Depth=1
	cmpb	$3, (%rax)
	jne	.LBB4_28
# %bb.19:                               #   in Loop: Header=BB4_5 Depth=1
	addl	$3, %r10d
	movzwl	%dx, %eax
	addq	%r15, %rax
	movl	%edx, %ecx
	subl	%esi, %ecx
	movzbl	%cl, %ecx
	addq	%r13, %rcx
	cmpw	%si, %dx
	cmovbq	%rax, %rcx
	testq	%r13, %r13
	cmoveq	%rax, %rcx
	movl	%r10d, %eax
	testb	$2, %r8b
	je	.LBB4_27
# %bb.20:                               #   in Loop: Header=BB4_5 Depth=1
	movzwl	82(%rdi), %edx
	testl	$256, %edx              # imm = 0x100
	jne	.LBB4_27
# %bb.21:                               #   in Loop: Header=BB4_5 Depth=1
	movzbl	(%rcx), %ecx
	cmpb	$14, %cl
	movzbl	%cl, %ecx
	movl	$14, %ebx
	cmovael	%ebx, %ecx
	movb	%cl, 272(%rdi)
	movb	$4, 273(%rdi)
	orl	$256, %edx              # imm = 0x100
	movw	%dx, 82(%rdi)
	cmpl	$65535, 96(%rdi)        # imm = 0xFFFF
	jne	.LBB4_22
# %bb.23:                               #   in Loop: Header=BB4_5 Depth=1
	cmpl	$65535, 100(%rdi)       # imm = 0xFFFF
	jne	.LBB4_22
# %bb.24:                               #   in Loop: Header=BB4_5 Depth=1
	movq	%r11, 96(%rdi)
	jmp	.LBB4_27
.LBB4_12:                               #   in Loop: Header=BB4_5 Depth=1
	movzbl	(%r15,%rdx), %edx
	shll	$8, %edx
	addl	$4, %r10d
	testq	%r13, %r13
	je	.LBB4_14
.LBB4_13:                               #   in Loop: Header=BB4_5 Depth=1
	cmpw	%si, %r12w
	jb	.LBB4_14
# %bb.15:                               #   in Loop: Header=BB4_5 Depth=1
	subl	%esi, %r12d
	movzbl	%r12b, %eax
	addq	%r13, %rax
	jmp	.LBB4_16
.LBB4_28:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_1:
	movl	$.L.str.16, %edi
	jmp	.LBB4_2
.LBB4_22:
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
	.quad	.LBB4_28
	.quad	.LBB4_27
	.quad	.LBB4_7
	.quad	.LBB4_17
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
	pushq	%r12
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB5_1
# %bb.3:
	movq	%rdi, %r15
	cmpl	$3, 72(%rdi)
	jbe	.LBB5_4
# %bb.5:
	testb	$16, flags(%rip)
	je	.LBB5_51
# %bb.6:
	movl	160(%r15), %r8d
	movl	148(%r15), %eax
	movl	152(%r15), %ebx
	movl	seqno(%rip), %edi
	cmpl	%edi, %eax
	js	.LBB5_11
# %bb.7:
	movl	ackno(%rip), %edx
	cmpl	%edi, %eax
	jne	.LBB5_9
# %bb.8:
	movl	%ebx, %eax
	subl	%edx, %eax
	jns	.LBB5_9
.LBB5_11:
	movq	tcphdr(%rip), %rax
	movzwl	14(%rax), %esi
	movb	272(%r15), %cl
	shll	%cl, %esi
	movl	%esi, 160(%r15)
	cmpl	%esi, 164(%r15)
	jae	.LBB5_13
# %bb.12:
	movl	%esi, 164(%r15)
.LBB5_13:
	movl	%edi, 148(%r15)
	movl	ackno(%rip), %eax
	movl	%eax, 152(%r15)
	movl	%eax, %edx
.LBB5_14:
	movl	128(%r15), %edi
	movl	%edx, %ecx
	subl	%edi, %ecx
	testl	%ecx, %ecx
	jle	.LBB5_15
# %bb.25:
	notl	%edi
	addl	%edx, %edi
	js	.LBB5_47
# %bb.26:
	movl	%edx, %eax
	subl	144(%r15), %eax
	testl	%eax, %eax
	jle	.LBB5_27
.LBB5_47:
	movq	%r15, %rdi
	callq	tcp_send_empty_ack
	jmp	.LBB5_48
.LBB5_15:
	cmpw	$0, tcplen(%rip)
	jne	.LBB5_24
# %bb.16:
	addl	%r8d, %ebx
	addl	%eax, %esi
	cmpl	%ebx, %esi
	jne	.LBB5_24
# %bb.17:
	cmpl	%edi, %edx
	jne	.LBB5_24
# %bb.18:
	cmpw	$0, 108(%r15)
	js	.LBB5_24
# %bb.19:
	movb	127(%r15), %al
	cmpb	$-1, %al
	je	.LBB5_21
# %bb.20:
	addb	$1, %al
	movb	%al, 127(%r15)
	cmpb	$4, %al
	jb	.LBB5_22
.LBB5_21:
	movzwl	110(%r15), %eax
	addl	132(%r15), %eax
	movl	$-1, %ecx
	cmovael	%eax, %ecx
	movl	%ecx, 132(%r15)
.LBB5_23:
	movq	%r15, %rdi
	callq	tcp_rexmit_fast
	jmp	.LBB5_48
.LBB5_9:
	movl	%r8d, %esi
	movl	%ebx, %eax
	cmpl	%edx, %ebx
	jne	.LBB5_14
# %bb.10:
	movq	tcphdr(%rip), %rax
	movzwl	14(%rax), %r9d
	movb	272(%r15), %cl
	shll	%cl, %r9d
	movl	%r8d, %esi
	movl	%ebx, %eax
	movl	%ebx, %edx
	cmpl	%r8d, %r9d
	ja	.LBB5_11
	jmp	.LBB5_14
.LBB5_24:
	movb	$0, 127(%r15)
	jmp	.LBB5_48
.LBB5_27:
	movzwl	82(%r15), %edi
	testb	$4, %dil
	jne	.LBB5_29
# %bb.28:
	leaq	132(%r15), %r8
	movl	132(%r15), %ebx
	movl	136(%r15), %esi
	jmp	.LBB5_30
.LBB5_29:
	andl	$65531, %edi            # imm = 0xFFFB
	movw	%di, 82(%r15)
	movl	136(%r15), %esi
	leaq	132(%r15), %r8
	movl	%esi, 132(%r15)
	movl	$0, 176(%r15)
	movl	%esi, %ebx
.LBB5_30:
	movw	$0, 126(%r15)
	movswl	120(%r15), %eax
	shrl	$3, %eax
	addw	122(%r15), %ax
	movw	%ax, 124(%r15)
	movl	%edx, 128(%r15)
	cmpl	%esi, %ebx
	jae	.LBB5_32
# %bb.31:
	andl	$2048, %edi             # imm = 0x800
	cmpw	$1, %di
	movl	$1, %eax
	adcl	$0, %eax
	movzwl	110(%r15), %edx
	imull	%eax, %edx
	cmpl	%edx, %ecx
	cmovbl	%ecx, %edx
	jmp	.LBB5_34
.LBB5_32:
	addl	176(%r15), %ecx
	movl	$-1, %edx
	cmovael	%ecx, %edx
	movl	%edx, 176(%r15)
	subl	%ebx, %edx
	jb	.LBB5_35
# %bb.33:
	movl	%edx, 176(%r15)
	movzwl	110(%r15), %edx
.LBB5_34:
	addl	%ebx, %edx
	cmpl	%ebx, %edx
	movl	$-1, %eax
	cmovael	%edx, %eax
	movl	%eax, (%r8)
.LBB5_35:
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
	sbbl	%ecx, %ecx
	movw	%cx, 108(%r15)
	movb	$0, 84(%r15)
	testq	%rax, %rax
	jne	.LBB5_37
# %bb.36:
	movw	$0, 174(%r15)
.LBB5_37:
	cmpq	$0, ip_data+24(%rip)
	je	.LBB5_39
# %bb.38:
	movl	$ip_data+36, %edi
	callq	nd6_reachability_hint
.LBB5_39:
	movl	recv_acked(%rip), %eax
	addl	%eax, 168(%r15)
	movzwl	82(%r15), %eax
	testl	$2048, %eax             # imm = 0x800
	je	.LBB5_48
# %bb.40:
	movq	192(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB5_41
# %bb.45:
	movl	140(%r15), %ebx
	movq	24(%rcx), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	subl	%eax, %ebx
	testl	%ebx, %ebx
	jg	.LBB5_48
# %bb.46:
	andb	$-9, 83(%r15)
	jmp	.LBB5_48
.LBB5_22:
	cmpb	$3, %al
	je	.LBB5_23
	jmp	.LBB5_48
.LBB5_41:
	movq	184(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB5_44
# %bb.42:
	movl	140(%r15), %ebx
	movq	24(%rcx), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	subl	%eax, %ebx
	testl	%ebx, %ebx
	jg	.LBB5_48
# %bb.43:
	movzwl	82(%r15), %eax
.LBB5_44:
	andl	$63487, %eax            # imm = 0xF7FF
	movw	%ax, 82(%r15)
.LBB5_48:
	movl	112(%r15), %eax
	testl	%eax, %eax
	je	.LBB5_51
# %bb.49:
	movl	116(%r15), %ecx
	cmpl	ackno(%rip), %ecx
	jns	.LBB5_51
# %bb.50:
	movl	tcp_ticks(%rip), %ecx
	subl	%eax, %ecx
	movswl	120(%r15), %eax
	movl	%eax, %edx
	sarl	$3, %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	shll	$16, %edx
	addl	%ecx, %eax
	cwtl
	movw	%ax, 120(%r15)
	movl	%ecx, %esi
	negl	%esi
	testl	%edx, %edx
	cmovnsl	%ecx, %esi
	movswl	122(%r15), %ecx
	movl	%ecx, %edx
	shrl	$2, %edx
	subl	%edx, %esi
	addl	%ecx, %esi
	movw	%si, 122(%r15)
	sarl	$3, %eax
	addl	%esi, %eax
	movw	%ax, 124(%r15)
	movl	$0, 112(%r15)
.LBB5_51:
	movzwl	tcplen(%rip), %ecx
	testl	%ecx, %ecx
	je	.LBB5_146
# %bb.52:
	cmpl	$6, 72(%r15)
	ja	.LBB5_146
# %bb.53:
	movl	92(%r15), %edx
	movl	seqno(%rip), %eax
	movl	%eax, %esi
	notl	%esi
	addl	%edx, %esi
	js	.LBB5_72
# %bb.54:
	movl	%edx, %esi
	subl	%ecx, %esi
	subl	%eax, %esi
	addl	$1, %esi
	testl	%esi, %esi
	jle	.LBB5_55
.LBB5_72:
	cmpl	%edx, %eax
	jns	.LBB5_65
# %bb.73:
	orb	$2, 82(%r15)
	jmp	.LBB5_145
.LBB5_146:
	movl	seqno(%rip), %eax
	subl	92(%r15), %eax
	js	.LBB5_148
# %bb.147:
	subl	96(%r15), %eax
	addl	$1, %eax
	testl	%eax, %eax
	jle	.LBB5_149
.LBB5_148:
	orb	$2, 82(%r15)
.LBB5_149:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_55:
	movq	inseg+8(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB5_56
# %bb.57:
	subl	%eax, %edx
	cmpl	$65535, %edx            # imm = 0xFFFF
	jae	.LBB5_58
# %bb.59:
	movzwl	16(%rdi), %ecx
	movzwl	%dx, %eax
	cmpl	%ecx, %eax
	ja	.LBB5_60
# %bb.61:
	subw	%dx, inseg+16(%rip)
	movzwl	18(%rdi), %esi
	cmpl	%esi, %eax
	jbe	.LBB5_64
# %bb.62:                               # %.preheader5
	subl	%edx, %ecx
	.p2align	4, 0x90
.LBB5_63:                               # =>This Inner Loop Header: Depth=1
	subl	%esi, %eax
	movw	%cx, 16(%rdi)
	movw	$0, 18(%rdi)
	movq	(%rdi), %rdi
	movzwl	18(%rdi), %esi
	movzwl	%ax, %eax
	cmpl	%esi, %eax
	ja	.LBB5_63
.LBB5_64:
	movl	%eax, %esi
	callq	pbuf_remove_header
	movl	92(%r15), %edx
	movl	%edx, seqno(%rip)
	movq	inseg+24(%rip), %rax
	movl	%edx, 4(%rax)
	movl	%edx, %eax
.LBB5_65:
	leal	1(%rax), %r8d
	movl	%r8d, %esi
	subl	%edx, %esi
	subl	96(%r15), %esi
	testl	%esi, %esi
	jle	.LBB5_66
.LBB5_145:
	movq	%r15, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	tcp_send_empty_ack      # TAILCALL
.LBB5_66:
	cmpl	%edx, %eax
	jne	.LBB5_116
# %bb.67:
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
	jae	.LBB5_78
# %bb.68:
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	testb	$1, %al
	je	.LBB5_70
# %bb.69:
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
.LBB5_70:
	movl	96(%r15), %eax
	cmpl	$65536, %eax            # imm = 0x10000
	jae	.LBB5_71
# %bb.74:
	movw	%ax, inseg+16(%rip)
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movzwl	inseg+16(%rip), %ecx
	testb	$2, %al
	je	.LBB5_76
# %bb.75:
	addl	$-1, %ecx
	movw	%cx, inseg+16(%rip)
.LBB5_76:
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
	cmpl	%ecx, %eax
	jne	.LBB5_77
.LBB5_78:
	cmpq	$0, 200(%r15)
	je	.LBB5_85
# %bb.79:
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movq	200(%r15), %r14
	testb	$1, %al
	jne	.LBB5_84
# %bb.80:
	testq	%r14, %r14
	jne	.LBB5_87
.LBB5_81:
	xorl	%r14d, %r14d
	jmp	.LBB5_82
	.p2align	4, 0x90
.LBB5_84:                               # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	je	.LBB5_85
# %bb.83:                               #   in Loop: Header=BB5_84 Depth=1
	movq	(%r14), %rax
	movq	%rax, 200(%r15)
	movq	%r14, %rdi
	callq	tcp_seg_free
	movq	200(%r15), %r14
	jmp	.LBB5_84
.LBB5_91:                               #   in Loop: Header=BB5_87 Depth=1
	movq	(%r14), %rbx
	movq	%r14, %rdi
	callq	tcp_seg_free
	movq	%rbx, %r14
	testq	%rbx, %rbx
	je	.LBB5_81
.LBB5_87:                               # =>This Inner Loop Header: Depth=1
	movl	seqno(%rip), %eax
	movzwl	tcplen(%rip), %edx
	addl	%eax, %edx
	movq	24(%r14), %rsi
	movl	4(%rsi), %ecx
	movzwl	16(%r14), %edi
	subl	%ecx, %edx
	cmpl	%edi, %edx
	js	.LBB5_92
# %bb.88:                               #   in Loop: Header=BB5_87 Depth=1
	movzwl	12(%rsi), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	testb	$1, %al
	je	.LBB5_91
# %bb.89:                               #   in Loop: Header=BB5_87 Depth=1
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	testb	$2, %al
	jne	.LBB5_91
# %bb.90:                               #   in Loop: Header=BB5_87 Depth=1
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
	jmp	.LBB5_91
.LBB5_116:
	leaq	200(%r15), %r12
	movq	200(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB5_144
# %bb.117:                              # %.preheader3
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB5_118:                              # =>This Inner Loop Header: Depth=1
	testq	%rdi, %rdi
	je	.LBB5_145
# %bb.119:                              #   in Loop: Header=BB5_118 Depth=1
	movq	%rdi, %r14
	movq	24(%rdi), %rdx
	movl	4(%rdx), %edi
	movl	%eax, %esi
	subl	%edi, %esi
	je	.LBB5_120
# %bb.123:                              #   in Loop: Header=BB5_118 Depth=1
	testq	%rbx, %rbx
	je	.LBB5_124
# %bb.128:                              #   in Loop: Header=BB5_118 Depth=1
	movq	24(%rbx), %rcx
	movl	4(%rcx), %ecx
	notl	%ecx
	addl	%eax, %ecx
	js	.LBB5_134
# %bb.129:                              #   in Loop: Header=BB5_118 Depth=1
	movl	%r8d, %ecx
	subl	%edi, %ecx
	testl	%ecx, %ecx
	jg	.LBB5_134
	jmp	.LBB5_130
.LBB5_124:                              #   in Loop: Header=BB5_118 Depth=1
	cmpl	%edi, %eax
	js	.LBB5_125
.LBB5_134:                              #   in Loop: Header=BB5_118 Depth=1
	movq	(%r14), %rdi
	movq	%r14, %rbx
	testl	%esi, %esi
	jle	.LBB5_118
# %bb.135:                              #   in Loop: Header=BB5_118 Depth=1
	movq	%r14, %rbx
	testq	%rdi, %rdi
	jne	.LBB5_118
# %bb.136:
	movzwl	12(%rdx), %edi
	callq	lwip_htons
	testb	$1, %al
	jne	.LBB5_145
# %bb.137:
	movl	$inseg, %edi
	callq	tcp_seg_copy
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB5_145
# %bb.138:
	movq	24(%r14), %rax
	movl	4(%rax), %ecx
	movzwl	16(%r14), %edx
	addl	%ecx, %edx
	movl	seqno(%rip), %eax
	subl	%eax, %edx
	testl	%edx, %edx
	jle	.LBB5_140
# %bb.139:
	subl	%ecx, %eax
	movw	%ax, 16(%r14)
	movq	8(%r14), %rdi
	movzwl	%ax, %esi
	callq	pbuf_realloc
	movl	seqno(%rip), %eax
.LBB5_140:
	movzwl	tcplen(%rip), %ecx
	addl	%eax, %ecx
	subl	92(%r15), %ecx
	subl	96(%r15), %ecx
	testl	%ecx, %ecx
	jle	.LBB5_145
# %bb.141:
	movq	(%r14), %rax
	movq	24(%rax), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movq	(%r14), %rcx
	testb	$1, %al
	je	.LBB5_143
# %bb.142:
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
.LBB5_143:
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
	cmpl	%ecx, %eax
	je	.LBB5_145
.LBB5_77:
	movl	$.L.str.32, %edi
	jmp	.LBB5_2
.LBB5_144:
	movl	$inseg, %edi
	callq	tcp_seg_copy
	movq	%rax, (%r12)
	jmp	.LBB5_145
.LBB5_120:
	movzwl	inseg+16(%rip), %eax
	cmpw	16(%r14), %ax
	jbe	.LBB5_145
# %bb.121:
	movl	$inseg, %edi
	callq	tcp_seg_copy
	testq	%rax, %rax
	je	.LBB5_145
# %bb.122:
	testq	%rbx, %rbx
	cmovneq	%rbx, %r12
	jmp	.LBB5_126
.LBB5_92:
	testl	%edx, %edx
	jle	.LBB5_82
# %bb.93:
	subl	%eax, %ecx
	movw	%cx, inseg+16(%rip)
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	movzwl	inseg+16(%rip), %ecx
	testb	$2, %al
	je	.LBB5_95
# %bb.94:
	addl	$-1, %ecx
	movw	%cx, inseg+16(%rip)
.LBB5_95:
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
	movzwl	%bx, %eax
	addl	seqno(%rip), %eax
	movw	%bx, tcplen(%rip)
	movq	24(%r14), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB5_96
.LBB5_82:
	movq	%r14, 200(%r15)
.LBB5_85:
	movzwl	tcplen(%rip), %ecx
	movl	seqno(%rip), %eax
	addl	%ecx, %eax
	movl	%eax, 92(%r15)
	movl	96(%r15), %eax
	subl	%ecx, %eax
	jb	.LBB5_86
# %bb.97:
	movl	%eax, 96(%r15)
	movq	%r15, %rdi
	callq	tcp_update_rcv_ann_wnd
	movq	inseg+8(%rip), %rax
	cmpw	$0, 16(%rax)
	je	.LBB5_99
# %bb.98:
	movq	%rax, recv_data(%rip)
	movq	$0, inseg+8(%rip)
.LBB5_99:
	movq	inseg+24(%rip), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	testb	$1, %al
	je	.LBB5_101
# %bb.100:
	orb	$32, recv_flags(%rip)
	jmp	.LBB5_101
	.p2align	4, 0x90
.LBB5_113:                              #   in Loop: Header=BB5_101 Depth=1
	movq	(%r14), %rax
	movq	%rax, 200(%r15)
	movq	%r14, %rdi
	callq	tcp_seg_free
.LBB5_101:                              # =>This Inner Loop Header: Depth=1
	movq	200(%r15), %r14
	testq	%r14, %r14
	je	.LBB5_114
# %bb.102:                              #   in Loop: Header=BB5_101 Depth=1
	movq	24(%r14), %rax
	movl	4(%rax), %ecx
	cmpl	92(%r15), %ecx
	jne	.LBB5_114
# %bb.103:                              #   in Loop: Header=BB5_101 Depth=1
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
	cmpl	%ebx, %r12d
	jb	.LBB5_104
# %bb.105:                              #   in Loop: Header=BB5_101 Depth=1
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
	je	.LBB5_110
# %bb.106:                              #   in Loop: Header=BB5_101 Depth=1
	movq	recv_data(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB5_108
# %bb.107:                              #   in Loop: Header=BB5_101 Depth=1
	callq	pbuf_cat
	jmp	.LBB5_109
.LBB5_108:                              #   in Loop: Header=BB5_101 Depth=1
	movq	%rsi, recv_data(%rip)
.LBB5_109:                              #   in Loop: Header=BB5_101 Depth=1
	movq	$0, 8(%r14)
.LBB5_110:                              #   in Loop: Header=BB5_101 Depth=1
	movq	24(%r14), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	testb	$1, %al
	je	.LBB5_113
# %bb.111:                              #   in Loop: Header=BB5_101 Depth=1
	orb	$32, recv_flags(%rip)
	cmpl	$4, 72(%r15)
	jne	.LBB5_113
# %bb.112:                              #   in Loop: Header=BB5_101 Depth=1
	movl	$7, 72(%r15)
	jmp	.LBB5_113
.LBB5_114:
	movzwl	82(%r15), %eax
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%eax, %edx
	andl	$-4, %edx
	orl	$2, %edx
	testb	$1, %al
	cmovel	%ecx, %edx
	movw	%dx, 82(%r15)
	cmpq	$0, ip_data+24(%rip)
	je	.LBB5_149
# %bb.115:
	movl	$ip_data+36, %edi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	nd6_reachability_hint   # TAILCALL
.LBB5_130:
	movl	$inseg, %edi
	callq	tcp_seg_copy
	testq	%rax, %rax
	je	.LBB5_145
# %bb.131:
	movq	%rax, %r12
	movq	24(%rbx), %rax
	movl	4(%rax), %eax
	movzwl	16(%rbx), %edx
	addl	%eax, %edx
	movl	seqno(%rip), %ecx
	subl	%ecx, %edx
	testl	%edx, %edx
	jle	.LBB5_133
# %bb.132:
	subl	%eax, %ecx
	movw	%cx, 16(%rbx)
	movq	8(%rbx), %rdi
	movzwl	%cx, %esi
	callq	pbuf_realloc
.LBB5_133:
	movq	%r12, (%rbx)
	movq	%r12, %rdi
	jmp	.LBB5_127
.LBB5_125:
	movl	$inseg, %edi
	callq	tcp_seg_copy
	testq	%rax, %rax
	je	.LBB5_145
.LBB5_126:
	movq	%rax, (%r12)
	movq	%rax, %rdi
.LBB5_127:
	movq	%r14, %rsi
	callq	tcp_oos_insert_segment
	jmp	.LBB5_145
.LBB5_1:
	movl	$.L.str.24, %edi
	jmp	.LBB5_2
.LBB5_4:
	movl	$.L.str.25, %edi
	jmp	.LBB5_2
.LBB5_104:
	movl	$.L.str.35, %edi
.LBB5_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB5_56:
	movl	$.L.str.28, %edi
	jmp	.LBB5_2
.LBB5_58:
	movl	$.L.str.29, %edi
	jmp	.LBB5_2
.LBB5_60:
	movl	$.L.str.30, %edi
	jmp	.LBB5_2
.LBB5_86:
	movl	$.L.str.34, %edi
	jmp	.LBB5_2
.LBB5_71:
	movl	$.L.str.31, %edi
	jmp	.LBB5_2
.LBB5_96:
	movl	$.L.str.33, %edi
	jmp	.LBB5_2
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
	testq	%rsi, %rsi
	je	.LBB6_11
# %bb.1:
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	jmp	.LBB6_2
	.p2align	4, 0x90
.LBB6_10:                               #   in Loop: Header=BB6_2 Depth=1
	testq	%r12, %r12
	je	.LBB6_11
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movq	%r12, %r13
	movq	24(%r12), %rax
	movl	4(%rax), %edi
	callq	lwip_htonl
	movl	%eax, %r12d
	movzwl	16(%r13), %ebx
	movq	24(%r13), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
	andl	$3, %eax
	addl	%r12d, %ebx
	subl	ackno(%rip), %ebx
	cmpw	$1, %ax
	sbbl	$-1, %ebx
	testl	%ebx, %ebx
	jg	.LBB6_12
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=1
	movq	(%r13), %r12
	movq	8(%r13), %rdi
	callq	pbuf_clen
                                        # kill: def $ax killed $ax def $eax
	movzwl	172(%r15), %ecx
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
	je	.LBB6_10
# %bb.7:                                #   in Loop: Header=BB6_2 Depth=1
	testq	%r14, %r14
	jne	.LBB6_10
# %bb.8:                                #   in Loop: Header=BB6_2 Depth=1
	testq	%r12, %r12
	jne	.LBB6_10
# %bb.9:
	movl	$.L.str.37, %edi
	jmp	.LBB6_5
.LBB6_11:
	xorl	%r13d, %r13d
.LBB6_12:
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
	testq	%rdi, %rdi
	je	.LBB7_13
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	24(%rdi), %rax
	movzwl	12(%rax), %edi
	callq	lwip_htons
	testb	$1, %al
	jne	.LBB7_8
# %bb.2:
	testq	%r12, %r12
	jne	.LBB7_5
	jmp	.LBB7_11
	.p2align	4, 0x90
.LBB7_4:                                #   in Loop: Header=BB7_5 Depth=1
	movq	(%r12), %rbx
	movq	%r12, %rdi
	callq	tcp_seg_free
	movq	%rbx, %r12
	testq	%rbx, %rbx
	je	.LBB7_11
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
	movl	seqno(%rip), %eax
	movzwl	16(%r14), %edx
	addl	%eax, %edx
	movq	24(%r12), %rsi
	movl	4(%rsi), %ecx
	movzwl	16(%r12), %edi
	subl	%ecx, %edx
	cmpl	%edi, %edx
	js	.LBB7_9
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	movzwl	12(%rsi), %edi
	callq	lwip_htons
                                        # kill: def $ax killed $ax def $eax
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
	jmp	.LBB7_4
.LBB7_8:
	movq	%r12, %rdi
	callq	tcp_segs_free
.LBB7_11:
	xorl	%r12d, %r12d
.LBB7_12:
	movq	%r12, (%r14)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_9:
	testl	%edx, %edx
	jle	.LBB7_12
# %bb.10:
	subl	%eax, %ecx
	movw	%cx, 16(%r14)
	movq	8(%r14), %rdi
	movzwl	%cx, %esi
	callq	pbuf_realloc
	jmp	.LBB7_12
.LBB7_13:
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
