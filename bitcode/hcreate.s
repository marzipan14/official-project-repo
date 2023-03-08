	.text
	.file	"hcreate.c"
	.globl	hcreate                 # -- Begin function hcreate
	.p2align	4, 0x90
	.type	hcreate,@function
hcreate:                                # @hcreate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$htab, %esi
	callq	hcreate_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	hcreate, .Lfunc_end0-hcreate
                                        # -- End function
	.globl	hdestroy                # -- Begin function hdestroy
	.p2align	4, 0x90
	.type	hdestroy,@function
hdestroy:                               # @hdestroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$htab, %edi
	callq	hdestroy_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	hdestroy, .Lfunc_end1-hdestroy
                                        # -- End function
	.globl	hsearch                 # -- Begin function hsearch
	.p2align	4, 0x90
	.type	hsearch,@function
hsearch:                                # @hsearch
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rcx
	movl	$htab, %r8d
	callq	hsearch_r
	movq	-8(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	hsearch, .Lfunc_end2-hsearch
                                        # -- End function
	.type	htab,@object            # @htab
	.local	htab
	.comm	htab,16,8
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
