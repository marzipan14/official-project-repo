	.text
	.file	"ip4_addr.c"
	.globl	ip4_addr_isbroadcast_u32 # -- Begin function ip4_addr_isbroadcast_u32
	.p2align	4, 0x90
	.type	ip4_addr_isbroadcast_u32,@function
ip4_addr_isbroadcast_u32:               # @ip4_addr_isbroadcast_u32
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	leal	1(%rdi), %ecx
	movb	$1, %al
	cmpl	$2, %ecx
	jb	.LBB0_6
# %bb.1:
	testb	$2, 261(%rsi)
	je	.LBB0_5
# %bb.2:
	movl	8(%rsi), %edx
	cmpl	%edi, %edx
	je	.LBB0_5
# %bb.3:
	movl	32(%rsi), %ecx
	xorl	%edi, %edx
	testl	%edx, %ecx
	jne	.LBB0_5
# %bb.4:
	notl	%ecx
	andl	%ecx, %edi
	cmpl	%ecx, %edi
	je	.LBB0_6
.LBB0_5:
	xorl	%eax, %eax
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end0:
	.size	ip4_addr_isbroadcast_u32, .Lfunc_end0-ip4_addr_isbroadcast_u32
                                        # -- End function
	.globl	ip4_addr_netmask_valid  # -- Begin function ip4_addr_netmask_valid
	.p2align	4, 0x90
	.type	ip4_addr_netmask_valid,@function
ip4_addr_netmask_valid:                 # @ip4_addr_netmask_valid
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	lwip_htonl
	movl	$-2147483648, %ecx      # imm = 0x80000000
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	shrl	%ecx
	testl	%eax, %edx
	jne	.LBB1_1
# %bb.2:
	movb	$1, %cl
	testl	%edx, %edx
	je	.LBB1_6
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	testl	%eax, %edx
	jne	.LBB1_5
# %bb.3:                                #   in Loop: Header=BB1_4 Depth=1
	shrl	%edx
	jne	.LBB1_4
	jmp	.LBB1_6
.LBB1_5:
	xorl	%ecx, %ecx
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ip4_addr_netmask_valid, .Lfunc_end1-ip4_addr_netmask_valid
                                        # -- End function
	.globl	ipaddr_addr             # -- Begin function ipaddr_addr
	.p2align	4, 0x90
	.type	ipaddr_addr,@function
