	.text
	.file	"dns.c"
	.globl	dns_init                # -- Begin function dns_init
	.p2align	4, 0x90
	.type	dns_init,@function
dns_init:                               # @dns_init
# %bb.0:
	retq
.Lfunc_end0:
	.size	dns_init, .Lfunc_end0-dns_init
                                        # -- End function
	.globl	dns_setserver           # -- Begin function dns_setserver
	.p2align	4, 0x90
	.type	dns_setserver,@function
dns_setserver:                          # @dns_setserver
# %bb.0:
	cmpb	$1, %dil
	ja	.LBB1_3
# %bb.1:
	movzbl	%dil, %eax
	leaq	(%rax,%rax,2), %rax
	leaq	dns_servers(,%rax,8), %rax
	testq	%rsi, %rsi
	je	.LBB1_2
# %bb.4:
	movq	16(%rsi), %rcx
	movq	%rcx, 16(%rax)
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rax)
	retq
.LBB1_2:
	movq	ip_addr_any+16(%rip), %rcx
	movq	%rcx, 16(%rax)
	movups	ip_addr_any(%rip), %xmm0
	movups	%xmm0, (%rax)
.LBB1_3:
	retq
.Lfunc_end1:
	.size	dns_setserver, .Lfunc_end1-dns_setserver
                                        # -- End function
	.globl	dns_getserver           # -- Begin function dns_getserver
	.p2align	4, 0x90
	.type	dns_getserver,@function
dns_getserver:                          # @dns_getserver
# %bb.0:
	cmpb	$2, %dil
	movl	%edi, %eax
	leaq	(%rax,%rax,2), %rax
	leaq	dns_servers(,%rax,8), %rcx
	movl	$ip_addr_any, %eax
	cmovbq	%rcx, %rax
	retq
.Lfunc_end2:
	.size	dns_getserver, .Lfunc_end2-dns_getserver
                                        # -- End function
	.globl	dns_tmr                 # -- Begin function dns_tmr
	.p2align	4, 0x90
	.type	dns_tmr,@function
dns_tmr:                                # @dns_tmr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%edi, %edi
	callq	dns_check_entry
	movl	$1, %edi
	callq	dns_check_entry
	movl	$2, %edi
	callq	dns_check_entry
	movl	$3, %edi
	callq	dns_check_entry
	movl	$4, %edi
	callq	dns_check_entry
	movl	$5, %edi
	callq	dns_check_entry
	movl	$6, %edi
	callq	dns_check_entry
	movl	$7, %edi
	callq	dns_check_entry
	movl	$8, %edi
	callq	dns_check_entry
	movl	$9, %edi
	callq	dns_check_entry
	movl	$10, %edi
	callq	dns_check_entry
	movl	$11, %edi
	callq	dns_check_entry
	movl	$12, %edi
	callq	dns_check_entry
	movl	$13, %edi
	callq	dns_check_entry
	movl	$14, %edi
	callq	dns_check_entry
	movl	$15, %edi
	callq	dns_check_entry
	movl	$16, %edi
	callq	dns_check_entry
	movl	$17, %edi
	callq	dns_check_entry
	movl	$18, %edi
	callq	dns_check_entry
	movl	$19, %edi
	callq	dns_check_entry
	movl	$20, %edi
	callq	dns_check_entry
	movl	$21, %edi
	callq	dns_check_entry
	movl	$22, %edi
	callq	dns_check_entry
	movl	$23, %edi
	callq	dns_check_entry
	movl	$24, %edi
	callq	dns_check_entry
	movl	$25, %edi
	callq	dns_check_entry
	movl	$26, %edi
	callq	dns_check_entry
	movl	$27, %edi
	callq	dns_check_entry
	movl	$28, %edi
	callq	dns_check_entry
	movl	$29, %edi
	callq	dns_check_entry
	movl	$30, %edi
	callq	dns_check_entry
	movl	$31, %edi
	popq	%rbp
	jmp	dns_check_entry         # TAILCALL
.Lfunc_end3:
	.size	dns_tmr, .Lfunc_end3-dns_tmr
                                        # -- End function
	.globl	dns_gethostbyname       # -- Begin function dns_gethostbyname
	.p2align	4, 0x90
	.type	dns_gethostbyname,@function
dns_gethostbyname:                      # @dns_gethostbyname
# %bb.0:
	movl	$2, %r8d
	jmp	dns_gethostbyname_addrtype # TAILCALL
.Lfunc_end4:
	.size	dns_gethostbyname, .Lfunc_end4-dns_gethostbyname
                                        # -- End function
	.globl	dns_gethostbyname_addrtype # -- Begin function dns_gethostbyname_addrtype
	.p2align	4, 0x90
	.type	dns_gethostbyname_addrtype,@function
dns_gethostbyname_addrtype:             # @dns_gethostbyname_addrtype
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movb	$-16, %r13b
	testq	%rdi, %rdi
	je	.LBB5_55
# %bb.1:
	movq	%rsi, %r14
	testq	%rsi, %rsi
	je	.LBB5_55
# %bb.2:
	movq	%rdi, %r15
	cmpb	$0, (%rdi)
	je	.LBB5_55
# %bb.3:
	movl	%r8d, %r12d
	movq	%rcx, %rbx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, -80(%rbp)         # 8-byte Spill
	cmpq	$255, %rax
	ja	.LBB5_55
# %bb.4:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	ipaddr_aton
	testl	%eax, %eax
	je	.LBB5_11
# %bb.5:
	movb	20(%r14), %al
	testb	%r12b, %r12b
	je	.LBB5_8
# %bb.6:
	cmpb	$6, %al
	je	.LBB5_7
.LBB5_8:
	cmpb	$1, %r12b
	je	.LBB5_11
# %bb.9:
	testb	%al, %al
	je	.LBB5_7
.LBB5_11:
	movzbl	%r12b, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	dns_lookup
	testb	%al, %al
	je	.LBB5_7
# %bb.12:
	movl	%r12d, %eax
	andb	$-2, %al
	cmpb	$2, %al
	jne	.LBB5_14
# %bb.13:
	xorl	%edx, %edx
	cmpb	$2, %r12b
	sete	%dl
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	dns_lookup
	testb	%al, %al
	je	.LBB5_7
.LBB5_14:
	cmpb	$6, dns_servers+20(%rip)
	movl	dns_servers(%rip), %eax
	jne	.LBB5_18
# %bb.15:
	orl	dns_servers+4(%rip), %eax
	orl	dns_servers+8(%rip), %eax
	orl	dns_servers+12(%rip), %eax
	jne	.LBB5_19
.LBB5_16:
	movb	$-6, %r13b
	jmp	.LBB5_55
.LBB5_7:
	xorl	%r13d, %r13d
.LBB5_55:
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_18:
	testl	%eax, %eax
	je	.LBB5_16
.LBB5_19:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB5_21
	.p2align	4, 0x90
.LBB5_20:                               #   in Loop: Header=BB5_21 Depth=1
	addq	$1, %r14
	cmpq	$32, %r14
	jae	.LBB5_32
.LBB5_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_25 Depth 2
	imulq	$296, %r14, %rbx        # imm = 0x128
	cmpb	$2, dns_table+30(%rbx)
	jne	.LBB5_20
# %bb.22:                               #   in Loop: Header=BB5_21 Depth=1
	leaq	dns_table+36(%rbx), %rsi
	movl	$256, %edx              # imm = 0x100
	movq	%r15, %rdi
	callq	lwip_strnicmp
	testl	%eax, %eax
	jne	.LBB5_20
# %bb.23:                               #   in Loop: Header=BB5_21 Depth=1
	cmpb	%r12b, dns_table+292(%rbx)
	jne	.LBB5_20
# %bb.24:                               # %.preheader
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	$dns_requests, %ecx
	xorl	%eax, %eax
.LBB5_25:                               #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, (%rcx)
	je	.LBB5_49
# %bb.26:                               #   in Loop: Header=BB5_25 Depth=2
	cmpq	$0, 24(%rcx)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	je	.LBB5_50
# %bb.27:                               #   in Loop: Header=BB5_25 Depth=2
	cmpq	$0, 48(%rcx)
	je	.LBB5_51
# %bb.28:                               #   in Loop: Header=BB5_25 Depth=2
	cmpq	$0, 72(%rcx)
	je	.LBB5_52
# %bb.29:                               #   in Loop: Header=BB5_25 Depth=2
	addq	$4, %rax
	addq	$96, %rcx
	cmpq	$32, %rax
	jb	.LBB5_25
	jmp	.LBB5_20
