	.text
	.file	"getw.c"
	.globl	getw                    # -- Begin function getw
	.p2align	4, 0x90
	.type	getw,@function
getw:                                   # @getw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, %rcx
	leaq	-4(%rbp), %rdi
	movl	$4, %esi
	movl	$1, %edx
	callq	fread
	movq	%rax, %rcx
	movl	$-1, %eax
	cmpq	$1, %rcx
	jne	.LBB0_2
# %bb.1:
	movl	-4(%rbp), %eax
.LBB0_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	getw, .Lfunc_end0-getw
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
