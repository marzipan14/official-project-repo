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
	subq	$262168, %rsp           # imm = 0x40018
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.LBB0_52
# %bb.1:
	testl	%ecx, %ecx
	je	.LBB0_52
# %bb.2:
	movq	%rdi, %r8
	movl	%esi, %r15d
	addq	%rdi, %r15
	movl	%ecx, %r9d
	addq	%rdx, %r9
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	leaq	1(%rdx), %r14
	leaq	-2(%r15), %r10
	xorl	%eax, %eax
	cmpq	%rdi, %r10
	jbe	.LBB0_43
# %bb.3:
	movzwl	(%r8), %ebp
	shll	$16, %ebp
	bswapl	%ebp
	xorl	%edi, %edi
	movq	%r8, %r11
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_6 Depth=1
	addq	$1, %r14
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	movl	%ebx, %edi
	cmpq	%r10, %r11
	jae	.LBB0_44
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_40 Depth 2
	movl	%ebp, %esi
	movl	%ebp, %ebx
	shll	$8, %ebx
	movzbl	2(%r11), %ebp
	orl	%ebx, %ebp
	leal	(%rbp,%rbp,4), %ebx
	subl	%ebx, %esi
	movzwl	%si, %esi
	movl	16(%rsp,%rsi,4), %r12d
	movl	%r11d, %ebx
	subl	%r8d, %ebx
	movl	%ebx, 16(%rsp,%rsi,4)
	testq	%r12, %r12
	je	.LBB0_30
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	addq	%r8, %r12
	movq	%r12, %rsi
	notq	%rsi
	addq	%r11, %rsi
	cmpq	$8191, %rsi             # imm = 0x1FFF
	ja	.LBB0_30
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	movb	2(%r12), %bl
	cmpb	2(%r11), %bl
	jne	.LBB0_30
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	movzwl	(%r12), %ebx
	cmpw	(%r11), %bx
	jne	.LBB0_30
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	movl	%r15d, %r13d
	subl	%r11d, %r13d
	addl	$-2, %r13d
	cmpl	$264, %r13d             # imm = 0x108
	movl	$264, %ecx              # imm = 0x108
	cmovael	%ecx, %r13d
	leaq	4(%r14), %rbp
	cmpq	%r9, %rbp
	jae	.LBB0_37
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=1
	movq	%r15, %rdx
	leal	-1(%rdi), %ebx
	cmpl	$1, %edi
	notl	%edi
	movslq	%edi, %rcx
	movb	%bl, (%r14,%rcx)
	sbbq	$0, %r14
	cmpl	$17, %r13d
	jb	.LBB0_38
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=1
	movb	3(%r12), %cl
	movl	$3, %r15d
	cmpb	3(%r11), %cl
	jne	.LBB0_33
# %bb.13:                               #   in Loop: Header=BB0_6 Depth=1
	movb	4(%r12), %cl
	movl	$4, %r15d
	cmpb	4(%r11), %cl
	jne	.LBB0_33
# %bb.14:                               #   in Loop: Header=BB0_6 Depth=1
	movb	5(%r12), %cl
	movl	$5, %r15d
	cmpb	5(%r11), %cl
	jne	.LBB0_33
# %bb.15:                               #   in Loop: Header=BB0_6 Depth=1
	movb	6(%r12), %cl
	movl	$6, %r15d
	cmpb	6(%r11), %cl
	jne	.LBB0_33
# %bb.16:                               #   in Loop: Header=BB0_6 Depth=1
	movb	7(%r12), %cl
	movl	$7, %r15d
	cmpb	7(%r11), %cl
	jne	.LBB0_33
# %bb.17:                               #   in Loop: Header=BB0_6 Depth=1
	movb	8(%r12), %cl
	movl	$8, %r15d
	cmpb	8(%r11), %cl
	jne	.LBB0_33
# %bb.18:                               #   in Loop: Header=BB0_6 Depth=1
	movb	9(%r12), %cl
	movl	$9, %r15d
	cmpb	9(%r11), %cl
	jne	.LBB0_28
