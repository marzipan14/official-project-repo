	.text
	.file	"vfscanf.c"
	.globl	vfiscanf                # -- Begin function vfiscanf
	.p2align	4, 0x90
	.type	vfiscanf,@function
vfiscanf:                               # @vfiscanf
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
	callq	__svfiscanf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vfiscanf, .Lfunc_end0-vfiscanf
                                        # -- End function
	.globl	__svfiscanf_r           # -- Begin function __svfiscanf_r
	.p2align	4, 0x90
	.type	__svfiscanf_r,@function
__svfiscanf_r:                          # @__svfiscanf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$392, %rsp              # imm = 0x188
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r12
	leaq	-100(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r13), %eax
	movl	%eax, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_2
# %bb.1:
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	leaq	8(%rbx), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movq	%r15, -64(%rbp)         # 8-byte Spill
	movq	%r12, -72(%rbp)         # 8-byte Spill
.LBB1_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
                                        #       Child Loop BB1_16 Depth 3
                                        #     Child Loop BB1_180 Depth 2
                                        #     Child Loop BB1_76 Depth 2
                                        #     Child Loop BB1_117 Depth 2
                                        #     Child Loop BB1_225 Depth 2
                                        #     Child Loop BB1_250 Depth 2
                                        #     Child Loop BB1_163 Depth 2
                                        #     Child Loop BB1_199 Depth 2
                                        #     Child Loop BB1_106 Depth 2
                                        #     Child Loop BB1_153 Depth 2
                                        #     Child Loop BB1_207 Depth 2
                                        #     Child Loop BB1_146 Depth 2
	movslq	%r14d, %r12
	movl	%r14d, -48(%rbp)        # 4-byte Spill
.LBB1_12:                               #   Parent Loop BB1_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_16 Depth 3
	movq	%r13, %r15
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movslq	-104(%rbp), %rcx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_179
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %ecx
	jne	.LBB1_185
# %bb.14:                               # %.preheader
                                        #   in Loop: Header=BB1_12 Depth=2
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
	jmp	.LBB1_16
	.p2align	4, 0x90
.LBB1_15:                               #   in Loop: Header=BB1_16 Depth=3
	leaq	(%r14,%r14,4), %rax
	leaq	(%rbx,%rax,2), %r14
	addq	$-48, %r14
	movq	%r13, %r15
.LBB1_16:                               #   Parent Loop BB1_11 Depth=1
                                        #     Parent Loop BB1_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%r15), %r13
	movzbl	(%r15), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$122, %rbx
	ja	.LBB1_52
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=3
	jmpq	*.LJTI1_0(,%rbx,8)
.LBB1_18:                               #   in Loop: Header=BB1_16 Depth=3
	orl	$1, %ecx
	movq	%r13, %r15
	jmp	.LBB1_16
.LBB1_19:                               #   in Loop: Header=BB1_16 Depth=3
	orl	$16, %ecx
	movq	%r13, %r15
	jmp	.LBB1_16
.LBB1_20:                               #   in Loop: Header=BB1_16 Depth=3
	orl	$2, %ecx
	movq	%r13, %r15
	jmp	.LBB1_16
.LBB1_21:                               #   in Loop: Header=BB1_16 Depth=3
	xorl	%eax, %eax
	cmpb	$104, 1(%r15)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	leal	4(,%rax,4), %eax
	je	.LBB1_25
# %bb.22:                               #   in Loop: Header=BB1_16 Depth=3
	movq	%r13, %r15
	jmp	.LBB1_28
.LBB1_23:                               #   in Loop: Header=BB1_16 Depth=3
	xorl	%eax, %eax
	cmpb	$108, 1(%r15)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_26
# %bb.24:                               #   in Loop: Header=BB1_16 Depth=3
	movq	%r13, %r15
	jmp	.LBB1_27
.LBB1_25:                               #   in Loop: Header=BB1_16 Depth=3
	addq	$2, %r15
	jmp	.LBB1_28
.LBB1_26:                               #   in Loop: Header=BB1_16 Depth=3
	addq	$2, %r15
.LBB1_27:                               #   in Loop: Header=BB1_16 Depth=3
	addl	$1, %eax
.LBB1_28:                               #   in Loop: Header=BB1_16 Depth=3
	orl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_16
