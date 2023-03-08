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
	movl	$.L.str, %eax
	testq	%rbx, %rbx
	je	.LBB0_3
# %bb.1:
	cmpq	%r14, %rcx
	jne	.LBB0_3
# %bb.2:
	leaq	-80(%rbp), %rdi
	movl	$__crypt_md5.testhash, %esi
	movl	$35, %edx
	callq	memcmp
	testl	%eax, %eax
	movl	$.L.str, %eax
	cmoveq	%rbx, %rax
.LBB0_3:
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movl	$30001, %esi            # imm = 0x7531
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	strnlen
	movq	%rax, %r15
	cmpl	$30000, %r15d           # imm = 0x7530
	ja	.LBB1_1
# %bb.2:
	movl	$.L.str.1, %esi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB1_4
.LBB1_1:
	xorl	%r14d, %r14d
.LBB1_45:
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
	leaq	3(%rbx), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movb	3(%rbx), %al
	testb	%al, %al
	je	.LBB1_21
# %bb.5:
	xorl	%ecx, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	cmpb	$36, %al
	je	.LBB1_23
# %bb.6:
	movb	4(%rbx), %al
	movl	$1, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	cmpb	$36, %al
	je	.LBB1_23
# %bb.7:
	testb	%al, %al
	je	.LBB1_23
# %bb.8:
	movb	5(%rbx), %al
	movl	$2, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	testb	%al, %al
	je	.LBB1_23
# %bb.9:
	cmpb	$36, %al
	je	.LBB1_23
# %bb.10:
	movb	6(%rbx), %al
	movl	$3, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	testb	%al, %al
	je	.LBB1_23
# %bb.11:
	cmpb	$36, %al
	je	.LBB1_23
# %bb.12:
	movb	7(%rbx), %al
	movl	$4, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	testb	%al, %al
	je	.LBB1_23
# %bb.13:
	cmpb	$36, %al
	je	.LBB1_23
# %bb.14:
	movb	8(%rbx), %al
	movl	$5, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	testb	%al, %al
	je	.LBB1_23
# %bb.15:
	cmpb	$36, %al
	je	.LBB1_23
# %bb.16:
	movb	9(%rbx), %al
	movl	$6, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	testb	%al, %al
	je	.LBB1_23
# %bb.17:
	cmpb	$36, %al
	je	.LBB1_23
# %bb.18:
	movb	10(%rbx), %al
	movl	$7, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	testb	%al, %al
	je	.LBB1_23
# %bb.19:
	cmpb	$36, %al
	je	.LBB1_23
# %bb.20:
	movl	$8, %eax
	jmp	.LBB1_22
.LBB1_21:
	xorl	%eax, %eax
.LBB1_22:
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB1_23:
	movq	%r14, -112(%rbp)        # 8-byte Spill
	movq	$0, -200(%rbp)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1732584193,4023233417,2562383102,271733878]
	movups	%xmm0, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %r14d
	leaq	-200(%rbp), %r12
	movq	%r12, %rdi
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	md5_update
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	%ebx, %edx
	movq	%r12, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	md5_update
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	md5_update
	leaq	-64(%rbp), %rsi
	movq	%r12, %rdi
	callq	md5_sum
	movq	$0, -200(%rbp)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1732584193,4023233417,2562383102,271733878]
	movups	%xmm0, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	%r14, %rdx
	callq	md5_update
	addl	$3, %ebx
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rdx
	callq	md5_update
	movq	%r14, %rbx
	movq	%r14, -80(%rbp)         # 8-byte Spill
	cmpq	$17, %r14
	jb	.LBB1_26
