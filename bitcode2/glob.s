	.text
	.file	"glob.c"
	.globl	glob                    # -- Begin function glob
	.p2align	4, 0x90
	.type	glob,@function
glob:                                   # @glob
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$2064, %rsp             # imm = 0x810
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	jne	.LBB0_3
# %bb.1:
	movl	$0, (%rcx)
	movq	$0, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %sil
	jne	.LBB0_3
# %bb.2:
	movl	$0, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	testl	$4096, %esi             # imm = 0x1000
	jne	.LBB0_4
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB0_6
.LBB0_4:
	movl	4(%rcx), %r8d
	testl	%r8d, %r8d
	movl	$65536, %eax            # imm = 0x10000
	cmovnel	%r8d, %eax
	movl	%eax, -4(%rbp)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andl	$-257, %eax             # imm = 0xFEFF
	movl	%eax, 12(%rcx)
	movq	%rdx, 24(%rcx)
	movl	$0, 4(%rcx)
	leaq	-18(%rbp), %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-2064(%rbp), %rdx
	testl	$1024, %esi             # imm = 0x400
	jne	.LBB0_7
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	addq	$1, %rdi
	movw	%ax, (%rdx)
	addq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rdx
	jb	.LBB0_14
.LBB0_16:
	movw	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-2064(%rbp), %rdi
	leaq	-4(%rbp), %rdx
	testb	%sil, %sil
	js	.LBB0_17
# %bb.18:
	movq	%rcx, %rsi
	callq	glob0
	jmp	.LBB0_19
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movw	$92, %ax
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	movzwl	%ax, %eax
	orl	$16384, %eax            # imm = 0x4000
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	movw	%ax, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r9, %rdi
	cmpq	%r8, %rdx
	jae	.LBB0_16
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB0_16
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	leaq	1(%rdi), %r9
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$92, %al
	jne	.LBB0_13
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movzbl	1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	addq	$2, %rdi
	movq	%rdi, %r9
	jmp	.LBB0_12
.LBB0_17:
	movq	%rcx, %rsi
	callq	globexp1
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2064, %rsp             # imm = 0x810
	popq	%rbp
	retq
.Lfunc_end0:
	.size	glob, .Lfunc_end0-glob
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function globexp1
	.type	globexp1,@function
globexp1:                               # @globexp1
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2072, %rsp             # imm = 0x818
	movq	%rdx, %r14
	movzwl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$123, %cx
	jne	.LBB1_3
# %bb.1:
	cmpw	$125, 2(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.2:
	cmpw	$0, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_69
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r10d, %r10d
	cmpw	$123, %cx
	je	.LBB1_7
# %bb.4:                                # %.preheader13
	movl	%ecx, %eax
	.p2align	4, 0x90
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB1_68
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	movzwl	2(%rdi,%r10,2), %eax
	addq	$1, %r10
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$123, %ax
	jne	.LBB1_5
.LBB1_7:
	leaq	(%rdi,%r10,2), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, %r10
	je	.LBB1_15
# %bb.8:
	leaq	-2110(%rbp), %r13
	movw	%cx, -2112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r10
	je	.LBB1_16
# %bb.9:
	leaq	2(%rdi), %r11
	leaq	(%r10,%r10), %r8
	addq	$-4, %r8
	movl	%r8d, %r9d
	shrl	%r9d
	addl	$1, %r9d
	andq	$3, %r9
	je	.LBB1_13
# %bb.10:                               # %.preheader11
	movq	%rsi, %rdx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%r11,%rcx,2), %esi
	movw	%si, -2110(%rbp,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	addq	$-2, %rbx
	cmpq	%rcx, %r9
	jne	.LBB1_11
# %bb.12:                               # %.loopexit12
	leaq	-2112(%rbp), %r13
	subq	%rbx, %r13
	addq	$2, %r13
	subq	%rbx, %r11
	movq	%rdx, %rsi
.LBB1_13:
	cmpq	$6, %r8
	jb	.LBB1_16
	.p2align	4, 0x90
.LBB1_14:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%r11), %ecx
	movw	%cx, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%r11), %ecx
	movw	%cx, 2(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%r11), %ecx
	movw	%cx, 4(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	6(%r11), %ecx
	movw	%cx, 6(%r13)
	addq	$8, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %r11
	cmpq	%rax, %r11
	jne	.LBB1_14
	jmp	.LBB1_16
.LBB1_15:
	leaq	-2112(%rbp), %r13
.LBB1_16:
	movq	%rsi, %rdx
	movw	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%rax), %r9d
	movl	$42, __A_VARIABLE(%rip)
	testw	%r9w, %r9w
	je	.LBB1_32
