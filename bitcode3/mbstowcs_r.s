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
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	testq	%rsi, %rsi
	movl	$1, %r14d
	cmovneq	%rcx, %r14
	testq	%r14, %r14
	je	.LBB0_1
# %bb.2:                                # %.preheader
	movq	%rdx, %r12
	movq	%rsi, %rbx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %ecx
	cmoveq	%rcx, %rax
	movq	232(%rax), %r13
	callq	__locale_mb_cur_max
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	*%r13
	testl	%eax, %eax
	js	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	cltq
	addq	%rax, %r12
	addq	$1, %r15
	leaq	4(%rbx), %rax
	xorl	%ecx, %ecx
	testq	%rbx, %rbx
	setne	%cl
	cmovneq	%rax, %rbx
	subq	%rcx, %r14
	jne	.LBB0_3
	jmp	.LBB0_7
.LBB0_1:
	xorl	%r15d, %r15d
	jmp	.LBB0_7
.LBB0_4:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movq	$-1, %r15
.LBB0_7:
	movq	%r15, %rax
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
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
