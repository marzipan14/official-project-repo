	.text
	.file	"regexec.c"
	.globl	regexec                 # -- Begin function regexec
	.p2align	4, 0x90
	.type	regexec,@function
regexec:                                # @regexec
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
	movl	$2, %ebx
	cmpl	$62053, (%rdi)          # imm = 0xF265
	jne	.LBB0_283
# %bb.1:
	movq	%rcx, %r12
	movq	24(%rdi), %rcx
	cmpl	$53829, (%rcx)          # imm = 0xD245
	jne	.LBB0_283
# %bb.2:
	testb	$4, 72(%rcx)
	jne	.LBB0_283
# %bb.3:
	movl	%r8d, %edi
	andl	$7, %edi
	cmpq	$64, 48(%rcx)
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%edi, -72(%rbp)         # 4-byte Spill
	ja	.LBB0_6
# %bb.4:
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movq	56(%rcx), %r15
	xorl	%eax, %eax
	testb	$4, 40(%rcx)
	movq	64(%rcx), %r14
	cmoveq	%rdx, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	testb	$4, %r8b
	jne	.LBB0_8
# %bb.5:
	movq	%rsi, %rdi
	movq	%rsi, %rbx
	callq	strlen
	movq	%rbx, %rsi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r13
	movq	%rbx, %rdx
	jmp	.LBB0_9
.LBB0_6:
	movq	56(%rcx), %rax
	xorl	%r14d, %r14d
	testb	$4, 40(%rcx)
	movq	64(%rcx), %rbx
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	cmoveq	%rdx, %r14
	testb	$4, %r8b
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jne	.LBB0_25
# %bb.7:
	movq	%rsi, %rdi
	movq	%rsi, %rbx
	callq	strlen
	movq	%rbx, %rsi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rbx, %r13
	jmp	.LBB0_26
.LBB0_8:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdx
	addq	%rsi, %rdx
	movq	8(%rax), %r13
.LBB0_9:
	addq	%rsi, %r13
	movl	$16, %ebx
	cmpq	%rdx, %r13
	jb	.LBB0_282
# %bb.10:
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	96(%rcx), %rsi
	testq	%rsi, %rsi
	movq	%r13, -56(%rbp)         # 8-byte Spill
	je	.LBB0_55
# %bb.11:
	movq	112(%rcx), %rbx
	testq	%rbx, %rbx
	je	.LBB0_41
# %bb.12:
	movq	120(%rcx), %r9
	testq	%r9, %r9
	je	.LBB0_41
# %bb.13:
	movslq	128(%rcx), %rax
	leaq	(%rsi,%rax), %r8
	addq	$-1, %r8
	leaq	(%rdx,%rax), %r12
	addq	$-1, %r12
	cmpq	-56(%rbp), %r12         # 8-byte Folded Reload
	jae	.LBB0_64
# %bb.14:
	movq	%r15, -120(%rbp)        # 8-byte Spill
	leaq	(%rsi,%rax), %r10
	movl	$2, %r15d
	subq	%rax, %r15
	movq	-56(%rbp), %rax         # 8-byte Reload
.LBB0_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_20 Depth 2
	cmpq	%rax, %r12
	jae	.LBB0_288
# %bb.16:                               # %.preheader15
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB0_17:                               #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r12), %eax
	movslq	(%rbx,%rax,4), %rax
	testq	%rax, %rax
	je	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=2
	addq	%rax, %r12
	cmpq	-56(%rbp), %r12         # 8-byte Folded Reload
	jb	.LBB0_17
	jmp	.LBB0_159
.LBB0_19:                               # %.preheader14
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	%rdx, %r13
	xorl	%edi, %edi
	movq	%r12, %rcx
.LBB0_20:                               #   Parent Loop BB0_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %rcx
	movzbl	-1(%r12,%rdi), %eax
	movzbl	-2(%r10,%rdi), %edx
	cmpq	%rdi, %r15
	leaq	-1(%rdi), %rdi
	je	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=2
	cmpb	%dl, %al
	je	.LBB0_20
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=1
	movzbl	%al, %eax
	leaq	(%r10,%rdi), %r11
	addq	$-1, %r11
	cmpb	%dl, %al
	je	.LBB0_290
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=1
	subq	%rsi, %r11
	movl	(%r9,%r11,4), %edx
	movl	(%rbx,%rax,4), %eax
	cmpl	%edx, %eax
	cmovll	%edx, %eax
	cltq
	addq	%rax, %rcx
	addq	%rax, %r12
	addq	%rdi, %r12
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, %r12
	movq	%r13, %rdx
	jb	.LBB0_15
# %bb.24:
	movq	%r8, %r11
	movq	%rcx, %r12
	jmp	.LBB0_289
.LBB0_25:
	movq	(%r12), %r13
	addq	%rsi, %r13
	movq	8(%r12), %rax
.LBB0_26:
	addq	%rsi, %rax
	movl	$16, %ebx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	cmpq	%r13, %rax
	jb	.LBB0_282
