	.text
	.file	"lzf_d.c"
	.globl	lzf_decompress          # -- Begin function lzf_decompress
	.p2align	4, 0x90
	.type	lzf_decompress,@function
lzf_decompress:                         # @lzf_decompress
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r9
	movl	%esi, %r12d
	addq	%rdi, %r12
	movl	%ecx, %r13d
	addq	%rdx, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rbx
	.p2align	4, 0x90
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_55 Depth 2
                                        #     Child Loop BB0_59 Depth 2
	leaq	1(%rdi), %r14
	movzbl	(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$31, %esi
	ja	.LBB0_40
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	(%rbx,%rsi), %rax
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	ja	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	1(%rsi), %rax
	addq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	ja	.LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$31, %sil
	ja	.LBB0_74
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	%esi, %eax
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movb	1(%rdi), %al
	addq	$2, %rdi
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %r14
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_21:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_23:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_25:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_26:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_27:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_28:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_29:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_30:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_31:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_32:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_33:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_34:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_35:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_36:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_37:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_38:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_39:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	movb	%al, (%rbx)
	addq	$1, %rbx
	jmp	.LBB0_73
	.p2align	4, 0x90
.LBB0_40:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$22, %r15d
	cmpq	%r12, %r14
	jae	.LBB0_46
# %bb.41:                               #   in Loop: Header=BB0_1 Depth=1
	movl	%esi, %ecx
	shrl	$5, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jne	.LBB0_44
# %bb.42:                               #   in Loop: Header=BB0_1 Depth=1
	movzbl	1(%rdi), %ecx
	addq	$2, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rdi
	jae	.LBB0_46
# %bb.43:                               #   in Loop: Header=BB0_1 Depth=1
	addl	$7, %ecx
	movq	%rdi, %r14
.LBB0_44:                               #   in Loop: Header=BB0_1 Depth=1
	movzbl	(%r14), %edx
	movl	%ecx, %eax
	leaq	(%rbx,%rax), %rdi
	addq	$2, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rdi
	ja	.LBB0_45
# %bb.48:                               #   in Loop: Header=BB0_1 Depth=1
	shll	$8, %esi
	notl	%esi
	orq	$-7937, %rsi            # imm = 0xE0FF
	addq	%rbx, %rsi
	subq	%rdx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rsi
	jb	.LBB0_46
# %bb.49:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %ecx
	ja	.LBB0_51
# %bb.50:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	2(%rbx), %rcx
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_61:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_62:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_63:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_64:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_65:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_66:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_67:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_68:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_69:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rbx), %rax
	addq	$3, %rbx
	movq	%rbx, %rcx
	movq	%rax, %rbx
.LBB0_70:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	movb	%al, (%rbx)
	movb	1(%rsi), %al
	movb	%al, 1(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rbx
.LBB0_73:                               #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB0_74:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	cmpq	%r12, %r14
	jb	.LBB0_1
	jmp	.LBB0_75
.LBB0_51:                               #   in Loop: Header=BB0_1 Depth=1
	leal	2(%rcx), %r15d
	leaq	(%rsi,%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jae	.LBB0_71
# %bb.52:                               #   in Loop: Header=BB0_1 Depth=1
	leal	1(%rcx), %r8d
	testb	$3, %r15b
	je	.LBB0_53
# %bb.54:                               # %.preheader1
                                        #   in Loop: Header=BB0_1 Depth=1
	addb	$2, %cl
	movzbl	%cl, %ecx
	andl	$3, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_55:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rdx), %eax
	movb	%al, (%rbx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpl	%edx, %ecx
	jne	.LBB0_55
# %bb.56:                               # %.loopexit2
                                        #   in Loop: Header=BB0_1 Depth=1
	leaq	(%rbx,%rdx), %rcx
	subl	%edx, %r15d
	addq	%rdx, %rsi
	cmpl	$3, %r8d
	jae	.LBB0_58
	jmp	.LBB0_60
.LBB0_71:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movq	%r9, -48(%rbp)          # 8-byte Spill
	callq	memcpy
	movq	-48(%rbp), %r9          # 8-byte Reload
	addq	%r15, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_72
.LBB0_53:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%rbx, %rcx
	cmpl	$3, %r8d
	jb	.LBB0_60
.LBB0_58:                               # %.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	%r15d, %edx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_59:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rdi), %eax
	movb	%al, (%rcx,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rsi,%rdi), %eax
	movb	%al, 1(%rcx,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%rsi,%rdi), %eax
	movb	%al, 2(%rcx,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	3(%rsi,%rdi), %eax
	movb	%al, 3(%rcx,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdi
	cmpl	%edi, %edx
	jne	.LBB0_59
.LBB0_60:                               #   in Loop: Header=BB0_1 Depth=1
	addq	%r8, %rbx
	addq	$1, %rbx
.LBB0_72:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_73
.LBB0_75:
	subl	%r9d, %ebx
	jmp	.LBB0_76
.LBB0_3:
	callq	__errno
	movl	$7, (%rax)
	jmp	.LBB0_47
.LBB0_5:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB0_47
.LBB0_45:
	movl	$7, %r15d
.LBB0_46:
	callq	__errno
	movl	%r15d, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_47:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB0_76:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lzf_decompress, .Lfunc_end0-lzf_decompress
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_70
	.quad	.LBB0_69
	.quad	.LBB0_68
	.quad	.LBB0_67
	.quad	.LBB0_66
	.quad	.LBB0_65
	.quad	.LBB0_64
	.quad	.LBB0_63
	.quad	.LBB0_62
	.quad	.LBB0_61
.LJTI0_1:
	.quad	.LBB0_39
	.quad	.LBB0_38
	.quad	.LBB0_37
	.quad	.LBB0_36
	.quad	.LBB0_35
	.quad	.LBB0_34
	.quad	.LBB0_33
	.quad	.LBB0_32
	.quad	.LBB0_31
	.quad	.LBB0_30
	.quad	.LBB0_29
	.quad	.LBB0_28
	.quad	.LBB0_27
	.quad	.LBB0_26
	.quad	.LBB0_25
	.quad	.LBB0_24
	.quad	.LBB0_23
	.quad	.LBB0_22
	.quad	.LBB0_21
	.quad	.LBB0_20
	.quad	.LBB0_19
	.quad	.LBB0_18
	.quad	.LBB0_17
	.quad	.LBB0_16
	.quad	.LBB0_15
	.quad	.LBB0_14
	.quad	.LBB0_13
	.quad	.LBB0_12
	.quad	.LBB0_11
	.quad	.LBB0_10
	.quad	.LBB0_9
	.quad	.LBB0_8
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
