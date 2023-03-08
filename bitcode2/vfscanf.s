	.text
	.file	"vfscanf.c"
	.globl	vfscanf                 # -- Begin function vfscanf
	.p2align	4, 0x90
	.type	vfscanf,@function
vfscanf:                                # @vfscanf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	__getreent
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	__svfscanf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vfscanf, .Lfunc_end0-vfscanf
                                        # -- End function
	.globl	__svfscanf_r            # -- Begin function __svfscanf_r
	.p2align	4, 0x90
	.type	__svfscanf_r,@function
__svfscanf_r:                           # @__svfscanf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$760, %rsp              # imm = 0x2F8
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdi, %r13
	leaq	-108(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r12), %eax
	movl	%eax, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_2
# %bb.1:
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	leaq	8(%rbx), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	movq	%r13, -48(%rbp)         # 8-byte Spill
.LBB1_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
                                        #       Child Loop BB1_14 Depth 3
                                        #     Child Loop BB1_235 Depth 2
                                        #     Child Loop BB1_73 Depth 2
                                        #     Child Loop BB1_157 Depth 2
                                        #     Child Loop BB1_248 Depth 2
                                        #     Child Loop BB1_118 Depth 2
                                        #     Child Loop BB1_309 Depth 2
                                        #     Child Loop BB1_347 Depth 2
                                        #     Child Loop BB1_229 Depth 2
                                        #     Child Loop BB1_283 Depth 2
                                        #     Child Loop BB1_107 Depth 2
                                        #     Child Loop BB1_219 Depth 2
                                        #     Child Loop BB1_291 Depth 2
                                        #     Child Loop BB1_212 Depth 2
	movslq	%r14d, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%r14d, -80(%rbp)        # 4-byte Spill
.LBB1_10:                               #   Parent Loop BB1_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_14 Depth 3
	movq	%r12, %rbx
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movslq	-112(%rbp), %rcx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_234
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %ecx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jne	.LBB1_242
# %bb.12:                               # %.preheader5
                                        #   in Loop: Header=BB1_10 Depth=2
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	jmp	.LBB1_14
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_14 Depth=3
	leaq	(%r14,%r14,4), %rax
	leaq	(%r15,%rax,2), %r14
	addq	$-48, %r14
	movq	%r12, %rbx
.LBB1_14:                               #   Parent Loop BB1_9 Depth=1
                                        #     Parent Loop BB1_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rbx), %r12
	movzbl	(%rbx), %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$122, %r15
	ja	.LBB1_51
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=3
	jmpq	*.LJTI1_0(,%r15,8)
.LBB1_16:                               #   in Loop: Header=BB1_14 Depth=3
	orl	$1, %r13d
	movq	%r12, %rbx
	jmp	.LBB1_14
.LBB1_17:                               #   in Loop: Header=BB1_14 Depth=3
	orl	$16, %r13d
	movq	%r12, %rbx
	jmp	.LBB1_14
.LBB1_18:                               #   in Loop: Header=BB1_14 Depth=3
	orl	$2, %r13d
	movq	%r12, %rbx
	jmp	.LBB1_14
.LBB1_19:                               #   in Loop: Header=BB1_14 Depth=3
	xorl	%eax, %eax
	cmpb	$104, 1(%rbx)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	leal	4(,%rax,4), %eax
	je	.LBB1_23
# %bb.20:                               #   in Loop: Header=BB1_14 Depth=3
	movq	%r12, %rbx
	jmp	.LBB1_26
.LBB1_21:                               #   in Loop: Header=BB1_14 Depth=3
	xorl	%eax, %eax
	cmpb	$108, 1(%rbx)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_24
# %bb.22:                               #   in Loop: Header=BB1_14 Depth=3
	movq	%r12, %rbx
	jmp	.LBB1_25
.LBB1_23:                               #   in Loop: Header=BB1_14 Depth=3
	addq	$2, %rbx
	jmp	.LBB1_26
.LBB1_24:                               #   in Loop: Header=BB1_14 Depth=3
	addq	$2, %rbx
.LBB1_25:                               #   in Loop: Header=BB1_14 Depth=3
	addl	$1, %eax
.LBB1_26:                               #   in Loop: Header=BB1_14 Depth=3
	orl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_14
.LBB1_27:                               #   in Loop: Header=BB1_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r13b
	movl	-80(%rbp), %r14d        # 4-byte Reload
	jne	.LBB1_48
# %bb.28:                               #   in Loop: Header=BB1_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r13b
	jne	.LBB1_33
# %bb.29:                               #   in Loop: Header=BB1_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r13b
	jne	.LBB1_35
# %bb.30:                               #   in Loop: Header=BB1_10 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r13b
	jne	.LBB1_39
# %bb.31:                               #   in Loop: Header=BB1_10 Depth=2
	cmpl	$40, %eax
	ja	.LBB1_43
# %bb.32:                               #   in Loop: Header=BB1_10 Depth=2
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_44
.LBB1_33:                               #   in Loop: Header=BB1_10 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_37
# %bb.34:                               #   in Loop: Header=BB1_10 Depth=2
	movq	%rax, %rdx
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_38
.LBB1_35:                               #   in Loop: Header=BB1_10 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_41
# %bb.36:                               #   in Loop: Header=BB1_10 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_42
.LBB1_37:                               #   in Loop: Header=BB1_10 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_38:                               #   in Loop: Header=BB1_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movb	%r14b, (%rax)
	jmp	.LBB1_47
.LBB1_39:                               #   in Loop: Header=BB1_10 Depth=2
	cmpl	$40, %eax
	ja	.LBB1_45
# %bb.40:                               #   in Loop: Header=BB1_10 Depth=2
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_46
.LBB1_41:                               #   in Loop: Header=BB1_10 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_42:                               #   in Loop: Header=BB1_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movw	%r14w, (%rax)
	jmp	.LBB1_47
.LBB1_43:                               #   in Loop: Header=BB1_10 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_44:                               #   in Loop: Header=BB1_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movl	%r14d, (%rax)
	jmp	.LBB1_47
