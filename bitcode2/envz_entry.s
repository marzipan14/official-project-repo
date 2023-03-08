	.text
	.file	"envz_entry.c"
	.globl	envz_entry              # -- Begin function envz_entry
	.p2align	4, 0x90
	.type	envz_entry,@function
envz_entry:                             # @envz_entry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_14
# %bb.1:                                # %.preheader2
	movq	%rdx, %rbx
	movq	%rdi, %r14
	leaq	-40(%rbp), %r15
	leaq	-48(%rbp), %r12
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_14
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	_buf_findstr
	movq	-40(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_13
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	testq	%rcx, %rcx
	je	.LBB0_13
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$61, %al
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB0_13
.LBB0_6:
	leaq	-1(%rcx), %rax
	movq	%rax, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -1(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_7
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	je	.LBB0_9
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	leaq	-1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -1(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	jne	.LBB0_11
	jmp	.LBB0_8
.LBB0_14:
	xorl	%r14d, %r14d
	jmp	.LBB0_15
.LBB0_7:
	movq	%rax, %rcx
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %r14
.LBB0_9:
	cmpb	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_15
# %bb.10:
	addq	$1, %r14
	movq	%r14, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	envz_entry, .Lfunc_end0-envz_entry
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
