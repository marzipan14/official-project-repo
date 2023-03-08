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
	movzbl	(%rdx), %eax
	movl	%eax, -116(%rbp)
	testl	%eax, %eax
	je	.LBB0_2
# %bb.1:
	movq	%rdx, %r12
	movq	%rsi, %r8
	movq	%rdi, %r13
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	leaq	8(%rcx), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	xorl	%r15d, %r15d
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_6
.LBB0_2:
	movl	$0, -68(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_326
.LBB0_3:                                #   in Loop: Header=BB0_6 Depth=1
	shrl	$4, %r13d
	xorl	$1, %r13d
	addl	-68(%rbp), %r13d        # 4-byte Folded Reload
	movl	%r13d, %eax
	movl	%r13d, -68(%rbp)        # 4-byte Spill
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	movl	-80(%rbp), %r15d        # 4-byte Reload
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	movzbl	(%r12), %eax
	movl	%eax, -116(%rbp)
	testl	%eax, %eax
	je	.LBB0_326
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #       Child Loop BB0_11 Depth 3
                                        #     Child Loop BB0_209 Depth 2
                                        #     Child Loop BB0_66 Depth 2
                                        #     Child Loop BB0_108 Depth 2
                                        #     Child Loop BB0_220 Depth 2
                                        #     Child Loop BB0_86 Depth 2
                                        #     Child Loop BB0_274 Depth 2
                                        #     Child Loop BB0_309 Depth 2
                                        #     Child Loop BB0_202 Depth 2
                                        #     Child Loop BB0_251 Depth 2
                                        #     Child Loop BB0_156 Depth 2
                                        #     Child Loop BB0_193 Depth 2
                                        #     Child Loop BB0_259 Depth 2
                                        #     Child Loop BB0_186 Depth 2
	movslq	%r15d, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	%r15d, -80(%rbp)        # 4-byte Spill
.LBB0_7:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_11 Depth 3
	movq	%r12, %rbx
	addq	$1, %rbx
	callq	__locale_ctype_ptr
	movslq	-116(%rbp), %rcx
	testb	$8, 1(%rax,%rcx)
	jne	.LBB0_207
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	cmpl	$37, %ecx
	movq	-64(%rbp), %r8          # 8-byte Reload
	jne	.LBB0_214
# %bb.9:                                # %.preheader4
                                        #   in Loop: Header=BB0_7 Depth=2
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=3
	leaq	(%r14,%r14,4), %rax
	leaq	(%r15,%rax,2), %r14
	addq	$-48, %r14
	movq	%r12, %rbx
.LBB0_11:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	1(%rbx), %r12
	movzbl	(%rbx), %r15d
	cmpq	$122, %r15
	ja	.LBB0_46
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=3
	jmpq	*.LJTI0_0(,%r15,8)
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=3
	orl	$1, %r13d
	movq	%r12, %rbx
	jmp	.LBB0_11
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=3
	orl	$16, %r13d
	movq	%r12, %rbx
	jmp	.LBB0_11
.LBB0_15:                               #   in Loop: Header=BB0_11 Depth=3
	orl	$2, %r13d
	movq	%r12, %rbx
	jmp	.LBB0_11
.LBB0_16:                               #   in Loop: Header=BB0_11 Depth=3
	xorl	%eax, %eax
	cmpb	$104, 1(%rbx)
	sete	%al
	leal	4(,%rax,4), %eax
	je	.LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_11 Depth=3
	movq	%r12, %rbx
	orl	%eax, %r13d
	jmp	.LBB0_11
.LBB0_18:                               #   in Loop: Header=BB0_11 Depth=3
	xorl	%eax, %eax
	cmpb	$108, 1(%rbx)
	sete	%al
	je	.LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_11 Depth=3
	movq	%r12, %rbx
	jmp	.LBB0_22
.LBB0_20:                               #   in Loop: Header=BB0_11 Depth=3
	addq	$2, %rbx
	orl	%eax, %r13d
	jmp	.LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_11 Depth=3
	addq	$2, %rbx
.LBB0_22:                               #   in Loop: Header=BB0_11 Depth=3
	addl	$1, %eax
	orl	%eax, %r13d
	jmp	.LBB0_11
.LBB0_23:                               #   in Loop: Header=BB0_7 Depth=2
	testb	$16, %r13b
	movl	-80(%rbp), %r15d        # 4-byte Reload
	jne	.LBB0_43
# %bb.24:                               #   in Loop: Header=BB0_7 Depth=2
	testb	$8, %r13b
	jne	.LBB0_29
# %bb.25:                               #   in Loop: Header=BB0_7 Depth=2
	testb	$4, %r13b
	jne	.LBB0_31
# %bb.26:                               #   in Loop: Header=BB0_7 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rax
	testb	$1, %r13b
	jne	.LBB0_35
# %bb.27:                               #   in Loop: Header=BB0_7 Depth=2
	cmpl	$40, %eax
	ja	.LBB0_39
# %bb.28:                               #   in Loop: Header=BB0_7 Depth=2
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_40
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_33
# %bb.30:                               #   in Loop: Header=BB0_7 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_34
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=2
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_37
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=2
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_38
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=2
	movq	(%rax), %rax
	movb	%r15b, (%rax)
	jmp	.LBB0_43
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=2
	cmpl	$40, %eax
	ja	.LBB0_41
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=2
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_42
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=2
	movq	(%rax), %rax
	movw	%r15w, (%rax)
	jmp	.LBB0_43
.LBB0_39:                               #   in Loop: Header=BB0_7 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_40:                               #   in Loop: Header=BB0_7 Depth=2
	movq	(%rcx), %rax
	movl	%r15d, (%rax)
	jmp	.LBB0_43
.LBB0_41:                               #   in Loop: Header=BB0_7 Depth=2
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_42:                               #   in Loop: Header=BB0_7 Depth=2
	movq	(%rcx), %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
.LBB0_43:                               #   in Loop: Header=BB0_7 Depth=2
	movzbl	(%r12), %eax
	movl	%eax, -116(%rbp)
	testl	%eax, %eax
	movq	-48(%rbp), %r13         # 8-byte Reload
	jne	.LBB0_7
	jmp	.LBB0_326
	.p2align	4, 0x90
.LBB0_44:                               #   in Loop: Header=BB0_6 Depth=1
	movb	$4, %r15b
	cmpl	$0, 8(%r8)
	jg	.LBB0_62
	jmp	.LBB0_61
.LBB0_45:                               #   in Loop: Header=BB0_6 Depth=1
	orl	$512, %r13d             # imm = 0x200
	jmp	.LBB0_54
.LBB0_46:                               #   in Loop: Header=BB0_6 Depth=1
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movb	1(%rax,%r15), %al
	andb	$3, %al
	xorl	%ecx, %ecx
	cmpb	$1, %al
	sete	%cl
	orl	%ecx, %r13d
	jmp	.LBB0_59
.LBB0_47:                               #   in Loop: Header=BB0_6 Depth=1
	orl	$1, %r13d
.LBB0_48:                               #   in Loop: Header=BB0_6 Depth=1
	movb	$3, %r15b
	movl	$_strtoul_r, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$8, -52(%rbp)           # 4-byte Folded Spill
	cmpl	$0, 8(%r8)
	jg	.LBB0_62
	jmp	.LBB0_61
.LBB0_49:                               #   in Loop: Header=BB0_6 Depth=1
	orl	$1, %r13d
.LBB0_50:                               # %.loopexit6
                                        #   in Loop: Header=BB0_6 Depth=1
	movb	$2, %r15b
	cmpl	$0, 8(%r8)
	jg	.LBB0_62
	jmp	.LBB0_61
.LBB0_51:                               #   in Loop: Header=BB0_6 Depth=1
	leaq	-800(%rbp), %rdi
	movq	%r12, %rsi
	callq	__sccl
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r12
	orl	$64, %r13d
	movb	$1, %r15b
	cmpl	$0, 8(%r8)
	jg	.LBB0_62
	jmp	.LBB0_61
.LBB0_52:                               #   in Loop: Header=BB0_6 Depth=1
	movb	$3, %r15b
	movl	$_strtol_r, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$0, -52(%rbp)           # 4-byte Folded Spill
	cmpl	$0, 8(%r8)
	jg	.LBB0_62
	jmp	.LBB0_61
.LBB0_53:                               #   in Loop: Header=BB0_6 Depth=1
	orl	$544, %r13d             # imm = 0x220
.LBB0_54:                               #   in Loop: Header=BB0_6 Depth=1
	movb	$3, %r15b
	movl	$_strtoul_r, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$16, -52(%rbp)          # 4-byte Folded Spill
	cmpl	$0, 8(%r8)
	jg	.LBB0_62
	jmp	.LBB0_61
.LBB0_55:                               #   in Loop: Header=BB0_6 Depth=1
	movb	$3, %r15b
	movl	$_strtoul_r, %eax
	jmp	.LBB0_60
.LBB0_56:                               #   in Loop: Header=BB0_6 Depth=1
	orl	$1, %r13d
.LBB0_57:                               #   in Loop: Header=BB0_6 Depth=1
	orl	$64, %r13d
	xorl	%r15d, %r15d
	cmpl	$0, 8(%r8)
	jg	.LBB0_62
	jmp	.LBB0_61
.LBB0_58:                               #   in Loop: Header=BB0_6 Depth=1
	orl	$1, %r13d
.LBB0_59:                               #   in Loop: Header=BB0_6 Depth=1
	movb	$3, %r15b
	movl	$_strtol_r, %eax
.LBB0_60:                               #   in Loop: Header=BB0_6 Depth=1
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$10, -52(%rbp)          # 4-byte Folded Spill
	cmpl	$0, 8(%r8)
	jg	.LBB0_62
	.p2align	4, 0x90
.LBB0_61:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_323
.LBB0_62:                               #   in Loop: Header=BB0_6 Depth=1
	testb	$64, %r13b
	jne	.LBB0_68
# %bb.63:                               #   in Loop: Header=BB0_6 Depth=1
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	jne	.LBB0_66
	jmp	.LBB0_69
	.p2align	4, 0x90
.LBB0_64:                               #   in Loop: Header=BB0_66 Depth=2
	addq	$1, %rcx
	movq	%rcx, (%r8)
	movq	%r8, %rbx
.LBB0_65:                               #   in Loop: Header=BB0_66 Depth=2
	addl	$1, -80(%rbp)           # 4-byte Folded Spill
	callq	__locale_ctype_ptr
	movq	(%rbx), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movq	%rbx, %r8
	je	.LBB0_69
.LBB0_66:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%r8), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%r8)
	cmpl	$2, %eax
	jge	.LBB0_64