.LBB5_32:
	movb	$32, %sil
	movl	$dns_table-296, %r14d
	movb	dns_seqno(%rip), %r8b
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB5_35
.LBB5_33:                               #   in Loop: Header=BB5_35 Depth=1
	movl	%r8d, %eax
	subb	626(%r14), %al
	leal	1(%rcx), %edi
	cmpb	%dl, %al
	movzbl	%al, %eax
	movzbl	%dl, %edx
	cmoval	%eax, %edx
	movzbl	%sil, %eax
	movzbl	%dil, %esi
	cmovbel	%eax, %esi
.LBB5_34:                               #   in Loop: Header=BB5_35 Depth=1
	addq	$2, %rcx
	addq	$592, %r14              # imm = 0x250
	cmpq	$32, %rcx
	jae	.LBB5_56
.LBB5_35:                               # =>This Inner Loop Header: Depth=1
	movzbl	326(%r14), %ebx
	cmpb	$3, %bl
	je	.LBB5_37
# %bb.36:                               #   in Loop: Header=BB5_35 Depth=1
	testb	%bl, %bl
	jne	.LBB5_38
	jmp	.LBB5_41
.LBB5_37:                               #   in Loop: Header=BB5_35 Depth=1
	movl	%r8d, %eax
	subb	330(%r14), %al
	cmpb	%dl, %al
	movzbl	%al, %eax
	movzbl	%dl, %edx
	cmoval	%eax, %edx
	movzbl	%sil, %esi
	cmoval	%ecx, %esi
.LBB5_38:                               #   in Loop: Header=BB5_35 Depth=1
	movzbl	622(%r14), %ebx
	cmpb	$3, %bl
	je	.LBB5_33
# %bb.39:                               #   in Loop: Header=BB5_35 Depth=1
	testb	%bl, %bl
	jne	.LBB5_34
# %bb.40:                               # %split10
	addq	$1, %rcx
.LBB5_41:
	imulq	$296, %rcx, %rax        # imm = 0x128
	leaq	dns_table(%rax), %r14
.LBB5_42:
	movl	%ecx, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
.LBB5_43:
	movl	$dns_requests, %eax
	xorl	%ecx, %ecx
.LBB5_44:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rax)
	je	.LBB5_63
# %bb.45:                               #   in Loop: Header=BB5_44 Depth=1
	cmpq	$0, 24(%rax)
	je	.LBB5_60
# %bb.46:                               #   in Loop: Header=BB5_44 Depth=1
	cmpq	$0, 48(%rax)
	je	.LBB5_61
# %bb.47:                               #   in Loop: Header=BB5_44 Depth=1
	cmpq	$0, 72(%rax)
	je	.LBB5_62
# %bb.48:                               #   in Loop: Header=BB5_44 Depth=1
	addq	$4, %rcx
	addq	$96, %rax
	movb	$-1, %r13b
	cmpq	$32, %rcx
	jb	.LBB5_44
	jmp	.LBB5_55
