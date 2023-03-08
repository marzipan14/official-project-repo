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
	leaq	-64(%rbp), %r14
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
	movq	%r14, %rsi
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
	movzbl	-53(%rbp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movb	b64(%rcx), %cl
	movb	%cl, 24(%rdi,%r14)
	shrq	$6, %rax
	movb	b64(%rax), %al
	movb	%al, 25(%rdi,%r14)
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
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	memcpy                  # TAILCALL
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
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
	movq	%rdi, 192(%rsp)         # 8-byte Spill
	movups	(%rsi), %xmm0
	movaps	%xmm0, 32(%rsp)
	movups	16(%rsi), %xmm0
	movaps	%xmm0, 48(%rsp)
	movups	32(%rsi), %xmm0
	movaps	%xmm0, 64(%rsp)
	movups	48(%rsi), %xmm0
	movaps	%xmm0, 80(%rsp)
	movdqu	8(%rdi), %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movd	%xmm1, %ecx
	pshufd	$231, %xmm0, %xmm1      # xmm1 = xmm0[3,1,2,3]
	movd	%xmm1, %eax
	movl	%eax, %esi
	xorl	%ecx, %esi
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %edx
	andl	%edx, %esi
	xorl	%eax, %esi
	movd	%xmm0, %edi
	addl	%esi, %edi
	movl	32(%rsp), %r14d
	movl	36(%rsp), %r10d
	leal	(%r14,%rdi), %esi
	addl	$-680876936, %esi       # imm = 0xD76AA478
	movq	%r14, 152(%rsp)         # 8-byte Spill
	roll	$7, %esi
	addl	%edx, %esi
	movl	%ecx, %edi
	xorl	%edx, %edi
	andl	%esi, %edi
	xorl	%ecx, %edi
	addl	%r10d, %eax
	addl	%edi, %eax
	addl	$-389564586, %eax       # imm = 0xE8C7B756
	roll	$12, %eax
	addl	%esi, %eax
	movl	%esi, %edi
	xorl	%edx, %edi
	andl	%eax, %edi
	xorl	%edx, %edi
	movl	40(%rsp), %ebp
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	addl	%ebp, %ecx
	addl	%edi, %ecx
	addl	$606105819, %ecx        # imm = 0x242070DB
	roll	$17, %ecx
	addl	%eax, %ecx
	movl	%eax, %edi
	xorl	%esi, %edi
	andl	%ecx, %edi
	xorl	%esi, %edi
	movl	44(%rsp), %ebp
	movq	%rbp, 184(%rsp)         # 8-byte Spill
	addl	%ebp, %edx
	addl	%edi, %edx
	addl	$-1044525330, %edx      # imm = 0xC1BDCEEE
	roll	$22, %edx
	addl	%ecx, %edx
	movl	%eax, %edi
	xorl	%ecx, %edi
	andl	%edx, %edi
	xorl	%eax, %edi
	addl	%esi, %edi
	movl	48(%rsp), %esi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	52(%rsp), %r15d
	leal	(%rsi,%rdi), %r8d
	addl	$-176418897, %r8d       # imm = 0xF57C0FAF
	roll	$7, %r8d
	addl	%edx, %r8d
	movl	%ecx, %esi
	xorl	%edx, %esi
	andl	%r8d, %esi
	xorl	%ecx, %esi
	addl	%r15d, %eax
	addl	%esi, %eax
	addl	$1200080426, %eax       # imm = 0x4787C62A
	roll	$12, %eax
	addl	%r8d, %eax
	movl	%r8d, %esi
	xorl	%edx, %esi
	andl	%eax, %esi
	xorl	%edx, %esi
	movl	56(%rsp), %edi
	addl	%edi, %ecx
	movq	%rdi, %r13
	movq	%rdi, 176(%rsp)         # 8-byte Spill
	addl	%ecx, %esi
	addl	$-1473231341, %esi      # imm = 0xA8304613
	roll	$17, %esi
	addl	%eax, %esi
	movl	%eax, %ecx
	xorl	%r8d, %ecx
	andl	%esi, %ecx
	xorl	%r8d, %ecx
	movl	60(%rsp), %edi
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	addl	%edi, %edx
	leal	(%rcx,%rdx), %ebp
	addl	$-45705983, %ebp        # imm = 0xFD469501
	roll	$22, %ebp
	addl	%esi, %ebp
	movl	%eax, %ecx
	xorl	%esi, %ecx
	andl	%ebp, %ecx
	xorl	%eax, %ecx
	addl	%r8d, %ecx
	movl	64(%rsp), %edx
	movq	%rdx, (%rsp)            # 8-byte Spill
	leal	(%rdx,%rcx), %r9d
	addl	$1770035416, %r9d       # imm = 0x698098D8
	roll	$7, %r9d
	addl	%ebp, %r9d
	movl	%esi, %ecx
	xorl	%ebp, %ecx
	andl	%r9d, %ecx
	xorl	%esi, %ecx
	movl	68(%rsp), %edx
	addl	%edx, %eax
	movq	%rdx, %r12
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	addl	%ecx, %eax
	addl	$-1958414417, %eax      # imm = 0x8B44F7AF
	roll	$12, %eax
	addl	%r9d, %eax
	movl	%r9d, %ecx
	xorl	%ebp, %ecx
	andl	%eax, %ecx
	xorl	%ebp, %ecx
	movl	72(%rsp), %edx
	addl	%edx, %esi
	movq	%rdx, %r8
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	addl	%esi, %ecx
	addl	$-42063, %ecx           # imm = 0xFFFF5BB1
	roll	$17, %ecx
	addl	%eax, %ecx
	movl	%eax, %edx
	xorl	%r9d, %edx
	andl	%ecx, %edx
	xorl	%r9d, %edx
	movl	76(%rsp), %esi
	addl	%esi, %ebp
	movq	%rsi, %rbx
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	addl	%ebp, %edx
	addl	$-1990404162, %edx      # imm = 0x895CD7BE
	roll	$22, %edx
	addl	%ecx, %edx
	movl	%eax, %esi
	xorl	%ecx, %esi
	andl	%edx, %esi
	xorl	%eax, %esi
	addl	%r9d, %esi
	movl	80(%rsp), %edi
	movq	%rdi, 144(%rsp)         # 8-byte Spill
	addl	%edi, %esi
	addl	$1804603682, %esi       # imm = 0x6B901122
	roll	$7, %esi
	addl	%edx, %esi
	movl	%ecx, %edi
	xorl	%edx, %edi
	andl	%esi, %edi
	xorl	%ecx, %edi
	movl	84(%rsp), %r11d
	addl	%r11d, %eax
	leal	(%rdi,%rax), %ebp
	addl	$-40341101, %ebp        # imm = 0xFD987193
	roll	$12, %ebp
	addl	%esi, %ebp
	movl	%esi, %eax
	xorl	%edx, %eax
	andl	%ebp, %eax
	xorl	%edx, %eax
	movl	88(%rsp), %edi
	addl	%edi, %ecx
	movq	%rdi, %r9
	addl	%ecx, %eax
	addl	$-1502002290, %eax      # imm = 0xA679438E
	roll	$17, %eax
	addl	%ebp, %eax
	movl	%ebp, %ecx
	xorl	%esi, %ecx
	andl	%eax, %ecx
	xorl	%esi, %ecx
	movl	92(%rsp), %edi
	addl	%edi, %edx
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	addl	%ecx, %edx
	addl	$1236535329, %edx       # imm = 0x49B40821
	roll	$22, %edx
	addl	%eax, %edx
	movl	%eax, %ecx
	xorl	%edx, %ecx
	andl	%ebp, %ecx
	xorl	%eax, %ecx
	addl	%esi, %ecx
	movq	%r10, 120(%rsp)         # 8-byte Spill
	leal	(%r10,%rcx), %esi
	addl	$-165796510, %esi       # imm = 0xF61E2562
	roll	$5, %esi
	addl	%edx, %esi
	movl	%esi, %ecx
	xorl	%edx, %ecx
	andl	%eax, %ecx
	xorl	%edx, %ecx
	addl	%r13d, %ebp
	addl	%ecx, %ebp
	addl	$-1069501632, %ebp      # imm = 0xC040B340
	roll	$9, %ebp
	addl	%esi, %ebp
	movl	%ebp, %ecx
	xorl	%esi, %ecx
	andl	%edx, %ecx
	xorl	%esi, %ecx
	addl	%ebx, %eax
	addl	%ecx, %eax
	addl	$643717713, %eax        # imm = 0x265E5A51
	roll	$14, %eax
	addl	%ebp, %eax
	movl	%eax, %ecx
	xorl	%ebp, %ecx
	andl	%esi, %ecx
	xorl	%ebp, %ecx
	addl	%r14d, %edx
	addl	%ecx, %edx
	addl	$-373897302, %edx       # imm = 0xE9B6C7AA
	roll	$20, %edx
	addl	%eax, %edx
	movl	%eax, %ecx
	xorl	%edx, %ecx
	andl	%ebp, %ecx
	xorl	%eax, %ecx
	addl	%esi, %ecx
	movq	%r15, %r14
	movq	%r15, 112(%rsp)         # 8-byte Spill
	leal	(%r15,%rcx), %esi
	addl	$-701558691, %esi       # imm = 0xD62F105D
	roll	$5, %esi
	addl	%edx, %esi
	movl	%esi, %ecx
	xorl	%edx, %ecx
	andl	%eax, %ecx
	xorl	%edx, %ecx
	addl	%r8d, %ebp
	addl	%ecx, %ebp
	addl	$38016083, %ebp         # imm = 0x2441453
	roll	$9, %ebp
	addl	%esi, %ebp
	movl	%ebp, %ecx
	xorl	%esi, %ecx
	andl	%edx, %ecx
	xorl	%esi, %ecx
	addl	%edi, %eax
	addl	%ecx, %eax
	addl	$-660478335, %eax       # imm = 0xD8A1E681
	roll	$14, %eax
	addl	%ebp, %eax
	movl	%eax, %ecx
	xorl	%ebp, %ecx
	andl	%esi, %ecx
	xorl	%ebp, %ecx
	movq	8(%rsp), %r8            # 8-byte Reload
	addl	%r8d, %edx
	addl	%ecx, %edx
	addl	$-405537848, %edx       # imm = 0xE7D3FBC8
	roll	$20, %edx
	addl	%eax, %edx
	movl	%eax, %ecx
	xorl	%edx, %ecx
	andl	%ebp, %ecx
	xorl	%eax, %ecx
	addl	%esi, %ecx
	leal	(%r12,%rcx), %esi
	addl	$568446438, %esi        # imm = 0x21E1CDE6
	roll	$5, %esi
	addl	%edx, %esi
	movl	%esi, %ecx
	xorl	%edx, %ecx
	andl	%eax, %ecx
	xorl	%edx, %ecx
	addl	%r9d, %ebp
	movq	%r9, 104(%rsp)          # 8-byte Spill
	addl	%ecx, %ebp
	addl	$-1019803690, %ebp      # imm = 0xC33707D6
	roll	$9, %ebp
	addl	%esi, %ebp
	movl	%ebp, %ecx
	xorl	%esi, %ecx
	andl	%edx, %ecx
	xorl	%esi, %ecx
	movq	184(%rsp), %r13         # 8-byte Reload
	addl	%r13d, %eax
	addl	%ecx, %eax
	addl	$-187363961, %eax       # imm = 0xF4D50D87
	roll	$14, %eax
	addl	%ebp, %eax
	movl	%eax, %ecx
	xorl	%ebp, %ecx
	andl	%esi, %ecx
	xorl	%ebp, %ecx
	movq	(%rsp), %r15            # 8-byte Reload
	addl	%r15d, %edx
	addl	%ecx, %edx
	addl	$1163531501, %edx       # imm = 0x455A14ED
	roll	$20, %edx
	addl	%eax, %edx
	movl	%eax, %ecx
	xorl	%edx, %ecx
	andl	%ebp, %ecx
	xorl	%eax, %ecx
	addl	%esi, %ecx
	leal	(%r11,%rcx), %esi
	addl	$-1444681467, %esi      # imm = 0xA9E3E905
	roll	$5, %esi
	addl	%edx, %esi
	movl	%esi, %ecx
	xorl	%edx, %ecx
	andl	%eax, %ecx
	xorl	%edx, %ecx
	addl	24(%rsp), %ebp          # 4-byte Folded Reload
	addl	%ecx, %ebp
	addl	$-51403784, %ebp        # imm = 0xFCEFA3F8
	roll	$9, %ebp
	addl	%esi, %ebp
	movl	%ebp, %ecx
	xorl	%esi, %ecx
	andl	%edx, %ecx
	xorl	%esi, %ecx
	movq	168(%rsp), %r12         # 8-byte Reload
	addl	%r12d, %eax
	addl	%ecx, %eax
	addl	$1735328473, %eax       # imm = 0x676F02D9
	roll	$14, %eax
	addl	%ebp, %eax
	movl	%eax, %ecx
	xorl	%ebp, %ecx
	andl	%esi, %ecx
	xorl	%ebp, %ecx
	movq	144(%rsp), %rbx         # 8-byte Reload
	addl	%ebx, %edx
	addl	%ecx, %edx
	addl	$-1926607734, %edx      # imm = 0x8D2A4C8A
	roll	$20, %edx
	addl	%eax, %edx
	movl	%eax, %edi
	xorl	%edx, %edi
	movl	%edi, %ecx
	xorl	%ebp, %ecx
	addl	%esi, %ecx
	addl	%r14d, %ecx
	addl	$-378558, %ecx          # imm = 0xFFFA3942
	roll	$4, %ecx
	addl	%edx, %ecx
	xorl	%ecx, %edi
	addl	%r15d, %ebp
	leal	(%rdi,%rbp), %esi
	addl	$-2022574463, %esi      # imm = 0x8771F681
	roll	$11, %esi
	addl	%ecx, %esi
	movl	%ecx, %edi
	xorl	%edx, %edi
	xorl	%esi, %edi
	addl	16(%rsp), %eax          # 4-byte Folded Reload
	addl	%edi, %eax
	addl	$1839030562, %eax       # imm = 0x6D9D6122
	roll	$16, %eax
	addl	%esi, %eax
	movl	%esi, %edi
	xorl	%ecx, %edi
	xorl	%eax, %edi
	addl	%r9d, %edx
	addl	%edi, %edx
	addl	$-35309556, %edx        # imm = 0xFDE5380C
	roll	$23, %edx
	addl	%eax, %edx
	movl	%eax, %edi
	xorl	%edx, %edi
	movl	%edi, %ebp
	xorl	%esi, %ebp
	addl	%ecx, %ebp
	leal	(%r10,%rbp), %ecx
	addl	$-1530992060, %ecx      # imm = 0xA4BEEA44
	roll	$4, %ecx
	addl	%edx, %ecx
	xorl	%ecx, %edi
	addl	%r8d, %esi
	addl	%edi, %esi
	addl	$1272893353, %esi       # imm = 0x4BDECFA9
	roll	$11, %esi
	addl	%ecx, %esi
	movl	%ecx, %edi
	xorl	%edx, %edi
	xorl	%esi, %edi
	addl	%r12d, %eax
	addl	%edi, %eax
	addl	$-155497632, %eax       # imm = 0xF6BB4B60
	roll	$16, %eax
	addl	%esi, %eax
	movl	%esi, %edi
	xorl	%ecx, %edi
	xorl	%eax, %edi
	movq	128(%rsp), %r9          # 8-byte Reload
	addl	%r9d, %edx
	addl	%edi, %edx
	addl	$-1094730640, %edx      # imm = 0xBEBFBC70
	roll	$23, %edx
	addl	%eax, %edx
	movl	%eax, %edi
	xorl	%edx, %edi
	movl	%edi, %ebp
	xorl	%esi, %ebp
	addl	%ecx, %ebp
	leal	(%r11,%rbp), %ecx
	addl	$681279174, %ecx        # imm = 0x289B7EC6
	roll	$4, %ecx
	addl	%edx, %ecx
	xorl	%ecx, %edi
	movq	152(%rsp), %r14         # 8-byte Reload
	addl	%r14d, %esi
	addl	%edi, %esi
	addl	$-358537222, %esi       # imm = 0xEAA127FA
	roll	$11, %esi
	addl	%ecx, %esi
	movl	%ecx, %edi
	xorl	%edx, %edi
	xorl	%esi, %edi
	movq	%r13, %r8
	addl	%r8d, %eax
	leal	(%rdi,%rax), %ebp
	addl	$-722521979, %ebp       # imm = 0xD4EF3085
	roll	$16, %ebp
	addl	%esi, %ebp
	movl	%esi, %eax
	xorl	%ecx, %eax
	xorl	%ebp, %eax
	movq	176(%rsp), %r10         # 8-byte Reload
	addl	%r10d, %edx
	addl	%eax, %edx
	addl	$76029189, %edx         # imm = 0x4881D05
	roll	$23, %edx
	addl	%ebp, %edx
	movl	%ebp, %eax
	xorl	%edx, %eax
	movl	%eax, %edi
	xorl	%esi, %edi
	addl	%ecx, %edi
	movq	136(%rsp), %r15         # 8-byte Reload
	addl	%r15d, %edi
	addl	$-640364487, %edi       # imm = 0xD9D4D039
	roll	$4, %edi
	addl	%edx, %edi
	xorl	%edi, %eax
	addl	%ebx, %esi
	addl	%esi, %eax
	addl	$-421815835, %eax       # imm = 0xE6DB99E5
	roll	$11, %eax
	addl	%edi, %eax
	movl	%edi, %ecx
	xorl	%edx, %ecx
	xorl	%eax, %ecx
	movq	160(%rsp), %r13         # 8-byte Reload
	addl	%r13d, %ebp
	leal	(%rcx,%rbp), %esi
	addl	$530742520, %esi        # imm = 0x1FA27CF8
	roll	$16, %esi
	addl	%eax, %esi
	movl	%eax, %ecx
	xorl	%edi, %ecx
	xorl	%esi, %ecx
	movq	24(%rsp), %rbp          # 8-byte Reload
	addl	%ebp, %edx
	addl	%edx, %ecx
	addl	$-995338651, %ecx       # imm = 0xC4AC5665
	roll	$23, %ecx
	addl	%esi, %ecx
	addl	%eax, %r12d
	notl	%eax
	orl	%ecx, %eax
	xorl	%esi, %eax
	addl	%edi, %eax
	addl	%r14d, %eax
	addl	$-198630844, %eax       # imm = 0xF4292244
	roll	$6, %eax
	addl	%ecx, %eax
	movq	104(%rsp), %r14         # 8-byte Reload
	addl	%esi, %r14d
	notl	%esi
	orl	%eax, %esi
	xorl	%ecx, %esi
	leal	(%rsi,%r12), %edx
	addl	$1126891415, %edx       # imm = 0x432AFF97
	roll	$10, %edx
	addl	%eax, %edx
	movq	112(%rsp), %rdi         # 8-byte Reload
	addl	%ecx, %edi
	notl	%ecx
	orl	%edx, %ecx
	xorl	%eax, %ecx
	leal	(%rcx,%r14), %esi
	addl	$-1416354905, %esi      # imm = 0xAB9423A7
	roll	$15, %esi
	addl	%edx, %esi
	movl	%eax, %ecx
	notl	%ecx
	orl	%esi, %ecx
	xorl	%edx, %ecx
	addl	%edi, %ecx
	addl	$-57434055, %ecx        # imm = 0xFC93A039
	roll	$21, %ecx
	addl	%esi, %ecx
	addl	%edx, %r8d
	notl	%edx
	orl	%ecx, %edx
	xorl	%esi, %edx
	addl	%eax, %edx
	leal	(%rbx,%rdx), %eax
	addl	$1700485571, %eax       # imm = 0x655B59C3
	roll	$6, %eax
	addl	%ecx, %eax
	addl	%esi, %r9d
	notl	%esi
	orl	%eax, %esi
	xorl	%ecx, %esi
	leal	(%rsi,%r8), %edx
	addl	$-1894986606, %edx      # imm = 0x8F0CCC92
	roll	$10, %edx
	addl	%eax, %edx
	movq	120(%rsp), %rdi         # 8-byte Reload
	addl	%ecx, %edi
	notl	%ecx
	orl	%edx, %ecx
	xorl	%eax, %ecx
	leal	(%rcx,%r9), %esi
	addl	$-1051523, %esi         # imm = 0xFFEFF47D
	roll	$15, %esi
	addl	%edx, %esi
	movl	%eax, %ecx
	notl	%ecx
	orl	%esi, %ecx
	xorl	%edx, %ecx
	addl	%edi, %ecx
	addl	$-2054922799, %ecx      # imm = 0x85845DD1
	roll	$21, %ecx
	addl	%esi, %ecx
	movq	%r13, %rbx
	addl	%edx, %ebx
	notl	%edx
	orl	%ecx, %edx
	xorl	%esi, %edx
	addl	%eax, %edx
	movq	(%rsp), %rax            # 8-byte Reload
	addl	%edx, %eax
	addl	$1873313359, %eax       # imm = 0x6FA87E4F
	roll	$6, %eax
	addl	%ecx, %eax
	movq	%r10, %rdi
	addl	%esi, %edi
	notl	%esi
	orl	%eax, %esi
	xorl	%ecx, %esi
	leal	(%rsi,%rbx), %edx
	addl	$-30611744, %edx        # imm = 0xFE2CE6E0
	roll	$10, %edx
	addl	%eax, %edx
	addl	%ecx, %r11d
	notl	%ecx
	orl	%edx, %ecx
	xorl	%eax, %ecx
	leal	(%rcx,%rdi), %esi
	addl	$-1560198380, %esi      # imm = 0xA3014314
	roll	$15, %esi
	addl	%edx, %esi
	movl	%eax, %ecx
	notl	%ecx
	orl	%esi, %ecx
	xorl	%edx, %ecx
	addl	%r11d, %ecx
	addl	$1309151649, %ecx       # imm = 0x4E0811A1
	roll	$21, %ecx
	addl	%esi, %ecx
	movq	16(%rsp), %rbx          # 8-byte Reload
	addl	%edx, %ebx
	notl	%edx
	orl	%ecx, %edx
	xorl	%esi, %edx
	addl	%eax, %edx
	movq	8(%rsp), %rax           # 8-byte Reload
	addl	%edx, %eax
	addl	$-145523070, %eax       # imm = 0xF7537E82
	roll	$6, %eax
	addl	%ecx, %eax
	movq	%rbp, %rdi
	addl	%esi, %edi
	notl	%esi
	orl	%eax, %esi
	xorl	%ecx, %esi
	leal	(%rsi,%rbx), %edx
	addl	$-1120210379, %edx      # imm = 0xBD3AF235
	roll	$10, %edx
	addl	%eax, %edx
	addl	%ecx, %r15d
	notl	%ecx
	orl	%edx, %ecx
	xorl	%eax, %ecx
	addl	%edi, %ecx
	addl	$718787259, %ecx        # imm = 0x2AD7D2BB
	roll	$15, %ecx
	addl	%edx, %ecx
	movd	%eax, %xmm1
	notl	%eax
	orl	%ecx, %eax
	xorl	%edx, %eax
	addl	%r15d, %eax
	addl	$-343485551, %eax       # imm = 0xEB86D391
	roll	$21, %eax
	addl	%ecx, %eax
	movd	%eax, %xmm2
	movd	%ecx, %xmm3
	movd	%edx, %xmm4
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	punpckldq	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	punpcklqdq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0]
	paddd	%xmm0, %xmm1
	movq	192(%rsp), %rax         # 8-byte Reload
	movdqu	%xmm1, 8(%rax)
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
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

	.type	b64,@object             # @b64
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
b64:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	b64, 65

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
