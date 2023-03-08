	.text
	.file	"memcpy.c"
	.globl	memcpy                  # -- Begin function memcpy
	.p2align	4, 0x90
	.type	memcpy,@function
memcpy:                                 # @memcpy
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %rdx
	jae	.LBB0_2
# %bb.1:
	movq	%rax, %r15
	jmp	.LBB0_20
.LBB0_2:
	movl	%esi, %ecx
	orl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %cl
	je	.LBB0_4
# %bb.3:
	movq	%rax, %r15
	jmp	.LBB0_21
.LBB0_4:
	leaq	-32(%rdx), %r11
	movq	%rsi, %rcx
	movq	%rax, %rdi
	testb	$32, %r11b
	jne	.LBB0_6
# %bb.5:
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rax)
	leaq	32(%rsi), %rcx
	movups	16(%rsi), %xmm0
	leaq	32(%rax), %rdi
	movups	%xmm0, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r11, %rdx
.LBB0_6:
	movq	%r11, %r8
	andq	$-32, %r8
	cmpq	$32, %r11
	jb	.LBB0_9
# %bb.7:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movups	(%rcx,%rbx), %xmm0
	movups	%xmm0, (%rdi,%rbx)
	movups	16(%rcx,%rbx), %xmm0
	movups	%xmm0, 16(%rdi,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movups	32(%rcx,%rbx), %xmm0
	movups	%xmm0, 32(%rdi,%rbx)
	movups	48(%rcx,%rbx), %xmm0
	movups	%xmm0, 48(%rdi,%rbx)
	addq	$-64, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rbx
	cmpq	$31, %rdx
	ja	.LBB0_8
.LBB0_9:
	addq	%r8, %rsi
	addq	$32, %rsi
	leaq	(%rax,%r8), %r15
	addq	$32, %r15
	subq	%r8, %r11
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %r11
	jb	.LBB0_19
# %bb.10:
	leaq	-8(%r11), %r10
	movq	%r10, %r8
	shrq	$3, %r8
	leaq	1(%r8), %r9
	movq	%r9, %rdx
	andq	$3, %rdx
	je	.LBB0_11
# %bb.12:                               # %.preheader5
	negq	%rdx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rbx), %rdi
	movq	%rdi, (%r15,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rbx
	incq	%rdx
	jne	.LBB0_13
# %bb.14:                               # %.loopexit6
	leaq	(%rsi,%rbx), %r14
	leaq	(%r15,%rbx), %rdi
	subq	%rbx, %r11
	cmpq	$24, %r10
	jae	.LBB0_16
	jmp	.LBB0_18
.LBB0_11:
	movq	%rsi, %r14
	movq	%r15, %rdi
	cmpq	$24, %r10
	jb	.LBB0_18
.LBB0_16:                               # %.preheader3
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx), %rdx
	movq	%rdx, (%rdi,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14,%rbx), %rdx
	movq	%rdx, 8(%rdi,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14,%rbx), %rdx
	movq	%rdx, 16(%rdi,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r14,%rbx), %rdx
	movq	%rdx, 24(%rdi,%rbx)
	addq	$-32, %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rbx
	cmpq	$7, %r11
	ja	.LBB0_17
.LBB0_18:
	leaq	(%rsi,%r8,8), %rsi
	addq	$8, %rsi
	leaq	(%r15,%r9,8), %r15
	andl	$7, %r10d
	movq	%r10, %r11
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r11, %rdx
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_28
.LBB0_21:
	leaq	-1(%rdx), %r8
	movq	%rdx, %rdi
	andq	$3, %rdi
	je	.LBB0_25
# %bb.22:                               # %.preheader1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi,%rbx), %ecx
	movb	%cl, (%r15,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	cmpq	%rbx, %rdi
	jne	.LBB0_23
# %bb.24:                               # %.loopexit2
	addq	%rbx, %rsi
	addq	%rbx, %r15
	subq	%rbx, %rdx
.LBB0_25:
	cmpq	$3, %r8
	jb	.LBB0_28
# %bb.26:                               # %.preheader
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
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
	jne	.LBB0_27
.LBB0_28:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	memcpy, .Lfunc_end0-memcpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