# %bb.17:                               # %.preheader7
	leaq	(%rdi,%r10,2), %r11
	addq	$4, %r11
	xorl	%r8d, %r8d
	movl	$1, %ebx
	movl	%r9d, %ecx
	jmp	.LBB1_21
	.p2align	4, 0x90
.LBB1_23:                               #   in Loop: Header=BB1_21 Depth=1
	movq	%rsi, %rbx
.LBB1_19:                               #   in Loop: Header=BB1_21 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_20:                               #   in Loop: Header=BB1_21 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%rax,%rbx,2), %ecx
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %cx
	je	.LBB1_31
.LBB1_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_24 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$91, %cx
	jne	.LBB1_27
# %bb.22:                               #   in Loop: Header=BB1_21 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rbx), %rsi
	movzwl	2(%rax,%rbx,2), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$93, %cx
	je	.LBB1_23
	.p2align	4, 0x90
.LBB1_24:                               #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %cx
	je	.LBB1_19
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=2
	movzwl	-2(%r11,%rsi,2), %ecx
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$93, %cx
	jne	.LBB1_24
	jmp	.LBB1_23
	.p2align	4, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_21 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$123, %cx
	jne	.LBB1_28
# %bb.18:                               #   in Loop: Header=BB1_21 Depth=1
	addl	$1, %r8d
	jmp	.LBB1_19
	.p2align	4, 0x90
.LBB1_28:                               #   in Loop: Header=BB1_21 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$125, %cx
	jne	.LBB1_20
# %bb.29:                               #   in Loop: Header=BB1_21 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB1_33
# %bb.30:                               #   in Loop: Header=BB1_21 Depth=1
	addl	$-1, %r8d
	jmp	.LBB1_19
.LBB1_31:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	jne	.LBB1_65
	jmp	.LBB1_34
.LBB1_32:
	movl	$1, %ebx
.LBB1_33:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_34:
	cmpw	$0, (%rax,%rbx,2)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_65
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jle	.LBB1_66
# %bb.36:                               # %.preheader3
	movq	%r14, -56(%rbp)         # 8-byte Spill
	leaq	(%rax,%rbx,2), %rsi
	addq	$2, %rax
	addq	%rbx, %r10
	leaq	(%rdi,%r10,2), %r15
	addq	$2, %r15
	xorl	%r14d, %r14d
	movq	%rax, %r12
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB1_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_41 Depth 2
                                        #     Child Loop BB1_57 Depth 2
                                        #     Child Loop BB1_59 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$122, %r9w
	jg	.LBB1_44
# %bb.38:                               #   in Loop: Header=BB1_37 Depth=1
	cmpw	$44, %r9w
	je	.LBB1_48
# %bb.39:                               #   in Loop: Header=BB1_37 Depth=1
	cmpw	$91, %r9w
	jne	.LBB1_52
# %bb.40:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	2(%r12), %rcx
	movzwl	2(%r12), %eax
	.p2align	4, 0x90
.LBB1_41:                               #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$93, %ax
	je	.LBB1_53
# %bb.42:                               #   in Loop: Header=BB1_41 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB1_63
# %bb.43:                               #   in Loop: Header=BB1_41 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%rcx), %eax
	addq	$2, %rcx
	jmp	.LBB1_41
	.p2align	4, 0x90
.LBB1_44:                               #   in Loop: Header=BB1_37 Depth=1
	cmpw	$123, %r9w
	je	.LBB1_50
# %bb.45:                               #   in Loop: Header=BB1_37 Depth=1
	cmpw	$125, %r9w
	jne	.LBB1_52
# %bb.46:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB1_54
# %bb.47:                               #   in Loop: Header=BB1_37 Depth=1
	addl	$-1, %r14d
	jmp	.LBB1_51
	.p2align	4, 0x90
.LBB1_48:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB1_55
# %bb.49:                               #   in Loop: Header=BB1_37 Depth=1
	cmpw	$44, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_52
	jmp	.LBB1_55
	.p2align	4, 0x90
.LBB1_50:                               #   in Loop: Header=BB1_37 Depth=1
	addl	$1, %r14d
.LBB1_51:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_52:                               #   in Loop: Header=BB1_37 Depth=1
	movq	%r12, %rcx
	movq	%rax, %r12
	jmp	.LBB1_61
.LBB1_53:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_61
.LBB1_54:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_55:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rcx
	cmpq	%r12, %rax
	jae	.LBB1_58
