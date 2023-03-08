	.text
	.file	"strstr.c"
	.globl	strstr                  # -- Begin function strstr
	.p2align	4, 0x90
	.type	strstr,@function
strstr:                                 # @strstr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2120, %rsp             # imm = 0x848
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdi), %cl
	movl	$42, __A_VARIABLE(%rip)
	movsbl	(%rsi), %esi
	testl	%esi, %esi
	sete	%dil
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB0_5
# %bb.1:                                # %.preheader20
	leaq	1(%r12), %rdx
	movl	$1, %eax
	movl	%esi, %ebx
	movq	%r14, %r15
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	testb	$1, %dil
	jne	.LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%edi, %edi
	cmpb	%bl, %cl
	sete	%dil
	andl	%edi, %eax
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%r15), %ebx
	addq	$1, %r15
	testb	%bl, %bl
	sete	%dil
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB0_2
# %bb.4:
	testb	%dil, %dil
	je	.LBB0_6
	jmp	.LBB0_8
.LBB0_5:
	movl	$1, %eax
	movq	%r14, %r15
	testb	%dil, %dil
	jne	.LBB0_8
.LBB0_6:
	xorl	%r12d, %r12d
	jmp	.LBB0_49
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_49
# %bb.9:
	movq	%r15, %r13
	subq	%r14, %r13
	leaq	1(%r12), %rdi
	callq	strchr
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r13
	je	.LBB0_29
# %bb.10:
	testq	%rbx, %rbx
	je	.LBB0_29
# %bb.11:
	addq	%r13, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%r12, %rbx
	ja	.LBB0_13
# %bb.12:
	subq	%rbx, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
.LBB0_13:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$31, %r13
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	ja	.LBB0_30
# %bb.14:
	leaq	-2160(%rbp), %rdx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	critical_factorization
	movq	%rax, %rbx
	movq	-2160(%rbp), %r12
	leaq	(%r14,%r12), %rsi
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	je	.LBB0_35
# %bb.15:
	movq	%r13, %r15
	movq	-72(%rbp), %rax         # 8-byte Reload
	subq	%rax, %r15
	cmpq	%r15, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovaeq	%rax, %r15
	addq	$1, %r15
	movq	%r15, -2160(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	(%rbx,%r12), %rdi
	movq	%r13, %rdx
	subq	%r12, %rdx
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_48
# %bb.16:
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %r15         # 8-byte Reload
	leaq	(%r14,%r15), %rdi
	leaq	-1(%rbx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movq	%r13, %r9
	xorl	%ebx, %ebx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_23 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB0_48
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r13
	movq	%rbx, %rcx
	jbe	.LBB0_22
# %bb.19:                               # %.preheader6
                                        #   in Loop: Header=BB0_17 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx), %rdx
	addq	%r15, %rdx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_20:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%rax), %ebx
	cmpb	(%rdx,%rax), %bl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_26
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r15,%rax), %rsi
	addq	$1, %rsi
	addq	$1, %rax
	cmpq	%r13, %rsi
	jb	.LBB0_20
.LBB0_22:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	%rcx, %rax
	movq	%r15, %rsi
	movq	%r15, %rdx
	movq	-56(%rbp), %r8          # 8-byte Reload
	.p2align	4, 0x90
.LBB0_23:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %rdx
	jb	.LBB0_50
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=2
	movzbl	-1(%r14,%rsi), %ebx
	cmpb	(%rax,%rsi), %bl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rsi
	je	.LBB0_23
# %bb.25:                               #   in Loop: Header=BB0_17 Depth=1
	movq	%r8, %rax
	jmp	.LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
.LBB0_27:                               #   in Loop: Header=BB0_17 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rdx,%r9), %rdi
	movq	%rcx, %rbx
	leaq	(%rcx,%r13), %r15
	movq	%r15, %rdx
	subq	%r9, %rdx
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r9
	testq	%rax, %rax
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	je	.LBB0_17
	jmp	.LBB0_48
.LBB0_29:
	movq	%rbx, %r12
	jmp	.LBB0_49
