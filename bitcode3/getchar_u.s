	.text
	.file	"getchar_u.c"
	.globl	_getchar_unlocked_r     # -- Begin function _getchar_unlocked_r
	.p2align	4, 0x90
	.type	_getchar_unlocked_r,@function
_getchar_unlocked_r:                    # @_getchar_unlocked_r
# %bb.0:
	movq	8(%rdi), %rsi
	jmp	_getc_unlocked_r        # TAILCALL
.Lfunc_end0:
	.size	_getchar_unlocked_r, .Lfunc_end0-_getchar_unlocked_r
                                        # -- End function
	.globl	getchar_unlocked        # -- Begin function getchar_unlocked
	.p2align	4, 0x90
	.type	getchar_unlocked,@function
getchar_unlocked:                       # @getchar_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	callq	__getreent
	movq	%rax, %rbx
	callq	__getreent
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_getc_unlocked_r        # TAILCALL
.Lfunc_end1:
	.size	getchar_unlocked, .Lfunc_end1-getchar_unlocked
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
