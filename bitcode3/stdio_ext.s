	.text
	.file	"stdio_ext.c"
	.globl	__fbufsize              # -- Begin function __fbufsize
	.p2align	4, 0x90
	.type	__fbufsize,@function
__fbufsize:                             # @__fbufsize
# %bb.0:
	movslq	32(%rdi), %rax
	retq
.Lfunc_end0:
	.size	__fbufsize, .Lfunc_end0-__fbufsize
                                        # -- End function
	.globl	__fpending              # -- Begin function __fpending
	.p2align	4, 0x90
	.type	__fpending,@function
__fpending:                             # @__fpending
# %bb.0:
	movq	(%rdi), %rax
	subq	24(%rdi), %rax
	retq
.Lfunc_end1:
	.size	__fpending, .Lfunc_end1-__fpending
                                        # -- End function
	.globl	__flbf                  # -- Begin function __flbf
	.p2align	4, 0x90
	.type	__flbf,@function
__flbf:                                 # @__flbf
# %bb.0:
	movzwl	16(%rdi), %eax
	andl	$1, %eax
	retq
.Lfunc_end2:
	.size	__flbf, .Lfunc_end2-__flbf
                                        # -- End function
	.globl	__freadable             # -- Begin function __freadable
	.p2align	4, 0x90
	.type	__freadable,@function
__freadable:                            # @__freadable
# %bb.0:
	xorl	%eax, %eax
	testb	$20, 16(%rdi)
	setne	%al
	retq
.Lfunc_end3:
	.size	__freadable, .Lfunc_end3-__freadable
                                        # -- End function
	.globl	__fwritable             # -- Begin function __fwritable
	.p2align	4, 0x90
	.type	__fwritable,@function
__fwritable:                            # @__fwritable
# %bb.0:
	xorl	%eax, %eax
	testb	$24, 16(%rdi)
	setne	%al
	retq
.Lfunc_end4:
	.size	__fwritable, .Lfunc_end4-__fwritable
                                        # -- End function
	.globl	__freading              # -- Begin function __freading
	.p2align	4, 0x90
	.type	__freading,@function
__freading:                             # @__freading
# %bb.0:
	movl	16(%rdi), %eax
	shrl	$2, %eax
	andl	$1, %eax
	retq
.Lfunc_end5:
	.size	__freading, .Lfunc_end5-__freading
                                        # -- End function
	.globl	__fwriting              # -- Begin function __fwriting
	.p2align	4, 0x90
	.type	__fwriting,@function
__fwriting:                             # @__fwriting
# %bb.0:
	movl	16(%rdi), %eax
	shrl	$3, %eax
	andl	$1, %eax
	retq
.Lfunc_end6:
	.size	__fwriting, .Lfunc_end6-__fwriting
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
