	.text
	.file	"crypt_sha256.c"
	.globl	__crypt_sha256          # -- Begin function __crypt_sha256
	.p2align	4, 0x90
	.type	__crypt_sha256,@function
__crypt_sha256:                         # @__crypt_sha256
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
	callq	sha256crypt
	movq	%rax, %rbx
	leaq	-144(%rbp), %r14
	movl	$__crypt_sha256.testkey, %edi
	movl	$__crypt_sha256.testsetting, %esi
	movq	%r14, %rdx
	callq	sha256crypt
	movq	%rax, %rcx
	movl	$.L.str, %eax
	testq	%rbx, %rbx
	je	.LBB0_3
# %bb.1:
	cmpq	%r14, %rcx
	jne	.LBB0_3
# %bb.2:
	leaq	-144(%rbp), %rdi
	movl	$__crypt_sha256.testhash, %esi
	movl	$73, %edx
	callq	memcmp
	testl	%eax, %eax
	movl	$.L.str, %eax
	cmoveq	%rbx, %rax
.LBB0_3:
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__crypt_sha256, .Lfunc_end0-__crypt_sha256
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function sha256crypt
.LCPI1_0:
	.long	1779033703              # 0x6a09e667
	.long	3144134277              # 0xbb67ae85
	.long	1013904242              # 0x3c6ef372
	.long	2773480762              # 0xa54ff53a
.LCPI1_1:
	.long	1359893119              # 0x510e527f
	.long	2600822924              # 0x9b05688c
	.long	528734635               # 0x1f83d9ab
	.long	1541459225              # 0x5be0cd19
	.text
	.p2align	4, 0x90
	.type	sha256crypt,@function
sha256crypt:                            # @sha256crypt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
	movq	%rdx, %r15
	movq	%rsi, %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -256(%rbp)
	movl	$0, -240(%rbp)
	movl	$257, %esi              # imm = 0x101
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	strnlen
	movq	%rax, %r14
	cmpl	$256, %r14d             # imm = 0x100
	ja	.LBB1_3
# %bb.2:
	movl	$.L.str.1, %esi
	movl	$3, %edx
	movq	%rbx, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB1_5
.LBB1_3:
	xorl	%r14d, %r14d
.LBB1_4:
	movq	%r14, %rax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_5:
	leaq	3(%rbx), %r12
	movl	$.L.str.2, %esi
	movl	$7, %edx
	movq	%r12, %rdi
	callq	strncmp
	movl	$5000, -60(%rbp)        # 4-byte Folded Spill
                                        # imm = 0x1388
	testl	%eax, %eax
	je	.LBB1_9
.LBB1_6:
	movq	%r14, -120(%rbp)        # 8-byte Spill
	movb	(%r12), %al
	xorl	%r14d, %r14d
	cmpb	$35, %al
	movq	%r12, -48(%rbp)         # 8-byte Spill
	jg	.LBB1_14
# %bb.7:
	testb	%al, %al
	je	.LBB1_21
# %bb.8:
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_16
.LBB1_9:
	callq	__locale_ctype_ptr
	movsbq	10(%rbx), %rcx
	testb	$4, 1(%rax,%rcx)
	je	.LBB1_3
# %bb.10:
	addq	$10, %rbx
	leaq	-224(%rbp), %rsi
	movq	%rbx, %rdi
	movl	$10, %edx
	callq	strtoul
	movq	-224(%rbp), %r12
	cmpb	$36, (%r12)
	jne	.LBB1_3
# %bb.11:
	movl	$1000, %edx             # imm = 0x3E8
	cmpq	$1000, %rax             # imm = 0x3E8
	jb	.LBB1_69
# %bb.12:
	cmpq	$9999999, %rax          # imm = 0x98967F
	ja	.LBB1_3
# %bb.68:
	movl	%eax, %edx
.LBB1_69:
	addq	$1, %r12
	leaq	-256(%rbp), %rdi
	movl	$.L.str.3, %esi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	xorl	%eax, %eax
	callq	sprintf
	jmp	.LBB1_6
.LBB1_14:
	cmpb	$36, %al
	je	.LBB1_21
# %bb.15:
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_16:
	movb	1(%r12), %al
	xorl	%r14d, %r14d
	cmpb	$35, %al
	jg	.LBB1_19
# %bb.17:
	movl	$1, %r14d
	testb	%al, %al
	je	.LBB1_21
# %bb.18:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_65
.LBB1_19:
	cmpb	$58, %al
	je	.LBB1_4
# %bb.20:
	movl	$1, %r14d
	cmpb	$36, %al
	jne	.LBB1_65
