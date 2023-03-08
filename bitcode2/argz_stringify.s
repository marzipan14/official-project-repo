	.text
	.file	"argz_stringify.c"
	.globl	argz_stringify          # -- Begin function argz_stringify
	.p2align	4, 0x90
	.type	argz_stringify,@function
argz_stringify:                         # @argz_stringify
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rsi
	jb	.LBB0_7
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r8d
	andl	$1, %r8d
	cmpq	$2, %rsi
	jne	.LBB0_8
# %bb.2:
	xorl	%ecx, %ecx
.LBB0_3:
	testq	%r8, %r8
	je	.LBB0_7
# %bb.4:
	cmpb	$0, (%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_6
# %bb.5:
	movb	%dl, (%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_8:
	subq	%r8, %rax
	xorl	%ecx, %ecx
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=1
	addq	$2, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	je	.LBB0_3
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movb	%dl, (%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 1(%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=1
	movb	%dl, 1(%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_13
.Lfunc_end0:
	.size	argz_stringify, .Lfunc_end0-argz_stringify
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
