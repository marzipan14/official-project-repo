	.text
	.file	"ip6_addr.c"
	.globl	ip6addr_aton            # -- Begin function ip6addr_aton
	.p2align	4, 0x90
	.type	ip6addr_aton,@function
ip6addr_aton:                           # @ip6addr_aton
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %r13
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdi), %al
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	je	.LBB0_1
# %bb.2:                                # %.preheader5
	leaq	1(%r13), %rbx
	movl	$8, %r14d
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	addl	$-1, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rbx), %eax
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_11
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$58, %al
	je	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %al
	je	.LBB0_6
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	callq	__locale_ctype_ptr
	movzbl	-1(%rbx), %ecx
	testb	$68, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_10
.LBB0_11:
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	movq	-64(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_12
.LBB0_1:
	movq	%rsi, %rbx
	movl	$8, %r14d
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_12
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %r14d
	movq	-64(%rbp), %rbx         # 8-byte Reload
	je	.LBB0_8
# %bb.7:
	cmpl	$2, %r14d
	jne	.LBB0_41
.LBB0_8:
	addl	$-1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -48(%rbp)           # 4-byte Folded Spill
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %r12d
	movl	$0, %edx
	testb	%al, %al
	je	.LBB0_53
# %bb.13:
	xorl	%edx, %edx
	xorl	%r12d, %r12d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_14
.LBB0_50:                               #   in Loop: Header=BB0_14 Depth=1
	movl	%edx, %r15d
	callq	__locale_ctype_ptr
	movsbl	(%r13), %ecx
	movzbl	%cl, %edx
	movb	1(%rax,%rdx), %al
	andb	$3, %al
	xorl	%edx, %edx
	cmpb	$2, %al
	setne	%dl
	shll	$5, %edx
	leal	(%rdx,%rcx), %eax
	addl	$-87, %eax
	movl	%r15d, %edx
.LBB0_51:                               #   in Loop: Header=BB0_14 Depth=1
	addl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_52:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%r13), %al
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_53
.LBB0_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_33 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$58, %al
	jne	.LBB0_42
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_20
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r12b
	jne	.LBB0_17
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=1
	shll	$16, %edx
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%edx, (%rbx,%rax,4)
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_42:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%r13, %rbx
	movl	%edx, -52(%rbp)         # 4-byte Spill
	callq	__locale_ctype_ptr
	movzbl	(%r13), %ebx
	testb	$68, 1(%rax,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_43
# %bb.44:                               #   in Loop: Header=BB0_14 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB0_47
# %bb.45:                               #   in Loop: Header=BB0_14 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB0_46
.LBB0_47:                               #   in Loop: Header=BB0_14 Depth=1
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
	movl	%r11d, -68(%rbp)

	#NO_APP
	jmp	.LBB0_48
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=1
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	addl	$1, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	orl	%edx, (%rbx,%rax,4)
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=1
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB0_27
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=1
	cmpl	$6, %r12d
	jne	.LBB0_27
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=1
	leaq	1(%r13), %r15
	movq	%r15, %rdi
	leaq	-72(%rbp), %rsi
	callq	ip4addr_aton
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_29
	.p2align	4, 0x90
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %r12d
	ja	.LBB0_41
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=1
	leaq	1(%r13), %r15
.LBB0_29:                               #   in Loop: Header=BB0_14 Depth=1
	xorl	%edx, %edx
	cmpb	$58, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_52
# %bb.30:                               #   in Loop: Header=BB0_14 Depth=1
	cmpb	$58, 2(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_31
# %bb.32:                               # %.preheader
                                        #   in Loop: Header=BB0_14 Depth=1
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB0_33
	.p2align	4, 0x90
.LBB0_36:                               #   in Loop: Header=BB0_33 Depth=2
	addl	$1, %ecx
.LBB0_39:                               #   in Loop: Header=BB0_33 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_40:                               #   in Loop: Header=BB0_33 Depth=2
	addl	$-1, %r14d
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %r12d
	jae	.LBB0_41
.LBB0_33:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB0_34
# %bb.35:                               #   in Loop: Header=BB0_33 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r12b
	jne	.LBB0_36
# %bb.37:                               #   in Loop: Header=BB0_33 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_40
# %bb.38:                               #   in Loop: Header=BB0_33 Depth=2
	movl	%ecx, %eax
	movl	$0, (%rbx,%rax,4)
	jmp	.LBB0_39
.LBB0_46:                               #   in Loop: Header=BB0_14 Depth=1
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andl	$4, %eax
	movl	%eax, -68(%rbp)
.LBB0_48:                               #   in Loop: Header=BB0_14 Depth=1
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movl	-52(%rbp), %edx         # 4-byte Reload
	shll	$4, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_14 Depth=1
	movsbl	(%r13), %eax
	addl	$-48, %eax
	jmp	.LBB0_51
.LBB0_34:                               #   in Loop: Header=BB0_14 Depth=1
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	movq	%r15, %r13
	jmp	.LBB0_52
.LBB0_41:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB0_59
.LBB0_43:
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movl	-52(%rbp), %edx         # 4-byte Reload
.LBB0_53:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_58
# %bb.54:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r12b
	jne	.LBB0_55
# %bb.56:
	shll	$16, %edx
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%edx, (%rbx,%rax,4)
	jmp	.LBB0_57
.LBB0_55:
	movl	-44(%rbp), %eax         # 4-byte Reload
	orl	%edx, (%rbx,%rax,4)
.LBB0_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %edi
	callq	lwip_htonl
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rbx), %edi
	callq	lwip_htonl
	movl	%eax, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rbx), %edi
	callq	lwip_htonl
	movl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%rbx), %edi
	callq	lwip_htonl
	movl	%eax, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_58:
	xorl	%eax, %eax
	cmpl	$7, %r12d
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_59:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_24:
	testq	%rbx, %rbx
	je	.LBB0_25
