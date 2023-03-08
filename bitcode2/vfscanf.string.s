	.text
	.file	"vfscanf.c"
	.globl	__ssvfscanf_r           # -- Begin function __ssvfscanf_r
	.p2align	4, 0x90
	.type	__ssvfscanf_r,@function
__ssvfscanf_r:                          # @__ssvfscanf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$760, %rsp              # imm = 0x2F8
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdx), %eax
	movl	%eax, -108(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_2
# %bb.1:
	movq	%rdx, %r12
	movq	%rsi, %r8
	movq	%rdi, %r15
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	leaq	8(%rcx), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #       Child Loop BB0_14 Depth 3
                                        #     Child Loop BB0_233 Depth 2
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_156 Depth 2
                                        #     Child Loop BB0_246 Depth 2
                                        #     Child Loop BB0_117 Depth 2
                                        #     Child Loop BB0_308 Depth 2
                                        #     Child Loop BB0_343 Depth 2
                                        #     Child Loop BB0_227 Depth 2
                                        #     Child Loop BB0_280 Depth 2
                                        #     Child Loop BB0_106 Depth 2
                                        #     Child Loop BB0_217 Depth 2
                                        #     Child Loop BB0_289 Depth 2
                                        #     Child Loop BB0_210 Depth 2
	movslq	-88(%rbp), %rax         # 4-byte Folded Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB0_10:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_14 Depth 3
	movq	%r12, %rbx
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movslq	-108(%rbp), %rcx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_232
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %ecx
	movq	-64(%rbp), %r8          # 8-byte Reload
	jne	.LBB0_240
# %bb.12:                               # %.preheader5
                                        #   in Loop: Header=BB0_10 Depth=2
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=3
	leaq	(%r14,%r14,4), %rax
	leaq	(%r15,%rax,2), %r14
	addq	$-48, %r14
	movq	%r12, %rbx
.LBB0_14:                               #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rbx), %r12
	movzbl	(%rbx), %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$122, %r15
	ja	.LBB0_51
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=3
	jmpq	*.LJTI0_0(,%r15,8)
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=3
	orl	$1, %r13d
	movq	%r12, %rbx
	jmp	.LBB0_14
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=3
	orl	$16, %r13d
	movq	%r12, %rbx
	jmp	.LBB0_14
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=3
	orl	$2, %r13d
	movq	%r12, %rbx
	jmp	.LBB0_14
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=3
	xorl	%eax, %eax
	cmpb	$104, 1(%rbx)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	leal	4(,%rax,4), %eax
	je	.LBB0_23
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=3
	movq	%r12, %rbx
	jmp	.LBB0_26
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=3
	xorl	%eax, %eax
	cmpb	$108, 1(%rbx)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=3
	movq	%r12, %rbx
	jmp	.LBB0_25
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=3
	addq	$2, %rbx
	jmp	.LBB0_26
.LBB0_24:                               #   in Loop: Header=BB0_14 Depth=3
	addq	$2, %rbx
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=3
	addl	$1, %eax
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=3
	orl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_14
.LBB0_27:                               #   in Loop: Header=BB0_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r13b
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB0_48
# %bb.28:                               #   in Loop: Header=BB0_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r13b
	jne	.LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r13b
	jne	.LBB0_35
# %bb.30:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r13b
	jne	.LBB0_39
# %bb.31:                               #   in Loop: Header=BB0_10 Depth=2
	cmpl	$40, %eax
	ja	.LBB0_43
# %bb.32:                               #   in Loop: Header=BB0_10 Depth=2
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_44
.LBB0_33:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_37
# %bb.34:                               #   in Loop: Header=BB0_10 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_38
.LBB0_35:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_41
# %bb.36:                               #   in Loop: Header=BB0_10 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_42
.LBB0_37:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_38:                               #   in Loop: Header=BB0_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	-88(%rbp), %ecx         # 4-byte Reload
	movb	%cl, (%rax)
	jmp	.LBB0_47
.LBB0_39:                               #   in Loop: Header=BB0_10 Depth=2
	cmpl	$40, %eax
	ja	.LBB0_45
# %bb.40:                               #   in Loop: Header=BB0_10 Depth=2
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_46
.LBB0_41:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_42:                               #   in Loop: Header=BB0_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	-88(%rbp), %ecx         # 4-byte Reload
	movw	%cx, (%rax)
	jmp	.LBB0_47
.LBB0_43:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_44:                               #   in Loop: Header=BB0_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movl	-88(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB0_47
.LBB0_45:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_46:                               #   in Loop: Header=BB0_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
.LBB0_47:                               #   in Loop: Header=BB0_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_48:                               #   in Loop: Header=BB0_10 Depth=2
	movzbl	(%r12), %eax
	movl	%eax, -108(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_10
	jmp	.LBB0_365
	.p2align	4, 0x90
.LBB0_49:                               #   in Loop: Header=BB0_9 Depth=1
	movb	$4, %r15b
	jmp	.LBB0_67
.LBB0_50:                               #   in Loop: Header=BB0_9 Depth=1
	orl	$512, %r13d             # imm = 0x200
	jmp	.LBB0_60
.LBB0_51:                               #   in Loop: Header=BB0_9 Depth=1
	callq	__locale_ctype_ptr
	movb	1(%rax,%r15), %al
	andb	$3, %al
	movl	$42, __A_VARIABLE(%rip)
	movb	$3, %r15b
	movl	$_strtol_r, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	$10, -44(%rbp)          # 4-byte Folded Spill
	cmpb	$1, %al
	jne	.LBB0_270
# %bb.52:                               #   in Loop: Header=BB0_9 Depth=1
	orl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r8          # 8-byte Reload
	jmp	.LBB0_67
.LBB0_53:                               #   in Loop: Header=BB0_9 Depth=1
	orl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_54:                               # %.loopexit8
                                        #   in Loop: Header=BB0_9 Depth=1
	movb	$3, %r15b
	movl	$_strtoul_r, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$8, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_67
.LBB0_55:                               #   in Loop: Header=BB0_9 Depth=1
	orl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_56:                               # %.loopexit9
                                        #   in Loop: Header=BB0_9 Depth=1
	movb	$2, %r15b
	jmp	.LBB0_67
.LBB0_57:                               #   in Loop: Header=BB0_9 Depth=1
	leaq	-800(%rbp), %rdi
	movq	%r12, %rsi
	callq	__sccl
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r12
	orl	$64, %r13d
	movb	$1, %r15b
	jmp	.LBB0_67
.LBB0_58:                               # %.loopexit7
                                        #   in Loop: Header=BB0_9 Depth=1
	movb	$3, %r15b
	movl	$_strtol_r, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_67
.LBB0_59:                               #   in Loop: Header=BB0_9 Depth=1
	orl	$544, %r13d             # imm = 0x220
.LBB0_60:                               #   in Loop: Header=BB0_9 Depth=1
	movb	$3, %r15b
	movl	$_strtoul_r, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$16, -44(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_67
.LBB0_61:                               #   in Loop: Header=BB0_9 Depth=1
	movb	$3, %r15b
	movl	$_strtoul_r, %eax
	jmp	.LBB0_66
.LBB0_62:                               #   in Loop: Header=BB0_9 Depth=1
	orl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_63:                               #   in Loop: Header=BB0_9 Depth=1
	orl	$64, %r13d
	xorl	%r15d, %r15d
	jmp	.LBB0_67
.LBB0_64:                               #   in Loop: Header=BB0_9 Depth=1
	orl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_65:                               #   in Loop: Header=BB0_9 Depth=1
	movb	$3, %r15b
	movl	$_strtol_r, %eax
.LBB0_66:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$10, -44(%rbp)          # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB0_67:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%r8)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB0_69
# %bb.68:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_362
.LBB0_69:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r13b
	jne	.LBB0_75
# %bb.70:                               #   in Loop: Header=BB0_9 Depth=1
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_73
	jmp	.LBB0_76
	.p2align	4, 0x90
.LBB0_71:                               #   in Loop: Header=BB0_73 Depth=2
	addq	$1, %rcx
	movq	%rcx, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %rbx
.LBB0_72:                               #   in Loop: Header=BB0_73 Depth=2
	addl	$1, -88(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	(%rbx), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r8
	je	.LBB0_76
.LBB0_73:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%r8), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%r8)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jge	.LBB0_71
# %bb.74:                               #   in Loop: Header=BB0_73 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, %rbx
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_72
	jmp	.LBB0_362
	.p2align	4, 0x90
.LBB0_75:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
.LBB0_76:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %r15b
	ja	.LBB0_84
# %bb.77:                               #   in Loop: Header=BB0_9 Depth=1
	movzbl	%r15b, %eax
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_78:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB0_80
# %bb.79:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
.LBB0_80:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	testb	$1, %al
	jne	.LBB0_100
# %bb.81:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB0_209
# %bb.82:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	-56(%rbp), %r15         # 8-byte Reload
	ja	.LBB0_273
# %bb.83:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_274
.LBB0_84:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_8
.LBB0_85:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r14
.LBB0_87:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r13b
	jne	.LBB0_103
# %bb.88:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_213
# %bb.89:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_214
.LBB0_90:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB0_92
# %bb.91:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r14
.LBB0_92:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	testb	$1, %al
	jne	.LBB0_110
# %bb.93:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB0_224
# %bb.94:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_276
# %bb.95:                               #   in Loop: Header=BB0_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_277
.LBB0_96:                               #   in Loop: Header=BB0_9 Depth=1
	leaq	-1(%r14), %rax
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$349, %rax              # imm = 0x15D
	jb	.LBB0_113
# %bb.97:                               #   in Loop: Header=BB0_9 Depth=1
	movl	%r14d, %eax
	addl	$-349, %eax             # imm = 0xFEA3
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$349, %r14d             # imm = 0x15D
	jmp	.LBB0_114
.LBB0_98:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	_localeconv_r
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	leaq	-1(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$349, %rax              # imm = 0x15D
	jb	.LBB0_152
# %bb.99:                               #   in Loop: Header=BB0_9 Depth=1
	movl	%r14d, %eax
	addl	$-349, %eax             # imm = 0xFEA3
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$349, %r14d             # imm = 0x15D
	jmp	.LBB0_153
.LBB0_100:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$8, %edx
	leaq	-152(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%r13, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB0_231
# %bb.101:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_285
# %bb.102:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_286
.LBB0_103:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r8), %rax
	movzbl	(%rax), %ecx
	cmpb	$0, -800(%rbp,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_368
# %bb.104:                              # %.preheader19
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$1, %ecx
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_106
	.p2align	4, 0x90
.LBB0_105:                              #   in Loop: Header=BB0_106 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rax), %edx
	leaq	1(%r13), %rcx
	cmpb	$0, -800(%rbp,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_223
.LBB0_106:                              #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r13
	movl	8(%r8), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 8(%r8)
	addq	$1, %rax
	movq	%rax, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r14
	je	.LBB0_223
# %bb.107:                              #   in Loop: Header=BB0_106 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jg	.LBB0_105
# %bb.108:                              #   in Loop: Header=BB0_106 Depth=2
	movq	%r15, %rdi
	movq	%r8, %rsi
	movq	%r8, %rbx
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_329
# %bb.109:                              #   in Loop: Header=BB0_106 Depth=2
	movq	(%rbx), %rax
	movq	%rbx, %r8
	jmp	.LBB0_105
.LBB0_110:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$8, %edx
	leaq	-152(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%r13, %rcx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-108(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	testb	$16, %cl
	jne	.LBB0_306
# %bb.111:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_304
# %bb.112:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_305
.LBB0_113:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$0, -72(%rbp)           # 4-byte Folded Spill
.LBB0_114:                              #   in Loop: Header=BB0_9 Depth=1
	orl	$3456, %r13d            # imm = 0xD80
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB0_117
	.p2align	4, 0x90
.LBB0_115:                              #   in Loop: Header=BB0_117 Depth=2
	addq	$1, %rax
	movq	%rax, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_116:                              #   in Loop: Header=BB0_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r14
	je	.LBB0_141
.LBB0_117:                              #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %rax
	movzbl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	leal	-43(%rcx), %edx
	cmpb	$77, %dl
	ja	.LBB0_141
# %bb.118:                              #   in Loop: Header=BB0_117 Depth=2
	movzbl	%dl, %edx
	jmpq	*.LJTI0_3(,%rdx,8)
.LBB0_119:                              #   in Loop: Header=BB0_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, -44(%rbp)          # 4-byte Folded Reload
	jl	.LBB0_141
.LBB0_125:                              #   in Loop: Header=BB0_117 Depth=2
	andl	$-2945, %r13d           # imm = 0xF47F
	jmp	.LBB0_128
	.p2align	4, 0x90
.LBB0_121:                              #   in Loop: Header=BB0_117 Depth=2
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__ssvfscanf_r.basefix(%rdx,%rdx), %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	andl	$-2945, %r13d           # imm = 0xF47F
	jmp	.LBB0_128
.LBB0_122:                              #   in Loop: Header=BB0_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	%r13b, %r13b
	jns	.LBB0_141
# %bb.123:                              #   in Loop: Header=BB0_117 Depth=2
	andl	$-129, %r13d
	jmp	.LBB0_128
.LBB0_124:                              #   in Loop: Header=BB0_117 Depth=2
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__ssvfscanf_r.basefix(%rdx,%rdx), %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	addq	$-1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rdx
	jae	.LBB0_125
	jmp	.LBB0_141
.LBB0_126:                              #   in Loop: Header=BB0_117 Depth=2
	movl	%r13d, %edx
	andl	$1536, %edx             # imm = 0x600
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$512, %edx              # imm = 0x200
	jne	.LBB0_141
# %bb.127:                              #   in Loop: Header=BB0_117 Depth=2
	andl	$-1793, %r13d           # imm = 0xF8FF
	orl	$1280, %r13d            # imm = 0x500
	movl	$16, -44(%rbp)          # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB0_128:                              #   in Loop: Header=BB0_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_129:                              #   in Loop: Header=BB0_117 Depth=2
	movb	%cl, -544(%rbp,%rbx)
	addq	$1, %rbx
.LBB0_130:                              #   in Loop: Header=BB0_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r8), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 8(%r8)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jge	.LBB0_115
# %bb.131:                              #   in Loop: Header=BB0_117 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	callq	__ssrefill_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_116
	jmp	.LBB0_141
.LBB0_132:                              #   in Loop: Header=BB0_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$2048, %r13d            # imm = 0x800
	je	.LBB0_129
# %bb.133:                              #   in Loop: Header=BB0_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	jne	.LBB0_135
# %bb.134:                              #   in Loop: Header=BB0_117 Depth=2
	orl	$512, %r13d             # imm = 0x200
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, -44(%rbp)           # 4-byte Folded Spill
.LBB0_135:                              #   in Loop: Header=BB0_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r13d            # imm = 0x400
	jne	.LBB0_138
# %bb.136:                              #   in Loop: Header=BB0_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-72(%rbp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB0_139
# %bb.137:                              #   in Loop: Header=BB0_117 Depth=2
	addl	$-1, %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_140
.LBB0_138:                              #   in Loop: Header=BB0_117 Depth=2
	andl	$-1409, %r13d           # imm = 0xFA7F
	jmp	.LBB0_128
.LBB0_139:                              #   in Loop: Header=BB0_117 Depth=2
	movl	$0, -72(%rbp)           # 4-byte Folded Spill
.LBB0_140:                              #   in Loop: Header=BB0_117 Depth=2
	andl	$-897, %r13d            # imm = 0xFC7F
	addl	$1, %r15d
	jmp	.LBB0_130
.LBB0_141:                              #   in Loop: Header=BB0_9 Depth=1
	leaq	(%rbx,%rbp), %r14
	addq	$-544, %r14             # imm = 0xFDE0
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %r13d             # imm = 0x100
	je	.LBB0_145
# %bb.142:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jle	.LBB0_144
# %bb.143:                              #   in Loop: Header=BB0_9 Depth=1
	movsbl	-1(%r14), %esi
	addq	$-1, %r14
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rdx
	callq	_sungetc_r
	movl	$42, __A_VARIABLE(%rip)
.LBB0_144:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-544(%rbp), %rax
	cmpq	%rax, %r14
	je	.LBB0_375
.LBB0_145:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r13b
	jne	.LBB0_360
# %bb.146:                              #   in Loop: Header=BB0_9 Depth=1
	movb	$0, (%r14)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	-544(%rbp), %rsi
	xorl	%edx, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	callq	*-120(%rbp)             # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %r13b
	jne	.LBB0_238
# %bb.147:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r13b
	jne	.LBB0_323
# %bb.148:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r13b
	jne	.LBB0_330
# %bb.149:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movslq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r13b
	jne	.LBB0_344
# %bb.150:                              #   in Loop: Header=BB0_9 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_354
# %bb.151:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_355
.LBB0_152:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$0, -128(%rbp)          # 4-byte Folded Spill
.LBB0_153:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	-88(%rbp), %r9d         # 4-byte Reload
	movq	%r13, %rdi
	orl	$1920, %edi             # imm = 0x780
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	leaq	-544(%rbp), %rdx
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%ebx, %ebx
	movq	%r12, -176(%rbp)        # 8-byte Spill
	jmp	.LBB0_156
	.p2align	4, 0x90
.LBB0_154:                              #   in Loop: Header=BB0_156 Depth=2
	addq	$1, %rsi
	movq	%rsi, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_155:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rbx,%rbp), %rdx
	addq	$-544, %rdx             # imm = 0xFDE0
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r14
	je	.LBB0_200
.LBB0_156:                              #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %rsi
	movzbl	(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	leal	-43(%rcx), %eax
	cmpb	$78, %al
	ja	.LBB0_186
# %bb.157:                              #   in Loop: Header=BB0_156 Depth=2
	movzbl	%al, %eax
	jmpq	*.LJTI0_2(,%rax,8)
.LBB0_158:                              #   in Loop: Header=BB0_156 Depth=2
	movsbl	%r10b, %eax
	movsbl	%r13b, %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %edx
	jne	.LBB0_200
# %bb.159:                              #   in Loop: Header=BB0_156 Depth=2
	andl	$-385, %edi             # imm = 0xFE7F
.LBB0_160:                              #   in Loop: Header=BB0_156 Depth=2
	movl	%r10d, %edx
.LBB0_161:                              #   in Loop: Header=BB0_156 Depth=2
	movl	%r13d, %eax
.LBB0_162:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, -544(%rbp,%rbx)
	addq	$1, %rbx
	movl	%edx, %r10d
	movl	%eax, %r13d
.LBB0_163:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_164:                              #   in Loop: Header=BB0_156 Depth=2
	addl	$1, %r9d
	movl	8(%r8), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 8(%r8)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jge	.LBB0_154
# %bb.165:                              #   in Loop: Header=BB0_156 Depth=2
	movq	%rdi, %r15
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	movq	%r14, -88(%rbp)         # 8-byte Spill
	movq	%rbx, %r14
	movl	%r9d, %ebx
	movq	%r10, %r12
	callq	__ssrefill_r
	movq	%r12, %r10
	movl	%ebx, %r9d
	movq	%r14, %rbx
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	-176(%rbp), %r12        # 8-byte Reload
	movq	%r15, %rdi
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_155
	jmp	.LBB0_200
.LBB0_166:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	%dil, %dil
	jns	.LBB0_200
# %bb.167:                              #   in Loop: Header=BB0_156 Depth=2
	andl	$-129, %edi
	jmp	.LBB0_160
.LBB0_168:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %dl
	movl	%r13d, %eax
	cmpb	$1, %r10b
	je	.LBB0_162
	jmp	.LBB0_200
.LBB0_169:                              #   in Loop: Header=BB0_156 Depth=2
	movl	%edi, %eax
	andl	$1280, %eax             # imm = 0x500
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %eax             # imm = 0x400
	movq	-72(%rbp), %rax         # 8-byte Reload
	je	.LBB0_172
# %bb.170:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %edi             # imm = 0x400
	je	.LBB0_200
# %bb.171:                              #   in Loop: Header=BB0_156 Depth=2
	testq	%rax, %rax
	je	.LBB0_200
.LBB0_172:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %edi              # imm = 0x200
	jne	.LBB0_174
# %bb.173:                              #   in Loop: Header=BB0_156 Depth=2
	subq	-144(%rbp), %rax        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rdx, -160(%rbp)        # 8-byte Spill
.LBB0_174:                              #   in Loop: Header=BB0_156 Depth=2
	andl	$-1921, %edi            # imm = 0xF87F
	orl	$384, %edi              # imm = 0x180
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_160
.LBB0_175:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	$3, %al
	movl	%r10d, %edx
	cmpb	$2, %r13b
	je	.LBB0_162
	jmp	.LBB0_200
.LBB0_176:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	jne	.LBB0_192
# %bb.177:                              #   in Loop: Header=BB0_156 Depth=2
	testb	%r13b, %r13b
	jne	.LBB0_192
# %bb.178:                              #   in Loop: Header=BB0_156 Depth=2
	movl	%edi, %eax
	andl	$1792, %eax             # imm = 0x700
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1792, %eax             # imm = 0x700
	jne	.LBB0_353
# %bb.179:                              #   in Loop: Header=BB0_156 Depth=2
	andl	$-1921, %edi            # imm = 0xF87F
	movb	$1, %al
	xorl	%edx, %edx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%r10d, %edx
	jmp	.LBB0_162
.LBB0_180:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	jne	.LBB0_194
# %bb.181:                              #   in Loop: Header=BB0_156 Depth=2
	testb	%r10b, %r10b
	jne	.LBB0_194
# %bb.182:                              #   in Loop: Header=BB0_156 Depth=2
	movl	%edi, %eax
	andl	$1792, %eax             # imm = 0x700
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1792, %eax             # imm = 0x700
	jne	.LBB0_195
# %bb.183:                              #   in Loop: Header=BB0_156 Depth=2
	andl	$-1921, %edi            # imm = 0xF87F
	movb	$1, %dl
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_161
.LBB0_184:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	$7, %al
	movl	%r10d, %edx
	cmpb	$6, %r13b
	je	.LBB0_162
	jmp	.LBB0_200
.LBB0_185:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	$8, %al
	movl	%r10d, %edx
	cmpb	$7, %r13b
	je	.LBB0_162
	jmp	.LBB0_200
.LBB0_186:                              #   in Loop: Header=BB0_156 Depth=2
	movq	-136(%rbp), %rax        # 8-byte Reload
	cmpb	(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_200
# %bb.187:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %edi              # imm = 0x200
	je	.LBB0_200
# %bb.188:                              #   in Loop: Header=BB0_156 Depth=2
	andl	$-641, %edi             # imm = 0xFD7F
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB0_160
.LBB0_189:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %edi              # imm = 0x100
	je	.LBB0_158
# %bb.190:                              #   in Loop: Header=BB0_156 Depth=2
	andl	$-129, %edi
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	-128(%rbp), %ecx        # 4-byte Reload
	testl	%ecx, %ecx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB0_199
# %bb.191:                              #   in Loop: Header=BB0_156 Depth=2
	addl	$-1, %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	addq	$1, %r14
	jmp	.LBB0_163
.LBB0_192:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %r13b
	je	.LBB0_198
# %bb.193:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %r13b
	je	.LBB0_198
	jmp	.LBB0_200
.LBB0_194:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	$3, %dl
	cmpb	$2, %r10b
	je	.LBB0_161
	jmp	.LBB0_196
.LBB0_195:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_196:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %r13b
	je	.LBB0_198
# %bb.197:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %r13b
	jne	.LBB0_200
.LBB0_198:                              #   in Loop: Header=BB0_156 Depth=2
	addb	$1, %r13b
	jmp	.LBB0_160
.LBB0_199:                              #   in Loop: Header=BB0_156 Depth=2
	movl	$0, -128(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_164
.LBB0_200:                              #   in Loop: Header=BB0_9 Depth=1
	leaq	(%rbx,%rbp), %r14
	addq	$-544, %r14             # imm = 0xFDE0
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB0_203
# %bb.201:                              #   in Loop: Header=BB0_9 Depth=1
	andl	$-257, %edi             # imm = 0xFEFF
.LBB0_202:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_204
.LBB0_203:                              #   in Loop: Header=BB0_9 Depth=1
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB0_204:                              #   in Loop: Header=BB0_9 Depth=1
	movsbl	%r10b, %eax
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jbe	.LBB0_366
# %bb.205:                              #   in Loop: Header=BB0_9 Depth=1
	movsbl	%r13b, %eax
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movl	%r9d, -88(%rbp)         # 4-byte Spill
	ja	.LBB0_208
# %bb.206:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %r13b
	jl	.LBB0_369
# %bb.207:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_245
.LBB0_208:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rbx, %r14
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_248
.LBB0_209:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	movq	-56(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_210:                              #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	8(%r8), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %eax
	jge	.LBB0_271
# %bb.211:                              #   in Loop: Header=BB0_210 Depth=2
	addq	%rax, %rbx
	subq	%rax, %r14
	addq	%rax, (%r8)
	movq	%r15, %rdi
	movq	%r8, %rsi
	callq	__ssrefill_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_210
# %bb.212:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB0_272
	jmp	.LBB0_361
.LBB0_213:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_214:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r8), %rax
	movzbl	(%rax), %ecx
	cmpb	$0, -800(%rbp,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r15
	je	.LBB0_221
# %bb.215:                              # %.preheader17
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	%r8, %rsi
	leaq	1(%r13), %rcx
	movl	$1, %ebx
	jmp	.LBB0_217
	.p2align	4, 0x90
.LBB0_216:                              #   in Loop: Header=BB0_217 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi), %rax
	movzbl	(%rax), %edx
	addq	$1, %rbx
	leaq	1(%r15), %rcx
	cmpb	$0, -800(%rbp,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_221
.LBB0_217:                              #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$-1, 8(%rsi)
	movq	%rcx, %r15
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movzbl	(%rax), %eax
	movb	%al, -1(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	je	.LBB0_221
# %bb.218:                              #   in Loop: Header=BB0_217 Depth=2
	cmpl	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB0_216
# %bb.219:                              #   in Loop: Header=BB0_217 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__ssrefill_r
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_216
# %bb.220:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_362
.LBB0_221:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%r13, %rax
	movl	%r15d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	subl	%eax, %r13d
	je	.LBB0_365
# %bb.222:                              #   in Loop: Header=BB0_9 Depth=1
	movb	$0, (%r15)
	addl	$1, -76(%rbp)           # 4-byte Folded Spill
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB0_223:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	%r13d, -88(%rbp)        # 4-byte Folded Spill
	jmp	.LBB0_7
.LBB0_224:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %edx
	xorl	%ebx, %ebx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB0_230
# %bb.225:                              # %.preheader23
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$1, %edx
	jmp	.LBB0_227
	.p2align	4, 0x90
.LBB0_226:                              #   in Loop: Header=BB0_227 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %esi
	leaq	1(%rbx), %rdx
	testb	$8, 1(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_230
.LBB0_227:                              #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rbx
	movl	8(%r8), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%r8)
	addq	$1, %rcx
	movq	%rcx, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	je	.LBB0_230
# %bb.228:                              #   in Loop: Header=BB0_227 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jg	.LBB0_226
# %bb.229:                              #   in Loop: Header=BB0_227 Depth=2
	movq	%r15, %rdi
	movq	%r8, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_226
.LBB0_230:                              #   in Loop: Header=BB0_9 Depth=1
	addl	-88(%rbp), %ebx         # 4-byte Folded Reload
	movl	%ebx, %eax
	movl	%ebx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB0_7
.LBB0_231:                              #   in Loop: Header=BB0_9 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB0_287
.LBB0_232:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	8(%r8), %eax
	.p2align	4, 0x90
.LBB0_233:                              #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_235
# %bb.234:                              #   in Loop: Header=BB0_233 Depth=2
	movq	%r15, %rdi
	movq	%r8, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_237
.LBB0_235:                              #   in Loop: Header=BB0_233 Depth=2
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_237
# %bb.236:                              #   in Loop: Header=BB0_233 Depth=2
	addl	$1, -88(%rbp)           # 4-byte Folded Spill
	movl	8(%r8), %eax
	addl	$-1, %eax
	movl	%eax, 8(%r8)
	addq	$1, %rcx
	movq	%rcx, (%r8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_233
.LBB0_237:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rbx, %r12
	jmp	.LBB0_8
.LBB0_238:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB0_325
# %bb.239:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_326
.LBB0_240:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rbx, %r12
.LBB0_241:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%r8)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %rbx
	jg	.LBB0_243
# %bb.242:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_362
.LBB0_243:                              #   in Loop: Header=BB0_9 Depth=1
	movq	(%rbx), %rax
	movb	(%rax), %cl
	cmpb	-1(%r12), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_365
# %bb.244:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rbx, %r8
	addl	$-1, 8(%rbx)
	addq	$1, %rax
	movq	%rax, (%rbx)
	addl	$1, -88(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_8
.LBB0_245:                              #   in Loop: Header=BB0_9 Depth=1
	leal	-4(%r13), %eax
	movzbl	%al, %r14d
	movq	%r14, -128(%rbp)        # 8-byte Spill
	notq	%r14
	addq	%rbx, %r14
	addb	$1, %r13b
	leaq	-545(%rbp), %rax
	addq	%rax, %rbx
	movq	-56(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_246:                              #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rbx), %esi
	movq	%r15, %rdi
	movq	%r8, %rdx
	callq	_sungetc_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addb	$-1, %r13b
	addq	$-1, %rbx
	cmpb	$4, %r13b
	jg	.LBB0_246
# %bb.247:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	notl	%eax
	addl	%eax, -88(%rbp)         # 4-byte Folded Spill
	movq	-136(%rbp), %rdi        # 8-byte Reload
.LBB0_248:                              #   in Loop: Header=BB0_9 Depth=1
	leaq	(%r14,%rbp), %rbx
	addq	$-544, %rbx             # imm = 0xFDE0
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %edi              # imm = 0x100
	je	.LBB0_254
# %bb.249:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %edi             # imm = 0x400
	jne	.LBB0_372
# %bb.250:                              #   in Loop: Header=BB0_9 Depth=1
	movsbl	-1(%rbx), %esi
	movl	%esi, %eax
	orb	$32, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$101, %al
	jne	.LBB0_252
# %bb.251:                              #   in Loop: Header=BB0_9 Depth=1
	addq	$-1, %rbx
	addl	$-1, -88(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_253
.LBB0_252:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%r15, %rdi
	movq	%r8, %rdx
	callq	_sungetc_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	movsbl	-2(%rbx), %esi
	addq	$-2, %rbx
	addl	$-2, -88(%rbp)          # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB0_253:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%r15, %rdi
	movq	%r8, %rdx
	callq	_sungetc_r
	movl	$42, __A_VARIABLE(%rip)
	movq	-136(%rbp), %rdi        # 8-byte Reload
.LBB0_254:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %dil
	jne	.LBB0_6
# %bb.255:                              #   in Loop: Header=BB0_9 Depth=1
	movb	$0, (%rbx)
	movl	%edi, %eax
	andl	$1536, %eax             # imm = 0x600
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB0_258
# %bb.256:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rdx         # 8-byte Reload
	subq	-144(%rbp), %rdx        # 8-byte Folded Reload
	je	.LBB0_264
# %bb.257:                              #   in Loop: Header=BB0_9 Depth=1
	negq	%rdx
	jmp	.LBB0_260
.LBB0_258:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-168(%rbp), %rax        # 8-byte Reload
	testq	%rax, %rax
	je	.LBB0_263
# %bb.259:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-160(%rbp), %rbx        # 8-byte Reload
	leaq	1(%rbx), %rsi
	movq	%rax, %r14
	movq	%r15, %rdi
	xorl	%edx, %edx
	movl	$10, %ecx
	callq	_strtol_r
	subq	%r14, %rax
	movq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_260:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-215(%rbp), %rax
	cmpq	%rax, %rbx
	jb	.LBB0_262
# %bb.261:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-216(%rbp), %rbx
.LBB0_262:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	sprintf
.LBB0_263:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_264:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%r15, %rdi
	leaq	-544(%rbp), %rsi
	xorl	%edx, %edx
	callq	_strtod_r
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB0_268
# %bb.265:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB0_327
# %bb.266:                              #   in Loop: Header=BB0_9 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_334
# %bb.267:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rax, %rcx
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_335
.LBB0_268:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB0_3
# %bb.269:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_4
.LBB0_270:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	jmp	.LBB0_67
.LBB0_271:                              #   in Loop: Header=BB0_9 Depth=1
	addq	%r14, %rbx
	subl	%r14d, %eax
	movl	%eax, 8(%r8)
	addq	%r14, (%r8)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_272:                              #   in Loop: Header=BB0_9 Depth=1
	addl	%ebx, -88(%rbp)         # 4-byte Folded Spill
	jmp	.LBB0_6
.LBB0_273:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_274:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	_sfread_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_361
# %bb.275:                              #   in Loop: Header=BB0_9 Depth=1
	addl	%eax, -88(%rbp)         # 4-byte Folded Spill
	addl	$1, -76(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_6
.LBB0_276:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_277:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	jne	.LBB0_283
# %bb.278:                              # %.preheader21
                                        #   in Loop: Header=BB0_9 Depth=1
	addq	$-1, %r14
	leaq	1(%r15), %rdx
	jmp	.LBB0_280
	.p2align	4, 0x90
.LBB0_279:                              #   in Loop: Header=BB0_280 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %esi
	addq	$-1, %r14
	leaq	1(%rbx), %rdx
	testb	$8, 1(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_283
.LBB0_280:                              #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$-1, 8(%r8)
	movq	%rdx, %rbx
	leaq	1(%rcx), %rax
	movq	%rax, (%r8)
	movzbl	(%rcx), %eax
	movb	%al, -1(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_283
# %bb.281:                              #   in Loop: Header=BB0_280 Depth=2
	cmpl	$0, 8(%r8)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB0_279
# %bb.282:                              #   in Loop: Header=BB0_280 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_279
.LBB0_283:                              #   in Loop: Header=BB0_9 Depth=1
	movb	$0, (%rbx)
	subl	%r15d, %ebx
	addl	%ebx, -88(%rbp)         # 4-byte Folded Spill
	addl	$1, -76(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_284
.LBB0_285:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_286:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
.LBB0_287:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB0_289
	.p2align	4, 0x90
.LBB0_288:                              #   in Loop: Header=BB0_289 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_302
.LBB0_289:                              #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ebx
	je	.LBB0_361
# %bb.290:                              #   in Loop: Header=BB0_289 Depth=2
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	movzbl	(%rax), %ecx
	movslq	%ebx, %rdx
	movb	%cl, -544(%rbp,%rdx)
	addl	$-1, 8(%rsi)
	addl	$1, %ebx
	addq	$1, %rax
	movq	%rax, (%rsi)
	movslq	%ebx, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	leaq	-544(%rbp), %rdx
	leaq	-152(%rbp), %r8
	callq	_mbrtowc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_361
# %bb.291:                              #   in Loop: Header=BB0_289 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_293
# %bb.292:                              #   in Loop: Header=BB0_289 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-2, %rax
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%r13, %rax
	jne	.LBB0_296
	jmp	.LBB0_299
	.p2align	4, 0x90
.LBB0_293:                              #   in Loop: Header=BB0_289 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	testb	$16, %al
	jne	.LBB0_295
# %bb.294:                              #   in Loop: Header=BB0_289 Depth=2
	movl	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_295:                              #   in Loop: Header=BB0_289 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB0_296:                              #   in Loop: Header=BB0_289 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB0_298
# %bb.297:                              #   in Loop: Header=BB0_289 Depth=2
	addq	$4, %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB0_298:                              #   in Loop: Header=BB0_289 Depth=2
	addl	%ebx, -88(%rbp)         # 4-byte Folded Spill
	addq	$-1, %r14
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB0_299:                              #   in Loop: Header=BB0_289 Depth=2
	cmpl	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB0_288
# %bb.300:                              #   in Loop: Header=BB0_289 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_288
# %bb.301:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB0_361
.LBB0_302:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r13b
	je	.LBB0_351
	jmp	.LBB0_303
.LBB0_304:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_305:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB0_306:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_349
# %bb.307:                              # %.preheader27
                                        #   in Loop: Header=BB0_9 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_308:                              #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ebx
	je	.LBB0_361
# %bb.309:                              #   in Loop: Header=BB0_308 Depth=2
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	movzbl	(%rax), %ecx
	movslq	%ebx, %rdx
	movb	%cl, -544(%rbp,%rdx)
	addl	$-1, 8(%rsi)
	addl	$1, %ebx
	addq	$1, %rax
	movq	%rax, (%rsi)
	movslq	%ebx, %r15
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	leaq	-544(%rbp), %rdx
	movq	%r15, %rcx
	leaq	-152(%rbp), %r8
	callq	_mbrtowc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_361
# %bb.310:                              #   in Loop: Header=BB0_308 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_313
# %bb.311:                              #   in Loop: Header=BB0_308 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-2, %rax
	jne	.LBB0_314
# %bb.312:                              #   in Loop: Header=BB0_308 Depth=2
	movq	-64(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_319
	.p2align	4, 0x90
.LBB0_313:                              #   in Loop: Header=BB0_308 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	jmp	.LBB0_315
	.p2align	4, 0x90
.LBB0_314:                              #   in Loop: Header=BB0_308 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
.LBB0_315:                              #   in Loop: Header=BB0_308 Depth=2
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_341
# %bb.316:                              #   in Loop: Header=BB0_308 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	testb	$16, %al
	movq	-64(%rbp), %r15         # 8-byte Reload
	jne	.LBB0_318
# %bb.317:                              #   in Loop: Header=BB0_308 Depth=2
	addq	$4, -72(%rbp)           # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB0_318:                              #   in Loop: Header=BB0_308 Depth=2
	addl	%ebx, -88(%rbp)         # 4-byte Folded Spill
	addq	$-1, %r14
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB0_319:                              #   in Loop: Header=BB0_308 Depth=2
	cmpl	$0, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB0_321
# %bb.320:                              #   in Loop: Header=BB0_308 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssrefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_348
.LBB0_321:                              #   in Loop: Header=BB0_308 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %ecx
	movzbl	1(%rax,%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_349
# %bb.322:                              #   in Loop: Header=BB0_308 Depth=2
	andb	$8, %al
	je	.LBB0_308
	jmp	.LBB0_349
.LBB0_323:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB0_332
# %bb.324:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_333
.LBB0_325:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_326:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
.LBB0_358:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB0_359
.LBB0_327:                              #   in Loop: Header=BB0_9 Depth=1
	cmpl	$40, %eax
	ja	.LBB0_337
# %bb.328:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_338
.LBB0_3:                                #   in Loop: Header=BB0_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_4:                                #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB0_5
.LBB0_329:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_223
.LBB0_330:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB0_346
# %bb.331:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_347
.LBB0_332:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_333:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB0_359
.LBB0_334:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_335:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rbx
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_339
# %bb.336:                              #   in Loop: Header=BB0_9 Depth=1
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB0_340
.LBB0_337:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_338:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movsd	%xmm0, -184(%rbp)
	fldl	-184(%rbp)
	fstpt	(%rax)
	jmp	.LBB0_5
.LBB0_339:                              #   in Loop: Header=BB0_9 Depth=1
	xorl	%edi, %edi
	callq	nanf
.LBB0_340:                              #   in Loop: Header=BB0_9 Depth=1
	movss	%xmm0, (%rbx)
.LBB0_5:                                #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, -76(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_6
.LBB0_341:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_349
# %bb.342:                              # %.preheader25
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_343:                              #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-545(%rbp,%r15), %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	_sungetc_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r15
	jne	.LBB0_343
	jmp	.LBB0_349
.LBB0_344:                              #   in Loop: Header=BB0_9 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_356
# %bb.345:                              #   in Loop: Header=BB0_9 Depth=1
	movq	%rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_357
.LBB0_346:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_347:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB0_359
.LBB0_348:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB0_361
.LBB0_349:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r13b
	jne	.LBB0_303
# %bb.350:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
.LBB0_351:                              #   in Loop: Header=BB0_9 Depth=1
	addl	$1, -76(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB0_303:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB0_6:                                #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_7
.LBB0_353:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rbx,%rbp), %r14
	addq	$-544, %r14             # imm = 0xFDE0
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_202
.LBB0_354:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_355:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB0_359:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, -76(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB0_360:                              #   in Loop: Header=BB0_9 Depth=1
	leaq	-544(%rbp), %rax
	subl	%eax, %r14d
	addl	-88(%rbp), %r15d        # 4-byte Folded Reload
	addl	%r14d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	movl	%r15d, -88(%rbp)        # 4-byte Spill
.LBB0_284:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB0_7:                                #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:                                #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r12), %eax
	movl	%eax, -108(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_9
	jmp	.LBB0_365
.LBB0_356:                              #   in Loop: Header=BB0_9 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_357:                              #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	jmp	.LBB0_358
.LBB0_2:
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_365
.LBB0_361:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_362:
	movl	$42, __A_VARIABLE(%rip)
	movl	-76(%rbp), %edx         # 4-byte Reload
	testl	%edx, %edx
	je	.LBB0_364
# %bb.363:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movzwl	16(%rax), %eax
	andl	$64, %eax
	xorl	%ecx, %ecx
	cmpw	$1, %ax
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %edx
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_365
.LBB0_364:                              # %.loopexit11
	movl	$-1, -76(%rbp)          # 4-byte Folded Spill
.LBB0_365:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-76(%rbp), %eax         # 4-byte Reload
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_366:
	leaq	-544(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jbe	.LBB0_375
.LBB0_367:                              # =>This Inner Loop Header: Depth=1
	movsbl	-1(%r14), %esi
	addq	$-1, %r14
	movq	%rbx, %rdi
	movq	%r8, %rdx
	callq	_sungetc_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	ja	.LBB0_367
	jmp	.LBB0_375
.LBB0_368:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_365
.LBB0_369:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	movq	-56(%rbp), %r14         # 8-byte Reload
	jle	.LBB0_375
# %bb.370:                              # %.preheader3
	addq	$1, %rbx
.LBB0_371:                              # =>This Inner Loop Header: Depth=1
	movsbl	-546(%rbp,%rbx), %esi
	movq	%r14, %rdi
	movq	%r8, %rdx
	callq	_sungetc_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rbx
	cmpq	$1, %rbx
	jg	.LBB0_371
	jmp	.LBB0_375
.LBB0_372:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jle	.LBB0_375
# %bb.373:                              # %.preheader1
	addq	$1, %r14
.LBB0_374:                              # =>This Inner Loop Header: Depth=1
	movsbl	-546(%rbp,%r14), %esi
	movq	%r15, %rdi
	movq	%r8, %rdx
	callq	_sungetc_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r14
	cmpq	$1, %r14
	jg	.LBB0_374
.LBB0_375:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_365
.Lfunc_end0:
	.size	__ssvfscanf_r, .Lfunc_end0-__ssvfscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_364
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_241
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_17
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_13
	.quad	.LBB0_13
	.quad	.LBB0_13
	.quad	.LBB0_13
	.quad	.LBB0_13
	.quad	.LBB0_13
	.quad	.LBB0_13
	.quad	.LBB0_13
	.quad	.LBB0_13
	.quad	.LBB0_13
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_49
	.quad	.LBB0_51
	.quad	.LBB0_62
	.quad	.LBB0_64
	.quad	.LBB0_49
	.quad	.LBB0_49
	.quad	.LBB0_49
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_18
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_53
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_55
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_50
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_57
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_49
	.quad	.LBB0_51
	.quad	.LBB0_63
	.quad	.LBB0_65
	.quad	.LBB0_49
	.quad	.LBB0_49
	.quad	.LBB0_49
	.quad	.LBB0_19
	.quad	.LBB0_58
	.quad	.LBB0_16
	.quad	.LBB0_51
	.quad	.LBB0_21
	.quad	.LBB0_51
	.quad	.LBB0_27
	.quad	.LBB0_54
	.quad	.LBB0_59
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_56
	.quad	.LBB0_16
	.quad	.LBB0_61
	.quad	.LBB0_51
	.quad	.LBB0_51
	.quad	.LBB0_50
	.quad	.LBB0_51
	.quad	.LBB0_16
.LJTI0_1:
	.quad	.LBB0_78
	.quad	.LBB0_85
	.quad	.LBB0_90
	.quad	.LBB0_96
	.quad	.LBB0_98
.LJTI0_2:
	.quad	.LBB0_166
	.quad	.LBB0_186
	.quad	.LBB0_166
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_189
	.quad	.LBB0_158
	.quad	.LBB0_158
	.quad	.LBB0_158
	.quad	.LBB0_158
	.quad	.LBB0_158
	.quad	.LBB0_158
	.quad	.LBB0_158
	.quad	.LBB0_158
	.quad	.LBB0_158
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_168
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_169
	.quad	.LBB0_175
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_176
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_180
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_184
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_185
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_168
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_169
	.quad	.LBB0_175
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_176
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_180
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_184
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_186
	.quad	.LBB0_185
.LJTI0_3:
	.quad	.LBB0_122
	.quad	.LBB0_141
	.quad	.LBB0_122
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_132
	.quad	.LBB0_121
	.quad	.LBB0_121
	.quad	.LBB0_121
	.quad	.LBB0_121
	.quad	.LBB0_121
	.quad	.LBB0_121
	.quad	.LBB0_121
	.quad	.LBB0_124
	.quad	.LBB0_124
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_119
	.quad	.LBB0_119
	.quad	.LBB0_119
	.quad	.LBB0_119
	.quad	.LBB0_119
	.quad	.LBB0_119
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_126
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_119
	.quad	.LBB0_119
	.quad	.LBB0_119
	.quad	.LBB0_119
	.quad	.LBB0_119
	.quad	.LBB0_119
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_141
	.quad	.LBB0_126
                                        # -- End function
	.type	__ssvfscanf_r.basefix,@object # @__ssvfscanf_r.basefix
	.p2align	4
__ssvfscanf_r.basefix:
	.short	10                      # 0xa
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	16                      # 0x10
	.size	__ssvfscanf_r.basefix, 34

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"e%ld"
	.size	.L.str, 5

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