.LBB5_49:
	movq	-56(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB5_53
.LBB5_50:                               # %.split23split_crit_edge
	movq	%rax, %rcx
	orq	$1, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	dns_requests(,%rcx,8), %rcx
	addq	$1, %rax
	jmp	.LBB5_53
.LBB5_51:                               # %split23splitsplit
	movq	%rax, %rcx
	orq	$2, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	dns_requests(,%rcx,8), %rcx
	addq	$2, %rax
	jmp	.LBB5_53
.LBB5_52:                               # %.split23_crit_edge
	movq	%rax, %rcx
	orq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	dns_requests(,%rcx,8), %rcx
	addq	$3, %rax
.LBB5_53:
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, (%rcx)
	shlq	$3, %rax
	movq	%rdx, dns_requests+8(%rax,%rax,2)
	movb	%r14b, dns_requests+16(%rax,%rax,2)
	movb	%r12b, dns_requests+17(%rax,%rax,2)
.LBB5_54:
	movb	$-5, %r13b
	jmp	.LBB5_55
.LBB5_56:
	cmpb	$32, %cl
	jne	.LBB5_42
# %bb.57:
	movb	$-1, %r13b
	cmpb	$31, %sil
	movq	-56(%rbp), %rdx         # 8-byte Reload
	ja	.LBB5_55
# %bb.58:
	movzbl	%sil, %eax
	imulq	$296, %rax, %rcx        # imm = 0x128
	cmpb	$3, dns_table+30(%rcx)
	jne	.LBB5_55
# %bb.59:
	leaq	dns_table(%rcx), %r14
	jmp	.LBB5_43
.LBB5_60:                               # %.splitsplit_crit_edge
	movq	%rcx, %rax
	orq	$1, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	dns_requests(,%rax,8), %rax
	addq	$1, %rcx
	jmp	.LBB5_63
.LBB5_61:                               # %splitsplitsplit
	movq	%rcx, %rax
	orq	$2, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	dns_requests(,%rax,8), %rax
	addq	$2, %rcx
	jmp	.LBB5_63
.LBB5_62:                               # %.split_crit_edge
	movq	%rcx, %rax
	orq	$3, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	dns_requests(,%rax,8), %rax
	addq	$3, %rcx
.LBB5_63:
	shlq	$3, %rcx
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movb	%sil, dns_requests+16(%rcx,%rcx,2)
	movb	$1, 30(%r14)
	movb	%r8b, 34(%r14)
	movb	%r12b, 292(%r14)
	movb	%r12b, dns_requests+17(%rcx,%rcx,2)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, (%rax)
	movq	%rdx, dns_requests+8(%rcx,%rcx,2)
	movq	-80(%rbp), %rax         # 8-byte Reload
	cmpq	$255, %rax
	movl	$255, %ebx
	cmovbq	%rax, %rbx
	leaq	36(%r14), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 36(%r14,%rbx)
	cmpq	$0, dns_pcbs(%rip)
	je	.LBB5_96
# %bb.64:
	cmpq	$0, dns_pcbs+8(%rip)
	je	.LBB5_97
# %bb.65:
	cmpq	$0, dns_pcbs+16(%rip)
	je	.LBB5_98
# %bb.66:
	cmpq	$0, dns_pcbs+24(%rip)
	je	.LBB5_99
# %bb.67:
	cmpq	$0, dns_pcbs+32(%rip)
	je	.LBB5_100
# %bb.68:
	cmpq	$0, dns_pcbs+40(%rip)
	je	.LBB5_101
# %bb.69:
	cmpq	$0, dns_pcbs+48(%rip)
	je	.LBB5_102
# %bb.70:
	cmpq	$0, dns_pcbs+56(%rip)
	je	.LBB5_103
# %bb.71:
	cmpq	$0, dns_pcbs+64(%rip)
	je	.LBB5_104
# %bb.72:
	cmpq	$0, dns_pcbs+72(%rip)
	je	.LBB5_105
# %bb.73:
	cmpq	$0, dns_pcbs+80(%rip)
	je	.LBB5_106
# %bb.74:
	cmpq	$0, dns_pcbs+88(%rip)
	je	.LBB5_107
# %bb.75:
	cmpq	$0, dns_pcbs+96(%rip)
	je	.LBB5_108
# %bb.76:
	cmpq	$0, dns_pcbs+104(%rip)
	je	.LBB5_109
# %bb.77:
	cmpq	$0, dns_pcbs+112(%rip)
	je	.LBB5_110
# %bb.78:
	cmpq	$0, dns_pcbs+120(%rip)
	je	.LBB5_111
# %bb.79:
	cmpq	$0, dns_pcbs+128(%rip)
	je	.LBB5_112
# %bb.80:
	cmpq	$0, dns_pcbs+136(%rip)
	je	.LBB5_113
# %bb.81:
	cmpq	$0, dns_pcbs+144(%rip)
	je	.LBB5_114
# %bb.82:
	cmpq	$0, dns_pcbs+152(%rip)
	je	.LBB5_115
# %bb.83:
	cmpq	$0, dns_pcbs+160(%rip)
	je	.LBB5_116
# %bb.84:
	cmpq	$0, dns_pcbs+168(%rip)
	je	.LBB5_117
# %bb.85:
	cmpq	$0, dns_pcbs+176(%rip)
	je	.LBB5_118
# %bb.86:
	cmpq	$0, dns_pcbs+184(%rip)
	je	.LBB5_119
# %bb.87:
	cmpq	$0, dns_pcbs+192(%rip)
	je	.LBB5_120
# %bb.88:
	cmpq	$0, dns_pcbs+200(%rip)
	je	.LBB5_121
# %bb.89:
	cmpq	$0, dns_pcbs+208(%rip)
	je	.LBB5_122
# %bb.90:
	cmpq	$0, dns_pcbs+216(%rip)
	je	.LBB5_123
# %bb.91:
	cmpq	$0, dns_pcbs+224(%rip)
	je	.LBB5_124
# %bb.92:
	cmpq	$0, dns_pcbs+232(%rip)
	je	.LBB5_125
# %bb.93:
	cmpq	$0, dns_pcbs+240(%rip)
	je	.LBB5_126
# %bb.94:
	cmpq	$0, dns_pcbs+248(%rip)
	movl	-56(%rbp), %esi         # 4-byte Reload
	jne	.LBB5_140
# %bb.95:
	movl	$31, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$31, %r13b
	jmp	.LBB5_127
.LBB5_96:
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB5_127
.LBB5_97:
	movl	$1, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$1, %r13b
	jmp	.LBB5_127
.LBB5_98:
	movl	$2, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$2, %r13b
	jmp	.LBB5_127
.LBB5_99:
	movl	$3, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$3, %r13b
	jmp	.LBB5_127
.LBB5_100:
	movl	$4, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$4, %r13b
	jmp	.LBB5_127
.LBB5_101:
	movl	$5, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$5, %r13b
	jmp	.LBB5_127
.LBB5_102:
	movl	$6, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$6, %r13b
	jmp	.LBB5_127
.LBB5_103:
	movl	$7, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$7, %r13b
	jmp	.LBB5_127
.LBB5_104:
	movl	$8, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$8, %r13b
	jmp	.LBB5_127
.LBB5_105:
	movl	$9, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$9, %r13b
	jmp	.LBB5_127
.LBB5_106:
	movl	$10, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$10, %r13b
	jmp	.LBB5_127
.LBB5_107:
	movl	$11, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$11, %r13b
	jmp	.LBB5_127
.LBB5_108:
	movl	$12, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$12, %r13b
	jmp	.LBB5_127
.LBB5_109:
	movl	$13, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$13, %r13b
	jmp	.LBB5_127
.LBB5_110:
	movl	$14, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$14, %r13b
	jmp	.LBB5_127
.LBB5_111:
	movl	$15, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$15, %r13b
	jmp	.LBB5_127
.LBB5_112:
	movl	$16, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$16, %r13b
	jmp	.LBB5_127
.LBB5_113:
	movl	$17, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$17, %r13b
	jmp	.LBB5_127
.LBB5_114:
	movl	$18, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$18, %r13b
	jmp	.LBB5_127
.LBB5_115:
	movl	$19, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$19, %r13b
	jmp	.LBB5_127
.LBB5_116:
	movl	$20, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$20, %r13b
	jmp	.LBB5_127
.LBB5_117:
	movl	$21, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$21, %r13b
	jmp	.LBB5_127
.LBB5_118:
	movl	$22, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$22, %r13b
	jmp	.LBB5_127
.LBB5_119:
	movl	$23, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$23, %r13b
	jmp	.LBB5_127
.LBB5_120:
	movl	$24, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$24, %r13b
	jmp	.LBB5_127
.LBB5_121:
	movl	$25, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$25, %r13b
	jmp	.LBB5_127
.LBB5_122:
	movl	$26, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$26, %r13b
	jmp	.LBB5_127
.LBB5_123:
	movl	$27, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$27, %r13b
	jmp	.LBB5_127
.LBB5_124:
	movl	$28, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$28, %r13b
	jmp	.LBB5_127
.LBB5_125:
	movl	$29, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$29, %r13b
	jmp	.LBB5_127
.LBB5_126:
	movl	$30, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$30, %r13b
.LBB5_127:
	movl	$46, %edi
	callq	udp_new_ip_type
	testq	%rax, %rax
	je	.LBB5_139
# %bb.128:
	movq	%rax, %r12
	jmp	.LBB5_130
.LBB5_132:                              #   in Loop: Header=BB5_130 Depth=1
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
	movl	%r11d, -60(%rbp)

	#NO_APP
	movl	-60(%rbp), %ebx
	testl	$64512, %ebx            # imm = 0xFC00
	je	.LBB5_134
.LBB5_129:                              #   in Loop: Header=BB5_130 Depth=1
	movzwl	%bx, %edx
	movl	$ip_addr_any_type, %esi
	movq	%r12, %rdi
	callq	udp_bind
	cmpb	$-8, %al
	jne	.LBB5_135
.LBB5_130:                              # =>This Inner Loop Header: Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB5_132
# %bb.131:                              #   in Loop: Header=BB5_130 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	ja	.LBB5_132
# %bb.133:                              #   in Loop: Header=BB5_130 Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movl	$uk_swrand_def, %edi
	callq	uk_swrand_randr_r
	movl	%eax, %ebx
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	%ebx, -60(%rbp)
	testl	$64512, %ebx            # imm = 0xFC00
	jne	.LBB5_129
.LBB5_134:                              #   in Loop: Header=BB5_130 Depth=1
	movb	$-8, %al
	cmpb	$-8, %al
	je	.LBB5_130
.LBB5_135:
	testb	%al, %al
	jne	.LBB5_138
# %bb.136:
	movl	$dns_recv, %esi
	movq	%r12, %rdi
	xorl	%edx, %edx
	callq	udp_recv
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r12, dns_pcbs(,%rax,8)
	movl	-56(%rbp), %esi         # 4-byte Reload
.LBB5_137:
	movb	%r13b, dns_last_pcb_idx(%rip)
	movb	%r13b, 35(%r14)
	addb	$1, dns_seqno(%rip)
	movzbl	%sil, %edi
	callq	dns_check_entry
	jmp	.LBB5_54
.LBB5_138:
	movq	%r12, %rdi
	callq	udp_remove
.LBB5_139:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	$0, dns_pcbs(,%rax,8)
	movl	-56(%rbp), %esi         # 4-byte Reload
.LBB5_140:
	movb	dns_last_pcb_idx(%rip), %r13b
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB5_141:                              # =>This Inner Loop Header: Depth=1
	addb	$1, %r13b
	cmpb	$31, %r13b
	movzbl	%r13b, %r13d
	cmoval	%eax, %r13d
	movzbl	%r13b, %edx
	cmpq	$0, dns_pcbs(,%rdx,8)
	jne	.LBB5_137
# %bb.142:                              #   in Loop: Header=BB5_141 Depth=1
	leal	1(%r13), %edx
	xorl	%r13d, %r13d
	cmpb	$31, %dl
	ja	.LBB5_144
# %bb.143:                              #   in Loop: Header=BB5_141 Depth=1
	movzbl	%dl, %r13d
.LBB5_144:                              #   in Loop: Header=BB5_141 Depth=1
	movzbl	%r13b, %edx
	cmpq	$0, dns_pcbs(,%rdx,8)
	jne	.LBB5_137
# %bb.145:                              #   in Loop: Header=BB5_141 Depth=1
	addb	$2, %cl
	cmpb	$32, %cl
	jb	.LBB5_141
# %bb.146:
	movb	$32, 35(%r14)
	movb	$0, 30(%r14)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movb	$-1, %r13b
	jmp	.LBB5_55
.Lfunc_end5:
	.size	dns_gethostbyname_addrtype, .Lfunc_end5-dns_gethostbyname_addrtype
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function dns_lookup
	.type	dns_lookup,@function
dns_lookup:                             # @dns_lookup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	$dns_table+36, %r13d
	xorl	%ebx, %ebx
	orb	$2, %r15b
	jmp	.LBB6_1
.LBB6_4:                                #   in Loop: Header=BB6_1 Depth=1
	cmpb	$3, %r15b
	je	.LBB6_8
	.p2align	4, 0x90
.LBB6_5:                                #   in Loop: Header=BB6_1 Depth=1
	addq	$1, %rbx
	addq	$296, %r13              # imm = 0x128
	cmpq	$32, %rbx
	jae	.LBB6_6
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	cmpb	$3, -6(%r13)
	jne	.LBB6_5
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movl	$256, %edx              # imm = 0x100
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	lwip_strnicmp
	testl	%eax, %eax
	jne	.LBB6_5
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movzbl	-12(%r13), %eax
	cmpb	$6, %al
	je	.LBB6_4
# %bb.7:                                #   in Loop: Header=BB6_1 Depth=1
	cmpb	$3, %r15b
	je	.LBB6_5
.LBB6_8:
	testq	%r14, %r14
	je	.LBB6_12
# %bb.9:
	movb	%al, 20(%r14)
	cmpb	$6, -12(%r13)
	movl	-32(%r13), %eax
	movl	%eax, (%r14)
	jne	.LBB6_11
# %bb.10:
	movl	-28(%r13), %eax
	movl	%eax, 4(%r14)
	movl	-24(%r13), %eax
	movl	%eax, 8(%r14)
	movl	-20(%r13), %eax
	movl	%eax, 12(%r14)
	movb	-16(%r13), %al
	movb	%al, 16(%r14)
	jmp	.LBB6_12
.LBB6_6:
	movb	$-16, %al
.LBB6_13:
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_11:
	movl	$0, 12(%r14)
	movq	$0, 4(%r14)
	movb	$0, 16(%r14)
.LBB6_12:
	xorl	%eax, %eax
	jmp	.LBB6_13
.Lfunc_end6:
	.size	dns_lookup, .Lfunc_end6-dns_lookup
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function dns_check_entry
	.type	dns_check_entry,@function
dns_check_entry:                        # @dns_check_entry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edi, %r14d
	cmpb	$32, %r14b
	jae	.LBB7_1
# %bb.3:
	movl	%r14d, %ebx
	imulq	$296, %rbx, %r13        # imm = 0x128
	movzbl	dns_table+30(%r13), %eax
	cmpq	$3, %rax
	ja	.LBB7_50
# %bb.4:
	leaq	dns_table+30(%r13), %r12
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_5:
	movl	$_intrstack_start, %esi
	movl	$_end, %edi
.LBB7_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_11 Depth 2
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%rsi, %rax
	jb	.LBB7_9
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%rdi, %rax
	jbe	.LBB7_8
.LBB7_9:                                #   in Loop: Header=BB7_6 Depth=1
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
.Ltmp2:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp2
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
.Ltmp3:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp3
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
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %ebx
	jmp	.LBB7_10
.LBB7_8:                                #   in Loop: Header=BB7_6 Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movl	$uk_swrand_def, %edi
	callq	uk_swrand_randr_r
	movl	%eax, %ebx
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$_end, %edi
	movl	$_intrstack_start, %esi
	movl	%ebx, -44(%rbp)
.LBB7_10:                               #   in Loop: Header=BB7_6 Depth=1
	movl	$dns_table+326, %eax
	xorl	%ecx, %ecx
	jmp	.LBB7_11
	.p2align	4, 0x90
.LBB7_15:                               #   in Loop: Header=BB7_11 Depth=2
	addq	$2, %rcx
	addq	$592, %rax              # imm = 0x250
	cmpq	$32, %rcx
	jae	.LBB7_16
.LBB7_11:                               #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$2, -296(%rax)
	jne	.LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=2
	cmpw	%bx, -298(%rax)
	je	.LBB7_6
.LBB7_13:                               #   in Loop: Header=BB7_11 Depth=2
	cmpb	$2, (%rax)
	jne	.LBB7_15
# %bb.14:                               #   in Loop: Header=BB7_11 Depth=2
	cmpw	%bx, -2(%rax)
	jne	.LBB7_15
	jmp	.LBB7_6
.LBB7_17:
	addb	$-1, dns_table+32(%r13)
	jne	.LBB7_49
# %bb.18:
	leaq	dns_table+32(%r13), %rax
	movb	dns_table+33(%r13), %cl
	addb	$1, %cl
	movb	%cl, dns_table+33(%r13)
	cmpb	$4, %cl
	jne	.LBB7_44
# %bb.19:
	movzbl	dns_table+31(%r13), %ecx
	leaq	1(%rcx), %rdx
	cmpl	$1, %edx
	ja	.LBB7_25
# %bb.20:
	leaq	(,%rdx,8), %rsi
	cmpb	$6, dns_servers+20(%rsi,%rsi,2)
	movl	dns_servers(%rsi,%rsi,2), %esi
	jne	.LBB7_42
# %bb.21:
	testl	%esi, %esi
	jne	.LBB7_43
# %bb.22:
	leaq	(%rdx,%rdx,2), %rdx
	cmpl	$0, dns_servers+4(,%rdx,8)
	jne	.LBB7_43
# %bb.23:
	cmpl	$0, dns_servers+8(,%rdx,8)
	jne	.LBB7_43
# %bb.24:
	cmpl	$0, dns_servers+12(,%rdx,8)
	jne	.LBB7_43
.LBB7_25:
	movq	%r12, -56(%rbp)         # 8-byte Spill
	leaq	dns_table+36(%r13), %r15
	movq	$-768, %r12             # imm = 0xFD00
	jmp	.LBB7_26
	.p2align	4, 0x90
.LBB7_29:                               #   in Loop: Header=BB7_26 Depth=1
	addq	$24, %r12
	je	.LBB7_30
.LBB7_26:                               # =>This Inner Loop Header: Depth=1
	movq	dns_requests+768(%r12), %rax
	testq	%rax, %rax
	je	.LBB7_29
# %bb.27:                               #   in Loop: Header=BB7_26 Depth=1
	cmpb	%r14b, dns_requests+784(%r12)
	jne	.LBB7_29
# %bb.28:                               #   in Loop: Header=BB7_26 Depth=1
	movq	dns_requests+776(%r12), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	*%rax
	movq	$0, dns_requests+768(%r12)
	jmp	.LBB7_29
.LBB7_46:
	movl	dns_table(%r13), %eax
	testl	%eax, %eax
	je	.LBB7_48
# %bb.47:
	leaq	dns_table(%r13), %rcx
	addl	$-1, %eax
	movl	%eax, (%rcx)
	jne	.LBB7_49
.LBB7_48:
	movb	$0, (%r12)
	jmp	.LBB7_49
.LBB7_16:
	movw	%bx, dns_table+28(%r13)
	movb	$2, (%r12)
	movw	$256, dns_table+31(%r13) # imm = 0x100
	movb	$0, dns_table+33(%r13)
	movzbl	%r14b, %edi
	callq	dns_send
.LBB7_49:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_44:
	movb	%cl, (%rax)
	jmp	.LBB7_45
.LBB7_30:
	leaq	dns_table+35(%r13), %r14
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB7_31
	.p2align	4, 0x90
.LBB7_37:                               #   in Loop: Header=BB7_31 Depth=1
	addq	$2, %rcx
	addq	$592, %rax              # imm = 0x250
	cmpq	$32, %rcx
	jae	.LBB7_38
.LBB7_31:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rax, %r13
	je	.LBB7_34
# %bb.32:                               #   in Loop: Header=BB7_31 Depth=1
	cmpb	$2, dns_table+30(%rax)
	jne	.LBB7_34
# %bb.33:                               #   in Loop: Header=BB7_31 Depth=1
	movzbl	dns_table+35(%rax), %edx
	cmpb	(%r14), %dl
	je	.LBB7_40
.LBB7_34:                               #   in Loop: Header=BB7_31 Depth=1
	movq	%rcx, %rdx
	orq	$1, %rdx
	cmpq	%rbx, %rdx
	je	.LBB7_37
# %bb.35:                               #   in Loop: Header=BB7_31 Depth=1
	cmpb	$2, dns_table+326(%rax)
	jne	.LBB7_37
# %bb.36:                               #   in Loop: Header=BB7_31 Depth=1
	movzbl	dns_table+331(%rax), %edx
	cmpb	(%r14), %dl
	jne	.LBB7_37
	jmp	.LBB7_40
.LBB7_38:
	movzbl	(%r14), %eax
	cmpq	$31, %rax
	ja	.LBB7_41
# %bb.39:
	movq	dns_pcbs(,%rax,8), %rdi
	callq	udp_remove
	movzbl	(%r14), %eax
	movq	$0, dns_pcbs(,%rax,8)
.LBB7_40:
	movb	$32, (%r14)
.LBB7_41:
	movb	$0, (%r15)
	jmp	.LBB7_49
.LBB7_42:
	testl	%esi, %esi
	je	.LBB7_25
.LBB7_43:
	leaq	dns_table+33(%r13), %rdx
	addb	$1, %cl
	movb	%cl, -2(%rdx)
	movb	$1, (%rax)
	movb	$0, (%rdx)
.LBB7_45:
	movzbl	%r14b, %edi
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	dns_send                # TAILCALL
.LBB7_1:
	movl	$.L.str, %edi
	jmp	.LBB7_2
.LBB7_50:
	movl	$.L.str.3, %edi
.LBB7_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end7:
	.size	dns_check_entry, .Lfunc_end7-dns_check_entry
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_49
	.quad	.LBB7_5
	.quad	.LBB7_17
	.quad	.LBB7_46
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
	je	.LBB8_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB8_2:
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
	movl	$uk_pr_crit.__str.4, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	uk_pr_crit, .Lfunc_end8-uk_pr_crit
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function dns_send
	.type	dns_send,@function
dns_send:                               # @dns_send
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	%edi, %r15d
	imulq	$296, %r15, %r13        # imm = 0x128
	movzbl	dns_table+31(%r13), %eax
	cmpq	$2, %rax
	jae	.LBB9_38
# %bb.1:
	movl	%edi, %r12d
	leaq	(,%rax,8), %rcx
	cmpb	$6, dns_servers+20(%rcx,%rcx,2)
	movl	dns_servers(%rcx,%rcx,2), %ecx
	jne	.LBB9_8
# %bb.2:
	testl	%ecx, %ecx
	jne	.LBB9_6
# %bb.3:
	leaq	(%rax,%rax,2), %rax
	cmpl	$0, dns_servers+4(,%rax,8)
	jne	.LBB9_6
# %bb.4:
	cmpl	$0, dns_servers+8(,%rax,8)
	jne	.LBB9_6
# %bb.5:
	cmpl	$0, dns_servers+12(,%rax,8)
	jne	.LBB9_6
.LBB9_9:
	leaq	dns_table+36(%r13), %r14
	movq	$-768, %rbx             # imm = 0xFD00
	jmp	.LBB9_10
	.p2align	4, 0x90
.LBB9_13:                               #   in Loop: Header=BB9_10 Depth=1
	addq	$24, %rbx
	je	.LBB9_14
.LBB9_10:                               # =>This Inner Loop Header: Depth=1
	movq	dns_requests+768(%rbx), %rax
	testq	%rax, %rax
	je	.LBB9_13
# %bb.11:                               #   in Loop: Header=BB9_10 Depth=1
	cmpb	%r12b, dns_requests+784(%rbx)
	jne	.LBB9_13
# %bb.12:                               #   in Loop: Header=BB9_10 Depth=1
	movq	dns_requests+776(%rbx), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	*%rax
	movq	$0, dns_requests+768(%rbx)
	jmp	.LBB9_13
.LBB9_8:
	testl	%ecx, %ecx
	je	.LBB9_9
.LBB9_6:
	leaq	dns_table+36(%r13), %rdi
	callq	strlen
	addl	$18, %eax
	movzwl	%ax, %esi
	movl	$74, %edi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	testq	%rax, %rax
	je	.LBB9_7
# %bb.26:
	movq	%rax, %rbx
	leaq	dns_table+31(%r13), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	leaq	-72(%rbp), %r14
	movl	$12, %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	memset
	movzwl	dns_table+28(%r13), %edi
	callq	lwip_htons
	movw	%ax, -72(%rbp)
	movb	$1, -70(%rbp)
	movw	$256, -68(%rbp)         # imm = 0x100
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$12, %edx
	callq	pbuf_take
	movq	%r13, -88(%rbp)         # 8-byte Spill
	leaq	dns_table+35(%r13), %rbx
	movw	$12, %ax
	.p2align	4, 0x90
.LBB9_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_28 Depth 2
	addq	$1, %rbx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB9_28:                               #   Parent Loop BB9_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx,%r12), %ecx
	testb	%cl, %cl
	je	.LBB9_31
# %bb.29:                               #   in Loop: Header=BB9_28 Depth=2
	cmpb	$46, %cl
	je	.LBB9_31
# %bb.30:                               #   in Loop: Header=BB9_28 Depth=2
	addq	$1, %r12
	jmp	.LBB9_28
	.p2align	4, 0x90
.LBB9_31:                               #   in Loop: Header=BB9_27 Depth=1
	movzwl	%ax, %r15d
	movzbl	%r12b, %r13d
	addl	%r15d, %r13d
	cmpl	$65534, %r13d           # imm = 0xFFFE
	ja	.LBB9_36
# %bb.32:                               #   in Loop: Header=BB9_27 Depth=1
	leaq	(%rbx,%r12), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%eax, %r14d
	subl	%ebx, %r14d
	movzbl	%r12b, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r15d, %esi
	callq	pbuf_put_at
	addl	$1, %r15d
	movzwl	%r14w, %edx
	movzwl	%r15w, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	pbuf_take_at
	leal	1(%r13), %eax
	cmpb	$0, (%rbx,%r12)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	jne	.LBB9_27
# %bb.33:
	movzwl	%ax, %esi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	xorl	%edx, %edx
	callq	pbuf_put_at
	addl	$2, %r13d
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movb	dns_table+292(%rbx), %cl
	movw	$7168, %ax              # imm = 0x1C00
	orb	$2, %cl
	cmpb	$3, %cl
	je	.LBB9_35
# %bb.34:
	movw	$256, %ax               # imm = 0x100
.LBB9_35:
	movw	%ax, -48(%rbp)
	movw	$256, -46(%rbp)         # imm = 0x100
	movzwl	%r13w, %ecx
	leaq	-48(%rbp), %rsi
	movq	%r14, %rdi
	movl	$4, %edx
	callq	pbuf_take_at
	movzbl	dns_table+35(%rbx), %eax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movzbl	(%rcx), %ecx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	dns_servers(,%rcx,8), %rdx
	movq	dns_pcbs(,%rax,8), %rdi
	movq	%r14, %rsi
	movl	$53, %ecx
	callq	udp_sendto
	movl	%eax, %ebx
	movq	%r14, %rdi
	callq	pbuf_free
	jmp	.LBB9_37
.LBB9_7:
	movb	$-1, %bl
	jmp	.LBB9_37
.LBB9_36:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_free
	movb	$-6, %bl
	jmp	.LBB9_37
.LBB9_14:
	leaq	dns_table+35(%r13), %rbx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB9_15
	.p2align	4, 0x90
.LBB9_21:                               #   in Loop: Header=BB9_15 Depth=1
	addq	$2, %rcx
	addq	$592, %rax              # imm = 0x250
	cmpq	$32, %rcx
	jae	.LBB9_22
.LBB9_15:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rax, %r13
	je	.LBB9_18
# %bb.16:                               #   in Loop: Header=BB9_15 Depth=1
	cmpb	$2, dns_table+30(%rax)
	jne	.LBB9_18
# %bb.17:                               #   in Loop: Header=BB9_15 Depth=1
	movzbl	dns_table+35(%rax), %edx
	cmpb	(%rbx), %dl
	je	.LBB9_24
.LBB9_18:                               #   in Loop: Header=BB9_15 Depth=1
	movq	%rcx, %rdx
	orq	$1, %rdx
	cmpq	%r15, %rdx
	je	.LBB9_21
# %bb.19:                               #   in Loop: Header=BB9_15 Depth=1
	cmpb	$2, dns_table+326(%rax)
	jne	.LBB9_21
# %bb.20:                               #   in Loop: Header=BB9_15 Depth=1
	movzbl	dns_table+331(%rax), %edx
	cmpb	(%rbx), %dl
	jne	.LBB9_21
	jmp	.LBB9_24
.LBB9_22:
	movzbl	(%rbx), %eax
	cmpq	$31, %rax
	ja	.LBB9_25
# %bb.23:
	movq	dns_pcbs(,%rax,8), %rdi
	callq	udp_remove
	movzbl	(%rbx), %eax
	movq	$0, dns_pcbs(,%rax,8)
.LBB9_24:
	movb	$32, (%rbx)
.LBB9_25:
	movb	$0, dns_table+30(%r13)
	xorl	%ebx, %ebx
.LBB9_37:
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_38:
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end9:
	.size	dns_send, .Lfunc_end9-dns_send
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function dns_call_found
	.type	dns_call_found,@function
dns_call_found:                         # @dns_call_found
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r12
	movl	%edi, %r13d
	movzbl	%r13b, %edx
	testq	%rsi, %rsi
	je	.LBB10_6
# %bb.1:
	imulq	$296, %rdx, %rcx        # imm = 0x128
	cmpb	$6, 20(%r12)
	leaq	dns_table+292(%rcx), %rax
	movb	dns_table+292(%rcx), %cl
	jne	.LBB10_4
# %bb.2:
	orb	$2, %cl
	cmpb	$3, %cl
	jne	.LBB10_23
# %bb.3:
	movb	$1, (%rax)
	jmp	.LBB10_6
.LBB10_4:
	orb	$2, %cl
	cmpb	$3, %cl
	je	.LBB10_23
# %bb.5:
	movb	$0, (%rax)
.LBB10_6:
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	imulq	$296, %rdx, %rbx        # imm = 0x128
	leaq	dns_table+36(%rbx), %r15
	movq	$-768, %r14             # imm = 0xFD00
	jmp	.LBB10_7
	.p2align	4, 0x90
.LBB10_10:                              #   in Loop: Header=BB10_7 Depth=1
	addq	$24, %r14
	je	.LBB10_11
.LBB10_7:                               # =>This Inner Loop Header: Depth=1
	movq	dns_requests+768(%r14), %rax
	testq	%rax, %rax
	je	.LBB10_10
# %bb.8:                                #   in Loop: Header=BB10_7 Depth=1
	cmpb	%r13b, dns_requests+784(%r14)
	jne	.LBB10_10
# %bb.9:                                #   in Loop: Header=BB10_7 Depth=1
	movq	dns_requests+776(%r14), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*%rax
	movq	$0, dns_requests+768(%r14)
	jmp	.LBB10_10
.LBB10_11:
	leaq	dns_table+35(%rbx), %r14
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB10_12
	.p2align	4, 0x90
.LBB10_18:                              #   in Loop: Header=BB10_12 Depth=1
	addq	$2, %rcx
	addq	$592, %rax              # imm = 0x250
	cmpq	$32, %rcx
	jae	.LBB10_19
.LBB10_12:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rax, %rbx
	je	.LBB10_15
# %bb.13:                               #   in Loop: Header=BB10_12 Depth=1
	cmpb	$2, dns_table+30(%rax)
	jne	.LBB10_15
# %bb.14:                               #   in Loop: Header=BB10_12 Depth=1
	movzbl	dns_table+35(%rax), %edx
	cmpb	(%r14), %dl
	je	.LBB10_21
.LBB10_15:                              #   in Loop: Header=BB10_12 Depth=1
	movq	%rcx, %rdx
	orq	$1, %rdx
	cmpq	%rsi, %rdx
	je	.LBB10_18
# %bb.16:                               #   in Loop: Header=BB10_12 Depth=1
	cmpb	$2, dns_table+326(%rax)
	jne	.LBB10_18
# %bb.17:                               #   in Loop: Header=BB10_12 Depth=1
	movzbl	dns_table+331(%rax), %edx
	cmpb	(%r14), %dl
	jne	.LBB10_18
	jmp	.LBB10_21
.LBB10_19:
	movzbl	(%r14), %eax
	cmpq	$31, %rax
	ja	.LBB10_22
# %bb.20:
	movq	dns_pcbs(,%rax,8), %rdi
	callq	udp_remove
	movzbl	(%r14), %eax
	movq	$0, dns_pcbs(,%rax,8)
.LBB10_21:
	movb	$32, (%r14)
.LBB10_22:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_23:
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end10:
	.size	dns_call_found, .Lfunc_end10-dns_call_found
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
.Lfunc_end11:
	.size	uk_swrand_randr, .Lfunc_end11-uk_swrand_randr
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function dns_recv
	.type	dns_recv,@function
dns_recv:                               # @dns_recv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	cmpw	$16, 16(%rdx)
	jb	.LBB12_104
# %bb.1:
	leaq	-144(%rbp), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$12, %edx
	xorl	%ecx, %ecx
	callq	pbuf_copy_partial
	cmpw	$12, %ax
	jne	.LBB12_104
# %bb.2:
	movzwl	-144(%rbp), %edi
	callq	lwip_htons
	movw	%ax, -90(%rbp)          # 2-byte Spill
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB12_3
.LBB12_66:                              #   in Loop: Header=BB12_3 Depth=1
	testl	%ecx, %ecx
	movq	-64(%rbp), %rax         # 8-byte Reload
	jne	.LBB12_67
	.p2align	4, 0x90
.LBB12_103:                             #   in Loop: Header=BB12_3 Depth=1
	addq	$1, %rax
	movq	%rax, %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	cmpq	$32, %rax
	jae	.LBB12_104
.LBB12_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_16 Depth 2
                                        #       Child Loop BB12_22 Depth 3
                                        #     Child Loop BB12_44 Depth 2
                                        #       Child Loop BB12_45 Depth 3
	movq	-64(%rbp), %rax         # 8-byte Reload
	imulq	$296, %rax, %rcx        # imm = 0x128
	cmpb	$2, dns_table+30(%rcx)
	jne	.LBB12_103
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	movzwl	-90(%rbp), %edx         # 2-byte Folded Reload
	cmpw	%dx, dns_table+28(%rcx)
	jne	.LBB12_103
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=1
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movzwl	-140(%rbp), %edi
	callq	lwip_htons
	movl	%eax, %ebx
	movzwl	-138(%rbp), %edi
	callq	lwip_htons
	movw	%ax, -66(%rbp)          # 2-byte Spill
	cmpw	$1, %bx
	jne	.LBB12_104
# %bb.6:                                #   in Loop: Header=BB12_3 Depth=1
	cmpb	$0, -142(%rbp)
	jns	.LBB12_104
# %bb.7:                                #   in Loop: Header=BB12_3 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movb	20(%rax), %cl
	movq	-56(%rbp), %rax         # 8-byte Reload
	movzbl	dns_table+31(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	cmpb	dns_servers+20(,%rax,8), %cl
	jne	.LBB12_104
# %bb.8:                                #   in Loop: Header=BB12_3 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movl	(%rdx), %edx
	movl	dns_servers(,%rax,8), %esi
	cmpb	$6, %cl
	jne	.LBB12_14
# %bb.9:                                #   in Loop: Header=BB12_3 Depth=1
	cmpl	%esi, %edx
	jne	.LBB12_104
# %bb.10:                               #   in Loop: Header=BB12_3 Depth=1
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	4(%rcx), %ecx
	cmpl	dns_servers+4(,%rax,8), %ecx
	jne	.LBB12_104
# %bb.11:                               #   in Loop: Header=BB12_3 Depth=1
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	8(%rcx), %ecx
	cmpl	dns_servers+8(,%rax,8), %ecx
	jne	.LBB12_104
# %bb.12:                               #   in Loop: Header=BB12_3 Depth=1
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	12(%rcx), %ecx
	cmpl	dns_servers+12(,%rax,8), %ecx
	jne	.LBB12_104
# %bb.13:                               #   in Loop: Header=BB12_3 Depth=1
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movb	16(%rcx), %cl
	cmpb	dns_servers+16(,%rax,8), %cl
	je	.LBB12_15
	jmp	.LBB12_104
.LBB12_14:                              #   in Loop: Header=BB12_3 Depth=1
	cmpl	%esi, %edx
	jne	.LBB12_104
.LBB12_15:                              #   in Loop: Header=BB12_3 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	dns_table+30(%rcx), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	leaq	dns_table+36(%rcx), %rax
	movw	$12, %dx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB12_16:                              #   Parent Loop BB12_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_22 Depth 3
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movzwl	%dx, %r13d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
	callq	pbuf_try_get_at
	cmpw	$-1, %r13w
	je	.LBB12_104
# %bb.17:                               #   in Loop: Header=BB12_16 Depth=2
	movl	%eax, %ebx
	testl	%eax, %eax
	js	.LBB12_104
# %bb.18:                               #   in Loop: Header=BB12_16 Depth=2
	movl	%ebx, %eax
	andl	$192, %eax
	cmpl	$192, %eax
	je	.LBB12_104
# %bb.19:                               #   in Loop: Header=BB12_16 Depth=2
	movq	-152(%rbp), %r15        # 8-byte Reload
	leal	1(%r15), %r14d
	movzwl	%r14w, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_try_get_at
	movl	%eax, %r12d
	shrl	$31, %eax
	testl	%ebx, %ebx
	jle	.LBB12_20
# %bb.21:                               # %.preheader
                                        #   in Loop: Header=BB12_16 Depth=2
	movl	$-2, %ecx
	subl	%r15d, %ecx
	movzwl	%cx, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	addl	$1, %ebx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB12_22:                              #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	$1, %al
	jne	.LBB12_104
# %bb.23:                               #   in Loop: Header=BB12_22 Depth=3
	movq	-128(%rbp), %rax        # 8-byte Reload
	movzbl	(%rax,%r15), %r14d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB12_25
# %bb.24:                               #   in Loop: Header=BB12_22 Depth=3
	addl	$32, %r14d
.LBB12_25:                              #   in Loop: Header=BB12_22 Depth=3
	callq	__locale_ctype_ptr
	movzbl	%r12b, %ecx
	movzbl	1(%rax,%rcx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB12_27
# %bb.26:                               #   in Loop: Header=BB12_22 Depth=3
	addl	$32, %ecx
.LBB12_27:                              #   in Loop: Header=BB12_22 Depth=3
	cmpw	%r15w, -192(%rbp)       # 2-byte Folded Reload
	je	.LBB12_104
# %bb.28:                               #   in Loop: Header=BB12_22 Depth=3
	cmpl	%ecx, %r14d
	jne	.LBB12_104
# %bb.29:                               #   in Loop: Header=BB12_22 Depth=3
	leal	(%r15,%r13), %eax
	addl	$2, %eax
	movzwl	%ax, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_try_get_at
	movl	%eax, %r12d
	shrl	$31, %eax
	addq	$1, %r15
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jg	.LBB12_22
# %bb.30:                               # %.loopexit4
                                        #   in Loop: Header=BB12_16 Depth=2
	movq	-152(%rbp), %rdx        # 8-byte Reload
	leal	(%rdx,%r15), %ecx
	addl	%r15d, %edx
	addl	$1, %edx
	addq	%r15, -128(%rbp)        # 8-byte Folded Spill
	jmp	.LBB12_31
.LBB12_20:                              #   in Loop: Header=BB12_16 Depth=2
	movl	%r15d, %ecx
	movl	%r14d, %edx
.LBB12_31:                              #   in Loop: Header=BB12_16 Depth=2
	testb	%al, %al
	jne	.LBB12_104
# %bb.32:                               #   in Loop: Header=BB12_16 Depth=2
	addq	$1, -128(%rbp)          # 8-byte Folded Spill
	testl	%r12d, %r12d
	jne	.LBB12_16
# %bb.33:                               #   in Loop: Header=BB12_3 Depth=1
	cmpw	$-1, %dx
	je	.LBB12_104
# %bb.34:                               #   in Loop: Header=BB12_3 Depth=1
	addl	$2, %ecx
	cmpw	$-1, %cx
	je	.LBB12_104
# %bb.35:                               #   in Loop: Header=BB12_3 Depth=1
	movzwl	%cx, %r13d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	leaq	-88(%rbp), %rsi
	movl	$4, %edx
	movl	%r13d, %ecx
	callq	pbuf_copy_partial
	cmpw	$4, %ax
	jne	.LBB12_104
# %bb.36:                               #   in Loop: Header=BB12_3 Depth=1
	movzwl	-86(%rbp), %eax
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB12_104
# %bb.37:                               #   in Loop: Header=BB12_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	dns_table+292(%rax), %al
	movl	%eax, %ecx
	orb	$2, %cl
	cmpb	$3, %cl
	jne	.LBB12_40
# %bb.38:                               #   in Loop: Header=BB12_3 Depth=1
	movzwl	-88(%rbp), %edx
	cmpl	$7168, %edx             # imm = 0x1C00
	jne	.LBB12_104
# %bb.39:                               #   in Loop: Header=BB12_3 Depth=1
	cmpb	$3, %cl
	je	.LBB12_41
	jmp	.LBB12_104
.LBB12_40:                              #   in Loop: Header=BB12_3 Depth=1
	movzwl	-88(%rbp), %ecx
	cmpl	$256, %ecx              # imm = 0x100
	jne	.LBB12_104
.LBB12_41:                              #   in Loop: Header=BB12_3 Depth=1
	addl	$4, %r13d
	cmpl	$65535, %r13d           # imm = 0xFFFF
	ja	.LBB12_104
# %bb.42:                               #   in Loop: Header=BB12_3 Depth=1
	testb	$15, -141(%rbp)
	jne	.LBB12_68
# %bb.43:                               #   in Loop: Header=BB12_3 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	leaq	dns_table+292(%r12), %r14
	cmpw	$0, -66(%rbp)           # 2-byte Folded Reload
	je	.LBB12_84
.LBB12_44:                              #   Parent Loop BB12_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_45 Depth 3
	movzwl	%r13w, %eax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movzwl	16(%rcx), %ecx
	cmpl	%ecx, %eax
	jae	.LBB12_83
.LBB12_45:                              #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	%r13w, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_try_get_at
	testl	%eax, %eax
	js	.LBB12_104
# %bb.46:                               #   in Loop: Header=BB12_45 Depth=3
	addl	$1, %r13d
	testw	%r13w, %r13w
	je	.LBB12_104
# %bb.47:                               #   in Loop: Header=BB12_45 Depth=3
	movl	%eax, %ebx
	andl	$192, %eax
	cmpl	$192, %eax
	je	.LBB12_52
# %bb.48:                               #   in Loop: Header=BB12_45 Depth=3
	movzwl	%r13w, %eax
	addl	%eax, %ebx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movzwl	16(%rax), %eax
	cmpl	%eax, %ebx
	jge	.LBB12_104
# %bb.49:                               #   in Loop: Header=BB12_45 Depth=3
	movzwl	%bx, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_try_get_at
	testl	%eax, %eax
	js	.LBB12_104
# %bb.50:                               #   in Loop: Header=BB12_45 Depth=3
	movl	%ebx, %r13d
	jne	.LBB12_45
# %bb.51:                               #   in Loop: Header=BB12_44 Depth=2
	movl	%ebx, %r13d
.LBB12_52:                              #   in Loop: Header=BB12_44 Depth=2
	movl	%r13d, %eax
	incw	%ax
	je	.LBB12_104
# %bb.53:                               #   in Loop: Header=BB12_44 Depth=2
	cmpw	$-1, %ax
	je	.LBB12_104
# %bb.54:                               #   in Loop: Header=BB12_44 Depth=2
	movzwl	%ax, %ebx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	leaq	-120(%rbp), %rsi
	movl	$10, %edx
	movl	%ebx, %ecx
	callq	pbuf_copy_partial
	cmpw	$10, %ax
	jne	.LBB12_104
# %bb.55:                               #   in Loop: Header=BB12_44 Depth=2
	addl	$10, %ebx
	cmpl	$65535, %ebx            # imm = 0xFFFF
	ja	.LBB12_104
# %bb.56:                               #   in Loop: Header=BB12_44 Depth=2
	movzwl	-118(%rbp), %eax
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB12_81
# %bb.57:                               #   in Loop: Header=BB12_44 Depth=2
	movzwl	-120(%rbp), %eax
	cmpl	$7168, %eax             # imm = 0x1C00
	je	.LBB12_77
# %bb.58:                               #   in Loop: Header=BB12_44 Depth=2
	movzwl	%ax, %eax
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB12_81
# %bb.59:                               #   in Loop: Header=BB12_44 Depth=2
	movzwl	-112(%rbp), %eax
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB12_81
# %bb.60:                               #   in Loop: Header=BB12_44 Depth=2
	movb	(%r14), %al
	orb	$2, %al
	cmpb	$3, %al
	je	.LBB12_81
	jmp	.LBB12_61
.LBB12_77:                              #   in Loop: Header=BB12_44 Depth=2
	movzwl	-112(%rbp), %eax
	cmpl	$4096, %eax             # imm = 0x1000
	jne	.LBB12_81
# %bb.78:                               #   in Loop: Header=BB12_44 Depth=2
	movb	(%r14), %al
	orb	$2, %al
	cmpb	$3, %al
	je	.LBB12_79
.LBB12_81:                              #   in Loop: Header=BB12_44 Depth=2
	addl	$11, %r13d
	movzwl	%r13w, %ebx
	movzwl	-112(%rbp), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	addl	%ebx, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	ja	.LBB12_104
# %bb.82:                               #   in Loop: Header=BB12_44 Depth=2
	movzwl	-112(%rbp), %edi
	callq	lwip_htons
	movzwl	%ax, %r13d
	addl	%ebx, %r13d
	addw	$-1, -66(%rbp)          # 2-byte Folded Spill
	jne	.LBB12_44
	jmp	.LBB12_83
.LBB12_61:                              #   in Loop: Header=BB12_3 Depth=1
	movzwl	%bx, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	leaq	-176(%rbp), %rsi
	movl	$4, %edx
	callq	pbuf_copy_partial
	movl	$2, %ecx
	cmpw	$4, %ax
	jne	.LBB12_66
# %bb.62:                               #   in Loop: Header=BB12_3 Depth=1
	movl	-176(%rbp), %eax
	movq	-56(%rbp), %rbx         # 8-byte Reload
	leaq	dns_table+4(%rbx), %r14
	movl	%eax, dns_table+4(%rbx)
	movb	$0, dns_table+24(%rbx)
	movl	$0, dns_table+16(%rbx)
	movq	$0, dns_table+8(%rbx)
	movb	$0, dns_table+20(%rbx)
	jmp	.LBB12_63
.LBB12_79:                              #   in Loop: Header=BB12_3 Depth=1
	movzwl	%bx, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	leaq	-176(%rbp), %rsi
	movl	$16, %edx
	callq	pbuf_copy_partial
	movl	$2, %ecx
	cmpw	$16, %ax
	jne	.LBB12_66
# %bb.80:                               #   in Loop: Header=BB12_3 Depth=1
	movq	-56(%rbp), %rbx         # 8-byte Reload
	leaq	dns_table+4(%rbx), %r14
	movaps	-176(%rbp), %xmm0
	movups	%xmm0, dns_table+4(%rbx)
	movb	$0, dns_table+20(%rbx)
	movb	$6, dns_table+24(%rbx)
.LBB12_63:                              #   in Loop: Header=BB12_3 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_free
	movl	-116(%rbp), %edi
	callq	lwip_htonl
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movb	$3, (%rcx)
	cmpl	$604800, %eax           # imm = 0x93A80
	movl	$604800, %ecx           # imm = 0x93A80
	cmovael	%ecx, %eax
	movl	%eax, dns_table(%rbx)
	movzbl	-64(%rbp), %edi         # 1-byte Folded Reload
	movq	%r14, %rsi
	callq	dns_call_found
	movl	$1, %ecx
	cmpl	$0, dns_table(%rbx)
	jne	.LBB12_66
# %bb.64:                               #   in Loop: Header=BB12_3 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	cmpb	$3, (%rax)
	jne	.LBB12_66
# %bb.65:                               #   in Loop: Header=BB12_3 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movb	$0, (%rax)
	jmp	.LBB12_66
.LBB12_83:
	movb	(%r14), %al
	movq	-56(%rbp), %r12         # 8-byte Reload
.LBB12_84:
	movl	%eax, %ecx
	andb	$-2, %cl
	cmpb	$2, %cl
	jne	.LBB12_85
# %bb.106:
	cmpb	$2, %al
	sete	(%r14)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_free
	movq	-80(%rbp), %rax         # 8-byte Reload
	movb	$1, (%rax)
	movzbl	-64(%rbp), %edi         # 1-byte Folded Reload
	callq	dns_check_entry
	jmp	.LBB12_105
.LBB12_85:
	movq	-64(%rbp), %r15         # 8-byte Reload
	jmp	.LBB12_86
.LBB12_68:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movzbl	1(%rax), %eax
	addq	$1, %rax
	cmpl	$1, %eax
	ja	.LBB12_69
# %bb.70:
	leaq	(,%rax,8), %rcx
	cmpb	$6, dns_servers+20(%rcx,%rcx,2)
	movl	dns_servers(%rcx,%rcx,2), %ecx
	jne	.LBB12_75
# %bb.71:
	testl	%ecx, %ecx
	jne	.LBB12_76
# %bb.72:
	leaq	(%rax,%rax,2), %rax
	cmpl	$0, dns_servers+4(,%rax,8)
	jne	.LBB12_76
# %bb.73:
	cmpl	$0, dns_servers+8(,%rax,8)
	jne	.LBB12_76
# %bb.74:
	cmpl	$0, dns_servers+12(,%rax,8)
	jne	.LBB12_76
.LBB12_69:
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	-56(%rbp), %r12         # 8-byte Reload
.LBB12_86:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_free
	movq	$-768, %rbx             # imm = 0xFD00
	movq	-184(%rbp), %r14        # 8-byte Reload
	jmp	.LBB12_87
.LBB12_90:                              #   in Loop: Header=BB12_87 Depth=1
	addq	$24, %rbx
	je	.LBB12_91
.LBB12_87:                              # =>This Inner Loop Header: Depth=1
	movq	dns_requests+768(%rbx), %rax
	testq	%rax, %rax
	je	.LBB12_90
# %bb.88:                               #   in Loop: Header=BB12_87 Depth=1
	cmpb	%r15b, dns_requests+784(%rbx)
	jne	.LBB12_90
# %bb.89:                               #   in Loop: Header=BB12_87 Depth=1
	movq	dns_requests+776(%rbx), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	*%rax
	movq	$0, dns_requests+768(%rbx)
	jmp	.LBB12_90
.LBB12_91:
	leaq	dns_table+35(%r12), %r14
	movl	$dns_table+30, %eax
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	jmp	.LBB12_92
.LBB12_98:                              #   in Loop: Header=BB12_92 Depth=1
	addq	$2, %rcx
	addq	$592, %rax              # imm = 0x250
	addq	$-2, %rdx
	cmpq	$32, %rcx
	jae	.LBB12_99
.LBB12_92:                              # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	je	.LBB12_95
# %bb.93:                               #   in Loop: Header=BB12_92 Depth=1
	cmpb	$2, (%rax)
	jne	.LBB12_95
# %bb.94:                               #   in Loop: Header=BB12_92 Depth=1
	movzbl	5(%rax), %ebx
	cmpb	(%r14), %bl
	je	.LBB12_101
.LBB12_95:                              #   in Loop: Header=BB12_92 Depth=1
	movq	%rcx, %rsi
	orq	$1, %rsi
	cmpq	%r15, %rsi
	je	.LBB12_98
# %bb.96:                               #   in Loop: Header=BB12_92 Depth=1
	cmpb	$2, 296(%rax)
	jne	.LBB12_98
# %bb.97:                               #   in Loop: Header=BB12_92 Depth=1
	movzbl	301(%rax), %ebx
	cmpb	(%r14), %bl
	jne	.LBB12_98
	jmp	.LBB12_101
.LBB12_99:
	movzbl	(%r14), %eax
	cmpq	$31, %rax
	ja	.LBB12_102
# %bb.100:
	movq	dns_pcbs(,%rax,8), %rdi
	callq	udp_remove
	movzbl	(%r14), %eax
	movq	$0, dns_pcbs(,%rax,8)
.LBB12_101:
	movb	$32, (%r14)
.LBB12_102:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movb	$0, (%rax)
	jmp	.LBB12_105
.LBB12_75:
	testl	%ecx, %ecx
	je	.LBB12_69
.LBB12_76:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movw	$769, dns_table+32(%rax) # imm = 0x301
	movzbl	-64(%rbp), %edi         # 1-byte Folded Reload
	callq	dns_check_entry
.LBB12_104:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_free
.LBB12_105:
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_67:
	cmpl	$2, %ecx
	je	.LBB12_104
	jmp	.LBB12_105
.Lfunc_end12:
	.size	dns_recv, .Lfunc_end12-dns_recv
                                        # -- End function
	.type	dns_mquery_v4group,@object # @dns_mquery_v4group
	.section	.rodata,"a",@progbits
	.globl	dns_mquery_v4group
	.p2align	2
dns_mquery_v4group:
	.long	4211081440              # 0xfb0000e0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.size	dns_mquery_v4group, 24

	.type	dns_mquery_v6group,@object # @dns_mquery_v6group
	.globl	dns_mquery_v6group
	.p2align	2
dns_mquery_v6group:
	.long	767                     # 0x2ff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4211081216              # 0xfb000000
	.byte	0                       # 0x0
	.zero	3
	.byte	6                       # 0x6
	.zero	3
	.size	dns_mquery_v6group, 24

	.type	dns_servers,@object     # @dns_servers
	.local	dns_servers
	.comm	dns_servers,48,16
	.type	dns_table,@object       # @dns_table
	.local	dns_table
	.comm	dns_table,9472,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"array index out of bounds"
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
	.asciz	"unknown dns_table entry state:"
	.size	.L.str.3, 31

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.4,@object # @uk_pr_crit.__str.4
uk_pr_crit.__str.4:
	.asciz	"dns.c"
	.size	uk_pr_crit.__str.4, 6

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"dns server out of array"
	.size	.L.str.5, 24

	.type	dns_pcbs,@object        # @dns_pcbs
	.local	dns_pcbs
	.comm	dns_pcbs,256,16
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"invalid response"
	.size	.L.str.6, 17

	.type	dns_requests,@object    # @dns_requests
	.local	dns_requests
	.comm	dns_requests,768,16
	.type	dns_seqno,@object       # @dns_seqno
	.local	dns_seqno
	.comm	dns_seqno,1,1
	.type	dns_last_pcb_idx,@object # @dns_last_pcb_idx
	.local	dns_last_pcb_idx
	.comm	dns_last_pcb_idx,1,1
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
