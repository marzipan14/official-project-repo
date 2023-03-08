	.text
	.file	"fvwrite.c"
	.globl	__sfvwrite_r            # -- Begin function __sfvwrite_r
	.p2align	4, 0x90
	.type	__sfvwrite_r,@function
__sfvwrite_r:                           # @__sfvwrite_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	cmpq	$0, 16(%rdx)
	je	.LBB0_51
# %bb.1:
	movq	%rdi, %rbx
	movzwl	16(%rsi), %eax
	testb	$8, %al
	je	.LBB0_3
# %bb.2:
	cmpq	$0, 24(%rsi)
	jne	.LBB0_5
.LBB0_3:
	movq	%rbx, %rdi
	movq	%rsi, %r14
	callq	__swsetup_r
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_52
# %bb.4:
	movzwl	16(%r14), %eax
	movq	%r14, %rsi
.LBB0_5:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %r12
	cwtl
	testb	$2, %al
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	jne	.LBB0_6
# %bb.12:
	testb	$1, %al
	jne	.LBB0_13
# %bb.17:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_24:                               #   in Loop: Header=BB0_18 Depth=1
	movq	(%rsi), %r14
	movq	%rsi, %r13
.LBB0_32:                               #   in Loop: Header=BB0_18 Depth=1
	cmpq	%r15, %rbx
	cmovbq	%rbx, %r15
	movq	%r14, %rdi
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memmove
	subl	%r15d, 12(%r13)
	addq	%r15, (%r13)
	movq	%rbx, %r15
	movq	%r13, %rsi
.LBB0_38:                               #   in Loop: Header=BB0_18 Depth=1
	addq	%r15, %r14
	subq	%r15, %rbx
	movq	-80(%rbp), %rax         # 8-byte Reload
	subq	%r15, 16(%rax)
	je	.LBB0_51
.LBB0_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
	testq	%rbx, %rbx
	jne	.LBB0_21
	.p2align	4, 0x90
.LBB0_19:                               #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r12), %rbx
	addq	$16, %r12
	testq	%rbx, %rbx
	je	.LBB0_19
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=1
	movq	-16(%r12), %r14
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=1
	movslq	12(%rsi), %r15
	movswl	16(%rsi), %eax
	testl	$512, %eax              # imm = 0x200
	jne	.LBB0_22
# %bb.33:                               #   in Loop: Header=BB0_18 Depth=1
	movq	(%rsi), %rdi
	cmpq	24(%rsi), %rdi
	ja	.LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_18 Depth=1
	movslq	32(%rsi), %r8
	cmpq	%r8, %rbx
	jae	.LBB0_37
.LBB0_35:                               #   in Loop: Header=BB0_18 Depth=1
	cmpq	%r15, %rbx
	cmovbq	%rbx, %r15
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memmove
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	%r15, (%rsi)
	subl	%r15d, 12(%rsi)
	jne	.LBB0_38
# %bb.36:                               #   in Loop: Header=BB0_18 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	_fflush_r
	movq	-48(%rbp), %rsi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_38
	jmp	.LBB0_46
	.p2align	4, 0x90
.LBB0_22:                               #   in Loop: Header=BB0_18 Depth=1
	cmpq	%r15, %rbx
	movq	%r14, -64(%rbp)         # 8-byte Spill
	jb	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_18 Depth=1
	movl	%eax, %ecx
	andl	$1152, %ecx             # imm = 0x480
	je	.LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_18 Depth=1
	movq	(%rsi), %rcx
	movq	24(%rsi), %rdi
	subq	%rdi, %rcx
	movl	32(%rsi), %edx
	leal	(%rdx,%rdx,2), %edx
	movl	%edx, %esi
	shrl	$31, %esi
	addl	%edx, %esi
	sarl	%esi
	movslq	%esi, %r15
	movslq	%ecx, %r13
	leaq	(%rbx,%r13), %rcx
	addq	$1, %rcx
	cmpq	%r15, %rcx
	cmoval	%ecx, %r15d
	movslq	%r15d, %rsi
	testl	$1024, %eax             # imm = 0x400
	jne	.LBB0_26
# %bb.28:                               #   in Loop: Header=BB0_18 Depth=1
	callq	realloc
	movq	%rax, %r14
	testq	%rax, %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	jne	.LBB0_31
	jmp	.LBB0_29
.LBB0_37:                               #   in Loop: Header=BB0_18 Depth=1
	cmpq	$2147483647, %rbx       # imm = 0x7FFFFFFF
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	cmovbl	%ebx, %ecx
	movl	%ecx, %eax
	cltd
	idivl	%r8d
	subl	%edx, %ecx
	movq	48(%rsi), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	callq	*64(%rax)
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %r15
	testq	%rax, %rax
	jg	.LBB0_38
	jmp	.LBB0_46
.LBB0_26:                               #   in Loop: Header=BB0_18 Depth=1
	movq	%rsi, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_27
