	.text
	.file	"argz_stringify.c"
	.globl	argz_stringify          # -- Begin function argz_stringify
	.p2align	4, 0x90
	.type	argz_stringify,@function
argz_stringify:                         # @argz_stringify
# %bb.0:
	cmpq	$2, %rsi
	jb	.LBB0_41
# %bb.1:
	addq	$-1, %rsi
	cmpq	$16, %rsi
	jae	.LBB0_3
# %bb.2:
	xorl	%r8d, %r8d
	jmp	.LBB0_38
.LBB0_3:
	movq	%rsi, %r8
	andq	$-16, %r8
	xorl	%r9d, %r9d
	pxor	%xmm0, %xmm0
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_36:                               #   in Loop: Header=BB0_4 Depth=1
	addq	$16, %r9
	cmpq	%r9, %r8
	je	.LBB0_37
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movdqu	(%rdi,%r9), %xmm1
	pcmpeqb	%xmm0, %xmm1
	movd	%xmm1, %ecx
	testb	$1, %cl
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, (%rdi,%r9)
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	movl	%ecx, %eax
	shrl	$8, %eax
	testb	$1, %al
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 1(%rdi,%r9)
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	movl	%ecx, %eax
	shrl	$16, %eax
	testb	$1, %al
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 2(%rdi,%r9)
.LBB0_10:                               #   in Loop: Header=BB0_4 Depth=1
	shrl	$24, %ecx
	testb	$1, %cl
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 3(%rdi,%r9)
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	pextrw	$2, %xmm1, %eax
	testb	$1, %al
	je	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 4(%rdi,%r9)
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	shrl	$8, %eax
	testb	$1, %al
	je	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 5(%rdi,%r9)
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	pextrw	$3, %xmm1, %eax
	testb	$1, %al
	je	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 6(%rdi,%r9)
.LBB0_18:                               #   in Loop: Header=BB0_4 Depth=1
	shrl	$8, %eax
	testb	$1, %al
	je	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 7(%rdi,%r9)
.LBB0_20:                               #   in Loop: Header=BB0_4 Depth=1
	pextrw	$4, %xmm1, %eax
	testb	$1, %al
	je	.LBB0_22
# %bb.21:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 8(%rdi,%r9)
.LBB0_22:                               #   in Loop: Header=BB0_4 Depth=1
	shrl	$8, %eax
	testb	$1, %al
	je	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 9(%rdi,%r9)
.LBB0_24:                               #   in Loop: Header=BB0_4 Depth=1
	pextrw	$5, %xmm1, %eax
	testb	$1, %al
	je	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 10(%rdi,%r9)
.LBB0_26:                               #   in Loop: Header=BB0_4 Depth=1
	shrl	$8, %eax
	testb	$1, %al
	je	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 11(%rdi,%r9)
.LBB0_28:                               #   in Loop: Header=BB0_4 Depth=1
	pextrw	$6, %xmm1, %eax
	testb	$1, %al
	je	.LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 12(%rdi,%r9)
.LBB0_30:                               #   in Loop: Header=BB0_4 Depth=1
	shrl	$8, %eax
	testb	$1, %al
	je	.LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 13(%rdi,%r9)
.LBB0_32:                               #   in Loop: Header=BB0_4 Depth=1
	pextrw	$7, %xmm1, %eax
	testb	$1, %al
	je	.LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 14(%rdi,%r9)
.LBB0_34:                               #   in Loop: Header=BB0_4 Depth=1
	shrl	$8, %eax
	testb	$1, %al
	je	.LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_4 Depth=1
	movb	%dl, 15(%rdi,%r9)
	jmp	.LBB0_36
.LBB0_37:
	cmpq	%r8, %rsi
	je	.LBB0_41
.LBB0_38:
	cmpb	$0, (%rdi,%r8)
	jne	.LBB0_40
# %bb.39:
	movb	%dl, (%rdi,%r8)
.LBB0_40:
	addq	$1, %r8
	jmp	.LBB0_37
.LBB0_41:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	argz_stringify, .Lfunc_end0-argz_stringify
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
