	.text
	.file	"gdtoa-hexnan.c"
	.globl	__match                 # -- Begin function __match
	.p2align	4, 0x90
	.type	__match,@function
__match:                                # @__match
# %bb.0:
	movq	(%rdi), %rax
	addq	$1, %rax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movsbl	(%rsi), %r9d
	testl	%r9d, %r9d
	je	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %rsi
	movsbl	(%rax), %edx
	leal	-65(%rdx), %r8d
	leal	32(%rdx), %ecx
	cmpb	$26, %r8b
	cmovael	%edx, %ecx
	addq	$1, %rax
	cmpl	%r9d, %ecx
	je	.LBB0_1
# %bb.3:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_4:
	movq	%rax, (%rdi)
	movl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__match, .Lfunc_end0-__match
                                        # -- End function
	.globl	__hexnan                # -- Begin function __hexnan
	.p2align	4, 0x90
	.type	__hexnan,@function
__hexnan:                               # @__hexnan
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movl	(%rsi), %esi
	movl	%esi, %eax
	sarl	$5, %eax
	cltq
	leaq	(%rdx,%rax,4), %rcx
	andl	$31, %esi
	movl	%esi, 8(%rsp)           # 4-byte Spill
	leaq	4(%rdx,%rax,4), %rbp
	cmoveq	%rcx, %rbp
	leaq	-4(%rbp), %r13
	movl	$0, -4(%rbp)
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	(%rdi), %r12
	movq	%rbp, %rax
	notq	%rax
	xorl	%ebx, %ebx
	movq	$-1, %r11
	movq	%r13, 16(%rsp)          # 8-byte Spill
	xorl	%r8d, %r8d
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rbp, (%rsp)            # 8-byte Spill
	movq	%rax, 48(%rsp)          # 8-byte Spill
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_3 Depth 3
                                        #         Child Loop BB1_4 Depth 4
                                        #           Child Loop BB1_5 Depth 5
                                        #             Child Loop BB1_15 Depth 6
                                        #             Child Loop BB1_17 Depth 6
	leaq	(%rax,%r13), %rdi
	xorl	%esi, %esi
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	movq	%rdi, 24(%rsp)          # 8-byte Spill
.LBB1_2:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_3 Depth 3
                                        #         Child Loop BB1_4 Depth 4
                                        #           Child Loop BB1_5 Depth 5
                                        #             Child Loop BB1_15 Depth 6
                                        #             Child Loop BB1_17 Depth 6
	movl	%esi, %eax
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_4 Depth 4
                                        #           Child Loop BB1_5 Depth 5
                                        #             Child Loop BB1_15 Depth 6
                                        #             Child Loop BB1_17 Depth 6
	leaq	(,%r11,4), %r15
	addq	%rbp, %r15
	leaq	(,%r11,4), %rcx
	movq	%rdi, %r9
	subq	%rcx, %r9
	movq	%r9, 56(%rsp)           # 8-byte Spill
                                        # kill: def $r9d killed $r9d killed $r9 def $r9
	shrl	$2, %r9d
	addl	$1, %r9d
	andl	$3, %r9d
.LBB1_4:                                #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        #       Parent Loop BB1_3 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_5 Depth 5
                                        #             Child Loop BB1_15 Depth 6
                                        #             Child Loop BB1_17 Depth 6
	movl	%eax, %esi
	jmp	.LBB1_5
	.p2align	4, 0x90
.LBB1_18:                               #   in Loop: Header=BB1_5 Depth=5
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	12(%rsp), %ebx          # 4-byte Reload
.LBB1_19:                               #   in Loop: Header=BB1_5 Depth=5
	movl	$8, %esi
	cmpq	%rdx, %r15
	ja	.LBB1_20
.LBB1_5:                                #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        #       Parent Loop BB1_3 Depth=3
                                        #         Parent Loop BB1_4 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB1_15 Depth 6
                                        #             Child Loop BB1_17 Depth 6
	movzbl	1(%r12), %edi
	testq	%rdi, %rdi
	je	.LBB1_23
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=5
	movq	%r12, %rbp
	addq	$1, %r12
	movzbl	__hexdig(%rdi), %ecx
	testl	%ecx, %ecx
	jne	.LBB1_25
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=5
	cmpb	$32, %dil
	ja	.LBB1_21
# %bb.8:                                #   in Loop: Header=BB1_5 Depth=5
	cmpl	%r8d, %ebx
	jge	.LBB1_9
