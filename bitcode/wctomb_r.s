	.text
	.file	"wctomb_r.c"
	.globl	_wctomb_r               # -- Begin function _wctomb_r
	.p2align	4, 0x90
	.type	_wctomb_r,@function
_wctomb_r:                              # @_wctomb_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %r13
	callq	__getreent
	movq	72(%rax), %rbx
	testq	%rbx, %rbx
	jne	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %ebx
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	movq	%r14, %rcx
	callq	*224(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_wctomb_r, .Lfunc_end0-_wctomb_r
                                        # -- End function
	.globl	__ascii_wctomb          # -- Begin function __ascii_wctomb
	.p2align	4, 0x90
	.type	__ascii_wctomb,@function
__ascii_wctomb:                         # @__ascii_wctomb
# %bb.0:
	testq	%rsi, %rsi
	je	.LBB1_1
# %bb.2:
	cmpl	$256, %edx              # imm = 0x100
	jb	.LBB1_4
# %bb.3:
	movl	$138, (%rdi)
	movl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB1_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB1_4:
	movb	%dl, (%rsi)
	movl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	__ascii_wctomb, .Lfunc_end1-__ascii_wctomb
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
