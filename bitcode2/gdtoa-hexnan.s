	.text
	.file	"gdtoa-hexnan.c"
	.globl	__match                 # -- Begin function __match
	.p2align	4, 0x90
	.type	__match,@function
__match:                                # @__match
# %bb.0:
	movq	(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rax
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %rsi
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %edx
	jne	.LBB0_5
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movsbl	(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	(%rax), %edx
	leal	-65(%rdx), %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$25, %r8b
	ja	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	addl	$32, %edx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_4
.LBB0_5:
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_6:
	movq	%rax, (%rdi)
	movl	$1, %eax
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$56, %rsp
	movl	(%rsi), %esi
	movl	%esi, %eax
	sarl	$5, %eax
	cltq
	leaq	(%rdx,%rax,4), %rcx
	movl	$42, __A_VARIABLE(%rip)
	andl	$31, %esi
	movl	%esi, 8(%rsp)           # 4-byte Spill
	je	.LBB1_2
# %bb.1:
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB1_2:
	leaq	-4(%rcx), %r13
	movl	$0, -4(%rcx)
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	(%rdi), %rdi
	movq	%rcx, %rax
	notq	%rax
	xorl	%r14d, %r14d
	movq	$-1, %r11
	movq	%r13, %r9
	xorl	%r12d, %r12d
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	%rax, 32(%rsp)          # 8-byte Spill
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #       Child Loop BB1_5 Depth 3
                                        #         Child Loop BB1_6 Depth 4
                                        #           Child Loop BB1_9 Depth 5
                                        #             Child Loop BB1_19 Depth 6
	leaq	(%r9,%rax), %r8
	xorl	%esi, %esi
	movl	%r14d, 12(%rsp)         # 4-byte Spill
	movq	%r8, 16(%rsp)           # 8-byte Spill
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_5 Depth 3
                                        #         Child Loop BB1_6 Depth 4
                                        #           Child Loop BB1_9 Depth 5
                                        #             Child Loop BB1_19 Depth 6
	movl	%esi, %eax
.LBB1_5:                                #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_6 Depth 4
                                        #           Child Loop BB1_9 Depth 5
                                        #             Child Loop BB1_19 Depth 6
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rsi
	leaq	(%rcx,%r11,4), %r10
	leaq	(,%r11,4), %rcx
	subq	%rcx, %r8
	leaq	(%rsi,%r11,4), %rcx
	addq	$4, %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
.LBB1_6:                                #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        #       Parent Loop BB1_5 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_9 Depth 5
                                        #             Child Loop BB1_19 Depth 6
	movb	1(%rdi), %bl
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB1_7
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=4
	leaq	1(%rdi), %rcx
	movl	%eax, %esi
	movq	%rdi, %rbp
	.p2align	4, 0x90
.LBB1_9:                                #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        #       Parent Loop BB1_5 Depth=3
                                        #         Parent Loop BB1_6 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB1_19 Depth 6
	movq	%rcx, %rdi
	movzbl	%bl, %eax
	movzbl	__hexdig(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB1_28
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=5
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$32, %bl
	ja	.LBB1_24
# %bb.11:                               #   in Loop: Header=BB1_9 Depth=5
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %r14d
	jge	.LBB1_12
# %bb.13:                               #   in Loop: Header=BB1_9 Depth=5
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r10
	jae	.LBB1_21
# %bb.14:                               #   in Loop: Header=BB1_9 Depth=5
	cmpl	$7, %esi
	jg	.LBB1_21
# %bb.15:                               #   in Loop: Header=BB1_9 Depth=5
	shll	$2, %esi
	movl	$32, %eax
	subl	%esi, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r10), %r15d
	testb	$4, %r8b
	jne	.LBB1_16
# %bb.17:                               #   in Loop: Header=BB1_9 Depth=5
	movl	4(%r10), %ebx
	movl	%ebx, %ebp
	movl	%esi, %ecx
	shll	%cl, %ebp
	movl	%eax, %ecx
	shrl	%cl, %ebx
	orl	%r15d, %ebp
	movl	%ebp, (%r10)
	movl	%ebx, 4(%r10)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %r15d
	movq	40(%rsp), %r14          # 8-byte Reload
	cmpq	$4, %r8
	jae	.LBB1_19
	jmp	.LBB1_20
	.p2align	4, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_9 Depth=5
	movq	%r10, %r14
	cmpq	$4, %r8
	jb	.LBB1_20
	.p2align	4, 0x90
.LBB1_19:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_4 Depth=2
                                        #       Parent Loop BB1_5 Depth=3
                                        #         Parent Loop BB1_6 Depth=4
                                        #           Parent Loop BB1_9 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	4(%r14), %ebx
	movl	%ebx, %ebp
	movl	%esi, %ecx
	shll	%cl, %ebp
	orl	%r15d, %ebp
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movl	%ebp, (%r14)
	movl	%ebx, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r14), %r15d
	movl	%r15d, %ebp
	movl	%esi, %ecx
	shll	%cl, %ebp
	orl	%ebx, %ebp
	movl	%ebp, 4(%r14)
	movl	%eax, %ecx
	shrl	%cl, %r15d
	movl	%r15d, 8(%r14)
	addq	$8, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r14
	jb	.LBB1_19
.LBB1_20:                               #   in Loop: Header=BB1_9 Depth=5
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	12(%rsp), %r14d         # 4-byte Reload
.LBB1_21:                               #   in Loop: Header=BB1_9 Depth=5
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %r10
	ja	.LBB1_23
# %bb.22:                               #   in Loop: Header=BB1_9 Depth=5
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%rdi), %rcx
	movb	1(%rdi), %bl
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %esi
	movq	%rdi, %rbp
	testb	%bl, %bl
	jne	.LBB1_9
	jmp	.LBB1_26
	.p2align	4, 0x90
