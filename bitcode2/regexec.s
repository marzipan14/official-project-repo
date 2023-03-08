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
	movq	%rsi, %r13
	movq	24(%rdi), %rsi
	cmpl	$62053, (%rdi)          # imm = 0xF265
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	jne	.LBB0_312
# %bb.1:
	cmpl	$53829, (%rsi)          # imm = 0xD245
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_312
# %bb.2:
	testb	$4, 72(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_312
# %bb.3:
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	andl	$7, %edx
	cmpq	$64, 48(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	ja	.LBB0_8
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%rsi), %r12
	movq	%rsi, %rax
	movq	64(%rsi), %rcx
	testb	$4, 40(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_6:
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r8b
	jne	.LBB0_12
# %bb.7:
	movq	%r13, %rdi
	movl	%edx, %r14d
	callq	strlen
	movl	%r14d, %edx
	movq	%rax, %r14
	movq	%r13, %rdi
	jmp	.LBB0_13
.LBB0_8:
	movq	%rsi, %rax
	movq	56(%rsi), %r12
	movq	64(%rsi), %r14
	testb	$4, 40(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r8b
	jne	.LBB0_27
# %bb.11:
	movq	%r13, %rdi
	movl	%edx, %ebx
	callq	strlen
	movl	%ebx, %edx
	movq	%rax, %r15
	movq	%r13, %rdi
	jmp	.LBB0_28
.LBB0_12:
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rdi
	addq	%r13, %rdi
	movq	8(%rax), %r14
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	%r13, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
	cmpq	%rdi, %r14
	jb	.LBB0_310
# %bb.14:
	movq	%r13, %r15
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	96(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	movq	%r14, -72(%rbp)         # 8-byte Spill
	je	.LBB0_56
# %bb.15:
	movq	112(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movq	%rdi, %r13
	je	.LBB0_42
# %bb.16:
	movq	120(%rax), %r8
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB0_42
# %bb.17:
	movslq	128(%rax), %r9
	leaq	(%rdi,%r9), %rbx
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-72(%rbp), %rbx         # 8-byte Folded Reload
	jae	.LBB0_68
# %bb.18:
	movl	%edx, -48(%rbp)         # 4-byte Spill
	leaq	(%r9,%rsi), %r10
	addq	$-2, %r10
	movl	$1, %r11d
	subq	%r9, %r11
.LBB0_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_23 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	cmpq	-72(%rbp), %rbx         # 8-byte Folded Reload
	movl	-48(%rbp), %edx         # 4-byte Reload
	jae	.LBB0_66
.LBB0_20:                               #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi), %eax
	movslq	(%r14,%rax,4), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=2
	addq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-72(%rbp), %rdi         # 8-byte Folded Reload
	jb	.LBB0_20
	jmp	.LBB0_66
.LBB0_22:                               #   in Loop: Header=BB0_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
.LBB0_23:                               #   Parent Loop BB0_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rdi,%rdx), %eax
	cmpb	(%r10,%rdx), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	cmpq	%rdx, %r11
	jne	.LBB0_23
	jmp	.LBB0_72
.LBB0_25:                               #   in Loop: Header=BB0_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r10,%rdx), %rcx
	subq	%rsi, %rcx
	movl	(%r8,%rcx,4), %ebx
	movl	(%r14,%rax,4), %eax
	cmpl	%ebx, %eax
	movl	%eax, %ecx
	movl	%ebx, -56(%rbp)         # 4-byte Spill
	cmovll	%ebx, %ecx
	movslq	%ecx, %rcx
	addq	%rdi, %rcx
	leaq	(%rdx,%rcx), %rbx
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-72(%rbp), %rbx         # 8-byte Folded Reload
	jb	.LBB0_19
# %bb.26:                               # %.loopexit13
	movl	-56(%rbp), %ecx         # 4-byte Reload
	cmpl	%ecx, %eax
	cmovll	%ecx, %eax
	cltq
	addq	%rax, %rdi
	leaq	(%rdx,%rdi), %rbx
	addq	$-1, %rbx
	movl	-48(%rbp), %edx         # 4-byte Reload
	jmp	.LBB0_67
.LBB0_27:
	movq	(%rcx), %rdi
	addq	%r13, %rdi
	movq	8(%rcx), %r15
.LBB0_28:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, -80(%rbp)         # 8-byte Spill
	addq	%r13, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
	cmpq	%rdi, %r15
	jb	.LBB0_310
# %bb.29:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	96(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	movq	%r15, -96(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	je	.LBB0_57
# %bb.30:
	movq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_49
# %bb.31:
	movq	120(%rax), %r8
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB0_49
# %bb.32:
	movslq	128(%rax), %r9
	leaq	(%rdi,%r9), %r13
	addq	$-1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r13
	jae	.LBB0_71
# %bb.33:
	movl	%edx, -48(%rbp)         # 4-byte Spill
	leaq	(%r9,%rsi), %r10
	addq	$-2, %r10
	movl	$1, %r11d
	subq	%r9, %r11
.LBB0_34:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
                                        #     Child Loop BB0_38 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	-96(%rbp), %r15         # 8-byte Reload
	cmpq	%r15, %r13
	jae	.LBB0_69
.LBB0_35:                               #   Parent Loop BB0_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi), %edx
	movslq	(%rcx,%rdx,4), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=2
	addq	%rdx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rdi
	jb	.LBB0_35
	jmp	.LBB0_69
.LBB0_37:                               #   in Loop: Header=BB0_34 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
.LBB0_38:                               #   Parent Loop BB0_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rdi,%rdx), %ebx
	cmpb	(%r10,%rdx), %bl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	cmpq	%rdx, %r11
	jne	.LBB0_38
	jmp	.LBB0_173
.LBB0_40:                               #   in Loop: Header=BB0_34 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r10,%rdx), %rax
	subq	%rsi, %rax
	movl	(%r8,%rax,4), %eax
	movl	(%rcx,%rbx,4), %r15d
	cmpl	%eax, %r15d
	movl	%r15d, %ebx
	cmovll	%eax, %ebx
	movslq	%ebx, %rbx
	addq	%rdi, %rbx
	leaq	(%rdx,%rbx), %r13
	addq	$-1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-96(%rbp), %r13         # 8-byte Folded Reload
	jb	.LBB0_34
# %bb.41:                               # %.loopexit28
	cmpl	%eax, %r15d
	cmovll	%eax, %r15d
	movslq	%r15d, %rax
	addq	%rax, %rdi
	leaq	(%rdx,%rdi), %r13
	addq	$-1, %r13
	movq	-96(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_70
.LBB0_42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rbx
	movq	-72(%rbp), %r14         # 8-byte Reload
	cmpq	%r14, %rdi
	jae	.LBB0_60
# %bb.43:
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movq	%rdi, %rbx
.LBB0_44:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	cmpb	(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_47
# %bb.45:                               #   in Loop: Header=BB0_44 Depth=1
	movq	%r14, %rax
	subq	%rbx, %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movslq	128(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jl	.LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_44 Depth=1
	movq	%rbx, %rdi
	callq	memcmp
	movq	%r13, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_59
.LBB0_47:                               #   in Loop: Header=BB0_44 Depth=1
	leaq	1(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jae	.LBB0_58
# %bb.48:                               #   in Loop: Header=BB0_44 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	96(%rcx), %rsi
	movq	%rax, %rbx
	jmp	.LBB0_44
.LBB0_49:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %r13
	cmpq	%r15, %rdi
	jae	.LBB0_64
# %bb.50:
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movq	%rdi, %r13
.LBB0_51:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %eax
	cmpb	(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_54
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=1
	movq	%r15, %rax
	subq	%r13, %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movslq	128(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jl	.LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_51 Depth=1
	movq	%r13, %rdi
	callq	memcmp
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_63
.LBB0_54:                               #   in Loop: Header=BB0_51 Depth=1
	leaq	1(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jae	.LBB0_62
# %bb.55:                               #   in Loop: Header=BB0_51 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	96(%rcx), %rsi
	movq	%rax, %r13
	jmp	.LBB0_51
.LBB0_56:
	xorl	%ebx, %ebx
	jmp	.LBB0_73
.LBB0_57:
	xorl	%r13d, %r13d
	jmp	.LBB0_174
.LBB0_58:                               # %.loopexit9split
	addq	$1, %rbx
.LBB0_59:
	movl	-48(%rbp), %edx         # 4-byte Reload
.LBB0_60:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jne	.LBB0_73
	jmp	.LBB0_61
.LBB0_62:                               # %.loopexit23split
	addq	$1, %r13
.LBB0_63:
	movl	-48(%rbp), %edx         # 4-byte Reload
.LBB0_64:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r13
	jne	.LBB0_174
.LBB0_61:
	movl	$1, %eax
	jmp	.LBB0_310
.LBB0_66:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rbx
.LBB0_67:
	movq	%r13, %rdi
.LBB0_68:
	leaq	(%rsi,%r9), %rcx
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rsi, %rcx
	movq	-72(%rbp), %r14         # 8-byte Reload
	jne	.LBB0_310
	jmp	.LBB0_73
.LBB0_69:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %r13
.LBB0_70:
	movl	-48(%rbp), %edx         # 4-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB0_71:
	leaq	(%rsi,%r9), %rcx
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rsi, %rcx
	jne	.LBB0_310
	jmp	.LBB0_174
.LBB0_72:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rdx, %rdi
	movq	%rdi, %rbx
	movq	-72(%rbp), %r14         # 8-byte Reload
	movl	-48(%rbp), %edx         # 4-byte Reload
	movq	%r13, %rdi
.LBB0_73:
	addq	$1, %r12
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -216(%rbp)
	movl	%edx, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -160(%rbp)
	movq	%r15, -192(%rbp)
	movq	%rdi, -184(%rbp)
	movq	%r14, -176(%rbp)
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, -144(%rbp)
	movdqu	%xmm0, -128(%rbp)
	movslq	104(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %r13
	testq	%rax, %rax
	js	.LBB0_75
# %bb.74:
	subq	%rax, %rbx
	cmpq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovbq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r13
.LBB0_75:
	movl	$1, %r9d
	movl	%r12d, %ecx
	shlq	%cl, %r9
	movl	$1, %eax
	movq	-88(%rbp), %r14         # 8-byte Reload
	movl	%r14d, %ecx
	shlq	%cl, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%r9, -256(%rbp)         # 8-byte Spill
	movq	%r12, -48(%rbp)         # 8-byte Spill
.LBB0_76:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_80 Depth 2
                                        #       Child Loop BB0_102 Depth 3
                                        #     Child Loop BB0_134 Depth 2
                                        #     Child Loop BB0_144 Depth 2
                                        #     Child Loop BB0_147 Depth 2
                                        #     Child Loop BB0_158 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rdi
	je	.LBB0_78
# %bb.77:                               #   in Loop: Header=BB0_76 Depth=1
	movsbl	-1(%r13), %ebx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=1
	movl	$128, %ebx
.LBB0_79:                               #   in Loop: Header=BB0_76 Depth=1
	movq	-216(%rbp), %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%r9, %rcx
	movl	$132, %r8d
	callq	sstep
	movq	%rax, %r14
	movq	%rax, %r15
	xorl	%eax, %eax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%r14, -232(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	.p2align	4, 0x90
.LBB0_80:                               #   Parent Loop BB0_76 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_102 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-176(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_82
# %bb.81:                               #   in Loop: Header=BB0_80 Depth=2
	movsbl	(%r13), %edx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_83
	.p2align	4, 0x90
.LBB0_82:                               #   in Loop: Header=BB0_80 Depth=2
	movl	$128, %edx
.LBB0_83:                               #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r15
	jne	.LBB0_85
# %bb.84:                               #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	movq	%r13, -224(%rbp)        # 8-byte Spill
.LBB0_85:                               #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %esi
	movq	%r13, -96(%rbp)         # 8-byte Spill
	jne	.LBB0_88
# %bb.86:                               #   in Loop: Header=BB0_80 Depth=2
	movq	-216(%rbp), %rax
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_91
# %bb.87:                               #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB0_92
	.p2align	4, 0x90
.LBB0_88:                               #   in Loop: Header=BB0_80 Depth=2
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %esi
	jne	.LBB0_92
# %bb.89:                               #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -208(%rbp)
	movl	$0, %r14d
	jne	.LBB0_93
# %bb.90:                               #   in Loop: Header=BB0_80 Depth=2
	movq	-216(%rbp), %rax
.LBB0_91:                               #   in Loop: Header=BB0_80 Depth=2
	movl	76(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$129, %ebx
	jmp	.LBB0_93
	.p2align	4, 0x90
.LBB0_92:                               #   in Loop: Header=BB0_80 Depth=2
	xorl	%r14d, %r14d
.LBB0_93:                               #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %edx
	jne	.LBB0_96
# %bb.94:                               #   in Loop: Header=BB0_80 Depth=2
	movq	-216(%rbp), %rax
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_99
# %bb.95:                               #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_100
	.p2align	4, 0x90
.LBB0_96:                               #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %edx
	jne	.LBB0_100
# %bb.97:                               #   in Loop: Header=BB0_80 Depth=2
	testb	$2, -208(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_100
# %bb.98:                               #   in Loop: Header=BB0_80 Depth=2
	movq	-216(%rbp), %rax
.LBB0_99:                               #   in Loop: Header=BB0_80 Depth=2
	xorl	%ecx, %ecx
	cmpl	$129, %ebx
	sete	%cl
	orl	$130, %ecx
	addl	80(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ebx
.LBB0_100:                              #   in Loop: Header=BB0_80 Depth=2
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB0_103
# %bb.101:                              # %.preheader
                                        #   in Loop: Header=BB0_80 Depth=2
	addl	$1, %r14d
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	-48(%rbp), %r13         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_102:                              #   Parent Loop BB0_76 Depth=1
                                        #     Parent Loop BB0_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-216(%rbp), %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movl	%ebx, %r8d
	movq	%r15, %r9
	callq	sstep
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r14d
	cmpl	$1, %r14d
	jg	.LBB0_102
.LBB0_103:                              #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$129, %ebx
	jne	.LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$129, %eax
	movq	-56(%rbp), %r12         # 8-byte Reload
	cmpl	$128, %r12d
	movq	-80(%rbp), %rdx         # 8-byte Reload
	jne	.LBB0_110
	jmp	.LBB0_113
	.p2align	4, 0x90
.LBB0_105:                              #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, -80(%rbp)         # 4-byte Folded Reload
	movq	-56(%rbp), %r12         # 8-byte Reload
	jne	.LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_119
.LBB0_107:                              #   in Loop: Header=BB0_80 Depth=2
	callq	__locale_ctype_ptr
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movzbl	%cl, %r14d
	movb	1(%rax,%r14), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %r12d
	je	.LBB0_116
# %bb.108:                              #   in Loop: Header=BB0_80 Depth=2
	cmpl	$95, %ecx
	je	.LBB0_116
# %bb.109:                              #   in Loop: Header=BB0_80 Depth=2
	andb	$7, %al
	jne	.LBB0_116
.LBB0_110:                              #   in Loop: Header=BB0_80 Depth=2
	callq	__locale_ctype_ptr
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movzbl	%r12b, %ecx
	movb	1(%rax,%rcx), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %r12d
	je	.LBB0_112
# %bb.111:                              #   in Loop: Header=BB0_80 Depth=2
	movl	%ebx, %eax
	andb	$7, %cl
	je	.LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$133, %eax
.LBB0_113:                              #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %edx
	jne	.LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_80 Depth=2
	movl	%eax, %ebx
	jmp	.LBB0_119
.LBB0_115:                              #   in Loop: Header=BB0_80 Depth=2
	movzbl	%dl, %r14d
	movl	%eax, %ebx
	movq	%rdx, %r13
	jmp	.LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %r13
.LBB0_117:                              #   in Loop: Header=BB0_80 Depth=2
	callq	__locale_ctype_ptr
	movb	1(%rax,%r14), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %r13d
	je	.LBB0_121
# %bb.118:                              #   in Loop: Header=BB0_80 Depth=2
	andb	$7, %al
	jne	.LBB0_121
.LBB0_119:                              #   in Loop: Header=BB0_80 Depth=2
	movq	-72(%rbp), %r14         # 8-byte Reload
.LBB0_120:                              #   in Loop: Header=BB0_80 Depth=2
	leal	-133(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jbe	.LBB0_123
	jmp	.LBB0_124
.LBB0_121:                              #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$130, %ebx
	movq	-72(%rbp), %r14         # 8-byte Reload
	jne	.LBB0_127
.LBB0_122:                              #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$134, %ebx
.LBB0_123:                              #   in Loop: Header=BB0_80 Depth=2
	movq	-216(%rbp), %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	movl	%ebx, %r8d
	movq	%r15, %r9
	callq	sstep
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB0_124:                              #   in Loop: Header=BB0_80 Depth=2
	leaq	-216(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, -240(%rbp)        # 8-byte Folded Reload
	jne	.LBB0_130
# %bb.125:                              #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %r13         # 8-byte Reload
	cmpq	%r14, %r13
	je	.LBB0_165
# %bb.126:                              #   in Loop: Header=BB0_80 Depth=2
	movq	-216(%rbp), %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	%ebx, %r8d
	movq	-232(%rbp), %r14        # 8-byte Reload
	movq	%r14, %r9
	callq	sstep
	movq	%rax, %r15
	addq	$1, %r13
	movl	%ebx, %esi
	jmp	.LBB0_80
.LBB0_127:                              #   in Loop: Header=BB0_80 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %r12d
	je	.LBB0_120
# %bb.128:                              #   in Loop: Header=BB0_80 Depth=2
	callq	__locale_ctype_ptr
	movzbl	%r12b, %ecx
	movb	1(%rax,%rcx), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %r12d
	je	.LBB0_120
# %bb.129:                              #   in Loop: Header=BB0_80 Depth=2
	andb	$7, %al
	je	.LBB0_122
	jmp	.LBB0_120
.LBB0_130:                              #   in Loop: Header=BB0_76 Depth=1
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -168(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_132
# %bb.131:                              #   in Loop: Header=BB0_76 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 144(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_304
.LBB0_132:                              #   in Loop: Header=BB0_76 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r14, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	callq	sslow
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_136
# %bb.133:                              # %.preheader5
                                        #   in Loop: Header=BB0_76 Depth=1
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_134:                              #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-168(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movq	%r13, %r8
	callq	sslow
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_134
# %bb.135:                              #   in Loop: Header=BB0_76 Depth=1
	movq	%rax, %r15
.LBB0_136:                              #   in Loop: Header=BB0_76 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, -104(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_138
# %bb.137:                              #   in Loop: Header=BB0_76 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 144(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_167
.LBB0_138:                              #   in Loop: Header=BB0_76 Depth=1
	movq	-200(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_76 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %r14         # 8-byte Reload
	jmp	.LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_76 Depth=1
	movq	-216(%rbp), %rax
	movq	136(%rax), %rdi
	shlq	$4, %rdi
	addq	$16, %rdi
	callq	malloc
	movq	%rax, -200(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-88(%rbp), %r14         # 8-byte Reload
	je	.LBB0_315
.LBB0_141:                              #   in Loop: Header=BB0_76 Depth=1
	movq	-216(%rbp), %rcx
	movq	136(%rcx), %r8
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	pcmpeqd	%xmm0, %xmm0
	je	.LBB0_148
# %bb.142:                              #   in Loop: Header=BB0_76 Depth=1
	leaq	-1(%r8), %rsi
	movl	%r8d, %r9d
	andl	$3, %r9d
	movl	$1, %edx
	cmpq	$3, %rsi
	jb	.LBB0_145
# %bb.143:                              #   in Loop: Header=BB0_76 Depth=1
	leaq	64(%rax), %rsi
	movq	%r9, %rdi
	subq	%r8, %rdi
	movl	$1, %edx
.LBB0_144:                              #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -48(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movdqu	%xmm0, -32(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movdqu	%xmm0, -16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movdqu	%xmm0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsi
	leaq	(%rdi,%rdx), %rcx
	addq	$4, %rcx
	addq	$4, %rdx
	cmpq	$1, %rcx
	jne	.LBB0_144
.LBB0_145:                              #   in Loop: Header=BB0_76 Depth=1
	testq	%r9, %r9
	je	.LBB0_148
# %bb.146:                              # %.preheader2
                                        #   in Loop: Header=BB0_76 Depth=1
	shlq	$4, %rdx
	addq	%rdx, %rax
	shlq	$4, %r9
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_147:                              #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, (%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rdx
	cmpq	%rdx, %r9
	jne	.LBB0_147
.LBB0_148:                              #   in Loop: Header=BB0_76 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 144(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_151
# %bb.149:                              #   in Loop: Header=BB0_76 Depth=1
	testl	$1024, -208(%rbp)       # imm = 0x400
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_151
# %bb.150:                              #   in Loop: Header=BB0_76 Depth=1
	movq	-168(%rbp), %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%r14, %r8
	callq	sdissect
	jmp	.LBB0_156
.LBB0_151:                              #   in Loop: Header=BB0_76 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	152(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB0_154
# %bb.152:                              #   in Loop: Header=BB0_76 Depth=1
	cmpq	$0, -160(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_162
# %bb.153:                              #   in Loop: Header=BB0_76 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_154:                              #   in Loop: Header=BB0_76 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_155:                              #   in Loop: Header=BB0_76 Depth=1
	movq	-168(%rbp), %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%r14, %r8
	xorl	%r9d, %r9d
	callq	sbackref
.LBB0_156:                              #   in Loop: Header=BB0_76 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_167
# %bb.157:                              #   in Loop: Header=BB0_76 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_158:                              #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-168(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r15
	jbe	.LBB0_161
# %bb.159:                              #   in Loop: Header=BB0_158 Depth=2
	addq	$-1, %r15
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rcx
	movq	%r14, %r8
	callq	sslow
	movl	$42, __A_VARIABLE(%rip)
	movq	-168(%rbp), %r13
	testq	%rax, %rax
	je	.LBB0_161
# %bb.160:                              #   in Loop: Header=BB0_158 Depth=2
	movq	%rax, %r15
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	movq	%rbx, %rcx
	movq	%r14, %r8
	xorl	%r9d, %r9d
	callq	sbackref
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_158
	jmp	.LBB0_166
.LBB0_161:                              #   in Loop: Header=BB0_76 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	-184(%rbp), %rdi
	movq	-256(%rbp), %r9         # 8-byte Reload
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB0_76
.LBB0_162:                              #   in Loop: Header=BB0_76 Depth=1
	leaq	8(,%rax,8), %rdi
	callq	malloc
	movq	%rax, -160(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	$0, 152(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_155
# %bb.163:                              #   in Loop: Header=BB0_76 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_155
# %bb.164:
	movq	-200(%rbp), %rdi
	jmp	.LBB0_314
.LBB0_165:
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB0_310
.LBB0_166:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_167:
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rsi        # 8-byte Reload
	testq	%rsi, %rsi
	movq	-248(%rbp), %rbx        # 8-byte Reload
	je	.LBB0_305
# %bb.168:
	movq	-192(%rbp), %rax
	movq	-168(%rbp), %rcx
	subq	%rax, %rcx
	subq	%rax, %r15
	movq	%rcx, (%rbx)
	movq	%r15, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rsi
	je	.LBB0_306
# %bb.169:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-216(%rbp), %rcx
	movq	-200(%rbp), %rax
	movq	136(%rcx), %rcx
	leal	-1(%rsi), %r8d
	andl	$1, %r8d
	movl	$1, %edx
	cmpq	$2, %rsi
	jne	.LBB0_294
.LBB0_170:
	testq	%r8, %r8
	je	.LBB0_306
# %bb.171:
	movq	%rdx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jae	.LBB0_302
# %bb.172:
	pcmpeqd	%xmm0, %xmm0
	jmp	.LBB0_303
.LBB0_173:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rdx, %rdi
	movq	%rdi, %r13
	movl	-48(%rbp), %edx         # 4-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB0_174:
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, -216(%rbp)
	movl	%edx, -208(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -160(%rbp)
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	%rdi, -184(%rbp)
	movq	%r15, -176(%rbp)
	movq	48(%rbx), %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %r15
	movq	%rax, -144(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %eax
	testq	%r15, %r15
	je	.LBB0_310
# %bb.175:
	movq	%r15, -136(%rbp)
	movq	48(%rbx), %rdx
	leaq	(%r15,%rdx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rax, -128(%rbp)
	leaq	(%r15,%rdx,2), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)
	movq	$4, -152(%rbp)
	leaq	(%rdx,%rdx,2), %rdi
	addq	%r15, %rdi
	movq	%rdi, -112(%rbp)
	xorl	%esi, %esi
	callq	memset
	movslq	104(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, %rbx
	testq	%rax, %rax
	js	.LBB0_177
# %bb.176:
	subq	%rax, %r13
	cmpq	%rcx, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovbq	%rcx, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
.LBB0_177:
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_179
.LBB0_178:                              #   in Loop: Header=BB0_179 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	-184(%rbp), %rcx
	movq	-136(%rbp), %r15
	movq	-128(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	-120(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB0_179:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_183 Depth 2
                                        #       Child Loop BB0_206 Depth 3
                                        #     Child Loop BB0_239 Depth 2
                                        #     Child Loop BB0_249 Depth 2
                                        #     Child Loop BB0_252 Depth 2
                                        #     Child Loop BB0_263 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rcx
	je	.LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_179 Depth=1
	movsbl	-1(%rbx), %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_179 Depth=1
	movl	$128, %r13d
.LBB0_182:                              #   in Loop: Header=BB0_179 Depth=1
	movq	-216(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	memset
	movb	$1, (%r15,%r12)
	movq	-216(%rbp), %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movl	$132, %r8d
	movq	%r15, %r9
	callq	lstep
	movq	-216(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB0_183:                              #   Parent Loop BB0_179 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_206 Depth 3
	cmpq	-176(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_185
# %bb.184:                              #   in Loop: Header=BB0_183 Depth=2
	movsbl	(%rbx), %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_186
	.p2align	4, 0x90
.LBB0_185:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$128, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB0_186:                              #   in Loop: Header=BB0_183 Depth=2
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	-216(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_188
# %bb.187:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	movq	%rbx, -224(%rbp)        # 8-byte Spill
.LBB0_188:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %r13d
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movq	%r13, -80(%rbp)         # 8-byte Spill
	jne	.LBB0_191
# %bb.189:                              #   in Loop: Header=BB0_183 Depth=2
	movq	-216(%rbp), %rax
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_194
# %bb.190:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	jmp	.LBB0_195
	.p2align	4, 0x90
.LBB0_191:                              #   in Loop: Header=BB0_183 Depth=2
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %r13d
	movq	-56(%rbp), %rax         # 8-byte Reload
	jne	.LBB0_196
# %bb.192:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -208(%rbp)
	movl	$0, %r13d
	jne	.LBB0_197
# %bb.193:                              #   in Loop: Header=BB0_183 Depth=2
	movq	-216(%rbp), %rax
.LBB0_194:                              #   in Loop: Header=BB0_183 Depth=2
	movl	76(%rax), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$129, %ebx
.LBB0_195:                              #   in Loop: Header=BB0_183 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_197
.LBB0_196:                              #   in Loop: Header=BB0_183 Depth=2
	xorl	%r13d, %r13d
.LBB0_197:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	jne	.LBB0_200
# %bb.198:                              #   in Loop: Header=BB0_183 Depth=2
	movq	-216(%rbp), %rax
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_203
# %bb.199:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_204
	.p2align	4, 0x90
.LBB0_200:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %eax
	jne	.LBB0_204
# %bb.201:                              #   in Loop: Header=BB0_183 Depth=2
	testb	$2, -208(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_204
# %bb.202:                              #   in Loop: Header=BB0_183 Depth=2
	movq	-216(%rbp), %rax
.LBB0_203:                              #   in Loop: Header=BB0_183 Depth=2
	xorl	%ecx, %ecx
	cmpl	$129, %ebx
	sete	%cl
	orl	$130, %ecx
	addl	80(%rax), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ebx
.LBB0_204:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jle	.LBB0_207
# %bb.205:                              # %.preheader15
                                        #   in Loop: Header=BB0_183 Depth=2
	addl	$1, %r13d
	.p2align	4, 0x90
.LBB0_206:                              #   Parent Loop BB0_179 Depth=1
                                        #     Parent Loop BB0_183 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-216(%rbp), %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movl	%ebx, %r8d
	movq	%r15, %r9
	callq	lstep
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r13d
	cmpl	$1, %r13d
	jg	.LBB0_206
.LBB0_207:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$129, %ebx
	jne	.LBB0_209
# %bb.208:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$129, %eax
	cmpl	$128, -56(%rbp)         # 4-byte Folded Reload
	jne	.LBB0_214
	jmp	.LBB0_217
	.p2align	4, 0x90
.LBB0_209:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r13         # 8-byte Reload
	cmpl	$128, %r13d
	jne	.LBB0_211
# %bb.210:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_223
.LBB0_211:                              #   in Loop: Header=BB0_183 Depth=2
	callq	__locale_ctype_ptr
	movzbl	%r13b, %ecx
	movb	1(%rax,%rcx), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, -56(%rbp)         # 4-byte Folded Reload
	je	.LBB0_220
# %bb.212:                              #   in Loop: Header=BB0_183 Depth=2
	cmpl	$95, -80(%rbp)          # 4-byte Folded Reload
	je	.LBB0_220
# %bb.213:                              #   in Loop: Header=BB0_183 Depth=2
	andb	$7, %al
	jne	.LBB0_220
.LBB0_214:                              #   in Loop: Header=BB0_183 Depth=2
	callq	__locale_ctype_ptr
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movzbl	%dl, %ecx
	movb	1(%rax,%rcx), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %edx
	je	.LBB0_216
# %bb.215:                              #   in Loop: Header=BB0_183 Depth=2
	movl	%ebx, %eax
	andb	$7, %cl
	je	.LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$133, %eax
.LBB0_217:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r13         # 8-byte Reload
	cmpl	$128, %r13d
	jne	.LBB0_219
# %bb.218:                              #   in Loop: Header=BB0_183 Depth=2
	movl	%eax, %ebx
	jmp	.LBB0_223
.LBB0_219:                              #   in Loop: Header=BB0_183 Depth=2
	movzbl	%r13b, %ecx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	movl	%eax, %ebx
	jmp	.LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r13         # 8-byte Reload
	movq	%rcx, -232(%rbp)        # 8-byte Spill
.LBB0_221:                              #   in Loop: Header=BB0_183 Depth=2
	callq	__locale_ctype_ptr
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movb	1(%rax,%rcx), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %r13d
	je	.LBB0_225
# %bb.222:                              #   in Loop: Header=BB0_183 Depth=2
	andb	$7, %al
	jne	.LBB0_225
.LBB0_223:                              #   in Loop: Header=BB0_183 Depth=2
	movq	-96(%rbp), %r13         # 8-byte Reload
.LBB0_224:                              #   in Loop: Header=BB0_183 Depth=2
	leal	-133(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jbe	.LBB0_227
	jmp	.LBB0_228
.LBB0_225:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$130, %ebx
	movq	-96(%rbp), %r13         # 8-byte Reload
	jne	.LBB0_231
.LBB0_226:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$134, %ebx
.LBB0_227:                              #   in Loop: Header=BB0_183 Depth=2
	movq	-216(%rbp), %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movl	%ebx, %r8d
	movq	%r15, %r9
	callq	lstep
	movl	$42, __A_VARIABLE(%rip)
.LBB0_228:                              #   in Loop: Header=BB0_183 Depth=2
	cmpb	$0, (%r15,%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rbx         # 8-byte Reload
	jne	.LBB0_234
# %bb.229:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	je	.LBB0_234
# %bb.230:                              #   in Loop: Header=BB0_183 Depth=2
	movq	-216(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%r14, %r13
	movq	%r12, %r14
	movq	-240(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	-216(%rbp), %rax
	movq	48(%rax), %rdx
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movq	-216(%rbp), %rdi
	movq	%r14, %rsi
	movq	%r13, %r14
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	%r12d, %r8d
	movq	%r15, %r9
	callq	lstep
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %r13d
	jmp	.LBB0_183
.LBB0_231:                              #   in Loop: Header=BB0_183 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpl	$128, %eax
	je	.LBB0_224
# %bb.232:                              #   in Loop: Header=BB0_183 Depth=2
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	__locale_ctype_ptr
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movzbl	%dl, %ecx
	movb	1(%rax,%rcx), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %edx
	je	.LBB0_224
# %bb.233:                              #   in Loop: Header=BB0_183 Depth=2
	andb	$7, %al
	je	.LBB0_226
	jmp	.LBB0_224
.LBB0_234:                              #   in Loop: Header=BB0_179 Depth=1
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -168(%rbp)
	cmpb	$0, (%r15,%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_284
# %bb.235:                              #   in Loop: Header=BB0_179 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_237
# %bb.236:                              #   in Loop: Header=BB0_179 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 144(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_287
.LBB0_237:                              #   in Loop: Header=BB0_179 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-216(%rbp), %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	lslow
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_241
# %bb.238:                              # %.preheader20
                                        #   in Loop: Header=BB0_179 Depth=1
	leaq	-216(%rbp), %rbx
	.p2align	4, 0x90
.LBB0_239:                              #   Parent Loop BB0_179 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-168(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -168(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	lslow
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_239
# %bb.240:                              #   in Loop: Header=BB0_179 Depth=1
	movq	%rax, %r15
.LBB0_241:                              #   in Loop: Header=BB0_179 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, -104(%rbp)          # 8-byte Folded Reload
	jne	.LBB0_243
# %bb.242:                              #   in Loop: Header=BB0_179 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 144(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_270
.LBB0_243:                              #   in Loop: Header=BB0_179 Depth=1
	movq	-200(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_245
# %bb.244:                              #   in Loop: Header=BB0_179 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-216(%rbp), %r13
	jmp	.LBB0_246
.LBB0_245:                              #   in Loop: Header=BB0_179 Depth=1
	movq	-216(%rbp), %rax
	movq	136(%rax), %rdi
	shlq	$4, %rdi
	addq	$16, %rdi
	callq	malloc
	movq	%rax, -200(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	leaq	-216(%rbp), %r13
	je	.LBB0_313
.LBB0_246:                              #   in Loop: Header=BB0_179 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-216(%rbp), %rcx
	movq	136(%rcx), %r8
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	pcmpeqd	%xmm0, %xmm0
	je	.LBB0_253
# %bb.247:                              #   in Loop: Header=BB0_179 Depth=1
	leaq	-1(%r8), %rsi
	movl	%r8d, %r9d
	andl	$3, %r9d
	movl	$1, %edx
	cmpq	$3, %rsi
	jb	.LBB0_250
# %bb.248:                              #   in Loop: Header=BB0_179 Depth=1
	leaq	64(%rax), %rsi
	movq	%r9, %rdi
	subq	%r8, %rdi
	movl	$1, %edx
	.p2align	4, 0x90
.LBB0_249:                              #   Parent Loop BB0_179 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -48(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movdqu	%xmm0, -32(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movdqu	%xmm0, -16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movdqu	%xmm0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsi
	leaq	(%rdi,%rdx), %rcx
	addq	$4, %rcx
	addq	$4, %rdx
	cmpq	$1, %rcx
	jne	.LBB0_249
.LBB0_250:                              #   in Loop: Header=BB0_179 Depth=1
	testq	%r9, %r9
	je	.LBB0_253
# %bb.251:                              # %.preheader17
                                        #   in Loop: Header=BB0_179 Depth=1
	shlq	$4, %rdx
	addq	%rdx, %rax
	shlq	$4, %r9
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_252:                              #   Parent Loop BB0_179 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, (%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rdx
	cmpq	%rdx, %r9
	jne	.LBB0_252
.LBB0_253:                              #   in Loop: Header=BB0_179 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 144(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_256
# %bb.254:                              #   in Loop: Header=BB0_179 Depth=1
	testl	$1024, -208(%rbp)       # imm = 0x400
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_256
# %bb.255:                              #   in Loop: Header=BB0_179 Depth=1
	movq	-168(%rbp), %rsi
	movq	%r13, %rdi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	ldissect
	jmp	.LBB0_261
.LBB0_256:                              #   in Loop: Header=BB0_179 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	152(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB0_259
# %bb.257:                              #   in Loop: Header=BB0_179 Depth=1
	cmpq	$0, -160(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_266
# %bb.258:                              #   in Loop: Header=BB0_179 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_259:                              #   in Loop: Header=BB0_179 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_260:                              #   in Loop: Header=BB0_179 Depth=1
	movq	-168(%rbp), %rsi
	movq	%r13, %rdi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	xorl	%r9d, %r9d
	callq	lbackref
.LBB0_261:                              #   in Loop: Header=BB0_179 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_270
# %bb.262:                              #   in Loop: Header=BB0_179 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB0_263:                              #   Parent Loop BB0_179 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-168(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	jbe	.LBB0_178
# %bb.264:                              #   in Loop: Header=BB0_263 Depth=2
	addq	$-1, %r15
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	lslow
	movl	$42, __A_VARIABLE(%rip)
	movq	-168(%rbp), %rbx
	testq	%rax, %rax
	je	.LBB0_178
# %bb.265:                              #   in Loop: Header=BB0_263 Depth=2
	movq	%rax, %r15
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	xorl	%r9d, %r9d
	callq	lbackref
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_263
	jmp	.LBB0_269
.LBB0_266:                              #   in Loop: Header=BB0_179 Depth=1
	leaq	8(,%rax,8), %rdi
	callq	malloc
	movq	%rax, -160(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	$0, 152(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_260
# %bb.267:                              #   in Loop: Header=BB0_179 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_260
# %bb.268:
	movq	-200(%rbp), %rdi
	callq	free
.LBB0_313:
	movq	-144(%rbp), %rdi
.LBB0_314:
	callq	free
	movl	$12, %eax
	jmp	.LBB0_310
.LBB0_269:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_270:
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rsi        # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB0_288
# %bb.271:
	movq	-192(%rbp), %rax
	movq	-168(%rbp), %rcx
	subq	%rax, %rcx
	subq	%rax, %r15
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%r15, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rsi
	je	.LBB0_289
# %bb.272:
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-216(%rbp), %rcx
	movq	-200(%rbp), %rax
	movq	136(%rcx), %rcx
	leal	-1(%rsi), %r8d
	andl	$1, %r8d
	movl	$1, %edx
	cmpq	$2, %rsi
	jne	.LBB0_276
.LBB0_273:
	testq	%r8, %r8
	je	.LBB0_289
# %bb.274:
	movq	%rdx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jae	.LBB0_285
# %bb.275:
	pcmpeqd	%xmm0, %xmm0
	jmp	.LBB0_286
.LBB0_276:
	subq	%r8, %rsi
	movl	$1, %edx
	movl	$32, %edi
	pcmpeqd	%xmm0, %xmm0
	jmp	.LBB0_279
.LBB0_277:                              #   in Loop: Header=BB0_279 Depth=1
	movdqu	%xmm0, (%rbx,%rdi)
.LBB0_278:                              #   in Loop: Header=BB0_279 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rdi
	cmpq	%rdx, %rsi
	je	.LBB0_273
.LBB0_279:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jae	.LBB0_281
# %bb.280:                              #   in Loop: Header=BB0_279 Depth=1
	movdqu	%xmm0, -16(%rbx,%rdi)
	jmp	.LBB0_282
.LBB0_281:                              #   in Loop: Header=BB0_279 Depth=1
	movups	-16(%rax,%rdi), %xmm1
	movups	%xmm1, -16(%rbx,%rdi)
.LBB0_282:                              #   in Loop: Header=BB0_279 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jbe	.LBB0_277
# %bb.283:                              #   in Loop: Header=BB0_279 Depth=1
	movups	(%rax,%rdi), %xmm1
	movups	%xmm1, (%rbx,%rdi)
	jmp	.LBB0_278
.LBB0_284:
	movq	-144(%rbp), %rdi
	callq	free
	movl	$1, %eax
	jmp	.LBB0_310
.LBB0_285:
	movdqu	(%rax,%rsi), %xmm0
.LBB0_286:
	movdqu	%xmm0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_287:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_288:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_289:
	movq	-200(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_291
# %bb.290:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_291:
	movq	-160(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_293
# %bb.292:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_293:
	movq	-144(%rbp), %rdi
	callq	free
	xorl	%eax, %eax
	jmp	.LBB0_310
.LBB0_294:
	subq	%r8, %rsi
	movl	$1, %edx
	movl	$32, %edi
	pcmpeqd	%xmm0, %xmm0
	jmp	.LBB0_297
.LBB0_295:                              #   in Loop: Header=BB0_297 Depth=1
	movdqu	%xmm0, (%rbx,%rdi)
.LBB0_296:                              #   in Loop: Header=BB0_297 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rdi
	cmpq	%rdx, %rsi
	je	.LBB0_170
.LBB0_297:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jae	.LBB0_299
# %bb.298:                              #   in Loop: Header=BB0_297 Depth=1
	movdqu	%xmm0, -16(%rbx,%rdi)
	jmp	.LBB0_300
.LBB0_299:                              #   in Loop: Header=BB0_297 Depth=1
	movups	-16(%rax,%rdi), %xmm1
	movups	%xmm1, -16(%rbx,%rdi)
.LBB0_300:                              #   in Loop: Header=BB0_297 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jbe	.LBB0_295
# %bb.301:                              #   in Loop: Header=BB0_297 Depth=1
	movups	(%rax,%rdi), %xmm1
	movups	%xmm1, (%rbx,%rdi)
	jmp	.LBB0_296
.LBB0_302:
	movdqu	(%rax,%rsi), %xmm0
.LBB0_303:
	movdqu	%xmm0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_304:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_305:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_306:
	movq	-200(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_308
# %bb.307:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_308:
	movq	-160(%rbp), %rdi
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_310
# %bb.309:
	callq	free
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_310:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_311:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_312:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_315:
	movl	$12, %eax
	jmp	.LBB0_311
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
	movq	%r8, %r15
	movq	%rcx, %r13
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rdi, %r12
	movq	96(%rdi), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	cmpq	%rsi, 32(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	je	.LBB1_2
# %bb.1:
	movsbl	-1(%rsi), %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_3
.LBB1_2:
	movl	$128, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB1_3:
	movl	$1, %r14d
	movl	$1, %r9d
	movl	%r13d, %ecx
	shlq	%cl, %r9
	movq	(%r12), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r9, %rcx
	movl	$132, %r8d
	callq	sstep
	movq	%rax, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %ecx
	shlq	%cl, %r14
	movq	%r14, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%r15, -80(%rbp)         # 8-byte Spill
	movq	%r12, -72(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_24 Depth 2
	cmpq	40(%r12), %rsi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	movsbl	(%rsi), %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$128, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB1_7:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ebx
	jne	.LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_4 Depth=1
	movq	(%r12), %rax
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_13
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r8d, %r8d
	jmp	.LBB1_14
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_4 Depth=1
	xorl	%r8d, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	jne	.LBB1_14
# %bb.11:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	testb	$1, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %r14d
	jne	.LBB1_15
# %bb.12:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
.LBB1_13:                               #   in Loop: Header=BB1_4 Depth=1
	movl	76(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$129, %r8d
	jmp	.LBB1_15
	.p2align	4, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_4 Depth=1
	xorl	%r14d, %r14d
.LBB1_15:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, -56(%rbp)          # 4-byte Folded Reload
	jne	.LBB1_18
# %bb.16:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_21
# %bb.17:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_22
	.p2align	4, 0x90
.LBB1_18:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, -56(%rbp)         # 4-byte Folded Reload
	jne	.LBB1_22
# %bb.19:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	testb	$2, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_22
# %bb.20:                               #   in Loop: Header=BB1_4 Depth=1
	movq	(%rax), %rax
.LBB1_21:                               #   in Loop: Header=BB1_4 Depth=1
	xorl	%ecx, %ecx
	cmpl	$129, %r8d
	sete	%cl
	orl	$130, %ecx
	addl	80(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r8d
.LBB1_22:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	jle	.LBB1_25
# %bb.23:                               # %.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	addl	$1, %r14d
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	-72(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_24:                               #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r12), %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r10, %rcx
	movq	%r8, %r15
	movq	%r10, %r9
	callq	sstep
	movq	%r15, %r8
	movq	%rax, %r10
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r14d
	cmpl	$1, %r14d
	jg	.LBB1_24
.LBB1_25:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$129, %r8d
	jne	.LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$129, %eax
	cmpl	$128, -56(%rbp)         # 4-byte Folded Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	jne	.LBB1_32
	jmp	.LBB1_35
	.p2align	4, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rbx         # 8-byte Reload
	cmpl	$128, %ebx
	jne	.LBB1_29
# %bb.28:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB1_42
	.p2align	4, 0x90
.LBB1_29:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r12
	callq	__locale_ctype_ptr
	movzbl	%bl, %r14d
	movb	1(%rax,%r14), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, -56(%rbp)         # 4-byte Folded Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	je	.LBB1_38
# %bb.30:                               #   in Loop: Header=BB1_4 Depth=1
	cmpl	$95, %ebx
	je	.LBB1_38
# %bb.31:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r12, %r10
	andb	$7, %al
	jne	.LBB1_38
.LBB1_32:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rbx, %r14
	movq	%rsi, %r12
	movq	%r10, %rbx
	callq	__locale_ctype_ptr
	movq	%rbx, %r10
	movq	%r12, %rsi
	movq	%r14, %rbx
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movzbl	%dl, %ecx
	movb	1(%rax,%rcx), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %edx
	je	.LBB1_34
# %bb.33:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	andb	$7, %cl
	je	.LBB1_35
.LBB1_34:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$133, %eax
.LBB1_35:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	jne	.LBB1_37
# %bb.36:                               #   in Loop: Header=BB1_4 Depth=1
	movl	%eax, %r8d
	movq	-80(%rbp), %r15         # 8-byte Reload
	jmp	.LBB1_42
	.p2align	4, 0x90
.LBB1_37:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r10, %r12
	movzbl	%bl, %r14d
                                        # kill: def $eax killed $eax def $rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB1_39
.LBB1_38:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_39:                               #   in Loop: Header=BB1_4 Depth=1
	callq	__locale_ctype_ptr
	movb	1(%rax,%r14), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %ebx
	je	.LBB1_44
# %bb.40:                               #   in Loop: Header=BB1_4 Depth=1
	andb	$7, %al
	jne	.LBB1_44
# %bb.41:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%r12, %r10
.LBB1_42:                               #   in Loop: Header=BB1_4 Depth=1
	leal	-133(%r8), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jbe	.LBB1_46
# %bb.43:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	%r13, %rbx
	jmp	.LBB1_47
	.p2align	4, 0x90
.LBB1_44:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r8          # 8-byte Reload
	cmpl	$130, %r8d
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %r10
	jne	.LBB1_52
.LBB1_45:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$134, %r8d
.LBB1_46:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rsi, %r14
	movq	(%rax), %rdi
	movq	%r13, %rbx
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%r10, %rcx
                                        # kill: def $r8d killed $r8d killed $r8
	movq	%r10, %r9
	callq	sstep
	movq	%r14, %rsi
	movq	%rax, %r10
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %r9         # 8-byte Reload
.LBB1_47:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, -120(%rbp)        # 8-byte Folded Reload
	je	.LBB1_49
# %bb.48:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rax
	movq	%rsi, -96(%rbp)         # 8-byte Spill
.LBB1_49:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r10
	movq	-72(%rbp), %r12         # 8-byte Reload
	je	.LBB1_56
# %bb.50:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-112(%rbp), %rsi        # 8-byte Folded Reload
	je	.LBB1_56
# %bb.51:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%rsi, %r14
	movq	(%r12), %rdi
	movq	%rbx, %r13
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r10, %rcx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	%ebx, %r8d
	callq	sstep
	movq	%r14, %rsi
	movq	%rax, %r10
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	jmp	.LBB1_4
.LBB1_52:                               #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, -56(%rbp)         # 4-byte Folded Reload
	je	.LBB1_42
# %bb.53:                               #   in Loop: Header=BB1_4 Depth=1
	movq	%r10, %rbx
	callq	__locale_ctype_ptr
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movzbl	%dl, %ecx
	movb	1(%rax,%rcx), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %edx
	je	.LBB1_55
# %bb.54:                               #   in Loop: Header=BB1_4 Depth=1
	andb	$7, %al
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rbx, %r10
	je	.LBB1_45
	jmp	.LBB1_42
.LBB1_55:                               #   in Loop: Header=BB1_4 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movq	%rbx, %r10
	jmp	.LBB1_42
.LBB1_56:
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax         # 8-byte Reload
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
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rcx
	jge	.LBB2_42
# %bb.1:
	movq	%rcx, %rbx
	movq	%rdi, %r15
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	$2415919104, %edi       # imm = 0x90000000
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%r15, -56(%rbp)         # 8-byte Spill
	jmp	.LBB2_2
.LBB2_39:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rsi
	subq	24(%r15), %rsi
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	movq	16(%r15), %rdx
	shlq	$4, %rax
	movq	%rsi, 8(%rdx,%rax)
	.p2align	4, 0x90
.LBB2_40:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, -48(%rbp)         # 8-byte Spill
.LBB2_41:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rbx
	jge	.LBB2_42
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #     Child Loop BB2_30 Depth 2
                                        #     Child Loop BB2_33 Depth 2
                                        #     Child Loop BB2_14 Depth 2
                                        #     Child Loop BB2_19 Depth 2
                                        #     Child Loop BB2_22 Depth 2
	movq	%rbx, %r14
	movq	(%r15), %rax
	movq	8(%rax), %rcx
	movq	(%rcx,%rbx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andl	$-134217728, %edx       # imm = 0xF8000000
	cmpl	$1207959552, %edx       # imm = 0x48000000
	je	.LBB2_6
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	cmpl	$1476395008, %edx       # imm = 0x58000000
	je	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%r14, %r13
	cmpl	$2013265920, %edx       # imm = 0x78000000
	jne	.LBB2_9
# %bb.5:                                #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdx
	movq	%r14, %r13
	cmpq	%rdi, %rsi
	je	.LBB2_9
	.p2align	4, 0x90
.LBB2_7:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %edx        # imm = 0x7FFFFFF
	addq	%rdx, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx,%r13,8), %rdx
	movl	%edx, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	jne	.LBB2_7
	jmp	.LBB2_9
	.p2align	4, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, %r13d
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	addq	%r14, %r13
	movl	$42, __A_VARIABLE(%rip)
.LBB2_9:                                #   in Loop: Header=BB2_2 Depth=1
	leaq	1(%r13), %rbx
	movl	%eax, %edx
	andl	$-134217728, %edx       # imm = 0xF8000000
	addq	$-134217728, %rdx       # imm = 0xF8000000
	shrq	$27, %rdx
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	cmpq	$13, %rdx
	ja	.LBB2_41
# %bb.10:                               #   in Loop: Header=BB2_2 Depth=1
	jmpq	*.LJTI2_0(,%rdx,8)
.LBB2_11:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	addq	$1, %r12
	jmp	.LBB2_40
.LBB2_18:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	sslow
	movq	%rax, %r12
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%r15, %rdx
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	sslow
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	movq	%r14, -88(%rbp)         # 8-byte Spill
	je	.LBB2_20
	.p2align	4, 0x90
.LBB2_19:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, %r8
	callq	sslow
	movq	%rax, %r12
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	sslow
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jne	.LBB2_19
.LBB2_20:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-88(%rbp), %r14         # 8-byte Reload
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	.p2align	4, 0x90
.LBB2_22:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	sslow
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_25
# %bb.23:                               #   in Loop: Header=BB2_22 Depth=2
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	cmpq	%rbx, %rax
	je	.LBB2_24
# %bb.21:                               #   in Loop: Header=BB2_22 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB2_22
.LBB2_12:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	sslow
	movq	%rax, %r12
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%r15, %rdx
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	sslow
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	je	.LBB2_15
# %bb.13:                               # %.preheader8
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_14:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	sslow
	movq	%rax, %r12
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	sslow
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jne	.LBB2_14
.LBB2_15:                               #   in Loop: Header=BB2_2 Depth=1
	addq	$1, %r14
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	sslow
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_16
# %bb.17:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	sdissect
	movl	$42, __A_VARIABLE(%rip)
.LBB2_16:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$2415919104, %edi       # imm = 0x90000000
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	jmp	.LBB2_40
.LBB2_38:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rsi
	subq	24(%r15), %rsi
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	movq	16(%r15), %rdx
	shlq	$4, %rax
	movq	%rsi, (%rdx,%rax)
	jmp	.LBB2_40
.LBB2_27:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %r13
	movq	%rbx, %r15
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	sslow
	movq	%rax, %r12
	movq	%r13, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movq	%r15, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	sslow
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	je	.LBB2_28
# %bb.29:                               # %.preheader1
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB2_30:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	sslow
	movq	%rax, %r12
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	sslow
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jne	.LBB2_30
	jmp	.LBB2_31
.LBB2_25:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_26
.LBB2_28:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB2_31:                               #   in Loop: Header=BB2_2 Depth=1
	movq	(%r15), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r14,8), %rax
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	leaq	(%r14,%rax), %rbx
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	sslow
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jne	.LBB2_33
# %bb.32:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rbx, %r13
.LBB2_36:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	jmp	.LBB2_37
	.p2align	4, 0x90
.LBB2_35:                               #   in Loop: Header=BB2_33 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	addq	$2, %r14
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	sslow
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
	cmpq	%r12, %rax
	je	.LBB2_36
.LBB2_33:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rax
	movq	8(%rax), %rcx
	movq	8(%rcx,%rbx,8), %rax
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	leaq	(%rax,%rbx), %r13
	addq	$1, %r13
	movq	(%rcx,%r13,8), %rcx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	movl	$2415919104, %edx       # imm = 0x90000000
	addq	$-134217728, %rdx       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jne	.LBB2_35
# %bb.34:                               #   in Loop: Header=BB2_33 Depth=2
	addq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r13
	jmp	.LBB2_35
.LBB2_24:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
.LBB2_26:                               #   in Loop: Header=BB2_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB2_37:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	sdissect
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	$2415919104, %edi       # imm = 0x90000000
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB2_40
.LBB2_42:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
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
	.quad	.LBB2_41
	.quad	.LBB2_41
	.quad	.LBB2_11
	.quad	.LBB2_11
	.quad	.LBB2_41
	.quad	.LBB2_41
	.quad	.LBB2_18
	.quad	.LBB2_41
	.quad	.LBB2_12
	.quad	.LBB2_41
	.quad	.LBB2_38
	.quad	.LBB2_39
	.quad	.LBB2_27
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
	subq	$40, %rsp
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rcx
	jge	.LBB3_46
# %bb.1:                                # %.preheader3
	movq	%r8, %r13
	movq	%rcx, %r14
	movq	%rdi, %r12
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movl	$2415919104, %r15d      # imm = 0x90000000
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB3_4
	.p2align	4, 0x90
.LBB3_8:                                #   in Loop: Header=BB3_4 Depth=1
	addq	$1, %rbx
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r14
	jge	.LBB3_46
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_24 Depth 2
	movq	(%r12), %rax
	movq	8(%rax), %rcx
	movq	(%rcx,%r14,8), %rdi
	movl	%edi, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	addq	$-268435456, %rsi       # imm = 0xF0000000
	shrq	$27, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$18, %rsi
	ja	.LBB3_48
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	jmpq	*.LJTI3_0(,%rsi,8)
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rbx
	je	.LBB3_68
# %bb.7:                                #   in Loop: Header=BB3_4 Depth=1
	movsbl	(%rbx), %eax
	movsbl	%dil, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	je	.LBB3_8
	jmp	.LBB3_68
.LBB3_9:                                #   in Loop: Header=BB3_4 Depth=1
	cmpq	32(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$1, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_3
.LBB3_11:                               #   in Loop: Header=BB3_4 Depth=1
	cmpq	40(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB3_68
# %bb.12:                               #   in Loop: Header=BB3_4 Depth=1
	cmpb	$10, -1(%rbx)
	jmp	.LBB3_17
.LBB3_13:                               #   in Loop: Header=BB3_4 Depth=1
	movq	40(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jne	.LBB3_15
# %bb.14:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$2, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_3
.LBB3_15:                               #   in Loop: Header=BB3_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jae	.LBB3_68
# %bb.16:                               #   in Loop: Header=BB3_4 Depth=1
	cmpb	$10, (%rbx)
.LBB3_17:                               #   in Loop: Header=BB3_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_68
# %bb.18:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_3
	jmp	.LBB3_68
.LBB3_19:                               #   in Loop: Header=BB3_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rbx
	je	.LBB3_68
# %bb.20:                               #   in Loop: Header=BB3_4 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_3
.LBB3_21:                               #   in Loop: Header=BB3_4 Depth=1
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rbx
	je	.LBB3_68
# %bb.22:                               #   in Loop: Header=BB3_4 Depth=1
	andl	$134217727, %edi        # imm = 0x7FFFFFF
	shlq	$5, %rdi
	movq	(%rax,%rdi), %rcx
	movzbl	(%rbx), %esi
	movb	8(%rax,%rdi), %al
	andb	(%rcx,%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_8
	jmp	.LBB3_68
.LBB3_23:                               #   in Loop: Header=BB3_4 Depth=1
	movq	8(%rcx,%r14,8), %rax
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB3_24:                               #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	addq	%rax, %r14
	movq	(%rcx,%r14,8), %rax
	movl	%eax, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rsi
	jne	.LBB3_24
	jmp	.LBB3_3
.LBB3_25:                               #   in Loop: Header=BB3_4 Depth=1
	movq	32(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jne	.LBB3_27
# %bb.26:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$1, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_33
.LBB3_27:                               #   in Loop: Header=BB3_4 Depth=1
	cmpq	40(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB3_30
# %bb.28:                               #   in Loop: Header=BB3_4 Depth=1
	cmpb	$10, -1(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_30
# %bb.29:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_33
.LBB3_30:                               #   in Loop: Header=BB3_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jbe	.LBB3_68
# %bb.31:                               #   in Loop: Header=BB3_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	-1(%rbx), %ecx
	testb	$7, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_68
# %bb.32:                               #   in Loop: Header=BB3_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$95, %cl
	je	.LBB3_68
.LBB3_33:                               #   in Loop: Header=BB3_4 Depth=1
	cmpq	40(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB3_68
# %bb.34:                               #   in Loop: Header=BB3_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ecx
	jmp	.LBB3_35
.LBB3_37:                               #   in Loop: Header=BB3_4 Depth=1
	movq	40(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jne	.LBB3_39
# %bb.38:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$2, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_44
.LBB3_39:                               #   in Loop: Header=BB3_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jae	.LBB3_71
# %bb.40:                               #   in Loop: Header=BB3_4 Depth=1
	cmpb	$10, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_42
# %bb.41:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_44
.LBB3_42:                               #   in Loop: Header=BB3_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ecx
	testb	$7, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_68
# %bb.43:                               #   in Loop: Header=BB3_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$95, %cl
	je	.LBB3_68
.LBB3_44:                               #   in Loop: Header=BB3_4 Depth=1
	cmpq	32(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB3_68
# %bb.45:                               #   in Loop: Header=BB3_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	-1(%rbx), %ecx
.LBB3_35:                               #   in Loop: Header=BB3_4 Depth=1
	testb	$7, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_2
# %bb.36:                               #   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB3_3
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$95, %cl
	movq	-56(%rbp), %rdx         # 8-byte Reload
	je	.LBB3_3
	jmp	.LBB3_68
.LBB3_46:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpq	%rdx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rbx, %rax
	jmp	.LBB3_47
.LBB3_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r14,8), %r8
	movl	%r8d, %eax
	andl	$-134217728, %eax       # imm = 0xF8000000
	addq	$-939524096, %rax       # imm = 0xC8000000
	shrq	$27, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rax
	ja	.LBB3_57
# %bb.49:
	leaq	1(%r14), %r15
	jmpq	*.LJTI3_1(,%rax,8)
.LBB3_50:
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	movq	16(%r12), %rsi
	movq	%r8, %rcx
	shlq	$4, %rcx
	movq	8(%rsi,%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB3_68
# %bb.51:
	movq	(%rsi,%rcx), %rsi
	subq	%rsi, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	ja	.LBB3_68
# %bb.52:
	movq	%r8, -64(%rbp)          # 8-byte Spill
	addq	24(%r12), %rsi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_68
# %bb.53:
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	(%r12), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	orq	$1073741824, %rcx       # imm = 0x40000000
	cmpq	%rcx, (%rax,%r14,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_56
# %bb.54:                               # %.preheader
	addq	$1, %r14
	movq	%r14, %r15
.LBB3_55:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, (%rax,%r15,8)
	leaq	1(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_55
.LBB3_56:
	addq	%rdx, %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	movq	%r13, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	jmp	.LBB3_74
.LBB3_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %eax
	jmp	.LBB3_47
.LBB3_58:
	movq	56(%r12), %rax
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%rbx, 8(%rax,%r9,8)
	addq	$1, %r9
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	movq	%r13, %r8
	jmp	.LBB3_74
.LBB3_59:
	movq	56(%r12), %rax
	movq	-48(%rbp), %r14         # 8-byte Reload
	cmpq	(%rax,%r14,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_72
# %bb.60:
	movq	%rbx, (%rax,%r14,8)
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	movq	%r15, %rcx
	subq	%r8, %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %r15
	movq	%r13, %r8
	movq	%r14, %r9
	callq	sbackref
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB3_63
# %bb.61:
	addq	$-1, %r14
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB3_73
.LBB3_62:
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	movq	%r13, %r8
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r14, %r9
	callq	sbackref
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB3_63
# %bb.75:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	andl	$134217727, %ecx        # imm = 0x7FFFFFF
	addq	%r15, %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB3_73
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
	movq	%r15, %rcx
	movq	%r8, %rbx
	movq	%r13, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	callq	sbackref
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB3_63
# %bb.65:
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
	movq	%r15, %rcx
	movq	%r8, %rbx
	movq	%r13, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	callq	sbackref
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB3_63
# %bb.67:
	movq	16(%r12), %rax
	movq	%r14, 8(%rax,%rbx)
	jmp	.LBB3_68
.LBB3_69:
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	addq	%r8, %r14
	addq	$-1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	movq	%r14, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	callq	sbackref
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_70
.LBB3_63:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_47
.LBB3_71:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_68:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB3_47:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_72:
	addq	$-1, %r14
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
.LBB3_73:
	movq	%r13, %r8
	movq	%r14, %r9
.LBB3_74:
	callq	sbackref
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_47
.LBB3_70:                               # %.preheader1
	movl	$2415919104, %eax       # imm = 0x90000000
	leaq	-134217728(%rax), %r15
	jmp	.LBB3_77
.LBB3_76:                               #   in Loop: Header=BB3_77 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%r13, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	callq	sbackref
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r14
	testq	%rax, %rax
	jne	.LBB3_63
.LBB3_77:                               # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rax
	movq	8(%rax), %rdx
	movq	(%rdx,%r14,8), %rax
	andl	$-134217728, %eax       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	movl	$2415919104, %ecx       # imm = 0x90000000
	cmpq	%rcx, %rax
	je	.LBB3_68
# %bb.78:                               #   in Loop: Header=BB3_77 Depth=1
	leaq	2(%r14), %rcx
	movq	8(%rdx,%r14,8), %rax
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	leaq	(%rax,%r14), %r13
	addq	$1, %r13
	movq	(%rdx,%r13,8), %rdx
	andl	$-134217728, %edx       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rdx
	jne	.LBB3_76
# %bb.79:                               #   in Loop: Header=BB3_77 Depth=1
	addq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r13
	jmp	.LBB3_76
.Lfunc_end3:
	.size	sbackref, .Lfunc_end3-sbackref
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_6
	.quad	.LBB3_9
	.quad	.LBB3_13
	.quad	.LBB3_19
	.quad	.LBB3_21
	.quad	.LBB3_48
	.quad	.LBB3_48
	.quad	.LBB3_48
	.quad	.LBB3_48
	.quad	.LBB3_48
	.quad	.LBB3_3
	.quad	.LBB3_48
	.quad	.LBB3_48
	.quad	.LBB3_48
	.quad	.LBB3_23
	.quad	.LBB3_48
	.quad	.LBB3_48
	.quad	.LBB3_25
	.quad	.LBB3_37
.LJTI3_1:
	.quad	.LBB3_50
	.quad	.LBB3_57
	.quad	.LBB3_58
	.quad	.LBB3_59
	.quad	.LBB3_62
	.quad	.LBB3_57
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jne	.LBB4_1
.LBB4_28:
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
	movq	%rcx, %r10
	movl	$1, %r13d
	movl	%esi, %ecx
	shlq	%cl, %r13
	movq	8(%rdi), %r11
	movl	%r8d, %r14d
	orl	$2, %r14d
	movl	%r8d, %r12d
	orl	$1, %r12d
	movzbl	%r8b, %ecx
	movq	%rcx, (%rsp)            # 8-byte Spill
	jmp	.LBB4_2
.LBB4_5:                                #   in Loop: Header=BB4_2 Depth=1
	movq	%r13, %rcx
	andq	%r10, %rcx
.LBB4_25:                               #   in Loop: Header=BB4_2 Depth=1
	addq	%rcx, %rcx
	orq	%rcx, %rax
.LBB4_26:                               #   in Loop: Header=BB4_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_27:                               #   in Loop: Header=BB4_2 Depth=1
	addq	$1, %rsi
	addq	%r13, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	je	.LBB4_28
.LBB4_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
	movq	(%r11,%rsi,8), %rcx
	movl	%ecx, %ebp
	andl	$-134217728, %ebp       # imm = 0xF8000000
	addq	$-134217728, %rbp       # imm = 0xF8000000
	shrq	$27, %rbp
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rbp
	cmpq	$18, %rbp
	ja	.LBB4_27
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	jmpq	*.LJTI4_0(,%rbp,8)
.LBB4_24:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rcx
	andq	%r13, %rcx
	jmp	.LBB4_25
.LBB4_16:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rbp
	andq	%r13, %rbp
	addq	%rbp, %rbp
	orq	%rax, %rbp
	movq	%rbp, %rax
	andq	%r13, %rax
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rax
	orq	%rbp, %rax
	jmp	.LBB4_26
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
	movsbl	%cl, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r8d, %ecx
	je	.LBB4_5
	jmp	.LBB4_27
.LBB4_6:                                #   in Loop: Header=BB4_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131, %r14d
	je	.LBB4_5
	jmp	.LBB4_27
.LBB4_7:                                #   in Loop: Header=BB4_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131, %r12d
	je	.LBB4_5
	jmp	.LBB4_27
.LBB4_10:                               #   in Loop: Header=BB4_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$127, %r8d
	jle	.LBB4_5
	jmp	.LBB4_27
.LBB4_11:                               #   in Loop: Header=BB4_2 Depth=1
	movq	24(%rdi), %rbp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$127, %r8d
	jg	.LBB4_27
# %bb.12:                               #   in Loop: Header=BB4_2 Depth=1
	andl	$134217727, %ecx        # imm = 0x7FFFFFF
	shlq	$5, %rcx
	movq	(%rbp,%rcx), %rbx
	movb	8(%rbp,%rcx), %cl
	movq	(%rsp), %rbp            # 8-byte Reload
	andb	(%rbx,%rbp), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_5
	jmp	.LBB4_27
.LBB4_13:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rbp
	andq	%r13, %rbp
	addq	%rbp, %rbp
	orq	%rax, %rbp
	movq	%r13, %rbx
	shrq	%cl, %rbx
	movq	%rbp, %rax
	andq	%r13, %rax
	shrq	%cl, %rax
	orq	%rbp, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbp, %rbx
	jne	.LBB4_27
# %bb.14:                               #   in Loop: Header=BB4_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rax
	je	.LBB4_27
# %bb.15:                               #   in Loop: Header=BB4_2 Depth=1
	andl	$134217727, %ecx        # imm = 0x7FFFFFF
	notq	%rcx
	addq	%rcx, %rsi
	movl	$1, %r13d
	movl	%esi, %ecx
	shlq	%cl, %r13
	jmp	.LBB4_26
.LBB4_17:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	andq	%r13, %r15
	je	.LBB4_27
# %bb.18:                               #   in Loop: Header=BB4_2 Depth=1
	movl	%r12d, %r9d
	movl	%r14d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r11,%rsi,8), %rbp
	movl	%ebp, %r14d
	andl	$-134217728, %r14d      # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	movl	$2415919104, %ebx       # imm = 0x90000000
	cmpq	%rbx, %r14
	movl	$2415919104, %r14d      # imm = 0x90000000
	je	.LBB4_21
# %bb.19:                               # %.preheader
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB4_20:                               #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %ebp        # imm = 0x7FFFFFF
	addq	%rbp, %rcx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rcx,%rsi), %rbp
	movq	(%r11,%rbp,8), %rbp
	movl	%ebp, %ebx
	andl	$-134217728, %ebx       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jne	.LBB4_20
.LBB4_21:                               #   in Loop: Header=BB4_2 Depth=1
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r15
	orq	%r15, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %r14d
	movl	%r9d, %r12d
	jmp	.LBB4_27
.LBB4_22:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rbx
	andq	%r13, %rbx
	addq	%rbx, %rbx
	orq	%rbx, %rax
	andl	$134217727, %ecx        # imm = 0x7FFFFFF
	leaq	(%rcx,%rsi), %rbx
	movq	(%r11,%rbx,8), %rbx
	andl	$-134217728, %ebx       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	movl	$2415919104, %ebp       # imm = 0x90000000
	cmpq	%rbp, %rbx
	je	.LBB4_27
# %bb.23:                               #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, %rbx
	andq	%r13, %rbx
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rbx
	orq	%rbx, %rax
	jmp	.LBB4_26
.LBB4_8:                                #   in Loop: Header=BB4_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$133, %r8d
	je	.LBB4_5
	jmp	.LBB4_27
.LBB4_9:                                #   in Loop: Header=BB4_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$134, %r8d
	je	.LBB4_5
	jmp	.LBB4_27
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
	movq	80(%rdi), %r15
	movq	104(%rdi), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	96(%rdi), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	cmpq	%rsi, 32(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_2
# %bb.1:
	movq	%rsi, %r13
	movsbl	-1(%rsi), %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_3
.LBB5_2:
	movq	%rsi, %r13
	movl	$128, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB5_3:
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
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movq	%rbx, %r15
	movq	-56(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_24 Depth 2
	cmpq	40(%r15), %r13
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_6
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	movsbl	(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_7
	.p2align	4, 0x90
.LBB5_6:                                #   in Loop: Header=BB5_4 Depth=1
	movl	$128, %ecx
.LBB5_7:                                #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %r14d
	movq	%r14, -56(%rbp)         # 8-byte Spill
	jne	.LBB5_10
# %bb.8:                                #   in Loop: Header=BB5_4 Depth=1
	movq	(%r15), %rax
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_13
# %bb.9:                                #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r8d, %r8d
	jmp	.LBB5_14
	.p2align	4, 0x90
.LBB5_10:                               #   in Loop: Header=BB5_4 Depth=1
	xorl	%r8d, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %r14d
	jne	.LBB5_14
# %bb.11:                               #   in Loop: Header=BB5_4 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	testb	$1, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %esi
	jne	.LBB5_15
# %bb.12:                               #   in Loop: Header=BB5_4 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
.LBB5_13:                               #   in Loop: Header=BB5_4 Depth=1
	movl	76(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$129, %r8d
	jmp	.LBB5_15
	.p2align	4, 0x90
.LBB5_14:                               #   in Loop: Header=BB5_4 Depth=1
	xorl	%esi, %esi
.LBB5_15:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	movq	%r13, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jne	.LBB5_18
# %bb.16:                               #   in Loop: Header=BB5_4 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_21
# %bb.17:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_22
	.p2align	4, 0x90
.LBB5_18:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ecx
	jne	.LBB5_22
# %bb.19:                               #   in Loop: Header=BB5_4 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	testb	$2, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_22
# %bb.20:                               #   in Loop: Header=BB5_4 Depth=1
	movq	(%rax), %rax
.LBB5_21:                               #   in Loop: Header=BB5_4 Depth=1
	xorl	%ecx, %ecx
	cmpl	$129, %r8d
	sete	%cl
	orl	$130, %ecx
	addl	80(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r8d
.LBB5_22:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	jle	.LBB5_25
# %bb.23:                               # %.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	addl	$1, %esi
	.p2align	4, 0x90
.LBB5_24:                               #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, -92(%rbp)         # 4-byte Spill
	movq	(%r13), %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r8, %r15
	movq	%r14, %r9
	callq	lstep
	movl	-92(%rbp), %esi         # 4-byte Reload
	movq	%r15, %r8
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %esi
	cmpl	$1, %esi
	jg	.LBB5_24
.LBB5_25:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$129, %r8d
	jne	.LBB5_27
# %bb.26:                               #   in Loop: Header=BB5_4 Depth=1
	movq	%r8, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$129, %eax
	movq	-88(%rbp), %r12         # 8-byte Reload
	cmpl	$128, %r12d
	movq	-80(%rbp), %r13         # 8-byte Reload
	jne	.LBB5_32
	jmp	.LBB5_35
	.p2align	4, 0x90
.LBB5_27:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	cmpl	$128, %ebx
	jne	.LBB5_29
# %bb.28:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	jmp	.LBB5_43
	.p2align	4, 0x90
.LBB5_29:                               #   in Loop: Header=BB5_4 Depth=1
	movq	%r8, %r15
	callq	__locale_ctype_ptr
	movzbl	%bl, %r14d
	movb	1(%rax,%r14), %al
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %r12         # 8-byte Reload
	cmpl	$128, %r12d
	movq	-80(%rbp), %r13         # 8-byte Reload
	je	.LBB5_38
# %bb.30:                               #   in Loop: Header=BB5_4 Depth=1
	cmpl	$95, -56(%rbp)          # 4-byte Folded Reload
	je	.LBB5_38
# %bb.31:                               #   in Loop: Header=BB5_4 Depth=1
	andb	$7, %al
	jne	.LBB5_38
.LBB5_32:                               #   in Loop: Header=BB5_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	%r12b, %ecx
	movb	1(%rax,%rcx), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %r12d
	je	.LBB5_34
# %bb.33:                               #   in Loop: Header=BB5_4 Depth=1
	movl	%r15d, %eax
	andb	$7, %cl
	je	.LBB5_35
.LBB5_34:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$133, %eax
.LBB5_35:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	cmpl	$128, %ebx
	jne	.LBB5_37
# %bb.36:                               #   in Loop: Header=BB5_4 Depth=1
	movl	%eax, %r8d
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB5_42
	.p2align	4, 0x90
.LBB5_37:                               #   in Loop: Header=BB5_4 Depth=1
	movzbl	%bl, %r14d
	movl	%eax, %r15d
	jmp	.LBB5_39
.LBB5_38:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
.LBB5_39:                               #   in Loop: Header=BB5_4 Depth=1
	callq	__locale_ctype_ptr
	movb	1(%rax,%r14), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %ebx
	je	.LBB5_44
# %bb.40:                               #   in Loop: Header=BB5_4 Depth=1
	andb	$7, %al
	jne	.LBB5_44
# %bb.41:                               #   in Loop: Header=BB5_4 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %r8
.LBB5_42:                               #   in Loop: Header=BB5_4 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r13, %rbx
.LBB5_43:                               #   in Loop: Header=BB5_4 Depth=1
	leal	-133(%r8), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jbe	.LBB5_46
	jmp	.LBB5_47
	.p2align	4, 0x90
.LBB5_44:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r8
	cmpl	$130, %r8d
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r13, %rbx
	jne	.LBB5_52
.LBB5_45:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$134, %r8d
.LBB5_46:                               #   in Loop: Header=BB5_4 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movq	%rbx, %rdx
	movq	%r14, %rcx
                                        # kill: def $r8d killed $r8d killed $r8
	movq	%r14, %r9
	callq	lstep
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB5_47:                               #   in Loop: Header=BB5_4 Depth=1
	cmpb	$0, (%r14,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_49
# %bb.48:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB5_49:                               #   in Loop: Header=BB5_4 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	(%r15), %rax
	movq	48(%rax), %rdx
	movq	%r14, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-120(%rbp), %r13        # 8-byte Reload
	je	.LBB5_56
# %bb.50:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-136(%rbp), %r13        # 8-byte Folded Reload
	je	.LBB5_56
# %bb.51:                               #   in Loop: Header=BB5_4 Depth=1
	movq	(%r15), %rax
	movq	48(%rax), %rdx
	movq	%r14, %rbx
	movq	%r12, %r14
	movq	-128(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	(%r15), %rax
	movq	48(%rax), %rdx
	movq	%rbx, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	movq	(%r15), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%r12, %rcx
	movl	%r14d, %r8d
	movq	%rbx, %r9
	callq	lstep
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	jmp	.LBB5_4
.LBB5_52:                               #   in Loop: Header=BB5_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %r12d
	je	.LBB5_43
# %bb.53:                               #   in Loop: Header=BB5_4 Depth=1
	movq	%rsi, %r13
	callq	__locale_ctype_ptr
	movzbl	%r12b, %ecx
	movb	1(%rax,%rcx), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %r12d
	je	.LBB5_55
# %bb.54:                               #   in Loop: Header=BB5_4 Depth=1
	andb	$7, %al
	movq	%r15, %r8
	movq	%r13, %rsi
	je	.LBB5_45
	jmp	.LBB5_43
.LBB5_55:                               #   in Loop: Header=BB5_4 Depth=1
	movq	%r15, %r8
	movq	%r13, %rsi
	jmp	.LBB5_43
.LBB5_56:
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rax        # 8-byte Reload
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
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rcx
	jge	.LBB6_42
# %bb.1:
	movq	%rcx, %rbx
	movq	%rdi, %r15
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	$2415919104, %edi       # imm = 0x90000000
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%r15, -56(%rbp)         # 8-byte Spill
	jmp	.LBB6_2
.LBB6_39:                               #   in Loop: Header=BB6_2 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rsi
	subq	24(%r15), %rsi
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	movq	16(%r15), %rdx
	shlq	$4, %rax
	movq	%rsi, 8(%rdx,%rax)
	.p2align	4, 0x90
.LBB6_40:                               #   in Loop: Header=BB6_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, -48(%rbp)         # 8-byte Spill
.LBB6_41:                               #   in Loop: Header=BB6_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rbx
	jge	.LBB6_42
.LBB6_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
                                        #     Child Loop BB6_30 Depth 2
                                        #     Child Loop BB6_33 Depth 2
                                        #     Child Loop BB6_14 Depth 2
                                        #     Child Loop BB6_19 Depth 2
                                        #     Child Loop BB6_22 Depth 2
	movq	%rbx, %r14
	movq	(%r15), %rax
	movq	8(%rax), %rcx
	movq	(%rcx,%rbx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andl	$-134217728, %edx       # imm = 0xF8000000
	cmpl	$1207959552, %edx       # imm = 0x48000000
	je	.LBB6_6
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=1
	cmpl	$1476395008, %edx       # imm = 0x58000000
	je	.LBB6_6
# %bb.4:                                #   in Loop: Header=BB6_2 Depth=1
	movq	%r14, %r13
	cmpl	$2013265920, %edx       # imm = 0x78000000
	jne	.LBB6_9
# %bb.5:                                #   in Loop: Header=BB6_2 Depth=1
	movl	%eax, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdx
	movq	%r14, %r13
	cmpq	%rdi, %rsi
	je	.LBB6_9
	.p2align	4, 0x90
.LBB6_7:                                #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %edx        # imm = 0x7FFFFFF
	addq	%rdx, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx,%r13,8), %rdx
	movl	%edx, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	jne	.LBB6_7
	jmp	.LBB6_9
	.p2align	4, 0x90
.LBB6_6:                                #   in Loop: Header=BB6_2 Depth=1
	movl	%eax, %r13d
	andl	$134217727, %r13d       # imm = 0x7FFFFFF
	addq	%r14, %r13
	movl	$42, __A_VARIABLE(%rip)
.LBB6_9:                                #   in Loop: Header=BB6_2 Depth=1
	leaq	1(%r13), %rbx
	movl	%eax, %edx
	andl	$-134217728, %edx       # imm = 0xF8000000
	addq	$-134217728, %rdx       # imm = 0xF8000000
	shrq	$27, %rdx
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	cmpq	$13, %rdx
	ja	.LBB6_41
# %bb.10:                               #   in Loop: Header=BB6_2 Depth=1
	jmpq	*.LJTI6_0(,%rdx,8)
.LBB6_11:                               #   in Loop: Header=BB6_2 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	addq	$1, %r12
	jmp	.LBB6_40
.LBB6_18:                               #   in Loop: Header=BB6_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	lslow
	movq	%rax, %r12
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%r15, %rdx
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	lslow
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	movq	%r14, -88(%rbp)         # 8-byte Spill
	je	.LBB6_20
	.p2align	4, 0x90
.LBB6_19:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, %r8
	callq	lslow
	movq	%rax, %r12
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	lslow
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jne	.LBB6_19
.LBB6_20:                               #   in Loop: Header=BB6_2 Depth=1
	movq	-88(%rbp), %r14         # 8-byte Reload
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	.p2align	4, 0x90
.LBB6_22:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	lslow
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_25
# %bb.23:                               #   in Loop: Header=BB6_22 Depth=2
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	cmpq	%rbx, %rax
	je	.LBB6_24
# %bb.21:                               #   in Loop: Header=BB6_22 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB6_22
.LBB6_12:                               #   in Loop: Header=BB6_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	lslow
	movq	%rax, %r12
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%r15, %rdx
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	lslow
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	je	.LBB6_15
# %bb.13:                               # %.preheader8
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB6_14:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	lslow
	movq	%rax, %r12
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r15, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	lslow
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jne	.LBB6_14
.LBB6_15:                               #   in Loop: Header=BB6_2 Depth=1
	addq	$1, %r14
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	lslow
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_16
# %bb.17:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	ldissect
	movl	$42, __A_VARIABLE(%rip)
.LBB6_16:                               #   in Loop: Header=BB6_2 Depth=1
	movl	$2415919104, %edi       # imm = 0x90000000
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	jmp	.LBB6_40
.LBB6_38:                               #   in Loop: Header=BB6_2 Depth=1
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rsi
	subq	24(%r15), %rsi
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	movq	16(%r15), %rdx
	shlq	$4, %rax
	movq	%rsi, (%rdx,%rax)
	jmp	.LBB6_40
.LBB6_27:                               #   in Loop: Header=BB6_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %r13
	movq	%rbx, %r15
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	lslow
	movq	%rax, %r12
	movq	%r13, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movq	%r15, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	lslow
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	je	.LBB6_28
# %bb.29:                               # %.preheader1
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-56(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB6_30:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	lslow
	movq	%rax, %r12
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	movq	%r13, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	lslow
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jne	.LBB6_30
	jmp	.LBB6_31
.LBB6_25:                               #   in Loop: Header=BB6_2 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB6_26
.LBB6_28:                               #   in Loop: Header=BB6_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB6_31:                               #   in Loop: Header=BB6_2 Depth=1
	movq	(%r15), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r14,8), %rax
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	leaq	(%r14,%rax), %rbx
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	movq	%r15, %rdi
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	lslow
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jne	.LBB6_33
# %bb.32:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%rbx, %r13
.LBB6_36:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	jmp	.LBB6_37
	.p2align	4, 0x90
.LBB6_35:                               #   in Loop: Header=BB6_33 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	addq	$2, %r14
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	lslow
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
	cmpq	%r12, %rax
	je	.LBB6_36
.LBB6_33:                               #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %rax
	movq	8(%rax), %rcx
	movq	8(%rcx,%rbx,8), %rax
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	leaq	(%rax,%rbx), %r13
	addq	$1, %r13
	movq	(%rcx,%r13,8), %rcx
	andl	$-134217728, %ecx       # imm = 0xF8000000
	movl	$2415919104, %edx       # imm = 0x90000000
	addq	$-134217728, %rdx       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jne	.LBB6_35
# %bb.34:                               #   in Loop: Header=BB6_33 Depth=2
	addq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r13
	jmp	.LBB6_35
.LBB6_24:                               #   in Loop: Header=BB6_2 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
.LBB6_26:                               #   in Loop: Header=BB6_2 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB6_37:                               #   in Loop: Header=BB6_2 Depth=1
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	ldissect
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	$2415919104, %edi       # imm = 0x90000000
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB6_40
.LBB6_42:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
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
	.quad	.LBB6_41
	.quad	.LBB6_41
	.quad	.LBB6_11
	.quad	.LBB6_11
	.quad	.LBB6_41
	.quad	.LBB6_41
	.quad	.LBB6_18
	.quad	.LBB6_41
	.quad	.LBB6_12
	.quad	.LBB6_41
	.quad	.LBB6_38
	.quad	.LBB6_39
	.quad	.LBB6_27
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
	subq	$40, %rsp
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rcx
	jge	.LBB7_46
# %bb.1:                                # %.preheader3
	movq	%r8, %r13
	movq	%rcx, %r14
	movq	%rdi, %r12
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movl	$2415919104, %r15d      # imm = 0x90000000
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB7_4
	.p2align	4, 0x90
.LBB7_8:                                #   in Loop: Header=BB7_4 Depth=1
	addq	$1, %rbx
.LBB7_3:                                #   in Loop: Header=BB7_4 Depth=1
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r14
	jge	.LBB7_46
.LBB7_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
	movq	(%r12), %rax
	movq	8(%rax), %rcx
	movq	(%rcx,%r14,8), %rdi
	movl	%edi, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	addq	$-268435456, %rsi       # imm = 0xF0000000
	shrq	$27, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$18, %rsi
	ja	.LBB7_48
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	jmpq	*.LJTI7_0(,%rsi,8)
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rbx
	je	.LBB7_68
# %bb.7:                                #   in Loop: Header=BB7_4 Depth=1
	movsbl	(%rbx), %eax
	movsbl	%dil, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	je	.LBB7_8
	jmp	.LBB7_68
.LBB7_9:                                #   in Loop: Header=BB7_4 Depth=1
	cmpq	32(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_11
# %bb.10:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$1, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_3
.LBB7_11:                               #   in Loop: Header=BB7_4 Depth=1
	cmpq	40(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_68
# %bb.12:                               #   in Loop: Header=BB7_4 Depth=1
	cmpb	$10, -1(%rbx)
	jmp	.LBB7_17
.LBB7_13:                               #   in Loop: Header=BB7_4 Depth=1
	movq	40(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jne	.LBB7_15
# %bb.14:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$2, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_3
.LBB7_15:                               #   in Loop: Header=BB7_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jae	.LBB7_68
# %bb.16:                               #   in Loop: Header=BB7_4 Depth=1
	cmpb	$10, (%rbx)
.LBB7_17:                               #   in Loop: Header=BB7_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_68
# %bb.18:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_3
	jmp	.LBB7_68
.LBB7_19:                               #   in Loop: Header=BB7_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rbx
	je	.LBB7_68
# %bb.20:                               #   in Loop: Header=BB7_4 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_3
.LBB7_21:                               #   in Loop: Header=BB7_4 Depth=1
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rbx
	je	.LBB7_68
# %bb.22:                               #   in Loop: Header=BB7_4 Depth=1
	andl	$134217727, %edi        # imm = 0x7FFFFFF
	shlq	$5, %rdi
	movq	(%rax,%rdi), %rcx
	movzbl	(%rbx), %esi
	movb	8(%rax,%rdi), %al
	andb	(%rcx,%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_8
	jmp	.LBB7_68
.LBB7_23:                               #   in Loop: Header=BB7_4 Depth=1
	movq	8(%rcx,%r14,8), %rax
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB7_24:                               #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	addq	%rax, %r14
	movq	(%rcx,%r14,8), %rax
	movl	%eax, %esi
	andl	$-134217728, %esi       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rsi
	jne	.LBB7_24
	jmp	.LBB7_3
.LBB7_25:                               #   in Loop: Header=BB7_4 Depth=1
	movq	32(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jne	.LBB7_27
# %bb.26:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$1, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_33
.LBB7_27:                               #   in Loop: Header=BB7_4 Depth=1
	cmpq	40(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_30
# %bb.28:                               #   in Loop: Header=BB7_4 Depth=1
	cmpb	$10, -1(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_30
# %bb.29:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_33
.LBB7_30:                               #   in Loop: Header=BB7_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jbe	.LBB7_68
# %bb.31:                               #   in Loop: Header=BB7_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	-1(%rbx), %ecx
	testb	$7, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_68
# %bb.32:                               #   in Loop: Header=BB7_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$95, %cl
	je	.LBB7_68
.LBB7_33:                               #   in Loop: Header=BB7_4 Depth=1
	cmpq	40(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_68
# %bb.34:                               #   in Loop: Header=BB7_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ecx
	jmp	.LBB7_35
.LBB7_37:                               #   in Loop: Header=BB7_4 Depth=1
	movq	40(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jne	.LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$2, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_44
.LBB7_39:                               #   in Loop: Header=BB7_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jae	.LBB7_71
# %bb.40:                               #   in Loop: Header=BB7_4 Depth=1
	cmpb	$10, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_42
# %bb.41:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$8, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_44
.LBB7_42:                               #   in Loop: Header=BB7_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movzbl	(%rbx), %ecx
	testb	$7, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_68
# %bb.43:                               #   in Loop: Header=BB7_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$95, %cl
	je	.LBB7_68
.LBB7_44:                               #   in Loop: Header=BB7_4 Depth=1
	cmpq	32(%r12), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB7_68
# %bb.45:                               #   in Loop: Header=BB7_4 Depth=1
	callq	__locale_ctype_ptr
	movzbl	-1(%rbx), %ecx
.LBB7_35:                               #   in Loop: Header=BB7_4 Depth=1
	testb	$7, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_2
# %bb.36:                               #   in Loop: Header=BB7_4 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB7_3
.LBB7_2:                                #   in Loop: Header=BB7_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$95, %cl
	movq	-56(%rbp), %rdx         # 8-byte Reload
	je	.LBB7_3
	jmp	.LBB7_68
.LBB7_46:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpq	%rdx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rbx, %rax
	jmp	.LBB7_47
.LBB7_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r14,8), %r8
	movl	%r8d, %eax
	andl	$-134217728, %eax       # imm = 0xF8000000
	addq	$-939524096, %rax       # imm = 0xC8000000
	shrq	$27, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rax
	ja	.LBB7_57
# %bb.49:
	leaq	1(%r14), %r15
	jmpq	*.LJTI7_1(,%rax,8)
.LBB7_50:
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	movq	16(%r12), %rsi
	movq	%r8, %rcx
	shlq	$4, %rcx
	movq	8(%rsi,%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB7_68
# %bb.51:
	movq	(%rsi,%rcx), %rsi
	subq	%rsi, %rax
	movq	%rdx, %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	ja	.LBB7_68
# %bb.52:
	movq	%r8, -64(%rbp)          # 8-byte Spill
	addq	24(%r12), %rsi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB7_68
# %bb.53:
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	(%r12), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	orq	$1073741824, %rcx       # imm = 0x40000000
	cmpq	%rcx, (%rax,%r14,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_56
# %bb.54:                               # %.preheader
	addq	$1, %r14
	movq	%r14, %r15
.LBB7_55:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, (%rax,%r15,8)
	leaq	1(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_55
.LBB7_56:
	addq	%rdx, %rbx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%r15, %rcx
	movq	%r13, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	jmp	.LBB7_74
.LBB7_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %eax
	jmp	.LBB7_47
.LBB7_58:
	movq	56(%r12), %rax
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%rbx, 8(%rax,%r9,8)
	addq	$1, %r9
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	movq	%r13, %r8
	jmp	.LBB7_74
.LBB7_59:
	movq	56(%r12), %rax
	movq	-48(%rbp), %r14         # 8-byte Reload
	cmpq	(%rax,%r14,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_72
# %bb.60:
	movq	%rbx, (%rax,%r14,8)
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	movq	%r15, %rcx
	subq	%r8, %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %r15
	movq	%r13, %r8
	movq	%r14, %r9
	callq	lbackref
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB7_63
# %bb.61:
	addq	$-1, %r14
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB7_73
.LBB7_62:
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	movq	%r13, %r8
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r14, %r9
	callq	lbackref
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB7_63
# %bb.75:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	andl	$134217727, %ecx        # imm = 0x7FFFFFF
	addq	%r15, %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB7_73
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
	movq	%r15, %rcx
	movq	%r8, %rbx
	movq	%r13, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	callq	lbackref
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB7_63
# %bb.65:
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
	movq	%r15, %rcx
	movq	%r8, %rbx
	movq	%r13, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	callq	lbackref
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB7_63
# %bb.67:
	movq	16(%r12), %rax
	movq	%r14, 8(%rax,%rbx)
	jmp	.LBB7_68
.LBB7_69:
	andl	$134217727, %r8d        # imm = 0x7FFFFFF
	addq	%r8, %r14
	addq	$-1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	movq	%r14, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	callq	lbackref
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_70
.LBB7_63:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_47
.LBB7_71:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_68:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB7_47:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_72:
	addq	$-1, %r14
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
.LBB7_73:
	movq	%r13, %r8
	movq	%r14, %r9
.LBB7_74:
	callq	lbackref
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_47
.LBB7_70:                               # %.preheader1
	movl	$2415919104, %eax       # imm = 0x90000000
	leaq	-134217728(%rax), %r15
	jmp	.LBB7_77
.LBB7_76:                               #   in Loop: Header=BB7_77 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%r13, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	callq	lbackref
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r14
	testq	%rax, %rax
	jne	.LBB7_63
.LBB7_77:                               # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rax
	movq	8(%rax), %rdx
	movq	(%rdx,%r14,8), %rax
	andl	$-134217728, %eax       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	movl	$2415919104, %ecx       # imm = 0x90000000
	cmpq	%rcx, %rax
	je	.LBB7_68
# %bb.78:                               #   in Loop: Header=BB7_77 Depth=1
	leaq	2(%r14), %rcx
	movq	8(%rdx,%r14,8), %rax
	andl	$134217727, %eax        # imm = 0x7FFFFFF
	leaq	(%rax,%r14), %r13
	addq	$1, %r13
	movq	(%rdx,%r13,8), %rdx
	andl	$-134217728, %edx       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rdx
	jne	.LBB7_76
# %bb.79:                               #   in Loop: Header=BB7_77 Depth=1
	addq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r13
	jmp	.LBB7_76
.Lfunc_end7:
	.size	lbackref, .Lfunc_end7-lbackref
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_6
	.quad	.LBB7_9
	.quad	.LBB7_13
	.quad	.LBB7_19
	.quad	.LBB7_21
	.quad	.LBB7_48
	.quad	.LBB7_48
	.quad	.LBB7_48
	.quad	.LBB7_48
	.quad	.LBB7_48
	.quad	.LBB7_3
	.quad	.LBB7_48
	.quad	.LBB7_48
	.quad	.LBB7_48
	.quad	.LBB7_23
	.quad	.LBB7_48
	.quad	.LBB7_48
	.quad	.LBB7_25
	.quad	.LBB7_37
.LJTI7_1:
	.quad	.LBB7_50
	.quad	.LBB7_57
	.quad	.LBB7_58
	.quad	.LBB7_59
	.quad	.LBB7_62
	.quad	.LBB7_57
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jne	.LBB8_1
.LBB8_27:
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
	movl	%r8d, %r14d
	orl	$2, %r14d
	movl	%r8d, %r11d
	orl	$1, %r11d
	movzbl	%r8b, %ebp
	movq	%rbp, (%rsp)            # 8-byte Spill
	movq	%rsi, %r15
	jmp	.LBB8_2
.LBB8_5:                                #   in Loop: Header=BB8_2 Depth=1
	movb	(%rcx,%rsi), %bl
	orb	%bl, 1(%rsi,%rax)
.LBB8_25:                               #   in Loop: Header=BB8_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB8_26:                               #   in Loop: Header=BB8_2 Depth=1
	addq	$1, %r15
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %r15
	je	.LBB8_27
.LBB8_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_20 Depth 2
	movq	8(%rdi), %r13
	movq	(%r13,%r15,8), %r12
	movl	%r12d, %ebx
	andl	$-134217728, %ebx       # imm = 0xF8000000
	addq	$-134217728, %rbx       # imm = 0xF8000000
	shrq	$27, %rbx
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rbx
	cmpq	$18, %rbx
	ja	.LBB8_26
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r8d, %ebx
	je	.LBB8_5
	jmp	.LBB8_26
.LBB8_6:                                #   in Loop: Header=BB8_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131, %r14d
	je	.LBB8_5
	jmp	.LBB8_26
.LBB8_7:                                #   in Loop: Header=BB8_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$131, %r11d
	je	.LBB8_5
	jmp	.LBB8_26
.LBB8_10:                               #   in Loop: Header=BB8_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$127, %r8d
	jle	.LBB8_5
	jmp	.LBB8_26
.LBB8_11:                               #   in Loop: Header=BB8_2 Depth=1
	movq	24(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$127, %r8d
	jg	.LBB8_26
# %bb.12:                               #   in Loop: Header=BB8_2 Depth=1
	andl	$134217727, %r12d       # imm = 0x7FFFFFF
	shlq	$5, %r12
	movq	(%rbx,%r12), %r9
	movb	8(%rbx,%r12), %bl
	movq	(%rsp), %rbp            # 8-byte Reload
	andb	(%r9,%rbp), %bl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_5
	jmp	.LBB8_26
.LBB8_13:                               #   in Loop: Header=BB8_2 Depth=1
	movb	(%rax,%rsi), %bl
	orb	%bl, 1(%rax,%rsi)
	andl	$134217727, %r12d       # imm = 0x7FFFFFF
	movq	%rsi, %rbp
	subq	%r12, %rbp
	movb	(%rax,%rbp), %r13b
	orb	%r13b, %bl
	movb	%bl, (%rax,%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testb	%r13b, %r13b
	jne	.LBB8_26
# %bb.14:                               #   in Loop: Header=BB8_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB8_26
# %bb.15:                               #   in Loop: Header=BB8_2 Depth=1
	notq	%r12
	addq	%r12, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rsi
	jmp	.LBB8_26
.LBB8_17:                               #   in Loop: Header=BB8_2 Depth=1
	movb	(%rax,%rsi), %r12b
	movl	$42, __A_VARIABLE(%rip)
	testb	%r12b, %r12b
	je	.LBB8_26
# %bb.18:                               #   in Loop: Header=BB8_2 Depth=1
	movl	%r11d, %r9d
	movl	%r14d, %r11d
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r13,%r15,8), %rbp
	movl	%ebp, %r14d
	andl	$-134217728, %r14d      # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r10d
	movl	$2415919104, %ebx       # imm = 0x90000000
	cmpq	%rbx, %r14
	movl	$2415919104, %r14d      # imm = 0x90000000
	je	.LBB8_21
# %bb.19:                               # %.preheader
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$1, %r10d
	.p2align	4, 0x90
.LBB8_20:                               #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andl	$134217727, %ebp        # imm = 0x7FFFFFF
	addq	%rbp, %r10
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r10,%r15), %rbp
	movq	(%r13,%rbp,8), %rbp
	movl	%ebp, %ebx
	andl	$-134217728, %ebx       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jne	.LBB8_20
.LBB8_21:                               #   in Loop: Header=BB8_2 Depth=1
	addq	%rsi, %r10
	orb	%r12b, (%rax,%r10)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r11d, %r14d
	movl	%r9d, %r11d
	jmp	.LBB8_26
.LBB8_22:                               #   in Loop: Header=BB8_2 Depth=1
	movb	(%rax,%rsi), %r10b
	orb	%r10b, 1(%rax,%rsi)
	movq	8(%rdi), %rbp
	andl	$134217727, %r12d       # imm = 0x7FFFFFF
	leaq	(%r12,%r15), %rbx
	movq	(%rbp,%rbx,8), %rbx
	andl	$-134217728, %ebx       # imm = 0xF8000000
	movl	$42, __A_VARIABLE(%rip)
	movl	$2415919104, %ebp       # imm = 0x90000000
	cmpq	%rbp, %rbx
	je	.LBB8_26
# %bb.23:                               #   in Loop: Header=BB8_2 Depth=1
	addq	%rsi, %r12
	orb	%r10b, (%rax,%r12)
	jmp	.LBB8_25
.LBB8_8:                                #   in Loop: Header=BB8_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$133, %r8d
	je	.LBB8_5
	jmp	.LBB8_26
.LBB8_9:                                #   in Loop: Header=BB8_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$134, %r8d
	je	.LBB8_5
	jmp	.LBB8_26
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
