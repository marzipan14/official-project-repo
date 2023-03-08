	.text
	.file	"netdb.c"
	.globl	lwip_gethostbyname      # -- Begin function lwip_gethostbyname
	.p2align	4, 0x90
	.type	lwip_gethostbyname,@function
lwip_gethostbyname:                     # @lwip_gethostbyname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	leaq	-32(%rbp), %rsi
	movl	$2, %edx
	callq	netconn_gethostbyname_addrtype
	testb	%al, %al
	je	.LBB0_2
# %bb.1:
	movl	$210, h_errno(%rip)
	xorl	%eax, %eax
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	%rax, lwip_gethostbyname.s_hostent_addr+16(%rip)
	movups	-32(%rbp), %xmm0
	movups	%xmm0, lwip_gethostbyname.s_hostent_addr(%rip)
	movl	$lwip_gethostbyname.s_hostent_addr, %eax
	movq	%rax, %xmm0
	movdqa	%xmm0, lwip_gethostbyname.s_phostent_addr(%rip)
	movl	$lwip_gethostbyname.s_hostname, %edi
	movl	$256, %edx              # imm = 0x100
	movq	%rbx, %rsi
	callq	strncpy
	movb	$0, lwip_gethostbyname.s_hostname+256(%rip)
	movq	$lwip_gethostbyname.s_hostname, lwip_gethostbyname.s_hostent(%rip)
	movl	$lwip_gethostbyname.s_hostent, %eax
	movq	$0, lwip_gethostbyname.s_aliases(%rip)
	movq	$lwip_gethostbyname.s_aliases, lwip_gethostbyname.s_hostent+8(%rip)
	movabsq	$103079215106, %rcx     # imm = 0x1800000002
	movq	%rcx, lwip_gethostbyname.s_hostent+16(%rip)
	movq	$lwip_gethostbyname.s_phostent_addr, lwip_gethostbyname.s_hostent+24(%rip)
.LBB0_3:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lwip_gethostbyname, .Lfunc_end0-lwip_gethostbyname
                                        # -- End function
	.globl	lwip_gethostbyname_r    # -- Begin function lwip_gethostbyname_r
	.p2align	4, 0x90
	.type	lwip_gethostbyname_r,@function
lwip_gethostbyname_r:                   # @lwip_gethostbyname_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	testq	%r9, %r9
	leaq	-68(%rbp), %r14
	cmovneq	%r9, %r14
	testq	%r8, %r8
	je	.LBB1_6
# %bb.1:
	movq	%r8, %rbx
	movq	%rdi, %r12
	movq	$0, (%r8)
	testq	%rdi, %rdi
	je	.LBB1_6
# %bb.2:
	testq	%rsi, %rsi
	je	.LBB1_6
# %bb.3:
	movq	%rdx, %r15
	testq	%rdx, %rdx
	je	.LBB1_6
# %bb.4:
	movq	%rcx, %r13
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	strlen
	leaq	49(%rax), %rcx
	cmpq	%r13, %rcx
	jbe	.LBB1_9
# %bb.5:
	movl	$34, (%r14)
	jmp	.LBB1_7
.LBB1_6:
	movl	$22, (%r14)
.LBB1_7:
	movl	$-1, %eax
.LBB1_8:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_9:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	16(%r15), %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	movl	$2, %edx
	callq	netconn_gethostbyname_addrtype
	testb	%al, %al
	je	.LBB1_11
# %bb.10:
	movl	$210, (%r14)
	jmp	.LBB1_7
.LBB1_11:
	leaq	48(%r15), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r12, %rsi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	callq	memcpy
	movb	$0, 48(%r15,%r14)
	movq	%r13, (%r15)
	movq	$0, 8(%r15)
	leaq	40(%r15), %rax
	movq	$0, 40(%r15)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%rax, 8(%rcx)
	movabsq	$103079215106, %rax     # imm = 0x1800000002
	movq	%rax, 16(%rcx)
	movq	%r15, 24(%rcx)
	movq	%rcx, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB1_8
.Lfunc_end1:
	.size	lwip_gethostbyname_r, .Lfunc_end1-lwip_gethostbyname_r
                                        # -- End function
	.globl	lwip_freeaddrinfo       # -- Begin function lwip_freeaddrinfo
	.p2align	4, 0x90
	.type	lwip_freeaddrinfo,@function
lwip_freeaddrinfo:                      # @lwip_freeaddrinfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB2_4
# %bb.1:                                # %.preheader
	movq	%rdi, %rsi
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB2_5
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	movq	40(%rsi), %rbx
	callq	*40(%rdi)
	movq	%rbx, %rsi
	testq	%rbx, %rbx
	jne	.LBB2_2
