	.text
	.file	"crypt_sha512.c"
	.globl	__crypt_sha512          # -- Begin function __crypt_sha512
	.p2align	4, 0x90
	.type	__crypt_sha512,@function
__crypt_sha512:                         # @__crypt_sha512
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
	callq	sha512crypt
	movq	%rax, %rbx
	leaq	-144(%rbp), %r14
	movl	$__crypt_sha512.testkey, %edi
	movl	$__crypt_sha512.testsetting, %esi
	movq	%r14, %rdx
	callq	sha512crypt
	movq	%rax, %rcx
	movl	$.L.str, %eax
	testq	%rbx, %rbx
	je	.LBB0_3
# %bb.1:
	cmpq	%r14, %rcx
	jne	.LBB0_3
# %bb.2:
	leaq	-144(%rbp), %rdi
	movl	$__crypt_sha512.testhash, %esi
	movl	$116, %edx
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
	.size	__crypt_sha512, .Lfunc_end0-__crypt_sha512
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function sha512crypt
.LCPI1_0:
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	8                       # 0x8
	.byte	201                     # 0xc9
	.byte	188                     # 0xbc
	.byte	243                     # 0xf3
	.byte	103                     # 0x67
	.byte	230                     # 0xe6
	.byte	9                       # 0x9
	.byte	106                     # 0x6a
.LCPI1_1:
	.quad	-4942790177534073029    # 0xbb67ae8584caa73b
	.quad	4354685564936845355     # 0x3c6ef372fe94f82b
.LCPI1_2:
	.quad	-6534734903238641935    # 0xa54ff53a5f1d36f1
	.quad	5840696475078001361     # 0x510e527fade682d1
.LCPI1_3:
	.quad	-7276294671716946913    # 0x9b05688c2b3e6c1f
	.quad	2270897969802886507     # 0x1f83d9abfb41bd6b
.LCPI1_4:
	.quad	2270897969802886507     # 0x1f83d9abfb41bd6b
	.quad	6620516959819538809     # 0x5be0cd19137e2179
	.text
	.p2align	4, 0x90
	.type	sha512crypt,@function
sha512crypt:                            # @sha512crypt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$472, %rsp              # imm = 0x1D8
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -176(%rbp)
	movl	$0, -160(%rbp)
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	cmpb	$0, (%r14,%rbx)
	je	.LBB1_9
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	leal	1(%rbx), %eax
	cmpl	$257, %eax              # imm = 0x101
	jae	.LBB1_11
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, 1(%r14,%rbx)
	je	.LBB1_6
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, 2(%r14,%rbx)
	je	.LBB1_7
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, 3(%r14,%rbx)
	je	.LBB1_8
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	addq	$4, %rbx
	cmpb	$0, (%r14,%rbx)
	jne	.LBB1_1
	jmp	.LBB1_9
.LBB1_6:                                # %splitsplitsplit
	addl	$1, %ebx
	jmp	.LBB1_9
.LBB1_7:                                # %.split_crit_edge
	addl	$2, %ebx
	jmp	.LBB1_9
.LBB1_8:                                # %._crit_edge
	addl	$3, %ebx
.LBB1_9:
	movl	$.L.str.1, %esi
	movl	$3, %edx
	movq	%r15, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB1_12
.LBB1_10:
	xorl	%r12d, %r12d
.LBB1_11:
	movq	%r12, %rax
	addq	$472, %rsp              # imm = 0x1D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_12:
	leaq	3(%r15), %r12
	movl	$.L.str.2, %esi
	movl	$7, %edx
	movq	%r12, %rdi
	callq	strncmp
	movl	$5000, -64(%rbp)        # 4-byte Folded Spill
                                        # imm = 0x1388
	testl	%eax, %eax
	je	.LBB1_16
.LBB1_13:
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movb	(%r12), %al
	xorl	%r12d, %r12d
	cmpb	$35, %al
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	jg	.LBB1_21
# %bb.14:
	testb	%al, %al
	je	.LBB1_28
# %bb.15:
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_23
.LBB1_16:
	callq	__locale_ctype_ptr
	movsbq	10(%r15), %rcx
	testb	$4, 1(%rax,%rcx)
	je	.LBB1_10
# %bb.17:
	addq	$10, %r15
	leaq	-384(%rbp), %rsi
	movq	%r15, %rdi
	movl	$10, %edx
	callq	strtoul
	movq	-384(%rbp), %r12
	cmpb	$36, (%r12)
	jne	.LBB1_10
# %bb.18:
	movl	$1000, %edx             # imm = 0x3E8
	cmpq	$1000, %rax             # imm = 0x3E8
	jb	.LBB1_77
# %bb.19:
	cmpq	$9999999, %rax          # imm = 0x98967F
	ja	.LBB1_10
# %bb.76:
	movl	%eax, %edx
.LBB1_77:
	addq	$1, %r12
	leaq	-176(%rbp), %rdi
	movl	$.L.str.3, %esi
	movl	%edx, -64(%rbp)         # 4-byte Spill
	xorl	%eax, %eax
	callq	sprintf
	jmp	.LBB1_13