.LBB1_29:                               #   in Loop: Header=BB1_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %cl
	movl	-48(%rbp), %r14d        # 4-byte Reload
	jne	.LBB1_50
# %bb.30:                               #   in Loop: Header=BB1_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %cl
	jne	.LBB1_35
# %bb.31:                               #   in Loop: Header=BB1_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	movq	-96(%rbp), %rdx         # 8-byte Reload
	jne	.LBB1_37
# %bb.32:                               #   in Loop: Header=BB1_12 Depth=2
	movslq	(%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB1_41
# %bb.33:                               #   in Loop: Header=BB1_12 Depth=2
	cmpl	$40, %eax
	ja	.LBB1_45
# %bb.34:                               #   in Loop: Header=BB1_12 Depth=2
	movq	%rax, %rcx
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_46
.LBB1_35:                               #   in Loop: Header=BB1_12 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_39
# %bb.36:                               #   in Loop: Header=BB1_12 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_40
.LBB1_37:                               #   in Loop: Header=BB1_12 Depth=2
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_43
# %bb.38:                               #   in Loop: Header=BB1_12 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_44
.LBB1_39:                               #   in Loop: Header=BB1_12 Depth=2
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_40:                               #   in Loop: Header=BB1_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movb	%r14b, (%rax)
	jmp	.LBB1_49
.LBB1_41:                               #   in Loop: Header=BB1_12 Depth=2
	cmpl	$40, %eax
	ja	.LBB1_47
# %bb.42:                               #   in Loop: Header=BB1_12 Depth=2
	movq	%rax, %rcx
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_48
.LBB1_43:                               #   in Loop: Header=BB1_12 Depth=2
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_44:                               #   in Loop: Header=BB1_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movw	%r14w, (%rax)
	jmp	.LBB1_49
.LBB1_45:                               #   in Loop: Header=BB1_12 Depth=2
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_46:                               #   in Loop: Header=BB1_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movl	%r14d, (%rax)
	jmp	.LBB1_49
.LBB1_47:                               #   in Loop: Header=BB1_12 Depth=2
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_48:                               #   in Loop: Header=BB1_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movq	%r12, (%rax)
.LBB1_49:                               #   in Loop: Header=BB1_12 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_50:                               #   in Loop: Header=BB1_12 Depth=2
	movzbl	(%r13), %eax
	movl	%eax, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_12
	jmp	.LBB1_3
.LBB1_51:                               #   in Loop: Header=BB1_11 Depth=1
	orl	$512, %ecx              # imm = 0x200
	jmp	.LBB1_66
.LBB1_52:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	__locale_ctype_ptr
	movb	1(%rax,%rbx), %al
	andb	$3, %al
	movl	$42, __A_VARIABLE(%rip)
	movb	$3, %r12b
	movl	$_strtol_r, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	$10, -44(%rbp)          # 4-byte Folded Spill
	cmpb	$1, %al
	jne	.LBB1_70
# %bb.53:                               #   in Loop: Header=BB1_11 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	orl	$1, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_70
.LBB1_54:                               #   in Loop: Header=BB1_11 Depth=1
	orl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_55:                               #   in Loop: Header=BB1_11 Depth=1
	orl	$64, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB1_70
.LBB1_56:                               #   in Loop: Header=BB1_11 Depth=1
	orl	$1, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_61
.LBB1_57:                               #   in Loop: Header=BB1_11 Depth=1
	orl	$1, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_64
.LBB1_58:                               #   in Loop: Header=BB1_11 Depth=1
	orl	$1, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %r12b
	jmp	.LBB1_70
.LBB1_59:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, %rbx
	leaq	-432(%rbp), %rdi
	movq	%r13, %rsi
	callq	__sccl
	movq	%rax, %r13
	orl	$64, %ebx
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movb	$1, %r12b
	jmp	.LBB1_70
.LBB1_60:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB1_61:                               #   in Loop: Header=BB1_11 Depth=1
	movb	$3, %r12b
	movl	$_strtol_r, %eax
	jmp	.LBB1_69
.LBB1_62:                               # %.loopexit1
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movb	$3, %r12b
	movl	$_strtol_r, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_70
.LBB1_63:                               # %.loopexit2
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB1_64:                               #   in Loop: Header=BB1_11 Depth=1
	movb	$3, %r12b
	movl	$_strtoul_r, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$8, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_70
.LBB1_65:                               #   in Loop: Header=BB1_11 Depth=1
	orl	$544, %ecx              # imm = 0x220
.LBB1_66:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movb	$3, %r12b
	movl	$_strtoul_r, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$16, -44(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_70
.LBB1_67:                               # %.loopexit3
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movb	$2, %r12b
	jmp	.LBB1_70
.LBB1_68:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movb	$3, %r12b
	movl	$_strtoul_r, %eax
.LBB1_69:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$10, -44(%rbp)          # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB1_70:                               #   in Loop: Header=BB1_11 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB1_72
# %bb.71:                               #   in Loop: Header=BB1_11 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_268
.LBB1_72:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_79
# %bb.73:                               #   in Loop: Header=BB1_11 Depth=1
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_76
	.p2align	4, 0x90
.LBB1_74:                               #   in Loop: Header=BB1_76 Depth=2
	addq	$1, %rcx
	movq	%rcx, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_75:                               #   in Loop: Header=BB1_76 Depth=2
	addl	$1, -48(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
.LBB1_76:                               #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_80
# %bb.77:                               #   in Loop: Header=BB1_76 Depth=2
	movl	8(%r15), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jge	.LBB1_74
# %bb.78:                               #   in Loop: Header=BB1_76 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_75
	jmp	.LBB1_268
	.p2align	4, 0x90
.LBB1_79:                               #   in Loop: Header=BB1_11 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
.LBB1_80:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r12b, %eax
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_81:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	jne	.LBB1_83
# %bb.82:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
.LBB1_83:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB1_100
# %bb.84:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB1_145
# %bb.85:                               #   in Loop: Header=BB1_11 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_192
# %bb.86:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_193
.LBB1_87:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	jne	.LBB1_89
# %bb.88:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r14
.LBB1_89:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB1_103
# %bb.90:                               #   in Loop: Header=BB1_11 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_149
# %bb.91:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_150
.LBB1_92:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	jne	.LBB1_94
# %bb.93:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r14
.LBB1_94:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB1_110
# %bb.95:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB1_160
# %bb.96:                               #   in Loop: Header=BB1_11 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_195
# %bb.97:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_196
.LBB1_98:                               #   in Loop: Header=BB1_11 Depth=1
	leaq	-1(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$39, %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jb	.LBB1_113
# %bb.99:                               #   in Loop: Header=BB1_11 Depth=1
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%r14d, %eax
	addl	$-39, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$39, %r14d
	jmp	.LBB1_114
.LBB1_100:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$8, %edx
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_167
# %bb.101:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_203
# %bb.102:                              #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_204
.LBB1_103:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rax
	movzbl	(%rax), %ecx
	cmpb	$0, -432(%rbp,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_276
# %bb.104:                              # %.preheader12
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	$1, %ecx
	jmp	.LBB1_106
	.p2align	4, 0x90
.LBB1_105:                              #   in Loop: Header=BB1_106 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rax), %edx
	leaq	1(%rbx), %rcx
	cmpb	$0, -432(%rbp,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_159
.LBB1_106:                              #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rbx
	movl	8(%r15), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 8(%r15)
	addq	$1, %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	je	.LBB1_159
# %bb.107:                              #   in Loop: Header=BB1_106 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jg	.LBB1_105
# %bb.108:                              #   in Loop: Header=BB1_106 Depth=2
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_243
# %bb.109:                              #   in Loop: Header=BB1_106 Depth=2
	movq	(%r15), %rax
	jmp	.LBB1_105
.LBB1_110:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$8, %edx
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	leaq	-104(%rbp), %rbx
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_223
# %bb.111:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB1_221
# %bb.112:                              #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_222
.LBB1_113:                              #   in Loop: Header=BB1_11 Depth=1
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$0, -116(%rbp)          # 4-byte Folded Spill
.LBB1_114:                              #   in Loop: Header=BB1_11 Depth=1
	orl	$3456, %edi             # imm = 0xD80
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB1_117
	.p2align	4, 0x90
.LBB1_115:                              #   in Loop: Header=BB1_117 Depth=2
	addq	$1, %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_116:                              #   in Loop: Header=BB1_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r14
	je	.LBB1_141
.LBB1_117:                              #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rax
	movzbl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	leal	-43(%rcx), %edx
	cmpb	$77, %dl
	ja	.LBB1_141
# %bb.118:                              #   in Loop: Header=BB1_117 Depth=2
	movzbl	%dl, %edx
	jmpq	*.LJTI1_2(,%rdx,8)
.LBB1_119:                              #   in Loop: Header=BB1_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, -44(%rbp)          # 4-byte Folded Reload
	jl	.LBB1_141
.LBB1_125:                              #   in Loop: Header=BB1_117 Depth=2
	andl	$-2945, %edi            # imm = 0xF47F
	jmp	.LBB1_128
	.p2align	4, 0x90
.LBB1_121:                              #   in Loop: Header=BB1_117 Depth=2
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__svfiscanf_r.basefix(%rdx,%rdx), %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	andl	$-2945, %edi            # imm = 0xF47F
	jmp	.LBB1_128
.LBB1_122:                              #   in Loop: Header=BB1_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	%dil, %dil
	jns	.LBB1_141
# %bb.123:                              #   in Loop: Header=BB1_117 Depth=2
	andl	$-129, %edi
	jmp	.LBB1_128
.LBB1_124:                              #   in Loop: Header=BB1_117 Depth=2
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__svfiscanf_r.basefix(%rdx,%rdx), %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	addq	$-1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rdx
	jae	.LBB1_125
	jmp	.LBB1_141
.LBB1_126:                              #   in Loop: Header=BB1_117 Depth=2
	movl	%edi, %edx
	andl	$1536, %edx             # imm = 0x600
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$512, %edx              # imm = 0x200
	jne	.LBB1_141
# %bb.127:                              #   in Loop: Header=BB1_117 Depth=2
	andl	$-1793, %edi            # imm = 0xF8FF
	orl	$1280, %edi             # imm = 0x500
	movl	$16, -44(%rbp)          # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB1_128:                              #   in Loop: Header=BB1_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_129:                              #   in Loop: Header=BB1_117 Depth=2
	movb	%cl, -176(%rbp,%r12)
	addq	$1, %r12
.LBB1_130:                              #   in Loop: Header=BB1_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r15), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jge	.LBB1_115
# %bb.131:                              #   in Loop: Header=BB1_117 Depth=2
	movq	%rdi, %rbx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__srefill_r
	movq	%rbx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_116
	jmp	.LBB1_141
.LBB1_132:                              #   in Loop: Header=BB1_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$2048, %edi             # imm = 0x800
	je	.LBB1_129
# %bb.133:                              #   in Loop: Header=BB1_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	jne	.LBB1_135
# %bb.134:                              #   in Loop: Header=BB1_117 Depth=2
	orl	$512, %edi              # imm = 0x200
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, -44(%rbp)           # 4-byte Folded Spill
.LBB1_135:                              #   in Loop: Header=BB1_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %edi             # imm = 0x400
	jne	.LBB1_138
# %bb.136:                              #   in Loop: Header=BB1_117 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-116(%rbp), %ecx        # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB1_139
# %bb.137:                              #   in Loop: Header=BB1_117 Depth=2
	addl	$-1, %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_140
.LBB1_138:                              #   in Loop: Header=BB1_117 Depth=2
	andl	$-1409, %edi            # imm = 0xFA7F
	jmp	.LBB1_128
.LBB1_139:                              #   in Loop: Header=BB1_117 Depth=2
	movl	$0, -116(%rbp)          # 4-byte Folded Spill
.LBB1_140:                              #   in Loop: Header=BB1_117 Depth=2
	andl	$-897, %edi             # imm = 0xFC7F
	movq	-128(%rbp), %rcx        # 8-byte Reload
	addl	$1, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB1_130
.LBB1_141:                              #   in Loop: Header=BB1_11 Depth=1
	leaq	(%r12,%rbp), %r14
	addq	$-176, %r14
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %edi              # imm = 0x100
	jne	.LBB1_143
# %bb.142:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_170
.LBB1_143:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jle	.LBB1_168
# %bb.144:                              #   in Loop: Header=BB1_11 Depth=1
	movsbl	-1(%r14), %esi
	addq	$-1, %r14
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	%rdi, %rbx
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	_ungetc_r
	movq	%rbx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_169
.LBB1_145:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_146:                              #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	8(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %eax
	jge	.LBB1_190
# %bb.147:                              #   in Loop: Header=BB1_146 Depth=2
	addq	%rax, %rbx
	subq	%rax, %r14
	addq	%rax, (%r15)
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_146
# %bb.148:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB1_191
	jmp	.LBB1_267
.LBB1_149:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_150:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rax
	movzbl	(%rax), %ecx
	cmpb	$0, -432(%rbp,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rcx
	movq	%r12, -56(%rbp)         # 8-byte Spill
	je	.LBB1_157
# %bb.151:                              # %.preheader10
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movl	$1, %ebx
	jmp	.LBB1_153
	.p2align	4, 0x90
.LBB1_152:                              #   in Loop: Header=BB1_153 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rax
	movzbl	(%rax), %edx
	addq	$1, %rbx
	leaq	1(%r12), %rcx
	cmpb	$0, -432(%rbp,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_157
.LBB1_153:                              #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$-1, 8(%r15)
	movq	%rcx, %r12
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movzbl	(%rax), %eax
	movb	%al, -1(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	je	.LBB1_157
# %bb.154:                              #   in Loop: Header=BB1_153 Depth=2
	cmpl	$0, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB1_152
# %bb.155:                              #   in Loop: Header=BB1_153 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_152
# %bb.156:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB1_268
.LBB1_157:                              #   in Loop: Header=BB1_11 Depth=1
	movl	%r12d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	subl	-56(%rbp), %ebx         # 4-byte Folded Reload
	je	.LBB1_3
# %bb.158:                              #   in Loop: Header=BB1_11 Depth=1
	movb	$0, (%r12)
	addl	$1, -76(%rbp)           # 4-byte Folded Spill
.LBB1_159:                              # %.loopexit13
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	-48(%rbp), %r14d        # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addl	%ebx, %r14d
	jmp	.LBB1_9
.LBB1_160:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	xorl	%ebx, %ebx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_166
# %bb.161:                              # %.preheader16
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	$1, %edx
	jmp	.LBB1_163
	.p2align	4, 0x90
.LBB1_162:                              #   in Loop: Header=BB1_163 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %esi
	leaq	1(%rbx), %rdx
	testb	$8, 1(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_166
.LBB1_163:                              #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rbx
	movl	8(%r15), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%r15)
	addq	$1, %rcx
	movq	%rcx, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	je	.LBB1_166
# %bb.164:                              #   in Loop: Header=BB1_163 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jg	.LBB1_162
# %bb.165:                              #   in Loop: Header=BB1_163 Depth=2
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_162
.LBB1_166:                              #   in Loop: Header=BB1_11 Depth=1
	addl	-48(%rbp), %ebx         # 4-byte Folded Reload
	movl	%ebx, %r14d
	jmp	.LBB1_9
.LBB1_167:                              #   in Loop: Header=BB1_11 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB1_205
.LBB1_168:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
.LBB1_169:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-176(%rbp), %rax
	cmpq	%rax, %r14
	je	.LBB1_275
.LBB1_170:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %dil
	jne	.LBB1_8
# %bb.171:                              #   in Loop: Header=BB1_11 Depth=1
	movb	$0, (%r14)
	movq	%rdi, %rbx
	movq	%r12, %rdi
	leaq	-176(%rbp), %rsi
	xorl	%edx, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	callq	*-112(%rbp)             # 8-byte Folded Reload
	movq	%rbx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %dl
	jne	.LBB1_177
# %bb.172:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %dl
	jne	.LBB1_241
# %bb.173:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	jne	.LBB1_244
# %bb.174:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movslq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	jne	.LBB1_252
# %bb.175:                              #   in Loop: Header=BB1_11 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_263
# %bb.176:                              #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB1_264
.LBB1_177:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_4
# %bb.178:                              #   in Loop: Header=BB1_11 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_5
.LBB1_179:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %eax
	movq	-72(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_180:                              #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB1_182
# %bb.181:                              #   in Loop: Header=BB1_180 Depth=2
	movq	%r12, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_184
.LBB1_182:                              #   in Loop: Header=BB1_180 Depth=2
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_184
# %bb.183:                              #   in Loop: Header=BB1_180 Depth=2
	addl	$1, %r14d
	movl	8(%rsi), %eax
	addl	$-1, %eax
	movl	%eax, 8(%rsi)
	addq	$1, %rcx
	movq	%rcx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_180
.LBB1_184:                              #   in Loop: Header=BB1_11 Depth=1
	movq	%r15, %r13
	jmp	.LBB1_10
.LBB1_185:                              #   in Loop: Header=BB1_11 Depth=1
	movq	%r15, %r13
.LBB1_186:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r15         # 8-byte Reload
	cmpl	$0, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB1_188
# %bb.187:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_268
.LBB1_188:                              #   in Loop: Header=BB1_11 Depth=1
	movq	(%r15), %rax
	movb	(%rax), %cl
	cmpb	-1(%r13), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.189:                              #   in Loop: Header=BB1_11 Depth=1
	addl	$-1, 8(%r15)
	addq	$1, %rax
	movq	%rax, (%r15)
	movl	-48(%rbp), %r14d        # 4-byte Reload
	addl	$1, %r14d
	jmp	.LBB1_9
.LBB1_190:                              #   in Loop: Header=BB1_11 Depth=1
	addq	%r14, %rbx
	subl	%r14d, %eax
	movl	%eax, 8(%r15)
	addq	%r14, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_191:                              #   in Loop: Header=BB1_11 Depth=1
	movl	-48(%rbp), %r14d        # 4-byte Reload
	addl	%ebx, %r14d
	jmp	.LBB1_262
.LBB1_192:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_193:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rsi
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	_fread_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_267
# %bb.194:                              #   in Loop: Header=BB1_11 Depth=1
	movl	-48(%rbp), %r14d        # 4-byte Reload
	addl	%eax, %r14d
	addl	$1, -76(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_262
.LBB1_195:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_196:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	(%r12), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	jne	.LBB1_202
# %bb.197:                              # %.preheader14
                                        #   in Loop: Header=BB1_11 Depth=1
	addq	$-1, %r14
	leaq	1(%r15), %rdx
	jmp	.LBB1_199
	.p2align	4, 0x90
.LBB1_198:                              #   in Loop: Header=BB1_199 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	(%r12), %rcx
	movzbl	(%rcx), %esi
	addq	$-1, %r14
	leaq	1(%rbx), %rdx
	testb	$8, 1(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_202
.LBB1_199:                              #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$-1, 8(%r12)
	movq	%rdx, %rbx
	leaq	1(%rcx), %rax
	movq	%rax, (%r12)
	movzbl	(%rcx), %eax
	movb	%al, -1(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB1_202
# %bb.200:                              #   in Loop: Header=BB1_199 Depth=2
	cmpl	$0, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB1_198
# %bb.201:                              #   in Loop: Header=BB1_199 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_198
.LBB1_202:                              #   in Loop: Header=BB1_11 Depth=1
	movb	$0, (%rbx)
	subl	%r15d, %ebx
	movl	-48(%rbp), %r14d        # 4-byte Reload
	addl	%ebx, %r14d
	addl	$1, -76(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_9
.LBB1_203:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_204:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r12
.LBB1_205:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB1_207
	.p2align	4, 0x90
.LBB1_206:                              #   in Loop: Header=BB1_207 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB1_220
.LBB1_207:                              #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ebx
	je	.LBB1_267
# %bb.208:                              #   in Loop: Header=BB1_207 Depth=2
	movq	(%r15), %rax
	movzbl	(%rax), %ecx
	movslq	%ebx, %rdx
	movb	%cl, -176(%rbp,%rdx)
	addl	$-1, 8(%r15)
	addl	$1, %ebx
	addq	$1, %rax
	movq	%rax, (%r15)
	movslq	%ebx, %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	leaq	-176(%rbp), %rdx
	leaq	-136(%rbp), %r8
	callq	_mbrtowc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_267
# %bb.209:                              #   in Loop: Header=BB1_207 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_211
# %bb.210:                              #   in Loop: Header=BB1_207 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-2, %rax
	movq	-56(%rbp), %rax         # 8-byte Reload
	jne	.LBB1_214
	jmp	.LBB1_217
	.p2align	4, 0x90
.LBB1_211:                              #   in Loop: Header=BB1_207 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	testb	$16, %al
	jne	.LBB1_213
# %bb.212:                              #   in Loop: Header=BB1_207 Depth=2
	movl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_213:                              #   in Loop: Header=BB1_207 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB1_214:                              #   in Loop: Header=BB1_207 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB1_216
# %bb.215:                              #   in Loop: Header=BB1_207 Depth=2
	addq	$4, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB1_216:                              #   in Loop: Header=BB1_207 Depth=2
	addl	%ebx, -48(%rbp)         # 4-byte Folded Spill
	addq	$-1, %r14
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB1_217:                              #   in Loop: Header=BB1_207 Depth=2
	cmpl	$0, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB1_206
# %bb.218:                              #   in Loop: Header=BB1_207 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_206
# %bb.219:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB1_267
.LBB1_220:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	je	.LBB1_260
	jmp	.LBB1_261
.LBB1_221:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_222:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rbx
.LBB1_223:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %ecx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_258
# %bb.224:                              # %.preheader20
                                        #   in Loop: Header=BB1_11 Depth=1
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB1_225:                              #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r15d
	je	.LBB1_267
# %bb.226:                              #   in Loop: Header=BB1_225 Depth=2
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	movzbl	(%rax), %ecx
	movslq	%r15d, %rdx
	movb	%cl, -176(%rbp,%rdx)
	addl	$-1, 8(%rsi)
	addl	$1, %r15d
	addq	$1, %rax
	movq	%rax, (%rsi)
	movslq	%r15d, %r12
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	leaq	-176(%rbp), %rdx
	movq	%r12, %rcx
	leaq	-136(%rbp), %r8
	callq	_mbrtowc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB1_267
# %bb.227:                              #   in Loop: Header=BB1_225 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_230
# %bb.228:                              #   in Loop: Header=BB1_225 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-2, %rax
	jne	.LBB1_231
# %bb.229:                              #   in Loop: Header=BB1_225 Depth=2
	movq	%rbx, %r12
	movq	-72(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB1_237
	.p2align	4, 0x90
.LBB1_230:                              #   in Loop: Header=BB1_225 Depth=2
	movl	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	jmp	.LBB1_232
	.p2align	4, 0x90
.LBB1_231:                              #   in Loop: Header=BB1_225 Depth=2
	movl	(%rbx), %edi
.LBB1_232:                              #   in Loop: Header=BB1_225 Depth=2
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_248
# %bb.233:                              #   in Loop: Header=BB1_225 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_235
# %bb.234:                              #   in Loop: Header=BB1_225 Depth=2
	addq	$4, %rbx
	movq	%rbx, %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_236
	.p2align	4, 0x90
.LBB1_235:                              #   in Loop: Header=BB1_225 Depth=2
	movq	%rbx, %r12
.LBB1_236:                              #   in Loop: Header=BB1_225 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addl	%r15d, -48(%rbp)        # 4-byte Folded Spill
	addq	$-1, %r14
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
.LBB1_237:                              #   in Loop: Header=BB1_225 Depth=2
	movq	-64(%rbp), %rbx         # 8-byte Reload
	cmpl	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB1_239
# %bb.238:                              #   in Loop: Header=BB1_225 Depth=2
	movq	%rbx, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_257
.LBB1_239:                              #   in Loop: Header=BB1_225 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	(%rbx), %rcx
	movzbl	(%rcx), %ecx
	movzbl	1(%rax,%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB1_256
# %bb.240:                              #   in Loop: Header=BB1_225 Depth=2
	andb	$8, %al
	movq	%r12, %rbx
	je	.LBB1_225
	jmp	.LBB1_258
.LBB1_241:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_246
# %bb.242:                              #   in Loop: Header=BB1_11 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_247
.LBB1_4:                                #   in Loop: Header=BB1_11 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_5:                                #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
.LBB1_6:                                #   in Loop: Header=BB1_11 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB1_7
.LBB1_243:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_159
.LBB1_244:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB1_254
# %bb.245:                              #   in Loop: Header=BB1_11 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_255
.LBB1_246:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_247:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB1_7
.LBB1_248:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB1_258
# %bb.249:                              # %.preheader18
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	%rbx, %r15
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_250:                              #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-177(%rbp,%r12), %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	_ungetc_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r12
	jne	.LBB1_250
# %bb.251:                              #   in Loop: Header=BB1_11 Depth=1
	movq	%r15, %rbx
	jmp	.LBB1_258
.LBB1_252:                              #   in Loop: Header=BB1_11 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_265
# %bb.253:                              #   in Loop: Header=BB1_11 Depth=1
	movq	%rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB1_266
.LBB1_254:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_255:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB1_7
.LBB1_256:                              #   in Loop: Header=BB1_11 Depth=1
	movq	%r12, %rbx
	jmp	.LBB1_258
.LBB1_257:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	movq	%r12, %rbx
	jne	.LBB1_267
.LBB1_258:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, -56(%rbp)          # 1-byte Folded Reload
	jne	.LBB1_261
# %bb.259:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$0, (%rbx)
.LBB1_260:                              #   in Loop: Header=BB1_11 Depth=1
	addl	$1, -76(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_261:                              #   in Loop: Header=BB1_11 Depth=1
	movl	-48(%rbp), %r14d        # 4-byte Reload
.LBB1_262:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_9
.LBB1_263:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_264:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB1_7:                                #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, -76(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB1_8:                                #   in Loop: Header=BB1_11 Depth=1
	leaq	-176(%rbp), %rax
	subl	%eax, %r14d
	movq	-128(%rbp), %rax        # 8-byte Reload
	addl	-48(%rbp), %eax         # 4-byte Folded Reload
	addl	%r14d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r14d
.LBB1_9:                                #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_10:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r13), %eax
	movl	%eax, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_11
	jmp	.LBB1_3
.LBB1_265:                              #   in Loop: Header=BB1_11 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_266:                              #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	jmp	.LBB1_6
.LBB1_2:
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
.LBB1_3:
	movl	-100(%rbp), %edi
	leaq	-100(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-76(%rbp), %eax         # 4-byte Reload
	jmp	.LBB1_274
.LBB1_267:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_268:
	movl	-100(%rbp), %edi
	leaq	-100(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	-76(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB1_272
# %bb.269:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movzwl	16(%rcx), %edx
	andl	$64, %edx
	xorl	%ecx, %ecx
	cmpw	$1, %dx
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_273
.LBB1_271:
	movl	-100(%rbp), %edi
	leaq	-100(%rbp), %rsi
	callq	pthread_setcancelstate
.LBB1_272:
	movl	$-1, %eax
.LBB1_273:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_274:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_275:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_276:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_3
.Lfunc_end1:
	.size	__svfiscanf_r, .Lfunc_end1-__svfiscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_271
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_186
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_19
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_15
	.quad	.LBB1_15
	.quad	.LBB1_15
	.quad	.LBB1_15
	.quad	.LBB1_15
	.quad	.LBB1_15
	.quad	.LBB1_15
	.quad	.LBB1_15
	.quad	.LBB1_15
	.quad	.LBB1_15
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_54
	.quad	.LBB1_56
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_20
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_57
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_58
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_51
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_59
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_55
	.quad	.LBB1_60
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_21
	.quad	.LBB1_62
	.quad	.LBB1_18
	.quad	.LBB1_52
	.quad	.LBB1_23
	.quad	.LBB1_52
	.quad	.LBB1_29
	.quad	.LBB1_63
	.quad	.LBB1_65
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_67
	.quad	.LBB1_18
	.quad	.LBB1_68
	.quad	.LBB1_52
	.quad	.LBB1_52
	.quad	.LBB1_51
	.quad	.LBB1_52
	.quad	.LBB1_18
.LJTI1_1:
	.quad	.LBB1_81
	.quad	.LBB1_87
	.quad	.LBB1_92
	.quad	.LBB1_98
.LJTI1_2:
	.quad	.LBB1_122
	.quad	.LBB1_141
	.quad	.LBB1_122
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_132
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_121
	.quad	.LBB1_124
	.quad	.LBB1_124
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_126
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_141
	.quad	.LBB1_126
                                        # -- End function
	.text
	.globl	__svfiscanf             # -- Begin function __svfiscanf
	.p2align	4, 0x90
	.type	__svfiscanf,@function
__svfiscanf:                            # @__svfiscanf
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
	callq	__svfiscanf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	__svfiscanf, .Lfunc_end2-__svfiscanf
                                        # -- End function
	.globl	_vfiscanf_r             # -- Begin function _vfiscanf_r
	.p2align	4, 0x90
	.type	_vfiscanf_r,@function
_vfiscanf_r:                            # @_vfiscanf_r
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
	callq	__svfiscanf_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_vfiscanf_r, .Lfunc_end3-_vfiscanf_r
                                        # -- End function
	.type	__svfiscanf_r.basefix,@object # @__svfiscanf_r.basefix
	.section	.rodata,"a",@progbits
	.p2align	4
__svfiscanf_r.basefix:
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
	.size	__svfiscanf_r.basefix, 34

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