# %bb.26:
	movl	-72(%rbp), %edi
	callq	lwip_htonl
	movl	%eax, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$7, %r12d
	jmp	.LBB0_57
.LBB0_31:
	xorl	%eax, %eax
	jmp	.LBB0_59
.LBB0_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB0_59
.Lfunc_end0:
	.size	ip6addr_aton, .Lfunc_end0-ip6addr_aton
                                        # -- End function
	.globl	ip6addr_ntoa            # -- Begin function ip6addr_ntoa
	.p2align	4, 0x90
	.type	ip6addr_ntoa,@function
ip6addr_ntoa:                           # @ip6addr_ntoa
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$ip6addr_ntoa.str, %esi
	movl	$40, %edx
	callq	ip6addr_ntoa_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ip6addr_ntoa, .Lfunc_end1-ip6addr_ntoa
                                        # -- End function
	.globl	ip6addr_ntoa_r          # -- Begin function ip6addr_ntoa_r
	.p2align	4, 0x90
	.type	ip6addr_ntoa_r,@function
ip6addr_ntoa_r:                         # @ip6addr_ntoa_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %r13
	cmpl	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_6
# %bb.1:
	cmpl	$0, 4(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_6
# %bb.2:
	cmpl	$-65536, 8(%r13)        # imm = 0xFFFF0000
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_6
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %r12d
	jg	.LBB2_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_38
.LBB2_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movl	%r12d, -44(%rbp)        # 4-byte Spill
	.p2align	4, 0x90
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	movq	%r14, %r12
	movl	%esi, %r14d
	movl	%r15d, %eax
	shrl	%eax
	movl	(%r13,%rax,4), %edi
	callq	lwip_htonl
	movl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	jne	.LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	shrl	$16, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB2_9:                                #   in Loop: Header=BB2_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testw	%r13w, %r13w
	movl	%r14d, %esi
	je	.LBB2_10
# %bb.24:                               #   in Loop: Header=BB2_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %sil
	movq	%r12, %r14
	movl	-44(%rbp), %r12d        # 4-byte Reload
	jne	.LBB2_26
# %bb.25:                               #   in Loop: Header=BB2_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %sil
	jmp	.LBB2_26
	.p2align	4, 0x90
.LBB2_10:                               #   in Loop: Header=BB2_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %r15d
	movq	%r12, %r14
	jne	.LBB2_13
# %bb.11:                               #   in Loop: Header=BB2_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %sil
	je	.LBB2_12
.LBB2_13:                               #   in Loop: Header=BB2_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%sil, %sil
	je	.LBB2_14
# %bb.20:                               #   in Loop: Header=BB2_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %sil
	movl	-44(%rbp), %r12d        # 4-byte Reload
	jne	.LBB2_26
# %bb.21:                               #   in Loop: Header=BB2_7 Depth=1
	movb	$1, %sil
	jmp	.LBB2_22
.LBB2_14:                               #   in Loop: Header=BB2_7 Depth=1
	leal	1(%r15), %eax
	shrl	%eax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edi
	callq	lwip_htonl
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	je	.LBB2_16
# %bb.15:                               #   in Loop: Header=BB2_7 Depth=1
	shrl	$16, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB2_16:                               #   in Loop: Header=BB2_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	movl	-44(%rbp), %r12d        # 4-byte Reload
	je	.LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_7 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB2_26:                               #   in Loop: Header=BB2_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB2_28
# %bb.27:                               #   in Loop: Header=BB2_7 Depth=1
	movslq	%ebx, %rax
	addl	$1, %ebx
	movb	$58, (%r14,%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %ebx
	jge	.LBB2_38
.LBB2_28:                               #   in Loop: Header=BB2_7 Depth=1
	movl	%r13d, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$61440, %eax            # imm = 0xF000
	je	.LBB2_29
# %bb.37:                               #   in Loop: Header=BB2_7 Depth=1
	movl	%eax, %ecx
	shrl	$12, %ecx
	leal	55(%rcx), %edx
	orb	$48, %cl
	cmpl	$40960, %eax            # imm = 0xA000
	movzbl	%cl, %eax
	movzbl	%dl, %ecx
	cmovbl	%eax, %ecx
	movslq	%ebx, %rax
	addl	$1, %ebx
	movb	%cl, (%r14,%rax)
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %ebx
	jl	.LBB2_30
	jmp	.LBB2_38
	.p2align	4, 0x90
.LBB2_29:                               #   in Loop: Header=BB2_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %cl
.LBB2_30:                               #   in Loop: Header=BB2_7 Depth=1
	movl	%r13d, %edx
	movl	$42, __A_VARIABLE(%rip)
	andl	$3840, %edx             # imm = 0xF00
	je	.LBB2_31
.LBB2_32:                               #   in Loop: Header=BB2_7 Depth=1
	movl	%edx, %eax
	shrl	$8, %eax
	leal	55(%rax), %ecx
	orb	$48, %al
	cmpl	$2560, %edx             # imm = 0xA00
	movzbl	%al, %eax
	movzbl	%cl, %ecx
	cmovbl	%eax, %ecx
	movslq	%ebx, %rax
	addl	$1, %ebx
	movb	%cl, (%r14,%rax)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %ebx
	jl	.LBB2_33
	jmp	.LBB2_38
	.p2align	4, 0x90
.LBB2_31:                               #   in Loop: Header=BB2_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %al
	testb	%cl, %cl
	je	.LBB2_32
.LBB2_33:                               #   in Loop: Header=BB2_7 Depth=1
	movl	%r13d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	andl	$240, %ecx
	je	.LBB2_34
.LBB2_35:                               #   in Loop: Header=BB2_7 Depth=1
	movl	%ecx, %eax
	shrl	$4, %eax
	leal	55(%rax), %edx
	orb	$48, %al
	cmpl	$160, %ecx
	movzbl	%al, %eax
	movzbl	%dl, %ecx
	cmovbl	%eax, %ecx
	movslq	%ebx, %rax
	addl	$1, %ebx
	movb	%cl, (%r14,%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %ebx
	jl	.LBB2_36
	jmp	.LBB2_38
	.p2align	4, 0x90
.LBB2_34:                               #   in Loop: Header=BB2_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB2_35
.LBB2_36:                               #   in Loop: Header=BB2_7 Depth=1
	andl	$15, %r13d
	leal	55(%r13), %eax
	leal	48(%r13), %ecx
	cmpl	$10, %r13d
	movzbl	%cl, %ecx
	movzbl	%al, %eax
	cmovbl	%ecx, %eax
	movslq	%ebx, %rcx
	addl	$1, %ebx
	movb	%al, (%r14,%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_19:                               #   in Loop: Header=BB2_7 Depth=1
	cmpl	%r12d, %ebx
	jge	.LBB2_38
.LBB2_22:                               #   in Loop: Header=BB2_7 Depth=1
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %r15d
	movq	-56(%rbp), %r13         # 8-byte Reload
	jb	.LBB2_7
	jmp	.LBB2_23
.LBB2_18:                               #   in Loop: Header=BB2_7 Depth=1
	movslq	%ebx, %rax
	addl	$1, %ebx
	movb	$58, (%r14,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %sil
	jmp	.LBB2_19
.LBB2_12:
	movslq	%ebx, %rax
	addl	$1, %ebx
	movb	$58, (%r14,%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-44(%rbp), %ebx         # 4-byte Folded Reload
	jge	.LBB2_38
.LBB2_23:
	movslq	%ebx, %rax
	movb	$0, (%r14,%rax)
	jmp	.LBB2_39
.LBB2_38:
	xorl	%r14d, %r14d
.LBB2_39:
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
.LBB2_5:
	leaq	7(%r14), %rbx
	addl	$-7, %r12d
	movl	$.L.str, %esi
	movl	$8, %edx
	movq	%r14, %rdi
	callq	memcpy
	movl	12(%r13), %eax
	movl	%eax, -48(%rbp)
	leaq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	movl	%r12d, %edx
	callq	ip4addr_ntoa_r
	xorl	%ecx, %ecx
	cmpq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovneq	%rcx, %r14
	jmp	.LBB2_39
.Lfunc_end2:
	.size	ip6addr_ntoa_r, .Lfunc_end2-ip6addr_ntoa_r
                                        # -- End function
	.type	ip6_addr_any,@object    # @ip6_addr_any
	.section	.rodata,"a",@progbits
	.globl	ip6_addr_any
	.p2align	2
ip6_addr_any:
	.zero	20
	.byte	6                       # 0x6
	.zero	3
	.size	ip6_addr_any, 24

	.type	ip6addr_ntoa.str,@object # @ip6addr_ntoa.str
	.local	ip6addr_ntoa.str
	.comm	ip6addr_ntoa.str,40,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"::FFFF:"
	.size	.L.str, 8

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