.LBB0_30:
	leaq	-96(%rbp), %rdx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	critical_factorization
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_31:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, -2160(%rbp,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, -2152(%rbp,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, -2144(%rbp,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, -2136(%rbp,%rcx,8)
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$256, %rcx              # imm = 0x100
	jne	.LBB0_31
# %bb.32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB0_42
# %bb.33:
	movq	%r14, %r9
	notq	%r9
	movl	%r13d, %r8d
	andl	$1, %r8d
	addq	%r15, %r9
	jne	.LBB0_37
# %bb.34:
	xorl	%edx, %edx
	jmp	.LBB0_40
.LBB0_35:
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r12), %rdi
	movq	%r13, %rdx
	subq	%r12, %rdx
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_51
.LBB0_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB0_48
.LBB0_37:
	movq	%r15, %r10
	subq	%r14, %r10
	addq	$-2, %r10
	leaq	1(%r14), %rdi
	leaq	(%r14,%r8), %rbx
	subq	%r15, %rbx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_38:                               # =>This Inner Loop Header: Depth=1
	leaq	(%r9,%rdx), %rsi
	movzbl	-1(%rdi), %ecx
	movq	%rsi, -2160(%rbp,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r10,%rdx), %rsi
	movzbl	(%rdi), %ecx
	movq	%rsi, -2160(%rbp,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-2, %rdx
	addq	$2, %rdi
	cmpq	%rdx, %rbx
	jne	.LBB0_38
# %bb.39:                               # %.loopexit19
	negq	%rdx
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB0_40:
	testq	%r8, %r8
	je	.LBB0_42
# %bb.41:
	movq	%rdx, %rsi
	notq	%rsi
	addq	%r13, %rsi
	movzbl	(%r14,%rdx), %ecx
	movq	%rsi, -2160(%rbp,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_42:
	movq	%rbx, %r15
	movq	-96(%rbp), %r12
	leaq	(%r14,%r12), %rsi
	movq	%r14, %rdi
	movq	%rax, %rdx
	movq	%rax, %rbx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%rbx, %rax
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	je	.LBB0_45
# %bb.43:
	movq	%r13, %rax
	subq	%rbx, %rax
	cmpq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovaeq	%rbx, %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r12         # 8-byte Reload
	leaq	(%r15,%r12), %rdi
	movq	%r13, %rdx
	subq	%r12, %rdx
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_46
# %bb.44:
	leaq	-1(%r13), %r8
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %r9
	leaq	-1(%r15), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%r13, %r10
	jmp	.LBB0_89
.LBB0_45:
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	movq	-56(%rbp), %r12         # 8-byte Reload
	leaq	(%r15,%r12), %rdi
	movq	%r13, %rdx
	subq	%r12, %rdx
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_66
.LBB0_46:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB0_47:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_49:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$2120, %rsp             # imm = 0x848
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_50:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r12         # 8-byte Reload
	addq	%rcx, %r12
	jmp	.LBB0_48
.LBB0_51:
	movq	%r13, %rax
	subq	-64(%rbp), %rax         # 8-byte Folded Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$1, %eax
	subq	-72(%rbp), %rax         # 8-byte Folded Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$-1, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%ebx, %ebx
	movq	%r13, %rsi
	xorl	%r15d, %r15d
	jmp	.LBB0_54
.LBB0_52:                               #   in Loop: Header=BB0_54 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	-88(%rbp), %rax         # 8-byte Folded Reload
	xorl	%ebx, %ebx
.LBB0_53:                               #   in Loop: Header=BB0_54 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rsi), %rdi
	leaq	(%r15,%r13), %r12
	movq	%r12, %rdx
	subq	%rsi, %rdx
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rsi
	testq	%rax, %rax
	jne	.LBB0_36
.LBB0_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_57 Depth 2
                                        #     Child Loop BB0_61 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_36
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rbx, %rdi
	movq	%rdi, %rax
	cmovbq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jae	.LBB0_59
# %bb.56:                               # %.preheader2
                                        #   in Loop: Header=BB0_54 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15), %rdx
	.p2align	4, 0x90
.LBB0_57:                               #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rax), %ecx
	cmpb	(%rdx,%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_52
# %bb.58:                               #   in Loop: Header=BB0_57 Depth=2
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jb	.LBB0_57
.LBB0_59:                               #   in Loop: Header=BB0_54 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rdx
	cmpq	%rdi, %rbx
	movq	-64(%rbp), %r8          # 8-byte Reload
	jae	.LBB0_63
# %bb.60:                               # %.preheader
                                        #   in Loop: Header=BB0_54 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	%r15, %rax
	movq	%rdi, %rdx
	.p2align	4, 0x90
.LBB0_61:                               #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%r14,%rdx), %ecx
	cmpb	(%rax,%rdx), %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
# %bb.62:                               #   in Loop: Header=BB0_61 Depth=2
	addq	$-1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rbx
	jb	.LBB0_61
.LBB0_63:                               #   in Loop: Header=BB0_54 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_64:                               #   in Loop: Header=BB0_54 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %rax
	cmpq	%rbx, %rdx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jae	.LBB0_53
# %bb.65:
	movq	-48(%rbp), %r12         # 8-byte Reload
	addq	%r15, %r12
	jmp	.LBB0_47
.LBB0_66:
	leaq	-1(%r13), %rdi
	movq	%r13, %rax
	subq	-64(%rbp), %rax         # 8-byte Folded Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$1, %eax
	subq	-72(%rbp), %rax         # 8-byte Folded Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	leaq	-1(%rbx), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movq	%r13, %rcx
	xorl	%r15d, %r15d
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jmp	.LBB0_69
.LBB0_67:                               #   in Loop: Header=BB0_69 Depth=1
	xorl	%r12d, %r12d
.LBB0_68:                               #   in Loop: Header=BB0_69 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r15
	leaq	(%rbx,%rcx), %rdi
	leaq	(%r15,%r13), %rbx
	movq	%rbx, %rdx
	subq	%rcx, %rdx
	xorl	%esi, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rcx
	movq	-48(%rbp), %rbx         # 8-byte Reload
	testq	%rax, %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jne	.LBB0_46
.LBB0_69:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_76 Depth 2
                                        #     Child Loop BB0_80 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_46
# %bb.70:                               #   in Loop: Header=BB0_69 Depth=1
	movzbl	-1(%rcx,%rbx), %eax
	movq	-2160(%rbp,%rax,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_74
# %bb.71:                               #   in Loop: Header=BB0_69 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_67
# %bb.72:                               #   in Loop: Header=BB0_69 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-64(%rbp), %rax         # 8-byte Folded Reload
	jae	.LBB0_67
# %bb.73:                               #   in Loop: Header=BB0_69 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_67
.LBB0_74:                               #   in Loop: Header=BB0_69 Depth=1
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%r12, %rsi
	movq	%rsi, %rax
	cmovbq	%r12, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rax
	jae	.LBB0_78
# %bb.75:                               # %.preheader12
                                        #   in Loop: Header=BB0_69 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	addq	%r15, %rdx
	.p2align	4, 0x90
.LBB0_76:                               #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rax), %ebx
	cmpb	(%rdx,%rax), %bl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_84
# %bb.77:                               #   in Loop: Header=BB0_76 Depth=2
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rax
	jb	.LBB0_76
.LBB0_78:                               #   in Loop: Header=BB0_69 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdx
	cmpq	%rsi, %r12
	jae	.LBB0_82
# %bb.79:                               # %.preheader9
                                        #   in Loop: Header=BB0_69 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	%r15, %rax
	movq	%rsi, %rdx
	.p2align	4, 0x90
.LBB0_80:                               #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%r14,%rdx), %ebx
	cmpb	(%rax,%rdx), %bl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_83
# %bb.81:                               #   in Loop: Header=BB0_80 Depth=2
	addq	$-1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %r12
	jb	.LBB0_80
.LBB0_82:                               #   in Loop: Header=BB0_69 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB0_83:                               #   in Loop: Header=BB0_69 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rdx
	movq	-80(%rbp), %r12         # 8-byte Reload
	jae	.LBB0_85
	jmp	.LBB0_100
.LBB0_84:                               #   in Loop: Header=BB0_69 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	-104(%rbp), %rax        # 8-byte Folded Reload
	xorl	%r12d, %r12d
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB0_85:                               #   in Loop: Header=BB0_69 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_68
.LBB0_86:                               #   in Loop: Header=BB0_89 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
.LBB0_87:                               #   in Loop: Header=BB0_89 Depth=1
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_88:                               #   in Loop: Header=BB0_89 Depth=1
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	leaq	(%r15,%r10), %rdi
	leaq	(%rcx,%r13), %r12
	movq	%r12, %rdx
	subq	%r10, %rdx
	xorl	%esi, %esi
	movq	%r8, %rbx
	movq	%r9, %r15
	callq	memchr
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%r15, %r9
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	%rbx, %r8
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r10
	testq	%rax, %rax
	jne	.LBB0_46
.LBB0_89:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_93 Depth 2
                                        #     Child Loop BB0_96 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, %r10
	je	.LBB0_46
# %bb.90:                               #   in Loop: Header=BB0_89 Depth=1
	movzbl	-1(%r10,%r15), %eax
	movq	-2160(%rbp,%rax,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_88
# %bb.91:                               #   in Loop: Header=BB0_89 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%r8, %rdi
	jae	.LBB0_95
# %bb.92:                               # %.preheader16
                                        #   in Loop: Header=BB0_89 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx), %rdx
	addq	%rdi, %rdx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_93:                               #   Parent Loop BB0_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r9,%rax), %ebx
	cmpb	(%rdx,%rax), %bl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_86
# %bb.94:                               #   in Loop: Header=BB0_93 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rdi,%rax), %rsi
	addq	$1, %rsi
	addq	$1, %rax
	cmpq	%r8, %rsi
	jb	.LBB0_93
.LBB0_95:                               #   in Loop: Header=BB0_89 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	%rcx, %rax
	movq	%rdi, %rsi
	movq	%rdi, %rdx
	.p2align	4, 0x90
.LBB0_96:                               #   Parent Loop BB0_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %rdx
	jb	.LBB0_99
# %bb.97:                               #   in Loop: Header=BB0_96 Depth=2
	movzbl	-1(%r14,%rsi), %ebx
	cmpb	(%rax,%rsi), %bl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rsi
	je	.LBB0_96
# %bb.98:                               #   in Loop: Header=BB0_89 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_87
.LBB0_99:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r12         # 8-byte Reload
	addq	%rcx, %r12
	jmp	.LBB0_47
.LBB0_100:
	addq	%r15, %rbx
	movq	%rbx, %r12
	jmp	.LBB0_47
.Lfunc_end0:
	.size	strstr, .Lfunc_end0-strstr
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function critical_factorization
	.type	critical_factorization,@function
critical_factorization:                 # @critical_factorization
# %bb.0:
	pushq	%rbp
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rsi
	jb	.LBB1_10
# %bb.1:                                # %.preheader1
	movq	$-1, %rax
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	$1, %r8d
	movl	$1, %r9d
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	movq	%rcx, %r8
	subq	%rax, %r8
	movl	$1, %r9d
.LBB1_3:                                #   in Loop: Header=BB1_4 Depth=1
	movq	%rcx, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%r9, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	jae	.LBB1_11
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	leaq	(%r9,%rax), %rbp
	movzbl	(%rdi,%rbp), %ebx
	cmpb	%bl, (%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB1_2
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_8
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %r9
	jne	.LBB1_9
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	addq	%r8, %r10
	movl	$1, %r9d
	movq	%r10, %rcx
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$1, %r9d
	movq	%r10, %rax
	leaq	1(%r10), %rcx
	movl	$1, %r8d
	jmp	.LBB1_3
.LBB1_9:                                #   in Loop: Header=BB1_4 Depth=1
	addq	$1, %r9
	movq	%r10, %rcx
	jmp	.LBB1_3
.LBB1_10:
	movq	$1, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r9d
	movq	$-1, %rax
	jmp	.LBB1_22
.LBB1_11:
	movq	%r8, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rsi
	jb	.LBB1_21
# %bb.12:                               # %.preheader
	movq	$-1, %r8
	movl	$1, %ecx
	xorl	%r11d, %r11d
	movl	$1, %r9d
	movl	$1, %r10d
	jmp	.LBB1_15
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_15 Depth=1
	movq	%rcx, %r9
	subq	%r8, %r9
	movl	$1, %r10d
.LBB1_14:                               #   in Loop: Header=BB1_15 Depth=1
	movq	%rcx, %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%r10, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rcx
	jae	.LBB1_23
.LBB1_15:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rcx), %ebp
	leaq	(%r10,%r8), %rbx
	movzbl	(%rdi,%rbx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%bpl, %bl
	jb	.LBB1_13
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%bl, %bpl
	jne	.LBB1_19
# %bb.17:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r10
	jne	.LBB1_20
# %bb.18:                               #   in Loop: Header=BB1_15 Depth=1
	addq	%r9, %r11
	movl	$1, %r10d
	movq	%r11, %rcx
	jmp	.LBB1_14
	.p2align	4, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_15 Depth=1
	movl	$1, %r10d
	movq	%r11, %r8
	leaq	1(%r11), %rcx
	movl	$1, %r9d
	jmp	.LBB1_14
.LBB1_20:                               #   in Loop: Header=BB1_15 Depth=1
	addq	$1, %r10
	movq	%r11, %rcx
	jmp	.LBB1_14
.LBB1_21:
	movl	$1, %r9d
.LBB1_22:
	movq	$-1, %r8
.LBB1_23:
	addq	$1, %r8
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r8
	jb	.LBB1_25
# %bb.24:
	movq	%r9, (%rdx)
	movq	%r8, %rax
.LBB1_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	critical_factorization, .Lfunc_end1-critical_factorization
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