.LBB1_45:                               #   in Loop: Header=BB1_10 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_46:                               #   in Loop: Header=BB1_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
.LBB1_47:                               #   in Loop: Header=BB1_10 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_48:                               #   in Loop: Header=BB1_10 Depth=2
	movzbl	(%r12), %eax
	movl	%eax, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-48(%rbp), %r13         # 8-byte Reload
	jne	.LBB1_10
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_49:                               #   in Loop: Header=BB1_9 Depth=1
	movb	$4, %r15b
	jmp	.LBB1_67
.LBB1_50:                               #   in Loop: Header=BB1_9 Depth=1
	orl	$512, %r13d             # imm = 0x200
	jmp	.LBB1_60
.LBB1_51:                               #   in Loop: Header=BB1_9 Depth=1
	callq	__locale_ctype_ptr
	movb	1(%rax,%r15), %al
	andb	$3, %al
	movl	$42, __A_VARIABLE(%rip)
	movb	$3, %r15b
	movl	$_strtol_r, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movl	$10, -52(%rbp)          # 4-byte Folded Spill
	cmpb	$1, %al
	jne	.LBB1_273
# %bb.52:                               #   in Loop: Header=BB1_9 Depth=1
	orl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB1_67
.LBB1_53:                               #   in Loop: Header=BB1_9 Depth=1
	orl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_54:                               # %.loopexit8
                                        #   in Loop: Header=BB1_9 Depth=1
	movb	$3, %r15b
	movl	$_strtoul_r, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$8, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_67
.LBB1_55:                               #   in Loop: Header=BB1_9 Depth=1
	orl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_56:                               # %.loopexit9
                                        #   in Loop: Header=BB1_9 Depth=1
	movb	$2, %r15b
	jmp	.LBB1_67
.LBB1_57:                               #   in Loop: Header=BB1_9 Depth=1
	leaq	-800(%rbp), %rdi
	movq	%r12, %rsi
	callq	__sccl
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %r12
	orl	$64, %r13d
	movb	$1, %r15b
	jmp	.LBB1_67
.LBB1_58:                               # %.loopexit7
                                        #   in Loop: Header=BB1_9 Depth=1
	movb	$3, %r15b
	movl	$_strtol_r, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_67
.LBB1_59:                               #   in Loop: Header=BB1_9 Depth=1
	orl	$544, %r13d             # imm = 0x220