# %bb.67:                               #   in Loop: Header=BB0_66 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, %rbx
	callq	__ssrefill_r
	testl	%eax, %eax
	je	.LBB0_65
	jmp	.LBB0_323
	.p2align	4, 0x90
.LBB0_68:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
.LBB0_69:                               #   in Loop: Header=BB0_6 Depth=1
	cmpb	$4, %r15b
	ja	.LBB0_4
# %bb.70:                               #   in Loop: Header=BB0_6 Depth=1
	movzbl	%r15b, %eax
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_71:                               #   in Loop: Header=BB0_6 Depth=1
	testq	%r14, %r14
	movl	$1, %eax
	cmoveq	%rax, %r14
	testb	$1, %r13b
	jne	.LBB0_150
# %bb.72:                               #   in Loop: Header=BB0_6 Depth=1
	testb	$16, %r13b
	jne	.LBB0_185
# %bb.73:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_244
# %bb.74:                               #   in Loop: Header=BB0_6 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_245
.LBB0_75:                               #   in Loop: Header=BB0_6 Depth=1
	cmpq	$1, %r14
	movl	$0, %r15d
	sbbq	%r15, %r15
	orq	%r14, %r15
	testb	$16, %r13b
	jne	.LBB0_153
# %bb.76:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_189
# %bb.77:                               #   in Loop: Header=BB0_6 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_190
.LBB0_78:                               #   in Loop: Header=BB0_6 Depth=1
	cmpq	$1, %r14
	movl	$0, %r15d
	sbbq	%r15, %r15
	orq	%r14, %r15
	testb	$1, %r13b
	jne	.LBB0_160
# %bb.79:                               #   in Loop: Header=BB0_6 Depth=1
	testb	$16, %r13b
	jne	.LBB0_199
# %bb.80:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_247
# %bb.81:                               #   in Loop: Header=BB0_6 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_248
.LBB0_82:                               #   in Loop: Header=BB0_6 Depth=1
	leaq	-1(%r14), %rax
	orl	$3456, %r13d            # imm = 0xD80
	cmpq	$348, %rax              # imm = 0x15C
	movq	%r14, %r15
	movl	$349, %ecx              # imm = 0x15D
	cmovaq	%rcx, %r15
	testq	%r15, %r15
	je	.LBB0_163
# %bb.83:                               #   in Loop: Header=BB0_6 Depth=1
	addl	$-349, %r14d            # imm = 0xFEA3
	xorl	%ecx, %ecx
	cmpq	$348, %rax              # imm = 0x15C
	movl	$0, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	cmovbel	%ecx, %r14d
	xorl	%ebx, %ebx
	jmp	.LBB0_86
	.p2align	4, 0x90
.LBB0_84:                               #   in Loop: Header=BB0_86 Depth=2
	addq	$1, %rax
	movq	%rax, (%r8)
.LBB0_85:                               #   in Loop: Header=BB0_86 Depth=2
	addq	$-1, %r15
	je	.LBB0_164
.LBB0_86:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %rax
	movzbl	(%rax), %ecx
	leal	-43(%rcx), %edx
	cmpb	$77, %dl
	ja	.LBB0_164
# %bb.87:                               #   in Loop: Header=BB0_86 Depth=2
	movzbl	%dl, %edx
	jmpq	*.LJTI0_3(,%rdx,8)
.LBB0_88:                               #   in Loop: Header=BB0_86 Depth=2
	cmpl	$11, -52(%rbp)          # 4-byte Folded Reload
	jl	.LBB0_164
