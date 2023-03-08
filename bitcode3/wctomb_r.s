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
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %ecx
	cmovneq	%rax, %rcx
	movq	224(%rcx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	movq	%r14, %rcx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
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
	retq
.LBB1_1:
	xorl	%eax, %eax
	retq
.LBB1_4:
	movb	%dl, (%rsi)
	movl	$1, %eax
	retq
.Lfunc_end1:
	.size	__ascii_wctomb, .Lfunc_end1-__ascii_wctomb
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