# %bb.10:                               #   in Loop: Header=BB1_5 Depth=5
	cmpq	%r13, %r15
	jae	.LBB1_19
# %bb.11:                               #   in Loop: Header=BB1_5 Depth=5
	cmpl	$7, %esi
	jg	.LBB1_19
# %bb.12:                               #   in Loop: Header=BB1_5 Depth=5
	movl	%r8d, %edx
	shll	$2, %esi
	movl	$32, %eax
	subl	%esi, %eax
	movl	(%r15), %ebp
	testq	%r9, %r9
	je	.LBB1_13
# %bb.14:                               # %.preheader12
                                        #   in Loop: Header=BB1_5 Depth=5
	movq	%r15, %r14
	movq	%r9, %r8
	.p2align	4, 0x90
.LBB1_15:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        #       Parent Loop BB1_3 Depth=3
                                        #         Parent Loop BB1_4 Depth=4
                                        #           Parent Loop BB1_5 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	4(%r14), %r10d
	movl	%r10d, %edi
	movl	%esi, %ecx
	shll	%cl, %edi
	orl	%ebp, %edi
	movl	%eax, %ecx
	shrl	%cl, %r10d
	movl	%edi, (%r14)
	movl	%r10d, 4(%r14)
	addq	$4, %r14
	movl	%r10d, %ebp
	addq	$-1, %r8
	jne	.LBB1_15
	jmp	.LBB1_16
.LBB1_13:                               #   in Loop: Header=BB1_5 Depth=5
	movl	%ebp, %r10d
	movq	%r15, %r14
.LBB1_16:                               #   in Loop: Header=BB1_5 Depth=5
	cmpq	$12, 56(%rsp)           # 8-byte Folded Reload
	movl	%edx, %r8d
	jb	.LBB1_18
	.p2align	4, 0x90
.LBB1_17:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        #       Parent Loop BB1_3 Depth=3
                                        #         Parent Loop BB1_4 Depth=4
                                        #           Parent Loop BB1_5 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	4(%r14), %ebp
	movl	%ebp, %edi
	movl	%esi, %ecx
	shll	%cl, %edi
	movl	%eax, %ecx
	shrl	%cl, %ebp
	movl	8(%r14), %ebx
	movl	%ebx, %edx
	movl	%esi, %ecx
	shll	%cl, %edx
	orl	%r10d, %edi
	movl	%edi, (%r14)
	orl	%ebp, %edx
	movl	%edx, 4(%r14)
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movl	12(%r14), %edx
	movl	%edx, %edi
	movl	%esi, %ecx
	shll	%cl, %edi
	orl	%ebx, %edi
	movl	%edi, 8(%r14)
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	16(%r14), %r10d
	movl	%r10d, %edi
	movl	%esi, %ecx
	shll	%cl, %edi
	orl	%edx, %edi
	movl	%eax, %ecx
	shrl	%cl, %r10d
	movl	%edi, 12(%r14)
	movl	%r10d, 16(%r14)
	addq	$16, %r14
	cmpq	%r13, %r14
	jb	.LBB1_17
	jmp	.LBB1_18
	.p2align	4, 0x90
.LBB1_25:                               #   in Loop: Header=BB1_4 Depth=4
	addl	$1, %r8d
	leal	1(%rsi), %eax
	cmpl	$8, %esi
	jl	.LBB1_28
# %bb.26:                               #   in Loop: Header=BB1_4 Depth=4
	cmpq	%rdx, %r15
	jbe	.LBB1_4
# %bb.27:                               #   in Loop: Header=BB1_3 Depth=3
	movq	(%rsp), %rax            # 8-byte Reload
	leaq	(%rax,%r11,4), %r15
	addq	$-4, %r15
	movl	$0, -4(%rax,%r11,4)
	addq	$-1, %r11
	movl	$1, %eax
	xorl	%esi, %esi
	jmp	.LBB1_29
.LBB1_28:                               #   in Loop: Header=BB1_3 Depth=3
	movl	(%r15), %esi