.LBB0_94:                               #   in Loop: Header=BB0_86 Depth=2
	andl	$-2945, %r13d           # imm = 0xF47F
	jmp	.LBB0_101
	.p2align	4, 0x90
.LBB0_90:                               #   in Loop: Header=BB0_86 Depth=2
	movslq	-52(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__ssvfscanf_r.basefix(%rdx,%rdx), %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
	andl	$-2945, %r13d           # imm = 0xF47F
	jmp	.LBB0_101
.LBB0_91:                               #   in Loop: Header=BB0_86 Depth=2
	testb	%r13b, %r13b
	jns	.LBB0_164
# %bb.92:                               #   in Loop: Header=BB0_86 Depth=2
	andl	$-129, %r13d
	jmp	.LBB0_101
.LBB0_93:                               #   in Loop: Header=BB0_86 Depth=2
	movslq	-52(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__ssvfscanf_r.basefix(%rdx,%rdx), %esi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	addq	$-1, %rdx
	cmpq	$8, %rdx
	jae	.LBB0_94
	jmp	.LBB0_164
.LBB0_95:                               #   in Loop: Header=BB0_86 Depth=2
	movl	%r13d, %edx
	andl	$1536, %edx             # imm = 0x600
	cmpl	$512, %edx              # imm = 0x200
	jne	.LBB0_164
# %bb.96:                               #   in Loop: Header=BB0_86 Depth=2
	andl	$-1793, %r13d           # imm = 0xF8FF
	orl	$1280, %r13d            # imm = 0x500
	movl	$16, -52(%rbp)          # 4-byte Folded Spill
	jmp	.LBB0_101
.LBB0_97:                               #   in Loop: Header=BB0_86 Depth=2
	testl	$2048, %r13d            # imm = 0x800
	je	.LBB0_101
# %bb.98:                               #   in Loop: Header=BB0_86 Depth=2
	movl	%r13d, %edx
	orl	$512, %edx              # imm = 0x200
	movl	-52(%rbp), %edi         # 4-byte Reload
	testl	%edi, %edi
	movl	$8, %esi
	cmovel	%esi, %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	cmovnel	%r13d, %edx
	testl	$1024, %edx             # imm = 0x400
	jne	.LBB0_100
# %bb.99:                               #   in Loop: Header=BB0_86 Depth=2
	andl	$-897, %edx             # imm = 0xFC7F
	xorl	%ecx, %ecx
	subl	$1, %r14d
	setae	%cl
	movl	$0, %esi
	cmovbl	%esi, %r14d
	addq	%rcx, %r15
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addl	$1, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%edx, %r13d
	jmp	.LBB0_102
.LBB0_100:                              #   in Loop: Header=BB0_86 Depth=2
	andl	$-1409, %edx            # imm = 0xFA7F
	movl	%edx, %r13d
	.p2align	4, 0x90
.LBB0_101:                              #   in Loop: Header=BB0_86 Depth=2
	movb	%cl, -544(%rbp,%rbx)
	addq	$1, %rbx
.LBB0_102:                              #   in Loop: Header=BB0_86 Depth=2
	movl	8(%r8), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 8(%r8)
	cmpl	$2, %ecx
	jge	.LBB0_84
# %bb.103:                              #   in Loop: Header=BB0_86 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	callq	__ssrefill_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_85
	jmp	.LBB0_164
.LBB0_104:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_localeconv_r
	leaq	-1(%r14), %rcx
	orl	$1920, %r13d            # imm = 0x780
	cmpq	$348, %rcx              # imm = 0x15C
	movq	%r14, %rdi
	movl	$349, %edx              # imm = 0x15D
	cmovaq	%rdx, %rdi
	xorl	%edx, %edx
	testq	%rdi, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	je	.LBB0_177
# %bb.105:                              #   in Loop: Header=BB0_6 Depth=1
	addl	$-349, %r14d            # imm = 0xFEA3
	cmpq	$348, %rcx              # imm = 0x15C
	cmovbel	%edx, %r14d
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	leaq	-544(%rbp), %rdx
	xorl	%ebx, %ebx
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r8          # 8-byte Reload
	jmp	.LBB0_108
	.p2align	4, 0x90
.LBB0_106:                              #   in Loop: Header=BB0_108 Depth=2
	addq	$1, %rsi
	movq	%rsi, (%r8)
.LBB0_107:                              #   in Loop: Header=BB0_108 Depth=2
	leaq	(%r9,%rbp), %rdx
	addq	$-544, %rdx             # imm = 0xFDE0
	addq	$-1, %rdi
	je	.LBB0_148
.LBB0_108:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r8), %rsi
	movzbl	(%rsi), %ecx
	leal	-43(%rcx), %eax
	cmpb	$78, %al
	ja	.LBB0_135
# %bb.109:                              #   in Loop: Header=BB0_108 Depth=2
	movzbl	%al, %eax
	jmpq	*.LJTI0_2(,%rax,8)
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=2
	movsbl	%r10b, %eax
	movsbl	%bl, %edx
	addl	%eax, %edx
	jne	.LBB0_148
# %bb.111:                              #   in Loop: Header=BB0_108 Depth=2
	andl	$-385, %r13d            # imm = 0xFE7F
.LBB0_112:                              #   in Loop: Header=BB0_108 Depth=2
	movl	%r10d, %edx
.LBB0_113:                              #   in Loop: Header=BB0_108 Depth=2
	movl	%ebx, %eax
.LBB0_114:                              #   in Loop: Header=BB0_108 Depth=2
	movb	%cl, -544(%rbp,%r9)
	addq	$1, %r9
	movl	%edx, %r10d
	movl	%eax, %ebx
.LBB0_115:                              #   in Loop: Header=BB0_108 Depth=2
	addl	$1, -80(%rbp)           # 4-byte Folded Spill
	movl	8(%r8), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 8(%r8)
	cmpl	$2, %eax
	jge	.LBB0_106
# %bb.116:                              #   in Loop: Header=BB0_108 Depth=2
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rsi
	movq	%r9, %r15
	movq	%r14, -88(%rbp)         # 8-byte Spill
	movq	%r13, %r14
	movq	%r10, %r13
	callq	__ssrefill_r
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%r13, %r10
	movq	%r14, %r13
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r15, %r9
	movq	-64(%rbp), %r8          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_107
	jmp	.LBB0_148
.LBB0_117:                              #   in Loop: Header=BB0_108 Depth=2
	testb	%r13b, %r13b
	jns	.LBB0_148
# %bb.118:                              #   in Loop: Header=BB0_108 Depth=2
	andl	$-129, %r13d
	jmp	.LBB0_112
.LBB0_119:                              #   in Loop: Header=BB0_108 Depth=2
	movb	$2, %dl
	movl	%ebx, %eax
	cmpb	$1, %r10b
	je	.LBB0_114
	jmp	.LBB0_148
.LBB0_120:                              #   in Loop: Header=BB0_108 Depth=2
	movl	%r13d, %eax
	andl	$1280, %eax             # imm = 0x500
	cmpl	$1024, %eax             # imm = 0x400
	je	.LBB0_123
# %bb.121:                              #   in Loop: Header=BB0_108 Depth=2
	testl	$1024, %r13d            # imm = 0x400
	je	.LBB0_148
# %bb.122:                              #   in Loop: Header=BB0_108 Depth=2
	cmpq	$0, -112(%rbp)          # 8-byte Folded Reload
	je	.LBB0_148
.LBB0_123:                              #   in Loop: Header=BB0_108 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rdi, %r11
	movq	%rax, %rdi
	subq	-136(%rbp), %rdi        # 8-byte Folded Reload
	testl	$512, %r13d             # imm = 0x200
	movq	-144(%rbp), %rax        # 8-byte Reload
	cmoveq	%rdi, %rax
	movq	%r11, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rax        # 8-byte Reload
	cmoveq	%rdx, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	andl	$-1921, %r13d           # imm = 0xF87F
	orl	$384, %r13d             # imm = 0x180
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB0_112
.LBB0_124:                              #   in Loop: Header=BB0_108 Depth=2
	movb	$3, %al
	movl	%r10d, %edx
	cmpb	$2, %bl
	je	.LBB0_114
	jmp	.LBB0_148
.LBB0_125:                              #   in Loop: Header=BB0_108 Depth=2
	movl	%r13d, %eax
	andl	$1792, %eax             # imm = 0x700
	cmpl	$1792, %eax             # imm = 0x700
	jne	.LBB0_141
# %bb.126:                              #   in Loop: Header=BB0_108 Depth=2
	cmpq	$0, -112(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_141
# %bb.127:                              #   in Loop: Header=BB0_108 Depth=2
	testb	%bl, %bl
	jne	.LBB0_141
# %bb.128:                              #   in Loop: Header=BB0_108 Depth=2
	andl	$-1921, %r13d           # imm = 0xF87F
	movb	$1, %al
	xorl	%edx, %edx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%r10d, %edx
	jmp	.LBB0_114
.LBB0_129:                              #   in Loop: Header=BB0_108 Depth=2
	movl	%r13d, %eax
	andl	$1792, %eax             # imm = 0x700
	cmpl	$1792, %eax             # imm = 0x700
	jne	.LBB0_143
# %bb.130:                              #   in Loop: Header=BB0_108 Depth=2
	cmpq	$0, -112(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_143
# %bb.131:                              #   in Loop: Header=BB0_108 Depth=2
	testb	%r10b, %r10b
	jne	.LBB0_143
# %bb.132:                              #   in Loop: Header=BB0_108 Depth=2
	andl	$-1921, %r13d           # imm = 0xF87F
	movb	$1, %dl
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB0_113
.LBB0_133:                              #   in Loop: Header=BB0_108 Depth=2
	movb	$7, %al
	movl	%r10d, %edx
	cmpb	$6, %bl
	je	.LBB0_114
	jmp	.LBB0_148
.LBB0_134:                              #   in Loop: Header=BB0_108 Depth=2
	movb	$8, %al
	movl	%r10d, %edx
	cmpb	$7, %bl
	je	.LBB0_114
	jmp	.LBB0_148
.LBB0_135:                              #   in Loop: Header=BB0_108 Depth=2
	testl	$512, %r13d             # imm = 0x200
	je	.LBB0_148
# %bb.136:                              #   in Loop: Header=BB0_108 Depth=2
	movq	-176(%rbp), %rax        # 8-byte Reload
	cmpb	(%rax), %cl
	jne	.LBB0_148
# %bb.137:                              #   in Loop: Header=BB0_108 Depth=2
	andl	$-641, %r13d            # imm = 0xFD7F
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB0_112
.LBB0_138:                              #   in Loop: Header=BB0_108 Depth=2
	testl	$256, %r13d             # imm = 0x100
	je	.LBB0_110
# %bb.139:                              #   in Loop: Header=BB0_108 Depth=2
	andl	$-129, %r13d
	addq	$1, -112(%rbp)          # 8-byte Folded Spill
	testl	%r14d, %r14d
	je	.LBB0_147
# %bb.140:                              #   in Loop: Header=BB0_108 Depth=2
	addl	$-1, %r14d
	addq	$1, %rdi
	jmp	.LBB0_115
.LBB0_141:                              #   in Loop: Header=BB0_108 Depth=2
	cmpb	$5, %bl
	je	.LBB0_146
# %bb.142:                              #   in Loop: Header=BB0_108 Depth=2
	cmpb	$3, %bl
	je	.LBB0_146
	jmp	.LBB0_148
.LBB0_143:                              #   in Loop: Header=BB0_108 Depth=2
	movb	$3, %dl
	cmpb	$2, %r10b
	je	.LBB0_113
# %bb.144:                              #   in Loop: Header=BB0_108 Depth=2
	cmpb	$4, %bl
	je	.LBB0_146
# %bb.145:                              #   in Loop: Header=BB0_108 Depth=2
	cmpb	$1, %bl
	jne	.LBB0_148
.LBB0_146:                              #   in Loop: Header=BB0_108 Depth=2
	addb	$1, %bl
	jmp	.LBB0_112
.LBB0_147:                              #   in Loop: Header=BB0_108 Depth=2
	xorl	%r14d, %r14d
	jmp	.LBB0_115
.LBB0_148:                              #   in Loop: Header=BB0_6 Depth=1
	cmpq	$0, -112(%rbp)          # 8-byte Folded Reload
	je	.LBB0_178
# %bb.149:                              #   in Loop: Header=BB0_6 Depth=1
	andl	$-257, %r13d            # imm = 0xFEFF
	movl	-80(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB0_179
.LBB0_150:                              #   in Loop: Header=BB0_6 Depth=1
	movl	$8, %edx
	leaq	-168(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	andl	$16, %r13d
	jne	.LBB0_206
# %bb.151:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_255
# %bb.152:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_256
.LBB0_153:                              #   in Loop: Header=BB0_6 Depth=1
	movq	(%r8), %rax
	movzbl	(%rax), %ecx
	cmpb	$0, -800(%rbp,%rcx)
	je	.LBB0_326
# %bb.154:                              # %.preheader17
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$1, %ecx
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_156
	.p2align	4, 0x90
.LBB0_155:                              #   in Loop: Header=BB0_156 Depth=2
	movzbl	(%rax), %edx
	leaq	1(%rbx), %rcx
	cmpb	$0, -800(%rbp,%rdx)
	je	.LBB0_205
.LBB0_156:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rbx
	movl	8(%r8), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 8(%r8)
	addq	$1, %rax
	movq	%rax, (%r8)
	cmpq	%rbx, %r15
	je	.LBB0_205
# %bb.157:                              #   in Loop: Header=BB0_156 Depth=2
	cmpl	$1, %ecx
	jg	.LBB0_155
# %bb.158:                              #   in Loop: Header=BB0_156 Depth=2
	movq	%r13, %rdi
	movq	%r8, %rsi
	callq	__ssrefill_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB0_205
# %bb.159:                              #   in Loop: Header=BB0_156 Depth=2
	movq	(%r8), %rax
	jmp	.LBB0_155
.LBB0_160:                              #   in Loop: Header=BB0_6 Depth=1
	movl	$8, %edx
	leaq	-168(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	leaq	-116(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	testb	$16, %r13b
	jne	.LBB0_271
# %bb.161:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_269
# %bb.162:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_270
.LBB0_163:                              #   in Loop: Header=BB0_6 Depth=1
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB0_164:                              #   in Loop: Header=BB0_6 Depth=1
	leaq	(%rbx,%rbp), %r14
	addq	$-544, %r14             # imm = 0xFDE0
	testl	$256, %r13d             # imm = 0x100
	jne	.LBB0_166
# %bb.165:                              #   in Loop: Header=BB0_6 Depth=1
	movl	-80(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB0_169
.LBB0_166:                              #   in Loop: Header=BB0_6 Depth=1
	testq	%rbx, %rbx
	jle	.LBB0_168
# %bb.167:                              #   in Loop: Header=BB0_6 Depth=1
	movsbl	-1(%r14), %esi
	addq	$-1, %r14
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r8, %rdx
	callq	_sungetc_r
.LBB0_168:                              #   in Loop: Header=BB0_6 Depth=1
	movl	-80(%rbp), %ebx         # 4-byte Reload
	leaq	-544(%rbp), %rax
	cmpq	%rax, %r14
	je	.LBB0_326
.LBB0_169:                              #   in Loop: Header=BB0_6 Depth=1
	testb	$16, %r13b
	jne	.LBB0_176
# %bb.170:                              #   in Loop: Header=BB0_6 Depth=1
	movb	$0, (%r14)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	leaq	-544(%rbp), %rsi
	xorl	%edx, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	callq	*-128(%rbp)             # 8-byte Folded Reload
	testb	$32, %r13b
	jne	.LBB0_212
# %bb.171:                              #   in Loop: Header=BB0_6 Depth=1
	testb	$8, %r13b
	jne	.LBB0_286
# %bb.172:                              #   in Loop: Header=BB0_6 Depth=1
	testb	$4, %r13b
	jne	.LBB0_296
# %bb.173:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movslq	(%rcx), %rcx
	testb	$1, %r13b
	jne	.LBB0_310
# %bb.174:                              #   in Loop: Header=BB0_6 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_319
# %bb.175:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_320
.LBB0_176:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB0_315
.LBB0_177:                              #   in Loop: Header=BB0_6 Depth=1
	xorl	%ebx, %ebx
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r8          # 8-byte Reload
.LBB0_178:                              #   in Loop: Header=BB0_6 Depth=1
	movl	-80(%rbp), %r15d        # 4-byte Reload
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB0_179:                              #   in Loop: Header=BB0_6 Depth=1
	movsbl	%r10b, %eax
	addl	$-1, %eax
	cmpl	$1, %eax
	jbe	.LBB0_327
# %bb.180:                              #   in Loop: Header=BB0_6 Depth=1
	movsbl	%bl, %eax
	addl	$-1, %eax
	cmpl	$6, %eax
	ja	.LBB0_184
# %bb.181:                              #   in Loop: Header=BB0_6 Depth=1
	cmpb	$3, %bl
	jl	.LBB0_330
# %bb.182:                              #   in Loop: Header=BB0_6 Depth=1
	jne	.LBB0_219
.LBB0_184:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%r9, %rbx
	jmp	.LBB0_222
.LBB0_185:                              # %.preheader12
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%ebx, %ebx
	movq	-48(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_186:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	8(%r8), %rax
	cmpl	%r14d, %eax
	jge	.LBB0_242
# %bb.187:                              #   in Loop: Header=BB0_186 Depth=2
	addq	%rax, %rbx
	subq	%rax, %r14
	addq	%rax, (%r8)
	movq	%r15, %rdi
	movq	%r8, %rsi
	callq	__ssrefill_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_186
# %bb.188:                              #   in Loop: Header=BB0_6 Depth=1
	testq	%rbx, %rbx
	jne	.LBB0_243
	jmp	.LBB0_323
.LBB0_189:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_190:                              #   in Loop: Header=BB0_6 Depth=1
	movq	(%rax), %r14
	movq	(%r8), %rax
	movzbl	(%rax), %ecx
	cmpb	$0, -800(%rbp,%rcx)
	movq	%r14, %r13
	je	.LBB0_197
# %bb.191:                              # %.preheader15
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%r8, %rsi
	leaq	1(%r14), %rcx
	movl	$1, %ebx
	jmp	.LBB0_193
	.p2align	4, 0x90
.LBB0_192:                              #   in Loop: Header=BB0_193 Depth=2
	movq	(%rsi), %rax
	movzbl	(%rax), %edx
	addq	$1, %rbx
	leaq	1(%r13), %rcx
	cmpb	$0, -800(%rbp,%rdx)
	je	.LBB0_197
.LBB0_193:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %r13
	addl	$-1, 8(%rsi)
	leaq	1(%rax), %rcx
	movq	%rcx, (%rsi)
	movzbl	(%rax), %eax
	movb	%al, -1(%r13)
	cmpq	%rbx, %r15
	je	.LBB0_197
# %bb.194:                              #   in Loop: Header=BB0_193 Depth=2
	cmpl	$0, 8(%rsi)
	jg	.LBB0_192
# %bb.195:                              #   in Loop: Header=BB0_193 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	__ssrefill_r
	movq	-64(%rbp), %rsi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_192
# %bb.196:                              #   in Loop: Header=BB0_6 Depth=1
	testq	%rbx, %rbx
	je	.LBB0_323
.LBB0_197:                              #   in Loop: Header=BB0_6 Depth=1
	movl	%r13d, %eax
	subl	%r14d, %eax
	je	.LBB0_326
# %bb.198:                              #   in Loop: Header=BB0_6 Depth=1
	movb	$0, (%r13)
	addl	$1, -68(%rbp)           # 4-byte Folded Spill
	movl	-80(%rbp), %r15d        # 4-byte Reload
	addl	%eax, %r15d
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_5
.LBB0_199:                              #   in Loop: Header=BB0_6 Depth=1
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %edx
	xorl	%ebx, %ebx
	testb	$8, 1(%rax,%rdx)
	movq	-48(%rbp), %r13         # 8-byte Reload
	jne	.LBB0_205
# %bb.200:                              # %.preheader21
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$1, %edx
	jmp	.LBB0_202
	.p2align	4, 0x90
.LBB0_201:                              #   in Loop: Header=BB0_202 Depth=2
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %esi
	leaq	1(%rbx), %rdx
	testb	$8, 1(%rax,%rsi)
	jne	.LBB0_205
.LBB0_202:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rbx
	movl	8(%r8), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%r8)
	addq	$1, %rcx
	movq	%rcx, (%r8)
	cmpq	%rbx, %r15
	je	.LBB0_205
# %bb.203:                              #   in Loop: Header=BB0_202 Depth=2
	cmpl	$1, %eax
	jg	.LBB0_201
# %bb.204:                              #   in Loop: Header=BB0_202 Depth=2
	movq	%r13, %rdi
	movq	%r8, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	je	.LBB0_201
.LBB0_205:                              # %.loopexit18
                                        #   in Loop: Header=BB0_6 Depth=1
	addl	-80(%rbp), %ebx         # 4-byte Folded Reload
	movl	%ebx, %r15d
	jmp	.LBB0_5
.LBB0_206:                              #   in Loop: Header=BB0_6 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB0_257
.LBB0_207:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	8(%r8), %eax
	testl	%eax, %eax
	jg	.LBB0_209
	jmp	.LBB0_208
	.p2align	4, 0x90
.LBB0_210:                              #   in Loop: Header=BB0_209 Depth=2
	addl	$1, %r15d
	movl	8(%r8), %eax
	addl	$-1, %eax
	movl	%eax, 8(%r8)
	addq	$1, %rcx
	movq	%rcx, (%r8)
	testl	%eax, %eax
	jg	.LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%r13, %rdi
	movq	%r8, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_211
.LBB0_209:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	jne	.LBB0_210
.LBB0_211:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rbx, %r12
	jmp	.LBB0_5
.LBB0_212:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_288
# %bb.213:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_289
.LBB0_214:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rbx, %r12
.LBB0_215:                              #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, 8(%r8)
	movq	%r8, %rbx
	jg	.LBB0_217
# %bb.216:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_323
.LBB0_217:                              #   in Loop: Header=BB0_6 Depth=1
	movq	(%rbx), %rax
	movb	(%rax), %cl
	cmpb	-1(%r12), %cl
	jne	.LBB0_326
# %bb.218:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rbx, %r8
	addl	$-1, 8(%rbx)
	addq	$1, %rax
	movq	%rax, (%rbx)
	movl	-80(%rbp), %r15d        # 4-byte Reload
	addl	$1, %r15d
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_5
.LBB0_219:                              #   in Loop: Header=BB0_6 Depth=1
	movl	%r15d, -80(%rbp)        # 4-byte Spill
	leal	-4(%rbx), %eax
	movzbl	%al, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	notq	%rax
	addq	%r9, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	addb	$1, %bl
	leaq	-545(%rbp), %rax
	addq	%rax, %r9
	movq	-48(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_220:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r9), %esi
	movq	%r15, %rdi
	movq	%r8, %rdx
	movq	%r9, %r14
	callq	_sungetc_r
	movq	%r14, %r9
	movq	-64(%rbp), %r8          # 8-byte Reload
	addb	$-1, %bl
	addq	$-1, %r9
	cmpb	$4, %bl
	jg	.LBB0_220
# %bb.221:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	notl	%eax
	movl	-80(%rbp), %r15d        # 4-byte Reload
	addl	%eax, %r15d
	movq	-88(%rbp), %rbx         # 8-byte Reload
.LBB0_222:                              #   in Loop: Header=BB0_6 Depth=1
	leaq	(%rbx,%rbp), %r14
	addq	$-544, %r14             # imm = 0xFDE0
	testl	$256, %r13d             # imm = 0x100
	je	.LBB0_228
# %bb.223:                              #   in Loop: Header=BB0_6 Depth=1
	testl	$1024, %r13d            # imm = 0x400
	jne	.LBB0_333
# %bb.224:                              #   in Loop: Header=BB0_6 Depth=1
	movsbl	-1(%r14), %esi
	movl	%esi, %eax
	orb	$32, %al
	cmpb	$101, %al
	jne	.LBB0_226
# %bb.225:                              #   in Loop: Header=BB0_6 Depth=1
	addq	$-1, %r14
	addl	$-1, %r15d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_227
.LBB0_226:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r8, %rdx
	callq	_sungetc_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	movsbl	-2(%r14), %esi
	addq	$-2, %r14
	addl	$-2, %r15d
.LBB0_227:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rbx, %rdi
	movq	%r8, %rdx
	callq	_sungetc_r
.LBB0_228:                              #   in Loop: Header=BB0_6 Depth=1
	testb	$16, %r13b
	jne	.LBB0_232
# %bb.229:                              #   in Loop: Header=BB0_6 Depth=1
	movb	$0, (%r14)
	movl	%r13d, %eax
	andl	$1536, %eax             # imm = 0x600
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB0_233
# %bb.230:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-112(%rbp), %rdx        # 8-byte Reload
	subq	-136(%rbp), %rdx        # 8-byte Folded Reload
	je	.LBB0_236
# %bb.231:                              #   in Loop: Header=BB0_6 Depth=1
	negq	%rdx
	movq	%r14, %rbx
	jmp	.LBB0_235
.LBB0_232:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_5
.LBB0_233:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	testq	%rax, %rax
	je	.LBB0_236
# %bb.234:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-152(%rbp), %rbx        # 8-byte Reload
	leaq	1(%rbx), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%edx, %edx
	movl	$10, %ecx
	movq	%rax, %r14
	callq	_strtol_r
	movq	%rax, %rdx
	subq	%r14, %rdx
.LBB0_235:                              #   in Loop: Header=BB0_6 Depth=1
	leaq	-215(%rbp), %rax
	cmpq	%rax, %rbx
	leaq	-216(%rbp), %rax
	cmovaeq	%rax, %rbx
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	sprintf
.LBB0_236:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	leaq	-544(%rbp), %rsi
	xorl	%edx, %edx
	callq	_strtod_r
	testb	$1, %r13b
	jne	.LBB0_240
# %bb.237:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rax
	testb	$2, %r13b
	jne	.LBB0_292
# %bb.238:                              #   in Loop: Header=BB0_6 Depth=1
	cmpl	$40, %eax
	movq	-48(%rbp), %r13         # 8-byte Reload
	ja	.LBB0_300
# %bb.239:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_301
.LBB0_240:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB0_294
# %bb.241:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB0_295
.LBB0_242:                              #   in Loop: Header=BB0_6 Depth=1
	addq	%r14, %rbx
	subl	%r14d, %eax
	movl	%eax, 8(%r8)
	addq	%r14, (%r8)
.LBB0_243:                              #   in Loop: Header=BB0_6 Depth=1
	movl	-80(%rbp), %r15d        # 4-byte Reload
	addl	%ebx, %r15d
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_5
.LBB0_244:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_245:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	(%rax), %rsi
	movl	$1, %edx
	movq	%r14, %rcx
	movq	%r8, %rbx
	callq	_sfread_r
	testq	%rax, %rax
	je	.LBB0_323
# %bb.246:                              #   in Loop: Header=BB0_6 Depth=1
	movl	-80(%rbp), %r15d        # 4-byte Reload
	addl	%eax, %r15d
	addl	$1, -68(%rbp)           # 4-byte Folded Spill
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_5
.LBB0_247:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_248:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	(%rax), %r14
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movq	%r14, %rbx
	jne	.LBB0_254
# %bb.249:                              # %.preheader19
                                        #   in Loop: Header=BB0_6 Depth=1
	addq	$-1, %r15
	leaq	1(%r14), %rdx
	jmp	.LBB0_251
	.p2align	4, 0x90
.LBB0_250:                              #   in Loop: Header=BB0_251 Depth=2
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %esi
	addq	$-1, %r15
	leaq	1(%rbx), %rdx
	testb	$8, 1(%rax,%rsi)
	jne	.LBB0_254
.LBB0_251:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rbx
	addl	$-1, 8(%r8)
	leaq	1(%rcx), %rax
	movq	%rax, (%r8)
	movzbl	(%rcx), %eax
	movb	%al, -1(%rdx)
	testq	%r15, %r15
	je	.LBB0_254
# %bb.252:                              #   in Loop: Header=BB0_251 Depth=2
	cmpl	$0, 8(%r8)
	jg	.LBB0_250
# %bb.253:                              #   in Loop: Header=BB0_251 Depth=2
	movq	%r13, %rdi
	movq	%r8, %rsi
	callq	__ssrefill_r
	testl	%eax, %eax
	je	.LBB0_250
.LBB0_254:                              #   in Loop: Header=BB0_6 Depth=1
	movb	$0, (%rbx)
	subl	%r14d, %ebx
	movl	-80(%rbp), %r15d        # 4-byte Reload
	addl	%ebx, %r15d
	addl	$1, -68(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_5
.LBB0_255:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_256:                              #   in Loop: Header=BB0_6 Depth=1
	movq	(%rax), %r15
.LBB0_257:                              #   in Loop: Header=BB0_6 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB0_259
	.p2align	4, 0x90
.LBB0_258:                              #   in Loop: Header=BB0_259 Depth=2
	testq	%r14, %r14
	je	.LBB0_3
.LBB0_259:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	cmpl	%eax, %ebx
	je	.LBB0_323
# %bb.260:                              #   in Loop: Header=BB0_259 Depth=2
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
	leaq	-168(%rbp), %r8
	callq	_mbrtowc_r
	cmpq	$-2, %rax
	je	.LBB0_266
# %bb.261:                              #   in Loop: Header=BB0_259 Depth=2
	testq	%rax, %rax
	je	.LBB0_263
# %bb.262:                              #   in Loop: Header=BB0_259 Depth=2
	cmpq	$-1, %rax
	jne	.LBB0_265
	jmp	.LBB0_323
	.p2align	4, 0x90
.LBB0_263:                              #   in Loop: Header=BB0_259 Depth=2
	testl	%r13d, %r13d
	jne	.LBB0_265
# %bb.264:                              #   in Loop: Header=BB0_259 Depth=2
	movl	$0, (%r15)
.LBB0_265:                              #   in Loop: Header=BB0_259 Depth=2
	addl	%ebx, -80(%rbp)         # 4-byte Folded Spill
	addq	$-1, %r14
	leaq	4(%r15), %rax
	testl	%r13d, %r13d
	cmoveq	%rax, %r15
	xorl	%ebx, %ebx
.LBB0_266:                              #   in Loop: Header=BB0_259 Depth=2
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpl	$0, 8(%rsi)
	jg	.LBB0_258
# %bb.267:                              #   in Loop: Header=BB0_259 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	__ssrefill_r
	testl	%eax, %eax
	je	.LBB0_258
# %bb.268:                              #   in Loop: Header=BB0_6 Depth=1
	testl	%ebx, %ebx
	je	.LBB0_3
	jmp	.LBB0_323
.LBB0_269:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_270:                              #   in Loop: Header=BB0_6 Depth=1
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB0_271:                              #   in Loop: Header=BB0_6 Depth=1
	callq	__locale_ctype_ptr
	testq	%r15, %r15
	je	.LBB0_317
# %bb.272:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %ecx
	movb	1(%rax,%rcx), %al
	andb	$8, %al
	jne	.LBB0_317
# %bb.273:                              # %.preheader25
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_274:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpl	%eax, %r14d
	je	.LBB0_323
# %bb.275:                              #   in Loop: Header=BB0_274 Depth=2
	movq	(%rsi), %rax
	movzbl	(%rax), %ecx
	movslq	%r14d, %rdx
	movb	%cl, -544(%rbp,%rdx)
	addl	$-1, 8(%rsi)
	addl	$1, %r14d
	addq	$1, %rax
	movq	%rax, (%rsi)
	movslq	%r14d, %rbx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	leaq	-544(%rbp), %rdx
	movq	%rbx, %rcx
	leaq	-168(%rbp), %r8
	callq	_mbrtowc_r
	cmpq	$-2, %rax
	je	.LBB0_282
# %bb.276:                              #   in Loop: Header=BB0_274 Depth=2
	testq	%rax, %rax
	je	.LBB0_279
# %bb.277:                              #   in Loop: Header=BB0_274 Depth=2
	cmpq	$-1, %rax
	je	.LBB0_323
# %bb.278:                              #   in Loop: Header=BB0_274 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	jmp	.LBB0_280
	.p2align	4, 0x90
.LBB0_279:                              #   in Loop: Header=BB0_274 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	xorl	%edi, %edi
.LBB0_280:                              #   in Loop: Header=BB0_274 Depth=2
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB0_307
# %bb.281:                              #   in Loop: Header=BB0_274 Depth=2
	addl	%r14d, -80(%rbp)        # 4-byte Folded Spill
	addq	$-1, %r15
	movq	-88(%rbp), %rcx         # 8-byte Reload
	leaq	4(%rcx), %rax
	testb	$16, %r13b
	cmoveq	%rax, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
.LBB0_282:                              #   in Loop: Header=BB0_274 Depth=2
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpl	$0, 8(%rsi)
	jg	.LBB0_284
# %bb.283:                              #   in Loop: Header=BB0_274 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	__ssrefill_r
	testl	%eax, %eax
	jne	.LBB0_316
.LBB0_284:                              #   in Loop: Header=BB0_274 Depth=2
	callq	__locale_ctype_ptr
	testq	%r15, %r15
	je	.LBB0_317
# %bb.285:                              #   in Loop: Header=BB0_274 Depth=2
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	(%r8), %rcx
	movzbl	(%rcx), %ecx
	movzbl	1(%rax,%rcx), %eax
	andb	$8, %al
	je	.LBB0_274
	jmp	.LBB0_317
.LBB0_286:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_298
# %bb.287:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_299
.LBB0_288:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_289:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	(%rcx), %rcx
.LBB0_290:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rax, (%rcx)
.LBB0_291:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB0_314
.LBB0_292:                              #   in Loop: Header=BB0_6 Depth=1
	cmpl	$40, %eax
	movq	-48(%rbp), %r13         # 8-byte Reload
	ja	.LBB0_303
# %bb.293:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rax, %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB0_304
.LBB0_294:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB0_295:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	(%rax), %rax
	movsd	%xmm0, (%rax)
	addl	$1, -68(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_5
.LBB0_296:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB0_312
# %bb.297:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB0_313
.LBB0_298:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_299:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB0_314
.LBB0_300:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_301:                              #   in Loop: Header=BB0_6 Depth=1
	movq	(%rcx), %rbx
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB0_305
# %bb.302:                              #   in Loop: Header=BB0_6 Depth=1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB0_306
.LBB0_303:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB0_304:                              #   in Loop: Header=BB0_6 Depth=1
	movq	(%rcx), %rax
	movsd	%xmm0, -184(%rbp)
	fldl	-184(%rbp)
	fstpt	(%rax)
	addl	$1, -68(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_5
.LBB0_305:                              #   in Loop: Header=BB0_6 Depth=1
	xorl	%edi, %edi
	callq	nanf
.LBB0_306:                              #   in Loop: Header=BB0_6 Depth=1
	movss	%xmm0, (%rbx)
	addl	$1, -68(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_5
.LBB0_307:                              #   in Loop: Header=BB0_6 Depth=1
	testl	%r14d, %r14d
	je	.LBB0_317
# %bb.308:                              # %.preheader23
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_309:                              #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-545(%rbp,%rbx), %esi
	movq	%r14, %rdi
	movq	%r8, %rdx
	callq	_sungetc_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	addq	$-1, %rbx
	jne	.LBB0_309
	jmp	.LBB0_317
.LBB0_310:                              #   in Loop: Header=BB0_6 Depth=1
	cmpl	$40, %ecx
	ja	.LBB0_321
# %bb.311:                              #   in Loop: Header=BB0_6 Depth=1
	movq	%rcx, %rdx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB0_322
.LBB0_312:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB0_313:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
.LBB0_314:                              #   in Loop: Header=BB0_6 Depth=1
	addl	$1, -68(%rbp)           # 4-byte Folded Spill
.LBB0_315:                              #   in Loop: Header=BB0_6 Depth=1
	leaq	-544(%rbp), %rax
	subl	%eax, %r14d
	addl	%ebx, %edx
	addl	%r14d, %edx
	movl	%edx, %r15d
	jmp	.LBB0_5
.LBB0_316:                              #   in Loop: Header=BB0_6 Depth=1
	testl	%r14d, %r14d
	jne	.LBB0_323
.LBB0_317:                              #   in Loop: Header=BB0_6 Depth=1
	testb	$16, %r13b
	jne	.LBB0_4
# %bb.318:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	addl	$1, -68(%rbp)           # 4-byte Folded Spill
	jmp	.LBB0_4
.LBB0_319:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_320:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB0_291
.LBB0_321:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB0_322:                              #   in Loop: Header=BB0_6 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	(%rdx), %rcx
	jmp	.LBB0_290
.LBB0_323:
	movl	-68(%rbp), %edx         # 4-byte Reload
	testl	%edx, %edx
	je	.LBB0_325
# %bb.324:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movb	16(%rax), %al
	andb	$64, %al
	xorl	%ecx, %ecx
	cmpb	$1, %al
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB0_326
.LBB0_325:                              # %.loopexit8
	movl	$-1, -68(%rbp)          # 4-byte Folded Spill
.LBB0_326:
	movl	$42, __A_VARIABLE(%rip)
	movl	-68(%rbp), %eax         # 4-byte Reload
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_327:
	testq	%r9, %r9
	jle	.LBB0_326
# %bb.328:
	leaq	(%r9,%rbp), %rbx
	addq	$-544, %rbx             # imm = 0xFDE0
	leaq	-544(%rbp), %r14
	movq	-48(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_329:                              # =>This Inner Loop Header: Depth=1
	movsbl	-1(%rbx), %esi
	addq	$-1, %rbx
	movq	%r15, %rdi
	movq	%r8, %rdx
	callq	_sungetc_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	cmpq	%r14, %rbx
	ja	.LBB0_329
	jmp	.LBB0_326
.LBB0_330:
	testq	%r9, %r9
	jle	.LBB0_326
# %bb.331:                              # %.preheader2
	addq	$1, %r9
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB0_332:                              # =>This Inner Loop Header: Depth=1
	movsbl	-546(%rbp,%r9), %esi
	movq	%r14, %rdi
	movq	%r8, %rdx
	movq	%r9, %rbx
	callq	_sungetc_r
	movq	%rbx, %r9
	movq	-64(%rbp), %r8          # 8-byte Reload
	addq	$-1, %r9
	cmpq	$1, %r9
	jg	.LBB0_332
	jmp	.LBB0_326
.LBB0_333:
	testq	%rbx, %rbx
	jle	.LBB0_326
# %bb.334:                              # %.preheader
	addq	$1, %rbx
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB0_335:                              # =>This Inner Loop Header: Depth=1
	movsbl	-546(%rbp,%rbx), %esi
	movq	%r14, %rdi
	movq	%r8, %rdx
	callq	_sungetc_r
	movq	-64(%rbp), %r8          # 8-byte Reload
	addq	$-1, %rbx
	cmpq	$1, %rbx
	jg	.LBB0_335
	jmp	.LBB0_326
.Lfunc_end0:
	.size	__ssvfscanf_r, .Lfunc_end0-__ssvfscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_325
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_215
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_14
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_44
	.quad	.LBB0_46
	.quad	.LBB0_56
	.quad	.LBB0_58
	.quad	.LBB0_44
	.quad	.LBB0_44
	.quad	.LBB0_44
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_15
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_47
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_49
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_45
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_51
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_44
	.quad	.LBB0_46
	.quad	.LBB0_57
	.quad	.LBB0_59
	.quad	.LBB0_44
	.quad	.LBB0_44
	.quad	.LBB0_44
	.quad	.LBB0_16
	.quad	.LBB0_52
	.quad	.LBB0_13
	.quad	.LBB0_46
	.quad	.LBB0_18
	.quad	.LBB0_46
	.quad	.LBB0_23
	.quad	.LBB0_48
	.quad	.LBB0_53
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_50
	.quad	.LBB0_13
	.quad	.LBB0_55
	.quad	.LBB0_46
	.quad	.LBB0_46
	.quad	.LBB0_45
	.quad	.LBB0_46
	.quad	.LBB0_13
.LJTI0_1:
	.quad	.LBB0_71
	.quad	.LBB0_75
	.quad	.LBB0_78
	.quad	.LBB0_82
	.quad	.LBB0_104
.LJTI0_2:
	.quad	.LBB0_117
	.quad	.LBB0_135
	.quad	.LBB0_117
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_138
	.quad	.LBB0_110
	.quad	.LBB0_110
	.quad	.LBB0_110
	.quad	.LBB0_110
	.quad	.LBB0_110
	.quad	.LBB0_110
	.quad	.LBB0_110
	.quad	.LBB0_110
	.quad	.LBB0_110
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_119
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_120
	.quad	.LBB0_124
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_125
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_129
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_133
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_134
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_119
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_120
	.quad	.LBB0_124
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_125
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_129
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_133
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_135
	.quad	.LBB0_134
.LJTI0_3:
	.quad	.LBB0_91
	.quad	.LBB0_164
	.quad	.LBB0_91
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_97
	.quad	.LBB0_90
	.quad	.LBB0_90
	.quad	.LBB0_90
	.quad	.LBB0_90
	.quad	.LBB0_90
	.quad	.LBB0_90
	.quad	.LBB0_90
	.quad	.LBB0_93
	.quad	.LBB0_93
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_95
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_164
	.quad	.LBB0_95
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
