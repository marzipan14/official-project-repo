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
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	jne	.LBB0_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
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
	movzbl	(%r13), %eax
	movl	%eax, -116(%rbp)
	testl	%eax, %eax
	je	.LBB1_2
# %bb.1:
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	leaq	8(%rbx), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	movq	%r15, -64(%rbp)         # 8-byte Spill
	movq	%r12, -56(%rbp)         # 8-byte Spill
	jmp	.LBB1_7
.LBB1_2:
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
.LBB1_3:
	movl	-100(%rbp), %edi
	leaq	-100(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	-48(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB1_239
.LBB1_4:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
.LBB1_5:                                #   in Loop: Header=BB1_7 Depth=1
	leaq	-176(%rbp), %rax
	subl	%eax, %r14d
	addl	-68(%rbp), %edx         # 4-byte Folded Reload
	addl	%r14d, %edx
	movl	%edx, %r14d
.LBB1_6:                                #   in Loop: Header=BB1_7 Depth=1
	movzbl	(%r13), %eax
	movl	%eax, -116(%rbp)
	testl	%eax, %eax
	je	.LBB1_3
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_12 Depth 3
                                        #     Child Loop BB1_156 Depth 2
                                        #     Child Loop BB1_72 Depth 2
                                        #     Child Loop BB1_86 Depth 2
                                        #     Child Loop BB1_196 Depth 2
                                        #     Child Loop BB1_218 Depth 2
                                        #     Child Loop BB1_147 Depth 2
                                        #     Child Loop BB1_172 Depth 2
                                        #     Child Loop BB1_110 Depth 2
                                        #     Child Loop BB1_138 Depth 2
                                        #     Child Loop BB1_180 Depth 2
                                        #     Child Loop BB1_131 Depth 2
	movslq	%r14d, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB1_8:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_12 Depth 3
	movq	%r13, %r15
	addq	$1, %r15
	callq	__locale_ctype_ptr
	movslq	-116(%rbp), %rcx
	testb	$8, 1(%rax,%rcx)
	jne	.LBB1_154
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=2
	cmpl	$37, %ecx
	jne	.LBB1_159
# %bb.10:                               # %.preheader
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	%r14d, -68(%rbp)        # 4-byte Spill
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_11:                               #   in Loop: Header=BB1_12 Depth=3
	leaq	(%r14,%r14,4), %rax
	leaq	(%rbx,%rax,2), %r14
	addq	$-48, %r14
	movq	%r13, %r15
.LBB1_12:                               #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	1(%r15), %r13
	movzbl	(%r15), %ebx
	cmpq	$122, %rbx
	ja	.LBB1_46
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=3
	jmpq	*.LJTI1_0(,%rbx,8)
.LBB1_14:                               #   in Loop: Header=BB1_12 Depth=3
	orl	$1, %r12d
	movq	%r13, %r15
	jmp	.LBB1_12
.LBB1_15:                               #   in Loop: Header=BB1_12 Depth=3
	orl	$16, %r12d
	movq	%r13, %r15
	jmp	.LBB1_12
.LBB1_16:                               #   in Loop: Header=BB1_12 Depth=3
	orl	$2, %r12d
	movq	%r13, %r15
	jmp	.LBB1_12
.LBB1_17:                               #   in Loop: Header=BB1_12 Depth=3
	xorl	%eax, %eax
	cmpb	$104, 1(%r15)
	sete	%al
	leal	4(,%rax,4), %eax
	je	.LBB1_21
# %bb.18:                               #   in Loop: Header=BB1_12 Depth=3
	movq	%r13, %r15
	orl	%eax, %r12d
	jmp	.LBB1_12
.LBB1_19:                               #   in Loop: Header=BB1_12 Depth=3
	xorl	%eax, %eax
	cmpb	$108, 1(%r15)
	sete	%al
	je	.LBB1_22
# %bb.20:                               #   in Loop: Header=BB1_12 Depth=3
	movq	%r13, %r15
	jmp	.LBB1_23
.LBB1_21:                               #   in Loop: Header=BB1_12 Depth=3
	addq	$2, %r15
	orl	%eax, %r12d
	jmp	.LBB1_12
.LBB1_22:                               #   in Loop: Header=BB1_12 Depth=3
	addq	$2, %r15
.LBB1_23:                               #   in Loop: Header=BB1_12 Depth=3
	addl	$1, %eax
	orl	%eax, %r12d
	jmp	.LBB1_12
.LBB1_24:                               #   in Loop: Header=BB1_8 Depth=2
	testb	$16, %r12b
	movl	-68(%rbp), %r14d        # 4-byte Reload
	jne	.LBB1_44
# %bb.25:                               #   in Loop: Header=BB1_8 Depth=2
	testb	$8, %r12b
	jne	.LBB1_30
# %bb.26:                               #   in Loop: Header=BB1_8 Depth=2
	testb	$4, %r12b
	movq	-96(%rbp), %rdx         # 8-byte Reload
	jne	.LBB1_32
# %bb.27:                               #   in Loop: Header=BB1_8 Depth=2
	movslq	(%rdx), %rax
	testb	$1, %r12b
	jne	.LBB1_36
# %bb.28:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$40, %eax
	ja	.LBB1_40
# %bb.29:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, %rcx
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_41
.LBB1_30:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_34
# %bb.31:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_35
.LBB1_32:                               #   in Loop: Header=BB1_8 Depth=2
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_38
# %bb.33:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_39
.LBB1_34:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_35:                               #   in Loop: Header=BB1_8 Depth=2
	movq	(%rax), %rax
	movb	%r14b, (%rax)
	jmp	.LBB1_44
.LBB1_36:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$40, %eax
	ja	.LBB1_42
# %bb.37:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, %rcx
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_43
.LBB1_38:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_39:                               #   in Loop: Header=BB1_8 Depth=2
	movq	(%rax), %rax
	movw	%r14w, (%rax)
	jmp	.LBB1_44
.LBB1_40:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_41:                               #   in Loop: Header=BB1_8 Depth=2
	movq	(%rcx), %rax
	movl	%r14d, (%rax)
	jmp	.LBB1_44
.LBB1_42:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_43:                               #   in Loop: Header=BB1_8 Depth=2
	movq	(%rcx), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
.LBB1_44:                               #   in Loop: Header=BB1_8 Depth=2
	movzbl	(%r13), %eax
	movl	%eax, -116(%rbp)
	testl	%eax, %eax
	movq	-56(%rbp), %r12         # 8-byte Reload
	jne	.LBB1_8
	jmp	.LBB1_3
.LBB1_45:                               #   in Loop: Header=BB1_7 Depth=1
	orl	$512, %r12d             # imm = 0x200
	jmp	.LBB1_59
.LBB1_46:                               #   in Loop: Header=BB1_7 Depth=1
	callq	__locale_ctype_ptr
	movb	1(%rax,%rbx), %al
	andb	$3, %al
	xorl	%ecx, %ecx
	cmpb	$1, %al
	sete	%cl
	orl	%ecx, %r12d
	jmp	.LBB1_51
.LBB1_47:                               # %.loopexit
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	-68(%rbp), %r14d        # 4-byte Reload
	cmpl	$0, 8(%r15)
	jg	.LBB1_161
	jmp	.LBB1_160
.LBB1_48:                               #   in Loop: Header=BB1_7 Depth=1
	orl	$1, %r12d
.LBB1_49:                               # %.loopexit2
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	orl	$64, %r12d
	xorl	%ebx, %ebx
	cmpl	$0, 8(%r15)
	jg	.LBB1_64
	jmp	.LBB1_63
.LBB1_50:                               #   in Loop: Header=BB1_7 Depth=1
	orl	$1, %r12d
.LBB1_51:                               # %.loopexit1
                                        #   in Loop: Header=BB1_7 Depth=1
	movb	$3, %bl
	movl	$_strtol_r, %eax
	jmp	.LBB1_61
.LBB1_52:                               #   in Loop: Header=BB1_7 Depth=1
	orl	$1, %r12d
.LBB1_53:                               #   in Loop: Header=BB1_7 Depth=1
	movb	$3, %bl
	movl	$_strtoul_r, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$8, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_62
.LBB1_54:                               #   in Loop: Header=BB1_7 Depth=1
	orl	$1, %r12d
.LBB1_55:                               #   in Loop: Header=BB1_7 Depth=1
	movb	$2, %bl
	jmp	.LBB1_62
.LBB1_56:                               #   in Loop: Header=BB1_7 Depth=1
	leaq	-432(%rbp), %rdi
	movq	%r13, %rsi
	callq	__sccl
	movq	%rax, %r13
	orl	$64, %r12d
	movb	$1, %bl
	jmp	.LBB1_62
.LBB1_57:                               #   in Loop: Header=BB1_7 Depth=1
	movb	$3, %bl
	movl	$_strtol_r, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_62
.LBB1_58:                               #   in Loop: Header=BB1_7 Depth=1
	orl	$544, %r12d             # imm = 0x220
.LBB1_59:                               #   in Loop: Header=BB1_7 Depth=1
	movb	$3, %bl
	movl	$_strtoul_r, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$16, -44(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_62
.LBB1_60:                               #   in Loop: Header=BB1_7 Depth=1
	movb	$3, %bl
	movl	$_strtoul_r, %eax
.LBB1_61:                               #   in Loop: Header=BB1_7 Depth=1
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$10, -44(%rbp)          # 4-byte Folded Spill
.LBB1_62:                               #   in Loop: Header=BB1_7 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	cmpl	$0, 8(%r15)
	jg	.LBB1_64
.LBB1_63:                               #   in Loop: Header=BB1_7 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__srefill_r
	testl	%eax, %eax
	jne	.LBB1_234
.LBB1_64:                               #   in Loop: Header=BB1_7 Depth=1
	testb	$64, %r12b
	je	.LBB1_72
.LBB1_65:                               #   in Loop: Header=BB1_7 Depth=1
	movzbl	%bl, %eax
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_66:                               #   in Loop: Header=BB1_7 Depth=1
	testq	%r14, %r14
	movl	$1, %eax
	cmoveq	%rax, %r14
	testb	$1, %r12b
	jne	.LBB1_104
# %bb.67:                               #   in Loop: Header=BB1_7 Depth=1
	testb	$16, %r12b
	jne	.LBB1_130
# %bb.68:                               #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	movq	-56(%rbp), %r12         # 8-byte Reload
	ja	.LBB1_165
# %bb.69:                               #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_166
	.p2align	4, 0x90
.LBB1_70:                               #   in Loop: Header=BB1_72 Depth=2
	addq	$1, %rcx
	movq	%rcx, (%r15)
.LBB1_71:                               #   in Loop: Header=BB1_72 Depth=2
	addl	$1, -68(%rbp)           # 4-byte Folded Spill
.LBB1_72:                               #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	je	.LBB1_65
# %bb.73:                               #   in Loop: Header=BB1_72 Depth=2
	movl	8(%r15), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%r15)
	cmpl	$2, %eax
	jge	.LBB1_70
# %bb.74:                               #   in Loop: Header=BB1_72 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__srefill_r
	testl	%eax, %eax
	je	.LBB1_71
	jmp	.LBB1_234
.LBB1_75:                               #   in Loop: Header=BB1_7 Depth=1
	cmpq	$1, %r14
	movl	$0, %r15d
	sbbq	%r15, %r15
	orq	%r14, %r15
	testb	$16, %r12b
	jne	.LBB1_107
# %bb.76:                               #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movq	%r15, %r14
	cmpq	$40, %rcx
	ja	.LBB1_134
# %bb.77:                               #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_135
.LBB1_78:                               #   in Loop: Header=BB1_7 Depth=1
	cmpq	$1, %r14
	movl	$0, %ebx
	sbbq	%rbx, %rbx
	orq	%r14, %rbx
	testb	$1, %r12b
	jne	.LBB1_114
# %bb.79:                               #   in Loop: Header=BB1_7 Depth=1
	testb	$16, %r12b
	jne	.LBB1_144
# %bb.80:                               #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movq	%rbx, %r14
	cmpq	$40, %rcx
	ja	.LBB1_168
# %bb.81:                               #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_169
.LBB1_82:                               #   in Loop: Header=BB1_7 Depth=1
	leaq	-1(%r14), %rax
	orl	$3456, %r12d            # imm = 0xD80
	cmpq	$38, %rax
	movq	%r14, %rdi
	movl	$39, %ecx
	cmovaq	%rcx, %rdi
	testq	%rdi, %rdi
	je	.LBB1_118
# %bb.83:                               #   in Loop: Header=BB1_7 Depth=1
	addl	$-39, %r14d
	xorl	%ecx, %ecx
	cmpq	$38, %rax
	movl	$0, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	cmovbel	%ecx, %r14d
	xorl	%r8d, %r8d
	jmp	.LBB1_86
	.p2align	4, 0x90
.LBB1_84:                               #   in Loop: Header=BB1_86 Depth=2
	addq	$1, %rax
	movq	%rax, (%r15)
.LBB1_85:                               #   in Loop: Header=BB1_86 Depth=2
	addq	$-1, %rdi
	je	.LBB1_119
.LBB1_86:                               #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rax
	movzbl	(%rax), %ecx
	leal	-43(%rcx), %edx
	cmpb	$77, %dl
	ja	.LBB1_119
# %bb.87:                               #   in Loop: Header=BB1_86 Depth=2
	movzbl	%dl, %edx
	jmpq	*.LJTI1_2(,%rdx,8)
.LBB1_88:                               #   in Loop: Header=BB1_86 Depth=2
	cmpl	$11, -44(%rbp)          # 4-byte Folded Reload
	jl	.LBB1_119
.LBB1_94:                               #   in Loop: Header=BB1_86 Depth=2
	andl	$-2945, %r12d           # imm = 0xF47F
	jmp	.LBB1_101
	.p2align	4, 0x90
.LBB1_90:                               #   in Loop: Header=BB1_86 Depth=2
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__svfiscanf_r.basefix(%rdx,%rdx), %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	andl	$-2945, %r12d           # imm = 0xF47F
	jmp	.LBB1_101
.LBB1_91:                               #   in Loop: Header=BB1_86 Depth=2
	testb	%r12b, %r12b
	jns	.LBB1_119
# %bb.92:                               #   in Loop: Header=BB1_86 Depth=2
	andl	$-129, %r12d
	jmp	.LBB1_101
.LBB1_93:                               #   in Loop: Header=BB1_86 Depth=2
	movslq	-44(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__svfiscanf_r.basefix(%rdx,%rdx), %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	addq	$-1, %rdx
	cmpq	$8, %rdx
	jae	.LBB1_94
	jmp	.LBB1_119
.LBB1_95:                               #   in Loop: Header=BB1_86 Depth=2
	movl	%r12d, %edx
	andl	$1536, %edx             # imm = 0x600
	cmpl	$512, %edx              # imm = 0x200
	jne	.LBB1_119
# %bb.96:                               #   in Loop: Header=BB1_86 Depth=2
	andl	$-1793, %r12d           # imm = 0xF8FF
	orl	$1280, %r12d            # imm = 0x500
	movl	$16, -44(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_101
.LBB1_97:                               #   in Loop: Header=BB1_86 Depth=2
	testl	$2048, %r12d            # imm = 0x800
	je	.LBB1_101
# %bb.98:                               #   in Loop: Header=BB1_86 Depth=2
	movq	%rdi, %rbx
	movl	%r12d, %edx
	orl	$512, %edx              # imm = 0x200
	movl	-44(%rbp), %edi         # 4-byte Reload
	testl	%edi, %edi
	cmovnel	%r12d, %edx
	movl	$8, %esi
	cmovel	%esi, %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	testl	$1024, %edx             # imm = 0x400
	jne	.LBB1_100
# %bb.99:                               #   in Loop: Header=BB1_86 Depth=2
	andl	$-897, %edx             # imm = 0xFC7F
	xorl	%ecx, %ecx
	subl	$1, %r14d
	setae	%cl
	movl	$0, %esi
	cmovbl	%esi, %r14d
	movq	%rbx, %rdi
	addq	%rcx, %rdi
	movq	-112(%rbp), %rcx        # 8-byte Reload
	addl	$1, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	%edx, %r12d
	jmp	.LBB1_102
.LBB1_100:                              #   in Loop: Header=BB1_86 Depth=2
	andl	$-1409, %edx            # imm = 0xFA7F
	movl	%edx, %r12d
	movq	%rbx, %rdi
	.p2align	4, 0x90
.LBB1_101:                              #   in Loop: Header=BB1_86 Depth=2
	movb	%cl, -176(%rbp,%r8)
	addq	$1, %r8
.LBB1_102:                              #   in Loop: Header=BB1_86 Depth=2
	movl	8(%r15), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 8(%r15)
	cmpl	$2, %ecx
	jge	.LBB1_84
# %bb.103:                              #   in Loop: Header=BB1_86 Depth=2
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%r12, %rbx
	movq	%r15, %r12
	movq	%r8, %r15
	callq	__srefill_r
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %r8
	movq	%r12, %r15
	movq	%rbx, %r12
	testl	%eax, %eax
	je	.LBB1_85
	jmp	.LBB1_119
.LBB1_104:                              #   in Loop: Header=BB1_7 Depth=1
	movl	$8, %edx
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	andl	$16, %r12d
	jne	.LBB1_151
# %bb.105:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_176
# %bb.106:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_177
.LBB1_107:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movzbl	(%rax), %ecx
	cmpb	$0, -432(%rbp,%rcx)
	je	.LBB1_3
# %bb.108:                              # %.preheader11
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	$1, %ecx
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	-68(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB1_110
	.p2align	4, 0x90
.LBB1_109:                              #   in Loop: Header=BB1_110 Depth=2
	movzbl	(%rax), %edx
	leaq	1(%rbx), %rcx
	cmpb	$0, -432(%rbp,%rdx)
	je	.LBB1_117
.LBB1_110:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rbx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	8(%rsi), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 8(%rsi)
	addq	$1, %rax
	movq	%rax, (%rsi)
	cmpq	%rbx, %r15
	je	.LBB1_117
# %bb.111:                              #   in Loop: Header=BB1_110 Depth=2
	cmpl	$1, %ecx
	jg	.LBB1_109
# %bb.112:                              #   in Loop: Header=BB1_110 Depth=2
	movq	%r12, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__srefill_r
	testl	%eax, %eax
	jne	.LBB1_117
# %bb.113:                              #   in Loop: Header=BB1_110 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	jmp	.LBB1_109
.LBB1_114:                              #   in Loop: Header=BB1_7 Depth=1
	movl	$8, %edx
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	leaq	-116(%rbp), %r14
	movq	%r14, -88(%rbp)         # 8-byte Spill
	testb	$16, %r12b
	jne	.LBB1_193
# %bb.115:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_191
# %bb.116:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_192
.LBB1_117:                              # %.loopexit12
                                        #   in Loop: Header=BB1_7 Depth=1
	addl	%r14d, %ebx
	movl	%ebx, %r14d
	jmp	.LBB1_6
.LBB1_118:                              #   in Loop: Header=BB1_7 Depth=1
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB1_119:                              #   in Loop: Header=BB1_7 Depth=1
	leaq	(%r8,%rbp), %r14
	addq	$-176, %r14
	testl	$256, %r12d             # imm = 0x100
	je	.LBB1_123
# %bb.120:                              #   in Loop: Header=BB1_7 Depth=1
	testq	%r8, %r8
	jle	.LBB1_122
# %bb.121:                              #   in Loop: Header=BB1_7 Depth=1
	movsbl	-1(%r14), %esi
	addq	$-1, %r14
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rdx
	callq	_ungetc_r
.LBB1_122:                              #   in Loop: Header=BB1_7 Depth=1
	leaq	-176(%rbp), %rax
	cmpq	%rax, %r14
	je	.LBB1_3
.LBB1_123:                              #   in Loop: Header=BB1_7 Depth=1
	testb	$16, %r12b
	jne	.LBB1_4
# %bb.124:                              #   in Loop: Header=BB1_7 Depth=1
	movb	$0, (%r14)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	-176(%rbp), %rsi
	xorl	%edx, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	callq	*-128(%rbp)             # 8-byte Folded Reload
	testb	$32, %r12b
	jne	.LBB1_152
# %bb.125:                              #   in Loop: Header=BB1_7 Depth=1
	testb	$8, %r12b
	jne	.LBB1_208
# %bb.126:                              #   in Loop: Header=BB1_7 Depth=1
	testb	$4, %r12b
	jne	.LBB1_212
# %bb.127:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movslq	(%rcx), %rcx
	testb	$1, %r12b
	jne	.LBB1_219
# %bb.128:                              #   in Loop: Header=BB1_7 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_227
# %bb.129:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB1_228
.LBB1_130:                              # %.preheader6
                                        #   in Loop: Header=BB1_7 Depth=1
	xorl	%ebx, %ebx
	movq	-56(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_131:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	8(%r15), %rax
	cmpl	%r14d, %eax
	jge	.LBB1_163
# %bb.132:                              #   in Loop: Header=BB1_131 Depth=2
	addq	%rax, %rbx
	subq	%rax, %r14
	addq	%rax, (%r15)
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	__srefill_r
	testl	%eax, %eax
	je	.LBB1_131
# %bb.133:                              #   in Loop: Header=BB1_7 Depth=1
	testq	%rbx, %rbx
	jne	.LBB1_164
	jmp	.LBB1_234
.LBB1_134:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_135:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%rax), %r12
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rax
	movzbl	(%rax), %ecx
	cmpb	$0, -432(%rbp,%rcx)
	movq	%r12, %rcx
	movq	%r12, -88(%rbp)         # 8-byte Spill
	je	.LBB1_142
# %bb.136:                              # %.preheader9
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movl	$1, %ebx
	jmp	.LBB1_138
	.p2align	4, 0x90
.LBB1_137:                              #   in Loop: Header=BB1_138 Depth=2
	movq	(%r15), %rax
	movzbl	(%rax), %edx
	addq	$1, %rbx
	leaq	1(%r12), %rcx
	cmpb	$0, -432(%rbp,%rdx)
	je	.LBB1_142
.LBB1_138:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r12
	addl	$-1, 8(%r15)
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movzbl	(%rax), %eax
	movb	%al, -1(%r12)
	cmpq	%rbx, %r14
	je	.LBB1_142
# %bb.139:                              #   in Loop: Header=BB1_138 Depth=2
	cmpl	$0, 8(%r15)
	jg	.LBB1_137
# %bb.140:                              #   in Loop: Header=BB1_138 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__srefill_r
	testl	%eax, %eax
	je	.LBB1_137
# %bb.141:                              #   in Loop: Header=BB1_7 Depth=1
	testq	%rbx, %rbx
	je	.LBB1_234
.LBB1_142:                              #   in Loop: Header=BB1_7 Depth=1
	movl	%r12d, %eax
	subl	-88(%rbp), %eax         # 4-byte Folded Reload
	je	.LBB1_3
# %bb.143:                              #   in Loop: Header=BB1_7 Depth=1
	movb	$0, (%r12)
	addl	$1, -48(%rbp)           # 4-byte Folded Spill
	movl	-68(%rbp), %r14d        # 4-byte Reload
	addl	%eax, %r14d
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_6
.LBB1_144:                              #   in Loop: Header=BB1_7 Depth=1
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	xorl	%r14d, %r14d
	testb	$8, 1(%rax,%rdx)
	movq	-56(%rbp), %r12         # 8-byte Reload
	jne	.LBB1_150
# %bb.145:                              # %.preheader15
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	$1, %edx
	jmp	.LBB1_147
	.p2align	4, 0x90
.LBB1_146:                              #   in Loop: Header=BB1_147 Depth=2
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %esi
	leaq	1(%r14), %rdx
	testb	$8, 1(%rax,%rsi)
	jne	.LBB1_150
.LBB1_147:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %r14
	movl	8(%r15), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%r15)
	addq	$1, %rcx
	movq	%rcx, (%r15)
	cmpq	%r14, %rbx
	je	.LBB1_150
# %bb.148:                              #   in Loop: Header=BB1_147 Depth=2
	cmpl	$1, %eax
	jg	.LBB1_146
# %bb.149:                              #   in Loop: Header=BB1_147 Depth=2
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	__srefill_r
	testl	%eax, %eax
	je	.LBB1_146
.LBB1_150:                              #   in Loop: Header=BB1_7 Depth=1
	addl	-68(%rbp), %r14d        # 4-byte Folded Reload
                                        # kill: def $r14d killed $r14d killed $r14
	jmp	.LBB1_6
.LBB1_151:                              #   in Loop: Header=BB1_7 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB1_178
.LBB1_152:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_210
# %bb.153:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_211
.LBB1_154:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %eax
	testl	%eax, %eax
	jg	.LBB1_156
	jmp	.LBB1_155
	.p2align	4, 0x90
.LBB1_157:                              #   in Loop: Header=BB1_156 Depth=2
	addl	$1, %r14d
	movl	8(%rsi), %eax
	addl	$-1, %eax
	movl	%eax, 8(%rsi)
	addq	$1, %rcx
	movq	%rcx, (%rsi)
	testl	%eax, %eax
	jg	.LBB1_156
.LBB1_155:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%r12, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__srefill_r
	testl	%eax, %eax
	jne	.LBB1_158
.LBB1_156:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	jne	.LBB1_157
.LBB1_158:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%r15, %r13
	jmp	.LBB1_6
.LBB1_159:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%r15, %r13
	movq	-64(%rbp), %r15         # 8-byte Reload
	cmpl	$0, 8(%r15)
	jg	.LBB1_161
.LBB1_160:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	__srefill_r
	testl	%eax, %eax
	jne	.LBB1_234
.LBB1_161:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%r15), %rax
	movb	(%rax), %cl
	cmpb	-1(%r13), %cl
	jne	.LBB1_3
# %bb.162:                              #   in Loop: Header=BB1_7 Depth=1
	addl	$-1, 8(%r15)
	addq	$1, %rax
	movq	%rax, (%r15)
	addl	$1, %r14d
	jmp	.LBB1_6
.LBB1_163:                              #   in Loop: Header=BB1_7 Depth=1
	addq	%r14, %rbx
	subl	%r14d, %eax
	movl	%eax, 8(%r15)
	addq	%r14, (%r15)
.LBB1_164:                              #   in Loop: Header=BB1_7 Depth=1
	movl	-68(%rbp), %r14d        # 4-byte Reload
	addl	%ebx, %r14d
	jmp	.LBB1_6
.LBB1_165:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_166:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%rax), %rsi
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	_fread_r
	xorl	%ecx, %ecx
	testq	%rax, %rax
	setne	%cl
	addl	%ecx, -48(%rbp)         # 4-byte Folded Spill
	testq	%rax, %rax
	je	.LBB1_234
# %bb.167:                              #   in Loop: Header=BB1_7 Depth=1
	movl	-68(%rbp), %r14d        # 4-byte Reload
	addl	%eax, %r14d
	jmp	.LBB1_6
.LBB1_168:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_169:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%rax), %rbx
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movq	%r15, %r12
	movq	%rbx, %r15
	movq	%r14, %rdi
	movq	%rbx, %r14
	jne	.LBB1_175
# %bb.170:                              # %.preheader13
                                        #   in Loop: Header=BB1_7 Depth=1
	addq	$-1, %rdi
	leaq	1(%r14), %rdx
	jmp	.LBB1_172
	.p2align	4, 0x90
.LBB1_171:                              #   in Loop: Header=BB1_172 Depth=2
	callq	__locale_ctype_ptr
	movq	(%r12), %rcx
	movzbl	(%rcx), %esi
	movq	%rbx, %rdi
	addq	$-1, %rdi
	leaq	1(%r15), %rdx
	testb	$8, 1(%rax,%rsi)
	jne	.LBB1_175
.LBB1_172:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %r15
	addl	$-1, 8(%r12)
	leaq	1(%rcx), %rax
	movq	%rax, (%r12)
	movzbl	(%rcx), %eax
	movb	%al, -1(%rdx)
	testq	%rdi, %rdi
	je	.LBB1_175
# %bb.173:                              #   in Loop: Header=BB1_172 Depth=2
	movq	%rdi, %rbx
	cmpl	$0, 8(%r12)
	jg	.LBB1_171
# %bb.174:                              #   in Loop: Header=BB1_172 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	__srefill_r
	testl	%eax, %eax
	je	.LBB1_171
.LBB1_175:                              #   in Loop: Header=BB1_7 Depth=1
	movb	$0, (%r15)
	subl	%r14d, %r15d
	movl	-68(%rbp), %r14d        # 4-byte Reload
	addl	%r15d, %r14d
	addl	$1, -48(%rbp)           # 4-byte Folded Spill
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_6
.LBB1_176:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_177:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%rax), %rbx
.LBB1_178:                              #   in Loop: Header=BB1_7 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB1_180
	.p2align	4, 0x90
