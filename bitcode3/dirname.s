	.text
	.file	"dirname.c"
	.globl	dirname                 # -- Begin function dirname
	.p2align	4, 0x90
	.type	dirname,@function
dirname:                                # @dirname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB0_19
# %bb.1:
	movq	%rdi, %rbx
	cmpb	$0, (%rdi)
	je	.LBB0_19
# %bb.2:
	movq	%rbx, %rdi
	callq	strlen
	movb	-1(%rbx,%rax), %cl
	cmpb	$47, %cl
	jne	.LBB0_16
# %bb.3:                                # %.preheader2
	addq	$-1, %rax
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB0_20
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movb	$0, (%rbx,%rax)
	movzbl	-1(%rbx,%rax), %ecx
	addq	$-1, %rax
	cmpb	$47, %cl
	je	.LBB0_4
# %bb.6:                                # %.loopexit4
	addq	%rbx, %rax
	cmpq	%rbx, %rax
	jb	.LBB0_19
	jmp	.LBB0_7
.LBB0_16:
	addq	%rbx, %rax
	addq	$-1, %rax
	cmpq	%rbx, %rax
	jae	.LBB0_7
.LBB0_19:
	movl	$.L.str, %ebx
.LBB0_20:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_7:
	cmpb	$47, %cl
	je	.LBB0_12
# %bb.8:                                # %.preheader
	addq	$-1, %rax
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, %rax
	jb	.LBB0_19
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	cmpb	$47, (%rax)
	leaq	-1(%rax), %rax
	jne	.LBB0_9
# %bb.11:                               # %.loopexit1
	addq	$1, %rax
.LBB0_12:
	cmpq	%rbx, %rax
	je	.LBB0_18
# %bb.13:
	movb	$0, (%rax)
	jmp	.LBB0_20
.LBB0_18:
	movl	$.L.str.1, %ebx
	jmp	.LBB0_20
.Lfunc_end0:
	.size	dirname, .Lfunc_end0-dirname
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"."
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/"
	.size	.L.str.1, 2

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
