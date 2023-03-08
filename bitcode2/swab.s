	.text
	.file	"swab.c"
	.globl	swab                    # -- Begin function swab
	.p2align	4, 0x90
	.type	swab,@function
swab:                                   # @swab
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	$2, %rdx
	jl	.LBB0_3
# %bb.1:                                # %.preheader
	movl	$1, %eax
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rdi,%rax), %r8d
	movzbl	(%rdi,%rax), %ecx
	movb	%cl, -1(%rsi,%rax)
	movb	%r8b, (%rsi,%rax)
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jl	.LBB0_2
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jne	.LBB0_5
# %bb.4:
	movb	$0, -1(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	swab, .Lfunc_end0-swab
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