.LBB1_179:                              #   in Loop: Header=BB1_180 Depth=2
	testq	%r14, %r14
	je	.LBB1_190
.LBB1_180:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	cmpl	%eax, %r15d
	je	.LBB1_233
# %bb.181:                              #   in Loop: Header=BB1_180 Depth=2
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	movzbl	(%rax), %ecx
	movslq	%r15d, %rdx
	movb	%cl, -176(%rbp,%rdx)
	addl	$-1, 8(%rsi)
	addl	$1, %r15d
	addq	$1, %rax
	movq	%rax, (%rsi)
	movslq	%r15d, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	leaq	-176(%rbp), %rdx
	leaq	-136(%rbp), %r8
	callq	_mbrtowc_r
	cmpq	$-2, %rax
	je	.LBB1_187
# %bb.182:                              #   in Loop: Header=BB1_180 Depth=2
	testq	%rax, %rax
	je	.LBB1_184
# %bb.183:                              #   in Loop: Header=BB1_180 Depth=2
	cmpq	$-1, %rax
	jne	.LBB1_186
	jmp	.LBB1_233
	.p2align	4, 0x90
.LBB1_184:                              #   in Loop: Header=BB1_180 Depth=2
	testl	%r12d, %r12d
	jne	.LBB1_186
# %bb.185:                              #   in Loop: Header=BB1_180 Depth=2
	movl	$0, (%rbx)
