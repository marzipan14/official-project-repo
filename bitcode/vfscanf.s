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
	subq	$744, %rsp              # imm = 0x2E8
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdi, %r15
	leaq	-108(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movzbl	(%r12), %eax
	movl	%eax, -112(%rbp)
	testl	%eax, %eax
	je	.LBB1_2
# %bb.1:
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	leaq	8(%rbx), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	xorl	%r13d, %r13d
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	movq	%r15, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_7
.LBB1_2:
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
.LBB1_3:
	movl	-108(%rbp), %edi
	leaq	-108(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	-52(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB1_326
.LBB1_268:                              #   in Loop: Header=BB1_7 Depth=1
	testl	%ebx, %ebx
	jne	.LBB1_322
.LBB1_4:                                #   in Loop: Header=BB1_7 Depth=1
	shrl	$4, %r15d
	xorl	$1, %r15d
	addl	-52(%rbp), %r15d        # 4-byte Folded Reload
	movl	%r15d, %eax
	movl	%r15d, -52(%rbp)        # 4-byte Spill
	.p2align	4, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	-72(%rbp), %r13d        # 4-byte Reload
.LBB1_6:                                #   in Loop: Header=BB1_7 Depth=1
	movzbl	(%r12), %eax
	movl	%eax, -112(%rbp)
	testl	%eax, %eax
	je	.LBB1_3
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #       Child Loop BB1_12 Depth 3
                                        #     Child Loop BB1_210 Depth 2
                                        #     Child Loop BB1_74 Depth 2
                                        #     Child Loop BB1_109 Depth 2
                                        #     Child Loop BB1_220 Depth 2
                                        #     Child Loop BB1_87 Depth 2
                                        #     Child Loop BB1_274 Depth 2
                                        #     Child Loop BB1_307 Depth 2
                                        #     Child Loop BB1_203 Depth 2
                                        #     Child Loop BB1_251 Depth 2
                                        #     Child Loop BB1_157 Depth 2
                                        #     Child Loop BB1_194 Depth 2
                                        #     Child Loop BB1_259 Depth 2
                                        #     Child Loop BB1_187 Depth 2
	movslq	%r13d, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB1_8:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_12 Depth 3
	movq	%r12, %rbx
	addq	$1, %rbx
	callq	__locale_ctype_ptr
	movslq	-112(%rbp), %rcx
	testb	$8, 1(%rax,%rcx)
	jne	.LBB1_208
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=2
	cmpl	$37, %ecx
	movq	-64(%rbp), %r8          # 8-byte Reload
	jne	.LBB1_215
# %bb.10:                               # %.preheader4
                                        #   in Loop: Header=BB1_8 Depth=2
	movl	%r13d, -72(%rbp)        # 4-byte Spill
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_11:                               #   in Loop: Header=BB1_12 Depth=3
	leaq	(%r14,%r14,4), %rax
	leaq	-48(,%rax,2), %r14
	addq	%r13, %r14
	movq	%r12, %rbx
.LBB1_12:                               #   Parent Loop BB1_7 Depth=1
                                        #     Parent Loop BB1_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	1(%rbx), %r12
	movzbl	(%rbx), %r13d
	cmpq	$122, %r13
	ja	.LBB1_47
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=3
	jmpq	*.LJTI1_0(,%r13,8)
.LBB1_14:                               #   in Loop: Header=BB1_12 Depth=3
	orl	$1, %r15d
	movq	%r12, %rbx
	jmp	.LBB1_12
.LBB1_15:                               #   in Loop: Header=BB1_12 Depth=3
	orl	$16, %r15d
	movq	%r12, %rbx
	jmp	.LBB1_12
.LBB1_16:                               #   in Loop: Header=BB1_12 Depth=3
	orl	$2, %r15d
	movq	%r12, %rbx
	jmp	.LBB1_12
.LBB1_17:                               #   in Loop: Header=BB1_12 Depth=3
	xorl	%eax, %eax
	cmpb	$104, 1(%rbx)
	sete	%al
	leal	4(,%rax,4), %eax
	je	.LBB1_21
# %bb.18:                               #   in Loop: Header=BB1_12 Depth=3
	movq	%r12, %rbx
	orl	%eax, %r15d
	jmp	.LBB1_12
.LBB1_19:                               #   in Loop: Header=BB1_12 Depth=3
	xorl	%eax, %eax
	cmpb	$108, 1(%rbx)
	sete	%al
	je	.LBB1_22
# %bb.20:                               #   in Loop: Header=BB1_12 Depth=3
	movq	%r12, %rbx
	jmp	.LBB1_23
.LBB1_21:                               #   in Loop: Header=BB1_12 Depth=3
	addq	$2, %rbx
	orl	%eax, %r15d
	jmp	.LBB1_12
.LBB1_22:                               #   in Loop: Header=BB1_12 Depth=3
	addq	$2, %rbx
.LBB1_23:                               #   in Loop: Header=BB1_12 Depth=3
	addl	$1, %eax
	orl	%eax, %r15d
	jmp	.LBB1_12
.LBB1_24:                               #   in Loop: Header=BB1_8 Depth=2
	testb	$16, %r15b
	movl	-72(%rbp), %r13d        # 4-byte Reload
	jne	.LBB1_44
# %bb.25:                               #   in Loop: Header=BB1_8 Depth=2
	testb	$8, %r15b
	jne	.LBB1_30
# %bb.26:                               #   in Loop: Header=BB1_8 Depth=2
	testb	$4, %r15b
	jne	.LBB1_32
# %bb.27:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rax
	testb	$1, %r15b
	jne	.LBB1_36
# %bb.28:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$40, %eax
	ja	.LBB1_40
# %bb.29:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, %rcx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_41
.LBB1_30:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-88(%rbp), %rdx         # 8-byte Reload
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
	movq	-88(%rbp), %rdx         # 8-byte Reload
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
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_35:                               #   in Loop: Header=BB1_8 Depth=2
	movq	(%rax), %rax
	movb	%r13b, (%rax)
	jmp	.LBB1_44
.LBB1_36:                               #   in Loop: Header=BB1_8 Depth=2
	cmpl	$40, %eax
	ja	.LBB1_42
# %bb.37:                               #   in Loop: Header=BB1_8 Depth=2
	movq	%rax, %rcx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_43
.LBB1_38:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_39:                               #   in Loop: Header=BB1_8 Depth=2
	movq	(%rax), %rax
	movw	%r13w, (%rax)
	jmp	.LBB1_44
.LBB1_40:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_41:                               #   in Loop: Header=BB1_8 Depth=2
	movq	(%rcx), %rax
	movl	%r13d, (%rax)
	jmp	.LBB1_44
.LBB1_42:                               #   in Loop: Header=BB1_8 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_43:                               #   in Loop: Header=BB1_8 Depth=2
	movq	(%rcx), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
.LBB1_44:                               #   in Loop: Header=BB1_8 Depth=2
	movzbl	(%r12), %eax
	movl	%eax, -112(%rbp)
	testl	%eax, %eax
	movq	-48(%rbp), %r15         # 8-byte Reload
	jne	.LBB1_8
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_45:                               #   in Loop: Header=BB1_7 Depth=1
	movb	$4, %r13b
	cmpl	$0, 8(%r8)
	jg	.LBB1_64
	jmp	.LBB1_63
.LBB1_46:                               #   in Loop: Header=BB1_7 Depth=1
	orl	$512, %r15d             # imm = 0x200
	jmp	.LBB1_56
.LBB1_47:                               #   in Loop: Header=BB1_7 Depth=1
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movb	1(%rax,%r13), %al
	andb	$3, %al
	xorl	%ecx, %ecx
	cmpb	$1, %al
	sete	%cl
	orl	%ecx, %r15d
	jmp	.LBB1_61
.LBB1_48:                               # %.loopexit5
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	-72(%rbp), %r13d        # 4-byte Reload
	cmpl	$0, 8(%r8)
	jg	.LBB1_217
	jmp	.LBB1_216
.LBB1_49:                               #   in Loop: Header=BB1_7 Depth=1
	orl	$1, %r15d
.LBB1_50:                               #   in Loop: Header=BB1_7 Depth=1
	movb	$3, %r13b
	movl	$_strtoul_r, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$8, -56(%rbp)           # 4-byte Folded Spill
	cmpl	$0, 8(%r8)
	jg	.LBB1_64
	jmp	.LBB1_63
.LBB1_51:                               #   in Loop: Header=BB1_7 Depth=1
	orl	$1, %r15d
.LBB1_52:                               # %.loopexit6
                                        #   in Loop: Header=BB1_7 Depth=1
	movb	$2, %r13b
	cmpl	$0, 8(%r8)
	jg	.LBB1_64
	jmp	.LBB1_63
.LBB1_53:                               #   in Loop: Header=BB1_7 Depth=1
	leaq	-784(%rbp), %rdi
	movq	%r12, %rsi
	callq	__sccl
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r12
	orl	$64, %r15d
	movb	$1, %r13b
	cmpl	$0, 8(%r8)
	jg	.LBB1_64
	jmp	.LBB1_63
.LBB1_54:                               #   in Loop: Header=BB1_7 Depth=1
	movb	$3, %r13b
	movl	$_strtol_r, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	cmpl	$0, 8(%r8)
	jg	.LBB1_64
	jmp	.LBB1_63
.LBB1_55:                               #   in Loop: Header=BB1_7 Depth=1
	orl	$544, %r15d             # imm = 0x220
.LBB1_56:                               #   in Loop: Header=BB1_7 Depth=1
	movb	$3, %r13b
	movl	$_strtoul_r, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$16, -56(%rbp)          # 4-byte Folded Spill
	cmpl	$0, 8(%r8)
	jg	.LBB1_64
	jmp	.LBB1_63
.LBB1_57:                               #   in Loop: Header=BB1_7 Depth=1
	movb	$3, %r13b
	movl	$_strtoul_r, %eax
	jmp	.LBB1_62
.LBB1_58:                               #   in Loop: Header=BB1_7 Depth=1
	orl	$1, %r15d
.LBB1_59:                               #   in Loop: Header=BB1_7 Depth=1
	orl	$64, %r15d
	xorl	%r13d, %r13d
	cmpl	$0, 8(%r8)
	jg	.LBB1_64
	jmp	.LBB1_63
.LBB1_60:                               #   in Loop: Header=BB1_7 Depth=1
	orl	$1, %r15d
.LBB1_61:                               #   in Loop: Header=BB1_7 Depth=1
	movb	$3, %r13b
	movl	$_strtol_r, %eax
.LBB1_62:                               #   in Loop: Header=BB1_7 Depth=1
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$10, -56(%rbp)          # 4-byte Folded Spill
	cmpl	$0, 8(%r8)
	jg	.LBB1_64
	.p2align	4, 0x90
.LBB1_63:                               #   in Loop: Header=BB1_7 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	callq	__srefill_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB1_322
.LBB1_64:                               #   in Loop: Header=BB1_7 Depth=1
	testb	$64, %r15b
	jne	.LBB1_66
# %bb.65:                               #   in Loop: Header=BB1_7 Depth=1
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	jne	.LBB1_74
.LBB1_66:                               #   in Loop: Header=BB1_7 Depth=1
	cmpb	$4, %r13b
	ja	.LBB1_5
# %bb.67:                               #   in Loop: Header=BB1_7 Depth=1
	movzbl	%r13b, %eax
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_68:                               #   in Loop: Header=BB1_7 Depth=1
	testq	%r14, %r14
	movl	$1, %eax
	cmoveq	%rax, %r14
	testb	$1, %r15b
	jne	.LBB1_151
# %bb.69:                               #   in Loop: Header=BB1_7 Depth=1
	testb	$16, %r15b
	movl	-72(%rbp), %r13d        # 4-byte Reload
	jne	.LBB1_186
# %bb.70:                               #   in Loop: Header=BB1_7 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	movq	-48(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_244
# %bb.71:                               #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_245
	.p2align	4, 0x90
.LBB1_72:                               #   in Loop: Header=BB1_74 Depth=2
	addq	$1, %rcx
	movq	%rcx, (%r8)
	movq	%r8, %rbx
.LBB1_73:                               #   in Loop: Header=BB1_74 Depth=2
	addl	$1, -72(%rbp)           # 4-byte Folded Spill
	callq	__locale_ctype_ptr
	movq	(%rbx), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movq	%rbx, %r8
	je	.LBB1_66
.LBB1_74:                               #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%r8), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%r8)
	cmpl	$2, %eax
	jge	.LBB1_72
# %bb.75:                               #   in Loop: Header=BB1_74 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, %rbx
	callq	__srefill_r
	testl	%eax, %eax
	je	.LBB1_73
	jmp	.LBB1_322
.LBB1_76:                               #   in Loop: Header=BB1_7 Depth=1
	cmpq	$1, %r14
	movl	$0, %r13d
	sbbq	%r13, %r13
	orq	%r14, %r13
	testb	$16, %r15b
	jne	.LBB1_154
# %bb.77:                               #   in Loop: Header=BB1_7 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_190
# %bb.78:                               #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_191
.LBB1_79:                               #   in Loop: Header=BB1_7 Depth=1
	cmpq	$1, %r14
	movl	$0, %r13d
	sbbq	%r13, %r13
	orq	%r14, %r13
	testb	$1, %r15b
	jne	.LBB1_161
# %bb.80:                               #   in Loop: Header=BB1_7 Depth=1
	testb	$16, %r15b
	jne	.LBB1_200
# %bb.81:                               #   in Loop: Header=BB1_7 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	movq	-48(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_247
# %bb.82:                               #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_248
.LBB1_83:                               #   in Loop: Header=BB1_7 Depth=1
	leaq	-1(%r14), %rax
	orl	$3456, %r15d            # imm = 0xD80
	cmpq	$348, %rax              # imm = 0x15C
	movq	%r14, %r13
	movl	$349, %ecx              # imm = 0x15D
	cmovaq	%rcx, %r13
	testq	%r13, %r13
	je	.LBB1_164
# %bb.84:                               #   in Loop: Header=BB1_7 Depth=1
	addl	$-349, %r14d            # imm = 0xFEA3
	xorl	%ecx, %ecx
	cmpq	$348, %rax              # imm = 0x15C
	movl	$0, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	cmovbel	%ecx, %r14d
	xorl	%ebx, %ebx
	jmp	.LBB1_87
	.p2align	4, 0x90
.LBB1_85:                               #   in Loop: Header=BB1_87 Depth=2
	addq	$1, %rax
	movq	%rax, (%r8)
.LBB1_86:                               #   in Loop: Header=BB1_87 Depth=2
	addq	$-1, %r13
	je	.LBB1_165
.LBB1_87:                               #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %rax
	movzbl	(%rax), %ecx
	leal	-43(%rcx), %edx
	cmpb	$77, %dl
	ja	.LBB1_165
# %bb.88:                               #   in Loop: Header=BB1_87 Depth=2
	movzbl	%dl, %edx
	jmpq	*.LJTI1_3(,%rdx,8)
.LBB1_89:                               #   in Loop: Header=BB1_87 Depth=2
	cmpl	$11, -56(%rbp)          # 4-byte Folded Reload
	jl	.LBB1_165
.LBB1_95:                               #   in Loop: Header=BB1_87 Depth=2
	andl	$-2945, %r15d           # imm = 0xF47F
	jmp	.LBB1_102
	.p2align	4, 0x90
.LBB1_91:                               #   in Loop: Header=BB1_87 Depth=2
	movslq	-56(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__svfscanf_r.basefix(%rdx,%rdx), %edx
	movl	%edx, -56(%rbp)         # 4-byte Spill
	andl	$-2945, %r15d           # imm = 0xF47F
	jmp	.LBB1_102
.LBB1_92:                               #   in Loop: Header=BB1_87 Depth=2
	testb	%r15b, %r15b
	jns	.LBB1_165
# %bb.93:                               #   in Loop: Header=BB1_87 Depth=2
	andl	$-129, %r15d
	jmp	.LBB1_102
.LBB1_94:                               #   in Loop: Header=BB1_87 Depth=2
	movslq	-56(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__svfscanf_r.basefix(%rdx,%rdx), %esi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	addq	$-1, %rdx
	cmpq	$8, %rdx
	jae	.LBB1_95
	jmp	.LBB1_165
.LBB1_96:                               #   in Loop: Header=BB1_87 Depth=2
	movl	%r15d, %edx
	andl	$1536, %edx             # imm = 0x600
	cmpl	$512, %edx              # imm = 0x200
	jne	.LBB1_165
# %bb.97:                               #   in Loop: Header=BB1_87 Depth=2
	andl	$-1793, %r15d           # imm = 0xF8FF
	orl	$1280, %r15d            # imm = 0x500
	movl	$16, -56(%rbp)          # 4-byte Folded Spill
	jmp	.LBB1_102
.LBB1_98:                               #   in Loop: Header=BB1_87 Depth=2
	testl	$2048, %r15d            # imm = 0x800
	je	.LBB1_102
# %bb.99:                               #   in Loop: Header=BB1_87 Depth=2
	movl	%r15d, %edx
	orl	$512, %edx              # imm = 0x200
	movl	-56(%rbp), %edi         # 4-byte Reload
	testl	%edi, %edi
	movl	$8, %esi
	cmovel	%esi, %edi
	movl	%edi, -56(%rbp)         # 4-byte Spill
	cmovnel	%r15d, %edx
	testl	$1024, %edx             # imm = 0x400
	jne	.LBB1_101
# %bb.100:                              #   in Loop: Header=BB1_87 Depth=2
	andl	$-897, %edx             # imm = 0xFC7F
	xorl	%ecx, %ecx
	subl	$1, %r14d
	setae	%cl
	movl	$0, %esi
	cmovbl	%esi, %r14d
	addq	%rcx, %r13
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addl	$1, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	%edx, %r15d
	jmp	.LBB1_103
.LBB1_101:                              #   in Loop: Header=BB1_87 Depth=2
	andl	$-1409, %edx            # imm = 0xFA7F
	movl	%edx, %r15d
	.p2align	4, 0x90
.LBB1_102:                              #   in Loop: Header=BB1_87 Depth=2
	movb	%cl, -528(%rbp,%rbx)
	addq	$1, %rbx
.LBB1_103:                              #   in Loop: Header=BB1_87 Depth=2
	movl	8(%r8), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 8(%r8)
	cmpl	$2, %ecx
	jge	.LBB1_85
# %bb.104:                              #   in Loop: Header=BB1_87 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	callq	__srefill_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB1_86
	jmp	.LBB1_165
.LBB1_105:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_localeconv_r
	leaq	-1(%r14), %rcx
	orl	$1920, %r15d            # imm = 0x780
	cmpq	$348, %rcx              # imm = 0x15C
	movq	%r14, %r11
	movl	$349, %edx              # imm = 0x15D
	cmovaq	%rdx, %r11
	xorl	%edx, %edx
	testq	%r11, %r11
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	je	.LBB1_178
# %bb.106:                              #   in Loop: Header=BB1_7 Depth=1
	addl	$-349, %r14d            # imm = 0xFEA3
	cmpq	$348, %rcx              # imm = 0x15C
	cmovbel	%edx, %r14d
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	leaq	-528(%rbp), %rdi
	xorl	%ebx, %ebx
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB1_109
	.p2align	4, 0x90
.LBB1_107:                              #   in Loop: Header=BB1_109 Depth=2
	addq	$1, %r8
	movq	%r8, (%rdx)
.LBB1_108:                              #   in Loop: Header=BB1_109 Depth=2
	leaq	(%r9,%rbp), %rdi
	addq	$-528, %rdi             # imm = 0xFDF0
	addq	$-1, %r11
	je	.LBB1_149
.LBB1_109:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx), %r8
	movzbl	(%r8), %esi
	leal	-43(%rsi), %eax
	cmpb	$78, %al
	ja	.LBB1_136
# %bb.110:                              #   in Loop: Header=BB1_109 Depth=2
	movzbl	%al, %eax
	jmpq	*.LJTI1_2(,%rax,8)
.LBB1_111:                              #   in Loop: Header=BB1_109 Depth=2
	movsbl	%r10b, %eax
	movsbl	%bl, %ecx
	addl	%eax, %ecx
	jne	.LBB1_149
# %bb.112:                              #   in Loop: Header=BB1_109 Depth=2
	andl	$-385, %r15d            # imm = 0xFE7F
.LBB1_113:                              #   in Loop: Header=BB1_109 Depth=2
	movl	%r10d, %ecx
.LBB1_114:                              #   in Loop: Header=BB1_109 Depth=2
	movl	%ebx, %eax
.LBB1_115:                              #   in Loop: Header=BB1_109 Depth=2
	movb	%sil, -528(%rbp,%r9)
	addq	$1, %r9
	movl	%ecx, %r10d
	movl	%eax, %ebx
.LBB1_116:                              #   in Loop: Header=BB1_109 Depth=2
	addl	$1, -72(%rbp)           # 4-byte Folded Spill
	movl	8(%rdx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 8(%rdx)
	cmpl	$2, %eax
	jge	.LBB1_107
# %bb.117:                              #   in Loop: Header=BB1_109 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rdx, %rsi
	movq	%r9, %r13
	movq	%r14, -80(%rbp)         # 8-byte Spill
	movq	%r15, -152(%rbp)        # 8-byte Spill
	movq	%r10, %r15
	movq	%r11, %r14
	callq	__srefill_r
	movq	%r14, %r11
	movq	%r15, %r10
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r13, %r9
	movq	-64(%rbp), %rdx         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB1_108
	jmp	.LBB1_149
.LBB1_118:                              #   in Loop: Header=BB1_109 Depth=2
	testb	%r15b, %r15b
	jns	.LBB1_149
# %bb.119:                              #   in Loop: Header=BB1_109 Depth=2
	andl	$-129, %r15d
	jmp	.LBB1_113
.LBB1_120:                              #   in Loop: Header=BB1_109 Depth=2
	movb	$2, %cl
	movl	%ebx, %eax
	cmpb	$1, %r10b
	je	.LBB1_115
	jmp	.LBB1_149
.LBB1_121:                              #   in Loop: Header=BB1_109 Depth=2
	movl	%r15d, %eax
	andl	$1280, %eax             # imm = 0x500
	cmpl	$1024, %eax             # imm = 0x400
	je	.LBB1_124
# %bb.122:                              #   in Loop: Header=BB1_109 Depth=2
	testl	$1024, %r15d            # imm = 0x400
	je	.LBB1_149
# %bb.123:                              #   in Loop: Header=BB1_109 Depth=2
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	je	.LBB1_149
.LBB1_124:                              #   in Loop: Header=BB1_109 Depth=2
	movq	-104(%rbp), %rcx        # 8-byte Reload
	subq	-128(%rbp), %rcx        # 8-byte Folded Reload
	testl	$512, %r15d             # imm = 0x200
	movq	-136(%rbp), %rax        # 8-byte Reload
	cmoveq	%rcx, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %rax        # 8-byte Reload
	cmoveq	%rdi, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	andl	$-1921, %r15d           # imm = 0xF87F
	orl	$384, %r15d             # imm = 0x180
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_113
.LBB1_125:                              #   in Loop: Header=BB1_109 Depth=2
	movb	$3, %al
	movl	%r10d, %ecx
	cmpb	$2, %bl
	je	.LBB1_115
	jmp	.LBB1_149
.LBB1_126:                              #   in Loop: Header=BB1_109 Depth=2
	movl	%r15d, %eax
	andl	$1792, %eax             # imm = 0x700
	cmpl	$1792, %eax             # imm = 0x700
	jne	.LBB1_142
# %bb.127:                              #   in Loop: Header=BB1_109 Depth=2
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_142
# %bb.128:                              #   in Loop: Header=BB1_109 Depth=2
	testb	%bl, %bl
	jne	.LBB1_142
# %bb.129:                              #   in Loop: Header=BB1_109 Depth=2
	andl	$-1921, %r15d           # imm = 0xF87F
	movb	$1, %al
	xorl	%ecx, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	jmp	.LBB1_115
.LBB1_130:                              #   in Loop: Header=BB1_109 Depth=2
	movl	%r15d, %eax
	andl	$1792, %eax             # imm = 0x700
	cmpl	$1792, %eax             # imm = 0x700
	jne	.LBB1_144
# %bb.131:                              #   in Loop: Header=BB1_109 Depth=2
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_144
# %bb.132:                              #   in Loop: Header=BB1_109 Depth=2
	testb	%r10b, %r10b
	jne	.LBB1_144
# %bb.133:                              #   in Loop: Header=BB1_109 Depth=2
	andl	$-1921, %r15d           # imm = 0xF87F
	movb	$1, %cl
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_114
.LBB1_134:                              #   in Loop: Header=BB1_109 Depth=2
	movb	$7, %al
	movl	%r10d, %ecx
	cmpb	$6, %bl
	je	.LBB1_115
	jmp	.LBB1_149
.LBB1_135:                              #   in Loop: Header=BB1_109 Depth=2
	movb	$8, %al
	movl	%r10d, %ecx
	cmpb	$7, %bl
	je	.LBB1_115
	jmp	.LBB1_149
.LBB1_136:                              #   in Loop: Header=BB1_109 Depth=2
	testl	$512, %r15d             # imm = 0x200
	je	.LBB1_149
# %bb.137:                              #   in Loop: Header=BB1_109 Depth=2
	movq	-168(%rbp), %rax        # 8-byte Reload
	cmpb	(%rax), %sil
	jne	.LBB1_149
# %bb.138:                              #   in Loop: Header=BB1_109 Depth=2
	andl	$-641, %r15d            # imm = 0xFD7F
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB1_113
.LBB1_139:                              #   in Loop: Header=BB1_109 Depth=2
	testl	$256, %r15d             # imm = 0x100
	je	.LBB1_111
# %bb.140:                              #   in Loop: Header=BB1_109 Depth=2
	andl	$-129, %r15d
	addq	$1, -104(%rbp)          # 8-byte Folded Spill
	testl	%r14d, %r14d
	je	.LBB1_148
# %bb.141:                              #   in Loop: Header=BB1_109 Depth=2
	addl	$-1, %r14d
	addq	$1, %r11
	jmp	.LBB1_116
.LBB1_142:                              #   in Loop: Header=BB1_109 Depth=2
	cmpb	$5, %bl
	je	.LBB1_147
# %bb.143:                              #   in Loop: Header=BB1_109 Depth=2
	cmpb	$3, %bl
	je	.LBB1_147
	jmp	.LBB1_149
.LBB1_144:                              #   in Loop: Header=BB1_109 Depth=2
	movb	$3, %cl
	cmpb	$2, %r10b
	je	.LBB1_114
# %bb.145:                              #   in Loop: Header=BB1_109 Depth=2
	cmpb	$4, %bl
	je	.LBB1_147
# %bb.146:                              #   in Loop: Header=BB1_109 Depth=2
	cmpb	$1, %bl
	jne	.LBB1_149
.LBB1_147:                              #   in Loop: Header=BB1_109 Depth=2
	addb	$1, %bl
	jmp	.LBB1_113
.LBB1_148:                              #   in Loop: Header=BB1_109 Depth=2
	xorl	%r14d, %r14d
	jmp	.LBB1_116
.LBB1_149:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-104(%rbp), %rcx        # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB1_179
# %bb.150:                              #   in Loop: Header=BB1_7 Depth=1
	andl	$-257, %r15d            # imm = 0xFEFF
	movl	-72(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB1_180
.LBB1_151:                              #   in Loop: Header=BB1_7 Depth=1
	movl	$8, %edx
	leaq	-160(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	andl	$16, %r15d
	jne	.LBB1_207
# %bb.152:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_255
# %bb.153:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_256
.LBB1_154:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%r8), %rax
	movzbl	(%rax), %ecx
	cmpb	$0, -784(%rbp,%rcx)
	movq	-48(%rbp), %r15         # 8-byte Reload
	je	.LBB1_3
# %bb.155:                              # %.preheader16
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	$1, %ecx
	jmp	.LBB1_157
	.p2align	4, 0x90
.LBB1_156:                              #   in Loop: Header=BB1_157 Depth=2
	movzbl	(%rax), %edx
	leaq	1(%rbx), %rcx
	cmpb	$0, -784(%rbp,%rdx)
	je	.LBB1_206
.LBB1_157:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rbx
	movl	8(%r8), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 8(%r8)
	addq	$1, %rax
	movq	%rax, (%r8)
	cmpq	%rbx, %r13
	je	.LBB1_206
# %bb.158:                              #   in Loop: Header=BB1_157 Depth=2
	cmpl	$1, %ecx
	jg	.LBB1_156
# %bb.159:                              #   in Loop: Header=BB1_157 Depth=2
	movq	%r15, %rdi
	movq	%r8, %rsi
	callq	__srefill_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB1_206
# %bb.160:                              #   in Loop: Header=BB1_157 Depth=2
	movq	(%r8), %rax
	jmp	.LBB1_156
.LBB1_161:                              #   in Loop: Header=BB1_7 Depth=1
	movl	$8, %edx
	leaq	-160(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	leaq	-112(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	testb	$16, %r15b
	jne	.LBB1_271
# %bb.162:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_269
# %bb.163:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_270
.LBB1_164:                              #   in Loop: Header=BB1_7 Depth=1
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB1_165:                              #   in Loop: Header=BB1_7 Depth=1
	leaq	(%rbx,%rbp), %r14
	addq	$-528, %r14             # imm = 0xFDF0
	testl	$256, %r15d             # imm = 0x100
	jne	.LBB1_167
# %bb.166:                              #   in Loop: Header=BB1_7 Depth=1
	movl	-72(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB1_170
.LBB1_167:                              #   in Loop: Header=BB1_7 Depth=1
	testq	%rbx, %rbx
	movl	-72(%rbp), %ebx         # 4-byte Reload
	jle	.LBB1_169
# %bb.168:                              #   in Loop: Header=BB1_7 Depth=1
	movsbl	-1(%r14), %esi
	addq	$-1, %r14
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rdx
	callq	_ungetc_r
.LBB1_169:                              #   in Loop: Header=BB1_7 Depth=1
	leaq	-528(%rbp), %rax
	cmpq	%rax, %r14
	je	.LBB1_3
.LBB1_170:                              #   in Loop: Header=BB1_7 Depth=1
	testb	$16, %r15b
	jne	.LBB1_177
# %bb.171:                              #   in Loop: Header=BB1_7 Depth=1
	movb	$0, (%r14)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	leaq	-528(%rbp), %rsi
	xorl	%edx, %edx
	movl	-56(%rbp), %ecx         # 4-byte Reload
	callq	*-120(%rbp)             # 8-byte Folded Reload
	testb	$32, %r15b
	jne	.LBB1_213
# %bb.172:                              #   in Loop: Header=BB1_7 Depth=1
	testb	$8, %r15b
	jne	.LBB1_286
# %bb.173:                              #   in Loop: Header=BB1_7 Depth=1
	testb	$4, %r15b
	jne	.LBB1_294
# %bb.174:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movslq	(%rcx), %rcx
	testb	$1, %r15b
	jne	.LBB1_308
# %bb.175:                              #   in Loop: Header=BB1_7 Depth=1
	cmpl	$40, %ecx
	movq	-48(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_315
# %bb.176:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rdx
	movq	-88(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB1_316
.LBB1_177:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB1_321
.LBB1_178:                              #   in Loop: Header=BB1_7 Depth=1
	xorl	%ebx, %ebx
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdx         # 8-byte Reload
.LBB1_179:                              #   in Loop: Header=BB1_7 Depth=1
	movl	-72(%rbp), %r13d        # 4-byte Reload
	xorl	%ecx, %ecx
.LBB1_180:                              #   in Loop: Header=BB1_7 Depth=1
	movsbl	%r10b, %eax
	addl	$-1, %eax
	cmpl	$1, %eax
	jbe	.LBB1_327
# %bb.181:                              #   in Loop: Header=BB1_7 Depth=1
	movsbl	%bl, %eax
	addl	$-1, %eax
	cmpl	$6, %eax
	ja	.LBB1_185
# %bb.182:                              #   in Loop: Header=BB1_7 Depth=1
	cmpb	$3, %bl
	jl	.LBB1_330
# %bb.183:                              #   in Loop: Header=BB1_7 Depth=1
	jne	.LBB1_219
.LBB1_185:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%r9, %rbx
	jmp	.LBB1_222
.LBB1_186:                              # %.preheader11
                                        #   in Loop: Header=BB1_7 Depth=1
	xorl	%ebx, %ebx
	movq	-48(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_187:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	8(%r8), %rax
	cmpl	%r14d, %eax
	jge	.LBB1_242
# %bb.188:                              #   in Loop: Header=BB1_187 Depth=2
	addq	%rax, %rbx
	subq	%rax, %r14
	addq	%rax, (%r8)
	movq	%r15, %rdi
	movq	%r8, %rsi
	callq	__srefill_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB1_187
# %bb.189:                              #   in Loop: Header=BB1_7 Depth=1
	testq	%rbx, %rbx
	jne	.LBB1_243
	jmp	.LBB1_322
.LBB1_190:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_191:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%rax), %r14
	movq	(%r8), %rax
	movzbl	(%rax), %ecx
	cmpb	$0, -784(%rbp,%rcx)
	movq	%r14, %r15
	je	.LBB1_198
# %bb.192:                              # %.preheader14
                                        #   in Loop: Header=BB1_7 Depth=1
	leaq	1(%r14), %rcx
	movl	$1, %ebx
	jmp	.LBB1_194
	.p2align	4, 0x90
.LBB1_193:                              #   in Loop: Header=BB1_194 Depth=2
	movq	(%r8), %rax
	movzbl	(%rax), %edx
	addq	$1, %rbx
	leaq	1(%r15), %rcx
	cmpb	$0, -784(%rbp,%rdx)
	je	.LBB1_198
.LBB1_194:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r15
	addl	$-1, 8(%r8)
	leaq	1(%rax), %rcx
	movq	%rcx, (%r8)
	movzbl	(%rax), %eax
	movb	%al, -1(%r15)
	cmpq	%rbx, %r13
	je	.LBB1_198
# %bb.195:                              #   in Loop: Header=BB1_194 Depth=2
	cmpl	$0, 8(%r8)
	jg	.LBB1_193
# %bb.196:                              #   in Loop: Header=BB1_194 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	callq	__srefill_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB1_193
# %bb.197:                              #   in Loop: Header=BB1_7 Depth=1
	testq	%rbx, %rbx
	je	.LBB1_322
.LBB1_198:                              #   in Loop: Header=BB1_7 Depth=1
	movl	%r15d, %eax
	subl	%r14d, %eax
	je	.LBB1_3
# %bb.199:                              #   in Loop: Header=BB1_7 Depth=1
	movb	$0, (%r15)
	addl	$1, -52(%rbp)           # 4-byte Folded Spill
	movl	-72(%rbp), %r13d        # 4-byte Reload
	addl	%eax, %r13d
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_6
.LBB1_200:                              #   in Loop: Header=BB1_7 Depth=1
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edx
	xorl	%ebx, %ebx
	testb	$8, 1(%rax,%rdx)
	movq	-48(%rbp), %r15         # 8-byte Reload
	jne	.LBB1_206
# %bb.201:                              # %.preheader20
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	$1, %edx
	jmp	.LBB1_203
	.p2align	4, 0x90
.LBB1_202:                              #   in Loop: Header=BB1_203 Depth=2
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edi
	leaq	1(%rbx), %rdx
	testb	$8, 1(%rax,%rdi)
	jne	.LBB1_206
.LBB1_203:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rbx
	movl	8(%rsi), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%rsi)
	addq	$1, %rcx
	movq	%rcx, (%rsi)
	cmpq	%rbx, %r13
	je	.LBB1_206
# %bb.204:                              #   in Loop: Header=BB1_203 Depth=2
	cmpl	$1, %eax
	jg	.LBB1_202
# %bb.205:                              #   in Loop: Header=BB1_203 Depth=2
	movq	%r15, %rdi
	callq	__srefill_r
	testl	%eax, %eax
	je	.LBB1_202
.LBB1_206:                              # %.loopexit17
                                        #   in Loop: Header=BB1_7 Depth=1
	addl	-72(%rbp), %ebx         # 4-byte Folded Reload
	movl	%ebx, %r13d
	jmp	.LBB1_6
.LBB1_207:                              #   in Loop: Header=BB1_7 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB1_257
.LBB1_208:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	8(%rsi), %eax
	testl	%eax, %eax
	jg	.LBB1_210
	jmp	.LBB1_209
	.p2align	4, 0x90
.LBB1_211:                              #   in Loop: Header=BB1_210 Depth=2
	addl	$1, %r13d
	movl	8(%rsi), %eax
	addl	$-1, %eax
	movl	%eax, 8(%rsi)
	addq	$1, %rcx
	movq	%rcx, (%rsi)
	testl	%eax, %eax
	jg	.LBB1_210
.LBB1_209:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%r15, %rdi
	callq	__srefill_r
	testl	%eax, %eax
	jne	.LBB1_212
.LBB1_210:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	jne	.LBB1_211
.LBB1_212:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rbx, %r12
	jmp	.LBB1_6
.LBB1_213:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_288
# %bb.214:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_289
.LBB1_215:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rbx, %r12
	cmpl	$0, 8(%r8)
	jg	.LBB1_217
.LBB1_216:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%r15, %rdi
	movq	%r8, %rsi
	callq	__srefill_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB1_322
.LBB1_217:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%r8), %rax
	movb	(%rax), %cl
	cmpb	-1(%r12), %cl
	jne	.LBB1_3
# %bb.218:                              #   in Loop: Header=BB1_7 Depth=1
	addl	$-1, 8(%r8)
	addq	$1, %rax
	movq	%rax, (%r8)
	addl	$1, %r13d
	jmp	.LBB1_6
.LBB1_219:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%r13d, -72(%rbp)        # 4-byte Spill
	leal	-4(%rbx), %eax
	movzbl	%al, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	notq	%rax
	addq	%r9, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	addb	$1, %bl
	leaq	-529(%rbp), %rax
	addq	%rax, %r9
	movq	-48(%rbp), %r13         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_220:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r9), %esi
	movq	%r13, %rdi
	movq	%r9, %r14
	callq	_ungetc_r
	movq	%r14, %r9
	movq	-64(%rbp), %rdx         # 8-byte Reload
	addb	$-1, %bl
	addq	$-1, %r9
	cmpb	$4, %bl
	jg	.LBB1_220
# %bb.221:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	notl	%eax
	movl	-72(%rbp), %r13d        # 4-byte Reload
	addl	%eax, %r13d
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
.LBB1_222:                              #   in Loop: Header=BB1_7 Depth=1
	leaq	(%rbx,%rbp), %r14
	addq	$-528, %r14             # imm = 0xFDF0
	testl	$256, %r15d             # imm = 0x100
	je	.LBB1_228
# %bb.223:                              #   in Loop: Header=BB1_7 Depth=1
	testl	$1024, %r15d            # imm = 0x400
	jne	.LBB1_333
# %bb.224:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movsbl	-1(%r14), %esi
	movl	%esi, %eax
	orb	$32, %al
	cmpb	$101, %al
	jne	.LBB1_226
# %bb.225:                              #   in Loop: Header=BB1_7 Depth=1
	addq	$-1, %r14
	addl	$-1, %r13d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB1_227
.LBB1_226:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	_ungetc_r
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movsbl	-2(%r14), %esi
	addq	$-2, %r14
	addl	$-2, %r13d
.LBB1_227:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rbx, %rdi
	callq	_ungetc_r
	movq	-104(%rbp), %rcx        # 8-byte Reload
.LBB1_228:                              #   in Loop: Header=BB1_7 Depth=1
	testb	$16, %r15b
	jne	.LBB1_232
# %bb.229:                              #   in Loop: Header=BB1_7 Depth=1
	movb	$0, (%r14)
	movl	%r15d, %eax
	andl	$1536, %eax             # imm = 0x600
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB1_233
# %bb.230:                              #   in Loop: Header=BB1_7 Depth=1
	subq	-128(%rbp), %rcx        # 8-byte Folded Reload
	je	.LBB1_236
# %bb.231:                              #   in Loop: Header=BB1_7 Depth=1
	negq	%rcx
	movq	%r14, %rbx
	jmp	.LBB1_235
.LBB1_232:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_6
.LBB1_233:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	testq	%rax, %rax
	je	.LBB1_236
# %bb.234:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rax, %r14
	movq	-144(%rbp), %rbx        # 8-byte Reload
	leaq	1(%rbx), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%edx, %edx
	movl	$10, %ecx
	callq	_strtol_r
	movq	%rax, %rcx
	subq	%r14, %rcx
.LBB1_235:                              #   in Loop: Header=BB1_7 Depth=1
	leaq	-199(%rbp), %rax
	cmpq	%rax, %rbx
	leaq	-200(%rbp), %rax
	cmovaeq	%rax, %rbx
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	xorl	%eax, %eax
	callq	sprintf
.LBB1_236:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	leaq	-528(%rbp), %rsi
	xorl	%edx, %edx
	callq	_strtod_r
	testb	$1, %r15b
	jne	.LBB1_240
# %bb.237:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rax
	testb	$2, %r15b
	jne	.LBB1_290
# %bb.238:                              #   in Loop: Header=BB1_7 Depth=1
	cmpl	$40, %eax
	movq	-48(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_298
# %bb.239:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rax, %rcx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_299
.LBB1_240:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB1_292
# %bb.241:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB1_293
.LBB1_242:                              #   in Loop: Header=BB1_7 Depth=1
	addq	%r14, %rbx
	subl	%r14d, %eax
	movl	%eax, 8(%r8)
	addq	%r14, (%r8)
.LBB1_243:                              #   in Loop: Header=BB1_7 Depth=1
	addl	%ebx, %r13d
	jmp	.LBB1_6
.LBB1_244:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_245:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%rax), %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rcx
	callq	_fread_r
	xorl	%ecx, %ecx
	testq	%rax, %rax
	setne	%cl
	addl	%ecx, -52(%rbp)         # 4-byte Folded Spill
	testq	%rax, %rax
	je	.LBB1_322
# %bb.246:                              #   in Loop: Header=BB1_7 Depth=1
	addl	%eax, %r13d
	jmp	.LBB1_6
.LBB1_247:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_248:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%rax), %r14
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movq	%r14, %rbx
	jne	.LBB1_254
# %bb.249:                              # %.preheader18
                                        #   in Loop: Header=BB1_7 Depth=1
	addq	$-1, %r13
	leaq	1(%r14), %rdx
	jmp	.LBB1_251
	.p2align	4, 0x90
.LBB1_250:                              #   in Loop: Header=BB1_251 Depth=2
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edi
	addq	$-1, %r13
	leaq	1(%rbx), %rdx
	testb	$8, 1(%rax,%rdi)
	jne	.LBB1_254
.LBB1_251:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rbx
	addl	$-1, 8(%rsi)
	leaq	1(%rcx), %rax
	movq	%rax, (%rsi)
	movzbl	(%rcx), %eax
	movb	%al, -1(%rdx)
	testq	%r13, %r13
	je	.LBB1_254
# %bb.252:                              #   in Loop: Header=BB1_251 Depth=2
	cmpl	$0, 8(%rsi)
	jg	.LBB1_250
# %bb.253:                              #   in Loop: Header=BB1_251 Depth=2
	movq	%r15, %rdi
	callq	__srefill_r
	testl	%eax, %eax
	je	.LBB1_250
.LBB1_254:                              #   in Loop: Header=BB1_7 Depth=1
	movb	$0, (%rbx)
	subl	%r14d, %ebx
	movl	-72(%rbp), %r13d        # 4-byte Reload
	addl	%ebx, %r13d
	addl	$1, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_6
.LBB1_255:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_256:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%rax), %r13
.LBB1_257:                              #   in Loop: Header=BB1_7 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB1_259
	.p2align	4, 0x90
.LBB1_267:                              #   in Loop: Header=BB1_259 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	__srefill_r
	testl	%eax, %eax
	jne	.LBB1_268
.LBB1_258:                              #   in Loop: Header=BB1_259 Depth=2
	testq	%r14, %r14
	je	.LBB1_4
.LBB1_259:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpl	%eax, %ebx
	je	.LBB1_322
# %bb.260:                              #   in Loop: Header=BB1_259 Depth=2
	movq	(%rsi), %rax
	movzbl	(%rax), %ecx
	movslq	%ebx, %rdx
	movb	%cl, -528(%rbp,%rdx)
	addl	$-1, 8(%rsi)
	addl	$1, %ebx
	addq	$1, %rax
	movq	%rax, (%rsi)
	movslq	%ebx, %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	leaq	-528(%rbp), %rdx
	leaq	-160(%rbp), %r8
	callq	_mbrtowc_r
	cmpq	$-2, %rax
	je	.LBB1_263
# %bb.261:                              #   in Loop: Header=BB1_259 Depth=2
	testq	%rax, %rax
	je	.LBB1_264
# %bb.262:                              #   in Loop: Header=BB1_259 Depth=2
	cmpq	$-1, %rax
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jne	.LBB1_266
	jmp	.LBB1_322
	.p2align	4, 0x90
.LBB1_263:                              #   in Loop: Header=BB1_259 Depth=2
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpl	$0, 8(%rsi)
	jg	.LBB1_258
	jmp	.LBB1_267
	.p2align	4, 0x90
.LBB1_264:                              #   in Loop: Header=BB1_259 Depth=2
	testl	%r15d, %r15d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	jne	.LBB1_266
# %bb.265:                              #   in Loop: Header=BB1_259 Depth=2
	movl	$0, (%r13)
.LBB1_266:                              #   in Loop: Header=BB1_259 Depth=2
	addl	%ebx, -72(%rbp)         # 4-byte Folded Spill
	addq	$-1, %r14
	leaq	4(%r13), %rax
	testl	%r15d, %r15d
	cmoveq	%rax, %r13
	xorl	%ebx, %ebx
	cmpl	$0, 8(%rsi)
	jg	.LBB1_258
	jmp	.LBB1_267
.LBB1_269:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_270:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB1_271:                              #   in Loop: Header=BB1_7 Depth=1
	callq	__locale_ctype_ptr
	testq	%r13, %r13
	je	.LBB1_313
# %bb.272:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	movb	1(%rax,%rcx), %al
	andb	$8, %al
	jne	.LBB1_313
# %bb.273:                              # %.preheader24
                                        #   in Loop: Header=BB1_7 Depth=1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB1_274:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpl	%eax, %r14d
	je	.LBB1_322
# %bb.275:                              #   in Loop: Header=BB1_274 Depth=2
	movq	(%rsi), %rax
	movzbl	(%rax), %ecx
	movslq	%r14d, %rdx
	movb	%cl, -528(%rbp,%rdx)
	addl	$-1, 8(%rsi)
	addl	$1, %r14d
	addq	$1, %rax
	movq	%rax, (%rsi)
	movslq	%r14d, %rbx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	leaq	-528(%rbp), %rdx
	movq	%rbx, %rcx
	leaq	-160(%rbp), %r8
	callq	_mbrtowc_r
	cmpq	$-2, %rax
	je	.LBB1_282
# %bb.276:                              #   in Loop: Header=BB1_274 Depth=2
	testq	%rax, %rax
	je	.LBB1_279
# %bb.277:                              #   in Loop: Header=BB1_274 Depth=2
	cmpq	$-1, %rax
	je	.LBB1_322
# %bb.278:                              #   in Loop: Header=BB1_274 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	jmp	.LBB1_280
	.p2align	4, 0x90
.LBB1_279:                              #   in Loop: Header=BB1_274 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	xorl	%edi, %edi
.LBB1_280:                              #   in Loop: Header=BB1_274 Depth=2
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB1_305
# %bb.281:                              #   in Loop: Header=BB1_274 Depth=2
	addl	%r14d, -72(%rbp)        # 4-byte Folded Spill
	addq	$-1, %r13
	movq	-80(%rbp), %rcx         # 8-byte Reload
	leaq	4(%rcx), %rax
	testb	$16, %r15b
	cmoveq	%rax, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
.LBB1_282:                              #   in Loop: Header=BB1_274 Depth=2
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpl	$0, 8(%rsi)
	jg	.LBB1_284
# %bb.283:                              #   in Loop: Header=BB1_274 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	__srefill_r
	testl	%eax, %eax
	jne	.LBB1_312
.LBB1_284:                              #   in Loop: Header=BB1_274 Depth=2
	callq	__locale_ctype_ptr
	testq	%r13, %r13
	je	.LBB1_313
# %bb.285:                              #   in Loop: Header=BB1_274 Depth=2
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	movzbl	1(%rax,%rcx), %eax
	andb	$8, %al
	je	.LBB1_274
	jmp	.LBB1_313
.LBB1_286:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_296
# %bb.287:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_297
.LBB1_288:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_289:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	(%rcx), %rcx
.LBB1_319:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB1_320
.LBB1_290:                              #   in Loop: Header=BB1_7 Depth=1
	cmpl	$40, %eax
	movq	-48(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_301
# %bb.291:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rax, %rcx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB1_302
.LBB1_292:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB1_293:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	(%rax), %rax
	movsd	%xmm0, (%rax)
	addl	$1, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_6
.LBB1_294:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB1_310
# %bb.295:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB1_311
.LBB1_296:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_297:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB1_320
.LBB1_298:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_299:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%rcx), %rbx
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB1_303
# %bb.300:                              #   in Loop: Header=BB1_7 Depth=1
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB1_304
.LBB1_301:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB1_302:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%rcx), %rax
	movsd	%xmm0, -176(%rbp)
	fldl	-176(%rbp)
	fstpt	(%rax)
	addl	$1, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_6
.LBB1_303:                              #   in Loop: Header=BB1_7 Depth=1
	xorl	%edi, %edi
	callq	nanf
.LBB1_304:                              #   in Loop: Header=BB1_7 Depth=1
	movss	%xmm0, (%rbx)
	addl	$1, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_6
.LBB1_305:                              #   in Loop: Header=BB1_7 Depth=1
	testl	%r14d, %r14d
	movq	-64(%rbp), %rdx         # 8-byte Reload
	je	.LBB1_313
# %bb.306:                              # %.preheader22
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	-48(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_307:                              #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-529(%rbp,%rbx), %esi
	movq	%r14, %rdi
	callq	_ungetc_r
	movq	-64(%rbp), %rdx         # 8-byte Reload
	addq	$-1, %rbx
	jne	.LBB1_307
	jmp	.LBB1_313
.LBB1_308:                              #   in Loop: Header=BB1_7 Depth=1
	cmpl	$40, %ecx
	movq	-48(%rbp), %r15         # 8-byte Reload
	ja	.LBB1_317
# %bb.309:                              #   in Loop: Header=BB1_7 Depth=1
	movq	%rcx, %rdx
	movq	-88(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB1_318
.LBB1_310:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB1_311:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB1_320
.LBB1_312:                              #   in Loop: Header=BB1_7 Depth=1
	testl	%r14d, %r14d
	jne	.LBB1_322
.LBB1_313:                              #   in Loop: Header=BB1_7 Depth=1
	testb	$16, %r15b
	jne	.LBB1_5
# %bb.314:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	addl	$1, -52(%rbp)           # 4-byte Folded Spill
	jmp	.LBB1_5
.LBB1_315:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_316:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB1_320:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addl	$1, -52(%rbp)           # 4-byte Folded Spill
.LBB1_321:                              #   in Loop: Header=BB1_7 Depth=1
	leaq	-528(%rbp), %rax
	subl	%eax, %r14d
	addl	%ebx, %ecx
	addl	%r14d, %ecx
	movl	%ecx, %r13d
	jmp	.LBB1_6
.LBB1_317:                              #   in Loop: Header=BB1_7 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB1_318:                              #   in Loop: Header=BB1_7 Depth=1
	movq	(%rdx), %rcx
	jmp	.LBB1_319
.LBB1_322:
	movl	-52(%rbp), %ebx         # 4-byte Reload
	movl	-108(%rbp), %edi
	leaq	-108(%rbp), %rsi
	callq	pthread_setcancelstate
	testl	%ebx, %ebx
	je	.LBB1_325
# %bb.323:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movb	16(%rax), %al
	andb	$64, %al
	xorl	%ecx, %ecx
	cmpb	$1, %al
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %ebx
	jmp	.LBB1_326
.LBB1_324:
	movl	-108(%rbp), %edi
	leaq	-108(%rbp), %rsi
	callq	pthread_setcancelstate
.LBB1_325:
	movl	$-1, %ebx
.LBB1_326:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$744, %rsp              # imm = 0x2E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_327:
	testq	%r9, %r9
	jle	.LBB1_3
# %bb.328:
	leaq	(%r9,%rbp), %rbx
	addq	$-528, %rbx             # imm = 0xFDF0
	leaq	-528(%rbp), %r14
	movq	-48(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_329:                              # =>This Inner Loop Header: Depth=1
	movsbl	-1(%rbx), %esi
	addq	$-1, %rbx
	movq	%r15, %rdi
	callq	_ungetc_r
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%r14, %rbx
	ja	.LBB1_329
	jmp	.LBB1_3
.LBB1_330:
	testq	%r9, %r9
	jle	.LBB1_3
# %bb.331:                              # %.preheader2
	addq	$1, %r9
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB1_332:                              # =>This Inner Loop Header: Depth=1
	movsbl	-530(%rbp,%r9), %esi
	movq	%r14, %rdi
	movq	%r9, %rbx
	callq	_ungetc_r
	movq	%rbx, %r9
	movq	-64(%rbp), %rdx         # 8-byte Reload
	addq	$-1, %r9
	cmpq	$1, %r9
	jg	.LBB1_332
	jmp	.LBB1_3
.LBB1_333:
	testq	%rbx, %rbx
	jle	.LBB1_3
# %bb.334:                              # %.preheader
	addq	$1, %rbx
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB1_335:                              # =>This Inner Loop Header: Depth=1
	movsbl	-530(%rbp,%rbx), %esi
	movq	%r14, %rdi
	callq	_ungetc_r
	movq	-64(%rbp), %rdx         # 8-byte Reload
	addq	$-1, %rbx
	cmpq	$1, %rbx
	jg	.LBB1_335
	jmp	.LBB1_3
.Lfunc_end1:
	.size	__svfscanf_r, .Lfunc_end1-__svfscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_324
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_48
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_15
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
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
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_45
	.quad	.LBB1_47
	.quad	.LBB1_58
	.quad	.LBB1_60
	.quad	.LBB1_45
	.quad	.LBB1_45
	.quad	.LBB1_45
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_16
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_49
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_51
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_46
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_53
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_45
	.quad	.LBB1_47
	.quad	.LBB1_59
	.quad	.LBB1_61
	.quad	.LBB1_45
	.quad	.LBB1_45
	.quad	.LBB1_45
	.quad	.LBB1_17
	.quad	.LBB1_54
	.quad	.LBB1_14
	.quad	.LBB1_47
	.quad	.LBB1_19
	.quad	.LBB1_47
	.quad	.LBB1_24
	.quad	.LBB1_50
	.quad	.LBB1_55
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_52
	.quad	.LBB1_14
	.quad	.LBB1_57
	.quad	.LBB1_47
	.quad	.LBB1_47
	.quad	.LBB1_46
	.quad	.LBB1_47
	.quad	.LBB1_14
.LJTI1_1:
	.quad	.LBB1_68
	.quad	.LBB1_76
	.quad	.LBB1_79
	.quad	.LBB1_83
	.quad	.LBB1_105
.LJTI1_2:
	.quad	.LBB1_118
	.quad	.LBB1_136
	.quad	.LBB1_118
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_139
	.quad	.LBB1_111
	.quad	.LBB1_111
	.quad	.LBB1_111
	.quad	.LBB1_111
	.quad	.LBB1_111
	.quad	.LBB1_111
	.quad	.LBB1_111
	.quad	.LBB1_111
	.quad	.LBB1_111
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_120
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_121
	.quad	.LBB1_125
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_126
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_130
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_134
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_135
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_120
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_121
	.quad	.LBB1_125
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_126
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_130
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_134
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_136
	.quad	.LBB1_135
.LJTI1_3:
	.quad	.LBB1_92
	.quad	.LBB1_165
	.quad	.LBB1_92
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_98
	.quad	.LBB1_91
	.quad	.LBB1_91
	.quad	.LBB1_91
	.quad	.LBB1_91
	.quad	.LBB1_91
	.quad	.LBB1_91
	.quad	.LBB1_91
	.quad	.LBB1_94
	.quad	.LBB1_94
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_89
	.quad	.LBB1_89
	.quad	.LBB1_89
	.quad	.LBB1_89
	.quad	.LBB1_89
	.quad	.LBB1_89
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_96
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_89
	.quad	.LBB1_89
	.quad	.LBB1_89
	.quad	.LBB1_89
	.quad	.LBB1_89
	.quad	.LBB1_89
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_165
	.quad	.LBB1_96
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