.LBB1_21:
	cmpb	$36, %al
	je	.LBB1_28
# %bb.22:
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_23:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	1(%rax), %al
	xorl	%r12d, %r12d
	cmpb	$35, %al
	jg	.LBB1_26
# %bb.24:
	movl	$1, %r12d
	testb	%al, %al
	je	.LBB1_28
# %bb.25:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_73
.LBB1_26:
	cmpb	$58, %al
	je	.LBB1_11
# %bb.27:
	movl	$1, %r12d
	cmpb	$36, %al
	jne	.LBB1_73
.LBB1_28:
	movq	%r13, -80(%rbp)         # 8-byte Spill
	movl	%ebx, %r15d
	movabsq	$6620516959819538809, %rax # imm = 0x5BE0CD19137E2179
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [0,0,0,0,0,0,0,0,8,201,188,243,103,230,9,106]
	movaps	%xmm0, -384(%rbp)
	movaps	.LCPI1_1(%rip), %xmm0   # xmm0 = [13503953896175478587,4354685564936845355]
	movaps	%xmm0, -368(%rbp)
	movaps	.LCPI1_2(%rip), %xmm0   # xmm0 = [11912009170470909681,5840696475078001361]
	movaps	%xmm0, -352(%rbp)
	movaps	.LCPI1_3(%rip), %xmm0   # xmm0 = [11170449401992604703,2270897969802886507]
	movaps	%xmm0, -336(%rbp)
	movq	%rax, -320(%rbp)
	leaq	-384(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	sha512_update
	movl	%r12d, %r13d
	movq	%rbx, %rdi
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	sha512_update
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	sha512_update
	leaq	-144(%rbp), %rsi
	movq	%rbx, %rdi
	callq	sha512_sum
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [0,0,0,0,0,0,0,0,8,201,188,243,103,230,9,106]
	movaps	%xmm0, -384(%rbp)
	movaps	.LCPI1_1(%rip), %xmm0   # xmm0 = [13503953896175478587,4354685564936845355]
	movaps	%xmm0, -368(%rbp)
	movaps	.LCPI1_2(%rip), %xmm0   # xmm0 = [11912009170470909681,5840696475078001361]
	movaps	%xmm0, -352(%rbp)
	movabsq	$-7276294671716946913, %rax # imm = 0x9B05688C2B3E6C1F
	movq	%rax, -336(%rbp)
	movaps	.LCPI1_4(%rip), %xmm0   # xmm0 = [2270897969802886507,6620516959819538809]
	movups	%xmm0, -328(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	sha512_update
	movq	%rbx, %rdi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%r12, %rsi
	movq	%r13, -72(%rbp)         # 8-byte Spill
	movq	%r13, %rdx
	movq	%r15, %r13
	callq	sha512_update
	movq	%r15, %rdx
	cmpl	$65, %ebx
	jb	.LBB1_32
# %bb.29:
	leal	-65(%rbx), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	leaq	-384(%rbp), %r15
	leaq	-144(%rbp), %r12
                                        # kill: def $ebx killed $ebx killed $rbx
	.p2align	4, 0x90
.LBB1_30:                               # =>This Inner Loop Header: Depth=1
	movl	$64, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	sha512_update
	addl	$-64, %ebx
	cmpl	$64, %ebx
	ja	.LBB1_30
# %bb.31:
	movl	-60(%rbp), %eax         # 4-byte Reload
	andl	$-64, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	%ebx, %edx
	subl	%eax, %edx
	addl	$-64, %edx
.LBB1_32:
	leaq	-384(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	sha512_update
	testl	%ebx, %ebx
	sete	%al
	je	.LBB1_39
# %bb.33:                               # %.preheader8
	movb	%al, -60(%rbp)          # 1-byte Spill
	leaq	-384(%rbp), %r15
	movl	%ebx, %r12d
	jmp	.LBB1_36
	.p2align	4, 0x90
.LBB1_34:                               #   in Loop: Header=BB1_36 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
.LBB1_35:                               #   in Loop: Header=BB1_36 Depth=1
	callq	sha512_update
	shrl	%r12d
	je	.LBB1_38
.LBB1_36:                               # =>This Inner Loop Header: Depth=1
	testb	$1, %r12b
	je	.LBB1_34
# %bb.37:                               #   in Loop: Header=BB1_36 Depth=1
	movl	$64, %edx
	movq	%r15, %rdi
	leaq	-144(%rbp), %rsi
	jmp	.LBB1_35
.LBB1_38:
	movb	-60(%rbp), %bl          # 1-byte Reload
	jmp	.LBB1_40
.LBB1_39:
	movb	$1, %bl
.LBB1_40:
	leaq	-384(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	callq	sha512_sum
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [0,0,0,0,0,0,0,0,8,201,188,243,103,230,9,106]
	movaps	%xmm0, -384(%rbp)
	movaps	.LCPI1_1(%rip), %xmm0   # xmm0 = [13503953896175478587,4354685564936845355]
	movaps	%xmm0, -368(%rbp)
	movaps	.LCPI1_2(%rip), %xmm0   # xmm0 = [11912009170470909681,5840696475078001361]
	movaps	%xmm0, -352(%rbp)
	movaps	.LCPI1_3(%rip), %xmm0   # xmm0 = [11170449401992604703,2270897969802886507]
	movaps	%xmm0, -336(%rbp)
	movabsq	$6620516959819538809, %rax # imm = 0x5BE0CD19137E2179
	movq	%rax, -320(%rbp)
	testb	%bl, %bl
	movq	-48(%rbp), %r12         # 8-byte Reload
	jne	.LBB1_43
# %bb.41:                               # %.preheader6
	xorl	%ebx, %ebx
	leaq	-384(%rbp), %r15
	.p2align	4, 0x90
.LBB1_42:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	sha512_update
	addl	$1, %ebx
	cmpl	%r12d, %ebx
	jb	.LBB1_42
.LBB1_43:
	leaq	-384(%rbp), %r14
	leaq	-512(%rbp), %rsi
	movq	%r14, %rdi
	callq	sha512_sum
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [0,0,0,0,0,0,0,0,8,201,188,243,103,230,9,106]
	movaps	%xmm0, -384(%rbp)
	movaps	.LCPI1_1(%rip), %xmm0   # xmm0 = [13503953896175478587,4354685564936845355]
	movaps	%xmm0, -368(%rbp)
	movaps	.LCPI1_2(%rip), %xmm0   # xmm0 = [11912009170470909681,5840696475078001361]
	movaps	%xmm0, -352(%rbp)
	movaps	.LCPI1_3(%rip), %xmm0   # xmm0 = [11170449401992604703,2270897969802886507]
	movaps	%xmm0, -336(%rbp)
	movabsq	$6620516959819538809, %rax # imm = 0x5BE0CD19137E2179
	movq	%rax, -320(%rbp)
	xorl	%ebx, %ebx
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	-72(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_44:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	sha512_update
	addl	$1, %ebx
	movzbl	-144(%rbp), %eax
	addl	$16, %eax
	cmpl	%eax, %ebx
	jb	.LBB1_44
# %bb.45:
	leaq	-384(%rbp), %rdi
	leaq	-448(%rbp), %rsi
	callq	sha512_sum
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	movq	-48(%rbp), %r15         # 8-byte Reload
	je	.LBB1_70
# %bb.46:
	leal	-65(%r15), %eax
	andl	$-64, %eax
	negl	%eax
	addl	%r15d, %eax
	addl	$-64, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	xorl	%r12d, %r12d
	leaq	-384(%rbp), %r13
	leaq	-512(%rbp), %r14
	jmp	.LBB1_49
	.p2align	4, 0x90
.LBB1_47:                               #   in Loop: Header=BB1_49 Depth=1
	movl	%eax, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	sha512_update
	leaq	-144(%rbp), %rbx
.LBB1_48:                               #   in Loop: Header=BB1_49 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	sha512_sum
	addl	$1, %r12d
	cmpl	-64(%rbp), %r12d        # 4-byte Folded Reload
	je	.LBB1_70
.LBB1_49:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_52 Depth 2
                                        #     Child Loop BB1_61 Depth 2
                                        #     Child Loop BB1_68 Depth 2
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [0,0,0,0,0,0,0,0,8,201,188,243,103,230,9,106]
	movaps	%xmm0, -384(%rbp)
	movaps	.LCPI1_1(%rip), %xmm0   # xmm0 = [13503953896175478587,4354685564936845355]
	movaps	%xmm0, -368(%rbp)
	movaps	.LCPI1_2(%rip), %xmm0   # xmm0 = [11912009170470909681,5840696475078001361]
	movaps	%xmm0, -352(%rbp)
	movaps	.LCPI1_3(%rip), %xmm0   # xmm0 = [11170449401992604703,2270897969802886507]
	movaps	%xmm0, -336(%rbp)
	movabsq	$6620516959819538809, %rax # imm = 0x5BE0CD19137E2179
	movq	%rax, -320(%rbp)
	testb	$1, %r12b
	je	.LBB1_55
# %bb.50:                               #   in Loop: Header=BB1_49 Depth=1
	movl	%r15d, %eax
	cmpl	$65, %r15d
	jb	.LBB1_54
# %bb.51:                               # %.preheader3
                                        #   in Loop: Header=BB1_49 Depth=1
                                        # kill: def $r15d killed $r15d killed $r15
	.p2align	4, 0x90
.LBB1_52:                               #   Parent Loop BB1_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$64, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	sha512_update
	addl	$-64, %r15d
	cmpl	$64, %r15d
	ja	.LBB1_52
# %bb.53:                               #   in Loop: Header=BB1_49 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movq	-48(%rbp), %r15         # 8-byte Reload
.LBB1_54:                               #   in Loop: Header=BB1_49 Depth=1
	movl	%eax, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	jmp	.LBB1_56
	.p2align	4, 0x90
.LBB1_55:                               #   in Loop: Header=BB1_49 Depth=1
	movl	$64, %edx
	movq	%r13, %rdi
	leaq	-144(%rbp), %rsi
.LBB1_56:                               #   in Loop: Header=BB1_49 Depth=1
	callq	sha512_update
	imull	$-1431655765, %r12d, %eax # imm = 0xAAAAAAAB
	cmpl	$1431655766, %eax       # imm = 0x55555556
	jb	.LBB1_58
# %bb.57:                               #   in Loop: Header=BB1_49 Depth=1
	movq	%r13, %rdi
	leaq	-448(%rbp), %rsi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	sha512_update
.LBB1_58:                               #   in Loop: Header=BB1_49 Depth=1
	imull	$-1227133513, %r12d, %eax # imm = 0xB6DB6DB7
	cmpl	$613566757, %eax        # imm = 0x24924925
	jb	.LBB1_64
# %bb.59:                               #   in Loop: Header=BB1_49 Depth=1
	movl	%r15d, %eax
	cmpl	$65, %r15d
	jb	.LBB1_63
# %bb.60:                               # %.preheader1
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	%r15d, %ebx
	.p2align	4, 0x90
.LBB1_61:                               #   Parent Loop BB1_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$64, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	sha512_update
	addl	$-64, %ebx
	cmpl	$64, %ebx
	ja	.LBB1_61
# %bb.62:                               #   in Loop: Header=BB1_49 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
.LBB1_63:                               #   in Loop: Header=BB1_49 Depth=1
	movl	%eax, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	sha512_update
.LBB1_64:                               #   in Loop: Header=BB1_49 Depth=1
	testb	$1, %r12b
	je	.LBB1_66
# %bb.65:                               #   in Loop: Header=BB1_49 Depth=1
	movl	$64, %edx
	movq	%r13, %rdi
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rsi
	callq	sha512_update
	jmp	.LBB1_48
	.p2align	4, 0x90
.LBB1_66:                               #   in Loop: Header=BB1_49 Depth=1
	movl	%r15d, %eax
	cmpl	$65, %r15d
	jb	.LBB1_47
# %bb.67:                               # %.preheader
                                        #   in Loop: Header=BB1_49 Depth=1
	movl	%r15d, %ebx
	.p2align	4, 0x90
.LBB1_68:                               #   Parent Loop BB1_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$64, %edx
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	sha512_update
	addl	$-64, %ebx
	cmpl	$64, %ebx
	ja	.LBB1_68
# %bb.69:                               #   in Loop: Header=BB1_49 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	jmp	.LBB1_47
.LBB1_70:
	xorl	%ebx, %ebx
	leaq	-176(%rbp), %rdx
	movl	$.L.str.4, %esi
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	xorl	%eax, %eax
	callq	sprintf
	movslq	%eax, %r8
	leaq	(%r12,%r8), %rcx
	.p2align	4, 0x90
.LBB1_71:                               # =>This Inner Loop Header: Depth=1
	movzbl	sha512crypt.perm(%rbx,%rbx,2), %edx
	movzbl	-144(%rbp,%rdx), %edx
	movl	%edx, %esi
	shll	$16, %esi
	movzbl	sha512crypt.perm+1(%rbx,%rbx,2), %edi
	movzbl	-144(%rbp,%rdi), %edi
	shll	$8, %edi
	orl	%edi, %esi
	movzbl	sha512crypt.perm+2(%rbx,%rbx,2), %eax
	movzbl	-144(%rbp,%rax), %eax
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
	cmpq	$21, %rbx
	jne	.LBB1_71
# %bb.72:
	movzbl	-81(%rbp), %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movb	b64(%rcx), %cl
	movb	%cl, 84(%r12,%r8)
	shrq	$6, %rax
	movb	b64(%rax), %al
	movb	%al, 85(%r12,%r8)
	movb	$0, 86(%r12,%r8)
	jmp	.LBB1_11
.LBB1_73:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	2(%rax), %al
	movl	$2, %r12d
	cmpb	$35, %al
	jg	.LBB1_78
# %bb.74:
	testb	%al, %al
	je	.LBB1_28
# %bb.75:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_80
.LBB1_78:
	cmpb	$36, %al
	je	.LBB1_28
# %bb.79:
	movl	$0, %r12d
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_80:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	3(%rax), %al
	movl	$3, %r12d
	cmpb	$35, %al
	jg	.LBB1_83
# %bb.81:
	testb	%al, %al
	je	.LBB1_28
# %bb.82:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_85
.LBB1_83:
	cmpb	$36, %al
	je	.LBB1_28
# %bb.84:
	movl	$0, %r12d
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_85:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	4(%rax), %al
	movl	$4, %r12d
	cmpb	$35, %al
	jg	.LBB1_88
# %bb.86:
	testb	%al, %al
	je	.LBB1_28
# %bb.87:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_90
.LBB1_88:
	cmpb	$36, %al
	je	.LBB1_28
# %bb.89:
	movl	$0, %r12d
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_90:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	5(%rax), %al
	movl	$5, %r12d
	cmpb	$35, %al
	jg	.LBB1_93
# %bb.91:
	testb	%al, %al
	je	.LBB1_28
# %bb.92:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_95
.LBB1_93:
	cmpb	$36, %al
	je	.LBB1_28
# %bb.94:
	movl	$0, %r12d
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_95:
	movq	%r13, %rcx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	6(%rax), %al
	movl	$6, %r12d
	cmpb	$35, %al
	jg	.LBB1_98
# %bb.96:
	testb	%al, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.97:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_100
.LBB1_98:
	cmpb	$36, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.99:
	movl	$0, %r12d
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_100:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	7(%rax), %al
	movl	$7, %r12d
	cmpb	$35, %al
	jg	.LBB1_103
# %bb.101:
	testb	%al, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.102:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_105
.LBB1_103:
	cmpb	$36, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.104:
	movl	$0, %r12d
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_105:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	8(%rax), %al
	movl	$8, %r12d
	cmpb	$35, %al
	jg	.LBB1_108
# %bb.106:
	testb	%al, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.107:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_110
.LBB1_108:
	cmpb	$36, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.109:
	movl	$0, %r12d
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_110:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	9(%rax), %al
	movl	$9, %r12d
	cmpb	$35, %al
	jg	.LBB1_113
# %bb.111:
	testb	%al, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.112:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_115
.LBB1_113:
	cmpb	$36, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.114:
	movl	$0, %r12d
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_115:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	10(%rax), %al
	movl	$10, %r12d
	cmpb	$35, %al
	jg	.LBB1_118
# %bb.116:
	testb	%al, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.117:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_120
.LBB1_118:
	cmpb	$36, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.119:
	movl	$0, %r12d
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_120:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	11(%rax), %al
	movl	$11, %r12d
	cmpb	$35, %al
	jg	.LBB1_123
# %bb.121:
	testb	%al, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.122:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_125
.LBB1_123:
	cmpb	$36, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.124:
	movl	$0, %r12d
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_125:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	12(%rax), %al
	movl	$12, %r12d
	cmpb	$35, %al
	jg	.LBB1_128
# %bb.126:
	testb	%al, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.127:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_130
.LBB1_128:
	cmpb	$36, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.129:
	movl	$0, %r12d
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_130:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	13(%rax), %al
	movl	$13, %r12d
	cmpb	$35, %al
	jg	.LBB1_133
# %bb.131:
	testb	%al, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.132:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_135
.LBB1_133:
	cmpb	$36, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.134:
	movl	$0, %r12d
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_135:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	14(%rax), %al
	movl	$14, %r12d
	cmpb	$35, %al
	jg	.LBB1_138
# %bb.136:
	testb	%al, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.137:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_140
.LBB1_138:
	cmpb	$36, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.139:
	movl	$0, %r12d
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_140:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movb	15(%rax), %al
	movl	$15, %r12d
	cmpb	$35, %al
	jg	.LBB1_143
# %bb.141:
	testb	%al, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.142:
	movl	$0, %r12d
	cmpb	$10, %al
	je	.LBB1_11
	jmp	.LBB1_145
.LBB1_143:
	cmpb	$36, %al
	movq	%rcx, %r13
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_28
# %bb.144:
	movl	$0, %r12d
	cmpb	$58, %al
	je	.LBB1_11
.LBB1_145:
	movl	$16, %r12d
	jmp	.LBB1_28
.Lfunc_end1:
	.size	sha512crypt, .Lfunc_end1-sha512crypt
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sha512_update
	.type	sha512_update,@function
sha512_update:                          # @sha512_update
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
	andl	$127, %eax
	je	.LBB2_3
# %bb.1:
	movl	$128, %r12d
	subl	%eax, %r12d
	movl	%eax, %eax
	leaq	(%r15,%rax), %rdi
	addq	$72, %rdi
	cmpq	%r13, %r12
	ja	.LBB2_8
# %bb.2:
	leaq	72(%r15), %rbx
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	memcpy
	subq	%r12, %r13
	addq	%r12, %r14
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	processblock
.LBB2_3:
	cmpq	$128, %r13
	jb	.LBB2_7
# %bb.4:
	leaq	-128(%r13), %r12
	movq	%r12, -56(%rbp)         # 8-byte Spill
	andq	$-128, %r12
	leaq	128(%r12), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r14, %rbx
	.p2align	4, 0x90
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	processblock
	addq	$-128, %r13
	subq	$-128, %rbx
	cmpq	$127, %r13
	ja	.LBB2_5
# %bb.6:
	movq	-56(%rbp), %r13         # 8-byte Reload
	subq	%r12, %r13
	addq	-48(%rbp), %r14         # 8-byte Folded Reload
.LBB2_7:
	addq	$72, %r15
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
	.size	sha512_update, .Lfunc_end2-sha512_update
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sha512_sum
	.type	sha512_sum,@function
sha512_sum:                             # @sha512_sum
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	(%rdi), %rdx
	andl	$127, %edx
	leal	1(%rdx), %ebx
	leaq	72(%rdi), %r15
	movb	$-128, 72(%rdi,%rdx)
	cmpl	$112, %edx
	jb	.LBB3_2
# %bb.1:
	movl	%ebx, %eax
	leaq	(%r12,%rax), %rdi
	addq	$72, %rdi
	xorl	$127, %edx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	callq	memset
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	processblock
.LBB3_2:
	movl	%ebx, %eax
	leaq	(%r12,%rax), %rdi
	addq	$72, %rdi
	movl	$120, %edx
	subl	%ebx, %edx
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	callq	memset
	movq	(%r12), %rax
	leaq	(,%rax,8), %rcx
	movq	%rcx, (%r12)
	movq	%rax, %rdx
	shrq	$53, %rdx
	movb	%dl, 192(%r12)
	movq	%rax, %rdx
	shrq	$45, %rdx
	movb	%dl, 193(%r12)
	movq	%rax, %rdx
	shrq	$37, %rdx
	movb	%dl, 194(%r12)
	movq	%rax, %rdx
	shrq	$29, %rdx
	movb	%dl, 195(%r12)
	movq	%rax, %rdx
	shrq	$21, %rdx
	movb	%dl, 196(%r12)
	movq	%rax, %rdx
	shrq	$13, %rdx
	movb	%dl, 197(%r12)
	shrq	$5, %rax
	movb	%al, 198(%r12)
	movb	%cl, 199(%r12)
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	processblock
	.p2align	4, 0x90
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	15(%r12,%rbx,8), %eax
	movb	%al, (%r14,%rbx,8)
	movzbl	14(%r12,%rbx,8), %eax
	movb	%al, 1(%r14,%rbx,8)
	movzbl	13(%r12,%rbx,8), %eax
	movb	%al, 2(%r14,%rbx,8)
	movzbl	12(%r12,%rbx,8), %eax
	movb	%al, 3(%r14,%rbx,8)
	movzbl	11(%r12,%rbx,8), %eax
	movb	%al, 4(%r14,%rbx,8)
	movzbl	10(%r12,%rbx,8), %eax
	movb	%al, 5(%r14,%rbx,8)
	movzbl	9(%r12,%rbx,8), %eax
	movb	%al, 6(%r14,%rbx,8)
	movzbl	8(%r12,%rbx,8), %eax
	movb	%al, 7(%r14,%rbx,8)
	addq	$1, %rbx
	cmpq	$8, %rbx
	jne	.LBB3_3
# %bb.4:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sha512_sum, .Lfunc_end3-sha512_sum
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
	subq	$728, %rsp              # imm = 0x2D8
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rax,8), %rcx
	bswapq	%rcx
	movq	%rcx, 80(%rsp,%rax,8)
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB4_1
# %bb.2:
	movq	80(%rsp), %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movq	192(%rsp,%rax,8), %rdx
	movq	%rdx, %rsi
	rolq	$45, %rsi
	movq	88(%rsp,%rax,8), %r8
	movq	%rdx, %rbp
	rolq	$3, %rbp
	shrq	$6, %rdx
	xorq	%rbp, %rdx
	xorq	%rsi, %rdx
	movq	%r8, %rsi
	rorq	%rsi
	movq	%r8, %rbp
	rolq	$56, %rbp
	movq	%r8, %rbx
	shrq	$7, %rbx
	xorq	%rbp, %rbx
	xorq	%rsi, %rbx
	addq	152(%rsp,%rax,8), %rcx
	addq	%rdx, %rcx
	addq	%rbx, %rcx
	movq	%rcx, 208(%rsp,%rax,8)
	addq	$1, %rax
	movq	%r8, %rcx
	cmpq	$64, %rax
	jne	.LBB4_3
# %bb.4:
	movq	8(%rdi), %r9
	movq	16(%rdi), %r12
	movq	24(%rdi), %r15
	movq	32(%rdi), %rsi
	movq	40(%rdi), %r14
	movq	48(%rdi), %rbx
	movq	56(%rdi), %rdx
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movq	64(%rdi), %rcx
	xorl	%eax, %eax
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movq	%r9, 8(%rsp)            # 8-byte Spill
	.p2align	4, 0x90
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movq	%r14, %r8
	movq	%r14, %rbp
	rolq	$50, %rbp
	movq	%rdi, %r14
	movq	%r8, %rdi
	rolq	$46, %rdi
	movq	%r9, %rsi
	movq	%rbx, %r13
	movq	%rdx, %r11
	xorq	%rbp, %rdi
	movq	%r8, %rdx
	rolq	$23, %rdx
	xorq	%rdi, %rdx
	addq	%rcx, %rdx
	movq	%r11, %rcx
	xorq	%rbx, %rcx
	andq	%r8, %rcx
	xorq	%r11, %rcx
	addq	%rdx, %rcx
	addq	K(%rax), %rcx
	addq	80(%rsp,%rax), %rcx
	movq	%r9, %rdx
	rolq	$36, %rdx
	movq	%r12, %r10
	movq	%r15, %rbp
	movq	%r9, %rdi
	rolq	$30, %rdi
	xorq	%rdx, %rdi
	movq	%r9, %rdx
	rolq	$25, %rdx
	xorq	%rdi, %rdx
	movq	%r12, %rdi
	andq	%r9, %rdi
	movq	%r12, %r9
	orq	%rsi, %r9
	andq	%r15, %r9
	orq	%rdi, %r9
	addq	%rdx, %r9
	addq	%rcx, %r14
	addq	%rcx, %r9
	addq	$8, %rax
	movq	%r11, %rcx
	movq	%rbx, %rdx
	movq	%r8, %rbx
	movq	%r15, %rdi
	movq	%r12, %r15
	movq	%rsi, %r12
	cmpq	$640, %rax              # imm = 0x280
	jne	.LBB4_5
# %bb.6:
	addq	8(%rsp), %r9            # 8-byte Folded Reload
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%r9, 8(%rax)
	addq	16(%rsp), %rsi          # 8-byte Folded Reload
	movq	%rsi, 16(%rax)
	addq	24(%rsp), %r10          # 8-byte Folded Reload
	movq	%r10, 24(%rax)
	addq	32(%rsp), %rbp          # 8-byte Folded Reload
	movq	%rbp, 32(%rax)
	addq	40(%rsp), %r14          # 8-byte Folded Reload
	movq	%r14, 40(%rax)
	addq	48(%rsp), %r8           # 8-byte Folded Reload
	movq	%r8, 48(%rax)
	addq	56(%rsp), %r13          # 8-byte Folded Reload
	movq	%r13, 56(%rax)
	addq	64(%rsp), %r11          # 8-byte Folded Reload
	movq	%r11, 64(%rax)
	addq	$728, %rsp              # imm = 0x2D8
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
	.type	__crypt_sha512.testkey,@object # @__crypt_sha512.testkey
	.section	.rodata,"a",@progbits
	.p2align	4
__crypt_sha512.testkey:
	.asciz	"Xy01@#\001\002\200\177\377\r\n\201\t !"
	.size	__crypt_sha512.testkey, 18

	.type	__crypt_sha512.testsetting,@object # @__crypt_sha512.testsetting
	.p2align	4
__crypt_sha512.testsetting:
	.asciz	"$6$rounds=1234$abc0123456789$"
	.size	__crypt_sha512.testsetting, 30

	.type	__crypt_sha512.testhash,@object # @__crypt_sha512.testhash
	.p2align	4
__crypt_sha512.testhash:
	.asciz	"$6$rounds=1234$abc0123456789$BCpt8zLrc/RcyuXmCDOE1ALqMXB2MH6n1g891HhFj8.w7LxGv.FTkqq6Vxc/km3Y0jE0j24jY5PIv/oOu6reg1"
	.size	__crypt_sha512.testhash, 116

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"*"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"$6$"
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
	.asciz	"$6$%s%.*s$"
	.size	.L.str.4, 11

	.type	sha512crypt.perm,@object # @sha512crypt.perm
	.section	.rodata,"a",@progbits
	.p2align	4
sha512crypt.perm:
	.ascii	"\000\025*"
	.ascii	"\026+\001"
	.ascii	",\002\027"
	.ascii	"\003\030-"
	.ascii	"\031.\004"
	.ascii	"/\005\032"
	.ascii	"\006\0330"
	.ascii	"\0341\007"
	.ascii	"2\b\035"
	.ascii	"\t\0363"
	.ascii	"\0374\n"
	.ascii	"5\013 "
	.ascii	"\f!6"
	.ascii	"\"7\r"
	.ascii	"8\016#"
	.ascii	"\017$9"
	.ascii	"%:\020"
	.ascii	";\021&"
	.ascii	"\022'<"
	.ascii	"(=\023"
	.ascii	">\024)"
	.size	sha512crypt.perm, 63

	.type	K,@object               # @K
	.p2align	4
K:
	.quad	4794697086780616226     # 0x428a2f98d728ae22
	.quad	8158064640168781261     # 0x7137449123ef65cd
	.quad	-5349999486874862801    # 0xb5c0fbcfec4d3b2f
	.quad	-1606136188198331460    # 0xe9b5dba58189dbbc
	.quad	4131703408338449720     # 0x3956c25bf348b538
	.quad	6480981068601479193     # 0x59f111f1b605d019
	.quad	-7908458776815382629    # 0x923f82a4af194f9b
	.quad	-6116909921290321640    # 0xab1c5ed5da6d8118
	.quad	-2880145864133508542    # 0xd807aa98a3030242
	.quad	1334009975649890238     # 0x12835b0145706fbe
	.quad	2608012711638119052     # 0x243185be4ee4b28c
	.quad	6128411473006802146     # 0x550c7dc3d5ffb4e2
	.quad	8268148722764581231     # 0x72be5d74f27b896f
	.quad	-9160688886553864527    # 0x80deb1fe3b1696b1
	.quad	-7215885187991268811    # 0x9bdc06a725c71235
	.quad	-4495734319001033068    # 0xc19bf174cf692694
	.quad	-1973867731355612462    # 0xe49b69c19ef14ad2
	.quad	-1171420211273849373    # 0xefbe4786384f25e3
	.quad	1135362057144423861     # 0xfc19dc68b8cd5b5
	.quad	2597628984639134821     # 0x240ca1cc77ac9c65
	.quad	3308224258029322869     # 0x2de92c6f592b0275
	.quad	5365058923640841347     # 0x4a7484aa6ea6e483
	.quad	6679025012923562964     # 0x5cb0a9dcbd41fbd4
	.quad	8573033837759648693     # 0x76f988da831153b5
	.quad	-7476448914759557205    # 0x983e5152ee66dfab
	.quad	-6327057829258317296    # 0xa831c66d2db43210
	.quad	-5763719355590565569    # 0xb00327c898fb213f
	.quad	-4658551843659510044    # 0xbf597fc7beef0ee4
	.quad	-4116276920077217854    # 0xc6e00bf33da88fc2
	.quad	-3051310485924567259    # 0xd5a79147930aa725
	.quad	489312712824947311      # 0x6ca6351e003826f
	.quad	1452737877330783856     # 0x142929670a0e6e70
	.quad	2861767655752347644     # 0x27b70a8546d22ffc
	.quad	3322285676063803686     # 0x2e1b21385c26c926
	.quad	5560940570517711597     # 0x4d2c6dfc5ac42aed
	.quad	5996557281743188959     # 0x53380d139d95b3df
	.quad	7280758554555802590     # 0x650a73548baf63de
	.quad	8532644243296465576     # 0x766a0abb3c77b2a8
	.quad	-9096487096722542874    # 0x81c2c92e47edaee6
	.quad	-7894198246740708037    # 0x92722c851482353b
	.quad	-6719396339535248540    # 0xa2bfe8a14cf10364
	.quad	-6333637450476146687    # 0xa81a664bbc423001
	.quad	-4446306890439682159    # 0xc24b8b70d0f89791
	.quad	-4076793802049405392    # 0xc76c51a30654be30
	.quad	-3345356375505022440    # 0xd192e819d6ef5218
	.quad	-2983346525034927856    # 0xd69906245565a910
	.quad	-860691631967231958     # 0xf40e35855771202a
	.quad	1182934255886127544     # 0x106aa07032bbd1b8
	.quad	1847814050463011016     # 0x19a4c116b8d2d0c8
	.quad	2177327727835720531     # 0x1e376c085141ab53
	.quad	2830643537854262169     # 0x2748774cdf8eeb99
	.quad	3796741975233480872     # 0x34b0bcb5e19b48a8
	.quad	4115178125766777443     # 0x391c0cb3c5c95a63
	.quad	5681478168544905931     # 0x4ed8aa4ae3418acb
	.quad	6601373596472566643     # 0x5b9cca4f7763e373
	.quad	7507060721942968483     # 0x682e6ff3d6b2b8a3
	.quad	8399075790359081724     # 0x748f82ee5defb2fc
	.quad	8693463985226723168     # 0x78a5636f43172f60
	.quad	-8878714635349349518    # 0x84c87814a1f0ab72
	.quad	-8302665154208450068    # 0x8cc702081a6439ec
	.quad	-8016688836872298968    # 0x90befffa23631e28
	.quad	-6606660893046293015    # 0xa4506cebde82bde9
	.quad	-4685533653050689259    # 0xbef9a3f7b2c67915
	.quad	-4147400797238176981    # 0xc67178f2e372532b
	.quad	-3880063495543823972    # 0xca273eceea26619c
	.quad	-3348786107499101689    # 0xd186b8c721c0c207
	.quad	-1523767162380948706    # 0xeada7dd6cde0eb1e
	.quad	-757361751448694408     # 0xf57d4f7fee6ed178
	.quad	500013540394364858      # 0x6f067aa72176fba
	.quad	748580250866718886      # 0xa637dc5a2c898a6
	.quad	1242879168328830382     # 0x113f9804bef90dae
	.quad	1977374033974150939     # 0x1b710b35131c471b
	.quad	2944078676154940804     # 0x28db77f523047d84
	.quad	3659926193048069267     # 0x32caab7b40c72493
	.quad	4368137639120453308     # 0x3c9ebe0a15c9bebc
	.quad	4836135668995329356     # 0x431d67c49c100d4c
	.quad	5532061633213252278     # 0x4cc5d4becb3e42b6
	.quad	6448918945643986474     # 0x597f299cfc657e2a
	.quad	6902733635092675308     # 0x5fcb6fab3ad6faec
	.quad	7801388544844847127     # 0x6c44198c4a475817
	.size	K, 640

	.type	b64,@object             # @b64
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
b64:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	b64, 65

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
