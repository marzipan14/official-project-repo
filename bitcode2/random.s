	.text
	.file	"random.c"
	.globl	srandom                 # -- Begin function srandom
	.p2align	4, 0x90
	.type	srandom,@function
srandom:                                # @srandom
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__getreent
	movl	%ebx, %ecx
	movq	%rcx, 232(%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	srandom, .Lfunc_end0-srandom
                                        # -- End function
	.globl	random                  # -- Begin function random
	.p2align	4, 0x90
	.type	random,@function
random:                                 # @random
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movabsq	$6364136223846793005, %rcx # imm = 0x5851F42D4C957F2D
	imulq	232(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 232(%rax)
	shrq	$32, %rcx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	random, .Lfunc_end1-random
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
