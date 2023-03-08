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
	movq	%rsi, %r15
	movl	$8, %r12d
	movq	%rdi, %r14
	movq	%rdi, %rbx
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_1:                                #   in Loop: Header=BB0_3 Depth=1
	addl	$-1, %r12d
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %rbx
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpb	$58, %al
	je	.LBB0_1
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	testb	%al, %al
	je	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	cmpb	$46, %al
	je	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ecx
	testb	$68, 1(%rax,%rcx)
	jne	.LBB0_2
.LBB0_7:
	xorl	%eax, %eax
	movq	%r14, %rbx
	jmp	.LBB0_11
.LBB0_8:
	cmpl	$5, %r12d
	movq	%r14, %rbx
	je	.LBB0_10
# %bb.9:
	xorl	%eax, %eax
	cmpl	$2, %r12d
	jne	.LBB0_50
.LBB0_10:
	addl	$-1, %r12d
	movb	$1, %al
.LBB0_11:
	testq	%r15, %r15
	sete	-41(%rbp)               # 1-byte Folded Spill
	xorl	%ecx, %ecx
	xorb	$1, %al
	movl	%eax, -76(%rbp)         # 4-byte Spill
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	movq	%r15, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=1
	movq	%r13, %rbx
	movq	-64(%rbp), %r15         # 8-byte Reload
	addq	$1, %rbx
.LBB0_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
	movb	(%rbx), %al
	cmpb	$58, %al
	je	.LBB0_19
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	testb	%al, %al
	je	.LBB0_43
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	movq	%rbx, %r13
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ebx
	testb	$68, 1(%rax,%rbx)
	je	.LBB0_43
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB0_36
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=1
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
	jmp	.LBB0_37
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	testq	%r15, %r15
	je	.LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_13 Depth=1
	testb	$1, %r14b
	jne	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_13 Depth=1
	shll	$16, %edx
	movl	%ecx, %eax
	movl	%edx, (%r15,%rax,4)
	jmp	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_13 Depth=1
	movl	%ecx, %eax
	addl	$1, %ecx
	orl	%edx, (%r15,%rax,4)
.LBB0_23:                               #   in Loop: Header=BB0_13 Depth=1
	addl	$1, %r14d
	cmpl	$6, %r14d
	setne	%al
	orb	-76(%rbp), %al          # 1-byte Folded Reload
	jne	.LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_13 Depth=1
	movl	%ecx, %r15d
	movq	%rbx, %r13
	addq	$1, %rbx
	movq	%rbx, %rdi
	leaq	-72(%rbp), %rsi
	callq	ip4addr_aton
	testl	%eax, %eax
	sete	%cl
	orb	-41(%rbp), %cl          # 1-byte Folded Reload
	je	.LBB0_47
# %bb.25:                               #   in Loop: Header=BB0_13 Depth=1
	testl	%eax, %eax
	movl	%r15d, %ecx
	je	.LBB0_28
	jmp	.LBB0_51
	.p2align	4, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_13 Depth=1
	cmpl	$7, %r14d
	ja	.LBB0_52
# %bb.27:                               #   in Loop: Header=BB0_13 Depth=1
	movq	%rbx, %r13
	addq	$1, %rbx
.LBB0_28:                               #   in Loop: Header=BB0_13 Depth=1
	xorl	%edx, %edx
	cmpb	$58, (%rbx)
	jne	.LBB0_12
# %bb.29:                               #   in Loop: Header=BB0_13 Depth=1
	cmpb	$58, 2(%r13)
	movq	-64(%rbp), %r15         # 8-byte Reload
	jne	.LBB0_32
	jmp	.LBB0_52
	.p2align	4, 0x90
.LBB0_30:                               #   in Loop: Header=BB0_32 Depth=2
	addl	$1, %ecx
.LBB0_31:                               #   in Loop: Header=BB0_32 Depth=2
	addl	$-1, %r12d
	addl	$1, %r14d
	cmpl	$7, %r14d
	ja	.LBB0_52
.LBB0_32:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r12d, %r12d
	je	.LBB0_41
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=2
	testb	$1, %r14b
	jne	.LBB0_30
# %bb.34:                               #   in Loop: Header=BB0_32 Depth=2
	testq	%r15, %r15
	je	.LBB0_31
# %bb.35:                               #   in Loop: Header=BB0_32 Depth=2
	movl	%ecx, %eax
	movl	$0, (%r15,%rax,4)
	jmp	.LBB0_31
.LBB0_36:                               #   in Loop: Header=BB0_13 Depth=1
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andl	$4, %eax
	movl	%eax, -68(%rbp)
