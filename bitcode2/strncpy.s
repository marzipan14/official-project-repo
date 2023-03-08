	.text
	.file	"strncpy.c"
	.globl	strncpy                 # -- Begin function strncpy
	.p2align	4, 0x90
	.type	strncpy,@function
strncpy:                                # @strncpy
# %bb.0:
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rdx
	jb	.LBB0_7
# %bb.1:
	movl	%esi, %ecx
	orl	%eax, %ecx
	andl	$7, %ecx
	testq	%rcx, %rcx
	jne	.LBB0_7
# %bb.2:
	movabsq	$-9187201950435737472, %r9 # imm = 0x8080808080808080
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movabsq	$-72340172838076673, %r10 # imm = 0xFEFEFEFEFEFEFEFF
	movq	%rax, %r8
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rdi
	movq	%rdi, %rcx
	notq	%rcx
	andq	%r9, %rcx
	leaq	(%rdi,%r10), %r11
	movl	$42, __A_VARIABLE(%rip)
	testq	%r11, %rcx
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$-8, %rdx
	addq	$8, %rsi
	movq	%rdi, (%r8)
	addq	$8, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$7, %rdx
	ja	.LBB0_3
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_8
.LBB0_7:
	movq	%rax, %r8
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_17
# %bb.9:                                # %.preheader3
	leaq	-1(%rdx), %r9
	xorl	%edi, %edi
	movq	%rdx, %r10
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	addq	$-1, %r10
	movzbl	(%rsi,%rdi), %ecx
	movb	%cl, (%r8,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %r9
	leaq	1(%rdi), %rdi
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	testb	%cl, %cl
	jne	.LBB0_10
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	subq	%rdi, %rsi
	je	.LBB0_21
# %bb.13:
	movq	%rdi, %r9
	notq	%r9
	addq	%rdx, %r9
	testb	$3, %sil
	je	.LBB0_18
# %bb.14:                               # %.preheader1
	andl	$3, %esi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	leaq	(%r8,%rdx), %rcx
	movb	$0, (%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB0_15
# %bb.16:                               # %.loopexit2
	addq	%rdi, %r8
	addq	%rdx, %r8
	subq	%rdx, %r10
	movq	%r10, %rsi
	cmpq	$3, %r9
	jae	.LBB0_19
	jmp	.LBB0_21
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_18:
	addq	%rdi, %r8
	cmpq	$3, %r9
	jb	.LBB0_21
.LBB0_19:                               # %.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movb	$0, (%r8,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 1(%r8,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 2(%r8,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, 3(%r8,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rcx
	cmpq	%rcx, %rsi
	jne	.LBB0_20
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	strncpy, .Lfunc_end0-strncpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
