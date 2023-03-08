	.text
	.file	"flags.c"
	.globl	__sflags                # -- Begin function __sflags
	.p2align	4, 0x90
	.type	__sflags,@function
__sflags:                               # @__sflags
# %bb.0:
	movsbl	(%rsi), %eax
	cmpl	$97, %eax
	je	.LBB0_6
# %bb.1:
	cmpl	$114, %eax
	je	.LBB0_2
# %bb.3:
	cmpl	$119, %eax
	jne	.LBB0_5
# %bb.4:
	movl	$1536, %r8d             # imm = 0x600
	movl	$1, %edi
	movl	$8, %eax
	jmp	.LBB0_7
.LBB0_6:
	movl	$520, %r8d              # imm = 0x208
	movl	$1, %edi
	movl	$264, %eax              # imm = 0x108
	jmp	.LBB0_7
.LBB0_2:
	xorl	%edi, %edi
	movl	$4, %eax
	xorl	%r8d, %r8d
.LBB0_7:
	movb	1(%rsi), %cl
	testb	%cl, %cl
	je	.LBB0_14
# %bb.8:                                # %.preheader
	addq	$2, %rsi
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	orl	$2048, %edi             # imm = 0x800
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	movzbl	(%rsi), %ecx
	addq	$1, %rsi
	testb	%cl, %cl
	je	.LBB0_14
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movsbl	%cl, %ecx
	cmpl	$120, %ecx
	je	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	cmpl	$43, %ecx
	jne	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	andl	$-29, %eax
	orl	$16, %eax
	andl	$-4, %edi
	orl	$2, %edi
	jmp	.LBB0_13
.LBB0_14:
	orl	%r8d, %edi
	movl	%edi, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_5:
	movl	$22, (%rdi)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__sflags, .Lfunc_end0-__sflags
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