# %bb.24:                               # %.preheader1
	leaq	-200(%rbp), %r14
	leaq	-64(%rbp), %r12
	movq	-80(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_25:                               # =>This Inner Loop Header: Depth=1
	movl	$16, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	md5_update
	addl	$-16, %ebx
	cmpl	$16, %ebx
	ja	.LBB1_25
.LBB1_26:
	leaq	-200(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movq	%rbx, %rdx
	callq	md5_update
	movb	$0, -64(%rbp)
	testl	%r15d, %r15d
	je	.LBB1_32
# %bb.27:                               # %.preheader
	leaq	-200(%rbp), %rbx
	leaq	-64(%rbp), %r12
	jmp	.LBB1_30
	.p2align	4, 0x90
.LBB1_28:                               #   in Loop: Header=BB1_30 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB1_29:                               #   in Loop: Header=BB1_30 Depth=1
	callq	md5_update
	shrl	%r15d
	je	.LBB1_32
.LBB1_30:                               # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movq	%rbx, %rdi
	testb	$1, %r15b
	je	.LBB1_28
# %bb.31:                               #   in Loop: Header=BB1_30 Depth=1
	movq	%r12, %rsi
	jmp	.LBB1_29
.LBB1_32:
	leaq	-200(%rbp), %r12
	leaq	-64(%rbp), %r15
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	md5_sum
	xorl	%ebx, %ebx
	jmp	.LBB1_35
	.p2align	4, 0x90
.LBB1_33:                               #   in Loop: Header=BB1_35 Depth=1
	movq	%r12, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
.LBB1_34:                               #   in Loop: Header=BB1_35 Depth=1
	callq	md5_update
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	md5_sum
	addl	$1, %ebx
	cmpl	$1000, %ebx             # imm = 0x3E8
	je	.LBB1_44
.LBB1_35:                               # =>This Inner Loop Header: Depth=1
	movzwl	%bx, %eax
	imull	$9363, %eax, %ecx       # imm = 0x2493
	shrl	$16, %ecx
	movl	%ebx, %edx
	subl	%ecx, %edx
	movzwl	%dx, %r14d
	shrl	%r14d
	addl	%ecx, %r14d
	shrl	$2, %r14d
	leal	(,%r14,8), %ecx
	subl	%ecx, %r14d
	imull	$43691, %eax, %eax      # imm = 0xAAAB
	shrl	$17, %eax
	leal	(%rax,%rax,2), %r13d
	negl	%r13d
	movq	$0, -200(%rbp)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1732584193,4023233417,2562383102,271733878]
	movups	%xmm0, -192(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %bl
	je	.LBB1_37
# %bb.36:                               #   in Loop: Header=BB1_35 Depth=1
	movq	%r12, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB1_38
	.p2align	4, 0x90
.LBB1_37:                               #   in Loop: Header=BB1_35 Depth=1
	movl	$16, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
.LBB1_38:                               #   in Loop: Header=BB1_35 Depth=1
	callq	md5_update
	addw	%bx, %r13w
	je	.LBB1_40
# %bb.39:                               #   in Loop: Header=BB1_35 Depth=1
	movq	%r12, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %rdx        # 8-byte Reload
	callq	md5_update
.LBB1_40:                               #   in Loop: Header=BB1_35 Depth=1
	addw	%bx, %r14w
	je	.LBB1_42
# %bb.41:                               #   in Loop: Header=BB1_35 Depth=1
	movq	%r12, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	md5_update
.LBB1_42:                               #   in Loop: Header=BB1_35 Depth=1
	testb	$1, %bl
	je	.LBB1_33
# %bb.43:                               #   in Loop: Header=BB1_35 Depth=1
	movl	$16, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	jmp	.LBB1_34
.LBB1_44:
	movq	-112(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movb	$36, 3(%rdi,%r14)
	movzbl	-64(%rbp), %eax
	movl	%eax, %ecx
	shll	$16, %ecx
	movzbl	-58(%rbp), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movzbl	-52(%rbp), %esi
	orl	%esi, %edx
	andl	$63, %esi
	movb	b64(%rsi), %bl
	movb	%bl, 4(%rdi,%r14)
	shrl	$6, %edx
	andl	$63, %edx
	movb	b64(%rdx), %dl
	movb	%dl, 5(%rdi,%r14)
	shrl	$12, %ecx
	andl	$63, %ecx
	movb	b64(%rcx), %cl
	movb	%cl, 6(%rdi,%r14)
	shrq	$2, %rax
	movb	b64(%rax), %al
	movb	%al, 7(%rdi,%r14)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-63(%rbp), %eax
	movl	%eax, %ecx
	shll	$16, %ecx
	movzbl	-57(%rbp), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movzbl	-51(%rbp), %esi
	orl	%esi, %edx
	andl	$63, %esi
	movb	b64(%rsi), %bl
	movb	%bl, 8(%rdi,%r14)
	shrl	$6, %edx
	andl	$63, %edx
	movb	b64(%rdx), %dl
	movb	%dl, 9(%rdi,%r14)
	shrl	$12, %ecx
	andl	$63, %ecx
	movb	b64(%rcx), %cl
	movb	%cl, 10(%rdi,%r14)
	shrq	$2, %rax
	movb	b64(%rax), %al
	movb	%al, 11(%rdi,%r14)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-62(%rbp), %eax
	movl	%eax, %ecx
	shll	$16, %ecx
	movzbl	-56(%rbp), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movzbl	-50(%rbp), %esi
	orl	%esi, %edx
	andl	$63, %esi
	movb	b64(%rsi), %bl
	movb	%bl, 12(%rdi,%r14)
	shrl	$6, %edx
	andl	$63, %edx
	movb	b64(%rdx), %dl
	movb	%dl, 13(%rdi,%r14)
	shrl	$12, %ecx
	andl	$63, %ecx
	movb	b64(%rcx), %cl
	movb	%cl, 14(%rdi,%r14)
	shrq	$2, %rax
	movb	b64(%rax), %al
	movb	%al, 15(%rdi,%r14)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-61(%rbp), %eax
	movl	%eax, %ecx
	shll	$16, %ecx
	movzbl	-55(%rbp), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movzbl	-49(%rbp), %esi
	orl	%esi, %edx
	andl	$63, %esi
	movb	b64(%rsi), %bl
	movb	%bl, 16(%rdi,%r14)
	shrl	$6, %edx
	andl	$63, %edx
	movb	b64(%rdx), %dl
	movb	%dl, 17(%rdi,%r14)
	shrl	$12, %ecx
	andl	$63, %ecx
	movb	b64(%rcx), %cl
	movb	%cl, 18(%rdi,%r14)
	shrq	$2, %rax
	movb	b64(%rax), %al
	movb	%al, 19(%rdi,%r14)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-60(%rbp), %eax
	movl	%eax, %ecx
	shll	$16, %ecx
	movzbl	-54(%rbp), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movzbl	-59(%rbp), %esi
	orl	%esi, %edx
	andl	$63, %esi
	movb	b64(%rsi), %bl
	movb	%bl, 20(%rdi,%r14)
	shrl	$6, %edx
	andl	$63, %edx
	movb	b64(%rdx), %dl
	movb	%dl, 21(%rdi,%r14)
	shrl	$12, %ecx
	andl	$63, %ecx
	movb	b64(%rcx), %cl
	movb	%cl, 22(%rdi,%r14)
	shrq	$2, %rax
	movb	b64(%rax), %al
	movb	%al, 23(%rdi,%r14)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-53(%rbp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movb	b64(%rcx), %cl
	movb	%cl, 24(%rdi,%r14)
	shrq	$6, %rax
	movb	b64(%rax), %al
	movb	%al, 25(%rdi,%r14)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 26(%rdi,%r14)
	jmp	.LBB1_45
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
	andl	$63, %eax
	je	.LBB2_3
# %bb.1:
	movl	$64, %r12d
	subl	%eax, %r12d
	movl	%eax, %eax
	leaq	(%r15,%rax), %rdi
	addq	$24, %rdi
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
.LBB2_3:
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
	movb	8(%rbx), %al
	movb	%al, (%r14)
	movb	9(%rbx), %al
	movb	%al, 1(%r14)
	movb	10(%rbx), %al
	movb	%al, 2(%r14)
	movb	11(%rbx), %al
	movb	%al, 3(%r14)
	movb	12(%rbx), %al
	movb	%al, 4(%r14)
	movb	13(%rbx), %al
	movb	%al, 5(%r14)
	movb	14(%rbx), %al
	movb	%al, 6(%r14)
	movb	15(%rbx), %al
	movb	%al, 7(%r14)
	movb	16(%rbx), %al
	movb	%al, 8(%r14)
	movb	17(%rbx), %al
	movb	%al, 9(%r14)
	movb	18(%rbx), %al
	movb	%al, 10(%r14)
	movb	19(%rbx), %al
	movb	%al, 11(%r14)
	movb	20(%rbx), %al
	movb	%al, 12(%r14)
	movb	21(%rbx), %al
	movb	%al, 13(%r14)
	movb	22(%rbx), %al
	movb	%al, 14(%r14)
	movb	23(%rbx), %al
	movb	%al, 15(%r14)
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
	movups	(%rsi), %xmm0
	movaps	%xmm0, (%rsp)
	movups	16(%rsi), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	32(%rsi), %xmm0
	movaps	%xmm0, 32(%rsp)
	movups	48(%rsi), %xmm0
	movaps	%xmm0, 48(%rsp)
	movdqu	8(%rdi), %xmm0
	movd	%xmm0, %r8d
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %eax
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %ecx
	pshufd	$231, %xmm0, %xmm1      # xmm1 = xmm0[3,1,2,3]
	movd	%xmm1, %edx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
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
	addl	tab+4(,%r9,4), %edx
	xorl	%ecx, %esi
	addl	%esi, %edx
	roll	$12, %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %edx
	movl	%r8d, %esi
	xorl	%eax, %esi
	andl	%edx, %esi
	addl	8(%rsp,%r9,4), %ecx
	addl	tab+8(,%r9,4), %ecx
	xorl	%eax, %esi
	addl	%esi, %ecx
	roll	$17, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %ecx
	movl	%edx, %esi
	xorl	%r8d, %esi
	andl	%ecx, %esi
	addl	12(%rsp,%r9,4), %eax
	addl	tab+12(,%r9,4), %eax
	xorl	%r8d, %esi
	addl	%esi, %eax
	roll	$22, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %eax
	addq	$4, %r9
	cmpq	$16, %r9
	jb	.LBB4_1
# %bb.2:
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
	xorl	%esi, %eax
	addl	40(%rsp), %edx
	addl	%edx, %eax
	addl	$38016083, %eax         # imm = 0x2441453
	roll	$9, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %eax
	movl	%eax, %edx
	xorl	%r8d, %edx
	andl	%esi, %edx
	addl	60(%rsp), %ecx
	xorl	%r8d, %edx
	addl	%edx, %ecx
	addl	$-660478335, %ecx       # imm = 0xD8A1E681
	roll	$14, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %ecx
	movl	%ecx, %edx
	xorl	%eax, %edx
	andl	%r8d, %edx
	xorl	%eax, %edx
	addl	16(%rsp), %esi
	addl	%esi, %edx
	addl	$-405537848, %edx       # imm = 0xE7D3FBC8
	roll	$20, %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %edx
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
	xorl	%edx, %esi
	addl	8(%rsp), %eax
	addl	%esi, %eax
	addl	$-51403784, %eax        # imm = 0xFCEFA3F8
	roll	$9, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %eax
	movl	%eax, %esi
	xorl	%r8d, %esi
	andl	%edx, %esi
	addl	28(%rsp), %ecx
	xorl	%r8d, %esi
	leal	(%rsi,%rcx), %r9d
	addl	$1735328473, %r9d       # imm = 0x676F02D9
	roll	$14, %r9d
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r9d
	movl	%r9d, %esi
	xorl	%eax, %esi
	andl	%r8d, %esi
	xorl	%eax, %esi
	addl	48(%rsp), %edx
	leal	(%rsi,%rdx), %r11d
	addl	$-1926607734, %r11d     # imm = 0x8D2A4C8A
	roll	$20, %r11d
	movl	$42, __A_VARIABLE(%rip)
	addl	%r9d, %r11d
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
	xorl	%r8d, %ecx
	addl	32(%rsp), %eax
	leal	(%rcx,%rax), %esi
	addl	$-2022574463, %esi      # imm = 0x8771F681
	roll	$11, %esi
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %esi
	movl	%r8d, %ecx
	xorl	%r11d, %ecx
	addl	44(%rsp), %r9d
	xorl	%esi, %ecx
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
	addl	28(%rsp), %edx
	xorl	%eax, %ecx
	leal	(%rcx,%rdx), %r10d
	addl	$-155497632, %r10d      # imm = 0xF6BB4B60
	roll	$16, %r10d
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r10d
	movl	%eax, %edx
	xorl	%r8d, %edx
	xorl	%r10d, %edx
	addl	40(%rsp), %r9d
	addl	%r9d, %edx
	addl	$-1094730640, %edx      # imm = 0xBEBFBC70
	roll	$23, %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%r10d, %edx
	movl	%r10d, %ecx
	xorl	%edx, %ecx
	movl	%ecx, %esi
	xorl	%eax, %esi
	movl	52(%rsp), %r9d
	addl	%r8d, %esi
	addl	%esi, %r9d
	addl	$681279174, %r9d        # imm = 0x289B7EC6
	roll	$4, %r9d
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %r9d
	xorl	%r9d, %ecx
	addl	(%rsp), %eax
	addl	%ecx, %eax
	addl	$-358537222, %eax       # imm = 0xEAA127FA
	roll	$11, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%r9d, %eax
	movl	%r9d, %ecx
	xorl	%edx, %ecx
	addl	12(%rsp), %r10d
	xorl	%eax, %ecx
	leal	(%rcx,%r10), %esi
	addl	$-722521979, %esi       # imm = 0xD4EF3085
	roll	$16, %esi
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %esi
	movl	%eax, %ecx
	xorl	%r9d, %ecx
	xorl	%esi, %ecx
	addl	24(%rsp), %edx
	leal	(%rcx,%rdx), %r8d
	addl	$76029189, %r8d         # imm = 0x4881D05
	roll	$23, %r8d
	movl	$42, __A_VARIABLE(%rip)
	addl	%esi, %r8d
	movl	%esi, %ecx
	xorl	%r8d, %ecx
	movl	%ecx, %edx
	xorl	%eax, %edx
	movl	36(%rsp), %r10d
	addl	%r9d, %edx
	leal	(%r10,%rdx), %r9d
	addl	$-640364487, %r9d       # imm = 0xD9D4D039
	roll	$4, %r9d
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %r9d
	xorl	%r9d, %ecx
	addl	48(%rsp), %eax
	addl	%eax, %ecx
	addl	$-421815835, %ecx       # imm = 0xE6DB99E5
	roll	$11, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%r9d, %ecx
	movl	%r9d, %eax
	xorl	%r8d, %eax
	addl	60(%rsp), %esi
	xorl	%ecx, %eax
	leal	(%rax,%rsi), %r10d
	addl	$530742520, %r10d       # imm = 0x1FA27CF8
	roll	$16, %r10d
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %r10d
	movl	%ecx, %eax
	xorl	%r9d, %eax
	xorl	%r10d, %eax
	addl	8(%rsp), %r8d
	addl	%r8d, %eax
	addl	$-995338651, %eax       # imm = 0xC4AC5665
	roll	$23, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%r10d, %eax
	movl	%ecx, %esi
	notl	%esi
	orl	%eax, %esi
	xorl	%r10d, %esi
	movl	(%rsp), %r8d
	addl	%r9d, %esi
	addl	%esi, %r8d
	addl	$-198630844, %r8d       # imm = 0xF4292244
	roll	$6, %r8d
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r8d
	movl	%r10d, %edx
	notl	%edx
	orl	%r8d, %edx
	xorl	%eax, %edx
	addl	28(%rsp), %ecx
	addl	%edx, %ecx
	addl	$1126891415, %ecx       # imm = 0x432AFF97
	roll	$10, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %ecx
	movl	%eax, %edx
	notl	%edx
	orl	%ecx, %edx
	addl	56(%rsp), %r10d
	xorl	%r8d, %edx
	addl	%edx, %r10d
	addl	$-1416354905, %r10d     # imm = 0xAB9423A7
	roll	$15, %r10d
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %r10d
	movl	%r8d, %esi
	notl	%esi
	orl	%r10d, %esi
	xorl	%ecx, %esi
	addl	20(%rsp), %eax
	addl	%esi, %eax
	addl	$-57434055, %eax        # imm = 0xFC93A039
	roll	$21, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%r10d, %eax
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
	xorl	%eax, %edx
	addl	60(%rsp), %ecx
	addl	%edx, %ecx
	addl	$-30611744, %ecx        # imm = 0xFE2CE6E0
	roll	$10, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	%r8d, %ecx
	movl	%eax, %edx
	notl	%edx
	orl	%ecx, %edx
	addl	24(%rsp), %r10d
	xorl	%r8d, %edx
	addl	%edx, %r10d
	addl	$-1560198380, %r10d     # imm = 0xA3014314
	roll	$15, %r10d
	movl	$42, __A_VARIABLE(%rip)
	addl	%ecx, %r10d
	movl	%r8d, %esi
	notl	%esi
	orl	%r10d, %esi
	xorl	%ecx, %esi
	addl	52(%rsp), %eax
	addl	%esi, %eax
	addl	$1309151649, %eax       # imm = 0x4E0811A1
	roll	$21, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%r10d, %eax
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
	notl	%esi
	orl	%edx, %esi
	addl	36(%rsp), %eax
	xorl	%ecx, %esi
	addl	%esi, %eax
	addl	$-343485551, %eax       # imm = 0xEB86D391
	roll	$21, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %eax
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

	.type	tab,@object             # @tab
	.section	.rodata,"a",@progbits
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