# %bb.19:                               #   in Loop: Header=BB0_6 Depth=1
	movb	10(%r12), %cl
	movl	$10, %r15d
	cmpb	10(%r11), %cl
	jne	.LBB0_28
# %bb.20:                               #   in Loop: Header=BB0_6 Depth=1
	movb	11(%r12), %cl
	movl	$11, %r15d
	cmpb	11(%r11), %cl
	jne	.LBB0_28
# %bb.21:                               #   in Loop: Header=BB0_6 Depth=1
	movb	12(%r12), %cl
	movl	$12, %r15d
	cmpb	12(%r11), %cl
	jne	.LBB0_28
# %bb.22:                               #   in Loop: Header=BB0_6 Depth=1
	movb	13(%r12), %cl
	movl	$13, %r15d
	cmpb	13(%r11), %cl
	jne	.LBB0_28
# %bb.23:                               #   in Loop: Header=BB0_6 Depth=1
	movb	14(%r12), %cl
	movl	$14, %r15d
	cmpb	14(%r11), %cl
	jne	.LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_6 Depth=1
	movb	15(%r12), %cl
	movl	$15, %r15d
	cmpb	15(%r11), %cl
	jne	.LBB0_28
# %bb.25:                               #   in Loop: Header=BB0_6 Depth=1
	movb	16(%r12), %cl
	movl	$16, %r15d
	cmpb	16(%r11), %cl
	jne	.LBB0_28
# %bb.26:                               #   in Loop: Header=BB0_6 Depth=1
	movb	17(%r12), %cl
	movl	$17, %r15d
	cmpb	17(%r11), %cl
	jne	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_6 Depth=1
	movb	18(%r12), %cl
	movl	$18, %r15d
	movl	$18, %ebp
	cmpb	18(%r11), %cl
	je	.LBB0_39
.LBB0_28:                               #   in Loop: Header=BB0_6 Depth=1
	addq	$1, %r11
	movq	%rsi, %rbx
	shrq	$8, %rbx
.LBB0_29:                               #   in Loop: Header=BB0_6 Depth=1
	addb	$-32, %bl
	movb	%bl, (%r14)
	leal	-9(%r15), %ecx
	movb	%cl, 1(%r14)
	addq	$1, %r14
	jmp	.LBB0_35
	.p2align	4, 0x90
.LBB0_30:                               #   in Loop: Header=BB0_6 Depth=1
	cmpq	%r9, %r14
	jae	.LBB0_55
# %bb.31:                               #   in Loop: Header=BB0_6 Depth=1
	leal	1(%rdi), %ebx
	movb	(%r11), %cl
	addq	$1, %r11
	movb	%cl, (%r14)
	cmpl	$32, %ebx
	jne	.LBB0_4
# %bb.32:                               #   in Loop: Header=BB0_6 Depth=1
	movl	$-2, %ecx
	subl	%edi, %ecx
	movslq	%ecx, %rcx
	movb	%dil, 1(%r14,%rcx)
	addq	$2, %r14
	xorl	%ebx, %ebx
	jmp	.LBB0_5
.LBB0_33:                               #   in Loop: Header=BB0_6 Depth=1
	leal	-2(%r15), %ecx
	addq	$1, %r11
	movq	%rsi, %rbx
	shrq	$8, %rbx
.LBB0_34:                               #   in Loop: Header=BB0_6 Depth=1
	shll	$5, %ecx
	addl	%ecx, %ebx
	movb	%bl, (%r14)
.LBB0_35:                               #   in Loop: Header=BB0_6 Depth=1
	movb	%sil, 1(%r14)
	addq	$3, %r14
	addl	$-1, %r15d
	addq	%r15, %r11
	cmpq	%r10, %r11
	jae	.LBB0_54
