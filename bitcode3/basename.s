	.text
	.file	"basename.c"
	.globl	basename                # -- Begin function basename
	.p2align	4, 0x90
	.type	basename,@function
basename:                               # @basename
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$.L.str, %eax
	testq	%rdi, %rdi
	je	.LBB0_15
# %bb.1:
	movq	%rdi, %rbx
	cmpb	$0, (%rdi)
	je	.LBB0_15
# %bb.2:
	movq	%rbx, %rdi
	callq	strlen
	movb	-1(%rbx,%rax), %cl
	cmpb	$47, %cl
	jne	.LBB0_3
# %bb.12:                               # %.preheader1
	addq	$-1, %rax
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB0_14
# %bb.4:                                #   in Loop: Header=BB0_13 Depth=1
	movb	$0, (%rbx,%rax)
	movzbl	-1(%rbx,%rax), %ecx
	addq	$-1, %rax
	cmpb	$47, %cl
	je	.LBB0_13
# %bb.5:                                # %.loopexit3
	addq	%rbx, %rax
	jmp	.LBB0_6
.LBB0_3:
	addq	%rbx, %rax
	addq	$-1, %rax
.LBB0_6:
	cmpq	%rbx, %rax
	jb	.LBB0_11
# %bb.7:
	cmpb	$47, %cl
	je	.LBB0_11
# %bb.8:                                # %.preheader
	addq	$-1, %rax
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	cmpq	%rbx, %rcx
	jb	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	leaq	-1(%rax), %rcx
	cmpb	$47, (%rax)
	jne	.LBB0_9
.LBB0_11:
	addq	$1, %rax
	jmp	.LBB0_15
.LBB0_14:
	movq	%rbx, %rax
.LBB0_15:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	basename, .Lfunc_end0-basename
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"."
	.size	.L.str, 2

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
