	.text
	.file	"crypt_md5.c"
	.globl	__crypt_md5             # -- Begin function __crypt_md5
	.p2align	4, 0x90
	.type	__crypt_md5,@function
__crypt_md5:                            # @__crypt_md5
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	callq	md5crypt
	movq	%rax, %rbx
	leaq	-80(%rbp), %r14
	movl	$__crypt_md5.testkey, %edi
	movl	$__crypt_md5.testsetting, %esi
	movq	%r14, %rdx
	callq	md5crypt
	movq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %eax
	testq	%rbx, %rbx
	je	.LBB0_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	jne	.LBB0_3
# %bb.2:
	leaq	-80(%rbp), %rdi
	movl	$__crypt_md5.testhash, %esi
	movl	$35, %edx
	callq	memcmp
	testl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %eax
	cmoveq	%rbx, %rax
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__crypt_md5, .Lfunc_end0-__crypt_md5
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function md5crypt
.LCPI1_0:
	.long	1732584193              # 0x67452301
	.long	4023233417              # 0xefcdab89
	.long	2562383102              # 0x98badcfe
	.long	271733878               # 0x10325476
	.text
	.p2align	4, 0x90
	.type	md5crypt,@function
md5crypt:                               # @md5crypt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movl	$30001, %esi            # imm = 0x7531
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	strnlen
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$30000, %r14d           # imm = 0x7530
	ja	.LBB1_1
# %bb.2:
	movl	$.L.str.1, %esi
	movl	$3, %edx
	movq	%r12, %rdi
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_4
.LBB1_1:
	xorl	%r14d, %r14d