.LBB2_4:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB2_5:
	movl	$.L.str.1, %edi
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end2:
	.size	lwip_freeaddrinfo, .Lfunc_end2-lwip_freeaddrinfo
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function lwip_getaddrinfo
.LCPI3_0:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	16777216                # 0x1000000
	.text
	.globl	lwip_getaddrinfo
	.p2align	4, 0x90
	.type	lwip_getaddrinfo,@function
lwip_getaddrinfo:                       # @lwip_getaddrinfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	$0, -44(%rbp)
	testq	%rcx, %rcx
	je	.LBB3_3
# %bb.1:
	movq	%rcx, %r13
	movq	%rdi, %r14
	movq	$0, (%rcx)
	movq	%rdi, %rax
	orq	%rsi, %rax
	jne	.LBB3_5
.LBB3_2:
	movl	$200, %eax
	jmp	.LBB3_4
.LBB3_5:
	movq	%rdx, %r12
	testq	%rdx, %rdx
	je	.LBB3_9
# %bb.6:
	movl	4(%r12), %ebx
	movl	$204, %eax
	cmpl	$10, %ebx
	ja	.LBB3_4
# %bb.7:
	movl	$1029, %ecx             # imm = 0x405
	btl	%ebx, %ecx
	jae	.LBB3_4
# %bb.8:
	testq	%rsi, %rsi
	jne	.LBB3_10
	jmp	.LBB3_15
.LBB3_9:
	xorl	%ebx, %ebx
	testq	%rsi, %rsi
	je	.LBB3_15
.LBB3_10:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB3_12
# %bb.11:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB3_13
.LBB3_12:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	%rsi, %rdi
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
	callq	atoi
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
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %ecx
	jmp	.LBB3_14
.LBB3_13:
	movq	%rsi, %rdi
	callq	atoi
	movl	%eax, %ecx
	movl	%eax, -44(%rbp)
.LBB3_14:
	addl	$-1, %ecx
	movl	$201, %eax
	cmpl	$65534, %ecx            # imm = 0xFFFE
	ja	.LBB3_4
.LBB3_15:
	testq	%r14, %r14
	je	.LBB3_20
# %bb.16:
	testq	%r12, %r12
	je	.LBB3_18
# %bb.17:
	testb	$4, (%r12)
	jne	.LBB3_24
.LBB3_18:
	cmpl	$10, %ebx
	sete	%al
	movb	$2, %cl
	subb	%al, %cl
	xorl	%eax, %eax
	cmpl	$2, %ebx
	movzbl	%cl, %ecx
	cmovel	%eax, %ecx
	movzbl	%cl, %edx
	leaq	-80(%rbp), %rsi
	movq	%r14, %rdi
	callq	netconn_gethostbyname_addrtype
	testb	%al, %al
	je	.LBB3_35
.LBB3_3:
	movl	$202, %eax
.LBB3_4:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_20:
	testq	%r12, %r12
	je	.LBB3_22
# %bb.21:
	testb	$1, (%r12)
	jne	.LBB3_29
.LBB3_22:
	cmpl	$10, %ebx
	jne	.LBB3_28
# %bb.23:
	movdqa	.LCPI3_0(%rip), %xmm0   # xmm0 = [0,0,0,16777216]
	movdqa	%xmm0, -80(%rbp)
	jmp	.LBB3_31
.LBB3_24:
	leaq	-80(%rbp), %rsi
	movq	%r14, %rdi
	callq	ipaddr_aton
	testl	%eax, %eax
	je	.LBB3_2
# %bb.25:
	movb	-60(%rbp), %cl
	cmpl	$2, %ebx
	jne	.LBB3_33
# %bb.26:
	cmpb	$6, %cl
	je	.LBB3_2
.LBB3_33:
	cmpl	$10, %ebx
	jne	.LBB3_35
# %bb.34:
	movl	$200, %eax
	testb	%cl, %cl
	je	.LBB3_4
.LBB3_35:
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r15
	movl	$202, %eax
	cmpq	$256, %r15              # imm = 0x100
	ja	.LBB3_4
# %bb.36:
	movq	%r15, %rax
	movq	%r15, -88(%rbp)         # 8-byte Spill
	addq	$77, %r15
	jmp	.LBB3_40
.LBB3_28:
	movb	$0, -60(%rbp)
	movl	$16777343, %eax         # imm = 0x100007F
	movd	%eax, %xmm0
	movdqa	%xmm0, -80(%rbp)
	jmp	.LBB3_38
.LBB3_29:
	movl	$0, -80(%rbp)
	cmpl	$10, %ebx
	jne	.LBB3_37
