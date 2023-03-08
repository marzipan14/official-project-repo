	.text
	.file	"wcpncpy.c"
	.globl	wcpncpy                 # -- Begin function wcpncpy
	.p2align	4, 0x90
	.type	wcpncpy,@function
wcpncpy:                                # @wcpncpy
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r11d, %r11d
	movq	%rdi, %rax
	movq	%rdx, %r9
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r11, %rdx
	je	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$-1, %r9
	movl	(%rsi,%r11,4), %ecx
	addq	$4, %rax
	movl	%ecx, (%rdi,%r11,4)
	addq	$1, %r11
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB0_1
# %bb.4:
	movq	%rdx, %r8
	subq	%r11, %r8
	leaq	-4(%rax), %r10
	movq	%rdx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%r11, %rdi
	je	.LBB0_13
# %bb.5:
	notq	%r11
	addq	%rdx, %r11
	testb	$3, %dil
	je	.LBB0_9
# %bb.6:                                # %.preheader1
	andl	$3, %edi
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rsi
	addq	$-4, %rdx
	cmpq	%rsi, %rdi
	jne	.LBB0_7
# %bb.8:                                # %.loopexit2
	subq	%rsi, %r9
	subq	%rdx, %rax
	movq	%r9, %rdi
.LBB0_9:
	addq	$1, %r8
	cmpq	$3, %r11
	jb	.LBB0_12
# %bb.10:                               # %.preheader
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 4(%rax,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 8(%rax,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 12(%rax,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rcx
	cmpq	%rcx, %rdi
	jne	.LBB0_11
.LBB0_12:
	leaq	(%r10,%r8,4), %rax
	jmp	.LBB0_13
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r10d, %r10d
.LBB0_13:
	testq	%r10, %r10
	cmovneq	%r10, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	wcpncpy, .Lfunc_end0-wcpncpy
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
