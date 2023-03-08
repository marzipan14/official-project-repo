	.text
	.file	"endianconv.c"
	.globl	memrev16                # -- Begin function memrev16
	.p2align	4, 0x90
	.type	memrev16,@function
memrev16:                               # @memrev16
# %bb.0:
	movb	(%rdi), %al
	movb	1(%rdi), %cl
	movb	%cl, (%rdi)
	movb	%al, 1(%rdi)
	retq
.Lfunc_end0:
	.size	memrev16, .Lfunc_end0-memrev16
                                        # -- End function
	.globl	memrev32                # -- Begin function memrev32
	.p2align	4, 0x90
	.type	memrev32,@function
memrev32:                               # @memrev32
# %bb.0:
	movb	3(%rdi), %al
	movb	(%rdi), %cl
	movb	1(%rdi), %dl
	movb	%al, (%rdi)
	movb	%cl, 3(%rdi)
	movb	2(%rdi), %al
	movb	%al, 1(%rdi)
	movb	%dl, 2(%rdi)
	retq
.Lfunc_end1:
	.size	memrev32, .Lfunc_end1-memrev32
                                        # -- End function
	.globl	memrev64                # -- Begin function memrev64
	.p2align	4, 0x90
	.type	memrev64,@function
memrev64:                               # @memrev64
# %bb.0:
	movb	7(%rdi), %al
	movb	(%rdi), %cl
	movb	1(%rdi), %dl
	movb	%al, (%rdi)
	movb	%cl, 7(%rdi)
	movb	6(%rdi), %al
	movb	%al, 1(%rdi)
	movb	%dl, 6(%rdi)
	movb	2(%rdi), %al
	movb	5(%rdi), %cl
	movb	%cl, 2(%rdi)
	movb	%al, 5(%rdi)
	movb	3(%rdi), %al
	movb	4(%rdi), %cl
	movb	%cl, 3(%rdi)
	movb	%al, 4(%rdi)
	retq
.Lfunc_end2:
	.size	memrev64, .Lfunc_end2-memrev64
                                        # -- End function
	.globl	intrev16                # -- Begin function intrev16
	.p2align	4, 0x90
	.type	intrev16,@function
intrev16:                               # @intrev16
# %bb.0:
	movl	%edi, %eax
	rolw	$8, %ax
                                        # kill: def $ax killed $ax killed $eax
	retq
.Lfunc_end3:
	.size	intrev16, .Lfunc_end3-intrev16
                                        # -- End function
	.globl	intrev32                # -- Begin function intrev32
	.p2align	4, 0x90
	.type	intrev32,@function
intrev32:                               # @intrev32
# %bb.0:
	movl	%edi, %eax
	bswapl	%eax
	retq
.Lfunc_end4:
	.size	intrev32, .Lfunc_end4-intrev32
                                        # -- End function
	.globl	intrev64                # -- Begin function intrev64
	.p2align	4, 0x90
	.type	intrev64,@function
intrev64:                               # @intrev64
# %bb.0:
	movq	%rdi, %rax
	bswapq	%rax
	retq
.Lfunc_end5:
	.size	intrev64, .Lfunc_end5-intrev64
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