.LBB1_29:                               #   in Loop: Header=BB1_3 Depth=3
	shll	$4, %esi
	andl	$15, %ecx
	orl	%esi, %ecx
	movl	%ecx, (%r15)
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	24(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_2 Depth=2
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	24(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_20:                               #   in Loop: Header=BB1_1 Depth=1
	movq	(%rsp), %rbp            # 8-byte Reload
	leaq	-4(,%r11,4), %r13
	addq	%rbp, %r13
	movl	$0, -4(%rbp,%r11,4)
	addq	$-1, %r11
	movl	%r8d, %ebx
	movq	48(%rsp), %rax          # 8-byte Reload
	jmp	.LBB1_1
.LBB1_21:
	movl	$4, %eax
	cmpb	$41, %dil
	jne	.LBB1_64
# %bb.22:
	addq	$2, %rbp
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
.LBB1_23:
	testl	%r8d, %r8d
	je	.LBB1_24
# %bb.30:
	cmpq	%r13, %r15
	jae	.LBB1_39
# %bb.31:
	cmpl	$7, %esi
	jg	.LBB1_39
# %bb.32:
	shll	$2, %esi
	movl	$32, %r10d
	subl	%esi, %r10d
	movl	(%r15), %r14d
	leaq	4(%r15), %rax
	cmpq	%rax, %r13
	cmovaq	%r13, %rax
	movq	%r15, %r8
	notq	%r8
	addq	%rax, %r8
	movl	%r8d, %edi
	shrl	$2, %edi
	addl	$1, %edi
	andq	$3, %rdi
	je	.LBB1_33
# %bb.34:                               # %.preheader8
	movq	%r15, %rax
	.p2align	4, 0x90
.LBB1_35:                               # =>This Inner Loop Header: Depth=1
	movl	4(%rax), %ebp
	movl	%ebp, %edx
	movl	%esi, %ecx
	shll	%cl, %edx
	orl	%r14d, %edx
	movl	%r10d, %ecx
	shrl	%cl, %ebp
	movl	%edx, (%rax)
	movl	%ebp, 4(%rax)
	addq	$4, %rax
	movl	%ebp, %r14d
	addq	$-1, %rdi
	jne	.LBB1_35
# %bb.36:
	cmpq	$12, %r8
	jb	.LBB1_38
	.p2align	4, 0x90
.LBB1_37:                               # =>This Inner Loop Header: Depth=1
	movl	4(%rax), %r8d
	movl	%r8d, %edi
	movl	%esi, %ecx
	shll	%cl, %edi
	movl	%r10d, %ecx
	shrl	%cl, %r8d
	movl	8(%rax), %edx
	movl	%edx, %ebx
	movl	%esi, %ecx
	shll	%cl, %ebx
	orl	%ebp, %edi
	movl	%edi, (%rax)
	orl	%r8d, %ebx
	movl	%ebx, 4(%rax)
	movl	%r10d, %ecx
	shrl	%cl, %edx
	movl	12(%rax), %ebx
	movl	%ebx, %edi
	movl	%esi, %ecx
	shll	%cl, %edi
	orl	%edx, %edi
	movl	%edi, 8(%rax)
	movl	%r10d, %ecx
	shrl	%cl, %ebx
	movl	16(%rax), %ebp
	movl	%ebp, %edx
	movl	%esi, %ecx
	shll	%cl, %edx
	orl	%ebx, %edx
	movl	%r10d, %ecx
	shrl	%cl, %ebp
	movl	%edx, 12(%rax)
	movl	%ebp, 16(%rax)
	addq	$16, %rax
	cmpq	%r13, %rax
	jb	.LBB1_37
.LBB1_38:
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rsp), %rdx          # 8-byte Reload
.LBB1_39:
	cmpq	%rdx, %r15
	jbe	.LBB1_58
# %bb.40:
	cmpq	$-2, %r11
	movq	$-1, %r9
	cmovgq	%r11, %r9
	movq	$-1, %rdi
	subq	%r11, %r9
	addq	$1, %r9
	cmpq	$8, %r9
	movq	16(%rsp), %rbx          # 8-byte Reload
	jae	.LBB1_42
# %bb.41:
	movq	%rdx, %rcx
	movq	(%rsp), %r10            # 8-byte Reload
	jmp	.LBB1_54
.LBB1_24:
	movl	$4, %eax
	jmp	.LBB1_64
.LBB1_58:
	movl	8(%rsp), %ecx           # 4-byte Reload
	testl	%ecx, %ecx
	movq	16(%rsp), %rbx          # 8-byte Reload
	je	.LBB1_57
# %bb.59:
	movl	(%rbx), %esi
	negb	%cl
	shll	%cl, %esi
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %esi
	movl	%esi, (%rbx)
	jmp	.LBB1_60
.LBB1_42:
	cmpq	$-2, %r11
	cmovgq	%r11, %rdi
	movq	(%rsp), %r10            # 8-byte Reload
	leaq	(%r10,%r11,4), %rcx
	leaq	(%r10,%rdi,4), %rsi
	addq	$4, %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB1_45
# %bb.43:
	addq	$1, %rdi
	subq	%r11, %rdi
	leaq	(%rdx,%rdi,4), %rsi
	cmpq	%rsi, %rcx
	jae	.LBB1_45
# %bb.44:
	movq	%rdx, %rcx
	jmp	.LBB1_54
.LBB1_33:
	movl	%r14d, %ebp
	movq	%r15, %rax
	cmpq	$12, %r8
	jae	.LBB1_37
	jmp	.LBB1_38
.LBB1_45:
	movq	%r9, %r8
	andq	$-8, %r8
	leaq	-8(%r8), %rdi
	movq	%rdi, %rbp
	shrq	$3, %rbp
	addq	$1, %rbp
	movl	%ebp, %esi
	andl	$3, %esi
	cmpq	$24, %rdi
	jae	.LBB1_47
# %bb.46:
	xorl	%ebp, %ebp
	jmp	.LBB1_49
.LBB1_47:
	leaq	(%r10,%r11,4), %rax
	addq	$112, %rax
	movq	%rsi, %rdi
	subq	%rbp, %rdi
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB1_48:                               # =>This Inner Loop Header: Depth=1
	movups	-112(%rax,%rbp,4), %xmm0
	movups	-96(%rax,%rbp,4), %xmm1
	movups	%xmm0, (%rdx,%rbp,4)
	movups	%xmm1, 16(%rdx,%rbp,4)
	movups	-80(%rax,%rbp,4), %xmm0
	movups	-64(%rax,%rbp,4), %xmm1
	movups	%xmm0, 32(%rdx,%rbp,4)
	movups	%xmm1, 48(%rdx,%rbp,4)
	movups	-48(%rax,%rbp,4), %xmm0
	movups	-32(%rax,%rbp,4), %xmm1
	movups	%xmm0, 64(%rdx,%rbp,4)
	movups	%xmm1, 80(%rdx,%rbp,4)
	movups	-16(%rax,%rbp,4), %xmm0
	movups	(%rax,%rbp,4), %xmm1
	movups	%xmm0, 96(%rdx,%rbp,4)
	movups	%xmm1, 112(%rdx,%rbp,4)
	addq	$32, %rbp
	addq	$4, %rdi
	jne	.LBB1_48
.LBB1_49:
	testq	%rsi, %rsi
	je	.LBB1_52
# %bb.50:                               # %.preheader3
	leaq	16(,%rbp,4), %rdi
	negq	%rsi
	.p2align	4, 0x90
.LBB1_51:                               # =>This Inner Loop Header: Depth=1
	movups	-16(%rcx,%rdi), %xmm0
	movups	(%rcx,%rdi), %xmm1
	movups	%xmm0, -16(%rdx,%rdi)
	movups	%xmm1, (%rdx,%rdi)
	addq	$32, %rdi
	incq	%rsi
	jne	.LBB1_51
.LBB1_52:
	leaq	(%rdx,%r8,4), %rcx
	cmpq	%r8, %r9
	je	.LBB1_56
# %bb.53:
	addq	%r8, %r11
.LBB1_54:
	addq	$-1, %r11
	.p2align	4, 0x90
.LBB1_55:                               # =>This Inner Loop Header: Depth=1
	movl	4(%r10,%r11,4), %eax
	movl	%eax, (%rcx)
	addq	$4, %rcx
	addq	$1, %r11
	cmpq	$-1, %r11
	jl	.LBB1_55
	.p2align	4, 0x90
.LBB1_56:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rcx)
	addq	$4, %rcx
	cmpq	%rbx, %rcx
	jbe	.LBB1_56
.LBB1_57:
	movl	(%rbx), %esi
.LBB1_60:
	movl	$5, %eax
	testl	%esi, %esi
	jne	.LBB1_64
	jmp	.LBB1_61
	.p2align	4, 0x90
.LBB1_63:                               #   in Loop: Header=BB1_61 Depth=1
	cmpl	$0, -4(%rbx)
	leaq	-4(%rbx), %rbx
	jne	.LBB1_64
.LBB1_61:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, %rdx
	jne	.LBB1_63
# %bb.62:
	movl	$1, (%rdx)
.LBB1_64:
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__hexnan, .Lfunc_end1-__hexnan
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
