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
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %eax
	testq	%rdi, %rdi
	je	.LBB0_17
# %bb.1:
	movq	%rdi, %rbx
	cmpb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_17
# %bb.2:
	movq	%rbx, %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	movb	-1(%rbx,%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$47, %cl
	jne	.LBB0_3
# %bb.12:                               # %.preheader2
	addq	$-1, %rax
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_14
# %bb.4:                                #   in Loop: Header=BB0_13 Depth=1
	movb	$0, (%rbx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%rbx,%rax), %ecx
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$47, %cl
	je	.LBB0_13
# %bb.5:                                # %.loopexit4
	addq	%rbx, %rax
	jmp	.LBB0_6
.LBB0_3:
	addq	%rbx, %rax
	addq	$-1, %rax
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jae	.LBB0_7
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_16
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$47, %cl
	je	.LBB0_16
# %bb.8:                                # %.preheader
	addq	$-1, %rax
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jb	.LBB0_15
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	cmpb	$47, (%rax)
	leaq	-1(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_9
# %bb.11:                               # %.loopexit1
	addq	$1, %rax
.LBB0_16:
	addq	$1, %rax
	jmp	.LBB0_17
.LBB0_14:
	movq	%rbx, %rax
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
