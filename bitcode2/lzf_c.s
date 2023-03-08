	.text
	.file	"lzf_c.c"
	.globl	lzf_compress            # -- Begin function lzf_compress
	.p2align	4, 0x90
	.type	lzf_compress,@function
lzf_compress:                           # @lzf_compress
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$262152, %rsp           # imm = 0x40008
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_56
# %bb.1:
	testl	%ecx, %ecx
	je	.LBB0_56
# %bb.2:
	movl	%esi, %r8d
	addq	%rdi, %r8
	movl	%ecx, %r9d
	addq	%rdx, %r9
	leaq	1(%rdx), %r14
	movzwl	(%rdi), %ebx
	shll	$16, %ebx
	bswapl	%ebx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-2(%r8), %r11
	xorl	%ecx, %ecx
	movq	%rdi, %rsi
	.p2align	4, 0x90
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_42 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r11, %rsi
	jae	.LBB0_47
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%ebx, %ebp
	shll	$8, %ebp
	movzbl	2(%rsi), %r10d
	orl	%ebp, %r10d
	leal	(%r10,%r10,4), %ebp
	subl	%ebp, %ebx
	movzwl	%bx, %ebx
	movl	(%rsp,%rbx,4), %ebp
	leaq	(%rdi,%rbp), %r15
	movl	%esi, %eax
	subl	%edi, %eax
	movl	%eax, (%rsp,%rbx,4)
	movq	%r15, %rbx
	notq	%rbx
	addq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8191, %rbx             # imm = 0x1FFF
	ja	.LBB0_28
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebp, %ebp
	je	.LBB0_28
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movb	2(%r15), %al
	cmpb	2(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_28
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	movzwl	(%r15), %eax
	cmpw	(%rsi), %ax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_28
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%r8d, %r12d
	subl	%esi, %r12d
	addl	$-2, %r12d
	cmpl	$264, %r12d             # imm = 0x108
	movl	$264, %eax              # imm = 0x108
	cmovael	%eax, %r12d
	leaq	4(%r14), %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r13
	jae	.LBB0_39
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	leal	-1(%rcx), %eax
	cmpl	$1, %ecx
	notl	%ecx
	movslq	%ecx, %rcx
	movb	%al, (%r14,%rcx)
	sbbq	$0, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r12d
	jb	.LBB0_40
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=1
	movb	3(%r15), %al
	movl	$3, %r13d
	cmpb	3(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_32
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	movb	4(%r15), %al
	movl	$4, %r13d
	cmpb	4(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_32
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	movb	5(%r15), %al
	movl	$5, %r13d
	cmpb	5(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_32
# %bb.13:                               #   in Loop: Header=BB0_3 Depth=1
	movb	6(%r15), %al
	movl	$6, %r13d
	cmpb	6(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_32
# %bb.14:                               #   in Loop: Header=BB0_3 Depth=1
	movb	7(%r15), %al
	movl	$7, %r13d
	cmpb	7(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_32
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	movb	8(%r15), %al
	movl	$8, %r13d
	cmpb	8(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_32
# %bb.16:                               #   in Loop: Header=BB0_3 Depth=1
	movb	9(%r15), %al
	movl	$9, %r13d
	cmpb	9(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_26
# %bb.17:                               #   in Loop: Header=BB0_3 Depth=1
	movb	10(%r15), %al
	movl	$10, %r13d
	cmpb	10(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_26
# %bb.18:                               #   in Loop: Header=BB0_3 Depth=1
	movb	11(%r15), %al
	movl	$11, %r13d
	cmpb	11(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_26
# %bb.19:                               #   in Loop: Header=BB0_3 Depth=1
	movb	12(%r15), %al
	movl	$12, %r13d
	cmpb	12(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_26
# %bb.20:                               #   in Loop: Header=BB0_3 Depth=1
	movb	13(%r15), %al
	movl	$13, %r13d
	cmpb	13(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_26
# %bb.21:                               #   in Loop: Header=BB0_3 Depth=1
	movb	14(%r15), %al
	movl	$14, %r13d
	cmpb	14(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_3 Depth=1
	movb	15(%r15), %al
	movl	$15, %r13d
	cmpb	15(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_26
# %bb.23:                               #   in Loop: Header=BB0_3 Depth=1
	movb	16(%r15), %al
	movl	$16, %r13d
	cmpb	16(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_26
# %bb.24:                               #   in Loop: Header=BB0_3 Depth=1
	movb	17(%r15), %al
	movl	$17, %r13d
	cmpb	17(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_3 Depth=1
	movb	18(%r15), %al
	movl	$18, %r13d
	movl	$18, %ecx
	cmpb	18(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_41
.LBB0_26:                               #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %rsi
	movq	%rbx, %rcx
	shrq	$8, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_27:                               #   in Loop: Header=BB0_3 Depth=1
	addb	$-32, %cl
	movb	%cl, (%r14)
	leal	-9(%r13), %eax
	movb	%al, 1(%r14)
	addq	$1, %r14
	jmp	.LBB0_34
	.p2align	4, 0x90
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r14
	jae	.LBB0_58
# %bb.29:                               #   in Loop: Header=BB0_3 Depth=1
	leal	1(%rcx), %ebx
	movb	(%rsi), %al
	addq	$1, %rsi
	movb	%al, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %ebx
	je	.LBB0_38
# %bb.30:                               #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %r14
	xorl	%ebp, %ebp
	movl	%ebx, %ecx
.LBB0_31:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r10d, %ebx
	testl	%ebp, %ebp
	je	.LBB0_3
	jmp	.LBB0_46
.LBB0_32:                               #   in Loop: Header=BB0_3 Depth=1
	leal	-2(%r13), %ebp
	addq	$1, %rsi
	movq	%rbx, %rcx
	shrq	$8, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_33:                               #   in Loop: Header=BB0_3 Depth=1
	shll	$5, %ebp
	addl	%ebp, %ecx
	movb	%cl, (%r14)
.LBB0_34:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rsi, %rcx
	movl	%r13d, %esi
	movl	$42, __A_VARIABLE(%rip)
	movb	%bl, 1(%r14)
	addq	$3, %r14
	addl	$-1, %esi
	addq	%rcx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r11, %rsi
	jae	.LBB0_45
# %bb.35:                               #   in Loop: Header=BB0_3 Depth=1
	leaq	-2(%rsi), %rax
	movzwl	-2(%rsi), %ecx
	shll	$16, %ecx
	bswapl	%ecx
	movl	%ecx, %ebp
	shll	$8, %ebp
	movzbl	(%rsi), %ebx
	orl	%ebp, %ebx
	subl	%edi, %eax
	leal	(%rbx,%rbx,4), %ebp
	subl	%ebp, %ecx
	movzwl	%cx, %ecx
	movl	%eax, (%rsp,%rcx,4)
	movl	%ebx, %eax
	shll	$8, %eax
	movzbl	1(%rsi), %r10d
	orl	%eax, %r10d
	movl	%edi, %eax
	notl	%eax
	addl	%esi, %eax
	leal	(%r10,%r10,4), %ecx
	subl	%ecx, %ebx
	movzwl	%bx, %ecx
	movl	%eax, (%rsp,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_36:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
.LBB0_37:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_31
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$-2, %eax
	subl	%ecx, %eax
	cltq
	movb	%cl, 1(%r14,%rax)
	addq	$2, %r14
	jmp	.LBB0_36
.LBB0_39:                               #   in Loop: Header=BB0_3 Depth=1
	cmpl	$1, %ecx
	sbbq	$0, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebp
	cmpq	%r9, %r13
	jb	.LBB0_9
	jmp	.LBB0_37
.LBB0_40:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$2, %ecx
.LBB0_41:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %r12d
	leal	-1(%rcx), %r13d
	addq	$1, %rcx
.LBB0_42:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r13d, %ebp
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rcx
	jae	.LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=2
	movzbl	(%r15,%rcx), %eax
	leal	1(%rbp), %r13d
	cmpb	(%rsi,%rcx), %al
	leaq	1(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_42
.LBB0_44:                               #   in Loop: Header=BB0_3 Depth=1
	leal	2(%rbp), %r13d
	addq	$1, %rsi
	movq	%rbx, %rcx
	shrq	$8, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %ebp
	ja	.LBB0_27
	jmp	.LBB0_33
.LBB0_45:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%ecx, %ecx
	movl	$3, %ebp
	jmp	.LBB0_37
.LBB0_46:
	cmpl	$3, %ebp
	jne	.LBB0_53
.LBB0_47:
	leaq	3(%r14), %rdi
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rdi
	ja	.LBB0_56
# %bb.48:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rsi
	jae	.LBB0_54
	.p2align	4, 0x90
.LBB0_49:                               # =>This Inner Loop Header: Depth=1
	leal	1(%rcx), %eax
	movzbl	(%rsi), %ebx
	addq	$1, %rsi
	movb	%bl, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	je	.LBB0_52
# %bb.50:                               #   in Loop: Header=BB0_49 Depth=1
	addq	$1, %r14
.LBB0_51:                               #   in Loop: Header=BB0_49 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	cmpq	%rsi, %r8
	jne	.LBB0_49
	jmp	.LBB0_55
.LBB0_52:                               #   in Loop: Header=BB0_49 Depth=1
	movl	$-2, %eax
	subl	%ecx, %eax
	cltq
	movb	%cl, 1(%r14,%rax)
	addq	$2, %r14
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB0_51
.LBB0_53:                               # %.loopexit1
	xorl	%eax, %eax
	jmp	.LBB0_57
.LBB0_54:
	movl	%ecx, %eax
.LBB0_55:
	leal	-1(%rax), %ecx
	cmpl	$1, %eax
	notl	%eax
	cltq
	movb	%cl, (%r14,%rax)
	sbbl	$0, %r14d
	subl	%edx, %r14d
	movl	%r14d, %eax
.LBB0_56:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_57:
	movl	$42, __A_VARIABLE(%rip)
	addq	$262152, %rsp           # imm = 0x40008
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_58:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB0_56
.Lfunc_end0:
	.size	lzf_compress, .Lfunc_end0-lzf_compress
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