.LBB1_186:                              #   in Loop: Header=BB1_180 Depth=2
	addl	%r15d, -68(%rbp)        # 4-byte Folded Spill
	addq	$-1, %r14
	leaq	4(%rbx), %rax
	testl	%r12d, %r12d
	cmoveq	%rax, %rbx
	xorl	%r15d, %r15d
.LBB1_187:                              #   in Loop: Header=BB1_180 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 8(%rax)
	jg	.LBB1_179
# %bb.188:                              #   in Loop: Header=BB1_180 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__srefill_r
	testl	%eax, %eax
	je	.LBB1_179
# %bb.189:                              #   in Loop: Header=BB1_7 Depth=1
	testl	%r15d, %r15d
	jne	.LBB1_233
.LBB1_190:                              #   in Loop: Header=BB1_7 Depth=1
	shrl	$4, %r12d
	xorl	$1, %r12d
	addl	-48(%rbp), %r12d        # 4-byte Folded Reload
	movl	%r12d, %eax
	movl	%r12d, -48(%rbp)        # 4-byte Spill
	jmp	.LBB1_226
.LBB1_191:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_192:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB1_193:                              #   in Loop: Header=BB1_7 Depth=1
	callq	__locale_ctype_ptr
	testq	%rbx, %rbx
	je	.LBB1_224
