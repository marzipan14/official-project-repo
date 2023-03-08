	.text
	.file	"wcsrtombs.c"
	.globl	_wcsrtombs_r            # -- Begin function _wcsrtombs_r
	.p2align	4, 0x90
	.type	_wcsrtombs_r,@function
_wcsrtombs_r:                           # @_wcsrtombs_r
# %bb.0:
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	$-1, %rcx
	jmp	_wcsnrtombs_r           # TAILCALL
.Lfunc_end0:
	.size	_wcsrtombs_r, .Lfunc_end0-_wcsrtombs_r
                                        # -- End function
	.globl	wcsrtombs               # -- Begin function wcsrtombs
	.p2align	4, 0x90
	.type	wcsrtombs,@function
wcsrtombs:                              # @wcsrtombs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	$-1, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_wcsnrtombs_r           # TAILCALL
.Lfunc_end1:
	.size	wcsrtombs, .Lfunc_end1-wcsrtombs
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
