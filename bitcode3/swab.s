	.text
	.file	"swab.c"
	.globl	swab                    # -- Begin function swab
	.p2align	4, 0x90
	.type	swab,@function
swab:                                   # @swab
# %bb.0:
	movl	$1, %r9d
	cmpq	$2, %rdx
	jge	.LBB0_1
# %bb.8:
	cmpq	%rdx, %r9
	je	.LBB0_9
.LBB0_10:
	retq
.LBB0_1:
	leaq	-2(%rdx), %r9
	movq	%r9, %rcx
	shrq	%rcx
	leaq	1(%rcx), %r11
	movl	%r11d, %r8d
	andl	$1, %r8d
	testq	%rcx, %rcx
	je	.LBB0_2
# %bb.3:
	subq	%r8, %r11
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rdi,%rcx), %r10d
	movzbl	(%rdi,%rcx), %eax
	movb	%al, -1(%rsi,%rcx)
	movb	%r10b, (%rsi,%rcx)
	movzbl	1(%rdi,%rcx), %r10d
	movzbl	2(%rdi,%rcx), %eax
	movb	%al, 1(%rsi,%rcx)
	movb	%r10b, 2(%rsi,%rcx)
	addq	$4, %rcx
	addq	$-2, %r11
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_2:
	movl	$1, %ecx
.LBB0_5:
	andq	$-2, %r9
	testq	%r8, %r8
	je	.LBB0_7
# %bb.6:
	movb	-1(%rdi,%rcx), %r8b
	movb	(%rdi,%rcx), %al
	movb	%al, -1(%rsi,%rcx)
	movb	%r8b, (%rsi,%rcx)
.LBB0_7:
	addq	$3, %r9
	cmpq	%rdx, %r9
	jne	.LBB0_10
.LBB0_9:
	movb	$0, -1(%rdx,%rsi)
	retq
.Lfunc_end0:
	.size	swab, .Lfunc_end0-swab
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
