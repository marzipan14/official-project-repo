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
	retq
.LBB0_4:
	movq	%rax, (%rdi)
	movl	$1, %eax
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
	subq	$72, %rsp
	movl	(%rsi), %esi
	movl	%esi, %eax
	sarl	$5, %eax
	cltq
	leaq	(%rdx,%rax,4), %rcx
	andl	$31, %esi
	movl	%esi, 28(%rsp)          # 4-byte Spill
	leaq	4(%rdx,%rax,4), %rbp
	cmoveq	%rcx, %rbp
	leaq	-4(%rbp), %r13
	movl	$0, -4(%rbp)
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	(%rdi), %r12
	movq	%rbp, %rax
	notq	%rax
	movl	$0, 24(%rsp)            # 4-byte Folded Spill
	movq	$-1, %rdi
	movq	%r13, 32(%rsp)          # 8-byte Spill
	xorl	%r8d, %r8d
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rbp, (%rsp)            # 8-byte Spill
	movq	%rax, 56(%rsp)          # 8-byte Spill
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_3 Depth 3
                                        #         Child Loop BB1_4 Depth 4
                                        #           Child Loop BB1_5 Depth 5
                                        #             Child Loop BB1_15 Depth 6
                                        #             Child Loop BB1_17 Depth 6
	leaq	(%rax,%r13), %rsi
	xorl	%r15d, %r15d
	movq	%rsi, 40(%rsp)          # 8-byte Spill
.LBB1_2:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_3 Depth 3
                                        #         Child Loop BB1_4 Depth 4
                                        #           Child Loop BB1_5 Depth 5
                                        #             Child Loop BB1_15 Depth 6
                                        #             Child Loop BB1_17 Depth 6
	movl	%r15d, %eax
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_4 Depth 4
                                        #           Child Loop BB1_5 Depth 5
                                        #             Child Loop BB1_15 Depth 6
                                        #             Child Loop BB1_17 Depth 6
	leaq	(,%rdi,4), %r11
	addq	%rbp, %r11
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	leaq	(,%rdi,4), %rcx
	movq	%rsi, %r9
	subq	%rcx, %r9
	movq	%r9, 64(%rsp)           # 8-byte Spill
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
	movl	%eax, %r15d
	jmp	.LBB1_5
	.p2align	4, 0x90
.LBB1_18:                               #   in Loop: Header=BB1_5 Depth=5
	movl	$8, %r15d
	cmpq	%rdx, %r11
	ja	.LBB1_19
.LBB1_5:                                #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        #       Parent Loop BB1_3 Depth=3
                                        #         Parent Loop BB1_4 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB1_15 Depth 6
                                        #             Child Loop BB1_17 Depth 6
	movzbl	1(%r12), %edi
	testq	%rdi, %rdi
	je	.LBB1_22
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=5
	movq	%r12, %rbp
	addq	$1, %r12
	movzbl	__hexdig(%rdi), %ecx
	testl	%ecx, %ecx
	jne	.LBB1_24
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=5
	cmpb	$32, %dil
	ja	.LBB1_20
# %bb.8:                                #   in Loop: Header=BB1_5 Depth=5
	cmpl	%r8d, 24(%rsp)          # 4-byte Folded Reload
	jge	.LBB1_9
# %bb.10:                               #   in Loop: Header=BB1_5 Depth=5
	cmpq	%r13, %r11
	jae	.LBB1_18
# %bb.11:                               #   in Loop: Header=BB1_5 Depth=5
	cmpl	$7, %r15d
	jg	.LBB1_18
# %bb.12:                               #   in Loop: Header=BB1_5 Depth=5
	movl	%r8d, %esi
	shll	$2, %r15d
	movl	$32, %eax
	subl	%r15d, %eax
	movl	(%r11), %ebp
	testq	%r9, %r9
	je	.LBB1_13
# %bb.14:                               # %.preheader12
                                        #   in Loop: Header=BB1_5 Depth=5
	movq	%r11, %r14
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
	movl	%r15d, %ecx
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
	movq	%r11, %r14