# %bb.27:
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	96(%rcx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_56
# %bb.28:
	movq	112(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_48
# %bb.29:
	movq	120(%rcx), %r9
	testq	%r9, %r9
	je	.LBB0_48
# %bb.30:
	movslq	128(%rcx), %rax
	leaq	(%rsi,%rax), %r8
	addq	$-1, %r8
	leaq	(%rax,%r13), %r15
	addq	$-1, %r15
	cmpq	-112(%rbp), %r15        # 8-byte Folded Reload
	jae	.LBB0_65
# %bb.31:
	movq	%r14, -96(%rbp)         # 8-byte Spill
	movq	%r12, -80(%rbp)         # 8-byte Spill
	leaq	(%rsi,%rax), %r11
	movl	$2, %r14d
	subq	%rax, %r14
	movq	-112(%rbp), %rdx        # 8-byte Reload
.LBB0_32:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_36 Depth 2
	cmpq	%rdx, %r15
	jae	.LBB0_66
# %bb.33:                               #   in Loop: Header=BB0_32 Depth=1
	movzbl	(%r15), %eax
	movslq	(%rdi,%rax,4), %rax
	testq	%rax, %rax
	je	.LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_32 Depth=1
	addq	%rax, %r15
	jmp	.LBB0_32
.LBB0_35:                               # %.preheader34
                                        #   in Loop: Header=BB0_32 Depth=1
	xorl	%ecx, %ecx
	movq	%r15, %rbx
.LBB0_36:                               #   Parent Loop BB0_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %rbx
	movzbl	-1(%r15,%rcx), %eax
	movzbl	-2(%r11,%rcx), %edx
	cmpq	%rcx, %r14
	leaq	-1(%rcx), %rcx
	je	.LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_36 Depth=2
	cmpb	%dl, %al
	je	.LBB0_36
.LBB0_38:                               #   in Loop: Header=BB0_32 Depth=1
	movzbl	%al, %eax
	leaq	(%r11,%rcx), %r10
	addq	$-1, %r10
	cmpb	%dl, %al
	je	.LBB0_291
# %bb.39:                               #   in Loop: Header=BB0_32 Depth=1
	subq	%rsi, %r10
	movl	(%r9,%r10,4), %edx
	movl	(%rdi,%rax,4), %eax
	cmpl	%edx, %eax
	cmovll	%edx, %eax
	cltq
	addq	%rax, %rbx
	addq	%rax, %r15
	addq	%rcx, %r15
	movq	-112(%rbp), %rdx        # 8-byte Reload
	cmpq	%rdx, %r15
	movq	-48(%rbp), %rcx         # 8-byte Reload
	jb	.LBB0_32
# %bb.40:
	movq	%r8, %r10
	movq	%rbx, %r15
	jmp	.LBB0_67
.LBB0_41:
	movq	%rdx, %r12
	movq	-56(%rbp), %r13         # 8-byte Reload
	cmpq	%r13, %rdx
	jae	.LBB0_59
# %bb.42:
	movq	%rdx, %rbx
	movq	%rdx, %r12
.LBB0_43:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %eax
	cmpb	(%rsi), %al
	jne	.LBB0_46
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=1
	movq	%r13, %rax
	subq	%r12, %rax
	movslq	128(%rcx), %rdx
	cmpq	%rdx, %rax
	jl	.LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_43 Depth=1
	movq	%r12, %rdi
	callq	memcmp
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_58
.LBB0_46:                               #   in Loop: Header=BB0_43 Depth=1
	leaq	1(%r12), %rax
	cmpq	%r13, %rax
	jae	.LBB0_57
# %bb.47:                               #   in Loop: Header=BB0_43 Depth=1
	movq	96(%rcx), %rsi
	movq	%rax, %r12
	jmp	.LBB0_43
.LBB0_48:
	movq	%r13, %r15
	cmpq	-112(%rbp), %r13        # 8-byte Folded Reload
	jae	.LBB0_62
# %bb.49:
	movq	%r13, %r15
.LBB0_50:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %eax
	cmpb	(%rsi), %al
	jne	.LBB0_53
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	subq	%r15, %rax
	movslq	128(%rcx), %rdx
	cmpq	%rdx, %rax
	jl	.LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_50 Depth=1
	movq	%r15, %rdi
	callq	memcmp
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_62
.LBB0_53:                               #   in Loop: Header=BB0_50 Depth=1
	leaq	1(%r15), %rax
	cmpq	-112(%rbp), %rax        # 8-byte Folded Reload
	jae	.LBB0_61
# %bb.54:                               #   in Loop: Header=BB0_50 Depth=1
	movq	96(%rcx), %rsi
	movq	%rax, %r15
	jmp	.LBB0_50
.LBB0_55:
	xorl	%r12d, %r12d
	movq	-64(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_162
.LBB0_56:
	xorl	%r15d, %r15d
	movq	-64(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_70
.LBB0_57:                               # %.loopexit12split
	addq	$1, %r12
.LBB0_58:
	movq	%rbx, %rdx
.LBB0_59:
	cmpq	%r13, %r12
	movq	-64(%rbp), %rax         # 8-byte Reload
	jne	.LBB0_162
	jmp	.LBB0_60
.LBB0_61:                               # %.loopexit32split
	addq	$1, %r15
.LBB0_62:
	cmpq	-112(%rbp), %r15        # 8-byte Folded Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
	jne	.LBB0_70
.LBB0_60:
	movl	$1, %ebx
	jmp	.LBB0_282
.LBB0_64:
	movq	%r8, %r11
	jmp	.LBB0_161
.LBB0_65:
	movq	%r8, %r10
	jmp	.LBB0_69
.LBB0_66:
	movq	%r8, %r10
.LBB0_67:
	movq	-80(%rbp), %r12         # 8-byte Reload
.LBB0_68:
	movq	-96(%rbp), %r14         # 8-byte Reload
.LBB0_69:
	movl	$1, %ebx
	cmpq	%rsi, %r10
	movq	-64(%rbp), %rax         # 8-byte Reload
	jne	.LBB0_282
.LBB0_70:
	movq	%r14, -96(%rbp)         # 8-byte Spill
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -232(%rbp)
	movl	-72(%rbp), %edx         # 4-byte Reload
	movl	%edx, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	$0, -176(%rbp)
	movq	%rax, -208(%rbp)
	movq	%r13, -200(%rbp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -192(%rbp)
	movq	48(%rcx), %rdi
	shlq	$2, %rdi
	movq	%rcx, %r12
	callq	malloc
	movq	%rax, -160(%rbp)
	movl	$12, %ebx
	testq	%rax, %rax
	je	.LBB0_282
# %bb.71:
	movq	%rax, %r14
	movq	%rax, -152(%rbp)
	movq	48(%r12), %rdx
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)
	leaq	(%r14,%rdx,2), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)
	movq	$4, -168(%rbp)
	leaq	(%rdx,%rdx,2), %rdi
	addq	%r14, %rdi
	movq	%rdi, -128(%rbp)
	xorl	%esi, %esi
	callq	memset
	movslq	104(%r12), %rax
	movq	%r13, %rbx
	testq	%rax, %rax
	js	.LBB0_73
# %bb.72:
	subq	%rax, %r15
	cmpq	%r13, %r15
	cmovbq	%r13, %r15
	movq	%r15, %rbx
.LBB0_73:
	movq	-56(%rbp), %r15         # 8-byte Reload
	addq	$1, %r15
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movq	-120(%rbp), %r12        # 8-byte Reload
	jmp	.LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_75 Depth=1
	addq	$1, %rbx
	movq	-200(%rbp), %r13
	movq	-152(%rbp), %r14
	movq	-144(%rbp), %r12
	movq	-136(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB0_75:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_96 Depth 2
                                        #     Child Loop BB0_126 Depth 2
                                        #     Child Loop BB0_135 Depth 2
                                        #     Child Loop BB0_138 Depth 2
	cmpq	%rbx, %r13
	je	.LBB0_77
# %bb.76:                               #   in Loop: Header=BB0_75 Depth=1
	movsbl	-1(%rbx), %r13d
	jmp	.LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_75 Depth=1
	movl	$128, %r13d
.LBB0_78:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	memset
	movb	$1, (%r14,%r15)
	movq	-232(%rbp), %rdi
	movq	%r15, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%r14, %rcx
	movl	$132, %r8d
	movq	%r14, %r9
	callq	lstep
	movq	-232(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	memcpy
	xorl	%eax, %eax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%r12, -120(%rbp)        # 8-byte Spill
	cmpq	-192(%rbp), %rbx
	je	.LBB0_80
	.p2align	4, 0x90
.LBB0_79:                               #   in Loop: Header=BB0_75 Depth=1
	movsbl	(%rbx), %eax
	jmp	.LBB0_81
	.p2align	4, 0x90
.LBB0_80:                               #   in Loop: Header=BB0_75 Depth=1
	movl	$128, %eax
.LBB0_81:                               #   in Loop: Header=BB0_75 Depth=1
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	-232(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	memcmp
	testl	%eax, %eax
	movq	-240(%rbp), %rax        # 8-byte Reload
	cmoveq	%rbx, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	xorl	%r12d, %r12d
	cmpl	$128, %r13d
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	je	.LBB0_84
# %bb.82:                               #   in Loop: Header=BB0_75 Depth=1
	cmpl	$10, %r13d
	jne	.LBB0_87
# %bb.83:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rax
	testb	$8, 40(%rax)
	movl	$0, %ebx
	jne	.LBB0_86
	jmp	.LBB0_88
	.p2align	4, 0x90
.LBB0_84:                               #   in Loop: Header=BB0_75 Depth=1
	testb	$1, -224(%rbp)
	movl	$0, %ebx
	jne	.LBB0_88
# %bb.85:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rax
.LBB0_86:                               #   in Loop: Header=BB0_75 Depth=1
	movl	76(%rax), %ebx
	movl	$129, %r12d
	jmp	.LBB0_88
	.p2align	4, 0x90
.LBB0_87:                               #   in Loop: Header=BB0_75 Depth=1
	xorl	%ebx, %ebx
.LBB0_88:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpl	$128, %eax
	movq	%r13, -248(%rbp)        # 8-byte Spill
	je	.LBB0_91
# %bb.89:                               #   in Loop: Header=BB0_75 Depth=1
	cmpl	$10, %eax
	jne	.LBB0_94
# %bb.90:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rax
	testb	$8, 40(%rax)
	jne	.LBB0_93
	jmp	.LBB0_94
	.p2align	4, 0x90
.LBB0_91:                               #   in Loop: Header=BB0_75 Depth=1
	testb	$2, -224(%rbp)
	jne	.LBB0_94
# %bb.92:                               #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rax
.LBB0_93:                               #   in Loop: Header=BB0_75 Depth=1
	xorl	%ecx, %ecx
	cmpl	$129, %r12d
	sete	%cl
	orl	$130, %ecx
	addl	80(%rax), %ebx
	movl	%ecx, %r12d
.LBB0_94:                               #   in Loop: Header=BB0_75 Depth=1
	testl	%ebx, %ebx
	movq	-88(%rbp), %r13         # 8-byte Reload
	jle	.LBB0_97
# %bb.95:                               # %.preheader21
                                        #   in Loop: Header=BB0_75 Depth=1
	addl	$1, %ebx
	.p2align	4, 0x90
.LBB0_96:                               #   Parent Loop BB0_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-232(%rbp), %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	movl	%r12d, %r8d
	movq	%r14, %r9
	callq	lstep
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jg	.LBB0_96
.LBB0_97:                               #   in Loop: Header=BB0_75 Depth=1
	cmpl	$129, %r12d
	jne	.LBB0_100
# %bb.98:                               #   in Loop: Header=BB0_75 Depth=1
	movl	$129, %r15d
	cmpl	$128, -72(%rbp)         # 4-byte Folded Reload
	movq	-248(%rbp), %rbx        # 8-byte Reload
	jne	.LBB0_105
# %bb.99:                               #   in Loop: Header=BB0_75 Depth=1
	cmpl	$128, %ebx
	je	.LBB0_106
	jmp	.LBB0_107
	.p2align	4, 0x90
.LBB0_100:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-248(%rbp), %rbx        # 8-byte Reload
	cmpl	$128, %ebx
	jne	.LBB0_102
# %bb.101:                              #   in Loop: Header=BB0_75 Depth=1
	movl	%r12d, %r15d
	jmp	.LBB0_106
	.p2align	4, 0x90
.LBB0_102:                              #   in Loop: Header=BB0_75 Depth=1
	callq	__locale_ctype_ptr
	movzbl	%bl, %ecx
	cmpl	$128, -72(%rbp)         # 4-byte Folded Reload
	je	.LBB0_108
# %bb.103:                              #   in Loop: Header=BB0_75 Depth=1
	cmpl	$95, %ebx
	je	.LBB0_108
# %bb.104:                              #   in Loop: Header=BB0_75 Depth=1
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	jne	.LBB0_108
.LBB0_105:                              #   in Loop: Header=BB0_75 Depth=1
	callq	__locale_ctype_ptr
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movzbl	%dl, %ecx
	testb	$7, 1(%rax,%rcx)
	movl	$133, %eax
	cmovnel	%eax, %r12d
	cmpl	$95, %edx
	cmovel	%eax, %r12d
	movl	%r12d, %r15d
	cmpl	$128, %ebx
	jne	.LBB0_107
.LBB0_106:                              #   in Loop: Header=BB0_75 Depth=1
	leaq	-232(%rbp), %r13
.LBB0_116:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-88(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_117
	.p2align	4, 0x90
.LBB0_107:                              #   in Loop: Header=BB0_75 Depth=1
	movzbl	%bl, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_75 Depth=1
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%r12d, %r15d
.LBB0_109:                              #   in Loop: Header=BB0_75 Depth=1
	leaq	-232(%rbp), %r13
	callq	__locale_ctype_ptr
	cmpl	$95, %ebx
	movq	-88(%rbp), %r12         # 8-byte Reload
	je	.LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	jne	.LBB0_111
.LBB0_117:                              #   in Loop: Header=BB0_75 Depth=1
	leal	-133(%r15), %eax
	movl	%r15d, %ebx
	cmpl	$1, %eax
	ja	.LBB0_119
	jmp	.LBB0_118
	.p2align	4, 0x90
.LBB0_111:                              #   in Loop: Header=BB0_75 Depth=1
	movl	$134, %ebx
	cmpl	$130, %r15d
	jne	.LBB0_112
	.p2align	4, 0x90
.LBB0_118:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	movl	%ebx, %r8d
	movq	%r14, %r9
	callq	lstep
.LBB0_119:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-112(%rbp), %rbx        # 8-byte Reload
	cmpq	%rbx, -64(%rbp)         # 8-byte Folded Reload
	je	.LBB0_122
# %bb.120:                              #   in Loop: Header=BB0_75 Depth=1
	cmpb	$0, (%r14,%r12)
	jne	.LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-256(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	-232(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%r14, %rdi
	movq	%r12, %r13
	movq	-120(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rsi
	callq	memcpy
	movq	-232(%rbp), %rdi
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%rbx, %rcx
	movq	-72(%rbp), %r13         # 8-byte Reload
	movl	%r13d, %r8d
	movq	%r14, %r9
	callq	lstep
	movq	-64(%rbp), %rbx         # 8-byte Reload
	addq	$1, %rbx
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
	cmpq	-192(%rbp), %rbx
	jne	.LBB0_79
	jmp	.LBB0_80
.LBB0_112:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-72(%rbp), %r12         # 8-byte Reload
	cmpl	$128, %r12d
	je	.LBB0_116
# %bb.114:                              #   in Loop: Header=BB0_75 Depth=1
	callq	__locale_ctype_ptr
	cmpl	$95, %r12d
	je	.LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_75 Depth=1
	movzbl	%r12b, %ecx
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	movq	-88(%rbp), %r12         # 8-byte Reload
	je	.LBB0_118
	jmp	.LBB0_117
.LBB0_122:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	cmpb	$0, (%r14,%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	je	.LBB0_273
# %bb.123:                              #   in Loop: Header=BB0_75 Depth=1
	cmpq	$0, -96(%rbp)           # 8-byte Folded Reload
	jne	.LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 144(%rax)
	je	.LBB0_276
.LBB0_125:                              #   in Loop: Header=BB0_75 Depth=1
	movq	%r13, %rdi
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lslow
	movq	%rax, %r14
	testq	%rax, %rax
	jne	.LBB0_128
	.p2align	4, 0x90
.LBB0_126:                              #   Parent Loop BB0_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-184(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -184(%rbp)
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lslow
	testq	%rax, %rax
	je	.LBB0_126
# %bb.127:                              #   in Loop: Header=BB0_75 Depth=1
	movq	%rax, %r14
.LBB0_128:                              #   in Loop: Header=BB0_75 Depth=1
	cmpq	$1, -96(%rbp)           # 8-byte Folded Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	jne	.LBB0_130
# %bb.129:                              #   in Loop: Header=BB0_75 Depth=1
	cmpl	$0, 144(%rax)
	je	.LBB0_153
.LBB0_130:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-216(%rbp), %rax
	testq	%rax, %rax
	jne	.LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rax
	movq	136(%rax), %rdi
	shlq	$4, %rdi
	addq	$16, %rdi
	callq	malloc
	movq	%rax, -216(%rbp)
	testq	%rax, %rax
	je	.LBB0_285
.LBB0_132:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-232(%rbp), %rcx
	movq	136(%rcx), %rbx
	testq	%rbx, %rbx
	pcmpeqd	%xmm0, %xmm0
	je	.LBB0_139
# %bb.133:                              #   in Loop: Header=BB0_75 Depth=1
	leaq	-1(%rbx), %rsi
	movl	%ebx, %ecx
	andl	$7, %ecx
	movl	$1, %edx
	cmpq	$7, %rsi
	jb	.LBB0_136
# %bb.134:                              #   in Loop: Header=BB0_75 Depth=1
	leaq	128(%rax), %rsi
	movq	%rcx, %rdi
	subq	%rbx, %rdi
	movl	$1, %edx
	.p2align	4, 0x90
.LBB0_135:                              #   Parent Loop BB0_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	leaq	(%rdi,%rdx), %rbx
	addq	$8, %rbx
	addq	$8, %rdx
	cmpq	$1, %rbx
	jne	.LBB0_135
.LBB0_136:                              #   in Loop: Header=BB0_75 Depth=1
	testq	%rcx, %rcx
	je	.LBB0_139
# %bb.137:                              # %.preheader25
                                        #   in Loop: Header=BB0_75 Depth=1
	shlq	$4, %rdx
	addq	%rdx, %rax
	shlq	$4, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_138:                              #   Parent Loop BB0_75 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, (%rax,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_138
.LBB0_139:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 144(%rax)
	jne	.LBB0_142
# %bb.140:                              #   in Loop: Header=BB0_75 Depth=1
	testb	$4, -223(%rbp)
	jne	.LBB0_142
# %bb.141:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-184(%rbp), %rsi
	movq	%r13, %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	ldissect
	jmp	.LBB0_149
.LBB0_142:                              #   in Loop: Header=BB0_75 Depth=1
	movq	152(%rax), %rcx
	movq	-176(%rbp), %rax
	testq	%rcx, %rcx
	jle	.LBB0_145
# %bb.143:                              #   in Loop: Header=BB0_75 Depth=1
	testq	%rax, %rax
	jne	.LBB0_145
# %bb.144:                              #   in Loop: Header=BB0_75 Depth=1
	leaq	8(,%rcx,8), %rdi
	callq	malloc
	movq	%rax, -176(%rbp)
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	152(%rcx), %rcx
.LBB0_145:                              #   in Loop: Header=BB0_75 Depth=1
	testq	%rax, %rax
	jne	.LBB0_147
# %bb.146:                              #   in Loop: Header=BB0_75 Depth=1
	testq	%rcx, %rcx
	jg	.LBB0_284
.LBB0_147:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-184(%rbp), %rsi
	movq	%r13, %rdi
	.p2align	4, 0x90
.LBB0_148:                              #   in Loop: Header=BB0_75 Depth=1
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	xorl	%r9d, %r9d
	callq	lbackref
.LBB0_149:                              #   in Loop: Header=BB0_75 Depth=1
	testq	%rax, %rax
	jne	.LBB0_153
# %bb.150:                              #   in Loop: Header=BB0_75 Depth=1
	movq	-184(%rbp), %rbx
	cmpq	%rbx, %r14
	jbe	.LBB0_74
# %bb.151:                              #   in Loop: Header=BB0_75 Depth=1
	addq	$-1, %r14
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	lslow
	movq	-184(%rbp), %rbx
	testq	%rax, %rax
	je	.LBB0_74
# %bb.152:                              #   in Loop: Header=BB0_75 Depth=1
	movq	%rax, %r14
	movq	%r13, %rdi
	movq	%rbx, %rsi
	jmp	.LBB0_148
.LBB0_153:
	cmpq	$0, -96(%rbp)           # 8-byte Folded Reload
	je	.LBB0_276
# %bb.154:
	movq	-208(%rbp), %rax
	movq	-184(%rbp), %rcx
	subq	%rax, %rcx
	subq	%rax, %r14
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%r14, 8(%rax)
	cmpq	$1, -96(%rbp)           # 8-byte Folded Reload
	je	.LBB0_276
# %bb.155:
	movq	-232(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	136(%rcx), %rcx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	leal	-1(%rdx), %r8d
	andl	$1, %r8d
	movl	$1, %esi
	cmpq	$2, %rdx
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jne	.LBB0_258
.LBB0_156:
	testq	%r8, %r8
	je	.LBB0_276
# %bb.157:
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	addq	%rdx, %rdi
	cmpq	%rsi, %rcx
	jae	.LBB0_274
# %bb.158:
	pcmpeqd	%xmm0, %xmm0
	jmp	.LBB0_275
.LBB0_159:
	movq	%r8, %r11
.LBB0_160:
	movq	-120(%rbp), %r15        # 8-byte Reload
.LBB0_161:
	movl	$1, %ebx
	cmpq	%rsi, %r11
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
	jne	.LBB0_282
.LBB0_162:
	addq	$1, %r15
	movq	%rcx, -232(%rbp)
	movq	%rdx, %rsi
	movl	-72(%rbp), %edx         # 4-byte Reload
	movl	%edx, -224(%rbp)
	movq	%rsi, %rdx
	movq	$0, -216(%rbp)
	movq	$0, -176(%rbp)
	movq	%rax, -208(%rbp)
	movq	%rsi, -200(%rbp)
	movq	%r13, -192(%rbp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -160(%rbp)
	movdqu	%xmm0, -144(%rbp)
	movslq	104(%rcx), %rax
	movq	%rsi, %rbx
	testq	%rax, %rax
	js	.LBB0_164
# %bb.163:
	subq	%rax, %r12
	cmpq	%rdx, %r12
	cmovbq	%rdx, %r12
	movq	%r12, %rbx
.LBB0_164:
	movl	$1, %eax
	movl	%r15d, %ecx
	shlq	%cl, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$1, %eax
	movq	%r14, %r13
	movl	%r13d, %ecx
	shlq	%cl, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%r15, -120(%rbp)        # 8-byte Spill
	movq	%r14, -88(%rbp)         # 8-byte Spill
	jmp	.LBB0_167
.LBB0_165:                              #   in Loop: Header=BB0_167 Depth=1
	movq	%rsi, %rbx
.LBB0_166:                              #   in Loop: Header=BB0_167 Depth=1
	addq	$1, %rbx
	movq	-200(%rbp), %rdx
.LBB0_167:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_188 Depth 2
                                        #     Child Loop BB0_218 Depth 2
                                        #     Child Loop BB0_227 Depth 2
                                        #     Child Loop BB0_230 Depth 2
	cmpq	%rbx, %rdx
	je	.LBB0_169
# %bb.168:                              #   in Loop: Header=BB0_167 Depth=1
	movsbl	-1(%rbx), %eax
	jmp	.LBB0_170
.LBB0_169:                              #   in Loop: Header=BB0_167 Depth=1
	movl	$128, %eax
.LBB0_170:                              #   in Loop: Header=BB0_167 Depth=1
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-232(%rbp), %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	$132, %r8d
	movq	%rcx, %r9
	callq	sstep
	movq	%rax, %r13
	movq	%rax, %r12
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%r13, -256(%rbp)        # 8-byte Spill
	cmpq	-192(%rbp), %rbx
	je	.LBB0_172
	.p2align	4, 0x90
.LBB0_171:                              #   in Loop: Header=BB0_167 Depth=1
	movsbl	(%rbx), %edx
	jmp	.LBB0_173
	.p2align	4, 0x90
.LBB0_172:                              #   in Loop: Header=BB0_167 Depth=1
	movl	$128, %edx
.LBB0_173:                              #   in Loop: Header=BB0_167 Depth=1
	cmpq	%r13, %r12
	cmoveq	%rbx, %rax
	xorl	%r14d, %r14d
	cmpl	$128, %ecx
	movq	%rbx, -240(%rbp)        # 8-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	je	.LBB0_176
# %bb.174:                              #   in Loop: Header=BB0_167 Depth=1
	cmpl	$10, %ecx
	jne	.LBB0_179
# %bb.175:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-232(%rbp), %rax
	testb	$8, 40(%rax)
	movl	$0, %ebx
	jne	.LBB0_178
	jmp	.LBB0_180
	.p2align	4, 0x90
.LBB0_176:                              #   in Loop: Header=BB0_167 Depth=1
	testb	$1, -224(%rbp)
	movl	$0, %ebx
	jne	.LBB0_180
# %bb.177:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-232(%rbp), %rax
.LBB0_178:                              #   in Loop: Header=BB0_167 Depth=1
	movl	76(%rax), %ebx
	movl	$129, %r14d
	jmp	.LBB0_180
	.p2align	4, 0x90
.LBB0_179:                              #   in Loop: Header=BB0_167 Depth=1
	xorl	%ebx, %ebx
.LBB0_180:                              #   in Loop: Header=BB0_167 Depth=1
	cmpl	$128, %edx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	je	.LBB0_183
# %bb.181:                              #   in Loop: Header=BB0_167 Depth=1
	cmpl	$10, %edx
	jne	.LBB0_186
# %bb.182:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-232(%rbp), %rax
	testb	$8, 40(%rax)
	jne	.LBB0_185
	jmp	.LBB0_186
	.p2align	4, 0x90
.LBB0_183:                              #   in Loop: Header=BB0_167 Depth=1
	testb	$2, -224(%rbp)
	jne	.LBB0_186
# %bb.184:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-232(%rbp), %rax
.LBB0_185:                              #   in Loop: Header=BB0_167 Depth=1
	xorl	%ecx, %ecx
	cmpl	$129, %r14d
	sete	%cl
	orl	$130, %ecx
	addl	80(%rax), %ebx
	movl	%ecx, %r14d
.LBB0_186:                              #   in Loop: Header=BB0_167 Depth=1
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB0_189
# %bb.187:                              # %.preheader
                                        #   in Loop: Header=BB0_167 Depth=1
	addl	$1, %ebx
	movq	%r15, %r13
	movq	-88(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_188:                              #   Parent Loop BB0_167 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-232(%rbp), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movl	%r14d, %r8d
	movq	%r12, %r9
	callq	sstep
	movq	%rax, %r12
	addl	$-1, %ebx
	cmpl	$1, %ebx
	jg	.LBB0_188
.LBB0_189:                              #   in Loop: Header=BB0_167 Depth=1
	cmpl	$129, %r14d
	jne	.LBB0_193
# %bb.190:                              #   in Loop: Header=BB0_167 Depth=1
	movl	$129, %r15d
	cmpl	$128, -72(%rbp)         # 4-byte Folded Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jne	.LBB0_198
# %bb.191:                              #   in Loop: Header=BB0_167 Depth=1
	cmpl	$128, %ecx
	jne	.LBB0_199
.LBB0_192:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB0_203
	.p2align	4, 0x90
.LBB0_193:                              #   in Loop: Header=BB0_167 Depth=1
	cmpl	$128, -64(%rbp)         # 4-byte Folded Reload
	jne	.LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_167 Depth=1
	movl	%r14d, %r15d
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB0_203
	.p2align	4, 0x90
.LBB0_195:                              #   in Loop: Header=BB0_167 Depth=1
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movzbl	%cl, %r13d
	cmpl	$128, -72(%rbp)         # 4-byte Folded Reload
	je	.LBB0_200
# %bb.196:                              #   in Loop: Header=BB0_167 Depth=1
	cmpl	$95, %ecx
	je	.LBB0_200
# %bb.197:                              #   in Loop: Header=BB0_167 Depth=1
	movb	1(%rax,%r13), %al
	andb	$7, %al
	jne	.LBB0_200
.LBB0_198:                              #   in Loop: Header=BB0_167 Depth=1
	callq	__locale_ctype_ptr
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movzbl	%dl, %ecx
	testb	$7, 1(%rax,%rcx)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	$133, %eax
	cmovnel	%eax, %r14d
	cmpl	$95, %edx
	cmovel	%eax, %r14d
	movl	%r14d, %r15d
	cmpl	$128, %ecx
	je	.LBB0_192
.LBB0_199:                              #   in Loop: Header=BB0_167 Depth=1
	movzbl	%cl, %r13d
	jmp	.LBB0_201
	.p2align	4, 0x90
.LBB0_200:                              #   in Loop: Header=BB0_167 Depth=1
	movl	%r14d, %r15d
.LBB0_201:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%rcx, %rbx
	callq	__locale_ctype_ptr
	cmpl	$95, %ebx
	je	.LBB0_205
# %bb.202:                              #   in Loop: Header=BB0_167 Depth=1
	movb	1(%rax,%r13), %al
	andb	$7, %al
	jne	.LBB0_205
.LBB0_203:                              #   in Loop: Header=BB0_167 Depth=1
	leal	-133(%r15), %eax
	movl	%r15d, %ebx
	cmpl	$1, %eax
	jbe	.LBB0_206
# %bb.204:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-120(%rbp), %r15        # 8-byte Reload
	jmp	.LBB0_207
	.p2align	4, 0x90
.LBB0_205:                              #   in Loop: Header=BB0_167 Depth=1
	movl	$134, %ebx
	cmpl	$130, %r15d
	jne	.LBB0_210
	.p2align	4, 0x90
.LBB0_206:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-232(%rbp), %rdi
	movq	-120(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%r12, %rcx
	movl	%ebx, %r8d
	movq	%r12, %r9
	callq	sstep
	movq	%rax, %r12
.LBB0_207:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-240(%rbp), %rbx        # 8-byte Reload
	cmpq	%r14, %rbx
	je	.LBB0_213
# %bb.208:                              #   in Loop: Header=BB0_167 Depth=1
	movq	%r12, %rax
	andq	-112(%rbp), %rax        # 8-byte Folded Reload
	jne	.LBB0_213
# %bb.209:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-232(%rbp), %rdi
	movq	%r15, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%r12, %rcx
	movq	-72(%rbp), %r14         # 8-byte Reload
	movl	%r14d, %r8d
	movq	-256(%rbp), %r13        # 8-byte Reload
	movq	%r13, %r9
	callq	sstep
	movq	%rax, %r12
	addq	$1, %rbx
	movl	%r14d, %ecx
	movq	-248(%rbp), %rax        # 8-byte Reload
	cmpq	-192(%rbp), %rbx
	jne	.LBB0_171
	jmp	.LBB0_172
.LBB0_210:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
	cmpl	$128, %r13d
	je	.LBB0_203
# %bb.211:                              #   in Loop: Header=BB0_167 Depth=1
	callq	__locale_ctype_ptr
	cmpl	$95, %r13d
	je	.LBB0_203
# %bb.212:                              #   in Loop: Header=BB0_167 Depth=1
	movq	%r13, %rcx
	movzbl	%cl, %ecx
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	je	.LBB0_206
	jmp	.LBB0_203
.LBB0_213:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -184(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, -112(%rbp)        # 8-byte Folded Reload
	je	.LBB0_60
# %bb.214:                              #   in Loop: Header=BB0_167 Depth=1
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_216
# %bb.215:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 144(%rax)
	je	.LBB0_269
.LBB0_216:                              #   in Loop: Header=BB0_167 Depth=1
	leaq	-232(%rbp), %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	%r13, %r8
	callq	sslow
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB0_220
# %bb.217:                              # %.preheader7
                                        #   in Loop: Header=BB0_167 Depth=1
	leaq	-232(%rbp), %rbx
	.p2align	4, 0x90
.LBB0_218:                              #   Parent Loop BB0_167 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-184(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -184(%rbp)
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r13, %r8
	callq	sslow
	testq	%rax, %rax
	je	.LBB0_218
# %bb.219:                              #   in Loop: Header=BB0_167 Depth=1
	movq	%rax, %r12
.LBB0_220:                              #   in Loop: Header=BB0_167 Depth=1
	cmpq	$1, -104(%rbp)          # 8-byte Folded Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	jne	.LBB0_222
# %bb.221:                              #   in Loop: Header=BB0_167 Depth=1
	cmpl	$0, 144(%rax)
	je	.LBB0_245
.LBB0_222:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-216(%rbp), %rax
	testq	%rax, %rax
	jne	.LBB0_224
# %bb.223:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-232(%rbp), %rax
	movq	136(%rax), %rdi
	shlq	$4, %rdi
	addq	$16, %rdi
	callq	malloc
	movq	%rax, -216(%rbp)
	testq	%rax, %rax
	je	.LBB0_287
.LBB0_224:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-232(%rbp), %rcx
	movq	136(%rcx), %rbx
	testq	%rbx, %rbx
	pcmpeqd	%xmm0, %xmm0
	je	.LBB0_231
# %bb.225:                              #   in Loop: Header=BB0_167 Depth=1
	leaq	-1(%rbx), %rsi
	movl	%ebx, %ecx
	andl	$7, %ecx
	movl	$1, %edx
	cmpq	$7, %rsi
	jb	.LBB0_228
# %bb.226:                              #   in Loop: Header=BB0_167 Depth=1
	leaq	128(%rax), %rsi
	movq	%rcx, %rdi
	subq	%rbx, %rdi
	movl	$1, %edx
	.p2align	4, 0x90
.LBB0_227:                              #   Parent Loop BB0_167 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	leaq	(%rdi,%rdx), %rbx
	addq	$8, %rbx
	addq	$8, %rdx
	cmpq	$1, %rbx
	jne	.LBB0_227
.LBB0_228:                              #   in Loop: Header=BB0_167 Depth=1
	testq	%rcx, %rcx
	je	.LBB0_231
# %bb.229:                              # %.preheader4
                                        #   in Loop: Header=BB0_167 Depth=1
	shlq	$4, %rdx
	addq	%rdx, %rax
	shlq	$4, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_230:                              #   Parent Loop BB0_167 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, (%rax,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_230
.LBB0_231:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 144(%rax)
	jne	.LBB0_234
# %bb.232:                              #   in Loop: Header=BB0_167 Depth=1
	testb	$4, -223(%rbp)
	jne	.LBB0_234
# %bb.233:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-184(%rbp), %rsi
	leaq	-232(%rbp), %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r13, %r8
	callq	sdissect
	jmp	.LBB0_241
.LBB0_234:                              #   in Loop: Header=BB0_167 Depth=1
	movq	152(%rax), %rcx
	movq	-176(%rbp), %rax
	testq	%rcx, %rcx
	jle	.LBB0_237
# %bb.235:                              #   in Loop: Header=BB0_167 Depth=1
	testq	%rax, %rax
	jne	.LBB0_237
# %bb.236:                              #   in Loop: Header=BB0_167 Depth=1
	leaq	8(,%rcx,8), %rdi
	callq	malloc
	movq	%rax, -176(%rbp)
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	152(%rcx), %rcx
.LBB0_237:                              #   in Loop: Header=BB0_167 Depth=1
	testq	%rax, %rax
	jne	.LBB0_239
# %bb.238:                              #   in Loop: Header=BB0_167 Depth=1
	testq	%rcx, %rcx
	jg	.LBB0_272
.LBB0_239:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-184(%rbp), %rsi
	leaq	-232(%rbp), %rdi
	.p2align	4, 0x90
.LBB0_240:                              #   in Loop: Header=BB0_167 Depth=1
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r13, %r8
	xorl	%r9d, %r9d
	callq	sbackref
.LBB0_241:                              #   in Loop: Header=BB0_167 Depth=1
	testq	%rax, %rax
	jne	.LBB0_245
# %bb.242:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-184(%rbp), %rbx
	cmpq	%rbx, %r12
	jbe	.LBB0_166
# %bb.243:                              #   in Loop: Header=BB0_167 Depth=1
	addq	$-1, %r12
	movq	%rbx, %rsi
	leaq	-232(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r13, %r8
	callq	sslow
	movq	-184(%rbp), %rsi
	testq	%rax, %rax
	je	.LBB0_165
# %bb.244:                              #   in Loop: Header=BB0_167 Depth=1
	movq	%rax, %r12
	movq	%rbx, %rdi
	jmp	.LBB0_240
.LBB0_245:
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	je	.LBB0_269
# %bb.246:
	movq	-208(%rbp), %rax
	movq	-184(%rbp), %rcx
	subq	%rax, %rcx
	subq	%rax, %r12
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%r12, 8(%rax)
	cmpq	$1, -104(%rbp)          # 8-byte Folded Reload
	je	.LBB0_269
# %bb.247:
	movq	-232(%rbp), %rcx
	movq	-216(%rbp), %rax
	movq	136(%rcx), %rcx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	leal	-1(%rdi), %edx
	andl	$1, %edx
	movl	$1, %esi
	cmpq	$2, %rdi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jne	.LBB0_251
.LBB0_248:
	testq	%rdx, %rdx
	je	.LBB0_269
# %bb.249:
	movq	%rsi, %rdx
	shlq	$4, %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	addq	%rdx, %rdi
	cmpq	%rsi, %rcx
	jae	.LBB0_267
# %bb.250:
	pcmpeqd	%xmm0, %xmm0
	jmp	.LBB0_268
.LBB0_251:
	subq	%rdx, -104(%rbp)        # 8-byte Folded Spill
	movl	$1, %esi
	movl	$32, %edi
	pcmpeqd	%xmm0, %xmm0
	jmp	.LBB0_254
.LBB0_252:                              #   in Loop: Header=BB0_254 Depth=1
	movdqu	%xmm0, (%rbx,%rdi)
.LBB0_253:                              #   in Loop: Header=BB0_254 Depth=1
	addq	$2, %rsi
	addq	$32, %rdi
	cmpq	%rsi, -104(%rbp)        # 8-byte Folded Reload
	je	.LBB0_248
.LBB0_254:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rcx
	jae	.LBB0_256
# %bb.255:                              #   in Loop: Header=BB0_254 Depth=1
	movdqu	%xmm0, -16(%rbx,%rdi)
	cmpq	%rsi, %rcx
	jbe	.LBB0_252
	jmp	.LBB0_257
.LBB0_256:                              #   in Loop: Header=BB0_254 Depth=1
	movups	-16(%rax,%rdi), %xmm1
	movups	%xmm1, -16(%rbx,%rdi)
	cmpq	%rsi, %rcx
	jbe	.LBB0_252
.LBB0_257:                              #   in Loop: Header=BB0_254 Depth=1
	movups	(%rax,%rdi), %xmm1
	movups	%xmm1, (%rbx,%rdi)
	jmp	.LBB0_253
.LBB0_258:
	subq	%r8, %rdx
	movl	$1, %esi
	movl	$32, %edi
	pcmpeqd	%xmm0, %xmm0
	jmp	.LBB0_261
.LBB0_259:                              #   in Loop: Header=BB0_261 Depth=1
	movdqu	%xmm0, (%rbx,%rdi)
.LBB0_260:                              #   in Loop: Header=BB0_261 Depth=1
	addq	$2, %rsi
	addq	$32, %rdi
	cmpq	%rsi, %rdx
	je	.LBB0_156
.LBB0_261:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rcx
	jae	.LBB0_263
# %bb.262:                              #   in Loop: Header=BB0_261 Depth=1
	movdqu	%xmm0, -16(%rbx,%rdi)
	jmp	.LBB0_264
.LBB0_263:                              #   in Loop: Header=BB0_261 Depth=1
	movups	-16(%rax,%rdi), %xmm1
	movups	%xmm1, -16(%rbx,%rdi)
.LBB0_264:                              #   in Loop: Header=BB0_261 Depth=1
	cmpq	%rsi, %rcx
	jbe	.LBB0_259
# %bb.265:                              #   in Loop: Header=BB0_261 Depth=1
	movups	(%rax,%rdi), %xmm1
	movups	%xmm1, (%rbx,%rdi)
	jmp	.LBB0_260
.LBB0_267:
	movdqu	(%rax,%rdx), %xmm0
.LBB0_268:
	movdqu	%xmm0, (%rdi)
.LBB0_269:
	movq	-216(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_271
# %bb.270:
	callq	free
.LBB0_271:
	movq	-176(%rbp), %rdi
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	jne	.LBB0_281
	jmp	.LBB0_282
.LBB0_272:
	movq	-216(%rbp), %rdi
	jmp	.LBB0_286
.LBB0_273:
	movq	-160(%rbp), %rdi
	callq	free
	movl	$1, %ebx
	jmp	.LBB0_282
.LBB0_274:
	movdqu	(%rax,%rdx), %xmm0
.LBB0_275:
	movdqu	%xmm0, (%rdi)
.LBB0_276:
	movq	-216(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_278
# %bb.277:
	callq	free
.LBB0_278:
	movq	-176(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_280
# %bb.279:
	callq	free
.LBB0_280:
	movq	-160(%rbp), %rdi
.LBB0_281:
	callq	free
	xorl	%ebx, %ebx
.LBB0_282:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_283:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_284:
	movq	-216(%rbp), %rdi
	callq	free
.LBB0_285:
	movq	-160(%rbp), %rdi
.LBB0_286:
	callq	free
.LBB0_287:
	movl	$12, %ebx
	jmp	.LBB0_282
.LBB0_288:
	movq	%r8, %r11
.LBB0_289:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_160
.LBB0_290:                              # %..loopexit17_crit_edge
	addq	%rdi, %r12
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-120(%rbp), %r15        # 8-byte Reload
	movq	%r13, %rdx
	jmp	.LBB0_161
.LBB0_291:                              # %..loopexit37_crit_edge
	addq	%rcx, %r15
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB0_68
.Lfunc_end0:
	.size	regexec, .Lfunc_end0-regexec
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sslow
	.type	sslow,@function
sslow:                                  # @sslow
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%r8, %r14
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	96(%rdi), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	cmpq	%rsi, 32(%rdi)
	je	.LBB1_2
# %bb.1:
	movsbl	-1(%r13), %eax
	jmp	.LBB1_3
.LBB1_2:
	movl	$128, %eax
.LBB1_3:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$1, %ebx
	movl	$1, %r9d
	movq	-72(%rbp), %rcx         # 8-byte Reload
	shlq	%cl, %r9
	movq	(%r15), %rdi
	movq	%rcx, %rsi
	movq	%r14, %rdx
	movq	%r9, %rcx
	movl	$132, %r8d
	callq	sstep
	movl	%r14d, %ecx
	shlq	%cl, %rbx
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %r12
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%r14, -80(%rbp)         # 8-byte Spill
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
	cmpq	40(%r15), %r13
	movq	%r15, %rdx
	je	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	movsbl	(%r13), %esi
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$128, %esi
.LBB1_7:                                #   in Loop: Header=BB1_4 Depth=1
	xorl	%r15d, %r15d
	cmpl	$128, %ebx
	je	.LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_4 Depth=1
	cmpl	$10, %ebx
	jne	.LBB1_13
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	movq	(%rdx), %rax
	testb	$8, 40(%rax)
	movl	$0, %r14d
	jne	.LBB1_12
	jmp	.LBB1_14
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_4 Depth=1
	testb	$1, 8(%rdx)
	movl	$0, %r14d
	jne	.LBB1_14
# %bb.11:                               #   in Loop: Header=BB1_4 Depth=1
	movq	(%rdx), %rax
.LBB1_12:                               #   in Loop: Header=BB1_4 Depth=1
	movl	76(%rax), %r14d
	movl	$129, %r15d
	jmp	.LBB1_14
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_4 Depth=1
	xorl	%r14d, %r14d
.LBB1_14:                               #   in Loop: Header=BB1_4 Depth=1
	cmpl	$128, %esi
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	je	.LBB1_17
# %bb.15:                               #   in Loop: Header=BB1_4 Depth=1
	cmpl	$10, %esi
	jne	.LBB1_20
# %bb.16:                               #   in Loop: Header=BB1_4 Depth=1
	movq	(%rdx), %rax
	testb	$8, 40(%rax)
	jne	.LBB1_19
	jmp	.LBB1_20
	.p2align	4, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_4 Depth=1
	testb	$2, 8(%rdx)
	jne	.LBB1_20
# %bb.18:                               #   in Loop: Header=BB1_4 Depth=1
	movq	(%rdx), %rax
.LBB1_19:                               #   in Loop: Header=BB1_4 Depth=1
	xorl	%ecx, %ecx
	cmpl	$129, %r15d
	sete	%cl
	orl	$130, %ecx
	addl	80(%rax), %r14d
	movl	%ecx, %r15d
.LBB1_20:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r13, -64(%rbp)         # 8-byte Spill
	testl	%r14d, %r14d
	jle	.LBB1_23
# %bb.21:                               # %.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	addl	$1, %r14d
	movq	-80(%rbp), %r13         # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_22:                               #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movl	%r15d, %r8d
	movq	%r12, %r9
	callq	sstep
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %r12
	addl	$-1, %r14d
	cmpl	$1, %r14d
	jg	.LBB1_22
.LBB1_23:                               #   in Loop: Header=BB1_4 Depth=1
	cmpl	$129, %r15d
	jne	.LBB1_25
# %bb.24:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$129, %r14d
	movq	-96(%rbp), %rbx         # 8-byte Reload
	cmpl	$128, %ebx
	jne	.LBB1_30
	jmp	.LBB1_31
	.p2align	4, 0x90
.LBB1_25:                               #   in Loop: Header=BB1_4 Depth=1
	cmpl	$128, -56(%rbp)         # 4-byte Folded Reload
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	-96(%rbp), %rbx         # 8-byte Reload
	jne	.LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_4 Depth=1
	movl	%r15d, %r14d
	jmp	.LBB1_41
	.p2align	4, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_4 Depth=1
	callq	__locale_ctype_ptr
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movzbl	%cl, %edx
	cmpl	$128, %ebx
	je	.LBB1_33
# %bb.28:                               #   in Loop: Header=BB1_4 Depth=1
	cmpl	$95, %ecx
	je	.LBB1_33
# %bb.29:                               #   in Loop: Header=BB1_4 Depth=1
	movb	1(%rax,%rdx), %al
	andb	$7, %al
	jne	.LBB1_34
.LBB1_30:                               #   in Loop: Header=BB1_4 Depth=1
	callq	__locale_ctype_ptr
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movzbl	%bl, %ecx
	testb	$7, 1(%rax,%rcx)
	movl	$133, %eax
	cmovnel	%eax, %r15d
	cmpl	$95, %ebx
	cmovel	%eax, %r15d
	movl	%r15d, %r14d
.LBB1_31:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rbx, %r13
	movq	-56(%rbp), %rbx         # 8-byte Reload
	cmpl	$128, %ebx
	je	.LBB1_39
# %bb.32:                               #   in Loop: Header=BB1_4 Depth=1
	movzbl	%bl, %r15d
	jmp	.LBB1_36
.LBB1_33:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rbx, %r13
	movl	%r15d, %r14d
	movq	%rcx, %rbx
	jmp	.LBB1_35
.LBB1_34:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rbx, %r13
	movl	%r15d, %r14d
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB1_35:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rdx, %r15
.LBB1_36:                               #   in Loop: Header=BB1_4 Depth=1
	callq	__locale_ctype_ptr
	cmpl	$95, %ebx
	je	.LBB1_43
# %bb.37:                               #   in Loop: Header=BB1_4 Depth=1
	movb	1(%rax,%r15), %al
	andb	$7, %al
	jne	.LBB1_43
# %bb.38:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
.LBB1_39:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r13, %rbx
.LBB1_40:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-64(%rbp), %r13         # 8-byte Reload
.LBB1_41:                               #   in Loop: Header=BB1_4 Depth=1
	leal	-133(%r14), %eax
	movl	%r14d, %r15d
	cmpl	$1, %eax
	jbe	.LBB1_49
# %bb.42:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-80(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_50
	.p2align	4, 0x90
.LBB1_43:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$134, %r15d
	cmpl	$130, %r14d
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%r13, %rbx
	jne	.LBB1_45
# %bb.44:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-64(%rbp), %r13         # 8-byte Reload
	jmp	.LBB1_49
.LBB1_45:                               #   in Loop: Header=BB1_4 Depth=1
	cmpl	$128, %ebx
	je	.LBB1_40
# %bb.47:                               #   in Loop: Header=BB1_4 Depth=1
	callq	__locale_ctype_ptr
	cmpl	$95, %ebx
	movq	-64(%rbp), %r13         # 8-byte Reload
	je	.LBB1_53
# %bb.48:                               #   in Loop: Header=BB1_4 Depth=1
	movzbl	%bl, %ecx
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	movq	-48(%rbp), %rdx         # 8-byte Reload
	jne	.LBB1_41
	.p2align	4, 0x90
.LBB1_49:                               #   in Loop: Header=BB1_4 Depth=1
	movq	(%rdx), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	movq	%r12, %rcx
	movl	%r15d, %r8d
	movq	%r12, %r9
	callq	sstep
	movq	%rax, %r12
.LBB1_50:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-88(%rbp), %r9          # 8-byte Reload
	testq	%r12, -112(%rbp)        # 8-byte Folded Reload
	movq	-104(%rbp), %rax        # 8-byte Reload
	cmovneq	%r13, %rax
	cmpq	-120(%rbp), %r13        # 8-byte Folded Reload
	je	.LBB1_54
# %bb.51:                               #   in Loop: Header=BB1_4 Depth=1
	cmpq	%r9, %r12
	je	.LBB1_54
# %bb.52:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movq	%r12, %rcx
	movl	%ebx, %r8d
	callq	sstep
	movq	%rax, %r12
	addq	$1, %r13
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	jmp	.LBB1_4
.LBB1_53:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB1_41
.LBB1_54:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	sslow, .Lfunc_end1-sslow
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sdissect
	.type	sdissect,@function
sdissect:                               # @sdissect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %r9
	cmpq	%r8, %rcx
	jge	.LBB2_34
# %bb.1:
	movq	%rdx, %r14
	movq	%rcx, %rsi
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	jmp	.LBB2_2
.LBB2_32:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %rcx
	subq	24(%rdi), %rcx
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	movq	16(%rdi), %rdx
	shlq	$4, %rax
	movq	%rcx, 8(%rdx,%rax)
	.p2align	4, 0x90
.LBB2_33:                               #   in Loop: Header=BB2_2 Depth=1
	cmpq	%r8, %rsi
	jge	.LBB2_34
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #     Child Loop BB2_25 Depth 2
                                        #     Child Loop BB2_29 Depth 2
                                        #     Child Loop BB2_13 Depth 2
                                        #     Child Loop BB2_19 Depth 2
                                        #     Child Loop BB2_21 Depth 2
	movq	%rsi, %r12
	movq	(%rdi), %rax
	movq	8(%rax), %rcx
	movq	(%rcx,%rsi,8), %rax
	movl	%eax, %edx
	andl	$-134217728, %edx       # imm = 0xF8000000
	cmpl	$1207959552, %edx       # imm = 0x48000000
	je	.LBB2_6
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	cmpl	$1476395008, %edx       # imm = 0x58000000
	je	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %r13
	cmpl	$2013265920, %edx       # imm = 0x78000000
	jne	.LBB2_9
# %bb.5:                                #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	movq	%rax, %rdx
	movq	%r12, %r13
	cmpq	%rbx, %rsi
	je	.LBB2_9
	.p2align	4, 0x90
.LBB2_7:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %edx        # imm = 0x7FFFFFF
	addq	%rdx, %r13
	movq	(%rcx,%r13,8), %rdx
	movl	%edx, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	cmpq	%rbx, %rsi
	jne	.LBB2_7
	jmp	.LBB2_9
	.p2align	4, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, %r13d
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	addq	%r12, %r13
.LBB2_9:                                #   in Loop: Header=BB2_2 Depth=1
	leaq	1(%r13), %rsi
	movl	%eax, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	addq	$-134217728, %rcx       # imm = 0xF8000000
	shrq	$27, %rcx
	addq	$-1, %rcx
	cmpq	$13, %rcx
	ja	.LBB2_33
# %bb.10:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r9, -72(%rbp)          # 8-byte Spill
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_11:                               #   in Loop: Header=BB2_2 Depth=1
	addq	$1, %r9
	jmp	.LBB2_33
.LBB2_18:                               # %.preheader2
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r14, %rdx
	movq	%rdi, %r15
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movq	%rsi, %r12
	.p2align	4, 0x90
.LBB2_19:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	movq	%r9, %rsi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%r12, %r8
	callq	sslow
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	sslow
	movq	-72(%rbp), %r9          # 8-byte Reload
	leaq	-1(%rbx), %rdx
	cmpq	%r14, %rax
	jne	.LBB2_19
# %bb.20:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r12         # 8-byte Reload
	addq	$1, %r12
	movq	%r9, %r15
	.p2align	4, 0x90
.LBB2_21:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %r14
	movq	%r9, %r15
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r9, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	sslow
	movq	%rax, %r9
	testq	%rax, %rax
	je	.LBB2_23
# %bb.22:                               #   in Loop: Header=BB2_21 Depth=2
	cmpq	%r15, %r9
	jne	.LBB2_21
.LBB2_23:                               #   in Loop: Header=BB2_2 Depth=1
	testq	%r9, %r9
	cmovneq	%r15, %r14
	cmoveq	%r15, %r9
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r9, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	sdissect
	movq	%rbx, %r9
	movq	%r15, %rdi
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB2_33
.LBB2_12:                               # %.preheader3
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r14, %rdx
	movq	%rsi, %r14
	movq	%r12, -88(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB2_13:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r9, %rsi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%r14, %r8
	callq	sslow
	movq	%rax, %r12
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	sslow
	movq	-72(%rbp), %r9          # 8-byte Reload
	leaq	-1(%r12), %rdx
	cmpq	%rbx, %rax
	jne	.LBB2_13
# %bb.14:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r9, %rsi
	movq	%r12, %rdx
	movq	%rcx, %r14
	movq	%r9, %rbx
	movq	%r13, %r8
	callq	sslow
	testq	%rax, %rax
	je	.LBB2_15
# %bb.17:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rbx, %rsi
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	sdissect
	movq	%r12, %r9
	movq	%r15, %rdi
	jmp	.LBB2_16
.LBB2_31:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r9, %rcx
	subq	24(%rdi), %rcx
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	movq	16(%rdi), %rdx
	shlq	$4, %rax
	movq	%rcx, (%rdx,%rax)
	jmp	.LBB2_33
.LBB2_24:                               # %.preheader1
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r14, %rdx
	movq	%rsi, %r15
	movq	%rdi, %rbx
	.p2align	4, 0x90
.LBB2_25:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	movq	%r9, %rsi
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	sslow
	movq	%rax, %r13
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	sslow
	movq	-72(%rbp), %r9          # 8-byte Reload
	leaq	-1(%r13), %rdx
	cmpq	%r14, %rax
	jne	.LBB2_25
# %bb.26:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r12,8), %rax
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	leaq	(%r12,%rax), %r14
	addq	$-1, %r14
	addq	$1, %r12
	movq	%rbx, %rdi
	movq	%r9, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	sslow
	movq	%rbx, %r15
	cmpq	%r13, %rax
	je	.LBB2_27
# %bb.28:                               # %.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_29:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rax
	movq	8(%rax), %rax
	movq	8(%rax,%r14,8), %rbx
	andl	$134217727, %ebx        # imm = 0x7FFFFFF
	leaq	(%rbx,%r14), %rcx
	addq	$1, %rcx
	movq	(%rax,%rcx,8), %rax
	andl	$-134217728, %eax       # imm = 0xF8000000
	movl	$2415919104, %edx       # imm = 0x90000000
	addq	$-134217728, %rdx       # imm = 0xF8000000
	addq	%r14, %rbx
	cmpq	%rdx, %rax
	cmovneq	%rcx, %rbx
	movq	%r14, %r12
	addq	$2, %r12
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	sslow
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %r14
	cmpq	%r13, %rax
	jne	.LBB2_29
	jmp	.LBB2_30
.LBB2_15:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %r9
	movq	-64(%rbp), %rdi         # 8-byte Reload
.LBB2_16:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	jmp	.LBB2_33
.LBB2_27:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r14, %rbx
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB2_30:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	sdissect
	movq	%r13, %r9
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r15, %rdi
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB2_33
.LBB2_34:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r9, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sdissect, .Lfunc_end2-sdissect
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_11
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_11
	.quad	.LBB2_11
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_18
	.quad	.LBB2_33
	.quad	.LBB2_12
	.quad	.LBB2_33
	.quad	.LBB2_31
	.quad	.LBB2_32
	.quad	.LBB2_24
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function sbackref
	.type	sbackref,@function
sbackref:                               # @sbackref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %rbx
	cmpq	%r8, %rcx
	jge	.LBB3_46
# %bb.1:
	movq	%r8, %r13
	movq	%rcx, %r15
	movq	%rdi, %r12
	movq	%r9, -56(%rbp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$2415919104, %r14d      # imm = 0x90000000
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB3_4
.LBB3_18:                               #   in Loop: Header=BB3_4 Depth=1
	cmpq	%rdx, %rbx
	je	.LBB3_48
.LBB3_8:                                #   in Loop: Header=BB3_4 Depth=1
	addq	$1, %rbx
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	addq	$1, %r15
	cmpq	%r13, %r15
	jge	.LBB3_46
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_24 Depth 2
	movq	(%r12), %rax
	movq	8(%rax), %rcx
	movq	(%rcx,%r15,8), %rdi
	movl	%edi, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	addq	$-268435456, %rsi       # imm = 0xF0000000
	shrq	$27, %rsi
	cmpq	$18, %rsi
	ja	.LBB3_49
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	jmpq	*.LJTI3_0(,%rsi,8)
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	cmpq	%rdx, %rbx
	je	.LBB3_48
# %bb.7:                                #   in Loop: Header=BB3_4 Depth=1
	movsbl	(%rbx), %eax
	movsbl	%dil, %ecx
	cmpl	%eax, %ecx
	je	.LBB3_8
	jmp	.LBB3_48
.LBB3_9:                                #   in Loop: Header=BB3_4 Depth=1
	cmpq	32(%r12), %rbx
	jne	.LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$1, 8(%r12)
	je	.LBB3_3
.LBB3_11:                               #   in Loop: Header=BB3_4 Depth=1
	cmpq	40(%r12), %rbx
	jae	.LBB3_48
# %bb.12:                               #   in Loop: Header=BB3_4 Depth=1
	cmpb	$10, -1(%rbx)
	je	.LBB3_17
	jmp	.LBB3_48
.LBB3_13:                               #   in Loop: Header=BB3_4 Depth=1
	movq	40(%r12), %rcx
	cmpq	%rcx, %rbx
	jne	.LBB3_15
# %bb.14:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$2, 8(%r12)
	je	.LBB3_3
.LBB3_15:                               #   in Loop: Header=BB3_4 Depth=1
	cmpq	%rcx, %rbx
	jae	.LBB3_48
# %bb.16:                               #   in Loop: Header=BB3_4 Depth=1
	cmpb	$10, (%rbx)
	jne	.LBB3_48
.LBB3_17:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$8, 40(%rax)
	jne	.LBB3_3
	jmp	.LBB3_48
.LBB3_20:                               #   in Loop: Header=BB3_4 Depth=1
	cmpq	%rdx, %rbx
	je	.LBB3_48
# %bb.21:                               #   in Loop: Header=BB3_4 Depth=1
	movq	24(%rax), %rax
	andl	$134217727, %edi        # imm = 0x7FFFFFF
	shlq	$5, %rdi
	movq	(%rax,%rdi), %rcx
	movzbl	(%rbx), %esi
	movb	8(%rax,%rdi), %al
	testb	%al, (%rcx,%rsi)
	jne	.LBB3_8
	jmp	.LBB3_48
.LBB3_23:                               #   in Loop: Header=BB3_4 Depth=1
	movq	8(%rcx,%r15,8), %rax
	addq	$1, %r15
	.p2align	4, 0x90
.LBB3_24:                               #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	addq	%rax, %r15
	movq	(%rcx,%r15,8), %rax
	movl	%eax, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	cmpq	%r14, %rsi
	jne	.LBB3_24
	jmp	.LBB3_3
.LBB3_25:                               #   in Loop: Header=BB3_4 Depth=1
	movq	32(%r12), %rcx
	cmpq	%rcx, %rbx
	jne	.LBB3_27
# %bb.26:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$1, 8(%r12)
	je	.LBB3_33
.LBB3_27:                               #   in Loop: Header=BB3_4 Depth=1
	cmpq	40(%r12), %rbx
	jae	.LBB3_30
# %bb.28:                               #   in Loop: Header=BB3_4 Depth=1
	cmpb	$10, -1(%rbx)
	jne	.LBB3_30
# %bb.29:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$8, 40(%rax)
	jne	.LBB3_33
.LBB3_30:                               #   in Loop: Header=BB3_4 Depth=1
	cmpq	%rcx, %rbx
	jbe	.LBB3_48
# %bb.31:                               #   in Loop: Header=BB3_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	-1(%rbx), %ecx
	cmpq	$95, %rcx
	je	.LBB3_48
# %bb.32:                               #   in Loop: Header=BB3_4 Depth=1
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	jne	.LBB3_48
.LBB3_33:                               #   in Loop: Header=BB3_4 Depth=1
	cmpq	40(%r12), %rbx
	jae	.LBB3_48
# %bb.34:                               #   in Loop: Header=BB3_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ecx
	cmpq	$95, %rcx
	jne	.LBB3_2
.LBB3_35:                               #   in Loop: Header=BB3_4 Depth=1
	movq	-64(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB3_3
.LBB3_36:                               #   in Loop: Header=BB3_4 Depth=1
	movq	40(%r12), %rcx
	cmpq	%rcx, %rbx
	jne	.LBB3_38
# %bb.37:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$2, 8(%r12)
	je	.LBB3_43
.LBB3_38:                               #   in Loop: Header=BB3_4 Depth=1
	cmpq	%rcx, %rbx
	jae	.LBB3_48
# %bb.39:                               #   in Loop: Header=BB3_4 Depth=1
	cmpb	$10, (%rbx)
	jne	.LBB3_41
# %bb.40:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$8, 40(%rax)
	jne	.LBB3_43
.LBB3_41:                               #   in Loop: Header=BB3_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ecx
	cmpq	$95, %rcx
	je	.LBB3_48
# %bb.42:                               #   in Loop: Header=BB3_4 Depth=1
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	jne	.LBB3_48
.LBB3_43:                               #   in Loop: Header=BB3_4 Depth=1
	cmpq	32(%r12), %rbx
	jbe	.LBB3_48
# %bb.44:                               #   in Loop: Header=BB3_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	-1(%rbx), %ecx
	cmpq	$95, %rcx
	je	.LBB3_35
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	movq	-64(%rbp), %rdx         # 8-byte Reload
	jne	.LBB3_3
	jmp	.LBB3_48
.LBB3_46:
	xorl	%eax, %eax
	cmpq	%rdx, %rbx
	cmoveq	%rbx, %rax
.LBB3_47:
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB3_48:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_49:
	movq	(%r12), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r15,8), %r8
	movl	%r8d, %eax
	andl	$-134217728, %eax       # imm = 0xF8000000
	addq	$-939524096, %rax       # imm = 0xC8000000
	shrq	$27, %rax
	movl	$.L.str, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	cmpq	$8, %rax
	ja	.LBB3_48
# %bb.50:
	leaq	1(%r15), %r10
	jmpq	*.LJTI3_1(,%rax,8)
.LBB3_51:
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	movq	16(%r12), %rax
	movq	%r8, %rcx
	shlq	$4, %rcx
	movq	8(%rax,%rcx), %r14
	cmpq	$-1, %r14
	je	.LBB3_68
# %bb.52:
	movq	(%rax,%rcx), %rsi
	subq	%rsi, %r14
	movq	%rdx, %rax
	subq	%r14, %rax
	cmpq	%rax, %rbx
	ja	.LBB3_68
# %bb.53:
	movq	%r8, -48(%rbp)          # 8-byte Spill
	addq	24(%r12), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB3_68
# %bb.54:
	movq	(%r12), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	orq	$1073741824, %rcx       # imm = 0x40000000
.LBB3_55:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, (%rax,%r15,8)
	leaq	1(%r15), %r15
	jne	.LBB3_55
# %bb.56:
	addq	%r14, %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	jmp	.LBB3_63
.LBB3_57:
	movq	56(%r12), %rax
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%rbx, 8(%rax,%r9,8)
	addq	$1, %r9
	jmp	.LBB3_74
.LBB3_58:
	movq	56(%r12), %rax
	movq	-56(%rbp), %r9          # 8-byte Reload
	cmpq	(%rax,%r9,8), %rbx
	je	.LBB3_73
# %bb.59:
	movq	%rbx, (%rax,%r9,8)
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	movq	%r10, %rcx
	subq	%r8, %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %r8
	movq	%r10, %r14
	callq	sbackref
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB3_48
# %bb.60:
	movq	%r14, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	addq	$-1, %r9
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	jmp	.LBB3_75
.LBB3_61:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r10, %rcx
	movq	%r8, %r14
	movq	%r13, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, %r15
	callq	sbackref
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB3_48
# %bb.62:
	movq	%r15, %rsi
	movq	%r14, %r8
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	addq	%r15, %r8
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r8, %rcx
.LBB3_63:
	movq	%r13, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	sbackref
	jmp	.LBB3_47
.LBB3_64:
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	movq	16(%r12), %rax
	shlq	$4, %r8
	movq	(%rax,%r8), %r14
	movq	%rbx, %rcx
	subq	24(%r12), %rcx
	movq	%rcx, (%rax,%r8)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r10, %rcx
	movq	%r8, %rbx
	movq	%r13, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	sbackref
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB3_48
# %bb.65:
	movq	%rbx, %rdx
	movq	16(%r12), %rax
	movq	%r14, (%rax,%rbx)
	jmp	.LBB3_68
.LBB3_66:
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	movq	16(%r12), %rax
	shlq	$4, %r8
	movq	8(%rax,%r8), %r14
	movq	%rbx, %rcx
	subq	24(%r12), %rcx
	movq	%rcx, 8(%rax,%r8)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r10, %rcx
	movq	%r8, %rbx
	movq	%r13, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	sbackref
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB3_48
# %bb.67:
	movq	%rbx, %rdx
	movq	16(%r12), %rax
	movq	%r14, 8(%rax,%rbx)
.LBB3_68:
	xorl	%eax, %eax
	jmp	.LBB3_47
.LBB3_69:
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	addq	%r8, %r15
	addq	$-1, %r15
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r10, %rcx
	movq	%r15, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	sbackref
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB3_48
# %bb.70:                               # %.preheader
	movl	$2415919104, %eax       # imm = 0x90000000
	leaq	-134217728(%rax), %r14
.LBB3_71:                               # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r15,8), %rcx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	movl	$2415919104, %esi       # imm = 0x90000000
	cmpq	%rsi, %rcx
	je	.LBB3_68
# %bb.72:                               #   in Loop: Header=BB3_71 Depth=1
	movq	8(%rax,%r15,8), %r13
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	leaq	(%r15,%r13), %rsi
	addq	$1, %rsi
	movq	(%rax,%rsi,8), %rax
	andl	$-134217728, %eax       # imm = 0xF8000000
	addq	%r15, %r13
	leaq	2(%r15), %rcx
	cmpq	%r14, %rax
	cmovneq	%rsi, %r13
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	sbackref
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r13, %r15
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB3_71
	jmp	.LBB3_48
.LBB3_73:
	addq	$-1, %r9
.LBB3_74:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r10, %rcx
.LBB3_75:
	movq	%r13, %r8
	callq	sbackref
	jmp	.LBB3_47
.Lfunc_end3:
	.size	sbackref, .Lfunc_end3-sbackref
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_6
	.quad	.LBB3_9
	.quad	.LBB3_13
	.quad	.LBB3_18
	.quad	.LBB3_20
	.quad	.LBB3_49
	.quad	.LBB3_49
	.quad	.LBB3_49
	.quad	.LBB3_49
	.quad	.LBB3_49
	.quad	.LBB3_3
	.quad	.LBB3_49
	.quad	.LBB3_49
	.quad	.LBB3_49
	.quad	.LBB3_23
	.quad	.LBB3_49
	.quad	.LBB3_49
	.quad	.LBB3_25
	.quad	.LBB3_36
.LJTI3_1:
	.quad	.LBB3_51
	.quad	.LBB3_48
	.quad	.LBB3_57
	.quad	.LBB3_58
	.quad	.LBB3_61
	.quad	.LBB3_48
	.quad	.LBB3_64
	.quad	.LBB3_66
	.quad	.LBB3_69
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function sstep
	.type	sstep,@function
sstep:                                  # @sstep
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r9, %rax
                                        # kill: def $r8d killed $r8d def $r8
	cmpq	%rdx, %rsi
	jne	.LBB4_1
.LBB4_27:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_1:
	movq	%rcx, %r9
	movl	$2415919104, %r10d      # imm = 0x90000000
	movl	$1, %ebx
	movl	%esi, %ecx
	shlq	%cl, %rbx
	movq	8(%rdi), %r11
	movl	%r8d, %r15d
	orl	$2, %r15d
	movl	%r8d, %r12d
	orl	$1, %r12d
	movzbl	%r8b, %ecx
	movq	%rcx, (%rsp)            # 8-byte Spill
	jmp	.LBB4_2
.LBB4_5:                                #   in Loop: Header=BB4_2 Depth=1
	movq	%rbx, %rcx
	andq	%r9, %rcx
.LBB4_25:                               #   in Loop: Header=BB4_2 Depth=1
	addq	%rcx, %rcx
	orq	%rcx, %rax
.LBB4_26:                               #   in Loop: Header=BB4_2 Depth=1
	addq	$1, %rsi
	addq	%rbx, %rbx
	cmpq	%rdx, %rsi
	je	.LBB4_27
.LBB4_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
	movq	(%r11,%rsi,8), %rcx
	movl	%ecx, %ebp
	andl	$-134217728, %ebp       # imm = 0xF8000000
	addq	$-134217728, %rbp       # imm = 0xF8000000
	shrq	$27, %rbp
	addq	$-1, %rbp
	cmpq	$18, %rbp
	ja	.LBB4_26
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	jmpq	*.LJTI4_0(,%rbp,8)
.LBB4_24:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rcx
	andq	%rbx, %rcx
	jmp	.LBB4_25
.LBB4_16:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rbp
	andq	%rbx, %rbp
	addq	%rbp, %rbp
	orq	%rax, %rbp
	movq	%rbp, %rax
	andq	%rbx, %rax
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rax
	orq	%rbp, %rax
	jmp	.LBB4_26
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
	movsbl	%cl, %ecx
	cmpl	%r8d, %ecx
	je	.LBB4_5
	jmp	.LBB4_26
.LBB4_6:                                #   in Loop: Header=BB4_2 Depth=1
	cmpl	$131, %r15d
	je	.LBB4_5
	jmp	.LBB4_26
.LBB4_7:                                #   in Loop: Header=BB4_2 Depth=1
	cmpl	$131, %r12d
	je	.LBB4_5
	jmp	.LBB4_26
.LBB4_10:                               #   in Loop: Header=BB4_2 Depth=1
	cmpl	$127, %r8d
	jle	.LBB4_5
	jmp	.LBB4_26
.LBB4_11:                               #   in Loop: Header=BB4_2 Depth=1
	cmpl	$127, %r8d
	jg	.LBB4_26
# %bb.12:                               #   in Loop: Header=BB4_2 Depth=1
	andl	$134217727, %ecx        # imm = 0x7FFFFFF
	movq	24(%rdi), %rbp
	shlq	$5, %rcx
	movq	(%rbp,%rcx), %r13
	movb	8(%rbp,%rcx), %cl
	movq	(%rsp), %rbp            # 8-byte Reload
	testb	%cl, (%r13,%rbp)
	jne	.LBB4_5
	jmp	.LBB4_26
.LBB4_13:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rbp
	andq	%rbx, %rbp
	addq	%rbp, %rbp
	orq	%rax, %rbp
	movq	%rbx, %r13
	shrq	%cl, %r13
	movq	%rbp, %rax
	andq	%rbx, %rax
	shrq	%cl, %rax
	orq	%rbp, %rax
	testq	%rbp, %r13
	jne	.LBB4_26
# %bb.14:                               #   in Loop: Header=BB4_2 Depth=1
	andq	%rax, %r13
	je	.LBB4_26
# %bb.15:                               #   in Loop: Header=BB4_2 Depth=1
	andl	$134217727, %ecx        # imm = 0x7FFFFFF
	notq	%rcx
	addq	%rcx, %rsi
	movl	$1, %ebx
	movl	%esi, %ecx
	shlq	%cl, %rbx
	jmp	.LBB4_26
.LBB4_17:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %r13
	andq	%rbx, %r13
	je	.LBB4_26
# %bb.18:                               #   in Loop: Header=BB4_2 Depth=1
	movq	8(%r11,%rsi,8), %r14
	movl	%r14d, %ebp
	andl	$-134217728, %ebp       # imm = 0xF8000000
	movl	$1, %ecx
	cmpq	%r10, %rbp
	je	.LBB4_21
# %bb.19:                               # %.preheader
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB4_20:                               #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %r14d       # imm = 0x7FFFFFF
	addq	%r14, %rcx
	leaq	(%rcx,%rsi), %rbp
	movq	(%r11,%rbp,8), %r14
	movl	%r14d, %ebp
	andl	$-134217728, %ebp       # imm = 0xF8000000
	cmpq	%r10, %rbp
	jne	.LBB4_20
.LBB4_21:                               #   in Loop: Header=BB4_2 Depth=1
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r13
	orq	%r13, %rax
	jmp	.LBB4_26
.LBB4_22:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rbp
	andq	%rbx, %rbp
	addq	%rbp, %rbp
	orq	%rbp, %rax
	andl	$134217727, %ecx        # imm = 0x7FFFFFF
	leaq	(%rcx,%rsi), %rbp
	movq	(%r11,%rbp,8), %rbp
	andl	$-134217728, %ebp       # imm = 0xF8000000
	cmpq	%r10, %rbp
	je	.LBB4_26
# %bb.23:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rbp
	andq	%rbx, %rbp
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rbp
	orq	%rbp, %rax
	jmp	.LBB4_26
.LBB4_8:                                #   in Loop: Header=BB4_2 Depth=1
	cmpl	$133, %r8d
	je	.LBB4_5
	jmp	.LBB4_26
.LBB4_9:                                #   in Loop: Header=BB4_2 Depth=1
	cmpl	$134, %r8d
	je	.LBB4_5
	jmp	.LBB4_26
.Lfunc_end4:
	.size	sstep, .Lfunc_end4-sstep
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI4_0:
	.quad	.LBB4_4
	.quad	.LBB4_6
	.quad	.LBB4_7
	.quad	.LBB4_10
	.quad	.LBB4_11
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_13
	.quad	.LBB4_16
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_24
	.quad	.LBB4_16
	.quad	.LBB4_17
	.quad	.LBB4_22
	.quad	.LBB4_24
	.quad	.LBB4_8
	.quad	.LBB4_9
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function lslow
	.type	lslow,@function
lslow:                                  # @lslow
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rsi, %r13
	movq	80(%rdi), %r15
	movq	104(%rdi), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	96(%rdi), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	cmpq	%rsi, 32(%rdi)
	je	.LBB5_2
# %bb.1:
	movsbl	-1(%r13), %eax
	jmp	.LBB5_3
.LBB5_2:
	movl	$128, %eax
.LBB5_3:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rax
	movq	48(%rax), %rdx
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memset
	movb	$1, (%r15,%r14)
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movl	$132, %r8d
	movq	%r15, %r9
	callq	lstep
	movq	%rax, %rcx
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	40(%rbx), %r13
	je	.LBB5_5
	.p2align	4, 0x90
.LBB5_4:
	movsbl	(%r13), %edx
	jmp	.LBB5_6
	.p2align	4, 0x90
.LBB5_5:
	movl	$128, %edx
.LBB5_6:
	xorl	%r8d, %r8d
	cmpl	$128, %esi
	je	.LBB5_9
# %bb.7:
	cmpl	$10, %esi
	jne	.LBB5_12
# %bb.8:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testb	$8, 40(%rax)
	movl	$0, %edi
	jne	.LBB5_11
	jmp	.LBB5_13
	.p2align	4, 0x90
.LBB5_9:
	movq	-48(%rbp), %rax         # 8-byte Reload
	testb	$1, 8(%rax)
	movl	$0, %edi
	jne	.LBB5_13
# %bb.10:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
.LBB5_11:
	movl	76(%rax), %edi
	movl	$129, %r8d
	jmp	.LBB5_13
	.p2align	4, 0x90
.LBB5_12:
	xorl	%edi, %edi
.LBB5_13:
	cmpl	$128, %edx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r13, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	je	.LBB5_16
# %bb.14:
	cmpl	$10, %edx
	jne	.LBB5_19
# %bb.15:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testb	$8, 40(%rax)
	jne	.LBB5_18
	jmp	.LBB5_19
	.p2align	4, 0x90
.LBB5_16:
	movq	-48(%rbp), %rax         # 8-byte Reload
	testb	$2, 8(%rax)
	jne	.LBB5_19
# %bb.17:
	movq	(%rax), %rax
.LBB5_18:
	xorl	%ecx, %ecx
	cmpl	$129, %r8d
	sete	%cl
	orl	$130, %ecx
	addl	80(%rax), %edi
	movl	%ecx, %r8d
.LBB5_19:
	testl	%edi, %edi
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	-88(%rbp), %r14         # 8-byte Reload
	jle	.LBB5_22
# %bb.20:                               # %.preheader
	addl	$1, %edi
	.p2align	4, 0x90
.LBB5_21:                               # =>This Inner Loop Header: Depth=1
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	(%r15), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movl	%r8d, %r13d
	movq	%r14, %r9
	callq	lstep
	movl	-92(%rbp), %edi         # 4-byte Reload
	movl	%r13d, %r8d
	addl	$-1, %edi
	cmpl	$1, %edi
	jg	.LBB5_21
.LBB5_22:
	cmpl	$129, %r8d
	jne	.LBB5_26
# %bb.23:
	movl	$129, %r14d
	movq	-80(%rbp), %r12         # 8-byte Reload
	cmpl	$128, %r12d
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB5_31
# %bb.24:
	cmpl	$128, %r15d
	jne	.LBB5_32
	jmp	.LBB5_44
	.p2align	4, 0x90
.LBB5_26:
	movq	-56(%rbp), %r15         # 8-byte Reload
	cmpl	$128, %r15d
	movq	-64(%rbp), %r12         # 8-byte Reload
	jne	.LBB5_28
# %bb.27:
	movl	%r8d, %r14d
	jmp	.LBB5_45
	.p2align	4, 0x90
.LBB5_28:
	movl	%r8d, %ebx
	movq	%r12, %r13
	callq	__locale_ctype_ptr
	movzbl	%r15b, %ecx
	movq	-80(%rbp), %r12         # 8-byte Reload
	cmpl	$128, %r12d
	je	.LBB5_40
# %bb.29:
	cmpl	$95, %r15d
	movl	%ebx, %r8d
	je	.LBB5_41
# %bb.30:
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	jne	.LBB5_41
.LBB5_31:
	movl	%r8d, %ebx
	callq	__locale_ctype_ptr
	movzbl	%r12b, %ecx
	testb	$7, 1(%rax,%rcx)
	movl	$133, %eax
	cmovnel	%eax, %ebx
	cmpl	$95, %r12d
	cmovel	%eax, %ebx
	movl	%ebx, %r14d
	cmpl	$128, %r15d
	je	.LBB5_44
.LBB5_32:
	movzbl	%r15b, %ebx
.LBB5_33:
	callq	__locale_ctype_ptr
	cmpl	$95, %r15d
	je	.LBB5_36
# %bb.34:
	movb	1(%rax,%rbx), %al
	andb	$7, %al
	je	.LBB5_44
.LBB5_36:
	movl	$134, %r15d
	cmpl	$130, %r14d
	jne	.LBB5_38
# %bb.37:
	movq	%r13, %r12
	jmp	.LBB5_46
.LBB5_38:
	cmpl	$128, %r12d
	je	.LBB5_44
# %bb.42:
	callq	__locale_ctype_ptr
	cmpl	$95, %r12d
	je	.LBB5_44
# %bb.43:
	movzbl	%r12b, %ecx
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	movq	%r13, %r12
	je	.LBB5_46
	jmp	.LBB5_45
	.p2align	4, 0x90
.LBB5_44:
	movq	%r13, %r12
.LBB5_45:
	leal	-133(%r14), %eax
	movl	%r14d, %r15d
	cmpl	$1, %eax
	ja	.LBB5_47
.LBB5_46:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movl	%r15d, %r8d
	movq	%rcx, %r9
	callq	lstep
	jmp	.LBB5_48
	.p2align	4, 0x90
.LBB5_47:
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
.LBB5_48:
	movq	%r12, %r13
	cmpb	$0, (%rax,%r12)
	movq	-104(%rbp), %r15        # 8-byte Reload
	movq	-120(%rbp), %r14        # 8-byte Reload
	cmovneq	%r14, %r15
	movq	(%rbx), %rcx
	movq	48(%rcx), %rdx
	movq	%rax, %r12
	movq	%rax, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	memcmp
	cmpq	-136(%rbp), %r14        # 8-byte Folded Reload
	je	.LBB5_51
# %bb.49:
	testl	%eax, %eax
	je	.LBB5_51
# %bb.50:
	movq	%r15, -104(%rbp)        # 8-byte Spill
	movq	(%rbx), %rax
	movq	48(%rax), %rdx
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	(%rbx), %rax
	movq	48(%rax), %rdx
	movq	%r12, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	movq	(%rbx), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r13, %rdx
	movq	%r15, %rcx
	movq	-80(%rbp), %r14         # 8-byte Reload
	movl	%r14d, %r8d
	movq	%r12, %r9
	callq	lstep
	movq	%rax, %rcx
	movq	-120(%rbp), %r13        # 8-byte Reload
	addq	$1, %r13
	movl	%r14d, %esi
	cmpq	40(%rbx), %r13
	jne	.LBB5_4
	jmp	.LBB5_5
.LBB5_40:
	movl	%ebx, %r14d
	movq	%rcx, %rbx
	jmp	.LBB5_33
.LBB5_41:
	movl	%r8d, %r14d
	movq	%rcx, %rbx
	jmp	.LBB5_33
.LBB5_51:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	lslow, .Lfunc_end5-lslow
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ldissect
	.type	ldissect,@function
ldissect:                               # @ldissect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %r9
	cmpq	%r8, %rcx
	jge	.LBB6_34
# %bb.1:
	movq	%rdx, %r14
	movq	%rcx, %rsi
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	jmp	.LBB6_2
.LBB6_32:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r9, %rcx
	subq	24(%rdi), %rcx
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	movq	16(%rdi), %rdx
	shlq	$4, %rax
	movq	%rcx, 8(%rdx,%rax)
	.p2align	4, 0x90
.LBB6_33:                               #   in Loop: Header=BB6_2 Depth=1
	cmpq	%r8, %rsi
	jge	.LBB6_34
.LBB6_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
                                        #     Child Loop BB6_25 Depth 2
                                        #     Child Loop BB6_29 Depth 2
                                        #     Child Loop BB6_13 Depth 2
                                        #     Child Loop BB6_19 Depth 2
                                        #     Child Loop BB6_21 Depth 2
	movq	%rsi, %r12
	movq	(%rdi), %rax
	movq	8(%rax), %rcx
	movq	(%rcx,%rsi,8), %rax
	movl	%eax, %edx
	andl	$-134217728, %edx       # imm = 0xF8000000
	cmpl	$1207959552, %edx       # imm = 0x48000000
	je	.LBB6_6
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=1
	cmpl	$1476395008, %edx       # imm = 0x58000000
	je	.LBB6_6
# %bb.4:                                #   in Loop: Header=BB6_2 Depth=1
	movq	%r12, %r13
	cmpl	$2013265920, %edx       # imm = 0x78000000
	jne	.LBB6_9
# %bb.5:                                #   in Loop: Header=BB6_2 Depth=1
	movl	%eax, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	movq	%rax, %rdx
	movq	%r12, %r13
	cmpq	%rbx, %rsi
	je	.LBB6_9
	.p2align	4, 0x90
.LBB6_7:                                #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %edx        # imm = 0x7FFFFFF
	addq	%rdx, %r13
	movq	(%rcx,%r13,8), %rdx
	movl	%edx, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	cmpq	%rbx, %rsi
	jne	.LBB6_7
	jmp	.LBB6_9
	.p2align	4, 0x90
.LBB6_6:                                #   in Loop: Header=BB6_2 Depth=1
	movl	%eax, %r13d
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	addq	%r12, %r13
.LBB6_9:                                #   in Loop: Header=BB6_2 Depth=1
	leaq	1(%r13), %rsi
	movl	%eax, %ecx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	addq	$-134217728, %rcx       # imm = 0xF8000000
	shrq	$27, %rcx
	addq	$-1, %rcx
	cmpq	$13, %rcx
	ja	.LBB6_33
# %bb.10:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r9, -72(%rbp)          # 8-byte Spill
	jmpq	*.LJTI6_0(,%rcx,8)
.LBB6_11:                               #   in Loop: Header=BB6_2 Depth=1
	addq	$1, %r9
	jmp	.LBB6_33
.LBB6_18:                               # %.preheader2
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	%r14, %rdx
	movq	%rdi, %r15
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movq	%rsi, %r12
	.p2align	4, 0x90
.LBB6_19:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	movq	%r9, %rsi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%r12, %r8
	callq	lslow
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	movq	%r12, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	lslow
	movq	-72(%rbp), %r9          # 8-byte Reload
	leaq	-1(%rbx), %rdx
	cmpq	%r14, %rax
	jne	.LBB6_19
# %bb.20:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r12         # 8-byte Reload
	addq	$1, %r12
	movq	%r9, %r15
	.p2align	4, 0x90
.LBB6_21:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %r14
	movq	%r9, %r15
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r9, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	lslow
	movq	%rax, %r9
	testq	%rax, %rax
	je	.LBB6_23
# %bb.22:                               #   in Loop: Header=BB6_21 Depth=2
	cmpq	%r15, %r9
	jne	.LBB6_21
.LBB6_23:                               #   in Loop: Header=BB6_2 Depth=1
	testq	%r9, %r9
	cmovneq	%r15, %r14
	cmoveq	%r15, %r9
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r9, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	ldissect
	movq	%rbx, %r9
	movq	%r15, %rdi
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB6_33
.LBB6_12:                               # %.preheader3
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	%r14, %rdx
	movq	%rsi, %r14
	movq	%r12, -88(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB6_13:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r9, %rsi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%r14, %r8
	callq	lslow
	movq	%rax, %r12
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	lslow
	movq	-72(%rbp), %r9          # 8-byte Reload
	leaq	-1(%r12), %rdx
	cmpq	%rbx, %rax
	jne	.LBB6_13
# %bb.14:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r9, %rsi
	movq	%r12, %rdx
	movq	%rcx, %r14
	movq	%r9, %rbx
	movq	%r13, %r8
	callq	lslow
	testq	%rax, %rax
	je	.LBB6_15
# %bb.17:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%rbx, %rsi
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	ldissect
	movq	%r12, %r9
	movq	%r15, %rdi
	jmp	.LBB6_16
.LBB6_31:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r9, %rcx
	subq	24(%rdi), %rcx
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	movq	16(%rdi), %rdx
	shlq	$4, %rax
	movq	%rcx, (%rdx,%rax)
	jmp	.LBB6_33
.LBB6_24:                               # %.preheader1
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	%r14, %rdx
	movq	%rsi, %r15
	movq	%rdi, %rbx
	.p2align	4, 0x90
.LBB6_25:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	movq	%r9, %rsi
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	lslow
	movq	%rax, %r13
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	lslow
	movq	-72(%rbp), %r9          # 8-byte Reload
	leaq	-1(%r13), %rdx
	cmpq	%r14, %rax
	jne	.LBB6_25
# %bb.26:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r12,8), %rax
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	leaq	(%r12,%rax), %r14
	addq	$-1, %r14
	addq	$1, %r12
	movq	%rbx, %rdi
	movq	%r9, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	lslow
	movq	%rbx, %r15
	cmpq	%r13, %rax
	je	.LBB6_27
# %bb.28:                               # %.preheader
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB6_29:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rax
	movq	8(%rax), %rax
	movq	8(%rax,%r14,8), %rbx
	andl	$134217727, %ebx        # imm = 0x7FFFFFF
	leaq	(%rbx,%r14), %rcx
	addq	$1, %rcx
	movq	(%rax,%rcx,8), %rax
	andl	$-134217728, %eax       # imm = 0xF8000000
	movl	$2415919104, %edx       # imm = 0x90000000
	addq	$-134217728, %rdx       # imm = 0xF8000000
	addq	%r14, %rbx
	cmpq	%rdx, %rax
	cmovneq	%rcx, %rbx
	movq	%r14, %r12
	addq	$2, %r12
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	lslow
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %r14
	cmpq	%r13, %rax
	jne	.LBB6_29
	jmp	.LBB6_30
.LBB6_15:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r12, %r9
	movq	-64(%rbp), %rdi         # 8-byte Reload
.LBB6_16:                               #   in Loop: Header=BB6_2 Depth=1
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	jmp	.LBB6_33
.LBB6_27:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r14, %rbx
	movq	-72(%rbp), %rsi         # 8-byte Reload
.LBB6_30:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	ldissect
	movq	%r13, %r9
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r15, %rdi
	movl	$2415919104, %ebx       # imm = 0x90000000
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB6_33
.LBB6_34:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r9, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ldissect, .Lfunc_end6-ldissect
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI6_0:
	.quad	.LBB6_11
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_11
	.quad	.LBB6_11
	.quad	.LBB6_33
	.quad	.LBB6_33
	.quad	.LBB6_18
	.quad	.LBB6_33
	.quad	.LBB6_12
	.quad	.LBB6_33
	.quad	.LBB6_31
	.quad	.LBB6_32
	.quad	.LBB6_24
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function lbackref
	.type	lbackref,@function
lbackref:                               # @lbackref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %rbx
	cmpq	%r8, %rcx
	jge	.LBB7_46
# %bb.1:
	movq	%r8, %r13
	movq	%rcx, %r15
	movq	%rdi, %r12
	movq	%r9, -56(%rbp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$2415919104, %r14d      # imm = 0x90000000
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB7_4
.LBB7_18:                               #   in Loop: Header=BB7_4 Depth=1
	cmpq	%rdx, %rbx
	je	.LBB7_48
.LBB7_8:                                #   in Loop: Header=BB7_4 Depth=1
	addq	$1, %rbx
.LBB7_3:                                #   in Loop: Header=BB7_4 Depth=1
	addq	$1, %r15
	cmpq	%r13, %r15
	jge	.LBB7_46
.LBB7_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
	movq	(%r12), %rax
	movq	8(%rax), %rcx
	movq	(%rcx,%r15,8), %rdi
	movl	%edi, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	addq	$-268435456, %rsi       # imm = 0xF0000000
	shrq	$27, %rsi
	cmpq	$18, %rsi
	ja	.LBB7_49
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	jmpq	*.LJTI7_0(,%rsi,8)
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=1
	cmpq	%rdx, %rbx
	je	.LBB7_48
# %bb.7:                                #   in Loop: Header=BB7_4 Depth=1
	movsbl	(%rbx), %eax
	movsbl	%dil, %ecx
	cmpl	%eax, %ecx
	je	.LBB7_8
	jmp	.LBB7_48
.LBB7_9:                                #   in Loop: Header=BB7_4 Depth=1
	cmpq	32(%r12), %rbx
	jne	.LBB7_11
# %bb.10:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$1, 8(%r12)
	je	.LBB7_3
.LBB7_11:                               #   in Loop: Header=BB7_4 Depth=1
	cmpq	40(%r12), %rbx
	jae	.LBB7_48
# %bb.12:                               #   in Loop: Header=BB7_4 Depth=1
	cmpb	$10, -1(%rbx)
	je	.LBB7_17
	jmp	.LBB7_48
.LBB7_13:                               #   in Loop: Header=BB7_4 Depth=1
	movq	40(%r12), %rcx
	cmpq	%rcx, %rbx
	jne	.LBB7_15
# %bb.14:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$2, 8(%r12)
	je	.LBB7_3
.LBB7_15:                               #   in Loop: Header=BB7_4 Depth=1
	cmpq	%rcx, %rbx
	jae	.LBB7_48
# %bb.16:                               #   in Loop: Header=BB7_4 Depth=1
	cmpb	$10, (%rbx)
	jne	.LBB7_48
.LBB7_17:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$8, 40(%rax)
	jne	.LBB7_3
	jmp	.LBB7_48
.LBB7_20:                               #   in Loop: Header=BB7_4 Depth=1
	cmpq	%rdx, %rbx
	je	.LBB7_48
# %bb.21:                               #   in Loop: Header=BB7_4 Depth=1
	movq	24(%rax), %rax
	andl	$134217727, %edi        # imm = 0x7FFFFFF
	shlq	$5, %rdi
	movq	(%rax,%rdi), %rcx
	movzbl	(%rbx), %esi
	movb	8(%rax,%rdi), %al
	testb	%al, (%rcx,%rsi)
	jne	.LBB7_8
	jmp	.LBB7_48
.LBB7_23:                               #   in Loop: Header=BB7_4 Depth=1
	movq	8(%rcx,%r15,8), %rax
	addq	$1, %r15
	.p2align	4, 0x90
.LBB7_24:                               #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	addq	%rax, %r15
	movq	(%rcx,%r15,8), %rax
	movl	%eax, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	cmpq	%r14, %rsi
	jne	.LBB7_24
	jmp	.LBB7_3
.LBB7_25:                               #   in Loop: Header=BB7_4 Depth=1
	movq	32(%r12), %rcx
	cmpq	%rcx, %rbx
	jne	.LBB7_27
# %bb.26:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$1, 8(%r12)
	je	.LBB7_33
.LBB7_27:                               #   in Loop: Header=BB7_4 Depth=1
	cmpq	40(%r12), %rbx
	jae	.LBB7_30
# %bb.28:                               #   in Loop: Header=BB7_4 Depth=1
	cmpb	$10, -1(%rbx)
	jne	.LBB7_30
# %bb.29:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$8, 40(%rax)
	jne	.LBB7_33
.LBB7_30:                               #   in Loop: Header=BB7_4 Depth=1
	cmpq	%rcx, %rbx
	jbe	.LBB7_48
# %bb.31:                               #   in Loop: Header=BB7_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	-1(%rbx), %ecx
	cmpq	$95, %rcx
	je	.LBB7_48
# %bb.32:                               #   in Loop: Header=BB7_4 Depth=1
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	jne	.LBB7_48
.LBB7_33:                               #   in Loop: Header=BB7_4 Depth=1
	cmpq	40(%r12), %rbx
	jae	.LBB7_48
# %bb.34:                               #   in Loop: Header=BB7_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ecx
	cmpq	$95, %rcx
	jne	.LBB7_2
.LBB7_35:                               #   in Loop: Header=BB7_4 Depth=1
	movq	-64(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB7_3
.LBB7_36:                               #   in Loop: Header=BB7_4 Depth=1
	movq	40(%r12), %rcx
	cmpq	%rcx, %rbx
	jne	.LBB7_38
# %bb.37:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$2, 8(%r12)
	je	.LBB7_43
.LBB7_38:                               #   in Loop: Header=BB7_4 Depth=1
	cmpq	%rcx, %rbx
	jae	.LBB7_48
# %bb.39:                               #   in Loop: Header=BB7_4 Depth=1
	cmpb	$10, (%rbx)
	jne	.LBB7_41
# %bb.40:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$8, 40(%rax)
	jne	.LBB7_43
.LBB7_41:                               #   in Loop: Header=BB7_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ecx
	cmpq	$95, %rcx
	je	.LBB7_48
# %bb.42:                               #   in Loop: Header=BB7_4 Depth=1
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	jne	.LBB7_48
.LBB7_43:                               #   in Loop: Header=BB7_4 Depth=1
	cmpq	32(%r12), %rbx
	jbe	.LBB7_48
# %bb.44:                               #   in Loop: Header=BB7_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	-1(%rbx), %ecx
	cmpq	$95, %rcx
	je	.LBB7_35
.LBB7_2:                                #   in Loop: Header=BB7_4 Depth=1
	movb	1(%rax,%rcx), %al
	andb	$7, %al
	movq	-64(%rbp), %rdx         # 8-byte Reload
	jne	.LBB7_3
	jmp	.LBB7_48
.LBB7_46:
	xorl	%eax, %eax
	cmpq	%rdx, %rbx
	cmoveq	%rbx, %rax
.LBB7_47:
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB7_48:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_49:
	movq	(%r12), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r15,8), %r8
	movl	%r8d, %eax
	andl	$-134217728, %eax       # imm = 0xF8000000
	addq	$-939524096, %rax       # imm = 0xC8000000
	shrq	$27, %rax
	movl	$.L.str, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	cmpq	$8, %rax
	ja	.LBB7_48
# %bb.50:
	leaq	1(%r15), %r10
	jmpq	*.LJTI7_1(,%rax,8)
.LBB7_51:
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	movq	16(%r12), %rax
	movq	%r8, %rcx
	shlq	$4, %rcx
	movq	8(%rax,%rcx), %r14
	cmpq	$-1, %r14
	je	.LBB7_68
# %bb.52:
	movq	(%rax,%rcx), %rsi
	subq	%rsi, %r14
	movq	%rdx, %rax
	subq	%r14, %rax
	cmpq	%rax, %rbx
	ja	.LBB7_68
# %bb.53:
	movq	%r8, -48(%rbp)          # 8-byte Spill
	addq	24(%r12), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB7_68
# %bb.54:
	movq	(%r12), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	orq	$1073741824, %rcx       # imm = 0x40000000
.LBB7_55:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, (%rax,%r15,8)
	leaq	1(%r15), %r15
	jne	.LBB7_55
# %bb.56:
	addq	%r14, %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	jmp	.LBB7_63
.LBB7_57:
	movq	56(%r12), %rax
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%rbx, 8(%rax,%r9,8)
	addq	$1, %r9
	jmp	.LBB7_74
.LBB7_58:
	movq	56(%r12), %rax
	movq	-56(%rbp), %r9          # 8-byte Reload
	cmpq	(%rax,%r9,8), %rbx
	je	.LBB7_73
# %bb.59:
	movq	%rbx, (%rax,%r9,8)
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	movq	%r10, %rcx
	subq	%r8, %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %r8
	movq	%r10, %r14
	callq	lbackref
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB7_48
# %bb.60:
	movq	%r14, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	addq	$-1, %r9
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rcx
	jmp	.LBB7_75
.LBB7_61:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r10, %rcx
	movq	%r8, %r14
	movq	%r13, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, %r15
	callq	lbackref
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB7_48
# %bb.62:
	movq	%r15, %rsi
	movq	%r14, %r8
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	addq	%r15, %r8
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r8, %rcx
.LBB7_63:
	movq	%r13, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	lbackref
	jmp	.LBB7_47
.LBB7_64:
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	movq	16(%r12), %rax
	shlq	$4, %r8
	movq	(%rax,%r8), %r14
	movq	%rbx, %rcx
	subq	24(%r12), %rcx
	movq	%rcx, (%rax,%r8)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r10, %rcx
	movq	%r8, %rbx
	movq	%r13, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	lbackref
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB7_48
# %bb.65:
	movq	%rbx, %rdx
	movq	16(%r12), %rax
	movq	%r14, (%rax,%rbx)
	jmp	.LBB7_68
.LBB7_66:
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	movq	16(%r12), %rax
	shlq	$4, %r8
	movq	8(%rax,%r8), %r14
	movq	%rbx, %rcx
	subq	24(%r12), %rcx
	movq	%rcx, 8(%rax,%r8)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r10, %rcx
	movq	%r8, %rbx
	movq	%r13, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	lbackref
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB7_48
# %bb.67:
	movq	%rbx, %rdx
	movq	16(%r12), %rax
	movq	%r14, 8(%rax,%rbx)
.LBB7_68:
	xorl	%eax, %eax
	jmp	.LBB7_47
.LBB7_69:
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	addq	%r8, %r15
	addq	$-1, %r15
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r10, %rcx
	movq	%r15, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	lbackref
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB7_48
# %bb.70:                               # %.preheader
	movl	$2415919104, %eax       # imm = 0x90000000
	leaq	-134217728(%rax), %r14
.LBB7_71:                               # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r15,8), %rcx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	movl	$2415919104, %esi       # imm = 0x90000000
	cmpq	%rsi, %rcx
	je	.LBB7_68
# %bb.72:                               #   in Loop: Header=BB7_71 Depth=1
	movq	8(%rax,%r15,8), %r13
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	leaq	(%r15,%r13), %rsi
	addq	$1, %rsi
	movq	(%rax,%rsi,8), %rax
	andl	$-134217728, %eax       # imm = 0xF8000000
	addq	%r15, %r13
	leaq	2(%r15), %rcx
	cmpq	%r14, %rax
	cmovneq	%rsi, %r13
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %r8
	movq	-56(%rbp), %r9          # 8-byte Reload
	callq	lbackref
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r13, %r15
	movq	%rax, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB7_71
	jmp	.LBB7_48
.LBB7_73:
	addq	$-1, %r9
.LBB7_74:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r10, %rcx
.LBB7_75:
	movq	%r13, %r8
	callq	lbackref
	jmp	.LBB7_47
.Lfunc_end7:
	.size	lbackref, .Lfunc_end7-lbackref
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_6
	.quad	.LBB7_9
	.quad	.LBB7_13
	.quad	.LBB7_18
	.quad	.LBB7_20
	.quad	.LBB7_49
	.quad	.LBB7_49
	.quad	.LBB7_49
	.quad	.LBB7_49
	.quad	.LBB7_49
	.quad	.LBB7_3
	.quad	.LBB7_49
	.quad	.LBB7_49
	.quad	.LBB7_49
	.quad	.LBB7_23
	.quad	.LBB7_49
	.quad	.LBB7_49
	.quad	.LBB7_25
	.quad	.LBB7_36
.LJTI7_1:
	.quad	.LBB7_51
	.quad	.LBB7_48
	.quad	.LBB7_57
	.quad	.LBB7_58
	.quad	.LBB7_61
	.quad	.LBB7_48
	.quad	.LBB7_64
	.quad	.LBB7_66
	.quad	.LBB7_69
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function lstep
	.type	lstep,@function
lstep:                                  # @lstep
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r9, %rax
                                        # kill: def $r8d killed $r8d def $r8
	cmpq	%rdx, %rsi
	jne	.LBB8_1
.LBB8_26:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_1:
	movl	$2415919104, %r9d       # imm = 0x90000000
	movl	%r8d, %r10d
	orl	$2, %r10d
	movl	%r8d, %r11d
	orl	$1, %r11d
	movzbl	%r8b, %ebx
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	%rsi, %r15
	jmp	.LBB8_2
.LBB8_5:                                #   in Loop: Header=BB8_2 Depth=1
	movb	(%rcx,%rsi), %bl
	orb	%bl, 1(%rsi,%rax)
	.p2align	4, 0x90
.LBB8_25:                               #   in Loop: Header=BB8_2 Depth=1
	addq	$1, %r15
	addq	$1, %rsi
	cmpq	%rdx, %r15
	je	.LBB8_26
.LBB8_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_20 Depth 2
	movq	8(%rdi), %r13
	movq	(%r13,%r15,8), %r12
	movl	%r12d, %ebx
	andl	$-134217728, %ebx       # imm = 0xF8000000
	addq	$-134217728, %rbx       # imm = 0xF8000000
	shrq	$27, %rbx
	addq	$-1, %rbx
	cmpq	$18, %rbx
	ja	.LBB8_25
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	jmpq	*.LJTI8_0(,%rbx,8)
.LBB8_24:                               #   in Loop: Header=BB8_2 Depth=1
	movb	(%rax,%rsi), %bl
	orb	%bl, 1(%rax,%rsi)
	jmp	.LBB8_25
.LBB8_16:                               #   in Loop: Header=BB8_2 Depth=1
	movb	(%rax,%rsi), %bl
	orb	%bl, 1(%rax,%rsi)
	andl	$134217727, %r12d       # imm = 0x7FFFFFF
	addq	%rsi, %r12
	orb	%bl, (%rax,%r12)
	jmp	.LBB8_25
.LBB8_4:                                #   in Loop: Header=BB8_2 Depth=1
	movsbl	%r12b, %ebx
	cmpl	%r8d, %ebx
	je	.LBB8_5
	jmp	.LBB8_25
.LBB8_6:                                #   in Loop: Header=BB8_2 Depth=1
	cmpl	$131, %r10d
	je	.LBB8_5
	jmp	.LBB8_25
.LBB8_7:                                #   in Loop: Header=BB8_2 Depth=1
	cmpl	$131, %r11d
	je	.LBB8_5
	jmp	.LBB8_25
.LBB8_10:                               #   in Loop: Header=BB8_2 Depth=1
	cmpl	$127, %r8d
	jle	.LBB8_5
	jmp	.LBB8_25
.LBB8_11:                               #   in Loop: Header=BB8_2 Depth=1
	cmpl	$127, %r8d
	jg	.LBB8_25
# %bb.12:                               #   in Loop: Header=BB8_2 Depth=1
	andl	$134217727, %r12d       # imm = 0x7FFFFFF
	movq	24(%rdi), %rbx
	shlq	$5, %r12
	movq	(%rbx,%r12), %r14
	movb	8(%rbx,%r12), %bl
	movq	(%rsp), %rbp            # 8-byte Reload
	testb	%bl, (%r14,%rbp)
	jne	.LBB8_5
	jmp	.LBB8_25
.LBB8_13:                               #   in Loop: Header=BB8_2 Depth=1
	movb	(%rax,%rsi), %bl
	orb	%bl, 1(%rax,%rsi)
	andl	$134217727, %r12d       # imm = 0x7FFFFFF
	movq	%rsi, %rbp
	subq	%r12, %rbp
	movb	(%rax,%rbp), %r13b
	orb	%r13b, %bl
	movb	%bl, (%rax,%rbp)
	testb	%r13b, %r13b
	jne	.LBB8_25
# %bb.14:                               #   in Loop: Header=BB8_2 Depth=1
	testb	%bl, %bl
	je	.LBB8_25
# %bb.15:                               #   in Loop: Header=BB8_2 Depth=1
	notq	%r12
	addq	%r12, %r15
	movq	%r15, %rsi
	jmp	.LBB8_25
.LBB8_17:                               #   in Loop: Header=BB8_2 Depth=1
	movb	(%rax,%rsi), %r12b
	testb	%r12b, %r12b
	je	.LBB8_25
# %bb.18:                               #   in Loop: Header=BB8_2 Depth=1
	movq	8(%r13,%r15,8), %r14
	movl	%r14d, %ebp
	andl	$-134217728, %ebp       # imm = 0xF8000000
	movl	$1, %ebx
	cmpq	%r9, %rbp
	je	.LBB8_21
# %bb.19:                               # %.preheader
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB8_20:                               #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %r14d       # imm = 0x7FFFFFF
	addq	%r14, %rbx
	leaq	(%rbx,%r15), %rbp
	movq	(%r13,%rbp,8), %r14
	movl	%r14d, %ebp
	andl	$-134217728, %ebp       # imm = 0xF8000000
	cmpq	%r9, %rbp
	jne	.LBB8_20
.LBB8_21:                               #   in Loop: Header=BB8_2 Depth=1
	addq	%rsi, %rbx
	orb	%r12b, (%rax,%rbx)
	jmp	.LBB8_25
.LBB8_22:                               #   in Loop: Header=BB8_2 Depth=1
	movb	(%rax,%rsi), %r14b
	orb	%r14b, 1(%rax,%rsi)
	movq	8(%rdi), %rbp
	andl	$134217727, %r12d       # imm = 0x7FFFFFF
	leaq	(%r12,%r15), %rbx
	movq	(%rbp,%rbx,8), %rbx
	andl	$-134217728, %ebx       # imm = 0xF8000000
	cmpq	%r9, %rbx
	je	.LBB8_25
# %bb.23:                               #   in Loop: Header=BB8_2 Depth=1
	addq	%rsi, %r12
	orb	%r14b, (%rax,%r12)
	jmp	.LBB8_25
.LBB8_8:                                #   in Loop: Header=BB8_2 Depth=1
	cmpl	$133, %r8d
	je	.LBB8_5
	jmp	.LBB8_25
.LBB8_9:                                #   in Loop: Header=BB8_2 Depth=1
	cmpl	$134, %r8d
	je	.LBB8_5
	jmp	.LBB8_25
.Lfunc_end8:
	.size	lstep, .Lfunc_end8-lstep
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_4
	.quad	.LBB8_6
	.quad	.LBB8_7
	.quad	.LBB8_10
	.quad	.LBB8_11
	.quad	.LBB8_24
	.quad	.LBB8_24
	.quad	.LBB8_24
	.quad	.LBB8_13
	.quad	.LBB8_16
	.quad	.LBB8_24
	.quad	.LBB8_24
	.quad	.LBB8_24
	.quad	.LBB8_16
	.quad	.LBB8_17
	.quad	.LBB8_22
	.quad	.LBB8_24
	.quad	.LBB8_8
	.quad	.LBB8_9
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"shut up gcc"
	.size	.L.str, 12

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