# %bb.56:                               # %.preheader1
                                        #   in Loop: Header=BB1_37 Depth=1
	movq	%r13, %rcx
	.p2align	4, 0x90
.LBB1_57:                               #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rax), %edx
	addq	$2, %rax
	movw	%dx, (%rcx)
	addq	$2, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jb	.LBB1_57
.LBB1_58:                               #   in Loop: Header=BB1_37 Depth=1
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_59:                               #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r15,%rax), %edx
	movw	%dx, (%rcx,%rax)
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	jne	.LBB1_59
# %bb.60:                               #   in Loop: Header=BB1_37 Depth=1
	leaq	-2112(%rbp), %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	globexp1
	movq	%r12, %rcx
	addq	$2, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
.LBB1_61:                               #   in Loop: Header=BB1_37 Depth=1
	addq	$2, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	ja	.LBB1_66
# %bb.62:                               #   in Loop: Header=BB1_37 Depth=1
	movzwl	(%rcx), %r9d
	movq	%r12, %rax
	movq	%rcx, %r12
	jmp	.LBB1_37
.LBB1_63:                               #   in Loop: Header=BB1_37 Depth=1
	cmpw	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_61
# %bb.64:                               #   in Loop: Header=BB1_37 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rcx
	jmp	.LBB1_61
.LBB1_65:
	leaq	-2112(%rbp), %rdi
	movq	%rdx, %rsi
	movq	%r14, %rdx
	callq	glob0
	jmp	.LBB1_67
.LBB1_66:
	xorl	%eax, %eax
.LBB1_67:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_70
.LBB1_68:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_69:
	movq	%r14, %rdx
	callq	glob0
.LBB1_70:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2072, %rsp             # imm = 0x818
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	globexp1, .Lfunc_end1-globexp1
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function glob0
	.type	glob0,@function
glob0:                                  # @glob0
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$4104, %rsp             # imm = 0x1008
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	cmpw	$126, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rsi
	jne	.LBB2_22
# %bb.1:
	testl	$2048, 12(%r12)         # imm = 0x800
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rsi
	je	.LBB2_22
