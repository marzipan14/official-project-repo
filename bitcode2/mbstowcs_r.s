	.text
	.file	"mbstowcs_r.c"
	.globl	_mbstowcs_r             # -- Begin function _mbstowcs_r
	.p2align	4, 0x90
	.type	_mbstowcs_r,@function
_mbstowcs_r:                            # @_mbstowcs_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.7:
	movq	%rcx, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB0_2
# %bb.8:
	xorl	%r14d, %r14d
	jmp	.LBB0_14
.LBB0_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
.LBB0_2:
	xorl	%r14d, %r14d
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	xorl	%r13d, %r13d
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	addq	%rax, %rbx
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_14
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	callq	__getreent
	movq	72(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %eax
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	232(%rax), %r15
	callq	__locale_mb_cur_max
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	*%r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_6
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=1
	cltq
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB0_11
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=1
	addq	$4, %r13
	addq	$-1, %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_13
.LBB0_6:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movq	$-1, %r14
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_mbstowcs_r, .Lfunc_end0-_mbstowcs_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