.LBB1_28:                               #   in Loop: Header=BB1_6 Depth=4
	addl	$1, %r12d
	leal	1(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %esi
	jl	.LBB1_31
# %bb.29:                               #   in Loop: Header=BB1_6 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %r10
	jbe	.LBB1_6
# %bb.30:                               #   in Loop: Header=BB1_5 Depth=3
	movq	(%rsp), %rax            # 8-byte Reload
	leaq	(%rax,%r11,4), %r10
	addq	$-4, %r10
	movl	$0, -4(%rax,%r11,4)
	addq	$-1, %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	xorl	%esi, %esi
	jmp	.LBB1_32
.LBB1_31:                               #   in Loop: Header=BB1_5 Depth=3
	movl	(%r10), %esi
.LBB1_32:                               #   in Loop: Header=BB1_5 Depth=3
	shll	$4, %esi
	andl	$15, %ecx
	orl	%esi, %ecx
	movl	%ecx, (%r10)
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	16(%rsp), %r8           # 8-byte Reload
	jmp	.LBB1_5
	.p2align	4, 0x90
.LBB1_12:                               #   in Loop: Header=BB1_4 Depth=2
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	16(%rsp), %r8           # 8-byte Reload
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_23:                               #   in Loop: Header=BB1_3 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	leaq	(%rcx,%r11,4), %r9
	addq	$-4, %r9
	movl	$0, -4(%rcx,%r11,4)
	leaq	-1(%r11), %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %r14d
	movq	32(%rsp), %rax          # 8-byte Reload
	jmp	.LBB1_3
.LBB1_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
	cmpb	$41, %bl
	jne	.LBB1_51
# %bb.25:
	addq	$2, %rbp
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_26
.LBB1_7:
	movl	%eax, %esi
.LBB1_26:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB1_27
# %bb.33:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r10
	jae	.LBB1_41
# %bb.34:
	cmpl	$7, %esi
	jg	.LBB1_41
# %bb.35:
	shll	$2, %esi
	movl	$32, %r15d
	subl	%esi, %r15d
	movl	$42, __A_VARIABLE(%rip)
	leaq	4(%r10), %r12
	cmpq	%r12, %r9
	movq	%r12, %rcx
	cmovaq	%r9, %rcx
	movl	(%r10), %eax
	movq	%r10, %rbx
	notq	%rbx
	addq	%rcx, %rbx
	testb	$4, %bl
	jne	.LBB1_36
# %bb.37:
	movl	4(%r10), %r8d
	movl	%r8d, %r14d
	movl	%esi, %ecx
	shll	%cl, %r14d
	movl	%r15d, %ecx
	shrl	%cl, %r8d
	orl	%eax, %r14d
	movl	%r14d, (%r10)
	movl	%r8d, 4(%r10)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %eax
	cmpq	$4, %rbx
	jae	.LBB1_39
	jmp	.LBB1_40
.LBB1_27:
	movl	$4, %eax
	jmp	.LBB1_51
.LBB1_36:
	movq	%r10, %r12
	cmpq	$4, %rbx
	jb	.LBB1_40
	.p2align	4, 0x90
.LBB1_39:                               # =>This Inner Loop Header: Depth=1
	movl	4(%r12), %edi
	movl	%edi, %ebx
	movl	%esi, %ecx
	shll	%cl, %ebx
	orl	%eax, %ebx
	movl	%r15d, %ecx
	shrl	%cl, %edi
	movl	%ebx, (%r12)
	movl	%edi, 4(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r12), %eax
	movl	%eax, %ebp
	movl	%esi, %ecx
	shll	%cl, %ebp
	orl	%edi, %ebp
	movl	%ebp, 4(%r12)
	movl	%r15d, %ecx
	shrl	%cl, %eax
	movl	%eax, 8(%r12)
	addq	$8, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r12
	jb	.LBB1_39
.LBB1_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %r10
	jbe	.LBB1_45
# %bb.42:                               # %.preheader3
	addq	$-1, %r11
	movq	%rdx, %rax
	movq	(%rsp), %rsi            # 8-byte Reload
	.p2align	4, 0x90
.LBB1_43:                               # =>This Inner Loop Header: Depth=1
	movl	4(%rsi,%r11,4), %ecx
	movl	%ecx, (%rax)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r11
	cmpq	$-1, %r11
	jl	.LBB1_43
	.p2align	4, 0x90
.LBB1_44:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax)
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	jbe	.LBB1_44
	jmp	.LBB1_47
.LBB1_45:
	movl	8(%rsp), %ecx           # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB1_47
# %bb.46:
	movl	(%r13), %eax
	negb	%cl
	shll	%cl, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %eax
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_47:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %eax
	jne	.LBB1_51
	jmp	.LBB1_48
	.p2align	4, 0x90
.LBB1_50:                               #   in Loop: Header=BB1_48 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -4(%r13)
	leaq	-4(%r13), %r13
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_51
.LBB1_48:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rdx
	jne	.LBB1_50
# %bb.49:
	movl	$1, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_51:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
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
