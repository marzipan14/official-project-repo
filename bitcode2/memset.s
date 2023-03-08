	.text
	.file	"memset.c"
	.globl	memset                  # -- Begin function memset
	.p2align	4, 0x90
	.type	memset,@function
memset:                                 # @memset
# %bb.0:
	pushq	%rbx
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %al
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_26
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$-1, %rdx
	movb	%sil, (%rdi)
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %dil
	jne	.LBB0_1
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rdx
	jb	.LBB0_18
# %bb.4:
	movzbl	%sil, %ebx
	movl	%ebx, %ecx
	shll	$8, %ecx
	orl	%ebx, %ecx
	movl	%ecx, %ebx
	shll	$16, %ebx
	orl	%ecx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r10
	shlq	$32, %r10
	orq	%rbx, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$31, %rdx
	jbe	.LBB0_5
# %bb.6:
	leaq	-32(%rdx), %r8
	movq	%rdi, %rcx
	testb	$32, %r8b
	jne	.LBB0_8
# %bb.7:
	movq	%r10, (%rdi)
	movq	%r10, 8(%rdi)
	movq	%r10, 16(%rdi)
	leaq	32(%rdi), %rcx
	movq	%r10, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %rdx
.LBB0_8:
	movq	%r8, %r9
	andq	$-32, %r9
	cmpq	$32, %r8
	jb	.LBB0_9
	.p2align	4, 0x90
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movq	%r10, (%rcx)
	movq	%r10, 8(%rcx)
	movq	%r10, 16(%rcx)
	movq	%r10, 24(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r10, 32(%rcx)
	movq	%r10, 40(%rcx)
	movq	%r10, 48(%rcx)
	movq	%r10, 56(%rcx)
	addq	$-64, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rcx
	cmpq	$31, %rdx
	ja	.LBB0_27
.LBB0_9:
	addq	%r9, %rdi
	addq	$32, %rdi
	subq	%r9, %r8
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %rdx
	cmpq	$8, %r8
	jae	.LBB0_10
	jmp	.LBB0_17
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	leaq	-8(%rdx), %r8
	movq	%r8, %r9
	shrq	$3, %r9
	movl	$7, %ecx
	subq	%rdx, %rcx
	cmpq	$-8, %rcx
	movq	$-8, %r11
	cmovaq	%rcx, %r11
	addq	%rdx, %r11
	movl	%r11d, %ebx
	shrl	$3, %ebx
	addl	$1, %ebx
	andq	$3, %rbx
	je	.LBB0_11
# %bb.12:                               # %.preheader5
	negq	%rbx
	movq	%rdi, %rcx
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movq	%r10, (%rcx)
	addq	$8, %rcx
	addq	$-8, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	incq	%rbx
	jne	.LBB0_13
	jmp	.LBB0_14
.LBB0_11:
	movq	%rdi, %rcx
.LBB0_14:
	addq	$1, %r9
	cmpq	$24, %r11
	jb	.LBB0_16
	.p2align	4, 0x90
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movq	%r10, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r10, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r10, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r10, 24(%rcx)
	addq	$-32, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rcx
	cmpq	$7, %rdx
	ja	.LBB0_15
.LBB0_16:
	leaq	(%rdi,%r9,8), %rdi
	andl	$7, %r8d
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %rdx
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_26
# %bb.19:
	leaq	-1(%rdx), %r8
	movq	%rdx, %rcx
	andq	$3, %rcx
	je	.LBB0_23
# %bb.20:                               # %.preheader1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movb	%sil, (%rdi,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	cmpq	%rbx, %rcx
	jne	.LBB0_21
# %bb.22:                               # %.loopexit2
	addq	%rbx, %rdi
	subq	%rbx, %rdx
.LBB0_23:
	cmpq	$3, %r8
	jb	.LBB0_26
# %bb.24:                               # %.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	movb	%sil, (%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%sil, 1(%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%sil, 2(%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%sil, 3(%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB0_25
.LBB0_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	retq
.Lfunc_end0:
	.size	memset, .Lfunc_end0-memset
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
