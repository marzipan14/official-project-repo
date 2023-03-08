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
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	cmpq	$0, 16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_55
# %bb.1:
	movq	%rdi, %r15
	movzwl	16(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB0_3
# %bb.2:
	cmpq	$0, 24(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_5
.LBB0_3:
	movq	%r15, %rdi
	movq	%rsi, %rbx
	callq	__swsetup_r
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_56
# %bb.4:
	movzwl	16(%rbx), %eax
	movq	%rbx, %rsi
.LBB0_5:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %r12
	cwtl
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	jne	.LBB0_6
# %bb.12:
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB0_38
# %bb.13:
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_28:                               #   in Loop: Header=BB0_14 Depth=1
	movq	(%rsi), %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	memmove
	movq	-48(%rbp), %rsi         # 8-byte Reload
	subl	%r14d, 12(%rsi)
	addq	%r14, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
.LBB0_37:                               #   in Loop: Header=BB0_14 Depth=1
	addq	%r14, %r13
	subq	%r14, %rbx
	movq	-72(%rbp), %rax         # 8-byte Reload
	subq	%r14, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_55
.LBB0_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB0_17
	.p2align	4, 0x90
.LBB0_15:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r12), %rbx
	addq	$16, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_15
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	movq	-16(%r12), %r13
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=1
	movslq	12(%rsi), %r14
	movswl	16(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %eax              # imm = 0x200
	jne	.LBB0_18
# %bb.32:                               #   in Loop: Header=BB0_14 Depth=1
	movq	(%rsi), %rdi
	cmpq	24(%rsi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_14 Depth=1
	movslq	32(%rsi), %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rbx
	jae	.LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_14 Depth=1
	cmpq	%r14, %rbx
	cmovbq	%rbx, %r14
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	memmove
	movq	-48(%rbp), %rsi         # 8-byte Reload
	addq	%r14, (%rsi)
	subl	%r14d, 12(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_37
# %bb.35:                               #   in Loop: Header=BB0_14 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	_fflush_r
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_37
	jmp	.LBB0_49
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jb	.LBB0_26
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$1152, %eax             # imm = 0x480
	je	.LBB0_26
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=1
	movq	(%rsi), %rcx
	movq	24(%rsi), %rdi
	subq	%rdi, %rcx
	movl	32(%rsi), %edx
	leal	(%rdx,%rdx,2), %edx
	movl	%edx, %r14d
	shrl	$31, %r14d
	addl	%edx, %r14d
	sarl	%r14d
	movslq	%r14d, %rdx
	movslq	%ecx, %r8
	leaq	(%rbx,%r8), %rcx
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jbe	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r14d
.LBB0_22:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r14d, %rsi
	testl	$1024, %eax             # imm = 0x400
	movq	%r8, -64(%rbp)          # 8-byte Spill
	jne	.LBB0_23
# %bb.29:                               #   in Loop: Header=BB0_14 Depth=1
	callq	realloc
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_25
	jmp	.LBB0_30
.LBB0_36:                               #   in Loop: Header=BB0_14 Depth=1
	cmpq	$2147483647, %rbx       # imm = 0x7FFFFFFF
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	cmovbl	%ebx, %ecx
	movl	%ecx, %eax
	cltd
	idivl	%r8d
	subl	%edx, %ecx
	movq	48(%rsi), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	callq	*64(%rax)
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jg	.LBB0_37
	jmp	.LBB0_49
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%rsi, %rdi
	callq	malloc
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_31
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%rax, %r15
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	16(%rsi), %eax
	movl	$-1153, %ecx            # imm = 0xFB7F
	andl	%ecx, %eax
	orl	$128, %eax
	movw	%ax, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%r15, 24(%rsi)
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	%rax, %r15
	movq	%r15, (%rsi)
	movl	%r14d, 32(%rsi)
	subl	%eax, %r14d
	movl	%r14d, 12(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jae	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	jmp	.LBB0_28
.LBB0_6:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB0_10
	.p2align	4, 0x90
.LBB0_8:                                #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r12), %rbx
	addq	$16, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%r12), %r14
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	movq	48(%rsi), %rsi
	cmpq	$2147482624, %rbx       # imm = 0x7FFFFC00
	movl	$2147482624, %ecx       # imm = 0x7FFFFC00
	cmovbl	%ebx, %ecx
	movq	%r15, %r13
	movq	%r15, %rdi
	movq	%r14, %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	callq	*64(%rax)
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB0_49
# %bb.11:                               #   in Loop: Header=BB0_7 Depth=1
	addq	%rax, %r14
	subq	%rax, %rbx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subq	%rax, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r15
	jne	.LBB0_7
.LBB0_55:
	xorl	%eax, %eax
	jmp	.LBB0_56
.LBB0_38:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
	xorl	%r13d, %r13d
	jmp	.LBB0_39
	.p2align	4, 0x90
.LBB0_53:                               #   in Loop: Header=BB0_39 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -64(%rbp)           # 4-byte Folded Spill
.LBB0_54:                               #   in Loop: Header=BB0_39 Depth=1
	addq	%r15, %r14
	subq	%r15, %rbx
	movq	-72(%rbp), %rax         # 8-byte Reload
	subq	%r15, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_55
.LBB0_39:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_40
# %bb.42:                               #   in Loop: Header=BB0_39 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	jne	.LBB0_44
	jmp	.LBB0_43
	.p2align	4, 0x90
.LBB0_40:                               #   Parent Loop BB0_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r12), %rbx
	addq	$16, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_40
# %bb.41:                               #   in Loop: Header=BB0_39 Depth=1
	movq	-16(%r12), %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB0_43:                               #   in Loop: Header=BB0_39 Depth=1
	movq	%r14, %rdi
	movl	$10, %esi
	movq	%rbx, %rdx
	callq	memchr
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	subq	%r14, %rcx
	addq	$1, %rcx
	leaq	1(%rbx), %r13
	testq	%rax, %rax
	cmovneq	%rcx, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -64(%rbp)           # 4-byte Folded Spill
.LBB0_44:                               #   in Loop: Header=BB0_39 Depth=1
	movq	%r14, %rax
	movslq	%r13d, %r13
	cmpq	%r13, %rbx
	movq	%r13, %r14
	cmovbq	%rbx, %r14
	movslq	12(%rsi), %r15
	movslq	32(%rsi), %rcx
	movq	(%rsi), %rdi
	cmpq	24(%rsi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_47
# %bb.45:                               #   in Loop: Header=BB0_39 Depth=1
	addq	%rcx, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	jle	.LBB0_47
# %bb.46:                               #   in Loop: Header=BB0_39 Depth=1
	movq	%rax, %r14
	movq	%rax, %rsi
	movq	%r15, %rdx
	callq	memmove
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	%r15, (%rax)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	_fflush_r
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_51
	jmp	.LBB0_49
	.p2align	4, 0x90
.LBB0_47:                               #   in Loop: Header=BB0_39 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r14
	jge	.LBB0_48
# %bb.50:                               #   in Loop: Header=BB0_39 Depth=1
	movq	%rax, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%r14, %rdx
	callq	memmove
	movq	-48(%rbp), %rsi         # 8-byte Reload
	subl	%r14d, 12(%rsi)
	addq	%r14, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r15
	movq	-80(%rbp), %r14         # 8-byte Reload
	jmp	.LBB0_51
	.p2align	4, 0x90
.LBB0_48:                               #   in Loop: Header=BB0_39 Depth=1
	movq	48(%rsi), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %r14
	movq	%rax, %rdx
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	-48(%rbp), %rax         # 8-byte Reload
	callq	*64(%rax)
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB0_49
.LBB0_51:                               #   in Loop: Header=BB0_39 Depth=1
	subq	%r15, %r13
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB0_54
# %bb.52:                               #   in Loop: Header=BB0_39 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	_fflush_r
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_53
	jmp	.LBB0_49
.LBB0_30:
	movq	24(%rsi), %rdi
	callq	free
	movq	-48(%rbp), %rsi         # 8-byte Reload
	andb	$127, 16(%rsi)
.LBB0_31:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_49:
	orb	$64, 16(%rsi)
	movl	$-1, %eax
.LBB0_56:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