.LBB0_37:                               #   in Loop: Header=BB0_13 Depth=1
	movl	-52(%rbp), %edx         # 4-byte Reload
	shll	$4, %edx
	cmpl	$0, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	je	.LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_13 Depth=1
	movsbl	(%rbx), %eax
	addl	$-48, %eax
	jmp	.LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_13 Depth=1
	movl	%edx, %r15d
	callq	__locale_ctype_ptr
	movsbl	(%rbx), %ecx
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
	movl	-48(%rbp), %ecx         # 4-byte Reload
.LBB0_40:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	addl	%eax, %edx
	addq	$1, %rbx
	jmp	.LBB0_13
.LBB0_41:                               #   in Loop: Header=BB0_13 Depth=1
	xorl	%r12d, %r12d
	xorl	%edx, %edx
	addq	$1, %rbx
	jmp	.LBB0_13
.LBB0_52:
	xorl	%eax, %eax
	jmp	.LBB0_50
.LBB0_43:
	testq	%r15, %r15
	je	.LBB0_49
# %bb.44:
	testb	$1, %r14b
	jne	.LBB0_46
# %bb.45:
	movl	-52(%rbp), %ecx         # 4-byte Reload
	shll	$16, %ecx
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%ecx, (%r15,%rax,4)
	jmp	.LBB0_48
.LBB0_46:
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	orl	%ecx, (%r15,%rax,4)
	jmp	.LBB0_48
.LBB0_47:
	movl	-72(%rbp), %edi
	callq	lwip_htonl
	movq	-64(%rbp), %r15         # 8-byte Reload
	movl	%eax, 12(%r15)
	movl	$7, %r14d
.LBB0_48:
	movl	(%r15), %edi
	callq	lwip_htonl
	movl	%eax, (%r15)
	movl	4(%r15), %edi
	callq	lwip_htonl
	movl	%eax, 4(%r15)
	movl	8(%r15), %edi
	callq	lwip_htonl
	movl	%eax, 8(%r15)
	movl	12(%r15), %edi
	callq	lwip_htonl
	movl	%eax, 12(%r15)
	movb	$0, 16(%r15)
.LBB0_49:
	xorl	%eax, %eax
	cmpl	$7, %r14d
	sete	%al
.LBB0_50:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_51:
	movl	$1, %eax
	jmp	.LBB0_50
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
	movl	%edx, %r13d
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %r14
	cmpl	$0, (%rdi)
	jne	.LBB2_5
# %bb.1:
	cmpl	$0, 4(%r14)
	jne	.LBB2_5
# %bb.2:
	cmpl	$-65536, 8(%r14)        # imm = 0xFFFF0000
	jne	.LBB2_5
# %bb.3:
	cmpl	$8, %r13d
	jl	.LBB2_37
# %bb.38:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	7(%rbx), %r12
	addl	$-7, %r13d
	movl	$.L.str, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	12(%r14), %eax
	movl	%eax, -56(%rbp)
	leaq	-56(%rbp), %rdi
	movq	%r12, %rsi
	movl	%r13d, %edx
	callq	ip4addr_ntoa_r
	xorl	%ecx, %ecx
	cmpq	%r12, %rax
	cmovneq	%rcx, %rbx
	jmp	.LBB2_36
.LBB2_5:
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	movq	%r14, -64(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	movl	%r12d, %eax
	shrl	%eax
	movl	(%r14,%rax,4), %edi
	callq	lwip_htonl
	movl	%eax, %r14d
	shrl	$16, %r14d
	testb	$1, %r12b
	cmovnel	%eax, %r14d
	testw	%r14w, %r14w
	je	.LBB2_10
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	cmpb	$1, %r15b
	movzbl	%r15b, %r15d
	movl	$2, %eax
	cmovel	%eax, %r15d
.LBB2_8:                                #   in Loop: Header=BB2_6 Depth=1
	testl	%r12d, %r12d
	je	.LBB2_16
# %bb.9:                                #   in Loop: Header=BB2_6 Depth=1
	movslq	%ebx, %rax
	addl	$1, %ebx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movb	$58, (%rsi,%rax)
	cmpl	%r13d, %ebx
	jl	.LBB2_17
	jmp	.LBB2_37
	.p2align	4, 0x90
.LBB2_10:                               #   in Loop: Header=BB2_6 Depth=1
	cmpb	$1, %r15b
	jne	.LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_6 Depth=1
	cmpl	$7, %r12d
	je	.LBB2_34
.LBB2_12:                               #   in Loop: Header=BB2_6 Depth=1
	cmpb	$1, %r15b
	je	.LBB2_25
# %bb.13:                               #   in Loop: Header=BB2_6 Depth=1
	testb	%r15b, %r15b
	jne	.LBB2_8
# %bb.14:                               #   in Loop: Header=BB2_6 Depth=1
	leal	1(%r12), %eax
	shrl	%eax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx,%rax,4), %edi
	callq	lwip_htonl
	movl	%eax, %ecx
	shrl	$16, %ecx
	testb	$1, %r12b
	cmovel	%eax, %ecx
	testw	%cx, %cx
	je	.LBB2_27