ipaddr_addr:                            # @ipaddr_addr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rsi
	callq	ip4addr_aton
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	orl	-8(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ipaddr_addr, .Lfunc_end2-ipaddr_addr
                                        # -- End function
	.globl	ip4addr_aton            # -- Begin function ip4addr_aton
	.p2align	4, 0x90
	.type	ip4addr_aton,@function
ip4addr_aton:                           # @ip4addr_aton
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdi, %r12
	leaq	-64(%rbp), %rax
	.p2align	4, 0x90
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_13 Depth 2
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movb	(%r12), %r14b
	movzbl	%r14b, %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB3_4
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
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
	callq	isdigit
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
	jmp	.LBB3_5
	.p2align	4, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andl	$4, %eax
	movl	%eax, -44(%rbp)
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	cmpl	$0, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_32
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
	movl	$10, -48(%rbp)          # 4-byte Folded Spill
	cmpb	$48, %r14b
	jne	.LBB3_10
# %bb.7:                                #   in Loop: Header=BB3_1 Depth=1
	movb	1(%r12), %r14b
	movl	%r14d, %eax
	orb	$32, %al
	cmpb	$120, %al
	jne	.LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_1 Depth=1
	movb	2(%r12), %r14b
	addq	$2, %r12
	movl	$16, -48(%rbp)          # 4-byte Folded Spill
	jmp	.LBB3_10
.LBB3_9:                                #   in Loop: Header=BB3_1 Depth=1
	addq	$1, %r12
	movl	$8, -48(%rbp)           # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB3_10:                               #   in Loop: Header=BB3_1 Depth=1
	addq	$1, %r12
	xorl	%r13d, %r13d
	jmp	.LBB3_13
	.p2align	4, 0x90
.LBB3_11:                               #   in Loop: Header=BB3_13 Depth=2
	imull	-48(%rbp), %r13d        # 4-byte Folded Reload
	movsbl	%r14b, %eax
	addl	%eax, %r13d
	addl	$-48, %r13d
.LBB3_12:                               #   in Loop: Header=BB3_13 Depth=2
	movzbl	(%r12), %r14d
	addq	$1, %r12
.LBB3_13:                               #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r14b, %ebx
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB3_15
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB3_16
.LBB3_15:                               #   in Loop: Header=BB3_13 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
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
	callq	isdigit
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
	jmp	.LBB3_17
	.p2align	4, 0x90
.LBB3_16:                               #   in Loop: Header=BB3_13 Depth=2
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andl	$4, %eax
	movl	%eax, -44(%rbp)
.LBB3_17:                               #   in Loop: Header=BB3_13 Depth=2
	cmpl	$0, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_11
# %bb.18:                               #   in Loop: Header=BB3_13 Depth=2
	cmpl	$16, -48(%rbp)          # 4-byte Folded Reload
	jne	.LBB3_21
# %bb.19:                               #   in Loop: Header=BB3_13 Depth=2
	callq	__locale_ctype_ptr
	testb	$68, 1(%rax,%rbx)
	je	.LBB3_21
# %bb.20:                               #   in Loop: Header=BB3_13 Depth=2
	shll	$4, %r13d
	movsbl	%r14b, %r14d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andb	$3, %al
	xorl	%ecx, %ecx
	cmpb	$2, %al
	setne	%cl
	shll	$5, %ecx
	leal	(%rcx,%r14), %eax
	addl	$-87, %eax
	orl	%r13d, %eax
	movl	%eax, %r13d
	jmp	.LBB3_12
	.p2align	4, 0x90
.LBB3_21:                               #   in Loop: Header=BB3_1 Depth=1
	cmpb	$46, %r14b
	jne	.LBB3_25
# %bb.22:                               #   in Loop: Header=BB3_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	-52(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB3_32
# %bb.23:                               #   in Loop: Header=BB3_1 Depth=1
	movl	%r13d, (%rax)
	addq	$4, %rax
	jmp	.LBB3_1
.LBB3_32:
	xorl	%r15d, %r15d
.LBB3_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_25:
	testb	%r14b, %r14b
	je	.LBB3_27
# %bb.26:
	callq	__locale_ctype_ptr
	xorl	%r15d, %r15d
	testb	$8, 1(%rax,%rbx)
	je	.LBB3_33
.LBB3_27:
	leaq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, %rax
	sarq	$2, %rax
	addq	$1, %rax
	cmpq	$4, %rax
	ja	.LBB3_46
# %bb.28:
	xorl	%r15d, %r15d
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_29:
	cmpl	$16777215, %r13d        # imm = 0xFFFFFF
	ja	.LBB3_33
# %bb.30:
	movl	-64(%rbp), %eax
	cmpl	$255, %eax
	ja	.LBB3_33
# %bb.31:
	shll	$24, %eax
	orl	%r13d, %eax
	jmp	.LBB3_43
.LBB3_34:
	cmpl	$255, %r13d
	ja	.LBB3_33
# %bb.35:
	movl	-64(%rbp), %eax
	cmpl	$255, %eax
	ja	.LBB3_33
# %bb.36:
	movl	-60(%rbp), %ecx
	cmpl	$255, %ecx
	ja	.LBB3_33
# %bb.37:
	movl	-56(%rbp), %edx
	cmpl	$255, %edx
	ja	.LBB3_33
# %bb.38:
	shll	$24, %eax
	shll	$16, %ecx
	shll	$8, %edx
	orl	%ecx, %edx
	orl	%r13d, %eax
	orl	%edx, %eax
	jmp	.LBB3_43
.LBB3_39:
	cmpl	$65535, %r13d           # imm = 0xFFFF
	ja	.LBB3_33
# %bb.40:
	movl	-64(%rbp), %eax
	cmpl	$255, %eax
	ja	.LBB3_33
# %bb.41:
	movl	-60(%rbp), %ecx
	cmpl	$255, %ecx
	ja	.LBB3_33
# %bb.42:
	shll	$24, %eax
	shll	$16, %ecx
	orl	%r13d, %eax
	orl	%ecx, %eax
.LBB3_43:
	movl	%eax, %r13d
.LBB3_44:
	movl	$1, %r15d
	movq	-80(%rbp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB3_33
# %bb.45:
	movl	%r13d, %edi
	callq	lwip_htonl
	movl	%eax, (%rbx)
	jmp	.LBB3_33
.LBB3_46:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end3:
	.size	ip4addr_aton, .Lfunc_end3-ip4addr_aton
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_33
	.quad	.LBB3_44
	.quad	.LBB3_29
	.quad	.LBB3_39
	.quad	.LBB3_34
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
	movl	$uk_pr_crit.__str.3, %edx
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
	.globl	ip4addr_ntoa            # -- Begin function ip4addr_ntoa
	.p2align	4, 0x90
	.type	ip4addr_ntoa,@function
ip4addr_ntoa:                           # @ip4addr_ntoa
# %bb.0:
	pushq	%rax
	leaq	4(%rsp), %r10
	movl	(%rdi), %ecx
	movl	%ecx, 4(%rsp)
	movl	$ip4addr_ntoa.str, %r11d
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_2 Depth 2
                                        #     Child Loop BB5_5 Depth 2
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB5_2:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%cl, %ecx
	imull	$205, %ecx, %edx
	shrl	$11, %edx
	leal	(%rdx,%rdx), %esi
	leal	(%rsi,%rsi,4), %esi
	subb	%sil, %cl
	movb	%dl, (%r10)
	orb	$48, %cl
	movzbl	%dil, %esi
	addb	$1, %dil
	movb	%cl, 1(%rsp,%rsi)
	movzbl	(%r10), %ecx
	testb	%cl, %cl
	jne	.LBB5_2
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	leal	1(%r9), %edx
	cmpl	$15, %r9d
	setg	%cl
	testb	%dil, %dil
	je	.LBB5_4
	.p2align	4, 0x90
.LBB5_5:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$1, %cl
	jne	.LBB5_11
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=2
	movzbl	1(%rsp,%rsi), %ecx
	movb	%cl, (%r11)
	addq	$1, %r11
	leal	1(%rdx), %r9d
	cmpl	$15, %edx
	setg	%cl
	movl	%r9d, %edx
	addq	$-1, %rsi
	jb	.LBB5_5
# %bb.7:                                #   in Loop: Header=BB5_1 Depth=1
	testb	%cl, %cl
	je	.LBB5_8
	jmp	.LBB5_11
	.p2align	4, 0x90
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	movl	%edx, %r9d
	testb	%cl, %cl
	jne	.LBB5_11
.LBB5_8:                                #   in Loop: Header=BB5_1 Depth=1
	movb	$46, (%r11)
	addb	$1, %r8b
	cmpb	$3, %r8b
	ja	.LBB5_10
# %bb.9:                                #   in Loop: Header=BB5_1 Depth=1
	addq	$1, %r10
	addq	$1, %r11
	movb	(%r10), %cl
	jmp	.LBB5_1
.LBB5_10:
	movb	$0, (%r11)
	movl	$ip4addr_ntoa.str, %eax
.LBB5_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rcx
	retq
.Lfunc_end5:
	.size	ip4addr_ntoa, .Lfunc_end5-ip4addr_ntoa
                                        # -- End function
	.globl	ip4addr_ntoa_r          # -- Begin function ip4addr_ntoa_r
	.p2align	4, 0x90
	.type	ip4addr_ntoa_r,@function
ip4addr_ntoa_r:                         # @ip4addr_ntoa_r
# %bb.0:
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rax
	leaq	4(%rsp), %r10
	movl	(%rdi), %edi
	movl	%edi, 4(%rsp)
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rsi, %r11
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
                                        #     Child Loop BB6_4 Depth 2
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB6_2:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%dil, %edi
	imull	$205, %edi, %esi
	shrl	$11, %esi
	leal	(%rsi,%rsi), %ebx
	leal	(%rbx,%rbx,4), %ebx
	subb	%bl, %dil
	movb	%sil, (%r10)
	orb	$48, %dil
	movzbl	%cl, %esi
	addb	$1, %cl
	movb	%dil, 1(%rsp,%rsi)
	movzbl	(%r10), %edi
	testb	%dil, %dil
	jne	.LBB6_2
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	leal	1(%r9), %ebx
	cmpl	%edx, %r9d
	setge	%dil
	testb	%cl, %cl
	je	.LBB6_7
	.p2align	4, 0x90
.LBB6_4:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$1, %dil
	jne	.LBB6_10
# %bb.5:                                #   in Loop: Header=BB6_4 Depth=2
	movzbl	1(%rsp,%rsi), %ecx
	movb	%cl, (%r11)
	addq	$1, %r11
	leal	1(%rbx), %r9d
	cmpl	%edx, %ebx
	setge	%dil
	movl	%r9d, %ebx
	addq	$-1, %rsi
	jb	.LBB6_4
# %bb.6:                                #   in Loop: Header=BB6_1 Depth=1
	testb	%dil, %dil
	je	.LBB6_8
	jmp	.LBB6_10
	.p2align	4, 0x90
.LBB6_7:                                #   in Loop: Header=BB6_1 Depth=1
	movl	%ebx, %r9d
	testb	%dil, %dil
	jne	.LBB6_10
.LBB6_8:                                #   in Loop: Header=BB6_1 Depth=1
	movb	$46, (%r11)
	addb	$1, %r8b
	cmpb	$3, %r8b
	ja	.LBB6_13
# %bb.9:                                #   in Loop: Header=BB6_1 Depth=1
	addq	$1, %r10
	addq	$1, %r11
	movb	(%r10), %dil
	jmp	.LBB6_1
.LBB6_10:
	xorl	%eax, %eax
.LBB6_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	retq
.LBB6_13:
	movb	$0, (%r11)
	jmp	.LBB6_11
.Lfunc_end6:
	.size	ip4addr_ntoa_r, .Lfunc_end6-ip4addr_ntoa_r
                                        # -- End function
	.type	ip_addr_any,@object     # @ip_addr_any
	.section	.rodata,"a",@progbits
	.globl	ip_addr_any
	.p2align	2
ip_addr_any:
	.zero	24
	.size	ip_addr_any, 24

	.type	ip_addr_broadcast,@object # @ip_addr_broadcast
	.globl	ip_addr_broadcast
	.p2align	2
ip_addr_broadcast:
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.zero	3
	.byte	0                       # 0x0
	.zero	3
	.size	ip_addr_broadcast, 24

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unhandled"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"!(1)"
	.size	.L.str.2, 5

	.type	ip4addr_ntoa.str,@object # @ip4addr_ntoa.str
	.local	ip4addr_ntoa.str
	.comm	ip4addr_ntoa.str,16,16
	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.3,@object # @uk_pr_crit.__str.3
uk_pr_crit.__str.3:
	.asciz	"ip4_addr.c"
	.size	uk_pr_crit.__str.3, 11

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