.LBB1_21:
	movq	%r15, -232(%rbp)        # 8-byte Spill
	movq	$0, -224(%rbp)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1779033703,3144134277,1013904242,2773480762]
	movups	%xmm0, -216(%rbp)
	movaps	.LCPI1_1(%rip), %xmm0   # xmm0 = [1359893119,2600822924,528734635,1541459225]
	movups	%xmm0, -200(%rbp)
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movl	%ebx, %r12d
	leaq	-224(%rbp), %rdi
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	sha256_update
	movl	%r14d, %r13d
	movq	%rbx, %r14
	leaq	-224(%rbp), %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r13, %rdx
	callq	sha256_update
	leaq	-224(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	sha256_update
	leaq	-112(%rbp), %rsi
	movq	%rbx, %rdi
	callq	sha256_sum
	movq	$0, -224(%rbp)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1779033703,3144134277,1013904242,2773480762]
	movups	%xmm0, -216(%rbp)
	movaps	.LCPI1_1(%rip), %xmm0   # xmm0 = [1359893119,2600822924,528734635,1541459225]
	movups	%xmm0, -200(%rbp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %r15
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%r12, %rdx
	callq	sha256_update
	leaq	-224(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	sha256_update
	movq	%r12, -80(%rbp)         # 8-byte Spill
	cmpl	$33, %r14d
	jb	.LBB1_25
# %bb.22:
	movq	%r14, %rcx
	movl	$4294967263, %eax       # imm = 0xFFFFFFDF
	addq	%rax, %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	leaq	-224(%rbp), %r12
	leaq	-112(%rbp), %r13
	movl	%r14d, %ebx
	.p2align	4, 0x90
.LBB1_23:                               # =>This Inner Loop Header: Depth=1
	movl	$32, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	sha256_update
	addl	$-32, %ebx
	cmpl	$32, %ebx
	ja	.LBB1_23
# %bb.24:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	andl	$-32, %ecx
	movl	$4294967263, %eax       # imm = 0xFFFFFFDF
	leal	(%r14,%rax), %r12d
	subl	%ecx, %r12d
	addl	$1, %r12d
.LBB1_25:
	leaq	-224(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movq	%r12, %rdx
	callq	sha256_update
	testl	%r14d, %r14d
	movq	%r15, -72(%rbp)         # 8-byte Spill
	je	.LBB1_34
# %bb.26:                               # %.preheader8
	leaq	-224(%rbp), %rbx
	leaq	-112(%rbp), %r12
	movl	%r14d, %r13d
	movq	-80(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_29
	.p2align	4, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_29 Depth=1
	movq	%rbx, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
.LBB1_28:                               #   in Loop: Header=BB1_29 Depth=1
	callq	sha256_update
	shrl	%r13d
	je	.LBB1_31
.LBB1_29:                               # =>This Inner Loop Header: Depth=1
	testb	$1, %r13b
	je	.LBB1_27
# %bb.30:                               #   in Loop: Header=BB1_29 Depth=1
	movl	$32, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	jmp	.LBB1_28
.LBB1_31:
	leaq	-224(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	callq	sha256_sum
	movq	$0, -224(%rbp)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1779033703,3144134277,1013904242,2773480762]
	movups	%xmm0, -216(%rbp)
	movaps	.LCPI1_1(%rip), %xmm0   # xmm0 = [1359893119,2600822924,528734635,1541459225]
	movups	%xmm0, -200(%rbp)
	testl	%r14d, %r14d
	movq	%r15, %r13
	movq	-56(%rbp), %r15         # 8-byte Reload
	je	.LBB1_35
# %bb.32:                               # %.preheader6
	leaq	-224(%rbp), %r12
	movl	%r14d, %ebx
	.p2align	4, 0x90
.LBB1_33:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	sha256_update
	addl	$-1, %ebx
	jne	.LBB1_33
	jmp	.LBB1_35
.LBB1_34:
	leaq	-224(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	callq	sha256_sum
	movq	$0, -224(%rbp)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1779033703,3144134277,1013904242,2773480762]
	movups	%xmm0, -216(%rbp)
	movaps	.LCPI1_1(%rip), %xmm0   # xmm0 = [1359893119,2600822924,528734635,1541459225]
	movups	%xmm0, -200(%rbp)
.LBB1_35:
	leaq	-224(%rbp), %r12
	leaq	-320(%rbp), %rsi
	movq	%r12, %rdi
	callq	sha256_sum
	movq	$0, -224(%rbp)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1779033703,3144134277,1013904242,2773480762]
	movups	%xmm0, -216(%rbp)
	movaps	.LCPI1_1(%rip), %xmm0   # xmm0 = [1359893119,2600822924,528734635,1541459225]
	movups	%xmm0, -200(%rbp)
	xorl	%ebx, %ebx
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	-48(%rbp), %r13         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_36:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	sha256_update
	addl	$1, %ebx
	movzbl	-112(%rbp), %eax
	addl	$16, %eax
	cmpl	%eax, %ebx
	jb	.LBB1_36
# %bb.37:
	leaq	-224(%rbp), %rdi
	leaq	-288(%rbp), %rsi
	callq	sha256_sum
	cmpl	$0, -60(%rbp)           # 4-byte Folded Reload
	je	.LBB1_62
# %bb.38:
	movl	$4294967263, %eax       # imm = 0xFFFFFFDF
	addl	%r14d, %eax
	andl	$31, %eax
	addl	$1, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	leaq	-224(%rbp), %r15
	leaq	-320(%rbp), %r13
	jmp	.LBB1_41
	.p2align	4, 0x90
.LBB1_39:                               #   in Loop: Header=BB1_41 Depth=1
	movq	%r14, %rbx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	sha256_update
	leaq	-112(%rbp), %r14
.LBB1_40:                               #   in Loop: Header=BB1_41 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	sha256_sum
	addl	$1, %r12d
	cmpl	-60(%rbp), %r12d        # 4-byte Folded Reload
	movq	%rbx, %r14
	je	.LBB1_62
.LBB1_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_44 Depth 2
                                        #     Child Loop BB1_53 Depth 2
                                        #     Child Loop BB1_60 Depth 2
	movq	$0, -224(%rbp)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1779033703,3144134277,1013904242,2773480762]
	movups	%xmm0, -216(%rbp)
	movaps	.LCPI1_1(%rip), %xmm0   # xmm0 = [1359893119,2600822924,528734635,1541459225]
	movups	%xmm0, -200(%rbp)
	testb	$1, %r12b
	je	.LBB1_47
# %bb.42:                               #   in Loop: Header=BB1_41 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpl	$33, %r14d
	jb	.LBB1_46
# %bb.43:                               # %.preheader3
                                        #   in Loop: Header=BB1_41 Depth=1
                                        # kill: def $r14d killed $r14d killed $r14
	.p2align	4, 0x90
.LBB1_44:                               #   Parent Loop BB1_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$32, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	sha256_update
	addl	$-32, %r14d
	cmpl	$32, %r14d
	ja	.LBB1_44
# %bb.45:                               #   in Loop: Header=BB1_41 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-120(%rbp), %r14        # 8-byte Reload
.LBB1_46:                               #   in Loop: Header=BB1_41 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	jmp	.LBB1_48
	.p2align	4, 0x90
.LBB1_47:                               #   in Loop: Header=BB1_41 Depth=1
	movl	$32, %edx
	movq	%r15, %rdi
	leaq	-112(%rbp), %rsi
.LBB1_48:                               #   in Loop: Header=BB1_41 Depth=1
	callq	sha256_update
	imull	$-1431655765, %r12d, %eax # imm = 0xAAAAAAAB
	cmpl	$1431655766, %eax       # imm = 0x55555556
	jb	.LBB1_50
# %bb.49:                               #   in Loop: Header=BB1_41 Depth=1
	movq	%r15, %rdi
	leaq	-288(%rbp), %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	sha256_update
.LBB1_50:                               #   in Loop: Header=BB1_41 Depth=1
	imull	$-1227133513, %r12d, %eax # imm = 0xB6DB6DB7
	cmpl	$613566757, %eax        # imm = 0x24924925
	jb	.LBB1_56
# %bb.51:                               #   in Loop: Header=BB1_41 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpl	$33, %r14d
	jb	.LBB1_55
# %bb.52:                               # %.preheader1
                                        #   in Loop: Header=BB1_41 Depth=1
	movl	%r14d, %ebx
	.p2align	4, 0x90
.LBB1_53:                               #   Parent Loop BB1_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$32, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	sha256_update
	addl	$-32, %ebx
	cmpl	$32, %ebx
	ja	.LBB1_53
# %bb.54:                               #   in Loop: Header=BB1_41 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
.LBB1_55:                               #   in Loop: Header=BB1_41 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	sha256_update
.LBB1_56:                               #   in Loop: Header=BB1_41 Depth=1
	testb	$1, %r12b
	je	.LBB1_58
# %bb.57:                               #   in Loop: Header=BB1_41 Depth=1
	movq	%r14, %rbx
	movl	$32, %edx
	movq	%r15, %rdi
	leaq	-112(%rbp), %r14
	movq	%r14, %rsi
	callq	sha256_update
	jmp	.LBB1_40
	.p2align	4, 0x90
.LBB1_58:                               #   in Loop: Header=BB1_41 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpl	$33, %r14d
	jb	.LBB1_39
# %bb.59:                               # %.preheader
                                        #   in Loop: Header=BB1_41 Depth=1
	movl	%r14d, %ebx
	.p2align	4, 0x90
.LBB1_60:                               #   Parent Loop BB1_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$32, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	sha256_update
	addl	$-32, %ebx
	cmpl	$32, %ebx
	ja	.LBB1_60
# %bb.61:                               #   in Loop: Header=BB1_41 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB1_39
.LBB1_62:
	xorl	%ebx, %ebx
	leaq	-256(%rbp), %rdx
	movl	$.L.str.4, %esi
	movq	-232(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	xorl	%eax, %eax
	callq	sprintf
	movslq	%eax, %r8
	leaq	(%r14,%r8), %rcx
	.p2align	4, 0x90
.LBB1_63:                               # =>This Inner Loop Header: Depth=1
	movzbl	sha256crypt.perm(%rbx,%rbx,2), %edx
	movzbl	-112(%rbp,%rdx), %edx
	movl	%edx, %esi
	shll	$16, %esi
	movzbl	sha256crypt.perm+1(%rbx,%rbx,2), %edi
	movzbl	-112(%rbp,%rdi), %edi
	shll	$8, %edi
	orl	%edi, %esi
	movzbl	sha256crypt.perm+2(%rbx,%rbx,2), %eax
	movzbl	-112(%rbp,%rax), %eax
	orl	%eax, %edi
	andl	$63, %eax
	movzbl	b64(%rax), %eax
	movb	%al, (%rcx,%rbx,4)
	shrl	$6, %edi
	andl	$63, %edi
	movzbl	b64(%rdi), %eax
	movb	%al, 1(%rcx,%rbx,4)
	shrl	$12, %esi
	andl	$63, %esi
	movzbl	b64(%rsi), %eax
	movb	%al, 2(%rcx,%rbx,4)
	shrq	$2, %rdx
	movzbl	b64(%rdx), %eax
	movb	%al, 3(%rcx,%rbx,4)
	addq	$1, %rbx
	cmpq	$10, %rbx
	jne	.LBB1_63
# %bb.64:
	movzbl	-81(%rbp), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	movzbl	-82(%rbp), %edx
	orl	%edx, %ecx
	andl	$63, %edx
	movb	b64(%rdx), %dl
	movb	%dl, 40(%r14,%r8)
	shrl	$6, %ecx
	andl	$63, %ecx
	movb	b64(%rcx), %cl
	movb	%cl, 41(%r14,%r8)
	shrq	$4, %rax
	movb	b64(%rax), %al
	movb	%al, 42(%r14,%r8)
	movb	$0, 43(%r14,%r8)
	jmp	.LBB1_4
.LBB1_65:
	movb	2(%r12), %al
	movl	$2, %r14d
	cmpb	$35, %al
	jg	.LBB1_70
# %bb.66:
	testb	%al, %al
	je	.LBB1_21
# %bb.67:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_72
.LBB1_70:
	cmpb	$36, %al
	je	.LBB1_21
# %bb.71:
	movl	$0, %r14d
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_72:
	movb	3(%r12), %al
	movl	$3, %r14d
	cmpb	$35, %al
	jg	.LBB1_75
# %bb.73:
	testb	%al, %al
	je	.LBB1_21
# %bb.74:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_77
.LBB1_75:
	cmpb	$36, %al
	je	.LBB1_21
# %bb.76:
	movl	$0, %r14d
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_77:
	movb	4(%r12), %al
	movl	$4, %r14d
	cmpb	$35, %al
	jg	.LBB1_80
# %bb.78:
	testb	%al, %al
	je	.LBB1_21
# %bb.79:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_82
.LBB1_80:
	cmpb	$36, %al
	je	.LBB1_21
# %bb.81:
	movl	$0, %r14d
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_82:
	movq	%r15, %rcx
	movb	5(%r12), %al
	movl	$5, %r14d
	cmpb	$35, %al
	jg	.LBB1_85
# %bb.83:
	testb	%al, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.84:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_87
.LBB1_85:
	cmpb	$36, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.86:
	movl	$0, %r14d
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_87:
	movb	6(%r12), %al
	movl	$6, %r14d
	cmpb	$35, %al
	jg	.LBB1_90
# %bb.88:
	testb	%al, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.89:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_92
.LBB1_90:
	cmpb	$36, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.91:
	movl	$0, %r14d
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_92:
	movb	7(%r12), %al
	movl	$7, %r14d
	cmpb	$35, %al
	jg	.LBB1_95
# %bb.93:
	testb	%al, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.94:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_97
.LBB1_95:
	cmpb	$36, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.96:
	movl	$0, %r14d
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_97:
	movb	8(%r12), %al
	movl	$8, %r14d
	cmpb	$35, %al
	jg	.LBB1_100
# %bb.98:
	testb	%al, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.99:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_102
.LBB1_100:
	cmpb	$36, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.101:
	movl	$0, %r14d
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_102:
	movb	9(%r12), %al
	movl	$9, %r14d
	cmpb	$35, %al
	jg	.LBB1_105
# %bb.103:
	testb	%al, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.104:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_107
.LBB1_105:
	cmpb	$36, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.106:
	movl	$0, %r14d
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_107:
	movb	10(%r12), %al
	movl	$10, %r14d
	cmpb	$35, %al
	jg	.LBB1_110
# %bb.108:
	testb	%al, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.109:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_112
.LBB1_110:
	cmpb	$36, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.111:
	movl	$0, %r14d
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_112:
	movb	11(%r12), %al
	movl	$11, %r14d
	cmpb	$35, %al
	jg	.LBB1_115
# %bb.113:
	testb	%al, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.114:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_117
.LBB1_115:
	cmpb	$36, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.116:
	movl	$0, %r14d
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_117:
	movb	12(%r12), %al
	movl	$12, %r14d
	cmpb	$35, %al
	jg	.LBB1_120
# %bb.118:
	testb	%al, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.119:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_122
.LBB1_120:
	cmpb	$36, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.121:
	movl	$0, %r14d
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_122:
	movb	13(%r12), %al
	movl	$13, %r14d
	cmpb	$35, %al
	jg	.LBB1_125
# %bb.123:
	testb	%al, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.124:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_127
.LBB1_125:
	cmpb	$36, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.126:
	movl	$0, %r14d
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_127:
	movb	14(%r12), %al
	movl	$14, %r14d
	cmpb	$35, %al
	jg	.LBB1_130
# %bb.128:
	testb	%al, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.129:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_132
.LBB1_130:
	cmpb	$36, %al
	movq	%rcx, %r15
	movq	-48(%rbp), %r12         # 8-byte Reload
	je	.LBB1_21
# %bb.131:
	movl	$0, %r14d
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_132:
	movb	15(%r12), %al
	movl	$15, %r14d
	cmpb	$35, %al
	jg	.LBB1_135
# %bb.133:
	testb	%al, %al
	movq	%rcx, %r15
	je	.LBB1_21
# %bb.134:
	movl	$0, %r14d
	cmpb	$10, %al
	je	.LBB1_4
	jmp	.LBB1_137
.LBB1_135:
	cmpb	$36, %al
	movq	%rcx, %r15
	je	.LBB1_21
# %bb.136:
	movl	$0, %r14d
	cmpb	$58, %al
	je	.LBB1_4
.LBB1_137:
	movl	$16, %r14d
	jmp	.LBB1_21
.Lfunc_end1:
	.size	sha256crypt, .Lfunc_end1-sha256crypt
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sha256_update
	.type	sha256_update,@function
sha256_update:                          # @sha256_update
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
	addq	$40, %rdi
	cmpq	%r13, %r12
	ja	.LBB2_8
# %bb.2:
	leaq	40(%r15), %rbx
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
	addq	$40, %r15
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
	.size	sha256_update, .Lfunc_end2-sha256_update
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sha256_sum
	.type	sha256_sum,@function
sha256_sum:                             # @sha256_sum
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
	leaq	40(%rdi), %r15
	movb	$-128, 40(%rdi,%rdx)
	cmpl	$56, %edx
	jb	.LBB3_2
# %bb.1:
	movl	%r12d, %eax
	leaq	(%rbx,%rax), %rdi
	addq	$40, %rdi
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
	addq	$40, %rdi
	movl	$56, %edx
	subl	%r12d, %edx
	xorl	%esi, %esi
	callq	memset
	movq	(%rbx), %rax
	leaq	(,%rax,8), %rcx
	movq	%rcx, (%rbx)
	movq	%rax, %rdx
	shrq	$53, %rdx
	movb	%dl, 96(%rbx)
	movq	%rax, %rdx
	shrq	$45, %rdx
	movb	%dl, 97(%rbx)
	movq	%rax, %rdx
	shrq	$37, %rdx
	movb	%dl, 98(%rbx)
	movq	%rax, %rdx
	shrq	$29, %rdx
	movb	%dl, 99(%rbx)
	movq	%rax, %rdx
	shrq	$21, %rdx
	movb	%dl, 100(%rbx)
	movq	%rax, %rdx
	shrq	$13, %rdx
	movb	%dl, 101(%rbx)
	shrq	$5, %rax
	movb	%al, 102(%rbx)
	movb	%cl, 103(%rbx)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	processblock
	movb	11(%rbx), %al
	movb	%al, (%r14)
	movb	10(%rbx), %al
	movb	%al, 1(%r14)
	movb	9(%rbx), %al
	movb	%al, 2(%r14)
	movb	8(%rbx), %al
	movb	%al, 3(%r14)
	movb	15(%rbx), %al
	movb	%al, 4(%r14)
	movb	14(%rbx), %al
	movb	%al, 5(%r14)
	movb	13(%rbx), %al
	movb	%al, 6(%r14)
	movb	12(%rbx), %al
	movb	%al, 7(%r14)
	movb	19(%rbx), %al
	movb	%al, 8(%r14)
	movb	18(%rbx), %al
	movb	%al, 9(%r14)
	movb	17(%rbx), %al
	movb	%al, 10(%r14)
	movb	16(%rbx), %al
	movb	%al, 11(%r14)
	movb	23(%rbx), %al
	movb	%al, 12(%r14)
	movb	22(%rbx), %al
	movb	%al, 13(%r14)
	movb	21(%rbx), %al
	movb	%al, 14(%r14)
	movb	20(%rbx), %al
	movb	%al, 15(%r14)
	movb	27(%rbx), %al
	movb	%al, 16(%r14)
	movb	26(%rbx), %al
	movb	%al, 17(%r14)
	movb	25(%rbx), %al
	movb	%al, 18(%r14)
	movb	24(%rbx), %al
	movb	%al, 19(%r14)
	movb	31(%rbx), %al
	movb	%al, 20(%r14)
	movb	30(%rbx), %al
	movb	%al, 21(%r14)
	movb	29(%rbx), %al
	movb	%al, 22(%r14)
	movb	28(%rbx), %al
	movb	%al, 23(%r14)
	movb	35(%rbx), %al
	movb	%al, 24(%r14)
	movb	34(%rbx), %al
	movb	%al, 25(%r14)
	movb	33(%rbx), %al
	movb	%al, 26(%r14)
	movb	32(%rbx), %al
	movb	%al, 27(%r14)
	movb	39(%rbx), %al
	movb	%al, 28(%r14)
	movb	38(%rbx), %al
	movb	%al, 29(%r14)
	movb	37(%rbx), %al
	movb	%al, 30(%r14)
	movb	36(%rbx), %al
	movb	%al, 31(%r14)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sha256_sum, .Lfunc_end3-sha256_sum
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function processblock
.LCPI4_0:
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.text
	.p2align	4, 0x90
	.type	processblock,@function
processblock:                           # @processblock
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
	movdqu	(%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$24, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$8, %xmm3
	movdqa	.LCPI4_0(%rip), %xmm0   # xmm0 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	pand	%xmm0, %xmm3
	pslld	$16, %xmm3
	por	%xmm2, %xmm3
	movdqa	%xmm1, %xmm2
	psrld	$16, %xmm2
	pand	%xmm0, %xmm2
	pslld	$8, %xmm2
	psrld	$24, %xmm1
	por	%xmm2, %xmm1
	por	%xmm3, %xmm1
	movdqa	%xmm1, 16(%rsp)
	movdqu	16(%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$24, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$8, %xmm3
	pand	%xmm0, %xmm3
	pslld	$16, %xmm3
	por	%xmm2, %xmm3
	movdqa	%xmm1, %xmm2
	psrld	$16, %xmm2
	pand	%xmm0, %xmm2
	pslld	$8, %xmm2
	psrld	$24, %xmm1
	por	%xmm2, %xmm1
	por	%xmm3, %xmm1
	movdqa	%xmm1, 32(%rsp)
	movdqu	32(%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$24, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$8, %xmm3
	pand	%xmm0, %xmm3
	pslld	$16, %xmm3
	por	%xmm2, %xmm3
	movdqa	%xmm1, %xmm2
	psrld	$16, %xmm2
	pand	%xmm0, %xmm2
	pslld	$8, %xmm2
	psrld	$24, %xmm1
	por	%xmm2, %xmm1
	por	%xmm3, %xmm1
	movdqa	%xmm1, 48(%rsp)
	movdqu	48(%rsi), %xmm1
	movdqa	%xmm1, %xmm2
	pslld	$24, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$8, %xmm3
	pand	%xmm0, %xmm3
	pslld	$16, %xmm3
	por	%xmm2, %xmm3
	movdqa	%xmm1, %xmm2
	psrld	$16, %xmm2
	pand	%xmm0, %xmm2
	pslld	$8, %xmm2
	psrld	$24, %xmm1
	por	%xmm2, %xmm1
	por	%xmm3, %xmm1
	movdqa	%xmm1, 64(%rsp)
	movl	$16, %eax
	movl	16(%rsp), %ecx
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movl	8(%rsp,%rax,4), %edx
	movl	%edx, %esi
	roll	$15, %esi
	movl	-44(%rsp,%rax,4), %r8d
	movl	%edx, %ebp
	roll	$13, %ebp
	shrl	$10, %edx
	xorl	%ebp, %edx
	xorl	%esi, %edx
	movl	%r8d, %esi
	roll	$25, %esi
	movl	%r8d, %ebp
	roll	$14, %ebp
	movl	%r8d, %ebx
	shrl	$3, %ebx
	xorl	%ebp, %ebx
	xorl	%esi, %ebx
	addl	-12(%rsp,%rax,4), %ecx
	addl	%edx, %ecx
	addl	%ebx, %ecx
	movl	%ecx, 16(%rsp,%rax,4)
	addq	$1, %rax
	movl	%r8d, %ecx
	cmpq	$64, %rax
	jne	.LBB4_1
# %bb.2:
	movdqu	8(%rdi), %xmm1
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movdqu	24(%rdi), %xmm0
	movd	%xmm1, %esi
	pshufd	$229, %xmm1, %xmm2      # xmm2 = xmm1[1,1,2,3]
	movd	%xmm2, %edx
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	movd	%xmm2, %r14d
	pshufd	$231, %xmm1, %xmm2      # xmm2 = xmm1[3,1,2,3]
	movd	%xmm2, %edi
	movd	%xmm0, %ebp
	pshufd	$229, %xmm0, %xmm2      # xmm2 = xmm0[1,1,2,3]
	movd	%xmm2, %r12d
	pshufd	$78, %xmm0, %xmm2       # xmm2 = xmm0[2,3,0,1]
	movd	%xmm2, %r9d
	pshufd	$231, %xmm0, %xmm2      # xmm2 = xmm0[3,1,2,3]
	movd	%xmm2, %r15d
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movl	%edi, 4(%rsp)           # 4-byte Spill
	movl	%ebp, %r13d
	movl	%ebp, %eax
	roll	$26, %eax
	movl	%ebp, %edi
	roll	$21, %edi
	movl	%esi, %r11d
	movl	%r12d, %r8d
	movl	%r9d, %r10d
	xorl	%eax, %edi
	movl	%ebp, %eax
	roll	$7, %eax
	xorl	%edi, %eax
	addl	%r15d, %eax
	movl	%r9d, %edi
	xorl	%r12d, %edi
	andl	%ebp, %edi
	xorl	%r9d, %edi
	addl	%eax, %edi
	addl	K(%rcx), %edi
	addl	16(%rsp,%rcx), %edi
	roll	$30, %esi
	movl	%edx, %ebx
	movl	%r14d, %eax
	movl	%r11d, %edx
	roll	$19, %edx
	xorl	%esi, %edx
	movl	%r11d, %ebp
	roll	$10, %ebp
	xorl	%edx, %ebp
	movl	%ebx, %edx
	andl	%r11d, %edx
	movl	%ebx, %esi
	orl	%r11d, %esi
	andl	%eax, %esi
	orl	%edx, %esi
	addl	%ebp, %esi
	movl	4(%rsp), %ebp           # 4-byte Reload
	addl	%edi, %ebp
	addl	%edi, %esi
	addq	$4, %rcx
	movl	%r9d, %r15d
	movl	%r12d, %r9d
	movl	%r13d, %r12d
	movl	%eax, %edi
	movl	%ebx, %r14d
	movl	%r11d, %edx
	cmpq	$256, %rcx              # imm = 0x100
	jne	.LBB4_3
# %bb.4:
	movd	%eax, %xmm2
	movd	%ebx, %xmm3
	punpckldq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	movd	%r11d, %xmm2
	movd	%esi, %xmm4
	punpckldq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	punpcklqdq	%xmm3, %xmm4    # xmm4 = xmm4[0],xmm3[0]
	paddd	%xmm1, %xmm4
	movq	8(%rsp), %rax           # 8-byte Reload
	movdqu	%xmm4, 8(%rax)
	movd	%r10d, %xmm1
	movd	%r8d, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%r13d, %xmm1
	movd	%ebp, %xmm3
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	punpcklqdq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0]
	paddd	%xmm0, %xmm3
	movdqu	%xmm3, 24(%rax)
	addq	$280, %rsp              # imm = 0x118
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
	.type	__crypt_sha256.testkey,@object # @__crypt_sha256.testkey
	.section	.rodata,"a",@progbits
	.p2align	4
__crypt_sha256.testkey:
	.asciz	"Xy01@#\001\002\200\177\377\r\n\201\t !"
	.size	__crypt_sha256.testkey, 18

	.type	__crypt_sha256.testsetting,@object # @__crypt_sha256.testsetting
	.p2align	4
__crypt_sha256.testsetting:
	.asciz	"$5$rounds=1234$abc0123456789$"
	.size	__crypt_sha256.testsetting, 30

	.type	__crypt_sha256.testhash,@object # @__crypt_sha256.testhash
	.p2align	4
__crypt_sha256.testhash:
	.asciz	"$5$rounds=1234$abc0123456789$3VfDjPt05VHFn47C/ojFZ6KRPYrOjj1lLbH.dkF3bZ6"
	.size	__crypt_sha256.testhash, 73

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"*"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"$5$"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"rounds="
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"rounds=%u$"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"$5$%s%.*s$"
	.size	.L.str.4, 11

	.type	sha256crypt.perm,@object # @sha256crypt.perm
	.section	.rodata,"a",@progbits
	.p2align	4
sha256crypt.perm:
	.ascii	"\000\n\024"
	.ascii	"\025\001\013"
	.ascii	"\f\026\002"
	.ascii	"\003\r\027"
	.ascii	"\030\004\016"
	.ascii	"\017\031\005"
	.ascii	"\006\020\032"
	.ascii	"\033\007\021"
	.ascii	"\022\034\b"
	.ascii	"\t\023\035"
	.size	sha256crypt.perm, 30

	.type	K,@object               # @K
	.p2align	4
K:
	.long	1116352408              # 0x428a2f98
	.long	1899447441              # 0x71374491
	.long	3049323471              # 0xb5c0fbcf
	.long	3921009573              # 0xe9b5dba5
	.long	961987163               # 0x3956c25b
	.long	1508970993              # 0x59f111f1
	.long	2453635748              # 0x923f82a4
	.long	2870763221              # 0xab1c5ed5
	.long	3624381080              # 0xd807aa98
	.long	310598401               # 0x12835b01
	.long	607225278               # 0x243185be
	.long	1426881987              # 0x550c7dc3
	.long	1925078388              # 0x72be5d74
	.long	2162078206              # 0x80deb1fe
	.long	2614888103              # 0x9bdc06a7
	.long	3248222580              # 0xc19bf174
	.long	3835390401              # 0xe49b69c1
	.long	4022224774              # 0xefbe4786
	.long	264347078               # 0xfc19dc6
	.long	604807628               # 0x240ca1cc
	.long	770255983               # 0x2de92c6f
	.long	1249150122              # 0x4a7484aa
	.long	1555081692              # 0x5cb0a9dc
	.long	1996064986              # 0x76f988da
	.long	2554220882              # 0x983e5152
	.long	2821834349              # 0xa831c66d
	.long	2952996808              # 0xb00327c8
	.long	3210313671              # 0xbf597fc7
	.long	3336571891              # 0xc6e00bf3
	.long	3584528711              # 0xd5a79147
	.long	113926993               # 0x6ca6351
	.long	338241895               # 0x14292967
	.long	666307205               # 0x27b70a85
	.long	773529912               # 0x2e1b2138
	.long	1294757372              # 0x4d2c6dfc
	.long	1396182291              # 0x53380d13
	.long	1695183700              # 0x650a7354
	.long	1986661051              # 0x766a0abb
	.long	2177026350              # 0x81c2c92e
	.long	2456956037              # 0x92722c85
	.long	2730485921              # 0xa2bfe8a1
	.long	2820302411              # 0xa81a664b
	.long	3259730800              # 0xc24b8b70
	.long	3345764771              # 0xc76c51a3
	.long	3516065817              # 0xd192e819
	.long	3600352804              # 0xd6990624
	.long	4094571909              # 0xf40e3585
	.long	275423344               # 0x106aa070
	.long	430227734               # 0x19a4c116
	.long	506948616               # 0x1e376c08
	.long	659060556               # 0x2748774c
	.long	883997877               # 0x34b0bcb5
	.long	958139571               # 0x391c0cb3
	.long	1322822218              # 0x4ed8aa4a
	.long	1537002063              # 0x5b9cca4f
	.long	1747873779              # 0x682e6ff3
	.long	1955562222              # 0x748f82ee
	.long	2024104815              # 0x78a5636f
	.long	2227730452              # 0x84c87814
	.long	2361852424              # 0x8cc70208
	.long	2428436474              # 0x90befffa
	.long	2756734187              # 0xa4506ceb
	.long	3204031479              # 0xbef9a3f7
	.long	3329325298              # 0xc67178f2
	.size	K, 256

	.type	b64,@object             # @b64
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
b64:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	b64, 65

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
