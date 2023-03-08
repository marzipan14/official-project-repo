	.text
	.file	"memmove.c"
	.globl	memmove                 # -- Begin function memmove
	.p2align	4, 0x90
	.type	memmove,@function
memmove:                                # @memmove
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	jae	.LBB0_10
# %bb.1:
	leaq	(%rsi,%rdx), %r9
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r9
	jbe	.LBB0_10
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_39
# %bb.3:
	leaq	(%rax,%rdx), %rsi
	leaq	-1(%rdx), %r8
	movq	%rdx, %rdi
	andq	$3, %rdi
	je	.LBB0_7
# %bb.4:                                # %.preheader1
	negq	%rdi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	-1(%r9,%rbx), %ecx
	movb	%cl, -1(%rsi,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rbx
	cmpq	%rbx, %rdi
	jne	.LBB0_5
# %bb.6:                                # %.loopexit2
	addq	%rbx, %r9
	addq	%rbx, %rsi
	addq	%rbx, %rdx
.LBB0_7:
	cmpq	$3, %r8
	jb	.LBB0_39
# %bb.8:                                # %.preheader
	negq	%rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movzbl	-1(%r9,%rdi), %ecx
	movb	%cl, -1(%rsi,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-2(%r9,%rdi), %ecx
	movb	%cl, -2(%rsi,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-3(%r9,%rdi), %ecx
	movb	%cl, -3(%rsi,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-4(%r9,%rdi), %ecx
	movb	%cl, -4(%rsi,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-4, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB0_9
	jmp	.LBB0_39
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %rdx
	jae	.LBB0_12
# %bb.11:
	movq	%rax, %r15
	jmp	.LBB0_31
.LBB0_12:
	movl	%esi, %ecx
	orl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %cl
	je	.LBB0_14
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r15
	jmp	.LBB0_32
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-32(%rdx), %r10
	testb	$32, %r10b
	jne	.LBB0_15
# %bb.16:
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	movq	8(%rsi), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rsi), %rcx
	movq	%rcx, 16(%rax)
	leaq	32(%rsi), %r9
	movq	24(%rsi), %rcx
	leaq	32(%rax), %rdi
	movq	%rcx, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r10, %rdx
	jmp	.LBB0_17
.LBB0_15:
	movq	%rsi, %r9
	movq	%rax, %rdi
.LBB0_17:
	movq	%r10, %r8
	andq	$-32, %r8
	cmpq	$32, %r10
	jb	.LBB0_20
# %bb.18:                               # %.preheader11
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movq	(%r9,%rcx), %rbx
	movq	%rbx, (%rdi,%rcx)
	movq	8(%r9,%rcx), %rbx
	movq	%rbx, 8(%rdi,%rcx)
	movq	16(%r9,%rcx), %rbx
	movq	%rbx, 16(%rdi,%rcx)
	movq	24(%r9,%rcx), %rbx
	movq	%rbx, 24(%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r9,%rcx), %rbx
	movq	%rbx, 32(%rdi,%rcx)
	movq	40(%r9,%rcx), %rbx
	movq	%rbx, 40(%rdi,%rcx)
	movq	48(%r9,%rcx), %rbx
	movq	%rbx, 48(%rdi,%rcx)
	movq	56(%r9,%rcx), %rbx
	movq	%rbx, 56(%rdi,%rcx)
	addq	$-64, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rcx
	cmpq	$31, %rdx
	ja	.LBB0_19
.LBB0_20:
	addq	%r8, %rsi
	addq	$32, %rsi
	leaq	(%rax,%r8), %r15
	addq	$32, %r15
	subq	%r8, %r10
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %r10
	jb	.LBB0_30
# %bb.21:
	leaq	-8(%r10), %r11
	movq	%r11, %r8
	shrq	$3, %r8
	leaq	1(%r8), %r9
	movq	%r9, %rdx
	andq	$3, %rdx
	je	.LBB0_22
# %bb.23:                               # %.preheader9
	negq	%rdx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rbx), %rdi
	movq	%rdi, (%r15,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rbx
	incq	%rdx
	jne	.LBB0_24
# %bb.25:                               # %.loopexit10
	leaq	(%rsi,%rbx), %r14
	leaq	(%r15,%rbx), %rdx
	subq	%rbx, %r10
	cmpq	$24, %r11
	jae	.LBB0_27
	jmp	.LBB0_29
.LBB0_22:
	movq	%rsi, %r14
	movq	%r15, %rdx
	cmpq	$24, %r11
	jb	.LBB0_29
.LBB0_27:                               # %.preheader7
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx), %rdi
	movq	%rdi, (%rdx,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14,%rbx), %rdi
	movq	%rdi, 8(%rdx,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14,%rbx), %rdi
	movq	%rdi, 16(%rdx,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r14,%rbx), %rdi
	movq	%rdi, 24(%rdx,%rbx)
	addq	$-32, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rbx
	cmpq	$7, %r10
	ja	.LBB0_28
.LBB0_29:
	leaq	(%rsi,%r8,8), %rsi
	addq	$8, %rsi
	leaq	(%r15,%r9,8), %r15
	andl	$7, %r11d
	movq	%r11, %r10
.LBB0_30:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r10, %rdx
.LBB0_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_39
.LBB0_32:
	leaq	-1(%rdx), %r8
	movq	%rdx, %rdi
	andq	$3, %rdi
	je	.LBB0_36
# %bb.33:                               # %.preheader5
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rbx), %ecx
	movb	%cl, (%r15,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	cmpq	%rbx, %rdi
	jne	.LBB0_34
# %bb.35:                               # %.loopexit6
	addq	%rbx, %rsi
	addq	%rbx, %r15
	subq	%rbx, %rdx
.LBB0_36:
	cmpq	$3, %r8
	jb	.LBB0_39
# %bb.37:                               # %.preheader3
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_38:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rdi), %ecx
	movb	%cl, (%r15,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rsi,%rdi), %ecx
	movb	%cl, 1(%r15,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	2(%rsi,%rdi), %ecx
	movb	%cl, 2(%r15,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	3(%rsi,%rdi), %ecx
	movb	%cl, 3(%r15,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB0_38
.LBB0_39:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