# %bb.15:                               #   in Loop: Header=BB2_6 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB2_8
	.p2align	4, 0x90
.LBB2_16:                               #   in Loop: Header=BB2_6 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB2_17:                               #   in Loop: Header=BB2_6 Depth=1
	movl	%r14d, %eax
	andl	$61440, %eax            # imm = 0xF000
	je	.LBB2_20
# %bb.18:                               #   in Loop: Header=BB2_6 Depth=1
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
	movb	%cl, (%rsi,%rax)
	cmpl	%r13d, %ebx
	jge	.LBB2_37
# %bb.19:                               #   in Loop: Header=BB2_6 Depth=1
	movl	%r14d, %eax
	andl	$3840, %eax             # imm = 0xF00
	jmp	.LBB2_21
	.p2align	4, 0x90
.LBB2_20:                               #   in Loop: Header=BB2_6 Depth=1
	movl	%r14d, %eax
	andl	$3840, %eax             # imm = 0xF00
	je	.LBB2_26
.LBB2_21:                               #   in Loop: Header=BB2_6 Depth=1
	movl	%eax, %ecx
	shrl	$8, %ecx
	leal	55(%rcx), %edx
	orb	$48, %cl
	cmpl	$2560, %eax             # imm = 0xA00
	movzbl	%cl, %eax
	movzbl	%dl, %ecx
	cmovbl	%eax, %ecx
	movslq	%ebx, %rax
	addl	$1, %ebx
	movb	%cl, (%rsi,%rax)
	cmpl	%r13d, %ebx
	jge	.LBB2_37
# %bb.22:                               #   in Loop: Header=BB2_6 Depth=1
	movl	%r14d, %eax
	andl	$240, %eax
.LBB2_23:                               #   in Loop: Header=BB2_6 Depth=1
	movl	%eax, %ecx
	shrl	$4, %ecx
	leal	55(%rcx), %edx
	orb	$48, %cl
	cmpl	$160, %eax
	movzbl	%cl, %eax
	movzbl	%dl, %ecx
	cmovbl	%eax, %ecx
	movslq	%ebx, %rax
	addl	$1, %ebx
	movb	%cl, (%rsi,%rax)
	cmpl	%r13d, %ebx
	jge	.LBB2_37
.LBB2_24:                               #   in Loop: Header=BB2_6 Depth=1
	andl	$15, %r14d
	leal	55(%r14), %eax
	leal	48(%r14), %ecx
	cmpl	$10, %r14d
	movzbl	%cl, %ecx
	movzbl	%al, %eax
	cmovbl	%ecx, %eax
	movslq	%ebx, %rcx
	addl	$1, %ebx
	movb	%al, (%rsi,%rcx)
	cmpl	%r13d, %ebx
	jge	.LBB2_37
.LBB2_25:                               #   in Loop: Header=BB2_6 Depth=1
	addl	$1, %r12d
	cmpl	$8, %r12d
	movq	-64(%rbp), %r14         # 8-byte Reload
	jb	.LBB2_6
	jmp	.LBB2_35
.LBB2_26:                               #   in Loop: Header=BB2_6 Depth=1
	movl	%r14d, %eax
	andl	$240, %eax
	jne	.LBB2_23
	jmp	.LBB2_24
.LBB2_27:                               #   in Loop: Header=BB2_6 Depth=1
	movslq	%ebx, %rax
	addl	$1, %ebx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movb	$58, (%rcx,%rax)
	movb	$1, %r15b
	cmpl	%r13d, %ebx
	jl	.LBB2_25
	jmp	.LBB2_37
.LBB2_34:
	movslq	%ebx, %rax
	addl	$1, %ebx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movb	$58, (%rcx,%rax)
	cmpl	%r13d, %ebx
	jge	.LBB2_37
.LBB2_35:
	movslq	%ebx, %rax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movb	$0, (%rbx,%rax)
	jmp	.LBB2_36
.LBB2_37:
	xorl	%ebx, %ebx
.LBB2_36:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
