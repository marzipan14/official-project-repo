	.text
	.file	"envz_merge.c"
	.globl	envz_merge              # -- Begin function envz_merge
	.p2align	4, 0x90
	.type	envz_merge,@function
envz_merge:                             # @envz_merge
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	xorl	%edx, %edx
	callq	argz_next
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_13
# %bb.1:
	movq	%rax, %r14
	xorl	%r12d, %r12d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	movb	$0, (%rax)
	addq	$1, %rax
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%rax, %rcx
	callq	envz_add
	movl	%eax, %r12d
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	callq	argz_next
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_13
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB0_13
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%r14, %rdi
	callq	strdup
	movq	%rax, %r15
	movq	%rax, %rdi
	movl	$61, %esi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	testq	%rax, %rax
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	testq	%rax, %rax
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	movb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	movq	(%rbx), %rdi
	movq	(%r13), %rsi
	movq	%r15, %rdx
	callq	envz_entry
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_12
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	argz_add
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_12
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	envz_merge, .Lfunc_end0-envz_merge
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