# %bb.194:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%r15), %rcx
	movzbl	(%rcx), %ecx
	movb	1(%rax,%rcx), %al
	andb	$8, %al
	jne	.LBB1_224
# %bb.195:                              # %.preheader19
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	%rbx, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB1_196:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	cmpl	%eax, %r15d
	je	.LBB1_233
# %bb.197:                              #   in Loop: Header=BB1_196 Depth=2
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	movzbl	(%rax), %ecx
	movslq	%r15d, %rdx
	movb	%cl, -176(%rbp,%rdx)
	addl	$-1, 8(%rsi)
	addl	$1, %r15d
	addq	$1, %rax
	movq	%rax, (%rsi)
	movslq	%r15d, %rbx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	leaq	-176(%rbp), %rdx
	movq	%rbx, %rcx
	leaq	-136(%rbp), %r8
	callq	_mbrtowc_r
	cmpq	$-2, %rax
	je	.LBB1_204
# %bb.198:                              #   in Loop: Header=BB1_196 Depth=2
	testq	%rax, %rax
	je	.LBB1_201
# %bb.199:                              #   in Loop: Header=BB1_196 Depth=2
	cmpq	$-1, %rax
	je	.LBB1_233
# %bb.200:                              #   in Loop: Header=BB1_196 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	jmp	.LBB1_202
	.p2align	4, 0x90