.LBB1_16:                               #   in Loop: Header=BB1_5 Depth=5
	cmpq	$12, 64(%rsp)           # 8-byte Folded Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	%esi, %r8d
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
	movl	%r15d, %ecx
	shll	%cl, %edi
	movl	%eax, %ecx
	shrl	%cl, %ebp
	movl	8(%r14), %esi
	movl	%esi, %ebx
	movl	%r15d, %ecx
	shll	%cl, %ebx
	orl	%r10d, %edi
	movl	%edi, (%r14)
	orl	%ebp, %ebx
	movl	%ebx, 4(%r14)
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	12(%r14), %ebp
	movl	%ebp, %edi
	movl	%r15d, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 8(%r14)
	movl	%eax, %ecx
	shrl	%cl, %ebp
	movl	16(%r14), %r10d
	movl	%r10d, %edi
	movl	%r15d, %ecx
	shll	%cl, %edi
	orl	%ebp, %edi
	movl	%eax, %ecx
	shrl	%cl, %r10d
	movl	%edi, 12(%r14)
	movl	%r10d, 16(%r14)
	addq	$16, %r14
	cmpq	%r13, %r14
	jb	.LBB1_17
	jmp	.LBB1_18
	.p2align	4, 0x90
.LBB1_24:                               #   in Loop: Header=BB1_4 Depth=4
	addl	$1, %r8d
	leal	1(%r15), %eax
	cmpl	$8, %r15d
	jl	.LBB1_27
# %bb.25:                               #   in Loop: Header=BB1_4 Depth=4
	cmpq	%rdx, %r11
	jbe	.LBB1_4
# %bb.26:                               #   in Loop: Header=BB1_3 Depth=3
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	8(%rsp), %rdi           # 8-byte Reload
	leaq	-4(,%rdi,4), %r11
	addq	%rbp, %r11
	movl	$0, -4(%rbp,%rdi,4)
	addq	$-1, %rdi
	movl	$1, %eax
	xorl	%esi, %esi
	jmp	.LBB1_28
