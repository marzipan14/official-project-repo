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
	movq	%rdx, %r15
	movl	%esi, %r12d
	addq	%rdi, %r12
	movl	%ecx, %r13d
	addq	%rdx, %r13
	movq	%rdx, %rbx
	jmp	.LBB0_1
.LBB0_66:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_67:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_68:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_69:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_70:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_71:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_72:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_73:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	leaq	1(%rbx), %rcx
	addq	$3, %rbx
	movq	%rbx, %rax
	movq	%rcx, %rbx
.LBB0_74:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %cl
	movb	%cl, (%rbx)
	movb	1(%rsi), %cl
	movb	%cl, 1(%rbx)
	movq	%rax, %rbx
.LBB0_75:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%r14, %rdi
	cmpq	%r12, %r14
	jae	.LBB0_76
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_53 Depth 2
                                        #     Child Loop BB0_57 Depth 2
	leaq	1(%rdi), %r14
	movzbl	(%rdi), %ecx
	cmpl	$31, %ecx
	ja	.LBB0_40
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	(%rbx,%rcx), %rax
	addq	$1, %rax
	cmpq	%r13, %rax
	ja	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	1(%rcx), %rax
	addq	%r14, %rax
	cmpq	%r12, %rax
	ja	.LBB0_5
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	cmpb	$31, %cl
	ja	.LBB0_75
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	%ecx, %eax
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movb	1(%rdi), %al
	addq	$2, %rdi
	movb	%al, (%rbx)
	addq	$1, %rbx
	movq	%rdi, %r14
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_21:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_23:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_25:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_26:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_27:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_28:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_29:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_30:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_31:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_32:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_33:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_34:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_35:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_36:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_37:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_38:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
.LBB0_39:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%r14), %al
	addq	$1, %r14
	movb	%al, (%rbx)
	addq	$1, %rbx
	jmp	.LBB0_75
	.p2align	4, 0x90
.LBB0_40:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	%r12, %r14
	jae	.LBB0_5
# %bb.41:                               #   in Loop: Header=BB0_1 Depth=1
	movl	%ecx, %r11d
	shrl	$5, %r11d
	cmpl	$7, %r11d
	jne	.LBB0_44
# %bb.42:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	2(%rdi), %r14
	cmpq	%r12, %r14
	jae	.LBB0_5
# %bb.43:                               #   in Loop: Header=BB0_1 Depth=1
	movzbl	1(%rdi), %r11d
	addl	$7, %r11d
.LBB0_44:                               #   in Loop: Header=BB0_1 Depth=1
	movl	%r11d, %edx
	leaq	(%rbx,%rdx), %rsi
	addq	$2, %rsi
	cmpq	%r13, %rsi
	ja	.LBB0_3
# %bb.45:                               #   in Loop: Header=BB0_1 Depth=1
	andl	$31, %ecx
	shlq	$8, %rcx
	movq	%rcx, %rsi
	notq	%rsi
	addq	%rbx, %rsi
	movzbl	(%r14), %edi
	subq	%rdi, %rsi
	cmpq	%r15, %rsi
	jb	.LBB0_5
# %bb.46:                               #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %r14
	cmpl	$9, %r11d
	ja	.LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	2(%rbx), %rax
	jmpq	*.LJTI0_0(,%rdx,8)
.LBB0_65:                               #   in Loop: Header=BB0_1 Depth=1
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%rbx)
	addq	$1, %rbx
	jmp	.LBB0_66
.LBB0_48:                               #   in Loop: Header=BB0_1 Depth=1
	leal	2(%r11), %edx
	leaq	(%rsi,%rdx), %rax
	cmpq	%rax, %rbx
	jae	.LBB0_64
# %bb.49:                               #   in Loop: Header=BB0_1 Depth=1
	addl	$1, %r11d
	leaq	1(%r11), %r9
	cmpq	$31, %r9
	jbe	.LBB0_50