# %bb.36:                               #   in Loop: Header=BB0_6 Depth=1
	leaq	-2(%r11), %rbp
	movzwl	-2(%r11), %esi
	shll	$16, %esi
	bswapl	%esi
	movl	%esi, %ebx
	shll	$8, %ebx
	movzbl	(%r11), %ecx
	orl	%ebx, %ecx
	subl	%r8d, %ebp
	leal	(%rcx,%rcx,4), %ebx
	subl	%ebx, %esi
	movzwl	%si, %esi
	movl	%ebp, 16(%rsp,%rsi,4)
	movl	%ecx, %esi
	shll	$8, %esi
	movzbl	1(%r11), %ebp
	orl	%esi, %ebp
	movl	%r8d, %esi
	notl	%esi
	addl	%r11d, %esi
	leal	(%rbp,%rbp,4), %ebx
	subl	%ebx, %ecx
	movzwl	%cx, %ecx
	movl	%esi, 16(%rsp,%rcx,4)
	xorl	%ebx, %ebx
	movq	%rdx, %r15
	jmp	.LBB0_5
.LBB0_37:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$1, %edi
	sbbq	$0, %rbp
	cmpq	%r9, %rbp
	jb	.LBB0_11
	jmp	.LBB0_55
.LBB0_38:                               #   in Loop: Header=BB0_6 Depth=1
	movl	$2, %ebp
.LBB0_39:                               #   in Loop: Header=BB0_6 Depth=1
	movl	%r13d, %r15d
	leal	-1(%rbp), %r13d
	addq	$1, %rbp
.LBB0_40:                               #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r13d, %ecx
	cmpq	%r15, %rbp
	jae	.LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=2
	movzbl	(%r12,%rbp), %ebx
	leal	1(%rcx), %r13d
	cmpb	(%r11,%rbp), %bl
	leaq	1(%rbp), %rbp
	je	.LBB0_40
.LBB0_42:                               #   in Loop: Header=BB0_6 Depth=1
	leal	2(%rcx), %r15d
	addq	$1, %r11
	movq	%rsi, %rbx
	shrq	$8, %rbx
	cmpl	$6, %ecx
	ja	.LBB0_29
	jmp	.LBB0_34
.LBB0_43:
	movq	%r8, %r11
	xorl	%ebx, %ebx
.LBB0_44:
	leaq	3(%r14), %rcx
	cmpq	%r9, %rcx
	movq	8(%rsp), %rdx           # 8-byte Reload
	ja	.LBB0_52
# %bb.45:
	cmpq	%r15, %r11
	jae	.LBB0_50
	.p2align	4, 0x90
.LBB0_46:                               # =>This Inner Loop Header: Depth=1
	leal	1(%rbx), %eax
	movzbl	(%r11), %ecx
	addq	$1, %r11
	movb	%cl, (%r14)
	cmpl	$32, %eax
	je	.LBB0_49
# %bb.47:                               #   in Loop: Header=BB0_46 Depth=1
	addq	$1, %r14
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=1
	movl	%eax, %ebx
	cmpq	%r11, %r15
	jne	.LBB0_46
	jmp	.LBB0_51
.LBB0_49:                               #   in Loop: Header=BB0_46 Depth=1
	movl	$-2, %eax
	subl	%ebx, %eax
	cltq
	movb	%bl, 1(%r14,%rax)
	addq	$2, %r14
	xorl	%eax, %eax
	jmp	.LBB0_48
.LBB0_50:
	movl	%ebx, %eax
.LBB0_51:
	leal	-1(%rax), %ecx
	cmpl	$1, %eax
	notl	%eax
	cltq
	movb	%cl, (%r14,%rax)
	sbbl	$0, %r14d
	subl	%edx, %r14d
	movl	%r14d, %eax
.LBB0_52:
	addq	$262168, %rsp           # imm = 0x40018
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_55:
	xorl	%eax, %eax
	jmp	.LBB0_52
.LBB0_54:
	xorl	%ebx, %ebx
	movq	%rdx, %r15
	jmp	.LBB0_44
.Lfunc_end0:
	.size	lzf_compress, .Lfunc_end0-lzf_compress
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