# %bb.30:
	movq	$0, -76(%rbp)
	movl	$0, -68(%rbp)
.LBB3_31:
	movb	$0, -64(%rbp)
	movb	$6, -60(%rbp)
	jmp	.LBB3_39
.LBB3_37:
	movb	$0, -60(%rbp)
	movl	$0, -68(%rbp)
	movq	$0, -76(%rbp)
.LBB3_38:
	movb	$0, -64(%rbp)
.LBB3_39:
	movl	$76, %r15d
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB3_40:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB3_51
# %bb.41:
	movq	%r15, %rsi
	callq	*(%rdi)
	testq	%rax, %rax
	je	.LBB3_44
# %bb.42:
	movq	%rax, %rbx
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	memset
	cmpb	$6, -60(%rbp)
	movl	-80(%rbp), %eax
	jne	.LBB3_45
# %bb.43:
	movl	%eax, 56(%rbx)
	movl	-76(%rbp), %eax
	movl	%eax, 60(%rbx)
	movl	-72(%rbp), %eax
	movl	%eax, 64(%rbx)
	movl	-68(%rbp), %eax
	movl	%eax, 68(%rbx)
	movw	$2588, 48(%rbx)         # imm = 0xA1C
	movzwl	-44(%rbp), %edi
	callq	lwip_htons
	movw	%ax, 50(%rbx)
	movzbl	-64(%rbp), %eax
	movl	%eax, 72(%rbx)
	movl	$10, %eax
	jmp	.LBB3_46
.LBB3_44:
	movl	$203, %eax
	jmp	.LBB3_4
.LBB3_45:
	movl	%eax, 52(%rbx)
	movw	$528, 48(%rbx)          # imm = 0x210
	movzwl	-44(%rbp), %edi
	callq	lwip_htons
	movw	%ax, 50(%rbx)
	movl	$2, %eax
.LBB3_46:
	movl	%eax, 4(%rbx)
	testq	%r12, %r12
	je	.LBB3_48
# %bb.47:
	movl	8(%r12), %eax
	movl	%eax, 8(%rbx)
	movl	12(%r12), %eax
	movl	%eax, 12(%rbx)
.LBB3_48:
	leaq	48(%rbx), %r15
	testq	%r14, %r14
	je	.LBB3_50
# %bb.49:
	movq	%rbx, %rdi
	addq	$76, %rdi
	movq	%rdi, 32(%rbx)
	movq	%r14, %rsi
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	callq	memcpy
	movq	32(%rbx), %rax
	movb	$0, (%rax,%r14)
.LBB3_50:
	movl	$28, 16(%rbx)
	movq	%r15, 24(%rbx)
	movq	%rbx, (%r13)
	xorl	%eax, %eax
	jmp	.LBB3_4
.LBB3_51:
	callq	__errno
	movl	$12, (%rax)
	movl	$203, %eax
	jmp	.LBB3_4
.Lfunc_end3:
	.size	lwip_getaddrinfo, .Lfunc_end3-lwip_getaddrinfo
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
	movl	$uk_pr_crit.__str.5, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	uk_pr_crit, .Lfunc_end4-uk_pr_crit
                                        # -- End function
	.type	lwip_gethostbyname.s_hostent,@object # @lwip_gethostbyname.s_hostent
	.local	lwip_gethostbyname.s_hostent
	.comm	lwip_gethostbyname.s_hostent,32,8
	.type	lwip_gethostbyname.s_aliases,@object # @lwip_gethostbyname.s_aliases
	.local	lwip_gethostbyname.s_aliases
	.comm	lwip_gethostbyname.s_aliases,8,8
	.type	lwip_gethostbyname.s_hostent_addr,@object # @lwip_gethostbyname.s_hostent_addr
	.local	lwip_gethostbyname.s_hostent_addr
	.comm	lwip_gethostbyname.s_hostent_addr,24,4
	.type	lwip_gethostbyname.s_phostent_addr,@object # @lwip_gethostbyname.s_phostent_addr
	.local	lwip_gethostbyname.s_phostent_addr
	.comm	lwip_gethostbyname.s_phostent_addr,16,16
	.type	lwip_gethostbyname.s_hostname,@object # @lwip_gethostbyname.s_hostname
	.local	lwip_gethostbyname.s_hostname
	.comm	lwip_gethostbyname.s_hostname,257,16
	.type	h_errno,@object         # @h_errno
	.comm	h_errno,4,4
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.1, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"a"
	.size	.L.str.4, 2

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.5,@object # @uk_pr_crit.__str.5
uk_pr_crit.__str.5:
	.asciz	"netdb.c"
	.size	uk_pr_crit.__str.5, 8

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