.LBB1_60:                               #   in Loop: Header=BB1_9 Depth=1
	movb	$3, %r15b
	movl	$_strtoul_r, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$16, -52(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_67
.LBB1_61:                               #   in Loop: Header=BB1_9 Depth=1
	movb	$3, %r15b
	movl	$_strtoul_r, %eax
	jmp	.LBB1_66
.LBB1_62:                               #   in Loop: Header=BB1_9 Depth=1
	orl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_63:                               #   in Loop: Header=BB1_9 Depth=1
	orl	$64, %r13d
	xorl	%r15d, %r15d
	jmp	.LBB1_67
.LBB1_64:                               #   in Loop: Header=BB1_9 Depth=1
	orl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_65:                               #   in Loop: Header=BB1_9 Depth=1
	movb	$3, %r15b
	movl	$_strtol_r, %eax
.LBB1_66:                               #   in Loop: Header=BB1_9 Depth=1
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$10, -52(%rbp)          # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB1_67:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB1_69
# %bb.68:                               #   in Loop: Header=BB1_9 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_364
.LBB1_69:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r13b
	jne	.LBB1_76
# %bb.70:                               #   in Loop: Header=BB1_9 Depth=1
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB1_73
	.p2align	4, 0x90
.LBB1_71:                               #   in Loop: Header=BB1_73 Depth=2
	addq	$1, %rcx
	movq	%rcx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_72:                               #   in Loop: Header=BB1_73 Depth=2
	addl	$1, -80(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
.LBB1_73:                               #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_77
# %bb.74:                               #   in Loop: Header=BB1_73 Depth=2
	movl	8(%rbx), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jge	.LBB1_71
# %bb.75:                               #   in Loop: Header=BB1_73 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_72
	jmp	.LBB1_364
	.p2align	4, 0x90
.LBB1_76:                               #   in Loop: Header=BB1_9 Depth=1
	movq	-64(%rbp), %rbx         # 8-byte Reload
.LBB1_77:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %r15b
	ja	.LBB1_85
# %bb.78:                               #   in Loop: Header=BB1_9 Depth=1
	movzbl	%r15b, %eax
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_79:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB1_81
# %bb.80:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
.LBB1_81:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	testb	$1, %al
	jne	.LBB1_101
# %bb.82:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB1_211
# %bb.83:                               #   in Loop: Header=BB1_9 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	-48(%rbp), %r13         # 8-byte Reload
	ja	.LBB1_276
# %bb.84:                               #   in Loop: Header=BB1_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_277
.LBB1_85:                               #   in Loop: Header=BB1_9 Depth=1
	movl	-80(%rbp), %r14d        # 4-byte Reload
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB1_8
.LBB1_86:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB1_88
# %bb.87:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r14
.LBB1_88:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r13b
	jne	.LBB1_104
# %bb.89:                               #   in Loop: Header=BB1_9 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_215
# %bb.90:                               #   in Loop: Header=BB1_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_216
.LBB1_91:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB1_93
# %bb.92:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r14
.LBB1_93:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	testb	$1, %al
	jne	.LBB1_111
# %bb.94:                               #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB1_226
# %bb.95:                               #   in Loop: Header=BB1_9 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	-48(%rbp), %r13         # 8-byte Reload
	ja	.LBB1_279
# %bb.96:                               #   in Loop: Header=BB1_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_280
.LBB1_97:                               #   in Loop: Header=BB1_9 Depth=1
	leaq	-1(%r14), %rax
	xorl	%ecx, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$349, %rax              # imm = 0x15D
	jb	.LBB1_114
# %bb.98:                               #   in Loop: Header=BB1_9 Depth=1
	movl	%r14d, %eax
	addl	$-349, %eax             # imm = 0xFEA3
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$349, %r14d             # imm = 0x15D
	jmp	.LBB1_115
.LBB1_99:                               #   in Loop: Header=BB1_9 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_localeconv_r
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	leaq	-1(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$349, %rax              # imm = 0x15D
	jb	.LBB1_153
# %bb.100:                              #   in Loop: Header=BB1_9 Depth=1
	movl	%r14d, %eax
	addl	$-349, %eax             # imm = 0xFEA3
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$349, %r14d             # imm = 0x15D
	jmp	.LBB1_154
.LBB1_101:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$8, %edx
	leaq	-152(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%r13, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB1_233
# %bb.102:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_287
# %bb.103:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_288
.LBB1_104:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	movzbl	(%rax), %ecx
	cmpb	$0, -800(%rbp,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_380
# %bb.105:                              # %.preheader18
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	$1, %ecx
	jmp	.LBB1_107
	.p2align	4, 0x90
.LBB1_106:                              #   in Loop: Header=BB1_107 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rax), %edx
	leaq	1(%r13), %rcx
	cmpb	$0, -800(%rbp,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_225
.LBB1_107:                              #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r13
	movl	8(%rbx), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 8(%rbx)
	addq	$1, %rax
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r14
	je	.LBB1_225
# %bb.108:                              #   in Loop: Header=BB1_107 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jg	.LBB1_106
# %bb.109:                              #   in Loop: Header=BB1_107 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_332
# %bb.110:                              #   in Loop: Header=BB1_107 Depth=2
	movq	(%rbx), %rax
	jmp	.LBB1_106
.LBB1_111:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$8, %edx
	leaq	-152(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%r13, %rcx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-112(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	testb	$16, %cl
	jne	.LBB1_307
# %bb.112:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_305
# %bb.113:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_306
.LBB1_114:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$0, -128(%rbp)          # 4-byte Folded Spill
.LBB1_115:                              #   in Loop: Header=BB1_9 Depth=1
	orl	$3456, %r13d            # imm = 0xD80
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	jmp	.LBB1_118
	.p2align	4, 0x90
.LBB1_116:                              #   in Loop: Header=BB1_118 Depth=2
	addq	$1, %rax
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_117:                              #   in Loop: Header=BB1_118 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r14
	je	.LBB1_142
.LBB1_118:                              #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rax
	movzbl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	leal	-43(%rcx), %edx
	cmpb	$77, %dl
	ja	.LBB1_142
# %bb.119:                              #   in Loop: Header=BB1_118 Depth=2
	movzbl	%dl, %edx
	jmpq	*.LJTI1_3(,%rdx,8)
.LBB1_120:                              #   in Loop: Header=BB1_118 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, -52(%rbp)          # 4-byte Folded Reload
	jl	.LBB1_142
.LBB1_126:                              #   in Loop: Header=BB1_118 Depth=2
	andl	$-2945, %r13d           # imm = 0xF47F
	jmp	.LBB1_129
	.p2align	4, 0x90
.LBB1_122:                              #   in Loop: Header=BB1_118 Depth=2
	movslq	-52(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__svfscanf_r.basefix(%rdx,%rdx), %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
	andl	$-2945, %r13d           # imm = 0xF47F
	jmp	.LBB1_129
.LBB1_123:                              #   in Loop: Header=BB1_118 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	%r13b, %r13b
	jns	.LBB1_142
# %bb.124:                              #   in Loop: Header=BB1_118 Depth=2
	andl	$-129, %r13d
	jmp	.LBB1_129
.LBB1_125:                              #   in Loop: Header=BB1_118 Depth=2
	movslq	-52(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__svfscanf_r.basefix(%rdx,%rdx), %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	addq	$-1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rdx
	jae	.LBB1_126
	jmp	.LBB1_142
.LBB1_127:                              #   in Loop: Header=BB1_118 Depth=2
	movl	%r13d, %edx
	andl	$1536, %edx             # imm = 0x600
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$512, %edx              # imm = 0x200
	jne	.LBB1_142
# %bb.128:                              #   in Loop: Header=BB1_118 Depth=2
	andl	$-1793, %r13d           # imm = 0xF8FF
	orl	$1280, %r13d            # imm = 0x500
	movl	$16, -52(%rbp)          # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB1_129:                              #   in Loop: Header=BB1_118 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_130:                              #   in Loop: Header=BB1_118 Depth=2
	movb	%cl, -544(%rbp,%r15)
	addq	$1, %r15
.LBB1_131:                              #   in Loop: Header=BB1_118 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rbx), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jge	.LBB1_116
# %bb.132:                              #   in Loop: Header=BB1_118 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	__srefill_r
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_117
	jmp	.LBB1_142
.LBB1_133:                              #   in Loop: Header=BB1_118 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$2048, %r13d            # imm = 0x800
	je	.LBB1_130
# %bb.134:                              #   in Loop: Header=BB1_118 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	jne	.LBB1_136
# %bb.135:                              #   in Loop: Header=BB1_118 Depth=2
	orl	$512, %r13d             # imm = 0x200
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, -52(%rbp)           # 4-byte Folded Spill
.LBB1_136:                              #   in Loop: Header=BB1_118 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r13d            # imm = 0x400
	jne	.LBB1_139
# %bb.137:                              #   in Loop: Header=BB1_118 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-128(%rbp), %ecx        # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB1_140
# %bb.138:                              #   in Loop: Header=BB1_118 Depth=2
	addl	$-1, %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_141
.LBB1_139:                              #   in Loop: Header=BB1_118 Depth=2
	andl	$-1409, %r13d           # imm = 0xFA7F
	jmp	.LBB1_129
.LBB1_140:                              #   in Loop: Header=BB1_118 Depth=2
	movl	$0, -128(%rbp)          # 4-byte Folded Spill
.LBB1_141:                              #   in Loop: Header=BB1_118 Depth=2
	andl	$-897, %r13d            # imm = 0xFC7F
	movq	-72(%rbp), %rcx         # 8-byte Reload
	addl	$1, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB1_131
.LBB1_142:                              #   in Loop: Header=BB1_9 Depth=1
	leaq	(%r15,%rbp), %r14
	addq	$-544, %r14             # imm = 0xFDE0
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %r13d             # imm = 0x100
	je	.LBB1_146
# %bb.143:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jle	.LBB1_145
# %bb.144:                              #   in Loop: Header=BB1_9 Depth=1
	movsbl	-1(%r14), %esi
	addq	$-1, %r14
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	_ungetc_r
	movl	$42, __A_VARIABLE(%rip)
.LBB1_145:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-544(%rbp), %rax
	cmpq	%rax, %r14
	je	.LBB1_379
.LBB1_146:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r13b
	jne	.LBB1_204
# %bb.147:                              #   in Loop: Header=BB1_9 Depth=1
	movb	$0, (%r14)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	leaq	-544(%rbp), %rsi
	xorl	%edx, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	callq	*-120(%rbp)             # 8-byte Folded Reload
	movq	%r13, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %dl
	jne	.LBB1_240
# %bb.148:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %dl
	jne	.LBB1_324
# %bb.149:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	movq	-48(%rbp), %r13         # 8-byte Reload
	jne	.LBB1_333
# %bb.150:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movslq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	jne	.LBB1_348
# %bb.151:                              #   in Loop: Header=BB1_9 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_356
# %bb.152:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB1_357
.LBB1_153:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$0, -136(%rbp)          # 4-byte Folded Spill
.LBB1_154:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r13, %r8
	orl	$1920, %r8d             # imm = 0x780
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	leaq	-544(%rbp), %rdi
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%r15d, %r15d
	movq	%r12, -176(%rbp)        # 8-byte Spill
	jmp	.LBB1_157
	.p2align	4, 0x90
.LBB1_155:                              #   in Loop: Header=BB1_157 Depth=2
	addq	$1, %rsi
	movq	%rsi, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_156:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r15,%rbp), %rdi
	addq	$-544, %rdi             # imm = 0xFDE0
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r14
	je	.LBB1_201
.LBB1_157:                              #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx), %rsi
	movzbl	(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	leal	-43(%rcx), %eax
	cmpb	$78, %al
	ja	.LBB1_187
# %bb.158:                              #   in Loop: Header=BB1_157 Depth=2
	movzbl	%al, %eax
	jmpq	*.LJTI1_2(,%rax,8)
.LBB1_159:                              #   in Loop: Header=BB1_157 Depth=2
	movsbl	%r9b, %eax
	movsbl	%r13b, %edi
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %edi
	jne	.LBB1_201
# %bb.160:                              #   in Loop: Header=BB1_157 Depth=2
	andl	$-385, %r8d             # imm = 0xFE7F
.LBB1_161:                              #   in Loop: Header=BB1_157 Depth=2
	movl	%r9d, %ebx
.LBB1_162:                              #   in Loop: Header=BB1_157 Depth=2
	movl	%r13d, %eax
.LBB1_163:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	%cl, -544(%rbp,%r15)
	addq	$1, %r15
	movl	%ebx, %r9d
	movl	%eax, %r13d
.LBB1_164:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_165:                              #   in Loop: Header=BB1_157 Depth=2
	addl	$1, -80(%rbp)           # 4-byte Folded Spill
	movl	8(%rdx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 8(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jge	.LBB1_155
# %bb.166:                              #   in Loop: Header=BB1_157 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rdx, %rsi
	movq	%r8, %rbx
	movq	%r14, %r12
	movq	%r15, %r14
	movq	%r13, %r15
	movq	%r9, %r13
	callq	__srefill_r
	movq	%r13, %r9
	movq	%r15, %r13
	movq	%r14, %r15
	movq	%r12, %r14
	movq	-176(%rbp), %r12        # 8-byte Reload
	movq	%rbx, %r8
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_156
	jmp	.LBB1_201
.LBB1_167:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	jns	.LBB1_201
# %bb.168:                              #   in Loop: Header=BB1_157 Depth=2
	andl	$-129, %r8d
	jmp	.LBB1_161
.LBB1_169:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %bl
	movl	%r13d, %eax
	cmpb	$1, %r9b
	je	.LBB1_163
	jmp	.LBB1_201
.LBB1_170:                              #   in Loop: Header=BB1_157 Depth=2
	movl	%r8d, %eax
	andl	$1280, %eax             # imm = 0x500
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %eax             # imm = 0x400
	movq	-72(%rbp), %rax         # 8-byte Reload
	je	.LBB1_173
# %bb.171:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r8d             # imm = 0x400
	je	.LBB1_201
# %bb.172:                              #   in Loop: Header=BB1_157 Depth=2
	testq	%rax, %rax
	je	.LBB1_201
.LBB1_173:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r8d              # imm = 0x200
	jne	.LBB1_175
# %bb.174:                              #   in Loop: Header=BB1_157 Depth=2
	subq	-128(%rbp), %rax        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rdi, -160(%rbp)        # 8-byte Spill
.LBB1_175:                              #   in Loop: Header=BB1_157 Depth=2
	andl	$-1921, %r8d            # imm = 0xF87F
	orl	$384, %r8d              # imm = 0x180
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB1_161
.LBB1_176:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	$3, %al
	movl	%r9d, %ebx
	cmpb	$2, %r13b
	je	.LBB1_163
	jmp	.LBB1_201
.LBB1_177:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	jne	.LBB1_193
# %bb.178:                              #   in Loop: Header=BB1_157 Depth=2
	testb	%r13b, %r13b
	jne	.LBB1_193
# %bb.179:                              #   in Loop: Header=BB1_157 Depth=2
	movl	%r8d, %eax
	andl	$1792, %eax             # imm = 0x700
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1792, %eax             # imm = 0x700
	jne	.LBB1_355
# %bb.180:                              #   in Loop: Header=BB1_157 Depth=2
	andl	$-1921, %r8d            # imm = 0xF87F
	movb	$1, %al
	xorl	%edi, %edi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%r9d, %ebx
	jmp	.LBB1_163
.LBB1_181:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	jne	.LBB1_195
# %bb.182:                              #   in Loop: Header=BB1_157 Depth=2
	testb	%r9b, %r9b
	jne	.LBB1_195
# %bb.183:                              #   in Loop: Header=BB1_157 Depth=2
	movl	%r8d, %eax
	andl	$1792, %eax             # imm = 0x700
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1792, %eax             # imm = 0x700
	jne	.LBB1_196
# %bb.184:                              #   in Loop: Header=BB1_157 Depth=2
	andl	$-1921, %r8d            # imm = 0xF87F
	movb	$1, %bl
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB1_162
.LBB1_185:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	$7, %al
	movl	%r9d, %ebx
	cmpb	$6, %r13b
	je	.LBB1_163
	jmp	.LBB1_201
.LBB1_186:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	$8, %al
	movl	%r9d, %ebx
	cmpb	$7, %r13b
	je	.LBB1_163
	jmp	.LBB1_201
.LBB1_187:                              #   in Loop: Header=BB1_157 Depth=2
	movq	-144(%rbp), %rax        # 8-byte Reload
	cmpb	(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_201
# %bb.188:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %r8d              # imm = 0x200
	je	.LBB1_201
# %bb.189:                              #   in Loop: Header=BB1_157 Depth=2
	andl	$-641, %r8d             # imm = 0xFD7F
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB1_161
.LBB1_190:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %r8d              # imm = 0x100
	je	.LBB1_159
# %bb.191:                              #   in Loop: Header=BB1_157 Depth=2
	andl	$-129, %r8d
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	-136(%rbp), %ecx        # 4-byte Reload
	testl	%ecx, %ecx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB1_200
# %bb.192:                              #   in Loop: Header=BB1_157 Depth=2
	addl	$-1, %ecx
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	addq	$1, %r14
	jmp	.LBB1_164
.LBB1_193:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %r13b
	je	.LBB1_199
# %bb.194:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %r13b
	je	.LBB1_199
	jmp	.LBB1_201
.LBB1_195:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	$3, %bl
	cmpb	$2, %r9b
	je	.LBB1_162
	jmp	.LBB1_197
.LBB1_196:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_197:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %r13b
	je	.LBB1_199
# %bb.198:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %r13b
	jne	.LBB1_201
.LBB1_199:                              #   in Loop: Header=BB1_157 Depth=2
	addb	$1, %r13b
	jmp	.LBB1_161
.LBB1_200:                              #   in Loop: Header=BB1_157 Depth=2
	movl	$0, -136(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_165
.LBB1_201:                              #   in Loop: Header=BB1_9 Depth=1
	leaq	(%r15,%rbp), %r14
	addq	$-544, %r14             # imm = 0xFDE0
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB1_205
# %bb.202:                              #   in Loop: Header=BB1_9 Depth=1
	andl	$-257, %r8d             # imm = 0xFEFF
.LBB1_203:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_206
.LBB1_204:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB1_362
.LBB1_205:                              #   in Loop: Header=BB1_9 Depth=1
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB1_206:                              #   in Loop: Header=BB1_9 Depth=1
	movsbl	%r9b, %eax
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jbe	.LBB1_371
# %bb.207:                              #   in Loop: Header=BB1_9 Depth=1
	movsbl	%r13b, %eax
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	movq	%r8, -144(%rbp)         # 8-byte Spill
	ja	.LBB1_210
# %bb.208:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$3, %r13b
	jl	.LBB1_373
# %bb.209:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_247
.LBB1_210:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%r15, %r14
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB1_250
.LBB1_211:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	movq	-48(%rbp), %r13         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_212:                              #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	8(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %eax
	jge	.LBB1_274
# %bb.213:                              #   in Loop: Header=BB1_212 Depth=2
	addq	%rax, %r15
	subq	%rax, %r14
	addq	%rax, (%rbx)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	__srefill_r
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_212
# %bb.214:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB1_275
	jmp	.LBB1_363
.LBB1_215:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_216:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	movzbl	(%rax), %ecx
	cmpb	$0, -800(%rbp,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r15
	je	.LBB1_223
# %bb.217:                              # %.preheader16
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	%rbx, %rsi
	leaq	1(%r13), %rcx
	movl	$1, %ebx
	jmp	.LBB1_219
	.p2align	4, 0x90
.LBB1_218:                              #   in Loop: Header=BB1_219 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi), %rax
	movzbl	(%rax), %edx
	addq	$1, %rbx
	leaq	1(%r15), %rcx
	cmpb	$0, -800(%rbp,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_223
.LBB1_219:                              #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$-1, 8(%rsi)
	movq	%rcx, %r15
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movzbl	(%rax), %eax
	movb	%al, -1(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	je	.LBB1_223
# %bb.220:                              #   in Loop: Header=BB1_219 Depth=2
	cmpl	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB1_218
# %bb.221:                              #   in Loop: Header=BB1_219 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	__srefill_r
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_218
# %bb.222:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB1_364
.LBB1_223:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%r13, %rax
	movl	%r15d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	subl	%eax, %r13d
	je	.LBB1_3
# %bb.224:                              #   in Loop: Header=BB1_9 Depth=1
	movb	$0, (%r15)
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
.LBB1_225:                              # %.loopexit19
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	-80(%rbp), %r14d        # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addl	%r13d, %r14d
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB1_7
.LBB1_226:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edx
	xorl	%ebx, %ebx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r13         # 8-byte Reload
	jne	.LBB1_232
# %bb.227:                              # %.preheader22
                                        #   in Loop: Header=BB1_9 Depth=1
	movl	$1, %edx
	jmp	.LBB1_229
	.p2align	4, 0x90
.LBB1_228:                              #   in Loop: Header=BB1_229 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edi
	leaq	1(%rbx), %rdx
	testb	$8, 1(%rax,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_232
.LBB1_229:                              #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rbx
	movl	8(%rsi), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%rsi)
	addq	$1, %rcx
	movq	%rcx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	je	.LBB1_232
# %bb.230:                              #   in Loop: Header=BB1_229 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jg	.LBB1_228
# %bb.231:                              #   in Loop: Header=BB1_229 Depth=2
	movq	%r13, %rdi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_228
.LBB1_232:                              #   in Loop: Header=BB1_9 Depth=1
	addl	-80(%rbp), %ebx         # 4-byte Folded Reload
	movl	%ebx, %r14d
	jmp	.LBB1_7
.LBB1_233:                              #   in Loop: Header=BB1_9 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB1_289
.LBB1_234:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	8(%rsi), %eax
	.p2align	4, 0x90
.LBB1_235:                              #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB1_237
# %bb.236:                              #   in Loop: Header=BB1_235 Depth=2
	movq	%r13, %rdi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_239
.LBB1_237:                              #   in Loop: Header=BB1_235 Depth=2
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_239
# %bb.238:                              #   in Loop: Header=BB1_235 Depth=2
	addl	$1, %r14d
	movl	8(%rsi), %eax
	addl	$-1, %eax
	movl	%eax, 8(%rsi)
	addq	$1, %rcx
	movq	%rcx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_235
.LBB1_239:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%rbx, %r12
	jmp	.LBB1_8
.LBB1_240:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_326
# %bb.241:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_327
.LBB1_242:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%rbx, %r12
.LBB1_243:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rbx
	jg	.LBB1_245
# %bb.244:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_364
.LBB1_245:                              #   in Loop: Header=BB1_9 Depth=1
	movq	(%rbx), %rax
	movb	(%rax), %cl
	cmpb	-1(%r12), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.246:                              #   in Loop: Header=BB1_9 Depth=1
	addl	$-1, 8(%rbx)
	addq	$1, %rax
	movq	%rax, (%rbx)
	movl	-80(%rbp), %r14d        # 4-byte Reload
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB1_8
.LBB1_247:                              #   in Loop: Header=BB1_9 Depth=1
	leal	-4(%r13), %eax
	movzbl	%al, %r14d
	movq	%r14, -136(%rbp)        # 8-byte Spill
	notq	%r14
	addq	%r15, %r14
	addb	$1, %r13b
	leaq	-545(%rbp), %rax
	addq	%rax, %r15
	movq	-48(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_248:                              #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r15), %esi
	movq	%rbx, %rdi
	callq	_ungetc_r
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addb	$-1, %r13b
	addq	$-1, %r15
	cmpb	$4, %r13b
	jg	.LBB1_248
# %bb.249:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	notl	%eax
	addl	%eax, -80(%rbp)         # 4-byte Folded Spill
	movq	%rbx, %r13
	movq	-144(%rbp), %r8         # 8-byte Reload
.LBB1_250:                              #   in Loop: Header=BB1_9 Depth=1
	leaq	(%r14,%rbp), %rbx
	addq	$-544, %rbx             # imm = 0xFDE0
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %r8d              # imm = 0x100
	jne	.LBB1_252
# %bb.251:                              #   in Loop: Header=BB1_9 Depth=1
	movl	-80(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB1_257
.LBB1_252:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r8d             # imm = 0x400
	jne	.LBB1_376
# %bb.253:                              #   in Loop: Header=BB1_9 Depth=1
	movsbl	-1(%rbx), %esi
	movl	%esi, %eax
	orb	$32, %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$101, %al
	jne	.LBB1_255
# %bb.254:                              #   in Loop: Header=BB1_9 Depth=1
	addq	$-1, %rbx
	movl	-80(%rbp), %r14d        # 4-byte Reload
	addl	$-1, %r14d
	jmp	.LBB1_256
.LBB1_255:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%r13, %rdi
	callq	_ungetc_r
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movsbl	-2(%rbx), %esi
	addq	$-2, %rbx
	movl	-80(%rbp), %r14d        # 4-byte Reload
	addl	$-2, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_256:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%r13, %rdi
	callq	_ungetc_r
	movl	$42, __A_VARIABLE(%rip)
	movq	-144(%rbp), %r8         # 8-byte Reload
.LBB1_257:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r8b
	jne	.LBB1_6
# %bb.258:                              #   in Loop: Header=BB1_9 Depth=1
	movb	$0, (%rbx)
	movl	%r8d, %eax
	andl	$1536, %eax             # imm = 0x600
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB1_261
# %bb.259:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rdx         # 8-byte Reload
	subq	-128(%rbp), %rdx        # 8-byte Folded Reload
	je	.LBB1_267
# %bb.260:                              #   in Loop: Header=BB1_9 Depth=1
	negq	%rdx
	movq	%rbx, %rdi
	jmp	.LBB1_263
.LBB1_261:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-168(%rbp), %rbx        # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB1_266
# %bb.262:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-160(%rbp), %r15        # 8-byte Reload
	leaq	1(%r15), %rsi
	movq	%r13, %rdi
	xorl	%edx, %edx
	movl	$10, %ecx
	callq	_strtol_r
	movq	%r15, %rdi
	subq	%rbx, %rax
	movq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_263:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-215(%rbp), %rax
	cmpq	%rax, %rdi
	jb	.LBB1_265
# %bb.264:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-216(%rbp), %rdi
.LBB1_265:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	sprintf
.LBB1_266:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_267:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%r13, %rdi
	leaq	-544(%rbp), %rsi
	xorl	%edx, %edx
	callq	_strtod_r
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB1_271
# %bb.268:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB1_328
# %bb.269:                              #   in Loop: Header=BB1_9 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_337
# %bb.270:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_338
.LBB1_271:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_330
# %bb.272:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_331
.LBB1_273:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB1_67
.LBB1_274:                              #   in Loop: Header=BB1_9 Depth=1
	addq	%r14, %r15
	subl	%r14d, %eax
	movl	%eax, 8(%rbx)
	addq	%r14, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_275:                              #   in Loop: Header=BB1_9 Depth=1
	movl	-80(%rbp), %r14d        # 4-byte Reload
	addl	%r15d, %r14d
	jmp	.LBB1_6
.LBB1_276:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_277:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rsi
	movl	$1, %edx
	movq	%r13, %rdi
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	_fread_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_363
# %bb.278:                              #   in Loop: Header=BB1_9 Depth=1
	movl	-80(%rbp), %r14d        # 4-byte Reload
	addl	%eax, %r14d
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_6
.LBB1_279:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_280:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	jne	.LBB1_286
# %bb.281:                              # %.preheader20
                                        #   in Loop: Header=BB1_9 Depth=1
	addq	$-1, %r14
	leaq	1(%r15), %rdx
	jmp	.LBB1_283
	.p2align	4, 0x90
.LBB1_282:                              #   in Loop: Header=BB1_283 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edi
	addq	$-1, %r14
	leaq	1(%rbx), %rdx
	testb	$8, 1(%rax,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_286
.LBB1_283:                              #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$-1, 8(%rsi)
	movq	%rdx, %rbx
	leaq	1(%rcx), %rax
	movq	%rax, (%rsi)
	movzbl	(%rcx), %eax
	movb	%al, -1(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB1_286
# %bb.284:                              #   in Loop: Header=BB1_283 Depth=2
	cmpl	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB1_282
# %bb.285:                              #   in Loop: Header=BB1_283 Depth=2
	movq	%r13, %rdi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_282
.LBB1_286:                              #   in Loop: Header=BB1_9 Depth=1
	movb	$0, (%rbx)
	subl	%r15d, %ebx
	movl	-80(%rbp), %r14d        # 4-byte Reload
	addl	%ebx, %r14d
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_7
.LBB1_287:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_288:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
.LBB1_289:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB1_291
	.p2align	4, 0x90
.LBB1_290:                              #   in Loop: Header=BB1_291 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB1_304
.LBB1_291:                              #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ebx
	je	.LBB1_363
# %bb.292:                              #   in Loop: Header=BB1_291 Depth=2
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
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	leaq	-544(%rbp), %rdx
	leaq	-152(%rbp), %r8
	callq	_mbrtowc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_363
# %bb.293:                              #   in Loop: Header=BB1_291 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_295
# %bb.294:                              #   in Loop: Header=BB1_291 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-2, %rax
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%r13, %rax
	jne	.LBB1_298
	jmp	.LBB1_301
	.p2align	4, 0x90
.LBB1_295:                              #   in Loop: Header=BB1_291 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	testb	$16, %al
	jne	.LBB1_297
# %bb.296:                              #   in Loop: Header=BB1_291 Depth=2
	movl	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_297:                              #   in Loop: Header=BB1_291 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB1_298:                              #   in Loop: Header=BB1_291 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB1_300
# %bb.299:                              #   in Loop: Header=BB1_291 Depth=2
	addq	$4, %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB1_300:                              #   in Loop: Header=BB1_291 Depth=2
	addl	%ebx, -80(%rbp)         # 4-byte Folded Spill
	addq	$-1, %r14
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB1_301:                              #   in Loop: Header=BB1_291 Depth=2
	cmpl	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB1_290
# %bb.302:                              #   in Loop: Header=BB1_291 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_290
# %bb.303:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB1_363
.LBB1_304:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r13b
	je	.LBB1_4
	jmp	.LBB1_5
.LBB1_305:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_306:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB1_307:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_353
# %bb.308:                              # %.preheader26
                                        #   in Loop: Header=BB1_9 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_309:                              #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ebx
	je	.LBB1_363
# %bb.310:                              #   in Loop: Header=BB1_309 Depth=2
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
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	leaq	-544(%rbp), %rdx
	movq	%r15, %rcx
	leaq	-152(%rbp), %r8
	callq	_mbrtowc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_363
# %bb.311:                              #   in Loop: Header=BB1_309 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_314
# %bb.312:                              #   in Loop: Header=BB1_309 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-2, %rax
	jne	.LBB1_315
# %bb.313:                              #   in Loop: Header=BB1_309 Depth=2
	movq	-64(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_320
	.p2align	4, 0x90
.LBB1_314:                              #   in Loop: Header=BB1_309 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	jmp	.LBB1_316
	.p2align	4, 0x90
.LBB1_315:                              #   in Loop: Header=BB1_309 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
.LBB1_316:                              #   in Loop: Header=BB1_309 Depth=2
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_345
# %bb.317:                              #   in Loop: Header=BB1_309 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	testb	$16, %al
	movq	-64(%rbp), %r15         # 8-byte Reload
	jne	.LBB1_319
# %bb.318:                              #   in Loop: Header=BB1_309 Depth=2
	addq	$4, -72(%rbp)           # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_319:                              #   in Loop: Header=BB1_309 Depth=2
	addl	%ebx, -80(%rbp)         # 4-byte Folded Spill
	addq	$-1, %r14
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB1_320:                              #   in Loop: Header=BB1_309 Depth=2
	cmpl	$0, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB1_322
# %bb.321:                              #   in Loop: Header=BB1_309 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_352
.LBB1_322:                              #   in Loop: Header=BB1_309 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %ecx
	movzbl	1(%rax,%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB1_353
# %bb.323:                              #   in Loop: Header=BB1_309 Depth=2
	andb	$8, %al
	je	.LBB1_309
	jmp	.LBB1_353
.LBB1_324:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	movq	-48(%rbp), %r13         # 8-byte Reload
	ja	.LBB1_335
# %bb.325:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_336
.LBB1_326:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_327:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
.LBB1_360:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB1_361
.LBB1_328:                              #   in Loop: Header=BB1_9 Depth=1
	cmpl	$40, %eax
	ja	.LBB1_340
# %bb.329:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_341
.LBB1_330:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_331:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB1_344
.LBB1_332:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_225
.LBB1_333:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_350
# %bb.334:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_351
.LBB1_335:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_336:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB1_361
.LBB1_337:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_338:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rbx
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_342
# %bb.339:                              #   in Loop: Header=BB1_9 Depth=1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB1_343
.LBB1_340:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_341:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movsd	%xmm0, -184(%rbp)
	fldl	-184(%rbp)
	fstpt	(%rax)
	jmp	.LBB1_344
.LBB1_342:                              #   in Loop: Header=BB1_9 Depth=1
	xorl	%edi, %edi
	callq	nanf
.LBB1_343:                              #   in Loop: Header=BB1_9 Depth=1
	movss	%xmm0, (%rbx)
.LBB1_344:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_6
.LBB1_345:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB1_353
# %bb.346:                              # %.preheader24
                                        #   in Loop: Header=BB1_9 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_347:                              #   Parent Loop BB1_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-545(%rbp,%r15), %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	_ungetc_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r15
	jne	.LBB1_347
	jmp	.LBB1_353
.LBB1_348:                              #   in Loop: Header=BB1_9 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_358
# %bb.349:                              #   in Loop: Header=BB1_9 Depth=1
	movq	%rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB1_359
.LBB1_350:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_351:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB1_361
.LBB1_352:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB1_363
.LBB1_353:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r13b
	jne	.LBB1_5
# %bb.354:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
.LBB1_4:                                #   in Loop: Header=BB1_9 Depth=1
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_5:                                #   in Loop: Header=BB1_9 Depth=1
	movl	-80(%rbp), %r14d        # 4-byte Reload
	movq	-48(%rbp), %r13         # 8-byte Reload
.LBB1_6:                                #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_7
.LBB1_355:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r15,%rbp), %r14
	addq	$-544, %r14             # imm = 0xFDE0
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB1_203
.LBB1_356:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_357:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB1_361:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, -84(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_362:                              #   in Loop: Header=BB1_9 Depth=1
	leaq	-544(%rbp), %rax
	subl	%eax, %r14d
	movq	-72(%rbp), %rax         # 8-byte Reload
	addl	-80(%rbp), %eax         # 4-byte Folded Reload
	addl	%r14d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r14d
.LBB1_7:                                #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_8:                                #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r12), %eax
	movl	%eax, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_9
	jmp	.LBB1_3
.LBB1_358:                              #   in Loop: Header=BB1_9 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_359:                              #   in Loop: Header=BB1_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	jmp	.LBB1_360
.LBB1_2:
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
.LBB1_3:
	movl	-108(%rbp), %edi
	leaq	-108(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-84(%rbp), %eax         # 4-byte Reload
	jmp	.LBB1_370
.LBB1_363:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_364:
	movl	-108(%rbp), %edi
	leaq	-108(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	-84(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB1_368
# %bb.365:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movzwl	16(%rcx), %edx
	andl	$64, %edx
	xorl	%ecx, %ecx
	cmpw	$1, %dx
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_369
.LBB1_367:
	movl	-108(%rbp), %edi
	leaq	-108(%rbp), %rsi
	callq	pthread_setcancelstate
.LBB1_368:
	movl	$-1, %eax
.LBB1_369:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_370:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_371:
	leaq	-544(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jbe	.LBB1_379
.LBB1_372:                              # =>This Inner Loop Header: Depth=1
	movsbl	-1(%r14), %esi
	addq	$-1, %r14
	movq	%rbx, %rdi
	callq	_ungetc_r
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	ja	.LBB1_372
	jmp	.LBB1_379
.LBB1_373:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jle	.LBB1_379
# %bb.374:                              # %.preheader3
	addq	$1, %r15
.LBB1_375:                              # =>This Inner Loop Header: Depth=1
	movsbl	-546(%rbp,%r15), %esi
	movq	%rbx, %rdi
	callq	_ungetc_r
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r15
	cmpq	$1, %r15
	jg	.LBB1_375
	jmp	.LBB1_379
.LBB1_376:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jle	.LBB1_379
# %bb.377:                              # %.preheader1
	addq	$1, %r14
.LBB1_378:                              # =>This Inner Loop Header: Depth=1
	movsbl	-546(%rbp,%r14), %esi
	movq	%r13, %rdi
	callq	_ungetc_r
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r14
	cmpq	$1, %r14
	jg	.LBB1_378
.LBB1_379:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_380:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_3
.Lfunc_end1:
	.size	__svfscanf_r, .Lfunc_end1-__svfscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_367
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_243
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_17
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_13
	.quad	.LBB1_13
	.quad	.LBB1_13
	.quad	.LBB1_13
	.quad	.LBB1_13
	.quad	.LBB1_13
	.quad	.LBB1_13
	.quad	.LBB1_13
	.quad	.LBB1_13
	.quad	.LBB1_13
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_49
	.quad	.LBB1_51
	.quad	.LBB1_62
	.quad	.LBB1_64
	.quad	.LBB1_49
	.quad	.LBB1_49
	.quad	.LBB1_49
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_18
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_53
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_55
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_50
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_57
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_49
	.quad	.LBB1_51
	.quad	.LBB1_63
	.quad	.LBB1_65
	.quad	.LBB1_49
	.quad	.LBB1_49
	.quad	.LBB1_49
	.quad	.LBB1_19
	.quad	.LBB1_58
	.quad	.LBB1_16
	.quad	.LBB1_51
	.quad	.LBB1_21
	.quad	.LBB1_51
	.quad	.LBB1_27
	.quad	.LBB1_54
	.quad	.LBB1_59
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_56
	.quad	.LBB1_16
	.quad	.LBB1_61
	.quad	.LBB1_51
	.quad	.LBB1_51
	.quad	.LBB1_50
	.quad	.LBB1_51
	.quad	.LBB1_16
.LJTI1_1:
	.quad	.LBB1_79
	.quad	.LBB1_86
	.quad	.LBB1_91
	.quad	.LBB1_97
	.quad	.LBB1_99
.LJTI1_2:
	.quad	.LBB1_167
	.quad	.LBB1_187
	.quad	.LBB1_167
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_190
	.quad	.LBB1_159
	.quad	.LBB1_159
	.quad	.LBB1_159
	.quad	.LBB1_159
	.quad	.LBB1_159
	.quad	.LBB1_159
	.quad	.LBB1_159
	.quad	.LBB1_159
	.quad	.LBB1_159
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_169
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_170
	.quad	.LBB1_176
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_177
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_181
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_185
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_186
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_169
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_170
	.quad	.LBB1_176
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_177
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_181
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_185
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_187
	.quad	.LBB1_186
.LJTI1_3:
	.quad	.LBB1_123
	.quad	.LBB1_142
	.quad	.LBB1_123
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_133
	.quad	.LBB1_122
	.quad	.LBB1_122
	.quad	.LBB1_122
	.quad	.LBB1_122
	.quad	.LBB1_122
	.quad	.LBB1_122
	.quad	.LBB1_122
	.quad	.LBB1_125
	.quad	.LBB1_125
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_127
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_120
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_142
	.quad	.LBB1_127
                                        # -- End function
	.text
	.globl	__svfscanf              # -- Begin function __svfscanf
	.p2align	4, 0x90
	.type	__svfscanf,@function
__svfscanf:                             # @__svfscanf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	__svfscanf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	__svfscanf, .Lfunc_end2-__svfscanf
                                        # -- End function
	.globl	_vfscanf_r              # -- Begin function _vfscanf_r
	.p2align	4, 0x90
	.type	_vfscanf_r,@function
_vfscanf_r:                             # @_vfscanf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB3_3:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	__svfscanf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_vfscanf_r, .Lfunc_end3-_vfscanf_r
                                        # -- End function
	.type	__svfscanf_r.basefix,@object # @__svfscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	4
__svfscanf_r.basefix:
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
	.size	__svfscanf_r.basefix, 34

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