# %bb.2:
	leaq	-2096(%rbp), %rax
	leaq	-50(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	leaq	2(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %cx
	je	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$47, %cx
	je	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	movb	%cl, (%rax)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jb	.LBB2_3
.LBB2_6:
	movb	$0, (%rax)
	cmpb	$0, -2096(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_8
# %bb.7:
	leaq	-2096(%rbp), %rdi
	callq	getpwnam
	jmp	.LBB2_13
.LBB2_8:
	callq	issetugid
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_10
# %bb.9:
	movl	$.L.str, %edi
	callq	getenv
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB2_15
.LBB2_10:
	callq	getlogin
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_12
# %bb.11:
	movq	%rax, %rdi
	callq	getpwnam
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB2_14
.LBB2_12:
	callq	getuid
	movzwl	%ax, %edi
	callq	getpwuid
.LBB2_13:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rsi
	testq	%rax, %rax
	je	.LBB2_22
.LBB2_14:
	movq	40(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB2_15:
	leaq	-2096(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB2_16:                               # =>This Inner Loop Header: Depth=1
	movsbl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testw	%dx, %dx
	je	.LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_16 Depth=1
	addq	$1, %rax
	movw	%dx, (%rcx)
	addq	$2, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rcx
	jb	.LBB2_16
.LBB2_18:
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB2_19:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rcx
	jae	.LBB2_21
# %bb.20:                               #   in Loop: Header=BB2_19 Depth=1
	movzwl	(%rbx), %eax
	addq	$2, %rbx
	movw	%ax, (%rcx)
	addq	$2, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	jne	.LBB2_19
.LBB2_21:
	leaq	-2096(%rbp), %rsi
	movw	$0, (%rcx)
.LBB2_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r12), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rsi), %edi
	movl	$42, __A_VARIABLE(%rip)
	leaq	-2096(%rbp), %rdx
	testw	%di, %di
	je	.LBB2_54
# %bb.23:
	xorl	%eax, %eax
	jmp	.LBB2_27
	.p2align	4, 0x90
.LBB2_24:                               #   in Loop: Header=BB2_27 Depth=1
	movzbl	%dil, %esi
	addq	$1, %rax
	movw	%si, (%rdx)
.LBB2_25:                               #   in Loop: Header=BB2_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_26:                               #   in Loop: Header=BB2_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-2096(,%rax,2), %rdx
	addq	%rbp, %rdx
	movzwl	(%rcx), %edi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rsi
	testw	%di, %di
	je	.LBB2_54
.LBB2_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_34 Depth 2
                                        #     Child Loop BB2_49 Depth 2
	leaq	2(%rsi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$42, %di
	je	.LBB2_39
# %bb.28:                               #   in Loop: Header=BB2_27 Depth=1
	cmpw	$63, %di
	je	.LBB2_42
# %bb.29:                               #   in Loop: Header=BB2_27 Depth=1
	cmpw	$91, %di
	jne	.LBB2_24
# %bb.30:                               #   in Loop: Header=BB2_27 Depth=1
	movzwl	(%rcx), %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$33, %r8w
	jne	.LBB2_32
# %bb.31:                               #   in Loop: Header=BB2_27 Depth=1
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rcx
.LBB2_32:                               #   in Loop: Header=BB2_27 Depth=1
	cmpw	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_37
# %bb.33:                               #   in Loop: Header=BB2_27 Depth=1
	leaq	2(%rcx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	.p2align	4, 0x90
.LBB2_34:                               #   Parent Loop BB2_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rsi), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$93, %di
	je	.LBB2_43
# %bb.35:                               #   in Loop: Header=BB2_34 Depth=2
	addq	$2, %rsi
	movl	$42, __A_VARIABLE(%rip)
	testw	%di, %di
	jne	.LBB2_34
# %bb.36:                               #   in Loop: Header=BB2_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_37:                               #   in Loop: Header=BB2_27 Depth=1
	addq	$1, %rax
	movw	$91, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$33, %r8w
	jne	.LBB2_26
# %bb.38:                               #   in Loop: Header=BB2_27 Depth=1
	addq	$-2, %rcx
	jmp	.LBB2_25
	.p2align	4, 0x90
.LBB2_39:                               #   in Loop: Header=BB2_27 Depth=1
	orb	$1, 13(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_41
# %bb.40:                               #   in Loop: Header=BB2_27 Depth=1
	movzwl	-2(%rdx), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32810, %esi            # imm = 0x802A
	je	.LBB2_26
.LBB2_41:                               #   in Loop: Header=BB2_27 Depth=1
	addq	$1, %rax
	movw	$-32726, (%rdx)         # imm = 0x802A
	jmp	.LBB2_25
	.p2align	4, 0x90
.LBB2_42:                               #   in Loop: Header=BB2_27 Depth=1
	orb	$1, 13(%r12)
	addq	$1, %rax
	movw	$-32705, (%rdx)         # imm = 0x803F
	jmp	.LBB2_25
.LBB2_43:                               #   in Loop: Header=BB2_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$-32677, (%rdx)         # imm = 0x805B
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$33, %r8w
	jne	.LBB2_45
# %bb.44:                               #   in Loop: Header=BB2_27 Depth=1
	movw	$-32735, -2094(%rbp,%rax,2) # imm = 0x8021
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_46
.LBB2_45:                               #   in Loop: Header=BB2_27 Depth=1
	addq	$1, %rax
.LBB2_46:                               #   in Loop: Header=BB2_27 Depth=1
	movzbl	(%rcx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_49
	.p2align	4, 0x90
.LBB2_47:                               #   in Loop: Header=BB2_49 Depth=2
	movq	%rcx, %rax
.LBB2_48:                               #   in Loop: Header=BB2_49 Depth=2
	movzwl	(%rbx), %ecx
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$93, %cx
	je	.LBB2_53
.LBB2_49:                               #   Parent Loop BB2_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	%cl, %edx
	leaq	1(%rax), %rcx
	movw	%dx, -2096(%rbp,%rax,2)
	cmpw	$45, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_47
# %bb.50:                               #   in Loop: Header=BB2_49 Depth=2
	movzwl	2(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$93, %dx
	je	.LBB2_47
# %bb.52:                               #   in Loop: Header=BB2_49 Depth=2
	movw	$-32723, -2094(%rbp,%rax,2) # imm = 0x802D
	movzbl	%dl, %ecx
	movw	%cx, -2092(%rbp,%rax,2)
	addq	$3, %rax
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_48
.LBB2_53:                               #   in Loop: Header=BB2_27 Depth=1
	orb	$1, 13(%r12)
	movw	$-32675, -2096(%rbp,%rax,2) # imm = 0x805D
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rcx
	jmp	.LBB2_26
.LBB2_54:
	movw	$0, (%rdx)
	cmpw	$0, -2096(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_58
# %bb.55:
	leaq	-2098(%rbp), %rdx
	leaq	-4144(%rbp), %rdi
	leaq	-2096(%rbp), %rcx
	movq	%rdi, %rsi
	movq	%r12, %r8
	movq	%r14, %r9
	callq	glob2
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_65
# %bb.56:
	movl	(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %eax
	je	.LBB2_59
# %bb.57:
	movl	12(%r12), %ecx
	jmp	.LBB2_63
.LBB2_58:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
.LBB2_59:
	movl	12(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %cl
	jne	.LBB2_62
# %bb.60:
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %ecx              # imm = 0x200
	je	.LBB2_63
# %bb.61:
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %ecx              # imm = 0x100
	jne	.LBB2_63
.LBB2_62:
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	globextend
	movl	%eax, %ebx
	jmp	.LBB2_65
.LBB2_63:
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %cl
	jne	.LBB2_65
# %bb.64:
	movslq	8(%r12), %rcx
	shlq	$3, %rcx
	addq	16(%r12), %rcx
	movslq	%r13d, %rdx
	leaq	(%rcx,%rdx,8), %rdi
	subl	%r13d, %eax
	movslq	%eax, %rsi
	movl	$8, %edx
	movl	$compare, %ecx
	callq	qsort
	movl	$42, __A_VARIABLE(%rip)
.LBB2_65:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$4104, %rsp             # imm = 0x1008
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	glob0, .Lfunc_end2-glob0
                                        # -- End function
	.globl	globfree                # -- Begin function globfree
	.p2align	4, 0x90
	.type	globfree,@function
globfree:                               # @globfree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movq	16(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_8
# %bb.1:
	movslq	8(%r14), %rax
	movl	(%r14), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB3_7
# %bb.2:
	leaq	(%rdi,%rax,8), %r12
	xorl	%ebx, %ebx
	jmp	.LBB3_3
	.p2align	4, 0x90
.LBB3_5:                                #   in Loop: Header=BB3_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	cmpl	%ebx, %r15d
	je	.LBB3_6
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rbx,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_5
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_5
.LBB3_6:
	movq	16(%r14), %rdi
.LBB3_7:
	callq	free
	movq	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_8:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	globfree, .Lfunc_end3-globfree
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function globextend
	.type	globextend,@function
globextend:                             # @globextend
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %eax
	testl	%ecx, %ecx
	je	.LBB4_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jle	.LBB4_3
# %bb.2:
	callq	__errno
	movl	$0, (%rax)
	jmp	.LBB4_23
.LBB4_3:
	addl	8(%r14), %eax
	leal	16(,%rax,8), %eax
	movq	16(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_5
# %bb.4:
	movl	%eax, %esi
	callq	realloc
	jmp	.LBB4_6
.LBB4_5:
	movl	%eax, %edi
	callq	malloc
.LBB4_6:
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_18
# %bb.7:
	testq	%rdi, %rdi
	jne	.LBB4_11
# %bb.8:
	movslq	8(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB4_11
# %bb.9:
	leaq	(%r12,%rax,8), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %eax
	.p2align	4, 0x90
.LBB4_10:                               # =>This Inner Loop Header: Depth=1
	movq	$0, -8(%r12)
	addq	$-8, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %eax
	cmpl	$1, %eax
	jg	.LBB4_10
.LBB4_11:
	movq	%r12, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	.p2align	4, 0x90
.LBB4_12:                               # =>This Inner Loop Header: Depth=1
	cmpw	$0, (%rbx)
	leaq	2(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_12
# %bb.13:
	subq	%r15, %rbx
	shrq	%rbx
	movl	%ebx, %edi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_20
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_15:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %ebx
	je	.LBB4_22
# %bb.16:                               #   in Loop: Header=BB4_15 Depth=1
	movzbl	(%r15,%rcx,2), %edx
	movb	%dl, (%rax,%rcx)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	jne	.LBB4_15
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %esi
	movl	8(%r14), %edx
	leal	1(%rsi), %ecx
	movl	%ecx, (%r14)
	addl	%edx, %esi
	movslq	%esi, %rsi
	movq	%rax, (%r12,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_21
.LBB4_18:
	movl	$-1, %ebx
	testq	%rdi, %rdi
	je	.LBB4_24
# %bb.19:
	callq	free
	movq	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_24
.LBB4_20:
	movl	(%r14), %ecx
	movl	8(%r14), %edx
.LBB4_21:
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movq	$0, (%r12,%rcx,8)
	cmpq	$1, %rax
	sbbl	%ebx, %ebx
	jmp	.LBB4_24
.LBB4_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	free
.LBB4_23:
	movl	$-1, %ebx
.LBB4_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	globextend, .Lfunc_end4-globextend
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function compare
	.type	compare,@function
compare:                                # @compare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	compare, .Lfunc_end5-compare
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function glob2
	.type	glob2,@function
glob2:                                  # @glob2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1160, %rsp             # imm = 0x488
	movq	%rdx, %r13
	movq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_18
# %bb.1:
	movq	%rcx, %r14
.LBB6_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
                                        #     Child Loop BB6_14 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %cx
	je	.LBB6_9
# %bb.3:                                # %.preheader5
                                        #   in Loop: Header=BB6_2 Depth=1
	xorl	%eax, %eax
	movq	%r15, %rdx
	movq	%r14, %rbx
	.p2align	4, 0x90
.LBB6_4:                                #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$47, %cx
	je	.LBB6_10
# %bb.5:                                #   in Loop: Header=BB6_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %cx
	jns	.LBB6_7
# %bb.6:                                #   in Loop: Header=BB6_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB6_7:                                #   in Loop: Header=BB6_4 Depth=2
	leaq	2(%rdx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rsi
	ja	.LBB6_25
# %bb.8:                                #   in Loop: Header=BB6_4 Depth=2
	movw	%cx, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%rbx), %ecx
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdx
	testw	%cx, %cx
	jne	.LBB6_4
	jmp	.LBB6_11
	.p2align	4, 0x90
.LBB6_9:                                #   in Loop: Header=BB6_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_13
	.p2align	4, 0x90
.LBB6_10:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%rdx, %rsi
.LBB6_11:                               #   in Loop: Header=BB6_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB6_34
# %bb.12:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%rsi, %r15
	movq	%rbx, %r14
.LBB6_13:                               #   in Loop: Header=BB6_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$47, %ax
	jne	.LBB6_16
	.p2align	4, 0x90
.LBB6_14:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	2(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	ja	.LBB6_25
# %bb.15:                               #   in Loop: Header=BB6_14 Depth=2
	movw	$47, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%r14), %eax
	addq	$2, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r15
	cmpw	$47, %ax
	je	.LBB6_14
	jmp	.LBB6_17
	.p2align	4, 0x90
.LBB6_16:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r15, %rbx
.LBB6_17:                               #   in Loop: Header=BB6_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r15
	testw	%ax, %ax
	jne	.LBB6_2
	jmp	.LBB6_19
.LBB6_25:
	movl	$1, %r12d
	jmp	.LBB6_83
.LBB6_18:
	movq	%r15, %rbx
.LBB6_19:
	movw	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB6_20:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %eax             # imm = 0x400
	je	.LBB6_26
# %bb.21:                               #   in Loop: Header=BB6_20 Depth=1
	movzbl	(%rdi,%rax,2), %ecx
	movb	%cl, -1200(%rbp,%rax)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB6_20
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, 12(%r8)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rdi, %r15
	jne	.LBB6_27
# %bb.23:
	movq	%r8, %r14
	leaq	-1200(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	callq	lstat
	jmp	.LBB6_28
.LBB6_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	__errno
	movl	$91, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB6_83
.LBB6_27:
	leaq	-1200(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	movq	%r8, %r14
	callq	*56(%r8)
.LBB6_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB6_83
# %bb.29:
	movq	%r14, %rdx
	testb	$8, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_78
# %bb.30:
	cmpw	$47, -2(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_78
# %bb.31:
	movl	$61440, %eax            # imm = 0xF000
	andl	-164(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16384, %eax            # imm = 0x4000
	jne	.LBB6_40
.LBB6_32:
	leaq	2(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	cmpq	%r13, %rax
	ja	.LBB6_83
# %bb.33:
	movl	$47, (%rbx)
	jmp	.LBB6_77
.LBB6_34:
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	cmpq	%r13, %r15
	ja	.LBB6_82
# %bb.35:
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movw	$0, (%r15)
	callq	__errno
	movl	$0, (%rax)
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpw	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_46
# %bb.36:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx         # 8-byte Reload
.LBB6_37:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %eax             # imm = 0x400
	je	.LBB6_68
# %bb.38:                               #   in Loop: Header=BB6_37 Depth=1
	movzbl	(%rsi,%rax,2), %ecx
	movb	%cl, -1200(%rbp,%rax)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB6_37
# %bb.39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_47
.LBB6_40:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$40960, %eax            # imm = 0xA000
	jne	.LBB6_78
# %bb.41:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB6_42:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %eax             # imm = 0x400
	je	.LBB6_76
# %bb.43:                               #   in Loop: Header=BB6_42 Depth=1
	movzbl	(%r15,%rax,2), %ecx
	movb	%cl, -1200(%rbp,%rax)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB6_42
# %bb.44:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, 12(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_84
# %bb.45:
	movq	%rdx, %r14
	leaq	-1200(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	callq	stat
	jmp	.LBB6_85
.LBB6_46:
	leaq	-1200(%rbp), %rdi
	movl	$.L.str.1, %esi
	callq	strcpy
	movq	-48(%rbp), %rdx         # 8-byte Reload
.LBB6_47:
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, 12(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1200(%rbp), %rdi
	jne	.LBB6_49
# %bb.48:
	callq	opendir
	jmp	.LBB6_50
.LBB6_49:
	callq	*48(%rdx)
.LBB6_50:
	movq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	je	.LBB6_69
# %bb.51:
	testb	$64, 12(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$readdir, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB6_53
# %bb.52:
	movq	40(%rdx), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB6_53:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
.LBB6_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_56 Depth 2
                                        #       Child Loop BB6_60 Depth 3
	xorl	%r12d, %r12d
	jmp	.LBB6_56
.LBB6_55:                               #   in Loop: Header=BB6_56 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB6_56:                               #   Parent Loop BB6_54 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_60 Depth 3
	xorl	%eax, %eax
	callq	*-72(%rbp)              # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_66
# %bb.57:                               #   in Loop: Header=BB6_56 Depth=2
	cmpb	$46, 19(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_59
# %bb.58:                               #   in Loop: Header=BB6_56 Depth=2
	cmpw	$46, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_55
.LBB6_59:                               #   in Loop: Header=BB6_56 Depth=2
	addq	$19, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r12
	.p2align	4, 0x90
.LBB6_60:                               #   Parent Loop BB6_54 Depth=1
                                        #     Parent Loop BB6_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r12
	jae	.LBB6_62
# %bb.61:                               #   in Loop: Header=BB6_60 Depth=3
	movzbl	(%rax), %ecx
	addq	$1, %rax
	movw	%cx, (%r12)
	addq	$2, %r12
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %cx
	jne	.LBB6_60
.LBB6_62:                               #   in Loop: Header=BB6_56 Depth=2
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	match
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB6_64
# %bb.63:                               #   in Loop: Header=BB6_56 Depth=2
	movw	$0, (%r15)
	jmp	.LBB6_55
.LBB6_64:                               #   in Loop: Header=BB6_54 Depth=1
	addq	$-2, %r12
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r9          # 8-byte Reload
	callq	glob2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	je	.LBB6_54
# %bb.65:
	movl	%eax, %r12d
.LBB6_66:
	movq	-48(%rbp), %rax         # 8-byte Reload
	testb	$64, 12(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_79
# %bb.67:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	closedir
	jmp	.LBB6_80
.LBB6_68:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_69:
	cmpq	$0, 24(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_75
# %bb.70:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB6_71:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %eax             # imm = 0x400
	je	.LBB6_81
# %bb.72:                               #   in Loop: Header=BB6_71 Depth=1
	movzbl	(%rsi,%rax,2), %ecx
	movb	%cl, -1200(%rbp,%rax)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB6_71
# %bb.73:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rdx), %rbx
	movq	%rdx, %r14
	callq	__errno
	movl	(%rax), %esi
	leaq	-1200(%rbp), %rdi
	callq	*%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2, %r12d
	testl	%eax, %eax
	jne	.LBB6_82
# %bb.74:
	testb	$4, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_82
.LBB6_75:
	xorl	%r12d, %r12d
	jmp	.LBB6_82
.LBB6_76:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rbx
	callq	__errno
	movq	%rbx, %rdx
	movl	$91, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_77:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_78:
	addl	$1, 4(%rdx)
	movq	%r15, %rdi
	movq	%rdx, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	globextend
	movl	%eax, %r12d
	jmp	.LBB6_83
.LBB6_79:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	*32(%rax)
.LBB6_80:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_82
.LBB6_81:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2, %r12d
.LBB6_82:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_83:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$1160, %rsp             # imm = 0x488
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_84:
	leaq	-1200(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	movq	%rdx, %r14
	callq	*64(%rdx)
.LBB6_85:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%r14, %rdx
	jne	.LBB6_78
# %bb.86:
	movl	$61440, %eax            # imm = 0xF000
	andl	-164(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16384, %eax            # imm = 0x4000
	je	.LBB6_32
	jmp	.LBB6_78
.Lfunc_end6:
	.size	glob2, .Lfunc_end6-glob2
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function match
	.type	match,@function
match:                                  # @match
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jae	.LBB7_28
# %bb.1:                                # %.preheader2
	movq	%rdx, %r12
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB7_2
	.p2align	4, 0x90
.LBB7_8:                                #   in Loop: Header=BB7_2 Depth=1
	cmpw	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_30
.LBB7_27:                               #   in Loop: Header=BB7_2 Depth=1
	addq	$2, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	cmpq	%r12, %rbx
	jae	.LBB7_28
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_15 Depth 2
	leaq	2(%rsi), %rbx
	movzwl	(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32831, %eax            # imm = 0x803F
	je	.LBB7_8
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	movzwl	%ax, %ecx
	cmpl	$32859, %ecx            # imm = 0x805B
	je	.LBB7_9
# %bb.4:                                #   in Loop: Header=BB7_2 Depth=1
	cmpl	$32810, %ecx            # imm = 0x802A
	je	.LBB7_5
# %bb.29:                               #   in Loop: Header=BB7_2 Depth=1
	cmpw	%ax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_27
	jmp	.LBB7_30
	.p2align	4, 0x90
.LBB7_9:                                #   in Loop: Header=BB7_2 Depth=1
	movzwl	(%r15), %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB7_30
# %bb.10:                               #   in Loop: Header=BB7_2 Depth=1
	movzwl	(%rbx), %eax
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32801, %eax            # imm = 0x8021
	sete	%al
	jne	.LBB7_12
# %bb.11:                               #   in Loop: Header=BB7_2 Depth=1
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rbx
.LBB7_12:                               #   in Loop: Header=BB7_2 Depth=1
	movb	%al, %cl
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	leaq	2(%rbx), %rax
	movzwl	(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32861, %ecx            # imm = 0x805D
	jne	.LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_2 Depth=1
	xorl	%r12d, %r12d
.LBB7_26:                               #   in Loop: Header=BB7_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rbx
	cmpl	-44(%rbp), %r12d        # 4-byte Folded Reload
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	$0, %r14d
	jne	.LBB7_27
	jmp	.LBB7_31
.LBB7_14:                               #   in Loop: Header=BB7_2 Depth=1
	movzbl	%r14b, %r13d
	xorl	%r12d, %r12d
	jmp	.LBB7_15
.LBB7_19:                               #   in Loop: Header=BB7_15 Depth=2
	movzwl	%ax, %edi
	movl	%r13d, %esi
	callq	__collate_range_cmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB7_20
.LBB7_22:                               #   in Loop: Header=BB7_15 Depth=2
	addq	$6, %rbx
	movq	%rbx, %rax
	movl	%r12d, %edx
.LBB7_24:                               #   in Loop: Header=BB7_15 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %r12d
.LBB7_25:                               #   in Loop: Header=BB7_15 Depth=2
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rax
	movzwl	(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32861, %ecx            # imm = 0x805D
	je	.LBB7_26
.LBB7_15:                               #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	2(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32813, %edx            # imm = 0x802D
	jne	.LBB7_23
# %bb.16:                               #   in Loop: Header=BB7_15 Depth=2
	cmpl	$0, __collate_load_error(%rip)
	movzbl	%cl, %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_19
# %bb.17:                               #   in Loop: Header=BB7_15 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%r13w, %ax
	ja	.LBB7_22
# %bb.18:                               #   in Loop: Header=BB7_15 Depth=2
	movzbl	4(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpw	%ax, %r13w
	ja	.LBB7_22
	jmp	.LBB7_21
	.p2align	4, 0x90
.LBB7_23:                               #   in Loop: Header=BB7_15 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	cmpw	%r14w, %cx
	je	.LBB7_24
	jmp	.LBB7_25
.LBB7_20:                               #   in Loop: Header=BB7_15 Depth=2
	movzbl	4(%rbx), %esi
	movl	%r13d, %edi
	callq	__collate_range_cmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB7_22
.LBB7_21:                               #   in Loop: Header=BB7_15 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	jmp	.LBB7_22
.LBB7_28:
	xorl	%r14d, %r14d
	cmpw	$0, (%r15)
	sete	%r14b
	jmp	.LBB7_31
.LBB7_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	cmpq	%r12, %rbx
	je	.LBB7_31
	.p2align	4, 0x90
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	match
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB7_31
# %bb.7:                                #   in Loop: Header=BB7_6 Depth=1
	cmpw	$0, (%r15)
	leaq	2(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_6
.LBB7_30:
	xorl	%r14d, %r14d
.LBB7_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	match, .Lfunc_end7-match
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"HOME"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"."
	.size	.L.str.1, 2

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
