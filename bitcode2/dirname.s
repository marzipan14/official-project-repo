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
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %eax
	testq	%rdi, %rdi
	je	.LBB0_20
# %bb.1:
	movq	%rdi, %rbx
	cmpb	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_20
# %bb.2:
	movq	%rbx, %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	movb	-1(%rbx,%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$47, %cl
	jne	.LBB0_3
# %bb.13:                               # %.preheader2
	addq	$-1, %rax
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_19
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	movb	$0, (%rbx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%rbx,%rax), %ecx
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$47, %cl
	je	.LBB0_14
# %bb.4:                                # %.loopexit4
	addq	%rbx, %rax
	jmp	.LBB0_5
.LBB0_3:
	addq	%rbx, %rax
	addq	$-1, %rax
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jae	.LBB0_6
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %ebx
	jmp	.LBB0_18
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$47, %cl
	je	.LBB0_11
# %bb.7:                                # %.preheader
	addq	$-1, %rax
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jb	.LBB0_16
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	cmpb	$47, (%rax)
	leaq	-1(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_8
# %bb.10:                               # %.loopexit1
	addq	$1, %rax
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	je	.LBB0_12
# %bb.17:
	movb	$0, (%rax)
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_19:
	movq	%rbx, %rax
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_12:
	movl	$.L.str.1, %eax
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