.LBB1_201:                              #   in Loop: Header=BB1_196 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	xorl	%edi, %edi
.LBB1_202:                              #   in Loop: Header=BB1_196 Depth=2
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB1_216
# %bb.203:                              #   in Loop: Header=BB1_196 Depth=2
	addl	%r15d, -68(%rbp)        # 4-byte Folded Spill
	addq	$-1, %r14
	movq	-88(%rbp), %rcx         # 8-byte Reload
	leaq	4(%rcx), %rax
	testb	$16, %r12b
	cmoveq	%rax, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
.LBB1_204:                              #   in Loop: Header=BB1_196 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 8(%rax)
	jg	.LBB1_206
# %bb.205:                              #   in Loop: Header=BB1_196 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__srefill_r
	testl	%eax, %eax
	jne	.LBB1_223
.LBB1_206:                              #   in Loop: Header=BB1_196 Depth=2
	callq	__locale_ctype_ptr
	testq	%r14, %r14
	je	.LBB1_224
# %bb.207:                              #   in Loop: Header=BB1_196 Depth=2
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	movzbl	1(%rax,%rcx), %eax
	andb	$8, %al
	je	.LBB1_196
	jmp	.LBB1_224
.LBB1_208:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_214
# %bb.209:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_215
.LBB1_210:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_211:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB1_232
.LBB1_212:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_221
# %bb.213:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_222
.LBB1_214:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_215:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB1_232
.LBB1_216:                              #   in Loop: Header=BB1_7 Depth=1
	testl	%r15d, %r15d
	je	.LBB1_224
