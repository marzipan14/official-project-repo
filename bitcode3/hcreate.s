	.text
	.file	"hcreate.c"
	.globl	hcreate                 # -- Begin function hcreate
	.p2align	4, 0x90
	.type	hcreate,@function
hcreate:                                # @hcreate
# %bb.0:
	movl	$htab, %esi
	jmp	hcreate_r               # TAILCALL
.Lfunc_end0:
	.size	hcreate, .Lfunc_end0-hcreate
                                        # -- End function
	.globl	hdestroy                # -- Begin function hdestroy
	.p2align	4, 0x90
	.type	hdestroy,@function
hdestroy:                               # @hdestroy
# %bb.0:
	movl	$htab, %edi
	jmp	hdestroy_r              # TAILCALL
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
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	hsearch, .Lfunc_end2-hsearch
                                        # -- End function
	.type	htab,@object            # @htab
	.local	htab
	.comm	htab,16,8
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