# %bb.58:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%r11, %rax
	subq	%rdi, %rax
	subq	%rcx, %rax
	addq	%rbx, %rax
	cmpq	%rax, %rbx
	jae	.LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	(%rbx,%r11), %rax
	addq	$1, %rax
	cmpq	%rax, %rsi
	jae	.LBB0_60
.LBB0_50:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%rbx, %rax
.LBB0_51:                               #   in Loop: Header=BB0_1 Depth=1
	leal	-1(%rdx), %r8d
	testb	$7, %dl
	je	.LBB0_55
# %bb.52:                               # %.preheader1
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	%edx, %r9d
	andl	$7, %r9d
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_53:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rdi), %ecx
	movb	%cl, (%rax,%rdi)
	addq	$1, %rdi
	cmpl	%edi, %r9d
	jne	.LBB0_53
# %bb.54:                               # %.loopexit2
                                        #   in Loop: Header=BB0_1 Depth=1
	addq	%rdi, %rax
	subl	%edi, %edx
	addq	%rdi, %rsi
.LBB0_55:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$7, %r8d
	jb	.LBB0_63
# %bb.56:                               # %.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	%edx, %r8d
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_57:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rdi), %ecx
	movb	%cl, (%rax,%rdi)
	movzbl	1(%rsi,%rdi), %ecx
	movb	%cl, 1(%rax,%rdi)
	movzbl	2(%rsi,%rdi), %ecx
	movb	%cl, 2(%rax,%rdi)
	movzbl	3(%rsi,%rdi), %ecx
	movb	%cl, 3(%rax,%rdi)
	movzbl	4(%rsi,%rdi), %ecx
	movb	%cl, 4(%rax,%rdi)
	movzbl	5(%rsi,%rdi), %ecx
	movb	%cl, 5(%rax,%rdi)
	movzbl	6(%rsi,%rdi), %ecx
	movb	%cl, 6(%rax,%rdi)
	movzbl	7(%rsi,%rdi), %ecx
	movb	%cl, 7(%rax,%rdi)
	addq	$8, %rdi
	cmpl	%edi, %r8d
	jne	.LBB0_57
.LBB0_63:                               #   in Loop: Header=BB0_1 Depth=1
	addq	%r11, %rbx
	addq	$1, %rbx
	jmp	.LBB0_75
.LBB0_64:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%rbx, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	memcpy
	addq	-48(%rbp), %rbx         # 8-byte Folded Reload
	jmp	.LBB0_75
.LBB0_60:                               #   in Loop: Header=BB0_1 Depth=1
	negq	%rdi
	movl	%edx, %r8d
	andl	$31, %r8d
	subq	%r8, %r9
	leaq	(%rbx,%r9), %rax
	subl	%r9d, %edx
	addq	%r9, %rsi
	movq	%r11, %r9
	subq	%r8, %r9
	addq	$1, %r9
	subq	%rcx, %rdi
	leaq	(%rbx,%rdi), %rcx
	addq	$15, %rcx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_61:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-16(%rcx,%rdi), %xmm0
	movups	(%rcx,%rdi), %xmm1
	movups	%xmm0, (%rbx,%rdi)
	movups	%xmm1, 16(%rbx,%rdi)
	addq	$32, %rdi
	cmpq	%rdi, %r9
	jne	.LBB0_61
# %bb.62:                               #   in Loop: Header=BB0_1 Depth=1
	testl	%r8d, %r8d
	jne	.LBB0_51
	jmp	.LBB0_63
.LBB0_5:
	callq	__errno
	movl	$22, (%rax)
	xorl	%ebx, %ebx
	jmp	.LBB0_77
.LBB0_3:
	callq	__errno
	movl	$7, (%rax)
	xorl	%ebx, %ebx
	jmp	.LBB0_77
.LBB0_76:
	subl	%r15d, %ebx
.LBB0_77:
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
	.quad	.LBB0_74
	.quad	.LBB0_73
	.quad	.LBB0_72
	.quad	.LBB0_71
	.quad	.LBB0_70
	.quad	.LBB0_69
	.quad	.LBB0_68
	.quad	.LBB0_67
	.quad	.LBB0_66
	.quad	.LBB0_65
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