.LBB1_27:                               #   in Loop: Header=BB1_3 Depth=3
	movl	(%r11), %esi
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	8(%rsp), %rdi           # 8-byte Reload
.LBB1_28:                               #   in Loop: Header=BB1_3 Depth=3
	shll	$4, %esi
	andl	$15, %ecx
	orl	%esi, %ecx
	movl	%ecx, (%r11)
	movq	40(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_2 Depth=2
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_1 Depth=1
	movq	(%rsp), %rbp            # 8-byte Reload
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	-4(,%rax,4), %r13
	addq	%rbp, %r13
	movl	$0, -4(%rbp,%rax,4)
	leaq	-1(%rax), %rdi
	movl	%r8d, 24(%rsp)          # 4-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	jmp	.LBB1_1
.LBB1_20:
	movl	$4, %eax
	cmpb	$41, %dil
	jne	.LBB1_62
# %bb.21:
	addq	$2, %rbp
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
.LBB1_22:
	testl	%r8d, %r8d
	je	.LBB1_23
# %bb.29:
	cmpq	%r13, %r11
	movq	8(%rsp), %rsi           # 8-byte Reload
	jae	.LBB1_37
# %bb.30:
	cmpl	$7, %r15d
	jg	.LBB1_37
# %bb.31:
	shll	$2, %r15d
	movl	$32, %r10d
	subl	%r15d, %r10d
	movl	(%r11), %r14d
	leaq	4(%r11), %rax
	cmpq	%rax, %r13
	cmovaq	%r13, %rax
	movq	%r11, %r8
	notq	%r8
	addq	%rax, %r8
	movl	%r8d, %edi
	shrl	$2, %edi
	addl	$1, %edi
	andq	$3, %rdi
	je	.LBB1_32
# %bb.33:                               # %.preheader8
	movq	%r11, %rax
	.p2align	4, 0x90
.LBB1_34:                               # =>This Inner Loop Header: Depth=1
	movl	4(%rax), %ebp
	movl	%ebp, %edx
	movl	%r15d, %ecx
	shll	%cl, %edx
	orl	%r14d, %edx
	movl	%r10d, %ecx
	shrl	%cl, %ebp
	movl	%edx, (%rax)
	movl	%ebp, 4(%rax)
	addq	$4, %rax
	movl	%ebp, %r14d
	addq	$-1, %rdi
	jne	.LBB1_34
# %bb.35:
	cmpq	$12, %r8
	jb	.LBB1_37
	.p2align	4, 0x90
.LBB1_36:                               # =>This Inner Loop Header: Depth=1
	movl	4(%rax), %r8d
	movl	%r8d, %edi
	movl	%r15d, %ecx
	shll	%cl, %edi
	movl	%r10d, %ecx
	shrl	%cl, %r8d
	movl	8(%rax), %edx
	movl	%edx, %ebx
	movl	%r15d, %ecx
	shll	%cl, %ebx
	orl	%ebp, %edi
	movl	%edi, (%rax)
	orl	%r8d, %ebx
	movl	%ebx, 4(%rax)
	movl	%r10d, %ecx
	shrl	%cl, %edx
	movl	12(%rax), %ebx
	movl	%ebx, %edi
	movl	%r15d, %ecx
	shll	%cl, %edi
	orl	%edx, %edi
	movl	%edi, 8(%rax)
	movl	%r10d, %ecx
	shrl	%cl, %ebx
	movl	16(%rax), %ebp
	movl	%ebp, %edx
	movl	%r15d, %ecx
	shll	%cl, %edx
	orl	%ebx, %edx
	movl	%r10d, %ecx
	shrl	%cl, %ebp
	movl	%edx, 12(%rax)
	movl	%ebp, 16(%rax)
	addq	$16, %rax
	cmpq	%r13, %rax
	jb	.LBB1_36
.LBB1_37:
	movq	16(%rsp), %rbp          # 8-byte Reload
	cmpq	%rbp, %r11
	jbe	.LBB1_56
# %bb.38:
	cmpq	$-2, %rsi
	movq	%rsi, %rbx
	movq	$-1, %r9
	cmovgq	%rsi, %r9
	movq	$-1, %rdx
	subq	%rsi, %r9
	addq	$1, %r9
	cmpq	$8, %r9
	movq	32(%rsp), %rdi          # 8-byte Reload
	jb	.LBB1_39
# %bb.40:
	cmpq	$-2, %rbx
	cmovgq	%rbx, %rdx
	movq	(%rsp), %rax            # 8-byte Reload
	leaq	(%rax,%rbx,4), %r10
	leaq	(%rax,%rdx,4), %rsi
	addq	$4, %rsi
	cmpq	%rbp, %rsi
	jbe	.LBB1_42
# %bb.41:
	addq	$1, %rdx
	subq	%rbx, %rdx
	leaq	(,%rdx,4), %rdx
	addq	%rbp, %rdx
	cmpq	%rdx, %r10
	jae	.LBB1_42
.LBB1_39:
	movq	%rbp, %rcx
.LBB1_52:
	movq	(%rsp), %rdx            # 8-byte Reload
	addq	$-1, %rbx
	.p2align	4, 0x90
.LBB1_53:                               # =>This Inner Loop Header: Depth=1
	movl	4(%rdx,%rbx,4), %eax
	movl	%eax, (%rcx)
	addq	$4, %rcx
	addq	$1, %rbx
	cmpq	$-1, %rbx
	jl	.LBB1_53
	.p2align	4, 0x90
.LBB1_54:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rcx)
	addq	$4, %rcx
	cmpq	%rdi, %rcx
	jbe	.LBB1_54
	jmp	.LBB1_55
.LBB1_23:
	movl	$4, %eax
	jmp	.LBB1_62