# %bb.30:                               #   in Loop: Header=BB0_18 Depth=1
	movq	%rax, %r14
	movq	%r13, -72(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	24(%r13), %rsi
	movq	%rax, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movq	%r13, %rcx
	movq	-72(%rbp), %r13         # 8-byte Reload
	movl	16(%rcx), %eax
	movl	$-1153, %edx            # imm = 0xFB7F
	andl	%edx, %eax
	orl	$128, %eax
	movw	%ax, 16(%rcx)
.LBB0_31:                               #   in Loop: Header=BB0_18 Depth=1
	movq	%r14, 24(%rcx)
	addq	%r13, %r14
	movq	%r14, (%rcx)
	movl	%r15d, 32(%rcx)
	subl	%r13d, %r15d
	movl	%r15d, 12(%rcx)
	movq	%rbx, %r15
	movq	%rcx, %r13
	jmp	.LBB0_32
.LBB0_6:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	testq	%rbx, %rbx
	jne	.LBB0_10
	.p2align	4, 0x90
.LBB0_8:                                #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r12), %rbx
	addq	$16, %r12
	testq	%rbx, %rbx
	je	.LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%r12), %r14
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	movq	48(%rsi), %rsi
	cmpq	$2147482624, %rbx       # imm = 0x7FFFFC00
	movl	$2147482624, %ecx       # imm = 0x7FFFFC00
	cmovbl	%ebx, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	callq	*64(%rax)
	movq	-48(%rbp), %rsi         # 8-byte Reload
	testq	%rax, %rax
	jle	.LBB0_46
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	addq	%rax, %r14
	subq	%rax, %rbx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	subq	%rax, 16(%rcx)
	jne	.LBB0_7
.LBB0_51:
	xorl	%eax, %eax
	jmp	.LBB0_52
.LBB0_13:
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	xorl	%r13d, %r13d
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_50:                               #   in Loop: Header=BB0_14 Depth=1
	addq	%r14, %r15
	subq	%r14, %rbx
	movq	-80(%rbp), %rax         # 8-byte Reload
	subq	%r14, 16(%rax)
	je	.LBB0_51
.LBB0_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	testq	%rbx, %rbx
	je	.LBB0_15
# %bb.39:                               #   in Loop: Header=BB0_14 Depth=1
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	jne	.LBB0_41
	jmp	.LBB0_40
	.p2align	4, 0x90
.LBB0_15:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r12), %rbx
	addq	$16, %r12
	testq	%rbx, %rbx
	je	.LBB0_15
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	movq	-16(%r12), %r15
.LBB0_40:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%r15, %rdi
	movl	$10, %esi
	movq	%rbx, %rdx
	callq	memchr
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	subq	%r15, %rcx
	addq	$1, %rcx
	leaq	1(%rbx), %r13
	testq	%rax, %rax
	cmovneq	%rcx, %r13
	movl	$1, -64(%rbp)           # 4-byte Folded Spill
.LBB0_41:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%r15, %rax
	movslq	%r13d, %r13
	cmpq	%r13, %rbx
	movq	%r13, %r15
	cmovbq	%rbx, %r15
	movslq	32(%rsi), %rcx
	movq	(%rsi), %rdi
	cmpq	24(%rsi), %rdi
	jbe	.LBB0_44
# %bb.42:                               #   in Loop: Header=BB0_14 Depth=1
	movslq	12(%rsi), %r14
	addq	%rcx, %r14
	cmpq	%r14, %r15
	jle	.LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%rax, %r15
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	memmove
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	%r14, (%rax)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	_fflush_r
	movq	-48(%rbp), %rsi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB0_48
	jmp	.LBB0_46
	.p2align	4, 0x90
.LBB0_44:                               #   in Loop: Header=BB0_14 Depth=1
	cmpq	%rcx, %r15
	jge	.LBB0_45
# %bb.47:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%rax, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r15, %rdx
	callq	memmove
	movq	-48(%rbp), %rsi         # 8-byte Reload
	subl	%r15d, 12(%rsi)
	addq	%r15, (%rsi)
	movq	%r15, %r14
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB0_48
	.p2align	4, 0x90
.LBB0_45:                               #   in Loop: Header=BB0_14 Depth=1
	movq	48(%rsi), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %r15
	movq	%rax, %rdx
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	-48(%rbp), %rax         # 8-byte Reload
	callq	*64(%rax)
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %r14
	testq	%rax, %rax
	jle	.LBB0_46
.LBB0_48:                               #   in Loop: Header=BB0_14 Depth=1
	subq	%r14, %r13
	testl	%r13d, %r13d
	jne	.LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_14 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	_fflush_r
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	testl	%eax, %eax
	je	.LBB0_50
	jmp	.LBB0_46
.LBB0_29:
	movq	24(%rcx), %rdi
	callq	free
	movq	-48(%rbp), %rsi         # 8-byte Reload
	andb	$127, 16(%rsi)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	jmp	.LBB0_46
.LBB0_27:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB0_46:
	orb	$64, 16(%rsi)
	movl	$-1, %eax
.LBB0_52:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__sfvwrite_r, .Lfunc_end0-__sfvwrite_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
