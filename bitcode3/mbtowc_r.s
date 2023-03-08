	.text
	.file	"mbtowc_r.c"
	.globl	_mbtowc_r               # -- Begin function _mbtowc_r
	.p2align	4, 0x90
	.type	_mbtowc_r,@function
_mbtowc_r:                              # @_mbtowc_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %ecx
	cmovneq	%rax, %rcx
	movq	232(%rcx), %rax
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end0:
	.size	_mbtowc_r, .Lfunc_end0-_mbtowc_r
                                        # -- End function
	.globl	__ascii_mbtowc          # -- Begin function __ascii_mbtowc
	.p2align	4, 0x90
	.type	__ascii_mbtowc,@function
__ascii_mbtowc:                         # @__ascii_mbtowc
# %bb.0:
	subq	$4, %rsp
	testq	%rsi, %rsi
	movq	%rsp, %rax
	cmovneq	%rsi, %rax
	testq	%rdx, %rdx
	je	.LBB1_1
# %bb.2:
	testq	%rcx, %rcx
	je	.LBB1_3
# %bb.4:
	movzbl	(%rdx), %ecx
	movl	%ecx, (%rax)
	xorl	%eax, %eax
	cmpb	$0, (%rdx)
	setne	%al
	addq	$4, %rsp
	retq
.LBB1_1:
	xorl	%eax, %eax
	addq	$4, %rsp
	retq
.LBB1_3:
	movl	$-2, %eax
	addq	$4, %rsp
	retq
.Lfunc_end1:
	.size	__ascii_mbtowc, .Lfunc_end1-__ascii_mbtowc
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
