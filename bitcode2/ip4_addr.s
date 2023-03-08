	.text
	.file	"ip4_addr.c"
	.globl	ip4_addr_isbroadcast_u32 # -- Begin function ip4_addr_isbroadcast_u32
	.p2align	4, 0x90
	.type	ip4_addr_isbroadcast_u32,@function
ip4_addr_isbroadcast_u32:               # @ip4_addr_isbroadcast_u32
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	leal	1(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %al
	cmpl	$2, %ecx
	jb	.LBB0_6
# %bb.1:
	testb	$2, 261(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_5
# %bb.2:
	movl	8(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %edx
	je	.LBB0_5
# %bb.3:
	movl	32(%rsi), %ecx
	xorl	%edi, %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %ecx
	jne	.LBB0_5
# %bb.4:
	notl	%ecx
	andl	%ecx, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %edi
	je	.LBB0_6
.LBB0_5:
	xorl	%eax, %eax
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2147483648, %edx      # imm = 0x80000000
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %edx
	je	.LBB1_2
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	movl	%edx, %ecx
	shrl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %ecx
	je	.LBB1_4
# %bb.10:                               #   in Loop: Header=BB1_1 Depth=1
	shrl	$2, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_1
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_8
.LBB1_2:
	movl	%edx, %ecx
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %ecx
	jne	.LBB1_6
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=1
	shrl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_5
.LBB1_8:
	movb	$1, %al
	jmp	.LBB1_9
.LBB1_6:
	xorl	%eax, %eax
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
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
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	sbbl	%ecx, %ecx
	orl	-8(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movb	(%rdi), %r13b
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %r15d
	.p2align	4, 0x90
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r13b, %ebx
	cmpq	%r15, %rax
	jb	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ebx
	je	.LBB3_34
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$10, -48(%rbp)          # 4-byte Folded Spill
	cmpb	$48, %r13b
	jne	.LBB3_12
# %bb.7:                                #   in Loop: Header=BB3_1 Depth=1
	movb	1(%r12), %r13b
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$120, %r13b
	je	.LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$88, %r13b
	jne	.LBB3_10
.LBB3_9:                                #   in Loop: Header=BB3_1 Depth=1
	movb	2(%r12), %r13b
	addq	$2, %r12
	movl	$16, -48(%rbp)          # 4-byte Folded Spill
	jmp	.LBB3_11
.LBB3_10:                               #   in Loop: Header=BB3_1 Depth=1
	addq	$1, %r12
	movl	$8, -48(%rbp)           # 4-byte Folded Spill
.LBB3_11:                               #   in Loop: Header=BB3_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB3_12:                               #   in Loop: Header=BB3_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	jmp	.LBB3_15
	.p2align	4, 0x90
.LBB3_13:                               #   in Loop: Header=BB3_15 Depth=2
	imull	-48(%rbp), %r14d        # 4-byte Folded Reload
	movsbl	%r13b, %eax
	addl	%eax, %r14d
	addl	$-48, %r14d
	leaq	1(%r12), %rax
.LBB3_14:                               #   in Loop: Header=BB3_15 Depth=2
	movzbl	1(%r12), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r12
.LBB3_15:                               #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jb	.LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB3_18
.LBB3_17:                               #   in Loop: Header=BB3_15 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r13b, %edi
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
	jmp	.LBB3_19
	.p2align	4, 0x90
.LBB3_18:                               #   in Loop: Header=BB3_15 Depth=2
	callq	__locale_ctype_ptr
	movzbl	%r13b, %ecx
	movzbl	1(%rax,%rcx), %eax
	andl	$4, %eax
	movl	%eax, -44(%rbp)
.LBB3_19:                               #   in Loop: Header=BB3_15 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_13
# %bb.20:                               #   in Loop: Header=BB3_15 Depth=2
	movl	$_intrstack_start, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, -48(%rbp)          # 4-byte Folded Reload
	jne	.LBB3_23
# %bb.21:                               #   in Loop: Header=BB3_15 Depth=2
	callq	__locale_ctype_ptr
	movzbl	%r13b, %ebx
	testb	$68, 1(%rax,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_23
# %bb.22:                               #   in Loop: Header=BB3_15 Depth=2
	shll	$4, %r14d
	movsbl	%r13b, %r15d
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andb	$3, %al
	xorl	%ecx, %ecx
	cmpb	$2, %al
	setne	%cl
	shll	$5, %ecx
	addl	%r15d, %ecx
	addl	$-87, %ecx
	orl	%r14d, %ecx
	leaq	1(%r12), %rax
	movl	%ecx, %r14d
	movl	$_intrstack_start, %ebx
	jmp	.LBB3_14
	.p2align	4, 0x90
.LBB3_23:                               #   in Loop: Header=BB3_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %r13b
	jne	.LBB3_27
# %bb.24:                               #   in Loop: Header=BB3_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	-52(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB3_34
# %bb.25:                               #   in Loop: Header=BB3_1 Depth=1
	movl	%r14d, (%rax)
	addq	$4, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movb	1(%r12), %r13b
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_1
.LBB3_34:
	xorl	%r15d, %r15d
.LBB3_35:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB3_27:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r13b, %r13b
	je	.LBB3_29
# %bb.28:
	callq	__locale_ctype_ptr
	movzbl	%r13b, %ecx
	xorl	%r15d, %r15d
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_35
.LBB3_29:
	leaq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, %rax
	sarq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	cmpq	$4, %rax
	ja	.LBB3_48
# %bb.30:
	xorl	%r15d, %r15d
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_31:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16777215, %r14d        # imm = 0xFFFFFF
	ja	.LBB3_35
# %bb.32:
	movl	-64(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %eax
	ja	.LBB3_35
# %bb.33:
	shll	$24, %eax
	orl	%r14d, %eax
	jmp	.LBB3_45
.LBB3_36:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %r14d
	ja	.LBB3_35
# %bb.37:
	movl	-64(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %eax
	ja	.LBB3_35
# %bb.38:
	movl	-60(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %ecx
	ja	.LBB3_35
# %bb.39:
	movl	-56(%rbp), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %edx
	ja	.LBB3_35
# %bb.40:
	shll	$24, %eax
	shll	$16, %ecx
	shll	$8, %edx
	orl	%ecx, %edx
	orl	%r14d, %eax
	orl	%edx, %eax
	jmp	.LBB3_45
.LBB3_41:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$65535, %r14d           # imm = 0xFFFF
	ja	.LBB3_35
# %bb.42:
	movl	-64(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %eax
	ja	.LBB3_35
# %bb.43:
	movl	-60(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %ecx
	ja	.LBB3_35
# %bb.44:
	shll	$24, %eax
	shll	$16, %ecx
	orl	%r14d, %eax
	orl	%ecx, %eax
.LBB3_45:
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB3_46:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	movq	-80(%rbp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB3_35
# %bb.47:
	movl	%r14d, %edi
	callq	lwip_htonl
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_35
.LBB3_48:
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
	.quad	.LBB3_35
	.quad	.LBB3_46
	.quad	.LBB3_31
	.quad	.LBB3_41
	.quad	.LBB3_36
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
	pushq	%rbx
	pushq	%rax
	leaq	4(%rsp), %rbx
	movl	(%rdi), %eax
	movl	%eax, 4(%rsp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$ip4addr_ntoa.str, %r8d
	xorl	%eax, %eax
	xorl	%r11d, %r11d
	xorl	%r9d, %r9d
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_2 Depth 2
                                        #     Child Loop BB5_6 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB5_2:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx), %esi
	imull	$205, %esi, %edx
	shrl	$11, %edx
	leal	(%rdx,%rdx), %ecx
	leal	(%rcx,%rcx,4), %ecx
	subb	%cl, %sil
	movb	%dl, (%rbx)
	orb	$48, %sil
	movzbl	%dil, %edx
	addb	$1, %dil
	movb	%sil, 1(%rsp,%rdx)
	cmpb	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_2
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	leal	1(%r11), %esi
	cmpl	$15, %r11d
	setg	%r10b
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%dil, %dil
	je	.LBB5_4
# %bb.5:                                # %.preheader
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	%r8, %rdi
	.p2align	4, 0x90
.LBB5_6:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$1, %r10b
	jne	.LBB5_11
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=2
	movzbl	1(%rsp,%rdx), %ecx
	movb	%cl, (%rdi)
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rsi), %r11d
	cmpl	$15, %esi
	setg	%r10b
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r11d, %esi
	addq	$-1, %rdx
	jb	.LBB5_6
# %bb.8:                                #   in Loop: Header=BB5_1 Depth=1
	testb	%r10b, %r10b
	je	.LBB5_9
	jmp	.LBB5_11
	.p2align	4, 0x90
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	movq	%r8, %rdi
	movl	%esi, %r11d
	testb	%r10b, %r10b
	jne	.LBB5_11
.LBB5_9:                                #   in Loop: Header=BB5_1 Depth=1
	leaq	1(%rdi), %r8
	movb	$46, (%rdi)
	addq	$1, %rbx
	addb	$1, %r9b
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %r9b
	jb	.LBB5_1
# %bb.10:
	movb	$0, (%rdi)
	movl	$ip4addr_ntoa.str, %eax
.LBB5_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	retq
.Lfunc_end5:
	.size	ip4addr_ntoa, .Lfunc_end5-ip4addr_ntoa
                                        # -- End function
	.globl	ip4addr_ntoa_r          # -- Begin function ip4addr_ntoa_r
	.p2align	4, 0x90
	.type	ip4addr_ntoa_r,@function
ip4addr_ntoa_r:                         # @ip4addr_ntoa_r
# %bb.0:
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rax
	leaq	4(%rsp), %r14
	movl	(%rdi), %esi
	movl	%esi, 4(%rsp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r8d, %r8d
	xorl	%r10d, %r10d
	movq	%rax, %r9
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_2 Depth 2
                                        #     Child Loop BB6_5 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB6_2:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14), %ebx
	imull	$205, %ebx, %edi
	shrl	$11, %edi
	leal	(%rdi,%rdi), %ecx
	leal	(%rcx,%rcx,4), %ecx
	subb	%cl, %bl
	movb	%dil, (%r14)
	orb	$48, %bl
	movzbl	%sil, %edi
	addb	$1, %sil
	movb	%bl, 1(%rsp,%rdi)
	cmpb	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_2
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	leal	1(%r10), %ebx
	cmpl	%edx, %r10d
	setge	%r11b
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%sil, %sil
	je	.LBB6_8
# %bb.4:                                # %.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	%r9, %rsi
	.p2align	4, 0x90
.LBB6_5:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$1, %r11b
	jne	.LBB6_11
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=2
	movzbl	1(%rsp,%rdi), %ecx
	movb	%cl, (%rsi)
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rbx), %r10d
	cmpl	%edx, %ebx
	setge	%r11b
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r10d, %ebx
	addq	$-1, %rdi
	jb	.LBB6_5
# %bb.7:                                #   in Loop: Header=BB6_1 Depth=1
	testb	%r11b, %r11b
	je	.LBB6_9
	jmp	.LBB6_11
	.p2align	4, 0x90
.LBB6_8:                                #   in Loop: Header=BB6_1 Depth=1
	movq	%r9, %rsi
	movl	%ebx, %r10d
	testb	%r11b, %r11b
	jne	.LBB6_11
.LBB6_9:                                #   in Loop: Header=BB6_1 Depth=1
	leaq	1(%rsi), %r9
	movb	$46, (%rsi)
	addq	$1, %r14
	addb	$1, %r8b
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %r8b
	jb	.LBB6_1
# %bb.10:
	movb	$0, (%rsi)
	jmp	.LBB6_12
.LBB6_11:
	xorl	%eax, %eax
.LBB6_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
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