# %bb.217:                              # %.preheader17
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_218:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-177(%rbp,%rbx), %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	_ungetc_r
	addq	$-1, %rbx
	jne	.LBB1_218
	jmp	.LBB1_224
.LBB1_219:                              #   in Loop: Header=BB1_7 Depth=1
	cmpl	$40, %ecx
	ja	.LBB1_229
# %bb.220:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB1_230
.LBB1_221:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_222:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB1_232
.LBB1_223:                              #   in Loop: Header=BB1_7 Depth=1
	testl	%r15d, %r15d
	jne	.LBB1_233
.LBB1_224:                              #   in Loop: Header=BB1_7 Depth=1
	testb	$16, %r12b
	jne	.LBB1_226
# %bb.225:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	addl	$1, -48(%rbp)           # 4-byte Folded Spill
.LBB1_226:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	-68(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB1_6
.LBB1_227:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_228:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB1_231
.LBB1_229:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_230:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	(%rdx), %rcx
	movq	%rax, (%rcx)
.LBB1_231:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
.LBB1_232:                              #   in Loop: Header=BB1_7 Depth=1
	addl	$1, -48(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_5
.LBB1_234:
	movl	-48(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB1_235
.LBB1_233:
	movl	-48(%rbp), %ebx         # 4-byte Reload
	movq	-64(%rbp), %r15         # 8-byte Reload
.LBB1_235:
	movl	-100(%rbp), %edi
	leaq	-100(%rbp), %rsi
	callq	pthread_setcancelstate
	testl	%ebx, %ebx
	je	.LBB1_238
# %bb.236:
	movb	16(%r15), %al
	andb	$64, %al
	xorl	%ecx, %ecx
	cmpb	$1, %al
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %ebx
	jmp	.LBB1_239
.LBB1_237:
	movl	-100(%rbp), %edi
	leaq	-100(%rbp), %rsi
	callq	pthread_setcancelstate
.LBB1_238:
	movl	$-1, %ebx
.LBB1_239:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__svfiscanf_r, .Lfunc_end1-__svfiscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_237
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_47
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_15
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_11
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_48
	.quad	.LBB1_50
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_16
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_52
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_54
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_45
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_56
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_49
	.quad	.LBB1_51
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_17
	.quad	.LBB1_57
	.quad	.LBB1_14
	.quad	.LBB1_46
	.quad	.LBB1_19
	.quad	.LBB1_46
	.quad	.LBB1_24
	.quad	.LBB1_53
	.quad	.LBB1_58
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_55
	.quad	.LBB1_14
	.quad	.LBB1_60
	.quad	.LBB1_46
	.quad	.LBB1_46
	.quad	.LBB1_45
	.quad	.LBB1_46
	.quad	.LBB1_14
.LJTI1_1:
	.quad	.LBB1_66
	.quad	.LBB1_75
	.quad	.LBB1_78
	.quad	.LBB1_82
.LJTI1_2:
	.quad	.LBB1_91
	.quad	.LBB1_119
	.quad	.LBB1_91
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_97
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_90
	.quad	.LBB1_93
	.quad	.LBB1_93
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_88
	.quad	.LBB1_88
	.quad	.LBB1_88
	.quad	.LBB1_88
	.quad	.LBB1_88
	.quad	.LBB1_88
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_95
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_88
	.quad	.LBB1_88
	.quad	.LBB1_88
	.quad	.LBB1_88
	.quad	.LBB1_88
	.quad	.LBB1_88
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_119
	.quad	.LBB1_95
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
	testq	%rdi, %rdi
	je	.LBB3_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	jne	.LBB3_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
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