.LBB1_56:
	movl	28(%rsp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	movq	32(%rsp), %rdi          # 8-byte Reload
	je	.LBB1_55
# %bb.57:
	movl	(%rdi), %edx
	negb	%cl
	shll	%cl, %edx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	movl	%edx, (%rdi)
	jmp	.LBB1_58
.LBB1_55:
	movl	(%rdi), %edx
.LBB1_58:
	movl	$5, %eax
	testl	%edx, %edx
	jne	.LBB1_62
	jmp	.LBB1_59
	.p2align	4, 0x90
.LBB1_61:                               #   in Loop: Header=BB1_59 Depth=1
	cmpl	$0, -4(%rdi)
	leaq	-4(%rdi), %rdi
	jne	.LBB1_62
.LBB1_59:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rbp
	jne	.LBB1_61
# %bb.60:
	movl	$1, (%rbp)
.LBB1_62:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_32:
	movl	%r14d, %ebp
	movq	%r11, %rax
	cmpq	$12, %r8
	jae	.LBB1_36
	jmp	.LBB1_37
.LBB1_42:
	movq	%r9, %r8
	andq	$-8, %r8
	leaq	-8(%r8), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	addq	$1, %rdx
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpq	$24, %rax
	jae	.LBB1_44
# %bb.43:
	xorl	%ebp, %ebp
	movq	16(%rsp), %rax          # 8-byte Reload
	jmp	.LBB1_46
.LBB1_44:
	movq	(%rsp), %rax            # 8-byte Reload
	movq	8(%rsp), %rsi           # 8-byte Reload
	leaq	(%rax,%rsi,4), %rbx
	addq	$112, %rbx
	movq	%rcx, %rsi
	subq	%rdx, %rsi
	xorl	%ebp, %ebp
	movq	16(%rsp), %rax          # 8-byte Reload
	.p2align	4, 0x90
.LBB1_45:                               # =>This Inner Loop Header: Depth=1
	movups	-112(%rbx,%rbp,4), %xmm0
	movups	-96(%rbx,%rbp,4), %xmm1
	movups	%xmm0, (%rax,%rbp,4)
	movups	%xmm1, 16(%rax,%rbp,4)
	movups	-80(%rbx,%rbp,4), %xmm0
	movups	-64(%rbx,%rbp,4), %xmm1
	movups	%xmm0, 32(%rax,%rbp,4)
	movups	%xmm1, 48(%rax,%rbp,4)
	movups	-48(%rbx,%rbp,4), %xmm0
	movups	-32(%rbx,%rbp,4), %xmm1
	movups	%xmm0, 64(%rax,%rbp,4)
	movups	%xmm1, 80(%rax,%rbp,4)
	movups	-16(%rbx,%rbp,4), %xmm0
	movups	(%rbx,%rbp,4), %xmm1
	movups	%xmm0, 96(%rax,%rbp,4)
	movups	%xmm1, 112(%rax,%rbp,4)
	addq	$32, %rbp
	addq	$4, %rsi
	jne	.LBB1_45
.LBB1_46:
	testq	%rcx, %rcx
	je	.LBB1_49
# %bb.47:                               # %.preheader3
	leaq	16(,%rbp,4), %rdx
	negq	%rcx
	.p2align	4, 0x90
.LBB1_48:                               # =>This Inner Loop Header: Depth=1
	movups	-16(%r10,%rdx), %xmm0
	movups	(%r10,%rdx), %xmm1
	movups	%xmm0, -16(%rax,%rdx)
	movups	%xmm1, (%rax,%rdx)
	addq	$32, %rdx
	incq	%rcx
	jne	.LBB1_48
.LBB1_49:
	leaq	(%rax,%r8,4), %rcx
	cmpq	%r8, %r9
	jne	.LBB1_51
# %bb.50:
	movq	16(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB1_54
.LBB1_51:
	movq	8(%rsp), %rbx           # 8-byte Reload
	addq	%r8, %rbx
	movq	16(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB1_52
.Lfunc_end1:
	.size	__hexnan, .Lfunc_end1-__hexnan
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
