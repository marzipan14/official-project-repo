	.text
	.file	"dns.c"
	.globl	dns_init                # -- Begin function dns_init
	.p2align	4, 0x90
	.type	dns_init,@function
dns_init:                               # @dns_init
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	dns_init, .Lfunc_end0-dns_init
                                        # -- End function
	.globl	dns_setserver           # -- Begin function dns_setserver
	.p2align	4, 0x90
	.type	dns_setserver,@function
dns_setserver:                          # @dns_setserver
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %dil
	ja	.LBB1_5
# %bb.1:
	movzbl	%dil, %eax
	leaq	(%rax,%rax,2), %rax
	leaq	dns_servers(,%rax,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB1_3
# %bb.2:
	movq	16(%rsi), %rcx
	movq	%rcx, 16(%rax)
	movups	(%rsi), %xmm0
	jmp	.LBB1_4
.LBB1_3:
	movq	ip_addr_any+16(%rip), %rcx
	movq	%rcx, 16(%rax)
	movups	ip_addr_any(%rip), %xmm0
.LBB1_4:
	movups	%xmm0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %eax
	leaq	(%rax,%rax,2), %rax
	leaq	dns_servers(,%rax,8), %rcx
	movl	$ip_addr_any, %eax
	cmovbq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	%bl, %ebx
	movl	%ebx, %edi
	callq	dns_check_entry
	addb	$1, %bl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$32, %bl
	jne	.LBB3_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dns_tmr, .Lfunc_end3-dns_tmr
                                        # -- End function
	.globl	dns_gethostbyname       # -- Begin function dns_gethostbyname
	.p2align	4, 0x90
	.type	dns_gethostbyname,@function
dns_gethostbyname:                      # @dns_gethostbyname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2, %r8d
	callq	dns_gethostbyname_addrtype
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	subq	$56, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movb	$-16, %r14b
	testq	%rdi, %rdi
	je	.LBB5_43
# %bb.1:
	movq	%rsi, %r13
	testq	%rsi, %rsi
	je	.LBB5_43
# %bb.2:
	movq	%rdi, %r15
	cmpb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_43
# %bb.3:
	movl	%r8d, %r12d
	movq	%rcx, %rbx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$255, %rax
	ja	.LBB5_43
# %bb.4:
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	ipaddr_aton
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_12
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movb	20(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %al
	jne	.LBB5_8
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r12b, %r12b
	jne	.LBB5_7
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_12
.LBB5_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB5_12
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %r12b
	jne	.LBB5_7
.LBB5_12:
	movzbl	%r12b, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	dns_lookup
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB5_7
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, %r12b
	je	.LBB5_15
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %r12b
	jne	.LBB5_16
.LBB5_15:
	xorl	%edx, %edx
	cmpb	$2, %r12b
	sete	%dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	dns_lookup
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB5_30
.LBB5_16:
	cmpb	$6, dns_servers+20(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	dns_servers(%rip), %eax
	jne	.LBB5_20
# %bb.17:
	orl	dns_servers+4(%rip), %eax
	orl	dns_servers+8(%rip), %eax
	orl	dns_servers+12(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_42
.LBB5_21:
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB5_23
	.p2align	4, 0x90
.LBB5_22:                               #   in Loop: Header=BB5_23 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %rbx
	jae	.LBB5_35
.LBB5_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_27 Depth 2
	imulq	$296, %rbx, %r14        # imm = 0x128
	cmpb	$2, dns_table+30(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_22
# %bb.24:                               #   in Loop: Header=BB5_23 Depth=1
	leaq	dns_table+36(%r14), %rsi
	movl	$256, %edx              # imm = 0x100
	movq	%r15, %rdi
	callq	lwip_strnicmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB5_22
# %bb.25:                               #   in Loop: Header=BB5_23 Depth=1
	cmpb	%r12b, dns_table+292(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_22
# %bb.26:                               #   in Loop: Header=BB5_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$dns_requests, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_27:                               #   Parent Loop BB5_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_32
# %bb.28:                               #   in Loop: Header=BB5_27 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 24(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_31
# %bb.29:                               #   in Loop: Header=BB5_27 Depth=2
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %rcx
	cmpq	$32, %rax
	jb	.LBB5_27
	jmp	.LBB5_22
.LBB5_7:
	xorl	%r14d, %r14d
	jmp	.LBB5_43
.LBB5_20:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB5_21
.LBB5_42:
	movb	$-6, %r14b
	jmp	.LBB5_43
.LBB5_30:
	xorl	%r14d, %r14d
	jmp	.LBB5_44
.LBB5_31:                               # %split20
	addq	$24, %rcx
	addq	$1, %rax
.LBB5_32:
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, (%rcx)
	shlq	$3, %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, dns_requests+8(%rax,%rax,2)
	movb	%bl, dns_requests+16(%rax,%rax,2)
	movb	%r12b, dns_requests+17(%rax,%rax,2)
.LBB5_33:
	movb	$-5, %r14b
.LBB5_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_43:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_44:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$32, %dil
	movl	$dns_table+34, %edx
	movb	dns_seqno(%rip), %r8b
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.LBB5_38
.LBB5_36:                               #   in Loop: Header=BB5_38 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB5_37:                               #   in Loop: Header=BB5_38 Depth=1
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$296, %rdx              # imm = 0x128
	cmpq	$32, %rcx
	jae	.LBB5_47
.LBB5_38:                               # =>This Inner Loop Header: Depth=1
	movzbl	-4(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB5_45
# %bb.39:                               #   in Loop: Header=BB5_38 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %al
	jne	.LBB5_37
# %bb.40:                               #   in Loop: Header=BB5_38 Depth=1
	movl	%r8d, %eax
	subb	(%rdx), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%sil, %al
	jbe	.LBB5_36
# %bb.41:                               #   in Loop: Header=BB5_38 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %esi
	movl	%ecx, %edi
	jmp	.LBB5_36
.LBB5_45:
	movl	%ecx, %edi
.LBB5_46:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_51
.LBB5_47:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$32, %cl
	jne	.LBB5_50
# %bb.48:
	movl	$42, __A_VARIABLE(%rip)
	movb	$-1, %r14b
	cmpb	$31, %dil
	ja	.LBB5_34
# %bb.49:
	movzbl	%dil, %ecx
	imulq	$296, %rcx, %rax        # imm = 0x128
	cmpb	$3, dns_table+30(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_34
	jmp	.LBB5_46
.LBB5_50:                               # %._crit_edge11
	movl	%ecx, %edi
	addq	$-1, %rcx
.LBB5_51:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$dns_requests, %r13d
	xorl	%edx, %edx
.LBB5_52:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_57
# %bb.53:                               #   in Loop: Header=BB5_52 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 24(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_56
# %bb.54:                               #   in Loop: Header=BB5_52 Depth=1
	addq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$48, %r13
	cmpq	$32, %rdx
	jb	.LBB5_52
# %bb.55:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_82
.LBB5_56:                               # %split6
	addq	$1, %rdx
	addq	$24, %r13
.LBB5_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$3, %rdx
	movb	%dil, -41(%rbp)         # 1-byte Spill
	movb	%dil, dns_requests+16(%rdx,%rdx,2)
	imulq	$296, %rcx, %rbx        # imm = 0x128
	leaq	dns_table+30(%rbx), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movb	$1, dns_table+30(%rbx)
	movb	%r8b, dns_table+34(%rbx)
	movb	%r12b, dns_table+292(%rbx)
	movb	%r12b, dns_requests+17(%rdx,%rdx,2)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%r13)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, dns_requests+8(%rdx,%rdx,2)
	movq	-88(%rbp), %rax         # 8-byte Reload
	cmpq	$255, %rax
	movl	$255, %r14d
	cmovbq	%rax, %r14
	leaq	dns_table+36(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movb	$0, dns_table+36(%rbx,%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB5_58:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, dns_pcbs(,%r12,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_62
# %bb.59:                               #   in Loop: Header=BB5_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, dns_pcbs+8(,%r12,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_61
# %bb.60:                               #   in Loop: Header=BB5_58 Depth=1
	addq	$2, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %r12
	jb	.LBB5_58
	jmp	.LBB5_75
.LBB5_61:                               # %split
	addq	$1, %r12
.LBB5_62:
	movl	$42, __A_VARIABLE(%rip)
	movl	$46, %edi
	callq	udp_new_ip_type
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_74
# %bb.63:
	movq	%rax, %r14
	jmp	.LBB5_66
.LBB5_64:                               #   in Loop: Header=BB5_66 Depth=1
	movzwl	%bx, %edx
	movl	$ip_addr_any_type, %esi
	movq	%r14, %rdi
	callq	udp_bind
.LBB5_65:                               #   in Loop: Header=BB5_66 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-8, %al
	jne	.LBB5_72
.LBB5_66:                               # =>This Inner Loop Header: Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB5_68
# %bb.67:                               #   in Loop: Header=BB5_66 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB5_69
.LBB5_68:                               #   in Loop: Header=BB5_66 Depth=1
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
	movl	%r11d, -60(%rbp)

	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	-60(%rbp), %ebx
	jmp	.LBB5_70
.LBB5_69:                               #   in Loop: Header=BB5_66 Depth=1
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %r15
	movl	$uk_swrand_def, %edi
	callq	uk_swrand_randr_r
	movl	%eax, %ebx
	movq	%r15, %rdi
	callq	ukplat_lcpu_restore_irqf
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, -60(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_70:                               #   in Loop: Header=BB5_66 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$64512, %ebx            # imm = 0xFC00
	jne	.LBB5_64
# %bb.71:                               #   in Loop: Header=BB5_66 Depth=1
	movb	$-8, %al
	jmp	.LBB5_65
.LBB5_72:
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB5_85
# %bb.73:
	movq	%r14, %rdi
	callq	udp_remove
.LBB5_74:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, dns_pcbs(,%r12,8)
.LBB5_75:
	movl	$42, __A_VARIABLE(%rip)
	movb	dns_last_pcb_idx(%rip), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	movb	-41(%rbp), %bl          # 1-byte Reload
.LBB5_76:                               # =>This Inner Loop Header: Depth=1
	addb	$1, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$32, %al
	jb	.LBB5_78
# %bb.77:                               #   in Loop: Header=BB5_76 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB5_78:                               #   in Loop: Header=BB5_76 Depth=1
	movzbl	%al, %edx
	cmpq	$0, dns_pcbs(,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_83
# %bb.79:                               #   in Loop: Header=BB5_76 Depth=1
	addb	$1, %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$32, %cl
	jb	.LBB5_76
# %bb.80:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	$32, dns_table+35(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_81:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movb	$0, (%rax)
	movq	$0, (%r13)
.LBB5_82:
	movb	$-1, %r14b
	jmp	.LBB5_34
.LBB5_83:
	movb	%al, dns_last_pcb_idx(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	%al, dns_table+35(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_84:
	addb	$1, dns_seqno(%rip)
	movzbl	%bl, %edi
	callq	dns_check_entry
	jmp	.LBB5_33
.LBB5_85:
	movl	$dns_recv, %esi
	movq	%r14, %rdi
	xorl	%edx, %edx
	callq	udp_recv
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, dns_pcbs(,%r12,8)
	movl	$42, __A_VARIABLE(%rip)
	movb	%r12b, dns_last_pcb_idx(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	%r12b, dns_table+35(%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$32, %r12b
	movb	-41(%rbp), %bl          # 1-byte Reload
	jae	.LBB5_81
	jmp	.LBB5_84
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$dns_table+36, %r13d
	xorl	%ebx, %ebx
	jmp	.LBB6_1
	.p2align	4, 0x90
.LBB6_6:                                #   in Loop: Header=BB6_1 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$296, %r13              # imm = 0x128
	cmpq	$32, %rbx
	jae	.LBB6_7
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	cmpb	$3, -6(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_6
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movl	$256, %edx              # imm = 0x100
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	lwip_strnicmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB6_6
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movzbl	-12(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %al
	jne	.LBB6_8
# %bb.4:                                #   in Loop: Header=BB6_1 Depth=1
	cmpb	$3, %r15b
	je	.LBB6_10
# %bb.5:                                #   in Loop: Header=BB6_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %r15b
	jne	.LBB6_6
	jmp	.LBB6_10
.LBB6_8:                                #   in Loop: Header=BB6_1 Depth=1
	cmpb	$3, %r15b
	je	.LBB6_6
# %bb.9:                                #   in Loop: Header=BB6_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %r15b
	je	.LBB6_6
.LBB6_10:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB6_15
# %bb.11:
	movb	%al, 20(%r14)
	cmpb	$6, -12(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	-32(%r13), %eax
	movl	%eax, (%r14)
	jne	.LBB6_13
# %bb.12:
	movl	-28(%r13), %eax
	movl	%eax, 4(%r14)
	movl	-24(%r13), %eax
	movl	%eax, 8(%r14)
	movl	-20(%r13), %eax
	movl	%eax, 12(%r14)
	movb	-16(%r13), %al
	jmp	.LBB6_14
.LBB6_7:
	movb	$-16, %al
.LBB6_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_13:
	movl	$0, 12(%r14)
	movq	$0, 4(%r14)
	xorl	%eax, %eax
.LBB6_14:
	movb	%al, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_15:
	xorl	%eax, %eax
	jmp	.LBB6_16
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
	pushq	%rax
	movl	%edi, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$32, %r14b
	jae	.LBB7_1
# %bb.3:
	movl	%r14d, %eax
	imulq	$296, %rax, %r13        # imm = 0x128
	movzbl	dns_table+30(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3, %rax
	ja	.LBB7_36
# %bb.4:
	leaq	dns_table+30(%r13), %r12
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %esi
	movl	$_end, %edi
.LBB7_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_11 Depth 2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	jb	.LBB7_9
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rax
	jbe	.LBB7_8
.LBB7_9:                                #   in Loop: Header=BB7_6 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_10:                               #   in Loop: Header=BB7_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$dns_table+326, %eax
	xorl	%ecx, %ecx
	jmp	.LBB7_11
	.p2align	4, 0x90
.LBB7_15:                               #   in Loop: Header=BB7_11 Depth=2
	addq	$2, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$592, %rax              # imm = 0x250
	cmpq	$32, %rcx
	jae	.LBB7_16
.LBB7_11:                               #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$2, -296(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=2
	cmpw	%bx, -298(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_6
.LBB7_13:                               #   in Loop: Header=BB7_11 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$2, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_15
# %bb.14:                               #   in Loop: Header=BB7_11 Depth=2
	cmpw	%bx, -2(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_15
	jmp	.LBB7_6
.LBB7_17:
	addb	$-1, dns_table+32(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_35
# %bb.18:
	leaq	dns_table+32(%r13), %rax
	movb	dns_table+33(%r13), %cl
	addb	$1, %cl
	movb	%cl, dns_table+33(%r13)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %cl
	jne	.LBB7_28
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	dns_table+31(%r13), %ecx
	leaq	1(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	ja	.LBB7_25
# %bb.20:
	leaq	(,%rdx,8), %rsi
	cmpb	$6, dns_servers+20(%rsi,%rsi,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	dns_servers(%rsi,%rsi,2), %esi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_26
# %bb.21:
	testl	%esi, %esi
	jne	.LBB7_27
# %bb.22:
	leaq	(%rdx,%rdx,2), %rdx
	cmpl	$0, dns_servers+4(,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_27
# %bb.23:
	cmpl	$0, dns_servers+8(,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_27
# %bb.24:
	cmpl	$0, dns_servers+12(,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_27
.LBB7_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r14b, %edi
	xorl	%esi, %esi
	callq	dns_call_found
	jmp	.LBB7_33
.LBB7_31:
	movl	dns_table(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB7_33
# %bb.32:
	leaq	dns_table(%r13), %rcx
	addl	$-1, %eax
	movl	%eax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_35
.LBB7_33:
	movb	$0, (%r12)
	jmp	.LBB7_34
.LBB7_16:
	movl	$42, __A_VARIABLE(%rip)
	movw	%bx, dns_table+28(%r13)
	movb	$2, (%r12)
	movw	$256, dns_table+31(%r13) # imm = 0x100
	movb	$0, dns_table+33(%r13)
	jmp	.LBB7_30
.LBB7_28:
	movb	%cl, (%rax)
	jmp	.LBB7_29
.LBB7_26:
	testl	%esi, %esi
	je	.LBB7_25
.LBB7_27:
	leaq	dns_table+33(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addb	$1, %cl
	movb	%cl, -2(%rdx)
	movb	$1, (%rax)
	movb	$0, (%rdx)
.LBB7_29:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_30:
	movzbl	%r14b, %edi
	callq	dns_send
.LBB7_34:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_35:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_1:
	movl	$.L.str, %edi
	jmp	.LBB7_2
.LBB7_36:
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
	.quad	.LBB7_35
	.quad	.LBB7_5
	.quad	.LBB7_17
	.quad	.LBB7_31
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	%edi, %eax
	imulq	$296, %rax, %r15        # imm = 0x128
	movzbl	dns_table+31(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rax
	jae	.LBB9_23
# %bb.1:
	leaq	(,%rax,8), %rcx
	cmpb	$6, dns_servers+20(%rcx,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	dns_servers(%rcx,%rcx,2), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_8
# %bb.2:
	testl	%ecx, %ecx
	jne	.LBB9_6
# %bb.3:
	leaq	(%rax,%rax,2), %rax
	cmpl	$0, dns_servers+4(,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_6
# %bb.4:
	cmpl	$0, dns_servers+8(,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_6
# %bb.5:
	cmpl	$0, dns_servers+12(,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_6
.LBB9_9:
	movzbl	%dil, %edi
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	callq	dns_call_found
	movb	$0, dns_table+30(%r15)
	jmp	.LBB9_22
.LBB9_8:
	testl	%ecx, %ecx
	je	.LBB9_9
.LBB9_6:
	leaq	dns_table+36(%r15), %rdi
	callq	strlen
	addl	$18, %eax
	movzwl	%ax, %esi
	movl	$74, %edi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_7
# %bb.10:
	movq	%rax, %rbx
	leaq	dns_table+31(%r15), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	leaq	-72(%rbp), %r14
	movl	$12, %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	memset
	movzwl	dns_table+28(%r15), %edi
	callq	lwip_htons
	movw	%ax, -72(%rbp)
	movb	$1, -70(%rbp)
	movw	$256, -68(%rbp)         # imm = 0x100
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$12, %edx
	callq	pbuf_take
	movq	%r15, -88(%rbp)         # 8-byte Spill
	movq	%r15, %rbx
	leaq	dns_table+35(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	movw	$12, %ax
	movq	-56(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB9_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_13 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%r15), %dl
	movq	%r15, %r13
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	movq	%r13, %r15
	cmpb	$46, %dl
	je	.LBB9_15
	.p2align	4, 0x90
.LBB9_13:                               #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	je	.LBB9_15
# %bb.14:                               #   in Loop: Header=BB9_13 Depth=2
	addb	$1, %cl
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%r15), %edx
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %dl
	jne	.LBB9_13
.LBB9_15:                               #   in Loop: Header=BB9_11 Depth=1
	movzwl	%ax, %ebx
	movzbl	%cl, %edx
	leal	(%rdx,%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65534, %eax            # imm = 0xFFFE
	ja	.LBB9_21
# %bb.16:                               #   in Loop: Header=BB9_11 Depth=1
	movl	%r15d, %r14d
	subl	%r13d, %r14d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	movl	%ebx, %esi
                                        # kill: def $edx killed $edx killed $rdx
	callq	pbuf_put_at
	addl	$1, %ebx
	movzwl	%r14w, %edx
	movzwl	%bx, %ecx
	movq	%r12, %rdi
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%r13, %rsi
	callq	pbuf_take_at
	leal	1(%rbx), %eax
	cmpb	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_11
# %bb.17:
	movzwl	%ax, %esi
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	pbuf_put_at
	addl	$2, %ebx
	movq	-88(%rbp), %r14         # 8-byte Reload
	movb	dns_table+292(%r14), %cl
	movl	$42, __A_VARIABLE(%rip)
	movw	$7168, %ax              # imm = 0x1C00
	cmpb	$3, %cl
	je	.LBB9_19
# %bb.18:
	cmpb	$1, %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$7168, %ecx             # imm = 0x1C00
	movl	$256, %eax              # imm = 0x100
	cmovel	%ecx, %eax
.LBB9_19:
	movw	%ax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movw	$256, -46(%rbp)         # imm = 0x100
	movzwl	%bx, %ecx
	leaq	-48(%rbp), %rsi
	movq	%r15, %rdi
	movl	$4, %edx
	callq	pbuf_take_at
	movzbl	dns_table+35(%r14), %eax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movzbl	(%rcx), %ecx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	dns_servers(,%rcx,8), %rdx
	movq	dns_pcbs(,%rax,8), %rdi
	movq	%r15, %rsi
	movl	$53, %ecx
	callq	udp_sendto
	movl	%eax, %r14d
	movq	%r15, %rdi
	callq	pbuf_free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_22
.LBB9_7:
	movb	$-1, %r14b
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_22
.LBB9_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_free
	movb	$-6, %r14b
.LBB9_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_23:
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
	movq	%rsi, %r14
	movl	%edi, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r12b, %ebx
	testq	%rsi, %rsi
	je	.LBB10_9
# %bb.1:
	imulq	$296, %rbx, %rcx        # imm = 0x128
	cmpb	$6, 20(%r14)
	leaq	dns_table+292(%rcx), %rax
	movb	dns_table+292(%rcx), %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_5
# %bb.2:
	cmpb	$3, %cl
	je	.LBB10_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	jne	.LBB10_24
.LBB10_4:
	movb	$1, (%rax)
	jmp	.LBB10_8
.LBB10_5:
	cmpb	$3, %cl
	je	.LBB10_24
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %cl
	je	.LBB10_24
# %bb.7:
	movb	$0, (%rax)
.LBB10_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	imulq	$296, %rbx, %rax        # imm = 0x128
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	dns_table+36(%rax), %r15
	movq	$-768, %r13             # imm = 0xFD00
	jmp	.LBB10_10
	.p2align	4, 0x90
.LBB10_13:                              #   in Loop: Header=BB10_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %r13
	je	.LBB10_14
.LBB10_10:                              # =>This Inner Loop Header: Depth=1
	movq	dns_requests+768(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_13
# %bb.11:                               #   in Loop: Header=BB10_10 Depth=1
	cmpb	%r12b, dns_requests+784(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_13
# %bb.12:                               #   in Loop: Header=BB10_10 Depth=1
	movq	dns_requests+776(%r13), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*%rax
	movq	$0, dns_requests+768(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_13
.LBB10_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	dns_table+35(%rax), %r14
	movl	$dns_table+30, %eax
	xorl	%ecx, %ecx
	jmp	.LBB10_15
	.p2align	4, 0x90
.LBB10_19:                              #   in Loop: Header=BB10_15 Depth=1
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$296, %rax              # imm = 0x128
	cmpq	$32, %rcx
	jae	.LBB10_20
.LBB10_15:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	je	.LBB10_19
# %bb.16:                               #   in Loop: Header=BB10_15 Depth=1
	cmpb	$2, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_19
# %bb.17:                               #   in Loop: Header=BB10_15 Depth=1
	movzbl	5(%rax), %edx
	cmpb	(%r14), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_19
# %bb.18:
	movb	$32, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_22
.LBB10_20:
	movzbl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$31, %rax
	ja	.LBB10_23
# %bb.21:
	movq	dns_pcbs(,%rax,8), %rdi
	callq	udp_remove
	movzbl	(%r14), %eax
	movq	$0, dns_pcbs(,%rax,8)
	movb	$32, (%r14)
.LBB10_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_23:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_24:
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
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$136, %rsp
	movq	%rdx, %r15
	cmpw	$16, 16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB12_104
# %bb.1:
	movq	%rcx, %r14
	leaq	-144(%rbp), %rsi
	movq	%r15, %rdi
	movl	$12, %edx
	xorl	%ecx, %ecx
	callq	pbuf_copy_partial
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$12, %ax
	jne	.LBB12_104
# %bb.2:
	movzwl	-144(%rbp), %edi
	callq	lwip_htons
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	movq	%r15, -88(%rbp)         # 8-byte Spill
.LBB12_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_17 Depth 2
                                        #       Child Loop BB12_23 Depth 3
                                        #     Child Loop BB12_50 Depth 2
                                        #       Child Loop BB12_52 Depth 3
	imulq	$296, %rdx, %rcx        # imm = 0x128
	cmpb	$2, dns_table+30(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_102
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	cmpw	%ax, dns_table+28(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_102
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=1
	movw	%ax, -66(%rbp)          # 2-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movzwl	-140(%rbp), %edi
	callq	lwip_htons
	movl	%eax, %ebx
	movzwl	-138(%rbp), %edi
	callq	lwip_htons
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movw	%ax, -42(%rbp)          # 2-byte Spill
	cmpb	$0, -142(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB12_14
# %bb.6:                                #   in Loop: Header=BB12_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$1, %bx
	jne	.LBB12_14
# %bb.7:                                #   in Loop: Header=BB12_3 Depth=1
	movb	20(%r14), %cl
	movzbl	dns_table+31(%rdi), %eax
	leaq	(%rax,%rax,2), %rax
	cmpb	dns_servers+20(,%rax,8), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_14
# %bb.8:                                #   in Loop: Header=BB12_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %edx
	movl	dns_servers(,%rax,8), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$6, %cl
	jne	.LBB12_15
# %bb.9:                                #   in Loop: Header=BB12_3 Depth=1
	cmpl	%esi, %edx
	jne	.LBB12_14
# %bb.10:                               #   in Loop: Header=BB12_3 Depth=1
	movl	4(%r14), %ecx
	cmpl	dns_servers+4(,%rax,8), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_14
# %bb.11:                               #   in Loop: Header=BB12_3 Depth=1
	movl	8(%r14), %ecx
	cmpl	dns_servers+8(,%rax,8), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_14
# %bb.12:                               #   in Loop: Header=BB12_3 Depth=1
	movl	12(%r14), %ecx
	cmpl	dns_servers+12(,%rax,8), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_14
# %bb.13:                               #   in Loop: Header=BB12_3 Depth=1
	movb	16(%r14), %cl
	cmpb	dns_servers+16(,%rax,8), %cl
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_16
	jmp	.LBB12_14
	.p2align	4, 0x90
.LBB12_102:                             #   in Loop: Header=BB12_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_103:                             #   in Loop: Header=BB12_3 Depth=1
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %rdx
	jb	.LBB12_3
	jmp	.LBB12_104
.LBB12_15:                              #   in Loop: Header=BB12_3 Depth=1
	cmpl	%esi, %edx
	jne	.LBB12_14
.LBB12_16:                              #   in Loop: Header=BB12_3 Depth=1
	leaq	dns_table+30(%rdi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	dns_table+36(%rdi), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movw	$12, %dx
	movq	%r14, -168(%rbp)        # 8-byte Spill
.LBB12_17:                              #   Parent Loop BB12_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_23 Depth 3
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movzwl	%dx, %r12d
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	pbuf_try_get_at
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB12_36
# %bb.18:                               #   in Loop: Header=BB12_17 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$-1, -120(%rbp)         # 2-byte Folded Reload
	je	.LBB12_36
# %bb.19:                               #   in Loop: Header=BB12_17 Depth=2
	movl	%eax, %ebx
	andl	$192, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$192, %eax
	je	.LBB12_36
# %bb.20:                               #   in Loop: Header=BB12_17 Depth=2
	movq	%r15, %rdi
	movq	-120(%rbp), %r15        # 8-byte Reload
	leal	1(%r15), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%r14w, %esi
	callq	pbuf_try_get_at
	movl	%eax, %r13d
	shrl	$31, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB12_21
# %bb.22:                               # %.preheader
                                        #   in Loop: Header=BB12_17 Depth=2
	movl	$-2, %ecx
	subl	%r15d, %ecx
	movzwl	%cx, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	addl	$1, %ebx
	xorl	%r14d, %r14d
	movq	-88(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB12_23:                              #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	$1, %al
	jne	.LBB12_30
# %bb.24:                               #   in Loop: Header=BB12_23 Depth=3
	movq	-128(%rbp), %rax        # 8-byte Reload
	movzbl	(%rax,%r14), %r15d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r15), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB12_26
# %bb.25:                               #   in Loop: Header=BB12_23 Depth=3
	addl	$32, %r15d
.LBB12_26:                              #   in Loop: Header=BB12_23 Depth=3
	callq	__locale_ctype_ptr
	movzbl	%r13b, %ecx
	movzbl	1(%rax,%rcx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB12_28
# %bb.27:                               #   in Loop: Header=BB12_23 Depth=3
	addl	$32, %ecx
.LBB12_28:                              #   in Loop: Header=BB12_23 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r15d
	movq	-88(%rbp), %r15         # 8-byte Reload
	jne	.LBB12_30
# %bb.29:                               #   in Loop: Header=BB12_23 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r14w, -176(%rbp)       # 2-byte Folded Reload
	je	.LBB12_30
# %bb.31:                               #   in Loop: Header=BB12_23 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%r12,%r14), %eax
	addl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%ax, %esi
	movq	%r15, %rdi
	callq	pbuf_try_get_at
	movl	%eax, %r13d
	shrl	$31, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jg	.LBB12_23
# %bb.32:                               # %.loopexit2
                                        #   in Loop: Header=BB12_17 Depth=2
	movq	-120(%rbp), %rdx        # 8-byte Reload
	leal	(%rdx,%r14), %ecx
	addl	%r14d, %edx
	addl	$1, %edx
	addq	%r14, -128(%rbp)        # 8-byte Folded Spill
	jmp	.LBB12_33
.LBB12_21:                              #   in Loop: Header=BB12_17 Depth=2
	movl	%r15d, %ecx
	movl	%r14d, %edx
	movq	-88(%rbp), %r15         # 8-byte Reload
.LBB12_33:                              #   in Loop: Header=BB12_17 Depth=2
	testb	%al, %al
	jne	.LBB12_36
# %bb.34:                               #   in Loop: Header=BB12_17 Depth=2
	addq	$1, -128(%rbp)          # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB12_17
# %bb.35:                               #   in Loop: Header=BB12_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$-1, %dx
	je	.LBB12_36
# %bb.37:                               #   in Loop: Header=BB12_3 Depth=1
	addl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$-1, %cx
	je	.LBB12_14
# %bb.38:                               #   in Loop: Header=BB12_3 Depth=1
	movzwl	%cx, %r12d
	movq	%r15, %rdi
	leaq	-64(%rbp), %rsi
	movl	$4, %edx
	movl	%r12d, %ecx
	callq	pbuf_copy_partial
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$4, %ax
	jne	.LBB12_14
# %bb.39:                               #   in Loop: Header=BB12_3 Depth=1
	movzwl	-62(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB12_14
# %bb.40:                               #   in Loop: Header=BB12_3 Depth=1
	movb	dns_table+292(%rdx), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %al
	je	.LBB12_43
# %bb.41:                               #   in Loop: Header=BB12_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB12_42
.LBB12_43:                              #   in Loop: Header=BB12_3 Depth=1
	movzwl	-64(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7168, %ecx             # imm = 0x1C00
	jne	.LBB12_14
# %bb.44:                               #   in Loop: Header=BB12_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %al
	jne	.LBB12_45
	jmp	.LBB12_47
.LBB12_42:                              #   in Loop: Header=BB12_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB12_45:                              #   in Loop: Header=BB12_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	je	.LBB12_47
# %bb.46:                               #   in Loop: Header=BB12_3 Depth=1
	movzwl	-64(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$256, %ecx              # imm = 0x100
	jne	.LBB12_14
.LBB12_47:                              #   in Loop: Header=BB12_3 Depth=1
	addl	$4, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65535, %r12d           # imm = 0xFFFF
	ja	.LBB12_14
# %bb.48:                               #   in Loop: Header=BB12_3 Depth=1
	testb	$15, -141(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_70
# %bb.49:                               #   in Loop: Header=BB12_3 Depth=1
	leaq	dns_table+292(%rdx), %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, -42(%rbp)           # 2-byte Folded Reload
	je	.LBB12_98
.LBB12_50:                              #   Parent Loop BB12_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_52 Depth 3
	movzwl	%r12w, %eax
	movzwl	16(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jae	.LBB12_97
# %bb.51:                               #   in Loop: Header=BB12_50 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB12_52:                              #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	%r12w, %esi
	movq	%r15, %rdi
	callq	pbuf_try_get_at
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB12_36
# %bb.53:                               #   in Loop: Header=BB12_52 Depth=3
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testw	%r12w, %r12w
	je	.LBB12_36
# %bb.54:                               #   in Loop: Header=BB12_52 Depth=3
	movl	%eax, %ebx
	andl	$192, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$192, %eax
	je	.LBB12_59
# %bb.55:                               #   in Loop: Header=BB12_52 Depth=3
	movzwl	%r12w, %eax
	addl	%eax, %ebx
	movzwl	16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ebx
	jge	.LBB12_36
# %bb.56:                               #   in Loop: Header=BB12_52 Depth=3
	movzwl	%bx, %esi
	movq	%r15, %rdi
	callq	pbuf_try_get_at
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB12_36
# %bb.57:                               #   in Loop: Header=BB12_52 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %r12d
	jne	.LBB12_52
# %bb.58:                               #   in Loop: Header=BB12_50 Depth=2
	movl	%ebx, %r12d
.LBB12_59:                              #   in Loop: Header=BB12_50 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$-1, %r12w
	je	.LBB12_36
# %bb.60:                               #   in Loop: Header=BB12_50 Depth=2
	leal	1(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$-1, %ax
	je	.LBB12_14
# %bb.61:                               #   in Loop: Header=BB12_50 Depth=2
	movzwl	%ax, %ebx
	movq	%r15, %rdi
	leaq	-104(%rbp), %rsi
	movl	$10, %edx
	movl	%ebx, %ecx
	callq	pbuf_copy_partial
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$10, %ax
	jne	.LBB12_14
# %bb.62:                               #   in Loop: Header=BB12_50 Depth=2
	addl	$10, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65535, %ebx            # imm = 0xFFFF
	ja	.LBB12_14
# %bb.63:                               #   in Loop: Header=BB12_50 Depth=2
	movzwl	-102(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB12_95
# %bb.64:                               #   in Loop: Header=BB12_50 Depth=2
	movzwl	-104(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB12_80
# %bb.65:                               #   in Loop: Header=BB12_50 Depth=2
	movzwl	-96(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB12_94
# %bb.66:                               #   in Loop: Header=BB12_50 Depth=2
	movb	(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %al
	je	.LBB12_94
# %bb.67:                               #   in Loop: Header=BB12_50 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB12_68
.LBB12_94:                              #   in Loop: Header=BB12_50 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_95
.LBB12_80:                              #   in Loop: Header=BB12_50 Depth=2
	movzwl	%ax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7168, %eax             # imm = 0x1C00
	jne	.LBB12_95
# %bb.81:                               #   in Loop: Header=BB12_50 Depth=2
	movzwl	-96(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4096, %eax             # imm = 0x1000
	jne	.LBB12_95
# %bb.82:                               #   in Loop: Header=BB12_50 Depth=2
	movb	(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %al
	je	.LBB12_84
# %bb.83:                               #   in Loop: Header=BB12_50 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	je	.LBB12_84
.LBB12_95:                              #   in Loop: Header=BB12_50 Depth=2
	addl	$11, %r12d
	movzwl	%r12w, %ebx
	movzwl	-96(%rbp), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	addl	%ebx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65535, %eax            # imm = 0xFFFF
	ja	.LBB12_14
# %bb.96:                               #   in Loop: Header=BB12_50 Depth=2
	movzwl	-96(%rbp), %edi
	callq	lwip_htons
	movzwl	%ax, %r12d
	addl	%ebx, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addw	$-1, -42(%rbp)          # 2-byte Folded Spill
	jne	.LBB12_50
	jmp	.LBB12_97
.LBB12_84:                              #   in Loop: Header=BB12_3 Depth=1
	movzwl	%bx, %ecx
	movq	%r15, %rdi
	leaq	-160(%rbp), %rsi
	movl	$16, %edx
	callq	pbuf_copy_partial
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ecx
	cmpw	$16, %ax
	jne	.LBB12_92
# %bb.85:                               #   in Loop: Header=BB12_3 Depth=1
	movq	-112(%rbp), %rbx        # 8-byte Reload
	leaq	dns_table+4(%rbx), %r14
	movaps	-160(%rbp), %xmm0
	movups	%xmm0, dns_table+4(%rbx)
	movb	$0, dns_table+20(%rbx)
	movb	$6, dns_table+24(%rbx)
	jmp	.LBB12_86
.LBB12_68:                              #   in Loop: Header=BB12_3 Depth=1
	movzwl	%bx, %ecx
	movq	%r15, %rdi
	leaq	-160(%rbp), %rsi
	movl	$4, %edx
	callq	pbuf_copy_partial
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ecx
	cmpw	$4, %ax
	jne	.LBB12_92
# %bb.69:                               #   in Loop: Header=BB12_3 Depth=1
	movl	-160(%rbp), %eax
	movq	-112(%rbp), %rbx        # 8-byte Reload
	leaq	dns_table+4(%rbx), %r14
	movl	%eax, dns_table+4(%rbx)
	movb	$0, dns_table+24(%rbx)
	movl	$0, dns_table+16(%rbx)
	movq	$0, dns_table+8(%rbx)
	movb	$0, dns_table+20(%rbx)
.LBB12_86:                              #   in Loop: Header=BB12_3 Depth=1
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	pbuf_free
	movl	-100(%rbp), %edi
	callq	lwip_htonl
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	$3, (%rcx)
	movl	%eax, dns_table(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$604801, %eax           # imm = 0x93A81
	jb	.LBB12_88
# %bb.87:                               #   in Loop: Header=BB12_3 Depth=1
	movl	$604800, -4(%r14)       # imm = 0x93A80
	movl	$42, __A_VARIABLE(%rip)
.LBB12_88:                              #   in Loop: Header=BB12_3 Depth=1
	movzbl	-80(%rbp), %edi         # 1-byte Folded Reload
	movq	%r14, %rsi
	callq	dns_call_found
	cmpl	$0, -4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_91
# %bb.89:                               #   in Loop: Header=BB12_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpb	$3, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_91
# %bb.90:                               #   in Loop: Header=BB12_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_91:                              #   in Loop: Header=BB12_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
.LBB12_92:                              #   in Loop: Header=BB12_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	-168(%rbp), %r14        # 8-byte Reload
	movzwl	-66(%rbp), %eax         # 2-byte Folded Reload
	je	.LBB12_103
# %bb.93:
	cmpl	$2, %ecx
	je	.LBB12_104
	jmp	.LBB12_106
.LBB12_30:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_104:
	movq	%r15, %rdi
	callq	pbuf_free
.LBB12_105:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_106:
	movl	$42, __A_VARIABLE(%rip)
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_97:
	movb	(%r13), %al
.LBB12_98:
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %cl
	cmpb	$2, %al
	movq	-56(%rbp), %rbx         # 8-byte Reload
	je	.LBB12_101
# %bb.99:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %al
	jne	.LBB12_79
# %bb.100:
	xorl	%ecx, %ecx
.LBB12_101:
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	pbuf_free
	movb	$1, (%rbx)
	movzbl	-80(%rbp), %edi         # 1-byte Folded Reload
	callq	dns_check_entry
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_105
.LBB12_70:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movzbl	1(%rbx), %eax
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	ja	.LBB12_78
# %bb.71:
	leaq	(,%rax,8), %rcx
	cmpb	$6, dns_servers+20(%rcx,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	dns_servers(%rcx,%rcx,2), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_77
# %bb.72:
	testl	%ecx, %ecx
	jne	.LBB12_76
# %bb.73:
	leaq	(%rax,%rax,2), %rax
	cmpl	$0, dns_servers+4(,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_76
# %bb.74:
	cmpl	$0, dns_servers+8(,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_76
# %bb.75:
	cmpl	$0, dns_servers+12(,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_76
.LBB12_78:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_79:
	movq	%r15, %rdi
	callq	pbuf_free
	movzbl	-80(%rbp), %edi         # 1-byte Folded Reload
	xorl	%esi, %esi
	callq	dns_call_found
	movb	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_105
.LBB12_77:
	testl	%ecx, %ecx
	je	.LBB12_78
.LBB12_76:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$769, dns_table+32(%rdx) # imm = 0x301
	movzbl	-80(%rbp), %edi         # 1-byte Folded Reload
	callq	dns_check_entry
	jmp	.LBB12_14
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
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