.LBB1_46:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_4:
	leaq	3(%r12), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	3(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	testb	%al, %al
	je	.LBB1_22
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$36, %al
	je	.LBB1_22
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	4(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	testb	%al, %al
	je	.LBB1_22
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$36, %al
	je	.LBB1_22
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	5(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r15d
	testb	%al, %al
	je	.LBB1_22
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$36, %al
	je	.LBB1_22
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	6(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %r15d
	testb	%al, %al
	je	.LBB1_22
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$36, %al
	je	.LBB1_22
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	7(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %r15d
	testb	%al, %al
	je	.LBB1_22
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$36, %al
	je	.LBB1_22
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	8(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %r15d
	testb	%al, %al
	je	.LBB1_22
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$36, %al
	je	.LBB1_22
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	9(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$6, %r15d
	testb	%al, %al
	je	.LBB1_22
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$36, %al
	je	.LBB1_22
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rcx
	movb	10(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB1_21
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$36, %al
	movq	%rcx, %r12
	movl	$7, %r15d
	je	.LBB1_22
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %r15d
	jmp	.LBB1_22
.LBB1_21:
	movq	%rcx, %r12
	movl	$7, %r15d
.LBB1_22:
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	movq	$0, -200(%rbp)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1732584193,4023233417,2562383102,271733878]
	movups	%xmm0, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r13d
	leaq	-200(%rbp), %r12
	movq	%r12, %rdi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	md5_update
	movl	%r15d, %edx
	movq	%r12, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	md5_update
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	md5_update
	leaq	-64(%rbp), %rsi
	movq	%r12, %rdi
	callq	md5_sum
	movq	$0, -200(%rbp)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1732584193,4023233417,2562383102,271733878]
	movups	%xmm0, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	md5_update
	addl	$3, %r15d
	movq	%r12, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%r15, -104(%rbp)        # 8-byte Spill
	movq	%r15, %rdx
	callq	md5_update
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
	movq	%r13, -72(%rbp)         # 8-byte Spill
	cmpq	$17, %r13
	jb	.LBB1_25
# %bb.23:                               # %.preheader1
	leaq	-200(%rbp), %r13
	leaq	-64(%rbp), %r12
	movq	-72(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_24:                               # =>This Inner Loop Header: Depth=1
	movl	$16, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	md5_update
	addl	$-16, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %ebx
	ja	.LBB1_24
.LBB1_25:
	leaq	-200(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movq	%rbx, %rdx
	callq	md5_update
	movb	$0, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB1_31
# %bb.26:                               # %.preheader
	leaq	-200(%rbp), %rbx
	leaq	-64(%rbp), %r13
	jmp	.LBB1_29
	.p2align	4, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_29 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB1_28:                               #   in Loop: Header=BB1_29 Depth=1
	callq	md5_update
	movl	$42, __A_VARIABLE(%rip)
	shrl	%r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_31
.LBB1_29:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	movq	%rbx, %rdi
	testb	$1, %r14b
	je	.LBB1_27
# %bb.30:                               #   in Loop: Header=BB1_29 Depth=1
	movq	%r13, %rsi
	jmp	.LBB1_28
.LBB1_31:
	leaq	-200(%rbp), %r12
	leaq	-64(%rbp), %r14
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	md5_sum
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	jmp	.LBB1_34
	.p2align	4, 0x90
.LBB1_32:                               #   in Loop: Header=BB1_34 Depth=1
	movq	%r12, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
.LBB1_33:                               #   in Loop: Header=BB1_34 Depth=1
	callq	md5_update
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	md5_sum
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1000, %r13d            # imm = 0x3E8
	je	.LBB1_43
.LBB1_34:                               # =>This Inner Loop Header: Depth=1
	movzwl	%r13w, %eax
	imull	$9363, %eax, %ecx       # imm = 0x2493
	shrl	$16, %ecx
	movl	%r13d, %edx
	subl	%ecx, %edx
	movzwl	%dx, %ebx
	shrl	%ebx
	addl	%ecx, %ebx
	shrl	$2, %ebx
	leal	(,%rbx,8), %ecx
	subl	%ecx, %ebx
	imull	$43691, %eax, %eax      # imm = 0xAAAB
	shrl	$17, %eax
	leal	(%rax,%rax,2), %r15d
	negl	%r15d
	movq	$0, -200(%rbp)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1732584193,4023233417,2562383102,271733878]
	movups	%xmm0, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r13b
	je	.LBB1_36
# %bb.35:                               #   in Loop: Header=BB1_34 Depth=1
	movq	%r12, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB1_37
	.p2align	4, 0x90
.LBB1_36:                               #   in Loop: Header=BB1_34 Depth=1
	movl	$16, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
.LBB1_37:                               #   in Loop: Header=BB1_34 Depth=1
	callq	md5_update
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addw	%r13w, %r15w
	je	.LBB1_39
# %bb.38:                               #   in Loop: Header=BB1_34 Depth=1
	movq	%r12, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	md5_update
	movl	$42, __A_VARIABLE(%rip)
.LBB1_39:                               #   in Loop: Header=BB1_34 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addw	%r13w, %bx
	je	.LBB1_41
# %bb.40:                               #   in Loop: Header=BB1_34 Depth=1
	movq	%r12, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	md5_update
	movl	$42, __A_VARIABLE(%rip)
.LBB1_41:                               #   in Loop: Header=BB1_34 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r13b
	je	.LBB1_32
# %bb.42:                               #   in Loop: Header=BB1_34 Depth=1
	movl	$16, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	jmp	.LBB1_33
.LBB1_43:
	movq	-112(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-80(%rbp), %rax         # 8-byte Reload
	movb	$36, 3(%r14,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%r14, %rax
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB1_44:                               # =>This Inner Loop Header: Depth=1
	movzbl	md5crypt.perm-3(%rcx,%rcx,2), %edx
	movzbl	-64(%rbp,%rdx), %edx
	movl	%edx, %esi
	shll	$16, %esi
	movzbl	md5crypt.perm-2(%rcx,%rcx,2), %edi
	movzbl	-64(%rbp,%rdi), %edi
	shll	$8, %edi
	orl	%edi, %esi
	movzbl	md5crypt.perm-1(%rcx,%rcx,2), %ebx
	movzbl	-64(%rbp,%rbx), %ebx
	orl	%ebx, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$63, %ebx
	movzbl	b64(%rbx), %ebx
	movb	%bl, (%rax,%rcx,4)
	shrl	$6, %edi
	andl	$63, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	b64(%rdi), %ebx
	movb	%bl, 1(%rax,%rcx,4)
	shrl	$12, %esi
	andl	$63, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	b64(%rsi), %ebx
	movb	%bl, 2(%rax,%rcx,4)
	shrq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	b64(%rdx), %edx
	movb	%dl, 3(%rax,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	cmpq	$6, %rcx
	jne	.LBB1_44
# %bb.45:
	movzbl	-53(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andl	$63, %ecx
	movb	b64(%rcx), %cl
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movb	%cl, 24(%r14,%rdx)
	shrq	$6, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	b64(%rax), %al
	movb	%al, 25(%r14,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 26(%r14,%rdx)
	jmp	.LBB1_46
.Lfunc_end1:
	.size	md5crypt, .Lfunc_end1-md5crypt
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function md5_update
	.type	md5_update,@function
md5_update:                             # @md5_update
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rdi), %rax
	movq	%rax, %rcx
	addq	%rdx, %rcx
	movq	%rcx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	andl	$63, %eax
	je	.LBB2_3
# %bb.1:
	movl	$64, %r12d
	subl	%eax, %r12d
	movl	%eax, %eax
	leaq	(%r15,%rax), %rdi
	addq	$24, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r12
	ja	.LBB2_8
# %bb.2:
	leaq	24(%r15), %rbx
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	memcpy
	subq	%r12, %r13
	addq	%r12, %r14
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	processblock
	movl	$42, __A_VARIABLE(%rip)
.LBB2_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$64, %r13
	jb	.LBB2_7
# %bb.4:
	leaq	-64(%r13), %r12
	movq	%r12, -56(%rbp)         # 8-byte Spill
	andq	$-64, %r12
	leaq	64(%r12), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r14, %rbx
	.p2align	4, 0x90
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	processblock
	addq	$-64, %r13
	addq	$64, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$63, %r13
	ja	.LBB2_5
# %bb.6:
	movq	-56(%rbp), %r13         # 8-byte Reload
	subq	%r12, %r13
	addq	-48(%rbp), %r14         # 8-byte Folded Reload
.LBB2_7:
	addq	$24, %r15
	movq	%r15, %rdi
.LBB2_8:
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	memcpy
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
.Lfunc_end2:
	.size	md5_update, .Lfunc_end2-md5_update
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function md5_sum
	.type	md5_sum,@function
md5_sum:                                # @md5_sum
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rdi), %rdx
	andl	$63, %edx
	leal	1(%rdx), %r12d
	leaq	24(%rdi), %r15
	movb	$-128, 24(%rdi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$56, %edx
	jb	.LBB3_2
# %bb.1:
	movl	%r12d, %eax
	leaq	(%rbx,%rax), %rdi
	addq	$24, %rdi
	xorl	$63, %edx
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	callq	memset
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	processblock
	movl	$42, __A_VARIABLE(%rip)
.LBB3_2:
	movl	%r12d, %eax
	leaq	(%rbx,%rax), %rdi
	addq	$24, %rdi
	movl	$56, %edx
	subl	%r12d, %edx
	xorl	%esi, %esi
	callq	memset
	movq	(%rbx), %rax
	leaq	(,%rax,8), %rcx
	movq	%rcx, (%rbx)
	movb	%cl, 80(%rbx)
	movq	%rax, %rcx
	shrq	$5, %rcx
	movb	%cl, 81(%rbx)
	movq	%rax, %rcx
	shrq	$13, %rcx
	movb	%cl, 82(%rbx)
	movq	%rax, %rcx
	shrq	$21, %rcx
	movb	%cl, 83(%rbx)
	movq	%rax, %rcx
	shrq	$29, %rcx
	movb	%cl, 84(%rbx)
	movq	%rax, %rcx
	shrq	$37, %rcx
	movb	%cl, 85(%rbx)
	movq	%rax, %rcx
	shrq	$45, %rcx
	movb	%cl, 86(%rbx)
	shrq	$53, %rax
	movb	%al, 87(%rbx)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	processblock
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	8(%rbx), %al
	movb	%al, (%r14)
	movb	9(%rbx), %al
	movb	%al, 1(%r14)
	movb	10(%rbx), %al
	movb	%al, 2(%r14)
	movb	11(%rbx), %al
	movb	%al, 3(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	12(%rbx), %al
	movb	%al, 4(%r14)
	movb	13(%rbx), %al
	movb	%al, 5(%r14)
	movb	14(%rbx), %al
	movb	%al, 6(%r14)
	movb	15(%rbx), %al
	movb	%al, 7(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	16(%rbx), %al
	movb	%al, 8(%r14)
	movb	17(%rbx), %al
	movb	%al, 9(%r14)
	movb	18(%rbx), %al
	movb	%al, 10(%r14)
	movb	19(%rbx), %al
	movb	%al, 11(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	20(%rbx), %al
	movb	%al, 12(%r14)
	movb	21(%rbx), %al
	movb	%al, 13(%r14)
	movb	22(%rbx), %al
	movb	%al, 14(%r14)
	movb	23(%rbx), %al
	movb	%al, 15(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	md5_sum, .Lfunc_end3-md5_sum
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function processblock
	.type	processblock,@function
processblock:                           # @processblock
# %bb.0:
	subq	$72, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rax,4), %ecx
	movl	%ecx, (%rsp,%rax,4)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %rax
	jne	.LBB4_1
# %bb.2:
	movdqu	8(%rdi), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movd	%xmm0, %r8d
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %eax
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %ecx
	pshufd	$231, %xmm0, %xmm1      # xmm1 = xmm0[3,1,2,3]
	movd	%xmm1, %edx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movl	%edx, %esi
	xorl	%ecx, %esi
	andl	%eax, %esi
	xorl	%edx, %esi
	addl	%r8d, %esi
	addl	(%rsp,%r9,4), %esi
	addl	tab(,%r9,4), %esi
	roll	$7, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %r8d
	addl	%eax, %r8d
	movl	%ecx, %esi
	xorl	%eax, %esi
	andl	%r8d, %esi
	addl	4(%rsp,%r9,4), %edx
	xorl	%ecx, %esi
	addl	tab+4(,%r9,4), %edx
	addl	%esi, %edx
	roll	$12, %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %edx
	movl	%r8d, %esi
	xorl	%eax, %esi
	andl	%edx, %esi
	addl	8(%rsp,%r9,4), %ecx
	xorl	%eax, %esi
	addl	tab+8(,%r9,4), %ecx
	addl	%esi, %ecx
	roll	$17, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %ecx
	movl	%edx, %esi
	xorl	%r8d, %esi
	andl	%ecx, %esi
	addl	12(%rsp,%r9,4), %eax
	xorl	%r8d, %esi
	addl	tab+12(,%r9,4), %eax
	addl	%esi, %eax
	roll	$22, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %eax
	addq	$4, %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %r9
	jb	.LBB4_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
	xorl	%eax, %esi
	andl	%edx, %esi
	xorl	%ecx, %esi
	addl	%r8d, %esi
	movl	4(%rsp), %r9d
	movl	20(%rsp), %r8d
	addl	%esi, %r9d
	addl	$-165796510, %r9d       # imm = 0xF61E2562
	roll	$5, %r9d
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r9d
	movl	%r9d, %esi
	xorl	%eax, %esi
	andl	%ecx, %esi
	xorl	%eax, %esi
	addl	24(%rsp), %edx
	addl	%esi, %edx
	addl	$-1069501632, %edx      # imm = 0xC040B340
	roll	$9, %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%r9d, %edx
	movl	%edx, %esi
	xorl	%r9d, %esi
	andl	%eax, %esi
	addl	44(%rsp), %ecx
	xorl	%r9d, %esi
	addl	%esi, %ecx
	addl	$643717713, %ecx        # imm = 0x265E5A51
	roll	$14, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %esi
	andl	%r9d, %esi
	xorl	%edx, %esi
	addl	(%rsp), %eax
	addl	%eax, %esi
	addl	$-373897302, %esi       # imm = 0xE9B6C7AA
	roll	$20, %esi
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	xorl	%esi, %eax
	andl	%edx, %eax
	xorl	%ecx, %eax
	addl	%r9d, %eax
	addl	%eax, %r8d
	addl	$-701558691, %r8d       # imm = 0xD62F105D
	roll	$5, %r8d
	movl	$42, __A_VARIABLE(%rip)
	addl	%esi, %r8d
	movl	%r8d, %eax
	xorl	%esi, %eax
	andl	%ecx, %eax
	addl	40(%rsp), %edx
	xorl	%esi, %eax
	addl	%edx, %eax
	addl	$38016083, %eax         # imm = 0x2441453
	roll	$9, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %eax
	movl	%eax, %edx
	xorl	%r8d, %edx
	andl	%esi, %edx
	xorl	%r8d, %edx
	addl	60(%rsp), %ecx
	addl	%edx, %ecx
	addl	$-660478335, %ecx       # imm = 0xD8A1E681
	roll	$14, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %ecx
	movl	%ecx, %edx
	xorl	%eax, %edx
	andl	%r8d, %edx
	addl	16(%rsp), %esi
	xorl	%eax, %edx
	addl	%esi, %edx
	addl	$-405537848, %edx       # imm = 0xE7D3FBC8
	roll	$20, %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
	xorl	%edx, %esi
	andl	%eax, %esi
	xorl	%ecx, %esi
	movl	36(%rsp), %r9d
	addl	%r8d, %esi
	leal	(%r9,%rsi), %r8d
	addl	$568446438, %r8d        # imm = 0x21E1CDE6
	roll	$5, %r8d
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %r8d
	movl	%r8d, %esi
	xorl	%edx, %esi
	andl	%ecx, %esi
	xorl	%edx, %esi
	addl	56(%rsp), %eax
	addl	%esi, %eax
	addl	$-1019803690, %eax      # imm = 0xC33707D6
	roll	$9, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %eax
	movl	%eax, %esi
	xorl	%r8d, %esi
	andl	%edx, %esi
	addl	12(%rsp), %ecx
	xorl	%r8d, %esi
	addl	%esi, %ecx
	addl	$-187363961, %ecx       # imm = 0xF4D50D87
	roll	$14, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %ecx
	movl	%ecx, %esi
	xorl	%eax, %esi
	andl	%r8d, %esi
	xorl	%eax, %esi
	addl	32(%rsp), %edx
	addl	%esi, %edx
	addl	$1163531501, %edx       # imm = 0x455A14ED
	roll	$20, %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
	xorl	%edx, %esi
	andl	%eax, %esi
	xorl	%ecx, %esi
	movl	52(%rsp), %r9d
	addl	%r8d, %esi
	leal	(%r9,%rsi), %r8d
	addl	$-1444681467, %r8d      # imm = 0xA9E3E905
	roll	$5, %r8d
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %r8d
	movl	%r8d, %esi
	xorl	%edx, %esi
	andl	%ecx, %esi
	addl	8(%rsp), %eax
	xorl	%edx, %esi
	addl	%esi, %eax
	addl	$-51403784, %eax        # imm = 0xFCEFA3F8
	roll	$9, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %eax
	movl	%eax, %esi
	xorl	%r8d, %esi
	andl	%edx, %esi
	xorl	%r8d, %esi
	addl	28(%rsp), %ecx
	leal	(%rsi,%rcx), %r9d
	addl	$1735328473, %r9d       # imm = 0x676F02D9
	roll	$14, %r9d
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r9d
	movl	%r9d, %esi
	xorl	%eax, %esi
	andl	%r8d, %esi
	addl	48(%rsp), %edx
	xorl	%eax, %esi
	leal	(%rsi,%rdx), %r11d
	addl	$-1926607734, %r11d     # imm = 0x8D2A4C8A
	roll	$20, %r11d
	movl	$42, __A_VARIABLE(%rip)
	addl	%r9d, %r11d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r9d, %ecx
	xorl	%r11d, %ecx
	movl	%ecx, %esi
	xorl	%eax, %esi
	movl	20(%rsp), %r10d
	addl	%r8d, %esi
	leal	(%r10,%rsi), %r8d
	addl	$-378558, %r8d          # imm = 0xFFFA3942
	roll	$4, %r8d
	movl	$42, __A_VARIABLE(%rip)
	addl	%r11d, %r8d
	addl	32(%rsp), %eax
	xorl	%r8d, %ecx
	leal	(%rcx,%rax), %esi
	addl	$-2022574463, %esi      # imm = 0x8771F681
	roll	$11, %esi
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %esi
	movl	%r8d, %ecx
	xorl	%r11d, %ecx
	xorl	%esi, %ecx
	addl	44(%rsp), %r9d
	leal	(%rcx,%r9), %edx
	addl	$1839030562, %edx       # imm = 0x6D9D6122
	roll	$16, %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%esi, %edx
	movl	%esi, %eax
	xorl	%r8d, %eax
	xorl	%edx, %eax
	addl	56(%rsp), %r11d
	leal	(%rax,%r11), %r9d
	addl	$-35309556, %r9d        # imm = 0xFDE5380C
	roll	$23, %r9d
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	xorl	%r9d, %ecx
	movl	%ecx, %eax
	xorl	%esi, %eax
	movl	4(%rsp), %r10d
	addl	%r8d, %eax
	leal	(%r10,%rax), %r8d
	addl	$-1530992060, %r8d      # imm = 0xA4BEEA44
	roll	$4, %r8d
	movl	$42, __A_VARIABLE(%rip)
	addl	%r9d, %r8d
	xorl	%r8d, %ecx
	addl	16(%rsp), %esi
	leal	(%rcx,%rsi), %eax
	addl	$1272893353, %eax       # imm = 0x4BDECFA9
	roll	$11, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %eax
	movl	%r8d, %ecx
	xorl	%r9d, %ecx
	xorl	%eax, %ecx
	addl	28(%rsp), %edx
	leal	(%rcx,%rdx), %r10d
	addl	$-155497632, %r10d      # imm = 0xF6BB4B60
	roll	$16, %r10d
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r10d
	movl	%eax, %edx
	xorl	%r8d, %edx
	addl	40(%rsp), %r9d
	xorl	%r10d, %edx
	leal	(%rdx,%r9), %r11d
	addl	$-1094730640, %r11d     # imm = 0xBEBFBC70
	roll	$23, %r11d
	movl	$42, __A_VARIABLE(%rip)
	addl	%r10d, %r11d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r10d, %ecx
	xorl	%r11d, %ecx
	movl	%ecx, %esi
	xorl	%eax, %esi
	movl	52(%rsp), %r9d
	addl	%r8d, %esi
	leal	(%r9,%rsi), %r8d
	addl	$681279174, %r8d        # imm = 0x289B7EC6
	roll	$4, %r8d
	movl	$42, __A_VARIABLE(%rip)
	addl	%r11d, %r8d
	addl	(%rsp), %eax
	xorl	%r8d, %ecx
	addl	%ecx, %eax
	addl	$-358537222, %eax       # imm = 0xEAA127FA
	roll	$11, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %eax
	movl	%r8d, %ecx
	xorl	%r11d, %ecx
	xorl	%eax, %ecx
	addl	12(%rsp), %r10d
	leal	(%rcx,%r10), %edx
	addl	$-722521979, %edx       # imm = 0xD4EF3085
	roll	$16, %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %edx
	movl	%eax, %ecx
	xorl	%r8d, %ecx
	xorl	%edx, %ecx
	addl	24(%rsp), %r11d
	leal	(%rcx,%r11), %r9d
	addl	$76029189, %r9d         # imm = 0x4881D05
	roll	$23, %r9d
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %esi
	xorl	%r9d, %esi
	movl	%esi, %ecx
	xorl	%eax, %ecx
	movl	36(%rsp), %r10d
	addl	%r8d, %ecx
	leal	(%r10,%rcx), %r8d
	addl	$-640364487, %r8d       # imm = 0xD9D4D039
	roll	$4, %r8d
	movl	$42, __A_VARIABLE(%rip)
	addl	%r9d, %r8d
	xorl	%r8d, %esi
	addl	48(%rsp), %eax
	leal	(%rsi,%rax), %ecx
	addl	$-421815835, %ecx       # imm = 0xE6DB99E5
	roll	$11, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %ecx
	movl	%r8d, %eax
	xorl	%r9d, %eax
	xorl	%ecx, %eax
	addl	60(%rsp), %edx
	leal	(%rax,%rdx), %esi
	addl	$530742520, %esi        # imm = 0x1FA27CF8
	roll	$16, %esi
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %esi
	movl	%ecx, %eax
	xorl	%r8d, %eax
	addl	8(%rsp), %r9d
	xorl	%esi, %eax
	addl	%r9d, %eax
	addl	$-995338651, %eax       # imm = 0xC4AC5665
	roll	$23, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%esi, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	notl	%edx
	orl	%eax, %edx
	xorl	%esi, %edx
	movl	(%rsp), %r9d
	addl	%r8d, %edx
	leal	(%r9,%rdx), %r8d
	addl	$-198630844, %r8d       # imm = 0xF4292244
	roll	$6, %r8d
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r8d
	movl	%esi, %edx
	notl	%edx
	orl	%r8d, %edx
	addl	28(%rsp), %ecx
	xorl	%eax, %edx
	addl	%edx, %ecx
	addl	$1126891415, %ecx       # imm = 0x432AFF97
	roll	$10, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %ecx
	movl	%eax, %edx
	notl	%edx
	orl	%ecx, %edx
	xorl	%r8d, %edx
	addl	56(%rsp), %esi
	leal	(%rdx,%rsi), %r10d
	addl	$-1416354905, %r10d     # imm = 0xAB9423A7
	roll	$15, %r10d
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %r10d
	movl	%r8d, %esi
	notl	%esi
	orl	%r10d, %esi
	addl	20(%rsp), %eax
	xorl	%ecx, %esi
	addl	%esi, %eax
	addl	$-57434055, %eax        # imm = 0xFC93A039
	roll	$21, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%r10d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
	notl	%esi
	orl	%eax, %esi
	xorl	%r10d, %esi
	movl	48(%rsp), %r9d
	addl	%r8d, %esi
	leal	(%r9,%rsi), %r8d
	addl	$1700485571, %r8d       # imm = 0x655B59C3
	roll	$6, %r8d
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r8d
	movl	%r10d, %edx
	notl	%edx
	orl	%r8d, %edx
	xorl	%eax, %edx
	addl	12(%rsp), %ecx
	addl	%edx, %ecx
	addl	$-1894986606, %ecx      # imm = 0x8F0CCC92
	roll	$10, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %ecx
	movl	%eax, %edx
	notl	%edx
	orl	%ecx, %edx
	addl	40(%rsp), %r10d
	xorl	%r8d, %edx
	addl	%edx, %r10d
	addl	$-1051523, %r10d        # imm = 0xFFEFF47D
	roll	$15, %r10d
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %r10d
	movl	%r8d, %esi
	notl	%esi
	orl	%r10d, %esi
	xorl	%ecx, %esi
	addl	4(%rsp), %eax
	addl	%esi, %eax
	addl	$-2054922799, %eax      # imm = 0x85845DD1
	roll	$21, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%r10d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
	notl	%esi
	orl	%eax, %esi
	xorl	%r10d, %esi
	movl	32(%rsp), %r9d
	addl	%r8d, %esi
	leal	(%r9,%rsi), %r8d
	addl	$1873313359, %r8d       # imm = 0x6FA87E4F
	roll	$6, %r8d
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r8d
	movl	%r10d, %edx
	notl	%edx
	orl	%r8d, %edx
	addl	60(%rsp), %ecx
	xorl	%eax, %edx
	addl	%edx, %ecx
	addl	$-30611744, %ecx        # imm = 0xFE2CE6E0
	roll	$10, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %ecx
	movl	%eax, %edx
	notl	%edx
	orl	%ecx, %edx
	xorl	%r8d, %edx
	addl	24(%rsp), %r10d
	addl	%edx, %r10d
	addl	$-1560198380, %r10d     # imm = 0xA3014314
	roll	$15, %r10d
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %r10d
	movl	%r8d, %esi
	notl	%esi
	orl	%r10d, %esi
	addl	52(%rsp), %eax
	xorl	%ecx, %esi
	addl	%esi, %eax
	addl	$1309151649, %eax       # imm = 0x4E0811A1
	roll	$21, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%r10d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
	notl	%esi
	orl	%eax, %esi
	xorl	%r10d, %esi
	movl	16(%rsp), %r9d
	addl	%r8d, %esi
	addl	%r9d, %esi
	addl	$-145523070, %esi       # imm = 0xF7537E82
	roll	$6, %esi
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %esi
	movl	%r10d, %edx
	notl	%edx
	orl	%esi, %edx
	xorl	%eax, %edx
	addl	44(%rsp), %ecx
	addl	%edx, %ecx
	addl	$-1120210379, %ecx      # imm = 0xBD3AF235
	roll	$10, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%esi, %ecx
	movl	%eax, %edx
	notl	%edx
	orl	%ecx, %edx
	addl	8(%rsp), %r10d
	xorl	%esi, %edx
	addl	%r10d, %edx
	addl	$718787259, %edx        # imm = 0x2AD7D2BB
	roll	$15, %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %edx
	movd	%esi, %xmm1
                                        # kill: def $esi killed $esi def $rsi
	notl	%esi
	orl	%edx, %esi
	xorl	%ecx, %esi
	addl	36(%rsp), %eax
	addl	%esi, %eax
	addl	$-343485551, %eax       # imm = 0xEB86D391
	roll	$21, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movd	%eax, %xmm2
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movd	%edx, %xmm2
	movd	%ecx, %xmm3
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	punpcklqdq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0]
	paddd	%xmm0, %xmm1
	movdqu	%xmm1, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	retq
.Lfunc_end4:
	.size	processblock, .Lfunc_end4-processblock
                                        # -- End function
	.type	__crypt_md5.testkey,@object # @__crypt_md5.testkey
	.section	.rodata,"a",@progbits
	.p2align	4
__crypt_md5.testkey:
	.asciz	"Xy01@#\001\002\200\177\377\r\n\201\t !"
	.size	__crypt_md5.testkey, 18

	.type	__crypt_md5.testsetting,@object # @__crypt_md5.testsetting
__crypt_md5.testsetting:
	.asciz	"$1$abcd0123$"
	.size	__crypt_md5.testsetting, 13

	.type	__crypt_md5.testhash,@object # @__crypt_md5.testhash
	.p2align	4
__crypt_md5.testhash:
	.asciz	"$1$abcd0123$9Qcg8DyviekV3tDGMZynJ1"
	.size	__crypt_md5.testhash, 35

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"*"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"$1$"
	.size	.L.str.1, 4

	.type	md5crypt.perm,@object   # @md5crypt.perm
	.section	.rodata,"a",@progbits
md5crypt.perm:
	.ascii	"\000\006\f"
	.ascii	"\001\007\r"
	.ascii	"\002\b\016"
	.ascii	"\003\t\017"
	.ascii	"\004\n\005"
	.size	md5crypt.perm, 15

	.type	tab,@object             # @tab
	.p2align	4
tab:
	.long	3614090360              # 0xd76aa478
	.long	3905402710              # 0xe8c7b756
	.long	606105819               # 0x242070db
	.long	3250441966              # 0xc1bdceee
	.long	4118548399              # 0xf57c0faf
	.long	1200080426              # 0x4787c62a
	.long	2821735955              # 0xa8304613
	.long	4249261313              # 0xfd469501
	.long	1770035416              # 0x698098d8
	.long	2336552879              # 0x8b44f7af
	.long	4294925233              # 0xffff5bb1
	.long	2304563134              # 0x895cd7be
	.long	1804603682              # 0x6b901122
	.long	4254626195              # 0xfd987193
	.long	2792965006              # 0xa679438e
	.long	1236535329              # 0x49b40821
	.long	4129170786              # 0xf61e2562
	.long	3225465664              # 0xc040b340
	.long	643717713               # 0x265e5a51
	.long	3921069994              # 0xe9b6c7aa
	.long	3593408605              # 0xd62f105d
	.long	38016083                # 0x2441453
	.long	3634488961              # 0xd8a1e681
	.long	3889429448              # 0xe7d3fbc8
	.long	568446438               # 0x21e1cde6
	.long	3275163606              # 0xc33707d6
	.long	4107603335              # 0xf4d50d87
	.long	1163531501              # 0x455a14ed
	.long	2850285829              # 0xa9e3e905
	.long	4243563512              # 0xfcefa3f8
	.long	1735328473              # 0x676f02d9
	.long	2368359562              # 0x8d2a4c8a
	.long	4294588738              # 0xfffa3942
	.long	2272392833              # 0x8771f681
	.long	1839030562              # 0x6d9d6122
	.long	4259657740              # 0xfde5380c
	.long	2763975236              # 0xa4beea44
	.long	1272893353              # 0x4bdecfa9
	.long	4139469664              # 0xf6bb4b60
	.long	3200236656              # 0xbebfbc70
	.long	681279174               # 0x289b7ec6
	.long	3936430074              # 0xeaa127fa
	.long	3572445317              # 0xd4ef3085
	.long	76029189                # 0x4881d05
	.long	3654602809              # 0xd9d4d039
	.long	3873151461              # 0xe6db99e5
	.long	530742520               # 0x1fa27cf8
	.long	3299628645              # 0xc4ac5665
	.long	4096336452              # 0xf4292244
	.long	1126891415              # 0x432aff97
	.long	2878612391              # 0xab9423a7
	.long	4237533241              # 0xfc93a039
	.long	1700485571              # 0x655b59c3
	.long	2399980690              # 0x8f0ccc92
	.long	4293915773              # 0xffeff47d
	.long	2240044497              # 0x85845dd1
	.long	1873313359              # 0x6fa87e4f
	.long	4264355552              # 0xfe2ce6e0
	.long	2734768916              # 0xa3014314
	.long	1309151649              # 0x4e0811a1
	.long	4149444226              # 0xf7537e82
	.long	3174756917              # 0xbd3af235
	.long	718787259               # 0x2ad7d2bb
	.long	3951481745              # 0xeb86d391
	.size	tab, 256

	.type	b64,@object             # @b64
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
b64:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	b64, 65

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
